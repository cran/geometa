#' ISOKeywordType
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO keywordtype
#' @return Object of \code{\link{R6Class}} for modelling an ISO KeywordType
#' @format \code{\link{R6Class}} object.
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml,value, description)}}{
#'    This method is used to instantiate an \code{\link{ISOKeywordType}}
#'  }
#' }
#' 
#' @examples 
#'   #possible values
#'   values <- ISOKeywordType$values(labels = TRUE)
#'   
#'   #place keywordType
#'   place <- ISOKeywordType$new(value = "place")
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOKeywordType <- R6Class("ISOKeywordType",
 inherit = ISOCodeListValue,
 private = list(
   xmlElement = "MD_KeywordTypeCode",
   xmlNamespacePrefix = "GMD"
 ),
 public = list(
   initialize = function(xml = NULL, value, description = NULL){
     super$initialize(xml = xml, id = private$xmlElement, value = value,
                      description = description)
   }
 )                        
)

ISOKeywordType$values <- function(labels = FALSE){
  return(ISOCodeListValue$values(ISOKeywordType, labels))
}