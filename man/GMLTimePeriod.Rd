% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GMLTimePeriod.R
\docType{class}
\name{GMLTimePeriod}
\alias{GMLTimePeriod}
\title{GMLTimePeriod}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an GMLTimePeriod
}
\description{
GMLTimePeriod

GMLTimePeriod
}
\examples{
  start <- ISOdate(2000, 1, 12, 12, 59, 45)
  end <- ISOdate(2010, 8, 22, 13, 12, 43)
  md <- GMLTimePeriod$new(beginPosition = start, endPosition = end)
  xml <- md$encode()

}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{period}
\keyword{time}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{\link[geometa:GMLAbstractObject]{geometa::GMLAbstractObject}} -> \code{\link[geometa:GMLAbstractGML]{geometa::GMLAbstractGML}} -> \code{\link[geometa:GMLAbstractTimeObject]{geometa::GMLAbstractTimeObject}} -> \code{\link[geometa:GMLAbstractTimePrimitive]{geometa::GMLAbstractTimePrimitive}} -> \code{\link[geometa:GMLAbstractTimeGeometricPrimitive]{geometa::GMLAbstractTimeGeometricPrimitive}} -> \code{GMLTimePeriod}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{beginPosition}}{beginPosition [1]: 'POSIXct','POSIXt'}

\item{\code{endPosition}}{endPosition [1]: 'POSIXct','POSIXt'}

\item{\code{duration}}{duration [0..1]: character}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GMLTimePeriod-new}{\code{GMLTimePeriod$new()}}
\item \href{#method-GMLTimePeriod-setBeginPosition}{\code{GMLTimePeriod$setBeginPosition()}}
\item \href{#method-GMLTimePeriod-setEndPosition}{\code{GMLTimePeriod$setEndPosition()}}
\item \href{#method-GMLTimePeriod-computeInterval}{\code{GMLTimePeriod$computeInterval()}}
\item \href{#method-GMLTimePeriod-setDuration}{\code{GMLTimePeriod$setDuration()}}
\item \href{#method-GMLTimePeriod-clone}{\code{GMLTimePeriod$clone()}}
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
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLAbstractGML" data-id="addName"><a href='../../geometa/html/GMLAbstractGML.html#method-GMLAbstractGML-addName'><code>geometa::GMLAbstractGML$addName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLAbstractGML" data-id="delName"><a href='../../geometa/html/GMLAbstractGML.html#method-GMLAbstractGML-delName'><code>geometa::GMLAbstractGML$delName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLAbstractGML" data-id="setDescription"><a href='../../geometa/html/GMLAbstractGML.html#method-GMLAbstractGML-setDescription'><code>geometa::GMLAbstractGML$setDescription()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLAbstractGML" data-id="setDescriptionReference"><a href='../../geometa/html/GMLAbstractGML.html#method-GMLAbstractGML-setDescriptionReference'><code>geometa::GMLAbstractGML$setDescriptionReference()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLAbstractGML" data-id="setIdentifier"><a href='../../geometa/html/GMLAbstractGML.html#method-GMLAbstractGML-setIdentifier'><code>geometa::GMLAbstractGML$setIdentifier()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLAbstractTimePrimitive" data-id="addRelatedTime"><a href='../../geometa/html/GMLAbstractTimePrimitive.html#method-GMLAbstractTimePrimitive-addRelatedTime'><code>geometa::GMLAbstractTimePrimitive$addRelatedTime()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLAbstractTimePrimitive" data-id="delRelatedTime"><a href='../../geometa/html/GMLAbstractTimePrimitive.html#method-GMLAbstractTimePrimitive-delRelatedTime'><code>geometa::GMLAbstractTimePrimitive$delRelatedTime()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLTimePeriod-new"></a>}}
\if{latex}{\out{\hypertarget{method-GMLTimePeriod-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLTimePeriod$new(xml = NULL, beginPosition = NULL, endPosition = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{object of class \link[XML]{XMLInternalNode-class}}

\item{\code{beginPosition}}{object of class \link{numeric}, \link{Date} or \link{POSIXct-class}}

\item{\code{endPosition}}{object of class \link{numeric}, \link{Date} or \link{POSIXct-class}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLTimePeriod-setBeginPosition"></a>}}
\if{latex}{\out{\hypertarget{method-GMLTimePeriod-setBeginPosition}{}}}
\subsection{Method \code{setBeginPosition()}}{
Set begin position
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLTimePeriod$setBeginPosition(
  beginPosition = NULL,
  frame = NULL,
  calendarEraName = NULL,
  indeterminatePosition = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{beginPosition}}{object of class \link{numeric}, \link{Date} or \link{POSIXct-class}}

\item{\code{frame}}{frame attribute}

\item{\code{calendarEraName}}{calendarEraName attribute}

\item{\code{indeterminatePosition}}{indeterminatePosition attribute}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLTimePeriod-setEndPosition"></a>}}
\if{latex}{\out{\hypertarget{method-GMLTimePeriod-setEndPosition}{}}}
\subsection{Method \code{setEndPosition()}}{
Set end position
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLTimePeriod$setEndPosition(
  endPosition = NULL,
  frame = NULL,
  calendarEraName = NULL,
  indeterminatePosition = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{endPosition}}{object of class \link{numeric}, \link{Date} or \link{POSIXct-class}}

\item{\code{frame}}{frame attribute}

\item{\code{calendarEraName}}{calendarEraName attribute}

\item{\code{indeterminatePosition}}{indeterminatePosition attribute}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLTimePeriod-computeInterval"></a>}}
\if{latex}{\out{\hypertarget{method-GMLTimePeriod-computeInterval}{}}}
\subsection{Method \code{computeInterval()}}{
Compute interval (ISO defined duration) and set proper attribute for XML encoding. The
method calls the static function \code{GMLTimePeriod$computeISODuration}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLTimePeriod$computeInterval()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLTimePeriod-setDuration"></a>}}
\if{latex}{\out{\hypertarget{method-GMLTimePeriod-setDuration}{}}}
\subsection{Method \code{setDuration()}}{
Set ISO duration
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLTimePeriod$setDuration(
  years = 0,
  months = 0,
  days = 0,
  hours = 0,
  mins = 0,
  secs = 0
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{years}}{years}

\item{\code{months}}{months}

\item{\code{days}}{days}

\item{\code{hours}}{hours}

\item{\code{mins}}{mins}

\item{\code{secs}}{secs}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLTimePeriod-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GMLTimePeriod-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLTimePeriod$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
