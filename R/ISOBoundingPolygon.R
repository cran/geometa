#' ISOBoundingPolygon
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO bounding polygon
#' @return Object of \code{\link[R6]{R6Class}} for modelling an ISO BoundingPolygon
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @note Experimental
#' 
#' @references 
#'  - ISO 19139 \url{https://schemas.isotc211.org/19139/-/gmd/1.0/gmd/#element_EX_BoundingPolygon}
#'  
#'  - ISO 19115-3 \url{https://schemas.isotc211.org/19115/-3/gex/1.0/gex/#element_EX_BoundingPolygon}
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOBoundingPolygon <- R6Class("ISOBoundingPolygon",
  inherit = ISOGeographicExtent,
  private = list(
    xmlElement = "EX_BoundingPolygon",
    xmlNamespacePrefix = list(
      "19139" = "GMD",
      "19115-3" = "GEX"
    )
  ),
  public = list(
    #'@field polygon list of polygons
    polygon = list(),
    
    #'@description Initializes object
    #'@param xml object of class \link[XML]{XMLInternalNode-class}
    initialize = function(xml = NULL){
      super$initialize(xml = xml)
    },
    
    #'@description Adds polygon
    #'@param x geometry object from \pkg{sf} or object of class inheriting \link{GMLAbstractGeometry}
    #'@return \code{TRUE} if added, \code{FALSE} otherwise
    addPolygon = function(x){
      if(is(x,"sfg")) x <- GMLAbstractGeometry$fromSimpleFeatureGeometry(x)
      if(!inherits(x, "GMLAbstractGeometry")){
        stop("Input is not a geometry")
      }
      return(self$addListElement("polygon", x))
    },
    
    #'@description Deletes polygon
    #'@param x geometry object from \pkg{sf} or object of class inheriting \link{GMLAbstractGeometry}
    #'@return \code{TRUE} if deleted, \code{FALSE} otherwise
    delPolygon = function(x){
      if(is(x,"sfg")) x <- GMLAbstractGeometry$fromSimpleFeatureGeometry(x)
      if(!inherits(x, "GMLAbstractGeometry")){
        stop("Input is not a geometry")
      }
      return(self$delListElement("polygon", x))
    }
  )                                          
)
