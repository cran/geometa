% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GMLOperationMethod.R
\docType{class}
\name{GMLOperationMethod}
\alias{GMLOperationMethod}
\title{GMLOperationMethod}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an GMLOperationMethod
}
\description{
GMLOperationMethod

GMLOperationMethod
}
\references{
ISO 19136:2007 Geographic Information -- Geographic Markup Language.
  http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=32554 
  
  OGC Geography Markup Language. http://www.opengeospatial.org/standards/gml
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{GML}
\keyword{ISO}
\keyword{method}
\keyword{operation}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{\link[geometa:GMLAbstractObject]{geometa::GMLAbstractObject}} -> \code{\link[geometa:GMLAbstractGML]{geometa::GMLAbstractGML}} -> \code{\link[geometa:GMLDefinition]{geometa::GMLDefinition}} -> \code{GMLOperationMethod}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{formulaCitation}}{[\code{\link{ISOCitation}}]}

\item{\code{formula}}{[\code{\link{GMLElement}}]}

\item{\code{sourceDimensions}}{[\code{\link{GMLElement}}]}

\item{\code{targetDimensions}}{[\code{\link{GMLElement}}]}

\item{\code{parameter}}{[\code{list} of [\code{\link{GMLOperationParameter}} or \code{\link{GMLOperationParameterGroup}}]]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GMLOperationMethod-setFormulaCitation}{\code{GMLOperationMethod$setFormulaCitation()}}
\item \href{#method-GMLOperationMethod-setFormula}{\code{GMLOperationMethod$setFormula()}}
\item \href{#method-GMLOperationMethod-setSourceDimensions}{\code{GMLOperationMethod$setSourceDimensions()}}
\item \href{#method-GMLOperationMethod-setTargetDimensions}{\code{GMLOperationMethod$setTargetDimensions()}}
\item \href{#method-GMLOperationMethod-addParameter}{\code{GMLOperationMethod$addParameter()}}
\item \href{#method-GMLOperationMethod-delParameter}{\code{GMLOperationMethod$delParameter()}}
\item \href{#method-GMLOperationMethod-clone}{\code{GMLOperationMethod$clone()}}
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
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLDefinition" data-id="addRemark"><a href='../../geometa/html/GMLDefinition.html#method-GMLDefinition-addRemark'><code>geometa::GMLDefinition$addRemark()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLDefinition" data-id="delRemark"><a href='../../geometa/html/GMLDefinition.html#method-GMLDefinition-delRemark'><code>geometa::GMLDefinition$delRemark()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="GMLDefinition" data-id="initialize"><a href='../../geometa/html/GMLDefinition.html#method-GMLDefinition-initialize'><code>geometa::GMLDefinition$initialize()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLOperationMethod-setFormulaCitation"></a>}}
\if{latex}{\out{\hypertarget{method-GMLOperationMethod-setFormulaCitation}{}}}
\subsection{Method \code{setFormulaCitation()}}{
Sets the formula citation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLOperationMethod$setFormulaCitation(citation)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{citation}}{object of class \code{ISOCitation}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLOperationMethod-setFormula"></a>}}
\if{latex}{\out{\hypertarget{method-GMLOperationMethod-setFormula}{}}}
\subsection{Method \code{setFormula()}}{
Set formula
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLOperationMethod$setFormula(formula)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{formula}}{formula, object of class \link{character}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLOperationMethod-setSourceDimensions"></a>}}
\if{latex}{\out{\hypertarget{method-GMLOperationMethod-setSourceDimensions}{}}}
\subsection{Method \code{setSourceDimensions()}}{
Set source dimensions
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLOperationMethod$setSourceDimensions(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{value, object of class \link{integer}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLOperationMethod-setTargetDimensions"></a>}}
\if{latex}{\out{\hypertarget{method-GMLOperationMethod-setTargetDimensions}{}}}
\subsection{Method \code{setTargetDimensions()}}{
Set target dimensions
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLOperationMethod$setTargetDimensions(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{value, object of class \link{integer}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLOperationMethod-addParameter"></a>}}
\if{latex}{\out{\hypertarget{method-GMLOperationMethod-addParameter}{}}}
\subsection{Method \code{addParameter()}}{
Adds a parameter
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLOperationMethod$addParameter(param)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{param}}{object of class \link{GMLOperationParameter} or \link{GMLOperationParameterGroup}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLOperationMethod-delParameter"></a>}}
\if{latex}{\out{\hypertarget{method-GMLOperationMethod-delParameter}{}}}
\subsection{Method \code{delParameter()}}{
Deletes a parameter
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLOperationMethod$delParameter(param)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{param}}{object of class \link{GMLOperationParameter} or \link{GMLOperationParameterGroup}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GMLOperationMethod-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GMLOperationMethod-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GMLOperationMethod$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
