#' ISODataQualityAbstractElement
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO data quality abstract element
#' @return Object of \code{\link{R6Class}} for modelling an ISODataQualityAbstractElement
#' @format \code{\link{R6Class}} object.
#'
#' @field nameOfMeasure [\code{\link{character}}] measure name
#' @field measureIdentification [\code{\link{ISOMetaIdentifier}}] measure identification
#' @field measureDescription [\code{\link{character}}] measure description
#' @field evaluationMethodType [\code{\link{ISOEvaluationMethodType}}] measure evaluation method type
#' @field evaluationMethodDescription [\code{\link{character}}] measure evaluation method description
#' @field evaluationProcedure [\code{\link{character}}] evaluation procedure
#' @field dateTime [\code{\link{POSIXt}}] dateTime
#' @field result [\code{\link{ISOConformanceResult}}] conformance result(s)
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml)}}{
#'    This method is used to instantiate an ISODataQuality
#'  }
#'  \item{\code{addNameOfMeasure(name, locales)}}{
#'    Add name. Locale names can be specified as \code{list} with 
#'    the \code{locales} argument.
#'  }
#'  \item{\code{delNameOfMeasure(name, locales)}}{
#'    Deletes name. Locale names can be  specified as \code{list} with 
#'    the \code{locales} argument. Local names should match those of 
#'    the name to be deleted, otherwise nothing will be deleted.
#'  }
#'  \item{\code{setMeasureIdentification(identification)}}{
#'    Sets measure identifier, an object of class \code{ISOMetaIdentifier}
#'  }
#'  \item{\code{setMeasureDescription(description, locales)}}{
#'    Sets measure description. Locale names can be specified as \code{list} with 
#'    the \code{locales} argument.
#'  }
#'  \item{\code{setEvaluationMethodType(type)}}{
#'    Sets the type of evaluation method, an object of class \code{ISOEvaluationMethodType}
#'    or any \code{character} value among code{ISOEvaluationMethodType$values()}
#'  }
#'  \item{\code{setEvaluationMethodDescription(description, loales)}}{
#'    Sets the description of evaluation method. Locale names can be specified 
#'    as \code{list} with the \code{locales} argument.
#'  }
#'  \item{\code{setEvaluationMethodProcedure(procedure)}}{
#'    Sets the procedure as an object of class \code{ISOCitation}
#'  }
#'  \item{\code{setDateTime(dateTime)}}{
#'    Sets datetime, object class 'POSIXct'/'POSIXt'
#'  }
#'  \item{\code{addResult(result)}}{
#'    Sets conformance result, object of class \code{ISOConformanceResult}
#'  }
#'  \item{\code{delResult(result)}}{
#'    Deletes conformance result, object of class \code{ISOConformanceResult}
#'  }
#' }
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata 
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISODataQualityAbstractElement <- R6Class("ISODataQualityAbstractElement",
  inherit = ISOAbstractObject,
  private = list(
    xmlElement = "AbstractDQ_Element",
    xmlNamespacePrefix = "GMD"
  ),
  public = list(

    #+ nameOfMeasure [0..*]: character
    nameOfMeasure = list(),
    #+ measureIdentification [0..1]: ISOMetaIdentifier
    measureIdentification = NULL,
    #+ measureDescription [0..1]: character
    measureDescription = NULL,
    #+ evaluationMethodType [0..1]: ISOEvaluationMethodType
    evaluationMethodType = NULL,
    #+ evaluationMethodDescription [0..1]: character
    evaluationMethodDescription = NULL,
    #+ evaluationProcedure [0..1]: ISOCitation
    evaluationProcedure = NULL,
    #+ dateTime [0..1]: ISODateTime
    dateTime = NULL,
    #+ result [1..2]: ISOConformanceResult
    result = list(),
    
    initialize = function(xml = NULL){
      super$initialize(xml = xml)
    },
    
    #addNameOfMeasure
    addNameOfMeasure = function(name, locales = NULL){
      if(!is.null(locales)){
        name <- self$createLocalisedProperty(name, locales)
      }
      return(self$addListElement("nameOfMeasure", name))
    },
    
    #delNameOfMeasure
    delNameOfMeasure = function(name, locales = NULL){
      if(!is.null(locales)){
        name <- self$createLocalisedProperty(name, locales)
      }
      return(self$delListElement("nameOfMeasure", name))
    },
    
    #setMeasureIdentification
    setMeasureIdentification = function(identification){
      if(!is(identification, "ISOMetaIdentifier")){
        stop("The argument value should be an object of class 'ISOMetaIdentifier")
      }
      self$measureIdentification = identification
    },
    
    #setMeasureDescription
    setMeasureDescription = function(description, locales = NULL){
      if(!is.null(locales)){
        description <- self$createLocalisedProperty(description, locales)
      }
      self$measureDescription <- description
    },
    
    #setEvaluationMethodType
    setEvaluationMethodType = function(type){
      if(!is(type, "ISOEvaluationMethodType")){
        type <- ISOEvaluationMethodType$new(value = type)
      }
      self$evaluationMethodType <- type
    },
    
    #setEvaluationMethodDescription
    setEvaluationMethodDescription = function(description, locales = NULL){
      if(!is.null(locales)){
        description <- self$createLocalisedProperty(description, locales)
      }
      self$evaluationMethodDescription <- description
    },
    
    #setEvaluationProcedure
    setEvaluationProcedure = function(procedure){
      if(!is(procedure, "ISOCitation")){
        stop("The argument value should be an object of class 'ISOCitation'")
      }
      self$evaluationProcedure <- procedure
    },
    
    #setDateTime
    setDateTime = function(dateTime){
      if(!all(class(dateTime) == c("POSIXct","POSIXt"))){ 
        stop("The argument should be an 'POSIXct'/'POSIXt' object")
      }
      self$dateTime <- dateTime
    },
    
    #addResult
    addResult = function(result){
      if(!is(result, "ISOConformanceResult")){
        stop("The argument value should be an object of class 'ISOConformanceResult'")
      }
      return(self$addListElement("result", result))
    },
    
    #delResult
    delResult = function(result){
      if(!is(result, "ISOConformanceResult")){
        stop("The argument value should be an object of class 'ISOConformanceResult'")
      }
      return(self$delListElement("result", result))
    }
  )                        
)