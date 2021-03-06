% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOTelephone.R
\docType{class}
\name{ISOTelephone}
\alias{ISOTelephone}
\title{ISOTelephone}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO Telephone
}
\description{
ISOTelephone
}
\section{Fields}{

\describe{
\item{\code{voice}}{[\code{\link{character}}] phone number}

\item{\code{facsimile}}{[\code{\link{character}}] facsimile number}
}}

\section{Methods}{

\describe{
 \item{\code{new(xml,value)}}{
   This method is used to instantiate an \code{\link{ISOTelephone}}
 }
 \item{\code{setVoice(voice, locales)}}{
   Set voice phone number. Locale numbers can be specified as \code{list}
   with the \code{locales} argument.
 }
 \item{\code{setFacsimile(voice, locales)}}{
   Set facsimile phone number. Locale numbers can be specified as \code{list}
   with the \code{locales} argument.
 }
}
}

\examples{
  md <- ISOTelephone$new()
  md$setVoice("myphonenumber")
  md$setFacsimile("myfacsimile")
  xml <- md$encode()
  
}
\references{
ISO 19115:2003 - Geographic information -- Metadata
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{file}
\keyword{identifier}
