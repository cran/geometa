#' ISOImageryMetadata
#'
#' @docType class
#' @importFrom R6 R6Class
#' @import XML
#' @export
#' @keywords ISO imagery metadata element
#' @return Object of \code{\link[R6]{R6Class}} for modelling an ISO Imagery Metadata
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @examples
#'     #example 1 - WRITE: Create an ISO metadata and encode it as XML
#'     #######################################################
#'     md = ISOImageryMetadata$new()
#'     md$setFileIdentifier("my-metadata-identifier")
#'     md$setParentIdentifier("my-parent-metadata-identifier")
#'     md$setCharacterSet("utf8")
#'     md$setLanguage("eng")
#'     md$setDateStamp(ISOdate(2015, 1, 1, 1))
#'     md$setMetadataStandardName("ISO 19115:2003/19139")
#'     md$setMetadataStandardVersion("1.0")
#'     md$setDataSetURI("my-dataset-identifier")
#'     
#'     #add 3 contacts
#'     for(i in 1:3){
#'       rp <- ISOResponsibleParty$new()
#'       rp$setIndividualName(paste0("someone",i))
#'       rp$setOrganisationName("somewhere")
#'       rp$setPositionName(paste0("someposition",i))
#'       rp$setRole("pointOfContact")
#'       contact <- ISOContact$new()
#'       phone <- ISOTelephone$new()
#'       phone$setVoice(paste0("myphonenumber",i))
#'       phone$setFacsimile(paste0("myfacsimile",i))
#'       contact$setPhone(phone)
#'       address <- ISOAddress$new()
#'       address$setDeliveryPoint("theaddress")
#'       address$setCity("thecity")
#'       address$setPostalCode("111")
#'       address$setCountry("France")
#'       address$setEmail("someone@@theorg.org")
#'       contact$setAddress(address)
#'       res <- ISOOnlineResource$new()
#'       res$setLinkage("http://somelink")
#'       res$setName("someresourcename")
#'       contact$setOnlineResource(res)
#'       rp$setContactInfo(contact)
#'       md$addContact(rp)
#'    }
#'    
#'    #VectorSpatialRepresentation
#'    vsr <- ISOVectorSpatialRepresentation$new()
#'    vsr$setTopologyLevel("geometryOnly")
#'    geomObject <- ISOGeometricObjects$new()
#'    geomObject$setGeometricObjectType("surface")
#'    geomObject$setGeometricObjectCount(5L)
#'    vsr$addGeometricObjects(geomObject)
#'    md$addSpatialRepresentationInfo(vsr)
#'    
#'    #ReferenceSystem
#'    rs <- ISOReferenceSystem$new()
#'    rsId <- ISOReferenceIdentifier$new(code = "4326", codeSpace = "EPSG")
#'    rs$setReferenceSystemIdentifier(rsId)
#'    md$addReferenceSystemInfo(rs)
#'    
#'    #data identification
#'    ident <- ISODataIdentification$new()
#'    ident$setAbstract("abstract")
#'    ident$setPurpose("purpose")
#'    ident$addCredit("credit1")
#'    ident$addCredit("credit2")
#'    ident$addCredit("credit3")
#'    ident$addStatus("completed")
#'    ident$addLanguage("eng")
#'    ident$addCharacterSet("utf8")
#'    ident$addTopicCategory("biota")
#'    ident$addTopicCategory("oceans")
#'    
#'    #adding a point of contact
#'    rp <- ISOResponsibleParty$new()
#'    rp$setIndividualName("someone")
#'    rp$setOrganisationName("somewhere")
#'    rp$setPositionName("someposition")
#'    rp$setRole("pointOfContact")
#'    contact <- ISOContact$new()
#'    phone <- ISOTelephone$new()
#'    phone$setVoice("myphonenumber")
#'    phone$setFacsimile("myfacsimile")
#'    contact$setPhone(phone)
#'    address <- ISOAddress$new()
#'    address$setDeliveryPoint("theaddress")
#'    address$setCity("thecity")
#'    address$setPostalCode("111")
#'    address$setCountry("France")
#'    address$setEmail("someone@@theorg.org")
#'    contact$setAddress(address)
#'    res <- ISOOnlineResource$new()
#'    res$setLinkage("http://somelink")
#'    res$setName("somename")
#'    contact$setOnlineResource(res)
#'    rp$setContactInfo(contact)
#'    ident$addPointOfContact(rp)
#'    
#'    #citation
#'    ct <- ISOCitation$new()
#'    ct$setTitle("sometitle")
#'    d <- ISODate$new()
#'    d$setDate(ISOdate(2015, 1, 1, 1))
#'    d$setDateType("publication")
#'    ct$addDate(d)
#'    ct$setEdition("1.0")
#'    ct$setEditionDate(as.Date(ISOdate(2015, 1, 1, 1)))
#'    ct$addIdentifier(ISOMetaIdentifier$new(code = "identifier"))
#'    ct$addPresentationForm("mapDigital")
#'    ct$addCitedResponsibleParty(rp)
#'    ident$setCitation(ct)
#'    
#'    #graphic overview
#'    go1 <- ISOBrowseGraphic$new(
#'      fileName = "http://wwww.somefile.org/png1",
#'      fileDescription = "Map Overview 1",
#'      fileType = "image/png"
#'    )
#'    go2 <- ISOBrowseGraphic$new(
#'      fileName = "http://www.somefile.org/png2",
#'      fileDescription = "Map Overview 2",
#'      fileType = "image/png"
#'    )
#'    ident$addGraphicOverview(go1)
#'    ident$addGraphicOverview(go2)
#'    
#'    #maintenance information
#'    mi <- ISOMaintenanceInformation$new()
#'    mi$setMaintenanceFrequency("daily")
#'    ident$addResourceMaintenance(mi)
#'    
#'    #adding legal constraints
#'    lc <- ISOLegalConstraints$new()
#'    lc$addUseLimitation("limitation1")
#'    lc$addUseLimitation("limitation2")
#'    lc$addUseLimitation("limitation3")
#'    lc$addAccessConstraint("copyright")
#'    lc$addAccessConstraint("license")
#'    lc$addUseConstraint("copyright")
#'    lc$addUseConstraint("license")
#'    ident$addResourceConstraints(lc)
#'    
#'    #adding security constraints
#'    sc <- ISOSecurityConstraints$new()
#'    sc$setClassification("secret")
#'    sc$setUserNote("ultra secret")
#'    sc$setClassificationSystem("no classification in particular")
#'    sc$setHandlingDescription("description")
#'    ident$addResourceConstraints(sc)
#'    
#'    #adding extent
#'    extent <- ISOExtent$new()
#'    bbox <- ISOGeographicBoundingBox$new(minx = -180, miny = -90, maxx = 180, maxy = 90)
#'    extent$addGeographicElement(bbox)
#'    ident$addExtent(extent)
#'    
#'    #add keywords
#'    kwds <- ISOKeywords$new()
#'    kwds$addKeyword("keyword1")
#'    kwds$addKeyword("keyword2")
#'    kwds$setKeywordType("theme")
#'    th <- ISOCitation$new()
#'    th$setTitle("General")
#'    th$addDate(d)
#'    kwds$setThesaurusName(th)
#'    ident$addKeywords(kwds)
#'    
#'    #add an INSPIRE spatial data theme?
#'    inspire_kwd <- ISOKeywords$new()
#'    anc1 <- ISOAnchor$new(
#'      name = "Environmental monitoring facilities",
#'      href = "http://inspire.ec.europa.eu/theme/ef"
#'    )
#'    inspire_kwd$addKeyword(anc1)
#'    inspire_kwd$setKeywordType("theme")
#'    th <- ISOCitation$new()
#'    th$setTitle(
#'      ISOAnchor$new(
#'        name = "GEMET - INSPIRE themes, version 1.0",
#'        href="http://www.eionet.europa.eu/gemet/inspire_themes"
#'      )
#'    )
#'    inspire_date <- ISODate$new()
#'    inspire_date$setDate(as.Date("2008-06-01"))
#'    inspire_date$setDateType("publication")
#'    th$addDate(inspire_date)
#'    inspire_kwd$setThesaurusName(th)
#'    ident$addKeywords(inspire_kwd)
#'    
#'    #supplementalInformation
#'    ident$setSupplementalInformation("some additional information")
#'    
#'    #spatial representation type
#'    ident$addSpatialRepresentationType("vector")
#'    
#'    md$addIdentificationInfo(ident)
#'    
#'    #Distribution
#'    distrib <- ISODistribution$new()
#'    dto <- ISODigitalTransferOptions$new()  
#'    for(i in 1:3){
#'      or <- ISOOnlineResource$new()
#'      or$setLinkage(paste0("http://somelink",i))
#'      or$setName(paste0("name",i))
#'      or$setDescription(paste0("description",i))
#'      or$setProtocol("WWW:LINK-1.0-http--link")
#'      dto$addOnlineResource(or)
#'    }
#'    distrib$addDigitalTransferOptions(dto)
#'    md$setDistributionInfo(distrib)
#'    
#'    #create dataQuality object with a 'dataset' scope
#'    dq <- ISODataQuality$new()
#'    scope <- ISODataQualityScope$new()
#'    scope$setLevel("dataset")
#'    dq$setScope(scope)
#'   
#'    #add data quality reports...
#'   
#'    #add a report the data quality
#'    dc <- ISODomainConsistency$new()
#'    result <- ISOConformanceResult$new()
#'    spec <- ISOCitation$new()
#'    spec$setTitle("Data Quality check")
#'    spec$addAlternateTitle("This is is some data quality check report")
#'    d <- ISODate$new()
#'    d$setDate(ISOdate(2015, 1, 1, 1))
#'    d$setDateType("publication")
#'    spec$addDate(d)
#'    result$setSpecification(spec)
#'    result$setExplanation("some explanation about the conformance")
#'    result$setPass(TRUE)
#'    dc$addResult(result)
#'    dq$addReport(dc)
#'   
#'    #add INSPIRE reports?
#'    #INSPIRE - interoperability of spatial data sets and services
#'    dc_inspire1 <- ISODomainConsistency$new()
#'    cr_inspire1 <- ISOConformanceResult$new()
#'    cr_inspire_spec1 <- ISOCitation$new()
#'    cr_title1 <- paste(
#'      "Commission Regulation (EU) No 1089/2010 of 23 November 2010 implementing Directive 2007/2/EC",
#'      "of the European Parliament and of the Council as regards interoperability of spatial data",
#'      "sets and services"
#'    )
#'    cr_inspire_spec1$setTitle(cr_title1)
#'    cr_inspire1$setExplanation("See the referenced specification")
#'    cr_inspire_date1 <- ISODate$new()
#'    cr_inspire_date1$setDate(ISOdate(2010,12,8))
#'    cr_inspire_date1$setDateType("publication")
#'    cr_inspire_spec1$addDate(cr_inspire_date1)
#'    cr_inspire1$setSpecification(cr_inspire_spec1)
#'    cr_inspire1$setPass(TRUE)
#'    dc_inspire1$addResult(cr_inspire1)
#'    dq$addReport(dc_inspire1)
#'    #INSPIRE - metadata
#'    dc_inspire2 <- ISODomainConsistency$new()
#'    cr_inspire2 <- ISOConformanceResult$new()
#'    cr_inspire_spec2 <- ISOCitation$new()
#'    cr_title2 <- paste(
#'      "COMMISSION REGULATION (EC) No 1205/2008 of 3 December 2008 implementing Directive 2007/2/EC",
#'      "of the European Parliament and of the Council as regards metadata"
#'    )
#'    cr_inspire_spec2$setTitle(cr_title2)
#'    cr_inspire2$setExplanation("See the referenced specification")
#'    cr_inspire_date2 <- ISODate$new()
#'    cr_inspire_date2$setDate(ISOdate(2008,12,4))
#'    cr_inspire_date2$setDateType("publication")
#'    cr_inspire_spec2$addDate(cr_inspire_date2)
#'    cr_inspire2$setSpecification(cr_inspire_spec2)
#'    cr_inspire2$setPass(TRUE)
#'    dc_inspire2$addResult(cr_inspire2)
#'    dq$addReport(dc_inspire2)
#'    
#'    #add lineage
#'    lineage <- ISOLineage$new()
#'    lineage$setStatement("statement")
#'    dq$setLineage(lineage)
#'    
#'    md$addDataQualityInfo(dq)
#'    
#'    #Content Information
#'    #-------------------------
#'    #add a feature catalogue description
#'    fcd <- ISOFeatureCatalogueDescription$new()
#'    fcd$setComplianceCode(FALSE)
#'    fcd$addLanguage("eng")
#'    fcd$setIncludedWithDataset(FALSE)
#'    cit = ISOCitation$new()
#'    cit$setTitle("sometitle")
#'    d <- ISODate$new()
#'    d$setDate(ISOdate(2015, 1, 1, 1))
#'    d$setDateType("publication")
#'    cit$addDate(d)
#'    cit$setEdition("1.0")
#'    cit$setEditionDate(as.Date(ISOdate(2015, 1, 1, 1)))
#'    contact = ISOContact$new()
#'    fcLink <- ISOOnlineResource$new()
#'    fcLink$setLinkage("http://somelink/featurecatalogue")
#'    contact$setOnlineResource(fcLink)
#'    rp = ISOResponsibleParty$new()
#'    rp$setRole("publisher")
#'    rp$setContactInfo(contact)
#'    cit$addCitedResponsibleParty(rp)
#'    fcd$addFeatureCatalogueCitation(cit)
#'    md$addContentInfo(fcd)
#'    
#'    #XML representation of the ISOImageryMetadata
#'    xml <- md$encode()
#'    
#'    #example 2 - READ: Create an ISO imagery metadata reading from XML
#'    ######################################################
#'    \donttest{
#'    require(XML)
#'    xmlfile <- system.file("extdata/examples", "metadata.xml", package = "geometa")
#'    xml <- xmlParse(xmlfile)
#'    md <- ISOImageryMetadata$new(xml = xml)
#'    }
#' 
#' @references 
#'   - 19139 \url{https://schemas.isotc211.org/19115/-2/gmi/1.0/gmi/#element_MI_Metadata}
#'   
#'   - 19115-3 \url{https://schemas.isotc211.org/19115/-3/mac/2.0/mac/#element_MI_Metadata}
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOImageryMetadata <- R6Class("ISOImageryMetadata",
  inherit = ISOMetadata,
  private = list(
    document = TRUE,
    xmlElement = "MI_Metadata",
    xmlNamespacePrefix = list(
      "19139" = "GMI",
      "19115-3" =  "MAC"
    )
  ),
  public = list(
    
     #'@field acquisitionInformation acquisitionInformation [0..*]: ISOImageryAcquisitionInformation  
     acquisitionInformation = list(),
    
     #'@description Initializes object
     #'@param xml object of class \link[XML]{XMLInternalNode-class}
     initialize = function(xml = NULL){
       super$initialize(xml = xml)
     },
    
     #'@description Adds acquisition info
     #'@param acquisitionInfo object of class \link{ISOImageryAcquisitionInformation}
     #'@return \code{TRUE} if added, \code{FALSE} otherwise
     addAcquisitionInfo = function(acquisitionInfo){
       if(!is(acquisitionInfo, "ISOImageryAcquisitionInformation")){
         stop("The argument should be an object of class 'ISOImageryAcquisitionInformation")
       }
       return(self$addListElement("acquisitionInformation", acquisitionInfo))
     },
     
     #'@description Deletes acquisition info
     #'@param acquisitionInfo object of class \link{ISOImageryAcquisitionInformation}
     #'@return \code{TRUE} if deleted, \code{FALSE} otherwise
     delAcquisitionInfo = function(acquisitionInfo){
       if(!is(acquisitionInfo, "ISOImageryAcquisitionInformation")){
         stop("The argument should be an object of class 'ISOImageryAcquisitionInformation")
       }
       return(self$delListElement("acquisitionInformation", acquisitionInfo))
     }
  )                        
)
