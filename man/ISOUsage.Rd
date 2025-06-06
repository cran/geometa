% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOUsage.R
\docType{class}
\name{ISOUsage}
\alias{ISOUsage}
\title{ISOUsage}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISO Usage
}
\description{
ISOUsage

ISOUsage
}
\references{
- ISO 19139 \url{https://schemas.isotc211.org/19139/-/gmd/1.0/gmd/#element_MD_Usage}
  
  - ISO 19115-3 \url{https://schemas.isotc211.org/19115/-3/mri/1.0/mri/#element_MD_Usage}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{usage}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{ISOUsage}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{specificUsage}}{specificUsage}

\item{\code{usageDateTime}}{usageDateTime}

\item{\code{userDeterminedLimitations}}{userDeterminedLimitations}

\item{\code{userContactInfo}}{userContactInfo}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOUsage-new}{\code{ISOUsage$new()}}
\item \href{#method-ISOUsage-setSpecificUsage}{\code{ISOUsage$setSpecificUsage()}}
\item \href{#method-ISOUsage-setUsageDateTime}{\code{ISOUsage$setUsageDateTime()}}
\item \href{#method-ISOUsage-setUserDeterminedLimitations}{\code{ISOUsage$setUserDeterminedLimitations()}}
\item \href{#method-ISOUsage-addUserContact}{\code{ISOUsage$addUserContact()}}
\item \href{#method-ISOUsage-delUserContact}{\code{ISOUsage$delUserContact()}}
\item \href{#method-ISOUsage-clone}{\code{ISOUsage$clone()}}
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
\if{html}{\out{<a id="method-ISOUsage-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOUsage-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOUsage$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOUsage-setSpecificUsage"></a>}}
\if{latex}{\out{\hypertarget{method-ISOUsage-setSpecificUsage}{}}}
\subsection{Method \code{setSpecificUsage()}}{
Set specificUsage
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOUsage$setSpecificUsage(specificUsage, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{specificUsage}}{specific usage}

\item{\code{locales}}{list of localized texts. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOUsage-setUsageDateTime"></a>}}
\if{latex}{\out{\hypertarget{method-ISOUsage-setUsageDateTime}{}}}
\subsection{Method \code{setUsageDateTime()}}{
Set usage date time
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOUsage$setUsageDateTime(usageDateTime)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{usageDateTime}}{object of class \link{POSIXct}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOUsage-setUserDeterminedLimitations"></a>}}
\if{latex}{\out{\hypertarget{method-ISOUsage-setUserDeterminedLimitations}{}}}
\subsection{Method \code{setUserDeterminedLimitations()}}{
Set user determined limitations
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOUsage$setUserDeterminedLimitations(
  userDeterminedLimitations,
  locales = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{userDeterminedLimitations}}{user determined limitations}

\item{\code{locales}}{list of localized texts. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOUsage-addUserContact"></a>}}
\if{latex}{\out{\hypertarget{method-ISOUsage-addUserContact}{}}}
\subsection{Method \code{addUserContact()}}{
Adds user contact
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOUsage$addUserContact(contact)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{contact}}{object of class \link{ISOResponsibleParty} (in ISO 19139) 
or \link{ISOAbstractResponsibility} (in ISO 19115-3)}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOUsage-delUserContact"></a>}}
\if{latex}{\out{\hypertarget{method-ISOUsage-delUserContact}{}}}
\subsection{Method \code{delUserContact()}}{
Deletes user contact
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOUsage$delUserContact(contact)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{contact}}{object of class \link{ISOResponsibleParty} (in ISO 19139) 
or \link{ISOAbstractResponsibility} (in ISO 19115-3)}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOUsage-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOUsage-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOUsage$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
