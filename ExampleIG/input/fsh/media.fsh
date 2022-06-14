Alias: $media-type = http://terminology.hl7.org/CodeSystem/media-type

Profile: InjuryPicture
Parent: Media
Id: injury-picture
Title: "InjuryPicture"
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Slice based on the component.code pattern"
* type.coding contains media-type 0..1 MS and image-type 0..1 MS
* type.coding[media-type] = $media-type#image
//todo: System hinzufügen
* type.coding[image-type] = #injury-picture

Profile: InjuryLocationGraphic
Parent: Media
Id: injury-location-graphic
Title: "InjuryPicture"
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Slice based on the component.code pattern"
* type.coding contains media-type 0..1 MS and image-type 0..1 MS
* type.coding[media-type] = $media-type#image
//todo: System hinzufügen
* type.coding[image-type] = #injury-location-graphic