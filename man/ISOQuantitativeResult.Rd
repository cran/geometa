% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOQuantitativeResult.R
\docType{class}
\name{ISOQuantitativeResult}
\alias{ISOQuantitativeResult}
\title{ISOQuantitativeResult}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISO QuantitativeResult
}
\description{
ISOQuantitativeResult

ISOQuantitativeResult
}
\examples{
 md <- ISOQuantitativeResult$new()
 xml <- md$encode()
 
}
\references{
- ISO 19139 \url{https://schemas.isotc211.org/19139/-/gmd/1.0/gmd/#element_DQ_QuantitativeResult}
  
  - ISO 19115-3 \url{https://schemas.isotc211.org/19157/-/mdq/1.2/mdq/#element_DQ_QuantitativeResult}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{Quantitative}
\keyword{result}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{\link[geometa:ISOAbstractResult]{geometa::ISOAbstractResult}} -> \code{ISOQuantitativeResult}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{resultScope}}{resultScope [0..1]: ISOScope (=> 19115-3)}

\item{\code{dateTime}}{dateTime [0..1]: POSIX/date (=> 19115-3)}

\item{\code{valueType}}{valueType [0..1]- ISORecordType}

\item{\code{valueUnit}}{valueUnit [1..1]- GMLUnitDefinition}

\item{\code{errorStatistic}}{errorStatistic [0..1]}

\item{\code{value}}{value [1..*]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOQuantitativeResult-new}{\code{ISOQuantitativeResult$new()}}
\item \href{#method-ISOQuantitativeResult-setResultScope}{\code{ISOQuantitativeResult$setResultScope()}}
\item \href{#method-ISOQuantitativeResult-setDateTime}{\code{ISOQuantitativeResult$setDateTime()}}
\item \href{#method-ISOQuantitativeResult-setValueType}{\code{ISOQuantitativeResult$setValueType()}}
\item \href{#method-ISOQuantitativeResult-setValueUnit}{\code{ISOQuantitativeResult$setValueUnit()}}
\item \href{#method-ISOQuantitativeResult-setErrorStatistic}{\code{ISOQuantitativeResult$setErrorStatistic()}}
\item \href{#method-ISOQuantitativeResult-addValue}{\code{ISOQuantitativeResult$addValue()}}
\item \href{#method-ISOQuantitativeResult-delValue}{\code{ISOQuantitativeResult$delValue()}}
\item \href{#method-ISOQuantitativeResult-clone}{\code{ISOQuantitativeResult$clone()}}
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
\if{html}{\out{<a id="method-ISOQuantitativeResult-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOQuantitativeResult-setResultScope"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-setResultScope}{}}}
\subsection{Method \code{setResultScope()}}{
Set result scope
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$setResultScope(scope)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{scope}}{object of class \link{ISOScope}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOQuantitativeResult-setDateTime"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-setDateTime}{}}}
\subsection{Method \code{setDateTime()}}{
Set date time
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$setDateTime(dateTime)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dateTime}}{date time, object of class \link{POSIXct}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOQuantitativeResult-setValueType"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-setValueType}{}}}
\subsection{Method \code{setValueType()}}{
Set value type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$setValueType(valueType)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{valueType}}{object of class \link{ISORecordType} or \link{character}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOQuantitativeResult-setValueUnit"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-setValueUnit}{}}}
\subsection{Method \code{setValueUnit()}}{
Set value unit
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$setValueUnit(valueUnit)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{valueUnit}}{object of class inheriting \link{GMLUnitDefinition}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOQuantitativeResult-setErrorStatistic"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-setErrorStatistic}{}}}
\subsection{Method \code{setErrorStatistic()}}{
Set error statistic
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$setErrorStatistic(errorStatistic)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{errorStatistic}}{error statistic}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOQuantitativeResult-addValue"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-addValue}{}}}
\subsection{Method \code{addValue()}}{
Adds value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$addValue(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{object of class \link{ISORecord} or \link{character}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOQuantitativeResult-delValue"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-delValue}{}}}
\subsection{Method \code{delValue()}}{
Deletes value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$delValue(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{object of class \link{ISORecord} or \link{character}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if delete, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOQuantitativeResult-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOQuantitativeResult-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOQuantitativeResult$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
