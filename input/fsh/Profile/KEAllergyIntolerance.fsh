// ============================================================
// Kenya eRx — AllergyIntolerance Profile (merged)
// Combines: KEAllergyIntolerance + KEAllergyIntolerance (old)
// ============================================================

Profile: KEAllergyIntolerance
Parent: AllergyIntolerance
Id: ke-allergy-intolerance
Title: "Kenya eRx AllergyIntolerance"
Description: "Profile on AllergyIntolerance for the Kenya eRx Implementation Guide."

// ── Resource identity ─────────────────────────────────────
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 0..* MS

// ── Clinical & verification status ───────────────────────
* clinicalStatus 1..1 MS
* clinicalStatus from $VS-allergy-clinical (required)
* clinicalStatus ^short = "Clinical status (active, inactive, resolved) — default active"

* verificationStatus 1..1 MS
* verificationStatus from $VS-allergy-verification (required)
* verificationStatus ^short = "Verification status (unconfirmed, confirmed, refuted, entered-in-error)"

// ── Type, category, criticality ───────────────────────────
* type 1..1 MS
* type from $VS-allergy-type (required)
* type ^short = "Allergy or intolerance — default 'allergy'"

* category 1..* MS
* category from $VS-allergy-category (required)
* category ^short = "Category (food, medication, environment, biologic)"

* criticality 1..1 MS
* criticality from $VS-allergy-criticality (required)
* criticality ^short = "Estimated clinical harm (low, high, unable-to-assess)"

// ── Allergen code ─────────────────────────────────────────
* code 1..1 MS
* code from $KE-ActiveComponents (required)
* code ^short = "Allergen substance from Kenya MOH PPB Active Components"

// ── Patient & encounter ───────────────────────────────────
* patient 1..1 MS
* patient only Reference(Patient)

* encounter 0..1 MS
* encounter only Reference(Encounter)

// ── Onset ────────────────────────────────────────────────
* onset[x] 0..1 MS
* onsetDateTime 0..1 MS
* onsetDateTime ^short = "Use when allergy is still active"
* onsetAge 0..1
* onsetPeriod 0..1
* onsetPeriod ^short = "Use when both start and end of allergy are known"
* onsetRange 0..1
* onsetString 0..1

// ── Recorded ─────────────────────────────────────────────
* recordedDate 1..1 MS
* recordedDate ^short = "Date recorded at point-of-care system"

* recorder 0..1 MS
* recorder only Reference(Practitioner or Patient)
* recorder ^short = "Who recorded the allergy"

* asserter 0..1 MS
* asserter only Reference(Patient or Practitioner)
* asserter ^short = "Source asserting the allergy"

* lastOccurrence 0..1 MS
* lastOccurrence ^short = "Last known occurrence of a reaction"

* note 0..* MS
* note ^short = "Additional narrative notes about the allergy"

// ── Reaction ─────────────────────────────────────────────
* reaction 0..* MS
* reaction.substance 1..1 MS
* reaction.substance from $KE-ActiveComponents (required)
* reaction.substance ^short = "Specific allergen that caused the reaction"

* reaction.manifestation 1..* MS
* reaction.manifestation from $KE-Manifestation (required)
* reaction.manifestation ^short = "Clinical manifestation / symptom"

* reaction.description 0..1 MS
* reaction.description ^short = "Text description of the reaction"

* reaction.onset 0..1 MS
* reaction.onset ^short = "When the reaction occurred"

* reaction.severity 1..1 MS
* reaction.severity from $VS-reaction-severity (required)
* reaction.severity ^short = "Severity (mild, moderate, severe)"

* reaction.exposureRoute 0..1 MS
* reaction.exposureRoute from $KE-RouteOfAdmin (required)
* reaction.exposureRoute ^short = "Route of exposure that caused the reaction"
