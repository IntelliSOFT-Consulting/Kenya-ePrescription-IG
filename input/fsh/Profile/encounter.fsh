Profile:        KenyaEncounter
Parent:         Encounter
Id:             ke-encounter
Title:          "Kenya Encounter Profile"
Description:    "Encounter profile constrained to the specified Kenya dataset."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..1 MS

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)

* class 1..1 MS
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* class ^short = "Classification of patient encounter"

* serviceType 0..1 MS
* serviceType from http://hl7.org/fhir/ValueSet/service-type (extensible)
* serviceType ^short = "Specific type of service"

* priority 0..1 MS
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (extensible)
* priority ^short = "Indicates the urgency of the encounter"

* subject 1..1 MS
* subject only Reference(Patient)

* participant 1..* MS
* participant.individual 1..1 MS
* participant.individual only Reference(Practitioner)

* period 1..1 MS

* hospitalization 0..1 MS
* hospitalization.origin 0..1 MS
* hospitalization.origin only Reference(Location or Organization)

* hospitalization.admitSource 0..1 MS
* hospitalization.admitSource from http://hl7.org/fhir/ValueSet/encounter-admit-source (extensible)
* hospitalization.admitSource ^short = "From where patient was admitted"

* hospitalization.reAdmission 0..1 MS
* hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092 (extensible)
* hospitalization.reAdmission ^short = "Type of hospital re-admission (if any)"

* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.dischargeDisposition from http://hl7.org/fhir/ValueSet/encounter-discharge-disposition (extensible)
* hospitalization.dischargeDisposition ^short = "Category or kind of location after discharge"

* serviceProvider 1..1 MS
* serviceProvider only Reference(Organization)
