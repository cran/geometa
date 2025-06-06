% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOExtendedElementInformation.R
\docType{class}
\name{ISOExtendedElementInformation}
\alias{ISOExtendedElementInformation}
\title{ISOExtendedElementInformation}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} for modelling an ISO ExtendedElementInformation
}
\description{
ISOExtendedElementInformation

ISOExtendedElementInformation
}
\examples{
  md <- ISOExtendedElementInformation$new()
  md$setName("name")
  md$setShortName("shortName")
  md$setDomainCode(1L)
  md$setDefinition("some definition")
  md$setObligation("mandatory")
  md$setCondition("no condition")
  md$setDatatype("characterString")
  md$setMaximumOccurrence("string")
  md$setDomainValue("value")
  md$addParentEntity("none")
  md$setRule("rule")
  md$addRationale("rationale")
  
  #adding a source
  rp <- ISOResponsibleParty$new()
  rp$setIndividualName("someone")
  rp$setOrganisationName("somewhere")
  rp$setPositionName("someposition")
  rp$setRole("pointOfContact")
  contact <- ISOContact$new()
  phone <- ISOTelephone$new()
  phone$setVoice("myphonenumber")
  phone$setFacsimile("myfacsimile")
  contact$setPhone(phone)
  address <- ISOAddress$new()
  address$setDeliveryPoint("theaddress")
  address$setCity("thecity")
  address$setPostalCode("111")
  address$setCountry("France")
  address$setEmail("someone@theorg.org")
  contact$setAddress(address)
  res <- ISOOnlineResource$new()
  res$setLinkage("http://www.somewhereovertheweb.org")
  res$setName("somename")
  contact$setOnlineResource(res)
  rp$setContactInfo(contact)
  
  md$addSource(rp)
  
  xml <- md$encode()
  
}
\references{
ISO 19115:2003 - Geographic information -- Metadata
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{element}
\keyword{extended}
\keyword{information}
\section{Super classes}{
\code{\link[geometa:geometaLogger]{geometa::geometaLogger}} -> \code{\link[geometa:ISOAbstractObject]{geometa::ISOAbstractObject}} -> \code{ISOExtendedElementInformation}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{name [1..1]: character}

\item{\code{shortName}}{shortName [0..1]: character}

\item{\code{domainCode}}{domainCode [0..1]: integer}

\item{\code{definition}}{definition [1..1]: character}

\item{\code{obligation}}{obligation [0..1]: ISOObligation}

\item{\code{condition}}{condition [0..1]: character}

\item{\code{dataType}}{dataType [1..1]: ISODatatype}

\item{\code{maximumOccurrence}}{maximumOccurrence [0..1]: character}

\item{\code{domainValue}}{domainValue [0..1]: character}

\item{\code{parentEntity}}{parentEntity [1..*]: character}

\item{\code{rule}}{rule [1..1]: character}

\item{\code{rationale}}{rationale [0..*]: character}

\item{\code{source}}{source [1..*]: ISOResponsibleParty}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ISOExtendedElementInformation-new}{\code{ISOExtendedElementInformation$new()}}
\item \href{#method-ISOExtendedElementInformation-setName}{\code{ISOExtendedElementInformation$setName()}}
\item \href{#method-ISOExtendedElementInformation-setShortName}{\code{ISOExtendedElementInformation$setShortName()}}
\item \href{#method-ISOExtendedElementInformation-setDomainCode}{\code{ISOExtendedElementInformation$setDomainCode()}}
\item \href{#method-ISOExtendedElementInformation-setDefinition}{\code{ISOExtendedElementInformation$setDefinition()}}
\item \href{#method-ISOExtendedElementInformation-setObligation}{\code{ISOExtendedElementInformation$setObligation()}}
\item \href{#method-ISOExtendedElementInformation-setCondition}{\code{ISOExtendedElementInformation$setCondition()}}
\item \href{#method-ISOExtendedElementInformation-setDatatype}{\code{ISOExtendedElementInformation$setDatatype()}}
\item \href{#method-ISOExtendedElementInformation-setMaximumOccurrence}{\code{ISOExtendedElementInformation$setMaximumOccurrence()}}
\item \href{#method-ISOExtendedElementInformation-setDomainValue}{\code{ISOExtendedElementInformation$setDomainValue()}}
\item \href{#method-ISOExtendedElementInformation-addParentEntity}{\code{ISOExtendedElementInformation$addParentEntity()}}
\item \href{#method-ISOExtendedElementInformation-delParentEntity}{\code{ISOExtendedElementInformation$delParentEntity()}}
\item \href{#method-ISOExtendedElementInformation-setRule}{\code{ISOExtendedElementInformation$setRule()}}
\item \href{#method-ISOExtendedElementInformation-addRationale}{\code{ISOExtendedElementInformation$addRationale()}}
\item \href{#method-ISOExtendedElementInformation-delRationale}{\code{ISOExtendedElementInformation$delRationale()}}
\item \href{#method-ISOExtendedElementInformation-addSource}{\code{ISOExtendedElementInformation$addSource()}}
\item \href{#method-ISOExtendedElementInformation-delSource}{\code{ISOExtendedElementInformation$delSource()}}
\item \href{#method-ISOExtendedElementInformation-clone}{\code{ISOExtendedElementInformation$clone()}}
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
\if{html}{\out{<a id="method-ISOExtendedElementInformation-new"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-new}{}}}
\subsection{Method \code{new()}}{
Initializes object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setName"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setName}{}}}
\subsection{Method \code{setName()}}{
Set name
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setName(name, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{name}

\item{\code{locales}}{list of localized names. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setShortName"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setShortName}{}}}
\subsection{Method \code{setShortName()}}{
Set short name
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setShortName(shortName, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{shortName}}{short name}

\item{\code{locales}}{list of localized short names. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setDomainCode"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setDomainCode}{}}}
\subsection{Method \code{setDomainCode()}}{
Set domain code
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setDomainCode(domainCode)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{domainCode}}{domain code, object of class \link{integer}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setDefinition"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setDefinition}{}}}
\subsection{Method \code{setDefinition()}}{
Set definition
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setDefinition(definition, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{definition}}{definition}

\item{\code{locales}}{list of localized definitions. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setObligation"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setObligation}{}}}
\subsection{Method \code{setObligation()}}{
Set obligation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setObligation(obligation)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{obligation}}{obligation, object of class \link{ISOObligation} or any \link{character}
value among those returned by \code{ISOObligation$values()}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setCondition"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setCondition}{}}}
\subsection{Method \code{setCondition()}}{
Set condition
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setCondition(condition, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{condition}}{condition}

\item{\code{locales}}{list of localized conditions. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setDatatype"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setDatatype}{}}}
\subsection{Method \code{setDatatype()}}{
Set data type
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setDatatype(dataType)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataType}}{data type, object of class \link{ISODatatype} or any \link{character}
value among those returned by \code{ISODatatype$values()}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setMaximumOccurrence"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setMaximumOccurrence}{}}}
\subsection{Method \code{setMaximumOccurrence()}}{
Set maximum occurrence
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setMaximumOccurrence(maximumOccurrence)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{maximumOccurrence}}{max occurrence}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setDomainValue"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setDomainValue}{}}}
\subsection{Method \code{setDomainValue()}}{
Set domain value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setDomainValue(domainValue)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{domainValue}}{domain value}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-addParentEntity"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-addParentEntity}{}}}
\subsection{Method \code{addParentEntity()}}{
Adds parent entity
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$addParentEntity(entity)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{entity}}{parent entity}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-delParentEntity"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-delParentEntity}{}}}
\subsection{Method \code{delParentEntity()}}{
Deletes parent entity
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$delParentEntity(entity)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{entity}}{parent entity}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-setRule"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-setRule}{}}}
\subsection{Method \code{setRule()}}{
Set rule
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$setRule(rule, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{rule}}{rule}

\item{\code{locales}}{list of localized rules. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-addRationale"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-addRationale}{}}}
\subsection{Method \code{addRationale()}}{
Adds rationale
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$addRationale(rationale, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{rationale}}{rationale}

\item{\code{locales}}{list of localized rationales. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-delRationale"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-delRationale}{}}}
\subsection{Method \code{delRationale()}}{
Deletes rationale
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$delRationale(rationale, locales = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{rationale}}{rationale}

\item{\code{locales}}{list of localized rationales. Default is \code{NULL}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-addSource"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-addSource}{}}}
\subsection{Method \code{addSource()}}{
Adds source
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$addSource(source)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{source}}{source, object of class \link{ISOResponsibleParty}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if added, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-delSource"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-delSource}{}}}
\subsection{Method \code{delSource()}}{
Deletes source
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$delSource(source)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{source}}{source, object of class \link{ISOResponsibleParty}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE} if deleted, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ISOExtendedElementInformation-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ISOExtendedElementInformation-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ISOExtendedElementInformation$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
