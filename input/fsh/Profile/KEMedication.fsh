// ============================================================
// Kenya eRx — Medication Profile (merged)
// Combines: KEMedication + KenyaEPrescriptionMedication
// ============================================================

Profile: KEMedication
Parent: Medication
Id: ke-medication
Title: "Kenya eRx Medication"
Description: "Profile on Medication for the Kenya eRx Implementation Guide. Represents a drug product from the Kenya MOH PPB product catalogue."

// ── Resource identity ─────────────────────────────────────
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

// ── Identifiers ───────────────────────────────────────────
* identifier 1..* MS
* identifier ^short = "Product catalogue identifier (PPB or facility-assigned)"

// ── Code ─────────────────────────────────────────────────
* code 1..1 MS
* code from $KE-GenericProducts (preferred)
* code ^short = "Medicinal product code from Kenya MOH PPB Generic Products"

// ── Status ────────────────────────────────────────────────
* status 1..1 MS
* status from $VS-med-status (required)
* status ^short = "Medication status (active, inactive, entered-in-error)"

// ── Manufacturer ─────────────────────────────────────────
* manufacturer 0..1
* manufacturer only Reference(Organization)
* manufacturer ^short = "Manufacturer of the product"

// ── Form ─────────────────────────────────────────────────
* form 1..1 MS
* form from $KE-Formulation (preferred)
* form ^short = "Dose form (tablet, syrup, injection, etc.)"

// ── Amount ───────────────────────────────────────────────
* amount 0..1
* amount ^short = "Strength ratio (e.g. 500 mg / tablet)"

// ── Ingredient ───────────────────────────────────────────
* ingredient 0..* MS
* ingredient.item[x] only CodeableConcept
* ingredient.itemCodeableConcept 1..1 MS
* ingredient.itemCodeableConcept from $KE-ActiveComponents (preferred)
* ingredient.itemCodeableConcept ^short = "Active component from Kenya MOH PPB Active Components"
* ingredient.strength 0..1 MS
* ingredient.strength ^short = "Active ingredient strength (UCUM units)"
* ingredient.strength.numerator 0..1
* ingredient.strength.denominator 0..1

// ── Batch ─────────────────────────────────────────────────
* batch 0..1 MS
* batch.lotNumber 0..1 MS
* batch.lotNumber ^short = "Lot or batch number"
* batch.expirationDate 0..1 MS
* batch.expirationDate ^short = "Expiry date of the product"
