Alias: $ufpPlanet = http://fhir.ufp/StructureDefinition/planet

Profile: UFPAddress
Parent: Address
Id: ufp-address
Title: "UFPAddress"
* extension contains PlanetUFP named planet 1..1


Extension: PlanetUFP
Id: PlanetUFP
Description: "Extension for DataType `Address` to add information about the planet on which the address is located."
* ^url = "http://fhir.ufp/StructureDefinition/planet"
* ^version = "0.2"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Address"
* obeys ext-1
* . ^short = "Optional Extensions Element"
* . ^definition = "Optional Extension Element - found in all resources."
* url only uri
* url = "http://fhir.ufp/StructureDefinition/planet" (exactly)
* value[x] only string

Invariant: ext-1
Description: "Must have either extensions or value[x], not both"
Severity: #error
Expression: "extension.exists() != value.exists()"
XPath: "exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])"