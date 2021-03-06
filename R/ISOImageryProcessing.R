#' ISOImageryProcessing
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO imagery processing
#' @return Object of \code{\link{R6Class}} for modelling an ISO imagery processing
#' @format \code{\link{R6Class}} object.
#'
#' @field identifier [\code{\link{ISOMetaIdentifier}}]
#' @field softwareReference [\code{list} of \code{\link{ISOCitation}}]
#' @field procedureDescription [\code{\link{character}}|\code{\link{ISOLocalisedCharacterString}}]
#' @field documentation [\code{list} of \code{\link{ISOCitation}}]
#' @field rumTimeParameters [\code{character}]
#' @field algorithm [\code{list} of \code{\link{ISOImageryAlgorithm}}]
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml)}}{
#'    This method is used to instantiate an \code{\link{ISOImageryProcessing}}
#'  }
#'  \item{\code{setIdentifier(identifier)}}{
#'    Sets an identifier, object of class \code{character} or \code{\link{ISOMetaIdentifier}}
#'  }
#'  \item{\code{addSoftwareReference(softwareReference)}}{
#'    Adds software reference, object of class \code{\link{ISOCitation}}
#'  }
#'  \item{\code{delSoftwareReference(softwareReference)}}{
#'    Deletes a software reference, object of class \code{\link{ISOCitation}}
#'  }
#'  \item{\code{setProcedureDescription(description, locales)}}{
#'    Sets a description (object of class "character"). Locale names can be 
#'    specified as \code{list} with the \code{locales} argument.
#'  }
#'  \item{\code{addDocumentation(documentation)}}{
#'    Adds documentation, object of class \code{\link{ISOCitation}}
#'  }
#'  \item{\code{delDocumentation(documentation)}}{
#'    Deletes documentation, object of class \code{\link{ISOCitation}}
#'  }
#'  \item{\code{setRunTimeParameters(params)}}{
#'    Set the runtime parameters, object of class \code{character}
#'  }
#'  \item{\code{addAlgorithm(algorithm)}}{
#'    Add a algorithm, object of class \code{\link{ISOImageryAlgorithm}}
#'  }
#'  \item{\code{delAlgorithm(algorithm)}}{
#'    Deletes a algorithm, object of class \code{\link{ISOImageryAlgorithm}}
#'  }
#' }  
#' 
#' @examples
#'    md <- ISOImageryProcessing$new()
#'    
#'    #add citation
#'    rp1 <- ISOResponsibleParty$new()
#'    rp1$setIndividualName("someone1")
#'    rp1$setOrganisationName("somewhere1")
#'    rp1$setPositionName("someposition1")
#'    rp1$setRole("pointOfContact")
#'    contact1 <- ISOContact$new()
#'    phone1 <- ISOTelephone$new()
#'    phone1$setVoice("myphonenumber1")
#'    phone1$setFacsimile("myfacsimile1")
#'    contact1$setPhone(phone1)
#'    address1 <- ISOAddress$new()
#'    address1$setDeliveryPoint("theaddress1")
#'    address1$setCity("thecity1")
#'    address1$setPostalCode("111")
#'    address1$setCountry("France")
#'    address1$setEmail("someone1@@theorg.org")
#'    contact1$setAddress(address1)
#'    res <- ISOOnlineResource$new()
#'    res$setLinkage("http://www.somewhereovertheweb.org")
#'    res$setName("somename")
#'    contact1$setOnlineResource(res)
#'    rp1$setContactInfo(contact1)
#'    
#'    #citation
#'    ct <- ISOCitation$new()
#'    ct$setTitle("sometitle")
#'    d <- ISODate$new()
#'    d$setDate(ISOdate(2015, 1, 1, 1))
#'    d$setDateType("publication")
#'    ct$addDate(d)
#'    ct$setEdition("1.0")
#'    ct$setEditionDate(ISOdate(2015,1,1))
#'    ct$addIdentifier(ISOMetaIdentifier$new(code = "identifier"))
#'    ct$addPresentationForm("mapDigital")
#'    ct$addCitedResponsibleParty(rp1)
#'    
#'    md$setIdentifier("identifier")
#'    md$setProcedureDescription("some description")
#'    md$addSoftwareReference(ct)
#'    md$addDocumentation(ct)
#'    md$setRunTimeParameters("params")
#'    
#'    xml <- md$encode()
#' 
#' @references 
#'   ISO 19115-2:2009 - Geographic information -- Metadata Part 2: Extensions for imagery and gridded data
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#' 
ISOImageryProcessing <- R6Class("ISOImageryProcessing",
   inherit = ISOAbstractObject,
   private = list(
     xmlElement = "LE_Processing",
     xmlNamespacePrefix = "GMI"
   ),
   public = list(
     
     #+ identifier [1..1]: ISOMetaIdentifier
     identifier = NULL,
     #+ softwareReference [0.1]: ISOCitation
     softwareReference = list(),
     #+ procedureDescription [0..1]: character|ISOLocalisedCharacterString
     procedureDescription = NULL,
     #+ documentation [0..*]: ISOCitation
     documentation = list(),
     #+ runTimeParameters [0..1]: character
     runTimeParameters = NULL,
     #+ algorithm [0..*]: ISOImageryAlgorithm
     algorithm = list(),
     
     initialize = function(xml = NULL){
       super$initialize(xml = xml)
     },
     
     #setIdentifier
     setIdentifier = function(identifier){
       if(is(identifier, "character")){
         identifier <- ISOMetaIdentifier$new(code = identifier)
       }else{
         if(!is(identifier, "ISOMetaIdentifier")){
           stop("The argument should be an object of class 'character' or 'ISOMetaIdentifier'")
         }
       }
       self$identifier <- identifier
     },
     
     #addSoftwareReference
     addSoftwareReference = function(softwareReference){
       if(!is(softwareReference, "ISOCitation")){
         stop("The argument should be an object of class 'ISOCitation")
       }
       return(self$addListElement("softwareReference", softwareReference))
     },
     
     #delSoftwareReference
     delSoftwareReference = function(softwareReference){
       if(!is(softwareReference, "ISOCitation")){
         stop("The argument should be an object of class 'ISOCitation")
       }
       return(self$delListElement("softwareReference", softwareReference))
     },
     
     #setProcedureDescription
     setProcedureDescription = function(procedureDescription, locales = NULL){
       if(!is.null(locales)){
         procedureDescription <- self$createLocalisedProperty(procedureDescription, locales)
       }
       self$procedureDescription <- procedureDescription
     },
     
     #addDocumentation
     addDocumentation = function(documentation){
       if(!is(documentation, "ISOCitation")){
         stop("The argument should be an object of class 'ISOCitation")
       }
       return(self$addListElement("documentation", documentation))
     },
     
     #delDocumentation
     delDocumentation = function(documentation){
       if(!is(documentation, "ISOCitation")){
         stop("The argument should be an object of class 'ISOCitation")
       }
       return(self$delListElement("documentation", documentation))
     },
     
     #setRunTimeParameters
     setRunTimeParameters = function(params){
       self$runTimeParameters <- params
     },
     
     #addAlgorithm
     addAlgorithm = function(algorithm){
       if(!is(algorithm, "ISOImageryAlgorithm")){
         stop("The argument should be an object of class 'ISOImageryAlgorithm")
       }
       return(self$addListElement("algorithm", algorithm))
     },
     
     #delAlgorithm
     delAlgorithm = function(algorithm){
       if(!is(algorithm, "ISOImageryAlgorithm")){
         stop("The argument should be an object of class 'ISOImageryAlgorithm")
       }
       return(self$delListElement("algorithm", algorithm))
     }
     
   )                        
)