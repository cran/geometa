#' ISOIndividual
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO individual
#' @return Object of \code{\link[R6]{R6Class}} for modelling an ISO individual
#' @format \code{\link[R6]{R6Class}} object.
#'   
#' @references 
#'  - ISO 19115-3 \url{https://schemas.isotc211.org/19115/-3/cit/2.0/cit/#element_CI_Individual}
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOIndividual <- R6Class("ISOIndividual",
  inherit = ISOAbstractParty,
  private = list(
    xmlElement = "CI_Individual",
    xmlNamespacePrefix = list(
      "19115-3" = "CIT"
    )
  ),
  public = list(
    #'@field positionName positionName
    positionName = NULL,
    
    #'@description Initializes object
    #'@param xml object of class \link[XML]{XMLInternalNode-class}
    initialize = function(xml = NULL){
      super$initialize(xml = xml)
    },
    
    #'@description Set position name
    #'@param positionName position name
    #'@param locales list of localized texts. Default is \code{NULL}
    setPositionName = function(positionName, locales = NULL){
      self$positionName = positionName
      if(!is.null(locales)){
        self$positionName <- self$createLocalisedProperty(positionName, locales)
      }
    }
    
  )                        
)
