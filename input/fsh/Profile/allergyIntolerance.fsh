Profile:        KEAllergyIntolerance
Parent:         AllergyIntolerance
Id:             ke-allergyintolerance
Title:          "Kenya AllergyIntolerance Profile"
Description:    "AllergyIntolerance profile constrained to the specified Kenya dataset."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 0..* MS

* clinicalStatus 1..1 MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (required)

* verificationStatus 1..1 MS
* verificationStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)

* type 0..1 MS
* type from http://hl7.org/fhir/ValueSet/allergy-intolerance-type (required)

* category 0..* MS
* category from http://hl7.org/fhir/ValueSet/allergy-intolerance-category (required)

* criticality 0..1 MS
* criticality from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality (required)

* code 1..1 MS
* code from ActiveComponentsVS (extensible)
* code ^short = "Allergen substance (drug, food, agent)"

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

* recordedDate 0..1 MS

* recorder 0..1 MS
* recorder only Reference(Practitioner or Patient)
* recorder ^short = "Who recorded the allergy"

* asserter 0..1 MS
* asserter only Reference(Patient or Practitioner)
* asserter ^short = "Source asserting the allergy"

* lastOccurrence 0..1 MS
* lastOccurrence ^short = "Last known occurrence of a reaction"

* note 0..* MS
* note ^short = "Additional narrative notes about the allergy"

* reaction 0..* MS
* reaction.substance 0..1 MS
* reaction.substance from ActiveComponentsVS (extensible)
* reaction.substance ^short = "Specific substance that caused the reaction"

* reaction.manifestation 1..* MS
* reaction.manifestation from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)
* reaction.manifestation ^short = "Clinical manifestations of the reaction"

* reaction.description 0..1 MS
* reaction.description ^short = "Text description of the reaction"

* reaction.onset 0..1 MS
* reaction.onset ^short = "When the reaction occurred"

* reaction.severity 0..1 MS
* reaction.severity from http://hl7.org/fhir/ValueSet/reaction-event-severity (required)
* reaction.severity ^short = "Severity of the reaction (mild, moderate, severe)"

* reaction.exposureRoute 0..1 MS
* reaction.exposureRoute from RouteOfAdministrationVS (extensible)
* reaction.exposureRoute ^short = "Route of exposure that caused the reaction"
