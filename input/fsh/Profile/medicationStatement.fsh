Profile: KenyaMedicationStatement
Parent: MedicationStatement
Id: ke-medicationstatement
Title: "Kenya MedicationStatement Profile"
Description: "MedicationStatement profile constrained for Kenya to record medication use history and current medication by or for a patient."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 0..* MS

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medication-statement-status (required)
* status ^short = "Status of medication use (active, completed, stopped, entered-in-error)"

* statusReason 0..* MS
* statusReason from http://hl7.org/fhir/ValueSet/reason-medication-status-codes (extensible)
* statusReason ^short = "Reason for current status (e.g. therapy stopped, adverse reaction)"

* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from GenericProductsVS (extensible)
* medicationCodeableConcept ^short = "Medication taken (fallback if Medication not referenced)"

* subject 1..1 MS
* subject only Reference(Patient)

* context 0..1 MS
* context only Reference(Encounter)
* context ^short = "Encounter during which medication use was recorded"

* effective[x] 0..1 MS
* effective[x] only Period
* effectivePeriod 0..1 MS
* effectivePeriod ^short = "Period of medication use"

* dateAsserted 0..1 MS
* dateAsserted ^short = "Date when medication use was asserted or recorded"

* informationSource 0..1 MS
* informationSource only Reference(Patient or Practitioner or RelatedPerson)
* informationSource ^short = "Who reported the medication use"

* reasonCode 0..* MS
* reasonCode from https://ilm-hie.dha.go.ke/ocl/orgs/WHO/ValueSet/icd-11 (extensible)
* reasonCode ^short = "Clinical reason for medication use"

* reasonReference 0..* MS
* reasonReference only Reference(Condition)

* note 0..* MS
* note ^short = "Additional notes about medication use or adherence"

* dosage 0..* MS
* dosage ^short = "Dosage information as taken by the patient"

* partOf 0..* MS
* partOf only Reference(MedicationAdministration)
* partOf ^short = "Link to prescribing or administration records"
