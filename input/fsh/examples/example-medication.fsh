// ============================================================================
// Example: KenyaEPrescriptionMedication
// Profile: ke-medication
// ============================================================================

Instance: example-medication-azithromycin
InstanceOf: KEMedication
Usage: #example
Title: "Medication – Azithromycin 500 mg Film-Coated Tablet"
Description: "Example Medication resource for Azithromycin 500 mg Film-Coated Tablet as used in the Kenya ePrescription workflow."

* id = "example-medication-azithromycin"
* meta.profile[0] = "https://fhir.dha.go.ke/fhir/StructureDefinition/ke-medication"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Azithromycin 500 mg Film-Coated Tablet</b></p><p>Kenya MOH Generic Product: GE10015. Active ingredient: Azithromycin (AC10746), 500 mg per tablet. Formulation: Tablet, Film-Coated (DF10594). Batch: LOT2025KNH001, expires 2027-06-30.</p></div>"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/medication-identifier"
* identifier[0].value = "KE-MED-AZI-500"

* code = https://fhir.dha.go.ke/terminology/CodeSystem/generic-products-cs#GE10015 "Azithromycin 500 mg Oral Tablet"

* status = #active

* form = https://fhir.dha.go.ke/terminology/CodeSystem/formulation-cs#DF10594 "Tablet, Film-Coated"

* ingredient[0].itemCodeableConcept = https://fhir.dha.go.ke/terminology/CodeSystem/active-components-cs#AC10746 "Azithromycin"
* ingredient[0].strength.numerator.value = 500
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = "http://unitsofmeasure.org"
* ingredient[0].strength.numerator.code = #mg
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tablet"
* ingredient[0].strength.denominator.system = "http://unitsofmeasure.org"
* ingredient[0].strength.denominator.code = #1

* batch.lotNumber = "LOT2025KNH001"
* batch.expirationDate = "2027-06-30"
