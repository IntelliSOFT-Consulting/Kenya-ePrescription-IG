Profile:        KEAllergyIntolerance
Parent:         AllergyIntolerance
Id:             ke-allergyintolerance
Title:          "Kenya AllergyIntolerance Profile"
Description:    "AllergyIntolerance profile constrained to the specified Kenya dataset."
 
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* identifier 0..1 MS 

* clinicalStatus 1..1 MS 
* verificationStatus 0..1 MS 
* type 1..1 MS 
* category 1..* MS 
* criticality 1..1 MS 
* code 1..1 MS 
* patient 1..1 MS
* patient only Reference(Patient)

* encounter 0..1 MS
* encounter only Reference(KenyaEncounter) 
* onset[x] 0..1 MS
* onset[x] only dateTime or Age or Period or Range or string
* onsetDateTime 0..1 MS
* onsetAge 0..1 MS
* onsetPeriod 0..1 MS
* onsetRange 0..1 MS
* onsetString 0..1 MS 
* recordedDate 1..1 MS 
* reaction 1..1 MS

* reaction.substance 1..1 MS
* reaction.manifestation 1..* MS 
* reaction.severity 1..1 MS
* reaction.exposureRoute 0..1 MS
