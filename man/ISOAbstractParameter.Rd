% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOAbstractParameter.R
\docType{class}
\name{ISOAbstractParameter}
\alias{ISOAbstractParameter}
\title{ISOAbstractParameter}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISO abstract parameter
}
\description{
ISOAbstractParameter

ISOAbstractParameter
}
\references{
- ISO 19115-3 \url{https://schemas.isotc211.org/19115/-3/mcc/1.0/mcc/#element_Abstract_Parameter}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{abstract}
\keyword{parameter}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{ISOAbstractParameter}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{name [1..1]: character|ISOMemberName}

\item{\code{direction}}{direction [0..1]: ISOParameterDirection}

\item{\code{description}}{description [0..1]: character}

\item{\code{optionality}}{optionality [1..1]: logical}

\item{\code{repeatability}}{repeatability [1..1]: logical}

\item{\code{valueType}}{valueType [1..1]: ISORecordType}

\item{\code{value}}{value [0..*] : ISORecord}

\item{\code{resource}}{resource [0..*] : ISOSource}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOAbstractParameter-new}{\code{ISOAbstractParameter$new()}}
\item \href{#method-ISOAbstractParameter-setName}{\code{ISOAbstractParameter$setName()}}
\item \href{#method-ISOAbstractParameter-setDirection}{\code{ISOAbstractParameter$setDirection()}}
\item \href{#method-ISOAbstractParameter-setDescription}{\code{ISOAbstractParameter$setDescription()}}
\item \href{#method-ISOAbstractParameter-setOptionality}{\code{ISOAbstractParameter$setOptionality()}}
\item \href{#method-ISOAbstractParameter-setRepeatability}{\code{ISOAbstractParameter$setRepeatability()}}
\item \href{#method-ISOAbstractParameter-setValueType}{\code{ISOAbstractParameter$setValueType()}}
\item \href{#method-ISOAbstractParameter-addValue}{\code{ISOAbstractParameter$addValue()}}
\item \href{#method-ISOAbstractParameter-delValue}{\code{ISOAbstractParameter$delValue()}}
\item \href{#method-ISOAbstractParameter-addResource}{\code{ISOAbstractParameter$addResource()}}
\item \href{#method-ISOAbstractParameter-delResource}{\code{ISOAbstractParameter$delResource()}}
\item \href{#method-ISOAbstractParameter-clone}{\code{ISOAbstractParameter$clone()}}
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
\if{html}{\out{<a id="method-ISOAbstractParameter-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOAbstractParameter-setName"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-setName}{}}}
\subsection{Method \code{setName()}}{
Set name
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$setName(name, attributeType, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{name}

\item{\code{attributeType}}{attribute type}

\item{\code{locales}}{list of localized texts. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-setDirection"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-setDirection}{}}}
\subsection{Method \code{setDirection()}}{
Set direction
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$setDirection(direction)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{direction}}{object of class \link{ISOParameterDirection} or \link{character}
among values returned by \code{ISOParameterDirection$values()}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-setDescription"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-setDescription}{}}}
\subsection{Method \code{setDescription()}}{
Set description
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$setDescription(description, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{description}}{description}

\item{\code{locales}}{list of localized texts. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-setOptionality"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-setOptionality}{}}}
\subsection{Method \code{setOptionality()}}{
Set optionality
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$setOptionality(optional)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{optional}}{object of class \link{logical}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-setRepeatability"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-setRepeatability}{}}}
\subsection{Method \code{setRepeatability()}}{
Set repeatability
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$setRepeatability(repeatable)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{repeatable}}{object of class \link{logical}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-setValueType"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-setValueType}{}}}
\subsection{Method \code{setValueType()}}{
Set value type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$setValueType(valueType)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{valueType}}{object of class \link{ISORecordType}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-addValue"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-addValue}{}}}
\subsection{Method \code{addValue()}}{
Adds value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$addValue(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{object of class \link{ISORecord}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-delValue"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-delValue}{}}}
\subsection{Method \code{delValue()}}{
Deletes value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$delValue(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{object of class \link{ISORecord}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-addResource"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-addResource}{}}}
\subsection{Method \code{addResource()}}{
Adds resource
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$addResource(resource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{resource}}{object of class \link{ISOSource}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-delResource"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-delResource}{}}}
\subsection{Method \code{delResource()}}{
Deletes resource
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$delResource(resource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{resource}}{object of class \link{ISOSource}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOAbstractParameter-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOAbstractParameter-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOAbstractParameter$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
