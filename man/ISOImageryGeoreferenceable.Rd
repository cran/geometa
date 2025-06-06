% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOImageryGeoreferenceable.R
\docType{class}
\name{ISOImageryGeoreferenceable}
\alias{ISOImageryGeoreferenceable}
\title{ISOImageryGeoreferenceable}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISO imagery Georeferenceable
}
\description{
ISOImageryGeoreferenceable

ISOImageryGeoreferenceable
}
\references{
- ISO 19139 \url{https://schemas.isotc211.org/19115/-2/gmi/1.0/gmi/#element_MI_Georeferenceable}
  
  - ISO 19115-3 \url{https://schemas.isotc211.org/19115/-3/msr/1.0/msr/#element_MI_Georeferenceable}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{Georeferenceable}
\keyword{ISO}
\keyword{imagery}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{\link[geometa:ISOAbstractSpatialRepresentation]{geometa::ISOAbstractSpatialRepresentation}} -> \code{\link[geometa:ISOSpatialRepresentation]{geometa::ISOSpatialRepresentation}} -> \code{\link[geometa:ISOGridSpatialRepresentation]{geometa::ISOGridSpatialRepresentation}} -> \code{\link[geometa:ISOGeoreferenceable]{geometa::ISOGeoreferenceable}} -> \code{ISOImageryGeoreferenceable}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{geolocationInformation}}{geolocationInformation [0..*]: ISOImageryGeolocationInformation}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOImageryGeoreferenceable-new}{\code{ISOImageryGeoreferenceable$new()}}
\item \href{#method-ISOImageryGeoreferenceable-addGeolocationInformation}{\code{ISOImageryGeoreferenceable$addGeolocationInformation()}}
\item \href{#method-ISOImageryGeoreferenceable-delGeolocationInformation}{\code{ISOImageryGeoreferenceable$delGeolocationInformation()}}
\item \href{#method-ISOImageryGeoreferenceable-clone}{\code{ISOImageryGeoreferenceable$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="geometa" data-topic="geometaLogger" data-id="ERROR"><a href='../../geometa/html/geometaLogger.html#method-geometaLogger-ERROR'><code>geometa::geometaLogger$ERROR()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="geometaLogger" data-id="INFO"><a href='../../geometa/html/geometaLogger.html#method-geometaLogger-INFO'><code>geometa::geometaLogger$INFO()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="geometaLogger" data-id="WARN"><a href='../../geometa/html/geometaLogger.html#method-geometaLogger-WARN'><code>geometa::geometaLogger$WARN()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="addFieldAttrs"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-addFieldAttrs'><code>geometa::ISOAbstractObject$addFieldAttrs()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="addListElement"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-addListElement'><code>geometa::ISOAbstractObject$addListElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="checkMetadataStandardCompliance"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-checkMetadataStandardCompliance'><code>geometa::ISOAbstractObject$checkMetadataStandardCompliance()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="contains"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-contains'><code>geometa::ISOAbstractObject$contains()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="createLocalisedProperty"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-createLocalisedProperty'><code>geometa::ISOAbstractObject$createLocalisedProperty()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="decode"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-decode'><code>geometa::ISOAbstractObject$decode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="delListElement"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-delListElement'><code>geometa::ISOAbstractObject$delListElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="encode"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-encode'><code>geometa::ISOAbstractObject$encode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="getClass"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-getClass'><code>geometa::ISOAbstractObject$getClass()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="getClassName"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-getClassName'><code>geometa::ISOAbstractObject$getClassName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="getNamespaceDefinition"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-getNamespaceDefinition'><code>geometa::ISOAbstractObject$getNamespaceDefinition()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="isDocument"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-isDocument'><code>geometa::ISOAbstractObject$isDocument()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="isFieldInheritedFrom"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-isFieldInheritedFrom'><code>geometa::ISOAbstractObject$isFieldInheritedFrom()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="print"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-print'><code>geometa::ISOAbstractObject$print()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="save"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-save'><code>geometa::ISOAbstractObject$save()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setAttr"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setAttr'><code>geometa::ISOAbstractObject$setAttr()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setCodeList"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setCodeList'><code>geometa::ISOAbstractObject$setCodeList()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setCodeListValue"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setCodeListValue'><code>geometa::ISOAbstractObject$setCodeListValue()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setCodeSpace"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setCodeSpace'><code>geometa::ISOAbstractObject$setCodeSpace()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setHref"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setHref'><code>geometa::ISOAbstractObject$setHref()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setId"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setId'><code>geometa::ISOAbstractObject$setId()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setIsNull"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setIsNull'><code>geometa::ISOAbstractObject$setIsNull()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="setValue"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-setValue'><code>geometa::ISOAbstractObject$setValue()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="stopIfMetadataStandardIsNot"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-stopIfMetadataStandardIsNot'><code>geometa::ISOAbstractObject$stopIfMetadataStandardIsNot()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="validate"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-validate'><code>geometa::ISOAbstractObject$validate()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractObject" data-id="wrapBaseElement"><a href='../../geometa/html/ISOAbstractObject.html#method-ISOAbstractObject-wrapBaseElement'><code>geometa::ISOAbstractObject$wrapBaseElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGridSpatialRepresentation" data-id="addDimension"><a href='../../geometa/html/ISOGridSpatialRepresentation.html#method-ISOGridSpatialRepresentation-addDimension'><code>geometa::ISOGridSpatialRepresentation$addDimension()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGridSpatialRepresentation" data-id="delDimension"><a href='../../geometa/html/ISOGridSpatialRepresentation.html#method-ISOGridSpatialRepresentation-delDimension'><code>geometa::ISOGridSpatialRepresentation$delDimension()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGridSpatialRepresentation" data-id="setCellGeometry"><a href='../../geometa/html/ISOGridSpatialRepresentation.html#method-ISOGridSpatialRepresentation-setCellGeometry'><code>geometa::ISOGridSpatialRepresentation$setCellGeometry()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGridSpatialRepresentation" data-id="setNumberOfDimensions"><a href='../../geometa/html/ISOGridSpatialRepresentation.html#method-ISOGridSpatialRepresentation-setNumberOfDimensions'><code>geometa::ISOGridSpatialRepresentation$setNumberOfDimensions()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGridSpatialRepresentation" data-id="setTransformationParameterAvailability"><a href='../../geometa/html/ISOGridSpatialRepresentation.html#method-ISOGridSpatialRepresentation-setTransformationParameterAvailability'><code>geometa::ISOGridSpatialRepresentation$setTransformationParameterAvailability()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGeoreferenceable" data-id="addParameterCitation"><a href='../../geometa/html/ISOGeoreferenceable.html#method-ISOGeoreferenceable-addParameterCitation'><code>geometa::ISOGeoreferenceable$addParameterCitation()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGeoreferenceable" data-id="delParameterCitation"><a href='../../geometa/html/ISOGeoreferenceable.html#method-ISOGeoreferenceable-delParameterCitation'><code>geometa::ISOGeoreferenceable$delParameterCitation()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGeoreferenceable" data-id="setControlPointAvailability"><a href='../../geometa/html/ISOGeoreferenceable.html#method-ISOGeoreferenceable-setControlPointAvailability'><code>geometa::ISOGeoreferenceable$setControlPointAvailability()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGeoreferenceable" data-id="setGeoreferencedParameters"><a href='../../geometa/html/ISOGeoreferenceable.html#method-ISOGeoreferenceable-setGeoreferencedParameters'><code>geometa::ISOGeoreferenceable$setGeoreferencedParameters()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGeoreferenceable" data-id="setOrientationParameterAvailability"><a href='../../geometa/html/ISOGeoreferenceable.html#method-ISOGeoreferenceable-setOrientationParameterAvailability'><code>geometa::ISOGeoreferenceable$setOrientationParameterAvailability()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOGeoreferenceable" data-id="setOrientationParameterDescription"><a href='../../geometa/html/ISOGeoreferenceable.html#method-ISOGeoreferenceable-setOrientationParameterDescription'><code>geometa::ISOGeoreferenceable$setOrientationParameterDescription()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryGeoreferenceable-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryGeoreferenceable-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryGeoreferenceable$new(xml = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{object of class \link[XML]{XMLInternalNode-class}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryGeoreferenceable-addGeolocationInformation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryGeoreferenceable-addGeolocationInformation}{}}}
\subsection{Method \code{addGeolocationInformation()}}{
Adds geolocation information
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryGeoreferenceable$addGeolocationInformation(geolocationInfo)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{geolocationInfo}}{object of class inheriting \link{ISOImageryAbstractGeolocationInformation}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryGeoreferenceable-delGeolocationInformation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryGeoreferenceable-delGeolocationInformation}{}}}
\subsection{Method \code{delGeolocationInformation()}}{
Deletes geolocation information
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryGeoreferenceable$delGeolocationInformation(geolocationInfo)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{geolocationInfo}}{object of class inheriting \link{ISOImageryAbstractGeolocationInformation}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryGeoreferenceable-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryGeoreferenceable-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryGeoreferenceable$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
