% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOFeatureOperation.R
\docType{class}
\name{ISOFeatureOperation}
\alias{ISOFeatureOperation}
\title{ISOFeatureOperation}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISOFeatureOperation
}
\description{
ISOFeatureOperation

ISOFeatureOperation
}
\examples{
  md <- ISOFeatureOperation$new()
  md$setMemberName("name")
  md$setDefinition("definition")
  md$setCardinality(lower=1,upper=1)
  md$setSignature("signature")
  md$setFormalDefinition("def")
 
}
\references{
ISO 19110:2005 Methodology for Feature cataloguing
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{feature}
\keyword{operation}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{\link[geometa:ISOAbstractCarrierOfCharacteristics]{geometa::ISOAbstractCarrierOfCharacteristics}} -> \code{\link[geometa:ISOAbstractPropertyType]{geometa::ISOAbstractPropertyType}} -> \code{\link[geometa:ISOPropertyType]{geometa::ISOPropertyType}} -> \code{ISOFeatureOperation}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{signature}}{signature: character}

\item{\code{formalDefinition}}{formalDefinition [0..1]: character}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOFeatureOperation-new}{\code{ISOFeatureOperation$new()}}
\item \href{#method-ISOFeatureOperation-setSignature}{\code{ISOFeatureOperation$setSignature()}}
\item \href{#method-ISOFeatureOperation-setFormalDefinition}{\code{ISOFeatureOperation$setFormalDefinition()}}
\item \href{#method-ISOFeatureOperation-clone}{\code{ISOFeatureOperation$clone()}}
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
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractCarrierOfCharacteristics" data-id="addConstraint"><a href='../../geometa/html/ISOAbstractCarrierOfCharacteristics.html#method-ISOAbstractCarrierOfCharacteristics-addConstraint'><code>geometa::ISOAbstractCarrierOfCharacteristics$addConstraint()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractCarrierOfCharacteristics" data-id="delConstraint"><a href='../../geometa/html/ISOAbstractCarrierOfCharacteristics.html#method-ISOAbstractCarrierOfCharacteristics-delConstraint'><code>geometa::ISOAbstractCarrierOfCharacteristics$delConstraint()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractCarrierOfCharacteristics" data-id="setFeatureType"><a href='../../geometa/html/ISOAbstractCarrierOfCharacteristics.html#method-ISOAbstractCarrierOfCharacteristics-setFeatureType'><code>geometa::ISOAbstractCarrierOfCharacteristics$setFeatureType()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractPropertyType" data-id="setCardinality"><a href='../../geometa/html/ISOAbstractPropertyType.html#method-ISOAbstractPropertyType-setCardinality'><code>geometa::ISOAbstractPropertyType$setCardinality()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractPropertyType" data-id="setDefinition"><a href='../../geometa/html/ISOAbstractPropertyType.html#method-ISOAbstractPropertyType-setDefinition'><code>geometa::ISOAbstractPropertyType$setDefinition()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractPropertyType" data-id="setDefinitionReference"><a href='../../geometa/html/ISOAbstractPropertyType.html#method-ISOAbstractPropertyType-setDefinitionReference'><code>geometa::ISOAbstractPropertyType$setDefinitionReference()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractPropertyType" data-id="setDesignation"><a href='../../geometa/html/ISOAbstractPropertyType.html#method-ISOAbstractPropertyType-setDesignation'><code>geometa::ISOAbstractPropertyType$setDesignation()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractPropertyType" data-id="setFeatureCatalogue"><a href='../../geometa/html/ISOAbstractPropertyType.html#method-ISOAbstractPropertyType-setFeatureCatalogue'><code>geometa::ISOAbstractPropertyType$setFeatureCatalogue()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geometa" data-topic="ISOAbstractPropertyType" data-id="setMemberName"><a href='../../geometa/html/ISOAbstractPropertyType.html#method-ISOAbstractPropertyType-setMemberName'><code>geometa::ISOAbstractPropertyType$setMemberName()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOFeatureOperation-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOFeatureOperation-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOFeatureOperation$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOFeatureOperation-setSignature"></a>}}
\if{latex}{\out{\hypertarget{method-ISOFeatureOperation-setSignature}{}}}
\subsection{Method \code{setSignature()}}{
Set signature
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOFeatureOperation$setSignature(signature, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{signature}}{signature}

\item{\code{locales}}{list of localized signatures. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOFeatureOperation-setFormalDefinition"></a>}}
\if{latex}{\out{\hypertarget{method-ISOFeatureOperation-setFormalDefinition}{}}}
\subsection{Method \code{setFormalDefinition()}}{
Set formal definition
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOFeatureOperation$setFormalDefinition(formalDefinition, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{formalDefinition}}{formal definition}

\item{\code{locales}}{list of localized definitions. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOFeatureOperation-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOFeatureOperation-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOFeatureOperation$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
