#' ISOBoundFeatureAttribute
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO BoundFeatureAttribute
#' @return Object of \code{\link[R6]{R6Class}} for modelling an ISOBoundFeatureAttribute
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @references 
#'   ISO 19110:2005 Methodology for Feature cataloguing
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOBoundFeatureAttribute <- R6Class("ISOBoundFeatureAttribute",
    inherit = ISOBinding,
    private = list(
      xmlElement = "FC_BoundFeatureAttribute",
      xmlNamespacePrefix = "GFC"
    ),
    public = list(
      
      #'@field valueType valueType [0..1]: ISOTypeName
      valueType = NULL,
      
      #'@description Set type name
      #'@param typeName object of class \link{ISOTypeName} or \link{character}
      setTypeName = function(typeName){
        if(!is(typeName, "ISOTypeName")){
          if(is(typeName, "character")){
            tn <- ISOTypeName$new()
            tn$setName(typeName)
            typeName <- tn
          }else{
            stop("The argument should be an object of class 'ISOTypeName' or 'character'")
          }
        }
        self$valueType <- typeName       
      }
    )         
)
