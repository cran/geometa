% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOImageryBand.R
\docType{class}
\name{ISOImageryBand}
\alias{ISOImageryBand}
\title{ISOImageryBand}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO imagery band
}
\description{
ISOImageryBand
}
\section{Fields}{

\describe{
\item{\code{bandBoundaryDefinition}}{[\code{\link{ISOImageryBandDefinition}}]}

\item{\code{nominalSpatialResolution}}{[\code{\link{numeric}}]}

\item{\code{transferFunctionType}}{[\code{\link{ISOImageryTransferFunctionType}}]}

\item{\code{transmittedPolarisation}}{[\code{\link{ISOImageryPolarisationOrientation}}]}

\item{\code{detectedPolarisation}}{[\code{\link{ISOImageryPolarisationOrientation}}]}
}}

\section{Methods}{

\describe{
 \item{\code{new(xml)}}{
   This method is used to instantiate an \code{\link{ISOImageryBand}}
 }
 \item{\code{setBandBoundaryDefinition(definition)}}{
   Set the band boundary definition, object of class \code{\link{ISOImageryBandDefinition}}
   or \code{character} among values available by \code{ISOImageryBandDefinition$values()}
 }
 \item{\code{setNominalSpatialResolution(resolution)}}{
   Set the nominal spatial reosolution, object of class \code{numeric}
 }
 \item{\code{setTransmittedPolarisation(polarisation)}}{
   Set the transmitted polarisation, object of class \code{\link{ISOImageryPolarisationOrientation}}
   or \code{character} among values returned by \code{ISOImageryPolarisationOrientation$values()}
 }
 \item{\code{setDetectedPolarisation(polarisation)}}{
   Set the detected polarisation, object of class \code{\link{ISOImageryPolarisationOrientation}}
   or \code{character} among values returned by \code{ISOImageryPolarisationOrientation$values()}
 }
}
}

\section{Methods inherited from \code{\link{ISOBand}}}{

\describe{
 \item{\code{setMaxValue(maxValue)}}{
   Sets the maximum value
 }
 \item{\code{setMinValue(minValue)}}{
   Sets the minimum value
 }
 \item{\code{setUnits(units)}}{
   Sets the unit, object of class \code{\link{GMLUnitDefinition}}
 }
 \item{\code{setPeakResponse(peakResponse)}}{
   Sets the peak response
 }
 \item{\code{setBitsPerValue(bitsPerValue)}}{
   Sets the bits per value
 }
 \item{\code{setToneGradation}}{
   Sets the tone gradation
 }
 \item{\code{setScaleFactor(scaleFactor)}}{
   Sets the scale factor
 }
 \item{\code{setOffset(offset)}}{
   Sets the offset
 }
}
}

\examples{
   #create band range dimension
   md <- ISOImageryBand$new()
   md$setSequenceIdentifier(ISOMemberName$new(aName = "name", attributeType = "type"))
   md$setDescriptor("descriptor")
   md$setMaxValue(10)
   md$setMinValue(1)
   gml <- GMLBaseUnit$new(id = "ID")
   gml$setDescriptionReference("someref")
   gml$setIdentifier("identifier", "codespace")
   gml$addName("name1", "codespace")
   gml$addName("name2", "codespace")
   gml$setQuantityTypeReference("someref")
   gml$setCatalogSymbol("symbol")
   gml$setUnitsSystem("somelink")
   md$setUnits(gml)
   md$setPeakResponse(9)
   md$setBitsPerValue(5)
   md$setToneGradation(100)
   md$setScaleFactor(1)
   md$setOffset(4)
   
   md$setBandBoundaryDefinition("fiftyPercent")
   md$setNominalSpatialResolution(14.5)
   md$setTransferFunctionType("linear")
   md$setTransmittedPolarisation("horizontal")
   md$setDetectedPolarisation("horizontal")
   
   xml <- md$encode()

}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{band}
\keyword{imagery}
