#' ISODimensionNameType
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO DimensionNameType
#' @return Object of \code{\link{R6Class}} for modelling an ISO DimensionNameType
#' @format \code{\link{R6Class}} object.
#' 
#' @examples 
#'   #possible values
#'   values <- ISODimensionNameType$values(labels = TRUE)
#'   
#'   #row DimensionNameType
#'   rowType <- ISODimensionNameType$new(value = "row")
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata 
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISODimensionNameType <- R6Class("ISODimensionNameType",
    inherit = ISOCodeListValue,
    private = list(
      xmlElement = "MD_DimensionNameTypeCode",
      xmlNamespacePrefix = "GMD"
    ),
    public = list(
      
      #'@description Initializes object
      #'@param xml object of class \link{XMLInternalNode-class}
      #'@param value value
      #'@param description description
      initialize = function(xml = NULL, value, description = NULL){
        super$initialize(xml = xml, id = private$xmlElement, value = value,
                         description = description)
      }
    )                        
)

ISODimensionNameType$values <- function(labels = FALSE){
  return(ISOCodeListValue$values(ISODimensionNameType, labels))
}