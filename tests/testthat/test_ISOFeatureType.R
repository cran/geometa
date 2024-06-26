# test_ISOFeatureType.R
# Author: Emmanuel Blondel <emmanuel.blondel1@gmail.com>
#
# Description: Unit tests for ISOFeatureType.R
#=======================
require(geometa, quietly = TRUE)
require(testthat)

context("ISOFeatureType")

test_that("encoding",{
  testthat::skip_on_cran()
  #featuretype
  md <- ISOFeatureType$new()
  md$setTypeName("typeName")
  md$setDefinition("definition")
  md$setCode("code")
  md$setIsAbstract(FALSE)
  md$addAlias("alias1")
  md$addAlias("alias2")
  
  #add feature attributes
  for(i in 1:3){
    #create attribute
    fat <- ISOFeatureAttribute$new()
    fat$setMemberName(sprintf("name %s",i))
    fat$setDefinition(sprintf("definition %s",i))
    fat$setCardinality(lower=1,upper=1)
    fat$setCode(sprintf("code %s",i))
    
    #add measurement unit
    gml <- GMLBaseUnit$new(id = sprintf("ID%s",i))
    gml$setDescriptionReference("someref")
    gml$setIdentifier("identifier", "codespace")
    gml$addName("name1", "codespace")
    gml$addName("name2", "codespace")
    gml$setQuantityTypeReference("someref")
    gml$setCatalogSymbol("symbol")
    gml$setUnitsSystem("somelink")
    fat$setValueMeasurementUnit(gml)
    
    #add listed values
    val1 <- ISOListedValue$new()
    val1$setCode("code1")
    val1$setLabel("label1")
    val1$setDefinition("definition1")
    fat$addListedValue(val1)
    val2 <- ISOListedValue$new()
    val2$setCode("code2")
    val2$setLabel("label2")
    val2$setDefinition("definition2")
    fat$addListedValue(val2)
    fat$setValueType("typeName")
    
    #add feature attribute as carrierOfCharacteristic
    md$addCharacteristic(fat)
  }
  
  expect_is(md, "ISOFeatureType")
  xml <- md$encode()
  expect_is(xml, "XMLInternalNode")
  
  #decoding
  md2 <- ISOFeatureType$new(xml = xml)
  xml2 <- md2$encode()
  
  expect_true(ISOAbstractObject$compare(md, md2, "xml"))
  
})

test_that("encoding",{
  testthat::skip_on_cran()
  #featuretype
  md <- ISOFeatureType$new()
  md$setTypeName("typeName")
  md$setDefinition(
    "description",
    locales = list(
      EN = "the description",
      FR = "la description",
      ES = "la descripción",
      AR = "الوصف",
      RU = "описание",
      ZH = "描述"
    )
  )
  md$setCode("code")
  md$setIsAbstract(FALSE)
  md$addAlias("alias1")
  md$addAlias("alias2")
  
  #add feature attributes
  for(i in 1:3){
    #create attribute
    fat <- ISOFeatureAttribute$new()
    fat$setMemberName(sprintf("name%s",i))
    fat$setDefinition(
      sprintf("description %s",i),
      locales = list(
        EN = sprintf("the description %s",i),
        FR = sprintf("la description %s",i),
        ES = sprintf("la descripción %s",i),
        AR = sprintf("%s الوصف)",i),
        RU = sprintf("описание %s",i),
        ZH = sprintf("描述 %s",i)
      )
    )
    fat$setCardinality(lower=1,upper=1)
    fat$setCode("code 1")
    
    #add measurement unit
    gml <- GMLBaseUnit$new(id = sprintf("ID%s",i))
    gml$setDescriptionReference("someref")
    gml$setIdentifier("identifier", "codespace")
    gml$addName("name1", "codespace")
    gml$addName("name2", "codespace")
    gml$setQuantityTypeReference("someref")
    gml$setCatalogSymbol("symbol")
    gml$setUnitsSystem("somelink")
    fat$setValueMeasurementUnit(gml)
    
    #add listed values
    val1 <- ISOListedValue$new()
    val1$setCode("code1")
    val1$setLabel(
      "name in english 1",
      locales = list(
        EN = "name in english 1",
        FR = "nom en français 1",
        ES = "Nombre en español 1",
        AR = "1 الاسم باللغة العربية",
        RU = "имя на русском 1",
        ZH = "中文名 1"
      ))
    val1$setDefinition(
      "definition in english 1",
      locales = list(
        EN = "definition in english 1",
        FR = "définition en français 1",
        ES = "definición en español 1",
        AR = "1 التعريف باللغة العربية ",
        RU = "Русское определение 1",
        ZH = "中文定义1"
      ))
    fat$addListedValue(val1)
    val2 <- ISOListedValue$new()
    val2$setCode("code2")
    val2$setLabel(
      "name in english 2",
      locales = list(
        EN = "name in english 2",
        FR = "nom en français 2",
        ES = "Nombre en español 2",
        AR = "2 الاسم باللغة العربية",
        RU = "имя на русском 2",
        ZH = "中文名 2"
      ))
    val2$setDefinition(
      "definition in english 2",
      locales = list(
        EN = "definition in english 2",
        FR = "définition en français 2",
        ES = "definición en español 2",
        AR = "2 التعريف باللغة العربية ",
        RU = "Русское определение 2",
        ZH = "中文定义2"
      ))
    fat$addListedValue(val2)
    fat$setValueType("typeName")
    
    #add feature attribute as carrierOfCharacteristic
    md$addCharacteristic(fat)
  }
  
  expect_is(md, "ISOFeatureType")
  xml <- md$encode()
  expect_is(xml, "XMLInternalNode")
  
  #decoding
  md2 <- ISOFeatureType$new(xml = xml)
  xml2 <- md2$encode()
  
  expect_true(ISOAbstractObject$compare(md, md2, "xml"))
  
})