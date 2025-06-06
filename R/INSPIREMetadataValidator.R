#' INSPIREMetadataValidator
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords INSPIRE metadata validator validation
#' @return Object of \code{\link[R6]{R6Class}} for setting an INSPIREMetadataValidator
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @examples
#'  \donttest{
#'   apiKey <- ""
#'   if(nzchar(apiKey)){
#'     inspireValidator <- INSPIREMetadataValidator$new(apiKey = apiKey)
#'     inspireReport <- inspireValidator$getValidationReport(obj = ISOMetadata$new())
#'   }
#'  }
#' 
#' @references 
#'   INSPIRE Reference Validator Web Service (https://inspire.ec.europa.eu/validator/swagger-ui.html)
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
INSPIREMetadataValidator <- R6Class("INSPIREMetadataValidator",
  inherit = geometaLogger,
  private = list(
    keyring_backend = NULL,
    keyring_service = NULL
  ),
  public = list(
    #'@field url url of the INSPIRE metadata validator
    url = "https://inspire.ec.europa.eu/validator/v2",
    #'@field running wether the service is up and running
    running = FALSE,
    #'@field status status
    status = NULL,
    
    #'@description Method used to instantiate an INSPIRE Metadata validator. To check 
    #'    metadata with the INSPIRE metadata validator, a user API key is now required, 
    #'    and should be specified with the \code{apiKey}. By default, the \code{url} will be
    #'    the INSPIRE production service \url{https://inspire.ec.europa.eu/validator/swagger-ui.html}.
    #'    
    #'    The \code{keyring_backend} can be set to use a different backend for storing 
    #'    the INSPIRE metadata validator API key with \pkg{keyring} (Default value is 'env').
    #'@param url url
    #'@param apiKey API key
    #'@param keyring_backend backend name to use with \pkg{keyring} to store API key
    initialize = function(url = "https://inspire.ec.europa.eu/validator-api",
                          apiKey, keyring_backend = 'env'){
      if(!require("httr")){
        stop("The INSPIRE metadata validator requires the installation of 'httr' package")
      }
      self$url <- url
      private$keyring_backend <- keyring:::known_backends[[keyring_backend]]$new()
      private$keyring_service <- paste0("geometa@", self$url)
      if(!is.null(apiKey)) private$keyring_backend$set_with_value(private$keyring_service, username = "geometa_inspire_validator", password = apiKey)
      
      ping_req = GET(paste(self$url, "status", sep = "/"))
      ping <- status_code(ping_req)
      self$running <- if(ping==200) TRUE else FALSE
      self$status <- content(ping_req)$status
      
    },
    
    #'@description Uploads a file. Upload a XML metadata file to INSPIRE web-service. Method called internally through
    #'    \code{getValidationReport}.
    #'@param path path
    #'@return the response from the web-service
    uploadFile = function(path){
      
      if(!self$running){
        self$WARN("The INSPIRE online metadata validator is not running at that time! Please retry later...")
        return(NULL)
      }
      
      req <- POST(
        sprintf("%s/TestObjects?action=upload", self$url),
        body = list(fileupload = httr::upload_file(path = path)),
        encode = "multipart"
      )
      if(status_code(req)!=200){
        errMsg <- sprintf("Error while upload file '%s' to INSPIRE reference validator web-service", path)
        self$ERROR(errMsg)
        stop(errMsg)
      }
      out <- content(req)
        
      return(out)
    },
    
    #'@description Retrieves the API key
    #'@return the API key as \link{character}
    getAPIKey = function(){
      apiKey <- try(private$keyring_backend$get(service = private$keyring_service, username = "geometa_inspire_validator"), silent = TRUE)
      if(is(apiKey, "try-error")) apiKey <- NULL
      return(apiKey)
    },
    
    #'@description Get validation report for a metadata specified either as R object of class
    #'    \link{ISOMetadata} (from \pkg{geometa} package) or \link[XML]{XMLInternalNode-class} 
    #'    (from \pkg{XML} package), or as XML file, providing the path of the XML file
    #'    to be sent to the INSPIRE metadata validator web-service. By default, a summary
    #'    report is returned. To append the raw response of INSPIRE validation web-service
    #'    to the summary report, set \code{raw = TRUE}.
    #'@param obj obj
    #'@param file file
    #'@param raw raw
    #'@return an object of class \link{list}
    getValidationReport = function(obj = NULL, file = NULL, raw = FALSE){

      if(!self$running){
        self$WARN("The INSPIRE online metadata validator is not running at that time! Please retry later...")
        return(NULL)
      }
            
      #check args & read data
      xml_file <- NULL
      if(!is.null(obj)){
        xml_file <- tempfile(fileext = ".xml")
        if(!is(obj, "ISOMetadata") && !is(obj, "XMLInternalNode")){
          stop("'obj' should be an object of class 'ISOMetadata' (from 'geometa') or 'XMLInternalNode' (from 'XML')")
        }
        if(is(obj,"ISOMetadata")){
          obj$save(xml_file, validate = FALSE)
        }else{
          XML::saveXML(xml, file = xml_file)
        }
      }else{
        if(!is.null(file)){
          xml_file <- file
        }else{
          stop("Either object (XML or geometa) or XML file should be provided")
        }
      }
      
      #upload file
      uploaded <- self$uploadFile(path = xml_file)
      
      #post metadata XML to INSPIRE web-service
      self$INFO("Sending metadata file to INSPIRE metadata validation web-service...")
      
      req <- httr::POST(
        url = sprintf("%s/TestRuns", self$url),
        httr::add_headers(
          "User-Agent" = paste("geometa/",as.character(packageVersion("geometa")),sep=""),
          "Content-Type" = "application/json",
          "X-API-key" = self$getAPIKey()
        ),
        body = jsonlite::toJSON(list(
          label = jsonlite::unbox("Test run for ISO/TC 19139:2007 based INSPIRE metadata records."),
          executableTestSuiteIds = "EID59692c11-df86-49ad-be7f-94a1e1ddd8da",
          arguments = list(
            files_to_test = jsonlite::unbox(".*"),
            tests_to_execute = jsonlite::unbox(".*")
          ),
          testObject = list(
            id = jsonlite::unbox(unlist(strsplit(uploaded$testObject$id, "EID"))[2])
          )
        ), auto_unbox = FALSE)
      )
      
      resp <- NULL
      if(httr::status_code(req)!=201){
        errorMsg <- sprintf("Error while creating INSPIRE validation test run: Error %s (%s)", 
                            httr::status_code(req), httr::message_for_status(req))
        self$INFO(errorMsg)
        stop(errorMsg)
      }else{
        self$INFO("INSPIRE metadata validation test...")
        pb <- txtProgressBar(min = 0, max = 100, style = 3)
        resp <- content(req)$EtfItemCollection
        testRunId <- resp$testRuns$TestRun$id
        progress <- 0
        while(progress < 100){
          prog_req <- httr::GET(sprintf("%s/TestRuns/%s/progress", self$url, testRunId))
          if(status_code(prog_req)!=200){
            errMsg <- sprintf("Error while getting progress for Test Run '%s'", testRunId)
            #self$ERROR(errMsg)
            stop(errMsg)
          }
          progress <- round(as.integer(content(prog_req)$val) / as.integer(content(prog_req)$max) * 100, 2)
          setTxtProgressBar(pb, value = progress)
          Sys.sleep(1)
        }
        close(pb)
        cat("\n")
        self$INFO("INSPIRE validation test run completed!")
      }
      #report content
      resp <- jsonlite::read_json(resp$ref)
      resp <- resp$EtfItemCollection
      
      
      sections <- resp$referencedItems$testTaskResults$TestTaskResult$testModuleResults$TestModuleResult$testCaseResults$TestCaseResult
      if(is.null(sections)){
        errorMsg <- "Error while creating INSPIRE validation  Test run!"
        self$INFO(errorMsg)
        stop(errorMsg)
      }
      result_status <- do.call("rbind", lapply(sections, function(section){
        status <- sapply(section$testStepResults$TestStepResult$testAssertionResults$TestAssertionResult, function(x){x$status})
        status <- as.data.frame(table(status), stringsAsFactors =  FALSE)
        return(status)
      }))

      result_status <- aggregate(.~status, data = result_status, FUN = sum)
      failed <- result_status[result_status$status=="FAILED", "Freq"]
      if(length(failed)==0) failed <- "0"
      passed <- result_status[result_status$status=="PASSED", "Freq"]
      if(length(passed)==0) passed <- "0"
      completeness <- passed / sum(result_status$Freq) * 100
      report <- list(
        "Status" = resp$testRuns$TestRun$status,
        "Completeness" = paste0(completeness,"% (", passed," PASSED, ", failed," FAILED)"),
        "Test Run ID" = resp$testRuns$TestRun$id,
        "Log" = resp$testRuns$TestRun$logPath,
        "Ref URI" = resp$ref,
        "HTML Report" = gsub(".json", ".html", resp$ref)
      )
      if(raw) report$raw <- resp
      return(report)
    }
  )
)
