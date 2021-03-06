% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOClassification.R
\docType{class}
\name{ISOClassification}
\alias{ISOClassification}
\title{ISOClassification}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO Classification
}
\description{
ISOClassification
}
\section{Methods}{

\describe{
 \item{\code{new(xml,value, description)}}{
   This method is used to instantiate an \code{\link{ISOClassification}}
 }
}
}

\examples{
 #possible values
 values <- ISOClassification$values(labels = TRUE)
 
 #restricted classification
 cl <- ISOClassification$new(value = "restricted")
 
}
\references{
ISO 19115:2003 - Geographic information -- Metadata
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{Classification}
\keyword{ISO}
