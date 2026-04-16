// // ============================================================
// // Kenya eRx — OncologyCarePlan Profile (merged)
// // Combines: KEOncologyCarePlan + KenyaOncologyCarePlan (old)
// // ============================================================

// Profile: KEOncologyCarePlan
// Parent: CarePlan
// Id: ke-oncology-care-plan
// Title: "Kenya Oncology CarePlan"
// Description: "Profile on CarePlan representing an oncology treatment plan in the Kenya eRx / oncology IG."

// // ── Resource identity ─────────────────────────────────────
// * id 1..1 MS
// * meta 1..1 MS
// * meta.profile 1..* MS
// * meta.profile ^short = "Profiles this resource claims to conform to."

// // ── Identifiers ───────────────────────────────────────────
// * identifier 1..* MS

// * instantiatesUri 0..* MS

// // ── Status & intent ───────────────────────────────────────
// * status 1..1 MS
// * status from $VS-care-plan-status (required)
// * status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"

// * intent 1..1 MS
// * intent from $VS-care-plan-intent (required)
// * intent ^short = "proposal | plan | order | option"

// // ── Category ─────────────────────────────────────────────
// * category 1..* MS
// * category from $KE-CarePlanCategory (required)
// * category ^short = "Oncology care plan category (Kenya MOH)"

// // ── Title & description ───────────────────────────────────
// * title 1..1 MS
// * description 0..1 MS

// // ── Subject & context ─────────────────────────────────────
// * subject 1..1 MS
// * subject only Reference(Patient)

// * encounter 1..1 MS
// * encounter only Reference(Encounter)

// * period 1..1 MS

// // ── Author & team ─────────────────────────────────────────
// * author 1..1 MS
// * author only Reference(Patient or Practitioner or PractitionerRole or Device or RelatedPerson or Organization or CareTeam)
// * author ^short = "Responsible author / lead clinician"

// * careTeam 1..* MS
// * careTeam only Reference(CareTeam)

// // ── Addresses & supporting info ───────────────────────────
// * addresses 1..* MS
// * addresses only Reference(Condition)
// * addresses ^short = "Oncology diagnoses this plan addresses"

// * supportingInfo 0..* MS
// * goal 0..* MS
// * goal only Reference(Goal)

// // ── Contained resources ───────────────────────────────────
// * contained 1..* MS
// * contained ^short = "Contained CareTeam and/or other resources"

// // ── Reason ───────────────────────────────────────────────
// // * reasonCode 0..* MS
// // * reasonReference 0..* MS
// // * reasonReference only Reference(Condition)

// // ── Activity ─────────────────────────────────────────────
// * activity 1..* MS

// * activity.reference 0..1 MS
// * activity.reference only Reference(MedicationRequest or ServiceRequest)
// * activity.reference ^short = "Reference to a MedicationRequest or ServiceRequest — use this OR activity.detail, not both"

// * activity.detail 0..1 MS
// // * activity.detail.category 0..1
// * activity.detail.code 0..1 MS
// * activity.detail.code from $KE-ProcedureCode (required)
// * activity.detail.code ^short = "Detail type of activity"
// * activity.detail.reasonCode 0..* MS
// * activity.detail.reasonCode from $KE-Manifestation (required)
// * activity.detail.reasonCode ^short = "Why activity should be done or why it was prohibited"
// * activity.detail.reasonReference 0..* MS
// * activity.detail.reasonReference only Reference(Condition or Observation or DiagnosticReport or DocumentReference)
// * activity.detail.status 1..1 MS
// * activity.detail.status from $VS-care-plan-activity-stat (required)
// * activity.detail.status ^short = "not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error"
// * activity.detail.doNotPerform 0..1 MS
// * activity.detail.doNotPerform ^short = "If true, activity is prohibiting action"
