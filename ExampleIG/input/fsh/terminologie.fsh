CodeSystem: InjuryLocation
Id: injury-location
* #head "Head"
* #leg "Leg"
* #arm "Arm"

ValueSet: InjuryLocationVS
Id: injury-location-vs
* include codes from system InjuryLocation

CodeSystem: InjuryType
Id: injury-type
Title: "InjuryType"
* #hautRoetung "Hautrötung"
* #hautUnterblutung "Hautunterblutung"

ValueSet: InjuryTypeVS
Id: injury-type-vs
Title: "InjuryTypeVS"
* include codes from system InjuryType

CodeSystem: DocumentationSchema
Id: documentation-schema
Title: "DocumentationSchema"
* #Kleinkind "Kleinkind"
* #Kind "Kind"
* #Erwachsener "Erwachsener"

ValueSet: DocumentationSchemaVS
Id: documentation-schema-vs
* include codes from system DocumentationSchema