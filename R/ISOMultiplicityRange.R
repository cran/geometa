#' ISOMultiplicityRange
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO multiplicity range
#' @return Object of \code{\link[R6]{R6Class}} for modelling an ISO MultiplicityRange
#' @format \code{\link[R6]{R6Class}} object.
#'
#' 
#' @examples
#'   md <- ISOMultiplicityRange$new(lower = 1, upper = Inf)
#'   xml <- md$encode()
#' 
#' @references
#'   - ISO 19139 \url{https://schemas.isotc211.org/19139/-/gco/1.0/gco/#element_MultiplicityRange}
#'   
#'   - ISO 19115-3 \url{https://schemas.isotc211.org/19115/-3/gco/1.0/gco/#element_MultiplicityRange}
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOMultiplicityRange <- R6Class("ISOMultiplicityRange",
  inherit = ISOAbstractObject,
  private = list(
    xmlElement = "MultiplicityRange",
    xmlNamespacePrefix = list(
      "19139" = "GCO",
      "19115-3" = "GCO"
    )
  ),
  public = list(
    #'@field lower lower
    lower = NULL,
    #'@field upper upper
    upper = NULL,
    
    #'@description Initializes object
    #'@param xml object of class \link[XML]{XMLInternalNode-class}
    #'@param lower lower
    #'@param upper upper
    initialize = function(xml = NULL, lower, upper){
      super$initialize(xml = xml)
      if(is.null(xml)){
        if(!is(lower, "integer")){
          lower <- as.integer(lower)
          if(is.na(lower)){
            stop("The argument 'lower' should an integer")
          }
        }
        self$lower = lower
        self$upper = upper
        class(self$upper) <- "unlimitedinteger"
      }
    }
  )                        
)
