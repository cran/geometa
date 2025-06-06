% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISOCodelist.R
\name{registerISOCodelist}
\alias{registerISOCodelist}
\title{registerISOCodelist}
\usage{
registerISOCodelist(refFile, id, version, force)
}
\arguments{
\item{refFile}{ISO XML file handling the ISO codelist}

\item{id}{identifier of the ISO codelist}

\item{version}{the version of the metadata standard}

\item{force}{logical parameter indicating if registration has be to be forced
in case the identified codelist is already registered}
}
\description{
\code{registerISOCodelist} allows to register a new codelist
registered in \pkg{geometa}
}
\examples{
            
  registerISOCodelist(
   refFile = "http://www.isotc211.org/2005/resources/Codelist/ML_gmxCodelists.xml",
   id = "LanguageCode",
   version = "19139",
   force = TRUE
 )

}
\author{
Emmanuel Blondel, \email{emmanuel.blondel1@gmail.com}
}
