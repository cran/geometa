#' ISODate
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO date
#' @return Object of \code{\link{R6Class}} for modelling an ISO Date
#' @format \code{\link{R6Class}} object.
#'
#' @field date [\code{\link{ISOBaseDate}}] the date
#' @field dateType [\code{\link{ISODateType}}] the date type
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml)}}{
#'    This method is used to instantiate an \code{\link{ISODate}}
#'  }
#'  \item{\code{setDate(date)}}{
#'    Sets the date
#'  }
#'  \item{\code{setDateType(dateType)}}{
#'    Sets the date type
#'  }
#' }
#' 
#' @examples 
#'   md <- ISODate$new()
#'   md$setDate(ISOdate(2015, 1, 1, 1))
#'   md$setDateType("publication")
#'   xml <- md$encode()
#' 
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata 
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISODate <- R6Class("ISODate",
   inherit = ISOAbstractObject,
   private = list(
      xmlElement = "CI_Date",
      xmlNamespacePrefix = "GMD"
   ),
   public = list(
     date = NULL,
     dateType = NULL,
     initialize = function(xml = NULL){
       super$initialize(xml = xml)
     },
     
     #setDate
     setDate = function(date){
       if(!(is(date, "Date") | is(date, "POSIXt"))){
         stop("The date should be either a 'Date' or 'POSIXt' object")
       }
       self$date = date
     },
     
     #setDateType
     setDateType = function(dateType){
       if(!is(dateType, "ISODateType")){
         dateType <- ISODateType$new(value = dateType)
       }
       self$dateType = dateType
     }
   )                        
)