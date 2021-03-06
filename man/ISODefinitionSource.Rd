% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISODefinitionSource.R
\docType{class}
\name{ISODefinitionSource}
\alias{ISODefinitionSource}
\title{ISODefinitionSource}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an ISODefinitionSource
}
\description{
ISODefinitionSource
}
\section{Fields}{

\describe{
\item{\code{source}}{[\code{\link{ISOCitation}}] source citation}
}}

\section{Methods}{

\describe{
 \item{\code{new(xml, source)}}{
   This method is used to instantiate an \code{\link{ISODefinitionSource}}
 }
 \item{\code{setSource(source)}}{
   Sets the source as object of class \code{\link{ISOCitation}}
 }
}
}

\references{
ISO 19110:2005 Methodology for Feature cataloguing
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{definition}
\keyword{source}
