#' ISOImageryPriority
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO imagery priority
#' @return Object of \code{\link[R6]{R6Class}} for modelling an ISO imagery priority
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @examples
#'   #possible values
#'   values <- ISOImageryPriority$values(labels = TRUE)
#'   
#'   #some def
#'   highImp <- ISOImageryPriority$new(value = "highImportance")
#' 
#' @references 
#'   - 19139 \url{https://schemas.isotc211.org/19115/-2/gmi/1.0/gmi/#element_MI_PriorityCode}
#'   
#'   - 19115-3 \url{https://schemas.isotc211.org/19115/-3/mac/1.0/mac/#element_MI_PriorityCode}
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOImageryPriority <- R6Class("ISOImageryPriority",
   inherit = ISOCodeListValue,
   private = list(
     xmlElement = "MI_PriorityCode",
     xmlNamespacePrefix = list(
       "19139" = "GMI",
       "19115-3" = "MAC"
     )
   ),
   public = list(
      
      #'@description Initializes object
      #'@param xml object of class \link[XML]{XMLInternalNode-class}
      #'@param value value
      #'@param description description
      initialize = function(xml = NULL, value, description = NULL){
       super$initialize(xml = xml, id = private$xmlElement, value = value, description = description, 
                        addCodeSpaceAttr = FALSE)
     }
   )                        
)

ISOImageryPriority$values <- function(labels = FALSE){
  return(ISOCodeListValue$values(ISOImageryPriority, labels))
}
