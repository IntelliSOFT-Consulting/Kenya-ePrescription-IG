// ============================================================
// Kenya eRx — MedicationStatement Profile (merged)
// Combines: KEMedicationStatement + KenyaMedicationStatement (old)
// ============================================================

Profile: KEMedicationStatement
Parent: MedicationStatement
Id: ke-medication-statement
Title: "Kenya eRx MedicationStatement"
Description: "Profile on MedicationStatement for the Kenya eRx Implementation Guide. Records medication use history and current medications for a patient."

// ── Resource identity ─────────────────────────────────────
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 0..* MS

// ── Status ────────────────────────────────────────────────
* status 1..1 MS
* status from $VS-med-stmt-status (required)
* status ^short = "Status of medication use (active, completed, stopped, entered-in-error)"

* statusReason 0..* MS
* statusReason from $KE-MedStmtStatusReason (preferred)
* statusReason ^short = "Reason for current status (e.g. therapy stopped, adverse reaction)"

// ── Medication ────────────────────────────────────────────
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from $KE-GenericProducts (preferred)
* medicationCodeableConcept ^short = "Medication taken — Kenya MOH PPB Generic Products"

// ── Subject & context ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(Patient)

* context 0..1 MS
* context only Reference(Encounter)
* context ^short = "Encounter during which medication use was recorded"

// ── Effective ─────────────────────────────────────────────
* effective[x] 0..1 MS
* effective[x] only Period
* effectivePeriod 0..1 MS
* effectivePeriod ^short = "Period of medication use"

* dateAsserted 0..1 MS
* dateAsserted ^short = "Date when medication use was asserted or recorded"

* informationSource 0..1 MS
* informationSource only Reference(Patient or Practitioner or RelatedPerson)
* informationSource ^short = "Who reported the medication use"

// ── Reason ───────────────────────────────────────────────
* reasonCode 0..* MS
* reasonCode from $KE-ICD11 (preferred)
* reasonCode ^short = "Clinical reason for medication use (ICD-11)"

* reasonReference 0..* MS
* reasonReference only Reference(Condition)

* note 0..* MS
* note ^short = "Additional notes about medication use or adherence"

* dosage 0..* MS
* dosage ^short = "Dosage information as taken by the patient"

* partOf 0..* MS
* partOf only Reference(MedicationAdministration)
* partOf ^short = "Link to prescribing or administration records"
