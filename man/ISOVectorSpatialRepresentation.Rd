% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOVectorSpatialRepresentation.R
\docType{class}
\name{ISOVectorSpatialRepresentation}
\alias{ISOVectorSpatialRepresentation}
\title{ISOVectorSpatialRepresentation}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an ISO VectorSpatialRepresentation
}
\description{
ISOVectorSpatialRepresentation
}
\section{Fields}{

\describe{
\item{\code{topologyLevel}}{[\code{\link{character}}] the topologic level}

\item{\code{geometricObjects}}{[\code{\link{ISOGeometricObjects}}] giving type and number of geometries}
}}

\section{Methods}{

\describe{
 \item{\code{new(xml)}}{
   This method is used to instantiate an \code{\link{ISOVectorSpatialRepresentation}}
 }
 \item{\code{setTopologyLevel(topologyLevel)}}{
   Sets the topology level, object of class \code{\link{character}} or \code{\link{ISOTopologyLevel}}.
   Recommended values among those listed by \code{ISOTopologyLevel$values()}.
 }
 \item{\code{addGeometricObject(geometricObjects)}}{
   Adds the geometricObjects, object of class \code{\link{ISOGeometricObjects}}
 }
 \item{\code{setGeometricObject(geometricObjects)}}{
   Sets the geometricObjects, object of class \code{\link{ISOGeometricObjects}}
 }
 \item{\code{delGeometricObject(geometricObjects)}}{
   Deletes the geometricObjects, object of class \code{\link{ISOGeometricObjects}}
 }
}
}

\examples{
  md <- ISOVectorSpatialRepresentation$new()
  md$setTopologyLevel("geometryOnly")
  geomObject1 <- ISOGeometricObjects$new()
  geomObject1$setGeometricObjectType("surface")
  geomObject1$setGeometricObjectCount(5L)
  md$addGeometricObjects(geomObject1)
  xml <- md$encode()
  
}
\references{
ISO 19115:2003 - Geographic information -- Metadata
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ISO}
\keyword{address}
