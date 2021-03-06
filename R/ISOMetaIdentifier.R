#' ISOMetaIdentifier
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO meta identifier
#' @return Object of \code{\link{R6Class}} for modelling an ISO MetaIdentifier
#' @format \code{\link{R6Class}} object.
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml, code)}}{
#'    This method is used to instantiate an \code{\link{ISOMetaIdentifier}}
#'  }
#' }
#' 
#' @examples 
#'   md <- ISOMetaIdentifier$new(code = "identifier")
#'   xml <- md$encode()
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOMetaIdentifier <- R6Class("ISOMetaIdentifier",
   inherit = ISOIdentifier,
   private = list(
     xmlElement = "MD_Identifier",
     xmlNamespacePrefix = "GMD"
   ),
   public = list(
     initialize = function(xml = NULL, code){
       super$initialize(xml = xml, code = code)
     }
   )                        
)