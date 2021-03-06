#' ISOHierarchyLevel
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO Restriction
#' @return Object of \code{\link{R6Class}} for modelling an ISO Restriction
#' @format \code{\link{R6Class}} object.
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml,value, description)}}{
#'    This method is used to instantiate an \code{\link{ISORestriction}}
#'  }
#' }
#' 
#' @examples 
#'   #possible values
#'   values <- ISORestriction$values(labels = TRUE)
#'   
#'   #copyright restriction
#'   cr <- ISORestriction$new(value = "copyright")
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISORestriction <- R6Class("ISORestriction",
   inherit = ISOCodeListValue,
   private = list(
     xmlElement = "MD_RestrictionCode",
     xmlNamespacePrefix = "GMD"
   ),
   public = list(
     initialize = function(xml = NULL, value, description = NULL){
       super$initialize(xml = xml, id = private$xmlElement, value = value,
                        description = description)
     }
   )                        
)

ISORestriction$values <- function(labels = FALSE){
  return(ISOCodeListValue$values(ISORestriction, labels))
}