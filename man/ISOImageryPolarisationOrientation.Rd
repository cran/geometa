% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOImageryPolarisationOrientation.R
\docType{class}
\name{ISOImageryPolarisationOrientation}
\alias{ISOImageryPolarisationOrientation}
\title{ISOImageryPolarisationOrientation}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO Imagery Polarisation orientation
}
\description{
ISOImageryPolarisationOrientation
}
\section{Methods}{

\describe{
 \item{\code{new(xml,value)}}{
   This method is used to instantiate an \code{\link{ISOImageryPolarisationOrientation}}
 }
}
}

\examples{
  #possible values
  values <- ISOImageryPolarisationOrientation$values(labels = TRUE)
  
  #some def
  h <- ISOImageryPolarisationOrientation$new(value = "horizontal")

}
\references{
ISO 19115-2:2009 - Geographic information -- Metadata Part 2: Extensions for imagery and gridded data
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{Polarisation}
\keyword{imagery}
\keyword{orientation}
