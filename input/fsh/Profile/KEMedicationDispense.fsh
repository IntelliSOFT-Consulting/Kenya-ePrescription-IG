// ============================================================
// Kenya eRx — MedicationDispense Profile (merged)
// Combines: KEMedicationDispense + KenyaMedicationDispense
// ============================================================

Profile: KEMedicationDispense
Parent: MedicationDispense
Id: ke-medication-dispense
Title: "Kenya eRx MedicationDispense"
Description: "Profile on MedicationDispense for the Kenya Electronic Prescription (eRx) Implementation Guide."

// ── Resource identity ─────────────────────────────────────
* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 0..* MS
* identifier ^short = "Unique dispense identifier (pharmacy system reference)"

* partOf 0..*

// ── Status ────────────────────────────────────────────────
* status 1..1 MS
* status from $VS-med-dispense-status (required)
* status ^short = "Status of dispensing (preparation, in-progress, completed, cancelled)"

* statusReason[x] only CodeableConcept
* statusReasonCodeableConcept 0..1 MS
* statusReasonCodeableConcept from $KE-MedDispStatusReason (required)
* statusReasonCodeableConcept ^short = "Reason for dispense status (e.g. out of stock)"

// ── Category & type ───────────────────────────────────────
* category 0..1 MS

* type 1..1 MS
* type from $VS-supply-type (required)
* type ^short = "Type of dispensing event (First Fill, Trial, Emergency, etc.)"

// ── Medication ────────────────────────────────────────────
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from $KE-GenericProducts (required)
* medicationCodeableConcept ^short = "Medication dispensed — Kenya MOH PPB Generic Products"
* medicationCodeableConcept.coding 1..* MS
* medicationCodeableConcept.coding.system 1..1 MS
* medicationCodeableConcept.coding.code 1..1 MS
* medicationCodeableConcept.coding.display 1..1 MS
* medicationCodeableConcept.text 0..1 MS

// ── Subject & context ─────────────────────────────────────
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Patient receiving the medication"

* context 0..1 MS
* context only Reference(Encounter)

// ── Performer ─────────────────────────────────────────────
* performer 1..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(Organization or PractitionerRole)
* performer.actor ^short = "Dispensing pharmacy or authorised dispenser"

// ── Location ─────────────────────────────────────────────
* location 1..1 MS
* location only Reference(Location)
* location ^short = "Where the dispense occurred"

// ── Authorizing prescription ──────────────────────────────
* authorizingPrescription 1..* MS
* authorizingPrescription only Reference(MedicationRequest)
* authorizingPrescription ^short = "Prescription(s) being fulfilled"

// ── Quantity & supply ─────────────────────────────────────
* quantity 1..1 MS
* quantity ^short = "Quantity dispensed"

* daysSupply 0..1 MS
* daysSupply ^short = "Number of days the dispensed supply will last"

* whenPrepared 0..1 MS
* whenHandedOver 0..1 MS

// ── Destination & receiver ────────────────────────────────
* destination 0..1 MS
* destination only Reference(Location)

* receiver 0..*
* receiver only Reference(Patient)

* note 0..*

// ── Dosage instruction ────────────────────────────────────
* dosageInstruction 0..* MS
* dosageInstruction.sequence 0..1 MS
* dosageInstruction.text 0..1 MS
* dosageInstruction.additionalInstruction 0..*
* dosageInstruction.additionalInstruction from $KE-AdditionalInstr (required)
* dosageInstruction.additionalInstruction ^short = "Supplement instructions or warnings to the patient"
* dosageInstruction.patientInstruction 0..1 MS
* dosageInstruction.timing 0..1 MS
* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.site 0..1 MS
* dosageInstruction.site from $KE-ApproachSite (required)
* dosageInstruction.site ^short = "Body site to administer to"
* dosageInstruction.route 0..1 MS
* dosageInstruction.route from $KE-RouteOfAdmin (required)
* dosageInstruction.route ^short = "How drug should enter body"
* dosageInstruction.method 0..1
* dosageInstruction.doseAndRate 0..* MS

// ── Substitution ─────────────────────────────────────────
* substitution 0..1 MS
* substitution.wasSubstituted 1..1 MS
* substitution.wasSubstituted ^short = "Whether substitution occurred"
* substitution.type 0..1 MS
* substitution.type from $VS-subst-admin-subst (required)
* substitution.type ^short = "Type of substitution"
* substitution.reason 0..* MS
* substitution.reason from $VS-subst-admin-reason (required)
* substitution.reason ^short = "Reason for substitution"

* detectedIssue 0..* MS
* eventHistory 0..* MS
