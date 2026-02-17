Profile:        KenyaMorphologyObservation
Parent:         Observation
Id:             ke-morphology-observation
Title:          "Kenya Morphology Observation Profile"
Description:    "Observation profile constrained to the specified Kenya dataset." 
* id 1..1 MS
* identifier 0..* MS
* meta.profile 1..* MS 
* meta.profile ^short = "Profiles this resource claims to conform to."

* status 1..1 MS
* category 1..* MS
* code 1..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* encounter 0..1 MS
* encounter only Reference(Encounter) 
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS  
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS 
* performer 1..* MS
* performer only Reference(Practitioner) 
* bodySite 0..1 MS 
* method 1..1 MS 
* focus 1..* MS
* focus only Reference(Condition)
