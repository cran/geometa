#' ISOAbstractThematicAccuracy
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO data quality abstract thematic accuracy
#' @return Object of \code{\link{R6Class}} for modelling an ISOAbstractThematicAccuracy
#' @format \code{\link{R6Class}} object.
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata 
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOAbstractThematicAccuracy <- R6Class("ISOAbstractThematicAccuracy",
 inherit = ISODataQualityAbstractElement,
 private = list(
   xmlElement = "AbstractDQ_ThematicAccuracy",
   xmlNamespacePrefix = "GMD"
 ),
 public = list()
)

#' ISOQuantitativeAttributeAccuracy
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO data quality quantitative attribute accuracy
#' @return Object of \code{\link{R6Class}} for modelling an ISOQuantitativeAttributeAccuracy
#' @format \code{\link{R6Class}} object.
#' 
#' @examples 
#'   #encoding
#'   dq <- ISOQuantitativeAttributeAccuracy$new()
#'   dq$addNameOfMeasure("measure")
#'   metaId <- ISOMetaIdentifier$new(code = "measure-id")
#'   dq$setMeasureIdentification(metaId)
#'   dq$setMeasureDescription("description")
#'   dq$setEvaluationMethodDescription("method description")
#'   dq$setEvaluationMethodType("indirect")
#'   dq$setDateTime(ISOdate(2015,1,1,12,10,49))
#'   spec <- ISOCitation$new()
#'   spec$setTitle("specification title")
#'   spec$addAlternateTitle("specification alternate title")
#'   d <- ISODate$new()
#'   d$setDate(ISOdate(2015, 1, 1, 1))
#'   d$setDateType("publication")
#'   spec$addDate(d)
#'   dq$setEvaluationProcedure(spec)
#'   result <- ISOConformanceResult$new()
#'   result$setSpecification(spec)
#'   result$setExplanation("some explanation about the conformance")
#'   result$setPass(TRUE)
#'   dq$addResult(result)
#'   xml <- dq$encode()
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata 
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOQuantitativeAttributeAccuracy <- R6Class("ISOQuantitativeAttributeAccuracy",
 inherit = ISOAbstractThematicAccuracy,
 private = list(
   xmlElement = "DQ_QuantitativeAttributeAccuracy",
   xmlNamespacePrefix = "GMD"
 ),
 public = list()
)

#' ISONonQuantitativeAttributeAccuracy
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO data quality nonquantitative attribute accuracy
#' @return Object of \code{\link{R6Class}} for modelling an ISONonQuantitativeAttributeAccuracy
#' @format \code{\link{R6Class}} object.
#' 
#' @examples 
#'   #encoding
#'   dq <- ISONonQuantitativeAttributeAccuracy$new()
#'   dq$addNameOfMeasure("measure")
#'   metaId <- ISOMetaIdentifier$new(code = "measure-id")
#'   dq$setMeasureIdentification(metaId)
#'   dq$setMeasureDescription("description")
#'   dq$setEvaluationMethodDescription("method description")
#'   dq$setEvaluationMethodType("indirect")
#'   dq$setDateTime(ISOdate(2015,1,1,12,10,49))
#'   spec <- ISOCitation$new()
#'   spec$setTitle("specification title")
#'   spec$addAlternateTitle("specification alternate title")
#'   d <- ISODate$new()
#'   d$setDate(ISOdate(2015, 1, 1, 1))
#'   d$setDateType("publication")
#'   spec$addDate(d)
#'   dq$setEvaluationProcedure(spec)
#'   result <- ISOConformanceResult$new()
#'   result$setSpecification(spec)
#'   result$setExplanation("some explanation about the conformance")
#'   result$setPass(TRUE)
#'   dq$addResult(result)
#'   xml <- dq$encode()
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata 
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISONonQuantitativeAttributeAccuracy <- R6Class("ISONonQuantitativeAttributeAccuracy",
  inherit = ISOAbstractThematicAccuracy,
  private = list(
    xmlElement = "DQ_NonQuantitativeAttributeAccuracy",
    xmlNamespacePrefix = "GMD"
  ),
  public = list()
)

#' ISOThematicClassificationCorrectness
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords ISO data quality thematic accuracy classification correctness
#' @return Object of \code{\link{R6Class}} for modelling an ISOThematicClassificationCorrectness
#' @format \code{\link{R6Class}} object.
#' 
#' @examples 
#'   #encoding
#'   dq <- ISOThematicClassificationCorrectness$new()
#'   dq$addNameOfMeasure("measure")
#'   metaId <- ISOMetaIdentifier$new(code = "measure-id")
#'   dq$setMeasureIdentification(metaId)
#'   dq$setMeasureDescription("description")
#'   dq$setEvaluationMethodDescription("method description")
#'   dq$setEvaluationMethodType("indirect")
#'   dq$setDateTime(ISOdate(2015,1,1,12,10,49))
#'   spec <- ISOCitation$new()
#'   spec$setTitle("specification title")
#'   spec$addAlternateTitle("specification alternate title")
#'   d <- ISODate$new()
#'   d$setDate(ISOdate(2015, 1, 1, 1))
#'   d$setDateType("publication")
#'   spec$addDate(d)
#'   dq$setEvaluationProcedure(spec)
#'   result <- ISOConformanceResult$new()
#'   result$setSpecification(spec)
#'   result$setExplanation("some explanation about the conformance")
#'   result$setPass(TRUE)
#'   dq$addResult(result)
#'   xml <- dq$encode()
#'   
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata 
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOThematicClassificationCorrectness <- R6Class("ISOThematicClassificationCorrectness",
  inherit = ISOAbstractTemporalAccuracy,
  private = list(
   xmlElement = "DQ_ThematicClassificationCorrectness",
   xmlNamespacePrefix = "GMD"
  ),
  public = list()
)