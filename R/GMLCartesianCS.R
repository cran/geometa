#' GMLCartesianCS
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO GML cartesian coordinate system
#' @return Object of \code{\link[R6]{R6Class}} for modelling an GMLCartesianCS
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @note Experimental
#' 
#' @references 
#'   ISO 19136:2007 Geographic Information -- Geographic Markup Language.
#'   http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=32554 
#'   
#'   OGC Geography Markup Language. http://www.opengeospatial.org/standards/gml
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
GMLCartesianCS <- R6Class("GMLCartesianCS",
  inherit = GMLAbstractCoordinateSystem,
  private = list(
    xmlElement = "CartesianCS",
    xmlNamespacePrefix = "GML"
  ),
  public = list()
)