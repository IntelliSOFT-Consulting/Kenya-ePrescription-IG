// ============================================================
// Kenya eRx — Encounter Profile (merged)
// Combines: KEEncounter + KenyaEncounter (old)
// ============================================================

Profile: KEEncounter
Parent: Encounter
Id: ke-encounter
Title: "Kenya eRx Encounter"
Description: "Profile on Encounter for the Kenya eRx Implementation Guide."

// ── Resource identity ─────────────────────────────────────
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 1..* MS
* identifier ^short = "Identifiers by which this encounter is known"

// ── Status ────────────────────────────────────────────────
* status 1..1 MS
* status from $VS-encounter-status (required)
* status ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled"

// ── Class ────────────────────────────────────────────────
* class 1..1 MS
* class from $VS-encounter-class (required)
* class ^short = "Classification of patient encounter (ambulatory, inpatient, emergency, etc.)"

// ── Type & service ────────────────────────────────────────
* serviceType 0..1 MS
* serviceType from $VS-service-type (required)
* serviceType ^short = "Broad categorization of service (e.g. cardiology, oncology)"

* priority 0..1 MS
* priority from $VS-act-priority (required)
* priority ^short = "Urgency of the encounter"

// ── Subject ───────────────────────────────────────────────
* subject 1..1 MS
* subject only Reference(Patient)

// ── Participant ───────────────────────────────────────────
* participant 1..* MS
* participant.individual 1..1 MS
* participant.individual only Reference(Practitioner or PractitionerRole)
* participant.individual ^short = "Clinician involved in the encounter"

// ── Period ────────────────────────────────────────────────
* period 1..1 MS
* period ^short = "Start and end time of the encounter"

// ── Service provider ─────────────────────────────────────
* serviceProvider 1..1 MS
* serviceProvider only Reference(Organization)
* serviceProvider ^short = "Health facility where the encounter took place (MFL code)"

// ── Hospitalization ───────────────────────────────────────
* hospitalization 0..1 MS
* hospitalization.origin 0..1
* hospitalization.origin only Reference(Location or Organization)
* hospitalization.origin ^short = "Location/organization from which patient came before admission"

* hospitalization.admitSource 0..1 MS
* hospitalization.admitSource from $VS-admit-source (required)
* hospitalization.admitSource ^short = "From where patient was admitted (physician referral, transfer, etc.)"

* hospitalization.reAdmission 0..1 MS
* hospitalization.reAdmission from $VS-readmit (required)
* hospitalization.reAdmission ^short = "Type of re-admission (if any)"

* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.dischargeDisposition from $VS-discharge-disp (required)
* hospitalization.dischargeDisposition ^short = "Category or kind of location after discharge"
