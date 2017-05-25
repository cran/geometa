% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ISODigitalTransferOptions.R
\docType{class}
\name{ISODigitalTransferOptions}
\alias{ISODigitalTransferOptions}
\title{ISODigitalTransferOptions}
\format{\code{\link{R6Class}} object.}
\usage{
ISODigitalTransferOptions
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO DigitalTransferOptions
}
\description{
ISODigitalTransferOptions
}
\section{Fields}{

\describe{
\item{\code{onLine}}{}
}}
\section{Methods}{

\describe{
 \item{\code{new(xml,value)}}{
   This method is used to instantiate an ISODigitalTransferOptions
 }
 \item{\code{setUnitsOfDistribution(unit)}}{
   Sets the units of distribution
 }
 \item{\code{setTransferSize(transferSize)}}{
   Sets the transfer Size
 }
 \item{\code{addOnlineResource(onlineResource)}}{
   Adds an object of class \code{ISOOnlineResource}
 }
 \item{\code{setOnlineResource(onlineResource)}}{
   Sets an object of class \code{ISOOnlineResource}
 }
 \item{\code{delOnlineResource(onlineResource)}}{
   Deletes an object of class \code{ISOOnlineResource}
 }
}
}
\examples{
md <- ISODigitalTransferOptions$new()

  or <- ISOOnlineResource$new()
  or$setLinkage("http://somelink")
  or$setName("name")
  or$setDescription("description")
  or$setProtocol("WWW:LINK-1.0-http--link")
  md$addOnlineResource(or)

  xml <- md$encode()
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{distribution}
