#' ISOMetadata
#'
#' @docType class
#' @importFrom R6 R6Class
#' @import XML
#' @export
#' @keywords ISO metadata element
#' @return Object of \code{\link{R6Class}} for modelling an ISO Metadata
#' @format \code{\link{R6Class}} object.
#'
#' @field fileIdentifier [\code{\link{character}}] metadata file identifier
#' @field language [\code{\link{ISOLanguage}}|\code{\link{character}}] metadata language coded
#' @field characterSet [\code{\link{ISOCharacterSet}}|\code{\link{character}}] character set
#' @field parentIdentifier [\code{\link{character}}] parent metadata identifier
#' @field hierarchyLevel [\code{\link{ISOHierarchyLevel}}|\code{\link{character}}] hierarchy level
#' @field hierarchyLevelName [\code{\link{character}}] hierarchy level name
#' @field contact [\code{\link{ISOResponsibleParty}}] contact(s)
#' @field dateStamp [\code{\link{Date}}|\code{\link{POSIXt}}] datestamp
#' @field metadataStandardName [\code{\link{character}}] metadata standard name
#' @field metadataStandardVersion [\code{\link{character}}] metadata standard version
#' @field dataSetURI [\code{\link{character}}] dataset URI
#' @field spatialRepresentationInfo [\code{\link{ISOSpatialRepresentation}}] the spatial representation
#' @field referenceSystemInfo [\code{\link{ISOReferenceSystem}}] the reference system
#' @field metadataExtensionInfo [\code{\link{ISOMetadataExtensionInformation}}] metadata extension
#' @field identificationInfo [\code{\link{ISOIdentification}}] identification information
#' @field contentInfo [\code{\link{ISOFeatureCatalogueDescription}}|\code{\link{ISOCoverageDescription}}] content description
#' @field distributionInfo [\code{\link{ISODistribution}}] distribution information
#' @field dataQualityInfo [\code{\link{ISODataQuality}}] data quality
#' @field metadataMaintenance [\code{\link{ISOMaintenanceInformation}}] maintenance info
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(xml)}}{
#'    This method is used to instantiate an \code{\link{ISOMetadata}}
#'  }
#'  \item{\code{setFileIdentifier(fileIdentifier)}}{
#'    Sets the file identifier
#'  }
#'  \item{\code{setLanguage{locale}}}{
#'    Sets the locale
#'  }
#'  \item{\code{setCharacterSet(charset)}}{
#'    Sets the character set
#'  }
#'  \item{\code{setParentIdentifier(parentIdentifier)}}{
#'    Sets the parentIdentifier
#'  }
#'  \item{\code{addHierarchyLevel(level)}}{
#'    Adds the hierarchy level
#'  }
#'  \item{\code{setHierarchyLevel(level)}}{
#'    Sets the hierarchy level
#'  }
#'  \item{\code{delHierarchyLevel(level)}}{
#'    Deletes the hierarchy level
#'  }
#'  \item{\code{addHierarchyLevelName(levelName)}}{
#'    Adds the hierarchy level name
#'  }
#'  \item{\code{delHierarchyLevelName(levelName)}}{
#'    Deletes the hierarchy level name
#'  }
#'  \item{\code{addContact(contact)}}{
#'    Adds a contact as object of class \code{ISOResponsibleParty}
#'  }
#'  \item{\code{delContact(contact)}}{
#'    Deletes a contact as object of class \code{ISOResponsibleParty}
#'  }
#'  \item{\code{setDateStamp(date)}}{
#'    Sets the date stamp
#'  }
#'  \item{\code{setMetadataStandardName(name)}}{
#'    Sets the metadata standard name
#'  }
#'  \item{\code{setMetadataStandardVersion(version)}}{
#'    Sets the metadata standard version
#'  }
#'  \item{\code{setDataSetURI(dataSetURI)}}{
#'    Sets the metadata dataSet URI
#'  }
#'  \item{\code{addLocale(locale)}}{
#'    Adds a locale, object of class \code{ISOLocale}
#'  }
#'  \item{\code{delLocale(locale)}}{
#'    Deletes a locale, object of class \code{ISOLocale}
#'  }
#'  \item{\code{addSpatialRepresentationInfo(spatialRepresentationInfo)}}{
#'    Adds a spatial representation
#'  }
#'  \item{\code{setSpatialRepresentationInfo(spatialRepresentationInfo)}}{
#'    Sets a spatial representation
#'  }
#'  \item{\code{delSpatialRepresentationInfo(spatialRepresentationInfo)}}{
#'    Deletes a spatial representation
#'  }
#'  \item{\code{addReferenceSystemInfo(referenceSystemInfo)}}{
#'    Adds a reference system
#'  }
#'  \item{\code{setReferenceSystemInfo(referenceSystemInfo)}}{
#'    Sets the reference system
#'  }
#'  \item{\code{delReferenceSystemInfo(referenceSystemInfo)}}{
#'    Deletes a reference system
#'  }
#'  \item{\code{addMetadataExtensionInfo(extensionInfo)}}{
#'    Adds extension info, object of class \code{ISOMetadataExtensionInformation}
#'  }
#'  \item{\code{delMetadataExtensionInfo(extensionInfo)}}{
#'    Deletes extension info, object of class \code{ISOMetadataExtensionInformation}
#'  }
#'  \item{\code{addIdentificationInfo(identificationInfo)}}{
#'    Adds a data identification
#'  }
#'  \item{\code{setIdentificationInfo(identificationInfo)}}{
#'    Sets the data identification
#'  }
#'  \item{\code{delIdentificationInfo(identificationInfo)}}{
#'    Deletes a data identification
#'  }
#'  \item{\code{addContentInfo(contentInfo)}}{
#'    Adds a content info, either an object of class \code{\link{ISOCoverageDescription}}
#'    for coverage data, or \code{\link{ISOFeatureCatalogueDescription}} for vector data.
#'  }
#'  \item{\code{delContentInfo(contentInfo)}}{
#'    Deletes a content info, either an object of class \code{\link{ISOCoverageDescription}} 
#'    for coverage data, or \code{\link{ISOFeatureCatalogueDescription}} for vector data.
#'  }
#'  \item{\code{setDistributionInfo(distributionInfo)}}{
#'    Sets the distribution
#'  }
#'  \item{\code{addDataQualityInfo(dataQualityInfo)}}{
#'    Adds a data quality
#'  }
#'  \item{\code{setDataQualityInfo(dataQualityInfo)}}{
#'    Sets the data quality
#'  }
#'  \item{\code{delDataQualityInfo(dataQualityInfo)}}{
#'    Deletes a data quality
#'  }
#'  \item{\code{setMetadataMaintenance(metadataMaintenance)}}{
#'    Sets a metadata maintenance as object of class \code{ISOMaintenanceInformation}
#'  }
#' }
#' 
#' @examples
#'     #example 1 - WRITE: Create an ISO metadata and encode it as XML
#'     #######################################################
#'     md = ISOMetadata$new()
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
#'    vsr$setGeometricObjects(geomObject)
#'    md$addSpatialRepresentationInfo(vsr)
#'    
#'    #ReferenceSystem
#'    rs <- ISOReferenceSystem$new()
#'    rsId <- ISOReferenceIdentifier$new(code = "4326", codeSpace = "EPSG")
#'    rs$setReferenceSystemIdentifier(rsId)
#'    md$setReferenceSystemInfo(rs)
#'    
#'    #data identification
#'    ident <- ISODataIdentification$new()
#'    ident$setAbstract("abstract")
#'    ident$setPurpose("purpose")
#'    ident$addCredit("credit1")
#'    ident$addCredit("credit2")
#'    ident$addCredit("credit3")
#'    ident$addStatus("completed")
#'    ident$setLanguage("eng")
#'    ident$setCharacterSet("utf8")
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
#'    ident$setResourceMaintenance(mi)
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
#'    extent$setGeographicElement(bbox)
#'    ident$setExtent(extent)
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
#'    md$setIdentificationInfo(ident)
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
#'    distrib$setDigitalTransferOptions(dto)
#'    md$setDistributionInfo(distrib)
#'    
#'    #create dataQuality object with a 'dataset' scope
#'    dq <- ISODataQuality$new()
#'    scope <- ISOScope$new()
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
#'    spec$setAlternateTitle("This is is some data quality check report")
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
#'    md$setDataQualityInfo(dq)
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
#'    #XML representation of the ISOMetadata
#'    xml <- md$encode()
#'    
#'    #example 2 - READ: Create an ISO metadata reading from XML
#'    ######################################################
#'    \donttest{
#'    require(XML)
#'    xmlfile <- system.file("extdata/examples", "metadata.xml", package = "geometa")
#'    xml <- xmlParse(xmlfile)
#'    md <- ISOMetadata$new(xml = xml)
#'    }
#' 
#' @references 
#'   ISO 19115:2003 - Geographic information -- Metadata
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
ISOMetadata <- R6Class("ISOMetadata",
  inherit = ISOAbstractObject,
  private = list(
    document = TRUE,
    xmlElement = "MD_Metadata",
    xmlNamespacePrefix = "GMD"
  ),
  public = list(
     #+ fileIdentifier [0..1] : character
     fileIdentifier = NULL,
     #+ language [0..1] : character
     language = NULL,
     #+ characterSet [0..1] : ISOCharacterSet = "utf8"
     characterSet = NULL,
     #+ parentIdentifier [0..1] : character
     parentIdentifier = NULL,
     #+ hierarchyLevel [0..*] : ISOHierarchyLevel = "dataset"
     hierarchyLevel = list(),
     #+ hierarchyLevelName [0..*] : character
     hierarchyLevelName = list(),
     #+ contact [1..*] : ISOResponsibleParty
     contact = list(),
     #+ dateStamp : POSIXct/POSIXt
     dateStamp = Sys.time(),
     #+ metadataStandardName [0..1] : character
     metadataStandardName = NULL,
     #+ metadataStandardVersion [0..1] : character
     metadataStandardVersion = NULL,
     #+ dataSetURI [0..1] : character
     dataSetURI = NULL,
     #+ locale [0..*]: ISOLocale
     locale = list(),
     #+ spatialRepresentationInfo [0..*]: ISOSpatialRepresentation
     spatialRepresentationInfo = list(),
     #+ referenceSystemInfo [0..*]: ISOReferenceSystem
     referenceSystemInfo = list(),
     #+ metadataExtensionInfo [0..*]: ISOMetadataExtensionInformation
     metadataExtensionInfo = list(),
     #+ identificationInfo [1..*]: ISOIdentification
     identificationInfo = list(),
     #+ contentInfo [0..*]
     contentInfo = list(),
     #+ distributionInfo [0..1] : ISODistribution
     distributionInfo = NULL,
     #+ dataQualityInfo [0..*]: ISODataQuality
     dataQualityInfo = list(),
     #+ metadataMaintenance [0..1]: ISOMaintenanceInformation
     metadataMaintenance = NULL,
     
     #unsupported sets (to implement)
     #----------------
     #+ portrayalCatalogueInfo [0..*]
     portrayalCatalogueInfo = list(), #TODO
     #+ applicationSchemaInfo [0..*]
     applicationSchemaInformation = list(), #TODO
     
     initialize = function(xml = NULL){
       
       #default values
       defaults <- list(
         characterSet = ISOCharacterSet$new(value = "utf8"),
         hierarchyLevel = ISOHierarchyLevel$new(value = "dataset")
       )
       
       if(!is.null(xml)){
         #in case of CSW GetRecordByIdResponse
         rootName <- xmlName(xmlRoot(xml))
         if(rootName == "GetRecordByIdResponse"){
           xml <- xmlChildren(xmlChildren(xml)[[1]])[[1]]
         }
       }
       super$initialize(xml = xml, defaults = defaults)
     },
     
     #MD_Metadata
     #--------------------------------------------------------------------------
     
     #setFileIdentifier
     setFileIdentifier = function(fileIdentifier){
       self$fileIdentifier <- fileIdentifier
     },

     #setLanguage
     setLanguage = function(locale){
       if(is(locale, "character")){
         locale <- ISOLanguage$new(value = locale)
       }
       self$language <- locale
     },

     #setCharacterSet
     setCharacterSet = function(charset){
       if(is(charset, "character")){
         charset <- ISOCharacterSet$new(value = charset)
       }
       self$characterSet <- charset
     },
     
     #setParentIdentifier
     setParentIdentifier = function(parentIdentifier){
       self$parentIdentifier <- parentIdentifier
     },
     
     #addHierarchyLevel
     addHierarchyLevel = function(level){
       if(!is(level, "ISOHierarchyLevel")){
         level <- ISOHierarchyLevel$new(value = level)
       }
       return(self$addListElement("hierarchyLevel", level))
     },
     
     #setHierarchyLevel
     setHierarchyLevel = function(level){
       self$hierarchyLevel <- list()
       self$addHierarchyLevel(level)
     },

     #delHierarchyLevel
     delHierarchyLevel = function(level){
       if(!is(level, "ISOHierarchyLevel")){
         level <- ISOHierarchyLevel$new(value = level)
       }
       return(self$delListElement("hierarchyLevel", level))
     },
    
     #addHierarchyLevelName
     addHierarchyLevelName = function(levelName){
       return(self$addListElement("hierarchyLevelName", levelName))
     },

     #delHierarchyLevelName
     delHierarchyLevelName = function(levelName){
       return(self$delListElement("hierarchyLevelName", levelName))
     },
     
     #addContact
     addContact = function(contact){
       if(!is(contact,"ISOResponsibleParty")){
         stop("The argument should be a 'ISOResponsibleParty' object")
       }
       return(self$addListElement("contact", contact))
     },
     
     #delContact
     delContact = function(contact){
       if(!is(contact,"ISOResponsibleParty")){
         stop("The argument should be a 'ISOResponsibleParty' object")
       }
       return(self$delListElement("contact", contact))
     },
     
     
     #setDateStamp
     setDateStamp = function(date){
       self$dateStamp = date
     },
     
     #setMetadataStandardName
     setMetadataStandardName = function(name){
       if(!is(name, "character")) name <- as.character(name)
       self$metadataStandardName <- name
     },
     
     #setMetadataStandardVersion
     setMetadataStandardVersion = function(version){
       if(!is(version, "character")) version <- as.character(version)
       self$metadataStandardVersion <- version
     },
     
     #setDataSetURI
     setDataSetURI = function(dataSetURI){
       self$dataSetURI = dataSetURI
     },
     
     #addLocale
     addLocale = function(locale){
       if(!is(locale,"ISOLocale")){
         stop("The argument should be a 'ISOLocale' object")  
       }
       return(self$addListElement("locale", locale))
     },
     
     #delLocale
     delLocale = function(locale){
       if(!is(locale,"ISOLocale")){
         stop("The argument should be a 'ISOLocale' object")  
       }
       return(self$delListElement("locale", locale))
     },
     #MD_SpatialRepresentation
     #--------------------------------------------------------------------------
     
     #addSpatialRepresentationInfo
     addSpatialRepresentationInfo = function(spatialRepresentationInfo){
       if(!is(spatialRepresentationInfo,"ISOSpatialRepresentation")){
         stop("The argument should be a 'ISOSpatialRepresentation' object")
       }
       return(self$addListElement("spatialRepresentationInfo", spatialRepresentationInfo))
     },
     
     #setSpatialRepresentationInfo
     setSpatialRepresentationInfo = function(spatialRepresentationInfo){
       self$spatialRepresentationInfo = list()
       return(self$addSpatialRepresentationInfo(spatialRepresentationInfo))
     },
     
     #delSpatialRepresentationInfo
     delSpatialRepresentationInfo = function(spatialRepresentationInfo){
       if(!is(spatialRepresentationInfo,"ISOSpatialRepresentation")){
         stop("The argument should be a 'ISOSpatialRepresentation' object")
       }
       return(self$delListElement("spatialRepresentationInfo", spatialRepresentationInfo))
     },
     
     #MD_ReferenceSystem
     #--------------------------------------------------------------------------
     
     #addReferenceSystemInfo
     addReferenceSystemInfo = function(referenceSystemInfo){
       if(!is(referenceSystemInfo, "ISOReferenceSystem")){
         stop("The argument should be a 'ISOReferenceSystem' object")  
       }
       return(self$addListElement("referenceSystemInfo", referenceSystemInfo))
     },
     
     #setReferenceSystemInfo
     setReferenceSystemInfo = function(referenceSystemInfo){
       self$referenceSystemInfo <- list()
       return(self$addReferenceSystemInfo(referenceSystemInfo))
     },
     
     #delReferenceSystemInfo
     delReferenceSystemInfo = function(referenceSystemInfo){
       if(!is(referenceSystemInfo, "ISOReferenceSystem")){
         stop("The argument should be a 'ISOReferenceSystem' object")  
       }
       return(self$delListElement("referenceSystemInfo", referenceSystemInfo))
     },
     
     #MD_MetadataExtensionInformation
     #--------------------------------------------------------------------------
     
     #addMetadataExtensionInfo
     addMetadataExtensionInfo = function(metadataExtensionInfo){
       if(!is(metadataExtensionInfo, "ISOMetadataExtensionInformation")){
         stop("The argument should be a 'ISOMetadataExtensionInformation' object")  
       }
       return(self$addListElement("metadataExtensionInfo", metadataExtensionInfo))
     },
     
     #delMetadataExtensionInfo
     delMetadataExtensionInfo = function(metadataExtensionInfo){
       if(!is(metadataExtensionInfo, "ISOMetadataExtensionInformation")){
         stop("The argument should be a 'ISOMetadataExtensionInformation' object")  
       }
       return(self$delListElement("metadataExtensionInfo", metadataExtensionInfo))
     },
     
     #MD_Identification
     #--------------------------------------------------------------------------
     
     #addIdentificationInfo
     addIdentificationInfo = function(identificationInfo){
       if(!inherits(identificationInfo,"ISOIdentification")){
         stop("The argument should be an object of class 'ISODataIdentification' or 'ISOServiceIdentification")
       }
       return(self$addListElement("identificationInfo", identificationInfo))
     },
     
     #setIdentificationInfo
     setIdentificationInfo = function(identificationInfo){
       self$identificationInfo = list()
       return(self$addIdentificationInfo(identificationInfo))
     },
     
     #delIdentificationInfo
     delIdentificationInfo = function(identificationInfo){
       if(!inherits(identificationInfo,"ISOIdentification")){
         stop("The argument should be an object of class 'ISODataIdentification' or 'ISOServiceIdentification")
       }
       return(self$delListElement("identificationInfo", identificationInfo))
     },
     
     #MD_Distribution
     #--------------------------------------------------------------------------
     
     #setDistributionInfo
     setDistributionInfo = function(distributionInfo){
       if(!is(distributionInfo,"ISODistribution")){
         stop("The argument should be a 'ISODistribution' object")
       }
       self$distributionInfo = distributionInfo
     },
     
     #DQ_DataQuality
     #--------------------------------------------------------------------------     
     
     #addDataQualityInfo
     addDataQualityInfo = function(dataQualityInfo){
       if(!is(dataQualityInfo,"ISODataQuality")){
         stop("The argument should be a 'ISODataQuality' object")
       }
       return(self$addListElement("dataQualityInfo", dataQualityInfo))
     },
     
     #setDataQualityInfo
     setDataQualityInfo = function(dataQualityInfo){
       self$dataQualityInfo = list()
       return(self$addDataQualityInfo(dataQualityInfo))
     },
     
     #delDataQualityInfo
     delDataQualityInfo = function(dataQualityInfo){
       if(!is(dataQualityInfo,"ISODataQuality")){
         stop("The argument should be a 'ISODataQuality' object")
       }
       return(self$delListElement("dataQualityInfo", dataQualityInfo))
     },
     
     #MD_MaintenanceInformation
     #-------------------------------------------------------------------------- 
     
     #setMetadataMaintenance
     setMetadataMaintenance = function(metadataMaintenance){
       if(!is(metadataMaintenance,"ISOMaintenanceInformation")){
         stop("The argument should be a 'ISOMaintenanceInformation' object")
       }
       self$metadataMaintenance <- metadataMaintenance
     },
     
     #MD_ContentInformation
     #--------------------------------------------------------------------------     
     
     #addContentInfo
     addContentInfo = function(contentInfo){
       if(!is(contentInfo,"ISOContentInformation")){
         stop("The argument should be a 'ISOContentInformation' object")
       }
       return(self$addListElement("contentInfo", contentInfo))
     },
     
     #delContentInfo
     delContentInfo = function(contentInfo){
       if(!is(contentInfo,"ISOContentInformation")){
         stop("The argument should be a 'ISOContentInformation' object")
       }
       return(self$delListElement("contentInfo", contentInfo))
     }
     
  )                        
)
