Profile: KenyaEPrescriptionMedication
Parent: Medication
Id: kenya-eprescription-medication
Title: "Kenya Medication Profile"
Description: "Medication profile constrained for the Kenya ePrescription workflow, covering product identity, form, ingredients, and batch traceability."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..* MS

* code 1..1 MS
* code from GenericProductsVS (extensible)
* code ^short = "Coded medicinal product (brand or generic)"

* status 0..1 MS
* status from http://hl7.org/fhir/ValueSet/medication-status (required)
* status ^short = "Active or inactive medication"

* manufacturer 0..1 MS
* manufacturer only Reference(Organization)

* form 1..1 MS
* form from FormulationVS (extensible)
* form ^short = "Dose form (tablet, capsule, syrup, injection)"

* amount 0..1 MS
* amount ^short = "Strength per unit (e.g. 500 mg per tablet)"

* ingredient 0..* MS
* ingredient.item[x] only CodeableConcept
* ingredient.itemCodeableConcept 1..1 MS
* ingredient.itemCodeableConcept from ActiveComponentsVS (extensible)
* ingredient.itemCodeableConcept ^short = "Active ingredient substance"
* ingredient.strength 0..1 MS
* ingredient.strength ^short = "Strength of the ingredient (UCUM)"

* batch 0..1 MS
* batch.lotNumber 0..1 MS
* batch.lotNumber ^short = "Batch or lot number"
* batch.expirationDate 0..1 MS
* batch.expirationDate ^short = "Expiry date of the medication batch"
