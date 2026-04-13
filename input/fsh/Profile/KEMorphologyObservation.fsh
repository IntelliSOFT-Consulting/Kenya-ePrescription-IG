// ============================================================
// Kenya eRx — MorphologyObservation Profile (merged)
// Combines: KEMorphologyObservation + KenyaMorphologyObservation (old)
// ============================================================

Profile: KEMorphologyObservation
Parent: Observation
Id: ke-morphology-observation
Title: "Kenya Morphology / Histology Observation"
Description: "Profile on Observation for recording tumour morphology (histology/ICD-O-3) results in the Kenya oncology IG."

// ── Resource identity ─────────────────────────────────────
* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 0..* MS

// ── Status ────────────────────────────────────────────────
* status 1..1 MS
* status from $VS-obs-status (required)
* status ^short = "Observation status — default 'final'"

// ── Category ─────────────────────────────────────────────
* category 1..* MS
* category from $VS-obs-category (preferred)
* category ^short = "Category — default 'laboratory'"

// ── Code ─────────────────────────────────────────────────
* code 1..1 MS
* code from $VS-obs-codes (extensible)
* code ^short = "LOINC or local code identifying the morphology observation"

// ── Subject & focus ───────────────────────────────────────
* subject 1..1 MS
* subject only Reference(Patient)

* focus 1..* MS
* focus only Reference(Condition)
* focus ^short = "The oncology condition this morphology observation relates to"

* encounter 0..1 MS
* encounter only Reference(Encounter)

// ── Effective time ────────────────────────────────────────
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS

// ── Performer ─────────────────────────────────────────────
* performer 1..* MS
* performer only Reference(Practitioner or PractitionerRole or Organization)
* performer ^short = "Pathologist or performing lab"

// ── Value ────────────────────────────────────────────────
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "ICD-O-3 morphology code or SNOMED CT finding"

// ── Body site ─────────────────────────────────────────────
* bodySite 0..1 MS
* bodySite from $VS-body-site (preferred)
* bodySite ^short = "Observed body part"

// ── Method ───────────────────────────────────────────────
* method 1..1 MS
* method from $KE-ObsMethods (preferred)
* method ^short = "Method of morphology determination (biopsy, cytology, etc.)"
