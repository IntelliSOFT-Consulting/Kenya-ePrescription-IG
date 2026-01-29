// ============================================================================
// Profile: MedicationAdministration (custom eAdmin-style)
// FHIR: R4 MedicationAdministration
// ============================================================================

Profile:        KEMedicationAdministration
Parent:         MedicationAdministration
Id:             ke-medicationadministration
Title:          "Kenya MedicationAdministration Profile"
Description:    "Constrained MedicationAdministration to support medication administration events aligned to the provided data set."
  
* id 1..1 
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* identifier 0..*

* partOf 0..*
* partOf only Reference(Procedure or MedicationAdministration)

* status 1..1
* statusReason 0..*

* category 0..1 MS
* category ^short = "Type of medication administration"

* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1

* subject 1..1
* subject only Reference(Patient)

* context 1..1
* context only Reference(Encounter)
 
* effective[x] 1..1 MS
* effective[x] only dateTime
* effectiveDateTime 1..1

* performer 0..* MS
* performer.actor 1..1
* performer.actor only Reference(Practitioner)
* performer.function 0..1 MS

* reasonCode 1..*
* request 1..1 MS
* request only Reference(MedicationRequest)

* device 0..* MS
* device only Reference(Device)

* note 0..* MS
* dosage 1..1 MS
* dosage.site 0..1
* dosage.route 1..1
* dosage.method 0..1
* dosage.rate[x] 0..1
* dosage.rate[x] only   SimpleQuantity  

* dosage.dose 1..1 MS
* dosage.dose only SimpleQuantity 