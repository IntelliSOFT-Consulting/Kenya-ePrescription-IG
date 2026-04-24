// ============================================================
// Kenya eRx — Provenance Profile
// Tracks authorship and lifecycle of prescriptions, dispenses,
// and medication administration records.
// ============================================================

Profile: KEProvenance
Parent: Provenance
Id: ke-provenance
Title: "Kenya eRx Provenance"
Description: "Profile on Provenance for the Kenya eRx Implementation Guide. Captures who created or modified a prescription, dispense, or administration record, when it occurred, and which system was involved."

// ── Resource identity ─────────────────────────────────────
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Target ────────────────────────────────────────────────
* target 1..* MS
* target ^short = "The prescription, dispense, or administration record this provenance describes"
* target only Reference(MedicationRequest or MedicationDispense or MedicationAdministration or MedicationStatement)

// ── Occurred ──────────────────────────────────────────────
* occurred[x] 0..1 MS
* occurred[x] ^short = "When the activity occurred (period or dateTime)"

// ── Recorded ──────────────────────────────────────────────
* recorded 1..1 MS
* recorded ^short = "When this provenance record was created"

// ── Policy ────────────────────────────────────────────────
* policy 0..* MS
* policy ^short = "Policy or rules that govern the activity"

// ── Location ─────────────────────────────────────────────
* location 0..1 MS
* location only Reference(Location)
* location ^short = "Where the activity was performed"

// ── Reason ────────────────────────────────────────────────
* reason 0..* MS
* reason ^short = "Reason the activity was performed (e.g. new prescription, amendment)"

// ── Activity ─────────────────────────────────────────────
* activity 1..1 MS
* activity from http://terminology.hl7.org/ValueSet/v3-DataOperation (required)
* activity ^short = "Type of data operation: CREATE, UPDATE, DELETE, READ, APPEND"

// ── Agent ────────────────────────────────────────────────
* agent 1..* MS
* agent ^short = "At least one actor (prescriber, pharmacist, or system) must be identified"
* agent.type 0..1 MS
* agent.type from http://hl7.org/fhir/ValueSet/provenance-agent-type (required)
* agent.type ^short = "Role of this agent (author, verifier, enterer)"
* agent.who 1..1 MS
* agent.who only Reference(Practitioner or PractitionerRole or Organization or Patient)
* agent.who ^short = "Person or organisation responsible for the activity"
* agent.onBehalfOf 0..1 MS
* agent.onBehalfOf only Reference(Organization)
* agent.onBehalfOf ^short = "Organisation on whose behalf the agent acted"

// ── Entity ────────────────────────────────────────────────
* entity 0..* MS
* entity ^short = "Previous version or source document for this activity"
* entity.role 1..1 MS
* entity.role ^short = "derivation | revision | quotation | source | removal"
* entity.what 1..1 MS
* entity.what ^short = "Reference to the prior resource version or source"
