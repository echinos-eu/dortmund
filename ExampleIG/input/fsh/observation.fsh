Alias: $obs-category = http://hl7.org/fhir/codesystem-observation-category.html
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org
Alias: $NCIT = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl

Profile: Injury
Parent: Observation
Id: injury
* bodySite 1..1 MS
* bodySite from InjuryLocationVS
* category = $obs-category#procedure
* code MS 
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "coding"
  * coding ^slicing.rules = #open
* code.coding contains injury 1..1 MS and injury-type 0..* MS
* code.coding[injury] = $SCT#417163006
* code.coding[injury-type] from InjuryTypeVS
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains width 0..1 MS and length 0..1 MS 
 and xPos 1..1 MS and yPos 1..1 MS and injury-description 0..1 MS 
* component[width]
  * code = $SCT#103355008 "Width"
  * value[x] only Quantity
  * valueQuantity.unit = "mm"
  * valueQuantity.code = #mm
  * valueQuantity.system = $UCUM  
* component[length]
  * code = $SCT#410667008 "Length"
  * value[x] only Quantity
  * valueQuantity.unit = "mm"
  * valueQuantity.code = #mm
  * valueQuantity.system = $UCUM 
* component[injury-description]
  * code = $NCIT#C25365 "Description"
  * value[x] only string
* component[xPos]
  * code = $NCIT#C44477 "X-Coordinate"
  * value[x] only integer
* component[yPos]
  * code = $NCIT#C44478 "Y-Coordinate"
  * value[x] only integer

* derivedFrom MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resolve()"
  * ^slicing.rules = #open
* derivedFrom contains injury-picture 0..* MS and injury-location-graphic 1..1 MS
* derivedFrom[injury-picture] only Reference(InjuryPicture)
* derivedFrom[injury-location-graphic] only Reference(InjuryLocationGraphic)
* method 1..1 MS
* method from DocumentationSchemaVS
