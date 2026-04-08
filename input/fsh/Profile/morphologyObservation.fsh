Profile:        KenyaMorphologyObservation
Parent:         Observation
Id:             ke-morphology-observation
Title:          "Kenya Morphology Observation Profile"
Description:    "Observation profile constrained to the specified Kenya dataset."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 0..* MS

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* status ^short = "registered | preliminary | final | amended +"

* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (extensible)
* category ^short = "Classification of type of observation"

* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/observation-codes (extensible)
* code ^short = "Type of observation (code / type)"

* subject 1..1 MS
* subject only Reference(Patient)

* focus 1..* MS
* focus only Reference(Condition)
* focus ^short = "What the observation is about, when not about the subject"

* encounter 0..1 MS
* encounter only Reference(Encounter)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS

* performer 1..* MS
* performer only Reference(Practitioner)

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* bodySite ^short = "Observed body part"

* method 1..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)
* method ^short = "How the observation was done"
