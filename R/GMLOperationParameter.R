#' GMLOperationParameter
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO GML operation parameter
#' @return Object of \code{\link[R6]{R6Class}} for modelling an GMLOperationParameter
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @references 
#'   ISO 19136:2007 Geographic Information -- Geographic Markup Language.
#'   http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=32554 
#'   
#'   OGC Geography Markup Language. http://www.opengeospatial.org/standards/gml
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
GMLOperationParameter <- R6Class("GMLOperationParameter",
  inherit = GMLAbstractGeneralOperationParameter,
  private = list(
    xmlElement = "OperationParameter",
    xmlNamespacePrefix = "GML"
  ),
  public = list()
)
