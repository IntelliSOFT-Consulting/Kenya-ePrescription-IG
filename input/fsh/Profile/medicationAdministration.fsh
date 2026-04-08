// ============================================================================
// Profile: MedicationAdministration
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

* identifier 0..* MS
* partOf 0..* MS
* partOf only Reference(Procedure or MedicationAdministration)

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medication-admin-status (required)
* status ^short = "Status of administration (in-progress, completed, not-done, entered-in-error)"

* statusReason 0..* MS
* statusReason from http://hl7.org/fhir/ValueSet/medication-admin-status-reason (extensible)
* statusReason ^short = "Reason for current status (e.g. patient refused, clinical hold)"

* category 0..1 MS
* category from http://hl7.org/fhir/ValueSet/medication-admin-category (extensible)
* category ^short = "Type of medication administration"

* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from GenericProductsVS (extensible)
* medicationCodeableConcept ^short = "Medication administered"

* subject 1..1 MS
* subject only Reference(Patient)

* context 1..1 MS
* context only Reference(Encounter)

* effective[x] 1..1 MS
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Date/time when medication was administered"

* performer 1..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(Practitioner or PractitionerRole)
* performer.actor ^short = "Administrator (nurse, clinician, authorised staff)"
* performer.function 0..1 MS
* performer.function from http://hl7.org/fhir/ValueSet/med-admin-perform-function (extensible)
* performer.function ^short = "Role individual played in administering the medication"

* reasonCode 0..* MS
* reasonCode from https://ilm-hie.dha.go.ke/ocl/orgs/WHO/ValueSet/icd-11 (extensible)
* reasonCode ^short = "Reason for administering the medication"

* request 0..1 MS
* request only Reference(MedicationRequest)
* request ^short = "Link back to originating prescription"

* device 0..* MS
* device only Reference(Device)

* note 0..* MS

* dosage 1..1 MS
* dosage.site 0..1 MS
* dosage.route 1..1 MS
* dosage.route from https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/MEDICATION-ADMINISTRATION-ROUTE (extensible)
* dosage.route ^short = "Route of administration"
* dosage.method 0..1 MS
* dosage.method from RouteOfAdministrationVS (extensible)
* dosage.method ^short = "Method of administration (e.g. IV push, inhalation)"
* dosage.dose 1..1 MS
* dosage.dose only SimpleQuantity
* dosage.dose ^short = "Amount of medication administered (UCUM)"
* dosage.rate[x] 0..1 MS
