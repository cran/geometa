% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOAbstractObject.R
\name{getISOClasses}
\alias{getISOClasses}
\title{getISOClasses}
\usage{
getISOClasses()
}
\description{
get the list of ISO classes, ie classes extending \link{ISOAbstractObject} super class,
including classes eventually defined outside \pkg{geometa}. In case the latter is on the search path,
the list of ISO classes will be cached for optimized used by \pkg{geometa} encoder/decoder.
}
\examples{
            
  getISOClasses()

}
\author{
Emmanuel Blondel, \email{emmanuel.blondel1@gmail.com}
}
