// // ============================================================
// // Kenya eRx — OncologyDiagnosis Condition Profile (merged)
// // Combines: KEOncologyDiagnosis + KenyaOncologyDiagnosisCondition (old)
// // ============================================================

// Profile: KEOncologyDiagnosis
// Parent: Condition
// Id: ke-oncology-diagnosis
// Title: "Kenya Oncology Diagnosis Condition"
// Description: "Profile on Condition representing an oncology diagnosis in the Kenya eRx / oncology IG."

// // ── Resource identity ─────────────────────────────────────
// * id 1..1 MS
// * meta 1..1 MS
// * meta.profile 1..* MS
// * meta.profile ^short = "Profiles this resource claims to conform to."

// // ── Identifier ───────────────────────────────────────────
// * identifier 0..* MS

// // ── Clinical & verification status ───────────────────────
// * clinicalStatus 1..1 MS
// * clinicalStatus from $KE-ConditionClinicalStatus (required)
// * clinicalStatus ^short = "active | recurrence | relapse | inactive | remission | resolved"

// * verificationStatus 1..1 MS
// * verificationStatus from $KE-ConditionVerifStatus (required)
// * verificationStatus ^short = "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"

// // ── Category ─────────────────────────────────────────────
// * category 1..1 MS
// * category from $KE-ConditionCategory (required)
// * category ^short = "problem-list-item | encounter-diagnosis"

// // ── Severity ─────────────────────────────────────────────
// * severity 0..1 MS
// * severity from $KE-ConditionSeverity (required)
// * severity ^short = "Subjective severity of condition"

// // ── Code ─────────────────────────────────────────────────
// * code 1..1 MS
// * code from $KE-ConditionCodes (required)
// * code ^short = "Diagnosis code (Kenya MOH condition codes / ICD-10)"

// // ── Body site ─────────────────────────────────────────────
// * bodySite 0..1 MS
// * bodySite from $VS-body-site (required)
// * bodySite ^short = "Anatomical location, if relevant"

// // ── Subject & encounter ───────────────────────────────────
// * subject 1..1 MS
// * subject only Reference(Patient)

// * encounter 1..1 MS
// * encounter only Reference(Encounter)

// // ── Onset ────────────────────────────────────────────────
// * onset[x] 1..1 MS
// * onsetDateTime 1..1 MS
// * onsetDateTime ^short = "Estimated or actual date/time of onset"

// // ── Abatement ────────────────────────────────────────────
// * abatement[x] 0..1 MS
// * abatementDateTime 0..1
// * abatementAge 0..1
// * abatementPeriod 0..1
// * abatementRange 0..1
// * abatementString 0..1

// // ── Recorded ─────────────────────────────────────────────
// * recordedDate 1..1 MS

// * recorder 0..1 MS
// * recorder only Reference(Practitioner)

// * asserter 0..1 MS
// * asserter only Reference(Practitioner)

// // ── Stage ────────────────────────────────────────────────
// * stage 1..1 MS
// * stage ^short = "Oncology staging (TNM or similar)"
// * stage.summary 0..1 MS
// * stage.summary from $KE-ConditionStage (required)
// * stage.summary ^short = "Simple summary (disease specific)"
// * stage.assessment 0..1 MS
// * stage.assessment only Reference(DiagnosticReport or Observation)
// * stage.type 0..1 MS
// * stage.type from $VS-condition-stage-type (required)
// * stage.type ^short = "Kind of staging"

// // ── Evidence ─────────────────────────────────────────────
// * evidence 0..1 MS
// * evidence.code 0..1 MS
// * evidence.code from $KE-Manifestation (required)
// * evidence.code ^short = "Manifestation/symptom"

// * note 0..* MS
