% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOExtendedElementInformation.R
\docType{class}
\name{ISOExtendedElementInformation}
\alias{ISOExtendedElementInformation}
\title{ISOExtendedElementInformation}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO ExtendedElementInformation
}
\description{
ISOExtendedElementInformation
}
\section{Fields}{

\describe{
\item{\code{name}}{[\code{\link{character}}]}

\item{\code{shortName}}{[\code{\link{character}}]}

\item{\code{domainCode}}{[\code{\link{integer}}]}

\item{\code{definition}}{[\code{\link{character}}]}

\item{\code{obligation}}{[\code{\link{ISOObligation}}]}

\item{\code{condition}}{[\code{\link{character}}]}

\item{\code{dataType}}{[\code{\link{ISODateType}}]}

\item{\code{maximumOccurrence}}{[\code{\link{character}}]}

\item{\code{domainValue}}{[\code{\link{character}}]}

\item{\code{parentEntity}}{[\code{\link{character}}]}

\item{\code{rule}}{[\code{\link{character}}]}

\item{\code{rationale}}{[\code{\link{character}}]}

\item{\code{source}}{[\code{\link{ISOResponsibleParty}}]}
}}

\section{Methods}{

\describe{
 \item{\code{new(xml)}}{
   This method is used to instantiate an \code{\link{ISOExtendedElementInformation}}
 }
 \item{\code{setName(name, locales)}}{
   Sets the element name, object of class \code{Character}. Locale names 
   can be specified as \code{list} with the \code{locales} argument.
 }
 \item{\code{setShortName(shortName, locales)}}{
   Sets the element shortname, object of class \code{character}. Locale names 
   can be specified as \code{list} with the \code{locales} argument.
 }
 \item{\code{setDomainCode(domainCode)}}{
   Sets the element domain code, object of class \code{integer}
 }
 \item{\code{setDefinition(definition, locales)}}{
   Sets the element definition, object of class \code{character}. Locale names 
   can be specified as \code{list} with the \code{locales} argument.
 }
 \item{\code{setObligation(obligation)}}{
   Sets an obligation, as object of class \code{character} or class \code{\link{ISOObligation}}. 
   If an object of class "character" is specified, it must match the accepted
   obligation values \code{ISOObligation$values()}.
 }
 \item{\code{setCondition(condition, locales)}}{
   Sets the element condition, object of class \code{character}. Locale names 
   can be specified as \code{list} with the \code{locales} argument.
 }
 \item{\code{setDatatype(dataType)}}{
   Sets the element datatype, as object of class \code{character} or class \code{\link{ISODatatype}}.
   If an object of class "character" is specified, it must match the accepted
   datatype values \code{ISODatatype$values()}.
 }
 \item{\code{setMaximumOccurrrence(maximumOccurrence)}}{
   Sets the element maximum occurrence, object of class \code{character}
 }
 \item{\code{setDomainValue(domainValue)}}{
   Sets the element domain value, object of class \code{character}
 }
 \item{\code{addParentyEntity(parentEntity)}}{
   Adds a parent Entity, object of class \code{character}
 }
 \item{\code{delParentEntity(parentEntity)}}{
   Deletes a parent Entity, object of class \code{character}
 }
 \item{\code{setRule(rule, locales)}}{
   Sets a rule, object of class \code{character}. Locale names 
   can be specified as \code{list} with the \code{locales} argument.
 }
 \item{addRationale(rationale, locales)}{
   Adds a rationale, object of class \code{character}. Locale names 
   can be specified as \code{list} with the \code{locales} argument.
 }
 \item{delRationale(rationale, locales)}{
   Deletes a rationale, object of class \code{character}. Locale names 
   can be specified as \code{list} with the \code{locales} argument.
   Local names should match those of the keyword to be deleted, otherwise 
   nothing will be deleted.
 }
 \item{addSource(source)}{
   Adds a source, object of class \code{\link{ISOResponsibleParty}}
 }
 \item{delSource(source)}{
   Deletes a source, object of class \code{\link{ISOResponsibleParty}}
 }
}
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
