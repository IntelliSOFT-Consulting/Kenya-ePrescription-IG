// ============================================================
// Kenya eRx — MedicationRequest Profile (merged)
// Combines: KEMedicationRequest + KenyaEPrescriptionMedicationRequest
// ============================================================

Profile: KEMedicationRequest
Parent: MedicationRequest
Id: ke-medication-request
Title: "Kenya eRx MedicationRequest"
Description: "Profile on MedicationRequest for the Kenya Electronic Prescription (eRx) Implementation Guide."

// ── Resource identity ─────────────────────────────────────
* id 1..1
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 1..* MS
* identifier ^short = "Globally unique prescription identifier (UUID / token / QR)"

// ── Status & workflow ─────────────────────────────────────
* status 1..1 MS
* status from $VS-med-request-status (required)
* status ^short = "Status of the prescription (active, completed, cancelled, on-hold, entered-in-error)"

* statusReason 0..1 MS
* statusReason from $KE-MedReqStatusReason (preferred)
* statusReason ^short = "Reason for prescription status change"

* intent 1..1 MS
* intent from $VS-med-request-intent (required)
* intent ^short = "Must be 'order' for ePrescription"

* category 1..* MS
* category from $VS-med-request-category (preferred)
* category ^short = "Prescription type (community, inpatient, discharge)"

* priority 0..1 MS
* priority from $VS-request-priority (required)
* priority ^short = "Urgency of prescription"

// ── Medication ────────────────────────────────────────────
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from $KE-GenericProducts (preferred)
* medicationCodeableConcept ^short = "Medicinal product prescribed — Kenya MOH PPB Generic Products"

// ── Subject & context ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Patient receiving the prescription"

* encounter 0..1
* encounter only Reference(Encounter)

* supportingInformation 0..*

* authoredOn 1..1 MS
* authoredOn ^short = "Date/time prescription was authored"

// ── Prescriber ────────────────────────────────────────────
* requester 1..1 MS
* requester only Reference(Practitioner or PractitionerRole)
* requester ^short = "Prescriber"

* recorder 0..1
* recorder only Reference(Practitioner)
* recorder ^short = "User who entered the prescription if different from prescriber"

// ── Reasons ───────────────────────────────────────────────
* reasonCode 0..* MS
* reasonCode from $KE-ConditionCodes (preferred)
* reasonCode ^short = "Clinical indication for therapy"

* reasonReference 0..* MS
* reasonReference only Reference(Condition)

// ── Dosage instruction ────────────────────────────────────
* dosageInstruction 1..* MS
* dosageInstruction ^short = "At least one dosage instruction is required"

* dosageInstruction.text 0..1 MS
* dosageInstruction.text ^short = "Human-readable patient instructions"

* dosageInstruction.timing 1..1 MS
* dosageInstruction.timing ^short = "When the medication should be taken"
* dosageInstruction.timing.repeat 0..1 MS
* dosageInstruction.timing.repeat.frequency 0..1 MS
* dosageInstruction.timing.repeat.period 0..1 MS
* dosageInstruction.timing.repeat.periodUnit 1..1 MS
* dosageInstruction.timing.repeat.periodUnit from $KE-UoM (required)
* dosageInstruction.timing.repeat.periodUnit ^short = "Time unit (day, hour, week)"
* dosageInstruction.timing.repeat.duration 0..1 MS
* dosageInstruction.timing.repeat.duration ^short = "Duration value"
* dosageInstruction.timing.repeat.durationUnit 0..1 MS
* dosageInstruction.timing.repeat.durationUnit from $KE-UoM (required)
* dosageInstruction.timing.repeat.durationUnit ^short = "Duration unit"
* dosageInstruction.timing.code 0..1 MS
* dosageInstruction.timing.code from $KE-MedReqDispenserInstr (required)
* dosageInstruction.timing.code ^short = "Coded frequency (e.g. BID, TID)"

* dosageInstruction.route 1..1 MS
* dosageInstruction.route from $KE-RouteOfAdmin (required)
* dosageInstruction.route ^short = "Route of administration"

* dosageInstruction.method 0..1
* dosageInstruction.method from $KE-RouteOfAdmin (required)
* dosageInstruction.method ^short = "Method of administration"

* dosageInstruction.doseAndRate 1..* MS
* dosageInstruction.doseAndRate.dose[x]
* dosageInstruction.doseAndRate.doseQuantity 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity ^short = "Dose per administration (e.g. 500 mg, 5 ml)"

* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.asNeeded[x] only boolean or CodeableConcept

// ── Dispense request ──────────────────────────────────────
* dispenseRequest 1..1 MS
* dispenseRequest ^short = "Mandatory for ePrescription"
* dispenseRequest.validityPeriod 0..1 MS
* dispenseRequest.validityPeriod.start 0..1
* dispenseRequest.validityPeriod.end 0..1
* dispenseRequest.numberOfRepeatsAllowed 0..1 MS
* dispenseRequest.quantity 1..1 MS
* dispenseRequest.quantity ^short = "Total quantity to be dispensed"
* dispenseRequest.initialFill 0..1 MS
* dispenseRequest.initialFill.quantity 0..1
* dispenseRequest.initialFill.duration 0..1
* dispenseRequest.dispenseInterval 0..1 MS
* dispenseRequest.expectedSupplyDuration 0..1 MS

// ── Substitution ─────────────────────────────────────────
* substitution 0..1 MS
* substitution.allowed[x] 1..1
* substitution.allowed[x] only boolean or CodeableConcept
* substitution.allowedCodeableConcept from $VS-subst-admin-subst (required)
* substitution.allowedCodeableConcept ^short = "Whether generic substitution is allowed"
* substitution.reason 0..1 MS
* substitution.reason from $VS-subst-admin-reason (required)
* substitution.reason ^short = "Reason substitution is restricted"

* note 0..* MS
* note ^short = "Free-text instructions to pharmacist or patient"
* detectedIssue 0..* MS
* eventHistory 0..* MS
