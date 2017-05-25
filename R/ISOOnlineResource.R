#' ISOOnlineResource
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO online resource
#' @return Object of \code{\link{R6Class}} for modelling an ISO Online Resource
#' @format \code{\link{R6Class}} object.
#'
#' @field linkage
#' @field protocol
#' @field name
#' @field description
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml)}}{
#'    This method is used to instantiate an ISOOnlineResource
#'  }
#'  \item{\code{setLinkage(linkage)}}{
#'    Sets the linkage (URL)
#'  }
#'  \item{\code{setProtocol(protocol)}}{
#'    Sets the protocol
#'  }
#'  \item{\code{setName(name)}}{
#'    Sets the name
#'  }
#'  \item{\code{setDescription(description)}}{
#'    Sets the description
#'  }
#' }
#' 
#' @examples
#'   md <- ISOOnlineResource$new()
#'   md$setLinkage("http://somelink")
#'   md$setName("name")
#'   md$setDescription("description")
#'   md$setProtocol("protocol")
#'   xml <- md$encode()
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOOnlineResource <- R6Class("ISOOnlineResource",
  inherit = ISOMetadataElement,
  private = list(
    xmlElement = "CI_OnlineResource",
    xmlNamespacePrefix = "GMD"
  ),
  public = list(
    linkage = NULL,
    protocol = NULL,
    name = NULL,
    description = NULL,
    initialize = function(xml = NULL){
      super$initialize(
        xml = xml,
        element = private$xmlElement,
        namespace = getISOMetadataNamespace(private$xmlNamespacePrefix)
      )
    },
    
    #setLinkage
    setLinkage = function(linkage){
      if(!is(linkage, "character")) linkage <- as.character(linkage)
      self$linkage <- linkage
    },
    
    #setName
    setName = function(name){
      if(!is(name, "character")) name <- as.character(name)
      self$name <- name
    },
    
    #setProtocol
    setProtocol = function(protocol){
      if(!is(protocol, "character")) protocol <- as.character(protocol)
      self$protocol <- protocol
    },
    
    #setDescription
    setDescription = function(description){
      if(!is(description, "character")) description <- as.character(description)
      self$description <- description
    }
  )                        
)