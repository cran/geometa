#' ISOScale
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO measure scale
#' @return Object of \code{\link{R6Class}} for modelling an ISOScale measure
#' @format \code{\link{R6Class}} object.
#'
#' @field value
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml,value, uom, useUomURI)}}{
#'    This method is used to instantiate an \code{\link{ISOScale}}. The \code{uom} argument represents
#'    the symbol of unit of measure used. The parameter  \code{useUomURI} can be used to 
#'    set the uom as URI, its default value is \code{FALSE}.
#'  }
#' }
#' 
#' @references
#'  ISO/TS 19103:2005 Geographic information -- Conceptual schema language
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOScale <- R6Class("ISOScale",
    inherit = ISOMeasure,
    private = list(
      xmlElement = "Scale",
      xmlNamespacePrefix = "GCO"
    ),
    public = list(
      initialize = function(xml = NULL, value, uom, useUomURI = FALSE){
        super$initialize(
          xml = xml,
          value = value,
          uom = uom
        )
      }
    )                        
)