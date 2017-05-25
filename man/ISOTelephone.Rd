% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ISOTelephone.R
\docType{class}
\name{ISOTelephone}
\alias{ISOTelephone}
\title{ISOTelephone}
\format{\code{\link{R6Class}} object.}
\usage{
ISOTelephone
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO Telephone
}
\description{
ISOTelephone
}
\section{Fields}{

\describe{
\item{\code{voice}}{}

\item{\code{facsimile}}{}
}}
\section{Methods}{

\describe{
 \item{\code{new(xml,value)}}{
   This method is used to instantiate an ISOTelephone
 }
}
}
\examples{
md <- ISOTelephone$new()
  md$setVoice("myphonenumber")
  md$setFacsimile("myfacsimile")
  xml <- md$encode()
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{file}
\keyword{identifier}
