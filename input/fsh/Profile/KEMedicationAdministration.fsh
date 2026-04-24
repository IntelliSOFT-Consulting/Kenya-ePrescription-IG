// ============================================================
// Kenya eRx — MedicationAdministration Profile (merged)
// Combines: KEMedicationAdministration + KEMedicationAdministration
// ============================================================

Profile: KEMedicationAdministration
Parent: MedicationAdministration
Id: ke-medication-administration
Title: "Kenya eRx MedicationAdministration"
Description: "Profile on MedicationAdministration for the Kenya eRx Implementation Guide."

// ── Resource identity ─────────────────────────────────────
* id 1..1
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 0..* MS

* partOf 0..*
* partOf only Reference(Procedure or MedicationAdministration)

// ── Status ────────────────────────────────────────────────
* status 1..1 MS
* status from $VS-med-admin-status (required)
* status ^short = "Status (in-progress, not-done, on-hold, completed, entered-in-error, stopped, unknown)"

* statusReason 0..* MS
* statusReason from $KE-MedAdminStatusReason (required)
* statusReason ^short = "Reason for current status (e.g. patient refused, clinical hold)"

// ── Category ─────────────────────────────────────────────
* category 0..1 MS
* category from $VS-med-admin-category (required)
* category ^short = "Type of medication administration (inpatient, outpatient)"

// ── Medication ────────────────────────────────────────────
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from $KE-GenericProducts (required)
* medicationCodeableConcept ^short = "Medication administered — Kenya MOH PPB Generic Products"

// ── Subject & context ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(Patient)

* context 1..1 MS
* context only Reference(Encounter)

// ── Effective time ────────────────────────────────────────
* effective[x] 1..1 MS
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Date/time medication was administered"

// ── Performer ─────────────────────────────────────────────
* performer 1..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(Practitioner or PractitionerRole)
* performer.actor ^short = "Administrator (nurse, clinician, authorised staff)"
* performer.function 0..1 MS
* performer.function from $VS-med-admin-fn (required)
* performer.function ^short = "Role individual played in administering the medication"

// ── Reason ───────────────────────────────────────────────
* reasonCode 0..* MS
* reasonCode from $KE-ICD11 (required)
* reasonCode ^short = "Reason for medication administration (ICD-11)"

// ── Request ───────────────────────────────────────────────
* request 0..1 MS
* request only Reference(MedicationRequest)
* request ^short = "Link back to originating prescription"

* device 0..* MS
* device only Reference(Device)

* note 0..*

// ── Dosage ────────────────────────────────────────────────
* dosage 1..1 MS
* dosage ^short = "Dosage details for this administration event"
* dosage.site 0..1 MS
* dosage.route 1..1 MS
* dosage.route from $KE-MedAdminRoute (required)
* dosage.route ^short = "Route of administration"
* dosage.method 0..1 MS
* dosage.method from $KE-RouteOfAdmin (required)
* dosage.method ^short = "Method of administration (e.g. IV push, inhalation)"
* dosage.dose 1..1 MS
* dosage.dose only SimpleQuantity
* dosage.dose ^short = "Quantity of medication administered (UCUM)"
* dosage.rate[x] 0..1 MS
