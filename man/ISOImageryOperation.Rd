% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOImageryOperation.R
\docType{class}
\name{ISOImageryOperation}
\alias{ISOImageryOperation}
\title{ISOImageryOperation}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISO imagery Operation
}
\description{
ISOImageryOperation

ISOImageryOperation
}
\references{
- 19139 \url{https://schemas.isotc211.org/19115/-2/gmi/1.0/gmi/#element_MI_Operation}
  
  - 19115-3 \url{https://schemas.isotc211.org/19115/-3/mac/2.0/mac/#element_MI_Operation}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{Operation}
\keyword{imagery}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{ISOImageryOperation}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{description}}{description [0..1]: character|ISOLocalisedCharacterString}

\item{\code{citation}}{citation [0..1]: ISOCitation}

\item{\code{identifier}}{identifier [1..1]: ISOMetaIdentifier}

\item{\code{status}}{status [1..1]: ISOStatus}

\item{\code{type}}{type [0..1]: ISOImageryOperationType}

\item{\code{parentOperation}}{parentOperation [1..1]: ISOImageryOperation}

\item{\code{childOperation}}{childOperation [0..*]: ISOImageryOperation}

\item{\code{platform}}{platform [0..*]: ISOImageryPlatform}

\item{\code{objective}}{objective [0..*]: ISOImageryObjective}

\item{\code{plan}}{plan [0..1]: ISOImageryPlan}

\item{\code{significantEvent}}{significantEvent [0..*]: ISOImageryEvent}

\item{\code{otherPropertyType}}{otherPropertyType [0..1] : ISORecordType (=> ISO 19115-3)}

\item{\code{otherProperty}}{otherProperty [0..1] : ISORecord (=> ISO 19115-3)}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOImageryOperation-new}{\code{ISOImageryOperation$new()}}
\item \href{#method-ISOImageryOperation-setDescription}{\code{ISOImageryOperation$setDescription()}}
\item \href{#method-ISOImageryOperation-setCitation}{\code{ISOImageryOperation$setCitation()}}
\item \href{#method-ISOImageryOperation-setIdentifier}{\code{ISOImageryOperation$setIdentifier()}}
\item \href{#method-ISOImageryOperation-setStatus}{\code{ISOImageryOperation$setStatus()}}
\item \href{#method-ISOImageryOperation-setType}{\code{ISOImageryOperation$setType()}}
\item \href{#method-ISOImageryOperation-setParentOperation}{\code{ISOImageryOperation$setParentOperation()}}
\item \href{#method-ISOImageryOperation-addChildOperation}{\code{ISOImageryOperation$addChildOperation()}}
\item \href{#method-ISOImageryOperation-delChildOperation}{\code{ISOImageryOperation$delChildOperation()}}
\item \href{#method-ISOImageryOperation-addPlatform}{\code{ISOImageryOperation$addPlatform()}}
\item \href{#method-ISOImageryOperation-delPlatform}{\code{ISOImageryOperation$delPlatform()}}
\item \href{#method-ISOImageryOperation-addObjective}{\code{ISOImageryOperation$addObjective()}}
\item \href{#method-ISOImageryOperation-delObjective}{\code{ISOImageryOperation$delObjective()}}
\item \href{#method-ISOImageryOperation-setPlan}{\code{ISOImageryOperation$setPlan()}}
\item \href{#method-ISOImageryOperation-addSignificantEvent}{\code{ISOImageryOperation$addSignificantEvent()}}
\item \href{#method-ISOImageryOperation-delSignificantEvent}{\code{ISOImageryOperation$delSignificantEvent()}}
\item \href{#method-ISOImageryOperation-setOtherPropertyType}{\code{ISOImageryOperation$setOtherPropertyType()}}
\item \href{#method-ISOImageryOperation-setOtherProperty}{\code{ISOImageryOperation$setOtherProperty()}}
\item \href{#method-ISOImageryOperation-clone}{\code{ISOImageryOperation$clone()}}
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
\if{html}{\out{<a id="method-ISOImageryOperation-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOImageryOperation-setDescription"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setDescription}{}}}
\subsection{Method \code{setDescription()}}{
Set description
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setDescription(description, locales = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOImageryOperation-setCitation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setCitation}{}}}
\subsection{Method \code{setCitation()}}{
Set citation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setCitation(citation)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{citation}}{object of class \link{ISOCitation}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-setIdentifier"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setIdentifier}{}}}
\subsection{Method \code{setIdentifier()}}{
Set identifier
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setIdentifier(identifier)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{identifier}}{object of class \link{ISOMetaIdentifier} or \link{character}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-setStatus"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setStatus}{}}}
\subsection{Method \code{setStatus()}}{
Set status
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setStatus(status)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{status}}{object of class \link{ISOStatus} or any \link{character}
among values returned by \code{ISOStatus$values()}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-setType"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setType}{}}}
\subsection{Method \code{setType()}}{
Set type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setType(type)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{type}}{object of class \link{ISOImageryOperationType} or any \link{character}
among values returned by \code{ISOImageryOperationType$values()}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-setParentOperation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setParentOperation}{}}}
\subsection{Method \code{setParentOperation()}}{
Set parent operation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setParentOperation(operation)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{operation}}{object of class \link{ISOImageryOperation}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-addChildOperation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-addChildOperation}{}}}
\subsection{Method \code{addChildOperation()}}{
Adds child operation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$addChildOperation(operation)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{operation}}{object of class \link{ISOImageryOperation}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-delChildOperation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-delChildOperation}{}}}
\subsection{Method \code{delChildOperation()}}{
Deletes child operation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$delChildOperation(operation)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{operation}}{object of class \link{ISOImageryOperation}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-addPlatform"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-addPlatform}{}}}
\subsection{Method \code{addPlatform()}}{
Adds platform
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$addPlatform(platform)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{platform}}{object of class \link{ISOImageryPlatform}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-delPlatform"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-delPlatform}{}}}
\subsection{Method \code{delPlatform()}}{
Deletes platform
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$delPlatform(platform)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{platform}}{object of class \link{ISOImageryPlatform}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-addObjective"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-addObjective}{}}}
\subsection{Method \code{addObjective()}}{
Adds objective
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$addObjective(objective)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{objective}}{object of class \link{ISOImageryObjective}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-delObjective"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-delObjective}{}}}
\subsection{Method \code{delObjective()}}{
Deletes objective
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$delObjective(objective)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{objective}}{object of class \link{ISOImageryObjective}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-setPlan"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setPlan}{}}}
\subsection{Method \code{setPlan()}}{
Set plan
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setPlan(plan)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{plan}}{object of class \link{ISOImageryPlan}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-addSignificantEvent"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-addSignificantEvent}{}}}
\subsection{Method \code{addSignificantEvent()}}{
Adds significative event
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$addSignificantEvent(event)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{event}}{object of class \link{ISOImageryEvent}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-delSignificantEvent"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-delSignificantEvent}{}}}
\subsection{Method \code{delSignificantEvent()}}{
Deletes significative event
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$delSignificantEvent(event)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{event}}{object of class \link{ISOImageryEvent}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-setOtherPropertyType"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setOtherPropertyType}{}}}
\subsection{Method \code{setOtherPropertyType()}}{
setOtherPropertyType
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setOtherPropertyType(otherPropertyType)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{otherPropertyType}}{otherPropertyType object of class \link{ISORecordType}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-setOtherProperty"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-setOtherProperty}{}}}
\subsection{Method \code{setOtherProperty()}}{
setOtherProperty
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$setOtherProperty(otherProperty)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{otherProperty}}{otherProperty object of class \link{ISORecord}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOImageryOperation-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOImageryOperation-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOImageryOperation$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
