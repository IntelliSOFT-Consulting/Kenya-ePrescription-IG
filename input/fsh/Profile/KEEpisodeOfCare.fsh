// ============================================================
// Kenya eRx — EpisodeOfCare Profile (merged)
// Combines: KEEpisodeOfCare + KenyaEpisodeOfCare (old)
// ============================================================

Profile: KEEpisodeOfCare
Parent: EpisodeOfCare
Id: ke-episode-of-care
Title: "Kenya eRx EpisodeOfCare"
Description: "Profile on EpisodeOfCare for the Kenya eRx Implementation Guide."

// ── Resource identity ─────────────────────────────────────
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Status ────────────────────────────────────────────────
* status 1..1 MS
* status from $VS-episode-status (required)
* status ^short = "planned | waitlist | active | onhold | finished | cancelled | entered-in-error"

// ── Type ─────────────────────────────────────────────────
* type 1..* MS
* type from $VS-episode-type (preferred)
* type ^short = "Type of episode of care (e.g. specialist referral, disease management)"

// ── Diagnosis ─────────────────────────────────────────────
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(Condition)
* diagnosis.condition ^short = "Condition(s) this episode of care addresses"

// ── Patient ───────────────────────────────────────────────
* patient 1..1 MS
* patient only Reference(Patient)

// ── Managing organisation ─────────────────────────────────
* managingOrganization 0..1 MS
* managingOrganization only Reference(Organization)
* managingOrganization ^short = "Organization managing this episode"

// ── Period ────────────────────────────────────────────────
* period 0..1 MS
* period ^short = "Interval during which responsibility is assumed"

// ── Care manager ─────────────────────────────────────────
* careManager 0..1 MS
* careManager only Reference(Practitioner or PractitionerRole)
* careManager ^short = "Care manager/care coordinator for the patient"
