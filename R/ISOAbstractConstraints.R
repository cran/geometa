#' ISOAbstractConstraints
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO abstract constraints
#' @return Object of \code{\link[R6]{R6Class}} for modelling an ISO abstract constraints
#' @format \code{\link[R6]{R6Class}} object.
#'   
#' @references 
#'   - ISO 19115-3 \url{https://schemas.isotc211.org/19115/-3/mcc/1.0/mcc/#element_Abstract_Constraints}
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOAbstractConstraints <- R6Class("ISOAbstractConstraints",
   inherit = ISOAbstractObject,
   private = list(
     xmlElement = "Abstract_Constraints",
     xmlNamespacePrefix = list(
       "19115-3" = "MCC"
     )
   ),
   public = list(
     
     #'@description Initializes object
     #'@param xml object of class \link[XML]{XMLInternalNode-class}
     initialize = function(xml = NULL){
       super$initialize(xml = xml)
     }
   )                        
)
