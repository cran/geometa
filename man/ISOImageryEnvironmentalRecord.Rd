% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOImageryEnvironmentalRecord.R
\docType{class}
\name{ISOImageryEnvironmentalRecord}
\alias{ISOImageryEnvironmentalRecord}
\title{ISOImageryEnvironmentalRecord}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISO imagery environmental record
}
\description{
ISOImageryEnvironmentalRecord

ISOImageryEnvironmentalRecord
}
\examples{
   md <- ISOImageryEnvironmentalRecord$new()
   md$setAverageAirTemperature(3)
   md$setMaxRelativeHumidity(67)
   md$setMaxAltitude(400)
   md$setMeterologicalConditions("some conditions")
   xml <- md$encode()

}
\references{
- 19139 \url{https://schemas.isotc211.org/19115/-2/gmi/1.0/gmi/#element_MI_EnvironmentalRecord}
  
  - 19115-3 \url{https://schemas.isotc211.org/19115/-3/mac/2.0/mac/#element_MI_EnvironmentalRecord}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{environmental}
\keyword{imagery}
\keyword{record}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{ISOImageryEnvironmentalRecord}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{averageAirTemperature}}{averageAirTemperature}

\item{\code{maxRelativeHumidity}}{maxRelativeHumidity}

\item{\code{maxAltitude}}{maxAltitude}

\item{\code{meterologicalConditions}}{meterologicalConditions}

\item{\code{solarAzimuth}}{solarAzimuth}

\item{\code{solarElevation}}{solarElevation}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOImageryEnvironmentalRecord-new}{\code{ISOImageryEnvironmentalRecord$new()}}
\item \href{#method-ISOImageryEnvironmentalRecord-setAverageAirTemperature}{\code{ISOImageryEnvironmentalRecord$setAverageAirTemperature()}}
\item \href{#method-ISOImageryEnvironmentalRecord-setMaxRelativeHumidity}{\code{ISOImageryEnvironmentalRecord$setMaxRelativeHumidity()}}
\item \href{#method-ISOImageryEnvironmentalRecord-setMaxAltitude}{\code{ISOImageryEnvironmentalRecord$setMaxAltitude()}}
\item \href{#method-ISOImageryEnvironmentalRecord-setMeterologicalConditions}{\code{ISOImageryEnvironmentalRecord$setMeterologicalConditions()}}
\item \href{#method-ISOImageryEnvironmentalRecord-setSolarAzimuth}{\code{ISOImageryEnvironmentalRecord$setSolarAzimuth()}}
\item \href{#method-ISOImageryEnvironmentalRecord-setSolarElevation}{\code{ISOImageryEnvironmentalRecord$setSolarElevation()}}
\item \href{#method-ISOImageryEnvironmentalRecord-clone}{\code{ISOImageryEnvironmentalRecord$clone()}}
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
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-setAverageAirTemperature"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-setAverageAirTemperature}{}}}
\subsection{Method \code{setAverageAirTemperature()}}{
Set average air temperature
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$setAverageAirTemperature(temperature)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{temperature}}{object of class \link{numeric}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-setMaxRelativeHumidity"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-setMaxRelativeHumidity}{}}}
\subsection{Method \code{setMaxRelativeHumidity()}}{
Set max relative humidity
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$setMaxRelativeHumidity(humidity)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{humidity}}{object of class \link{numeric}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-setMaxAltitude"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-setMaxAltitude}{}}}
\subsection{Method \code{setMaxAltitude()}}{
Set max altitude
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$setMaxAltitude(altitude)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{altitude}}{object of class \link{numeric}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-setMeterologicalConditions"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-setMeterologicalConditions}{}}}
\subsection{Method \code{setMeterologicalConditions()}}{
Set meterological conditions
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$setMeterologicalConditions(
  conditions,
  locales = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{conditions}}{conditions}

\item{\code{locales}}{list of localized texts. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-setSolarAzimuth"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-setSolarAzimuth}{}}}
\subsection{Method \code{setSolarAzimuth()}}{
Set solar azimuth
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$setSolarAzimuth(solarAzimuth)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{solarAzimuth}}{object of class \link{numeric}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-setSolarElevation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-setSolarElevation}{}}}
\subsection{Method \code{setSolarElevation()}}{
Set solar elevation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$setSolarElevation(solarElevation)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{solarElevation}}{object of class \link{numeric}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryEnvironmentalRecord-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryEnvironmentalRecord-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryEnvironmentalRecord$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
