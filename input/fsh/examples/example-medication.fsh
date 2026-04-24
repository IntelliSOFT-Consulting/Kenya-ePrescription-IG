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
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/medication-identifier"
* identifier[0].value = "KE-MED-AZI-500"

* code = https://ilm-hie.dha.go.ke/fhir/CodeSystem/generic-products-cs#GE10015 "Azithromycin 500 mg Oral Tablet"

* status = #active

* form = https://ilm-hie.dha.go.ke/fhir/CodeSystem/formulation-cs#DF10594 "Tablet, Film-Coated"

* ingredient[0].itemCodeableConcept = https://ilm-hie.dha.go.ke/fhir/CodeSystem/active-components-cs#AC10746 "Azithromycin"
* ingredient[0].strength.numerator.value = 500
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = "http://unitsofmeasure.org"
* ingredient[0].strength.numerator.code = #mg
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tablet"
* ingredient[0].strength.denominator.system = "http://unitsofmeasure.org"
* ingredient[0].strength.denominator.code = #{tablet}

* batch.lotNumber = "LOT2025KNH001"
* batch.expirationDate = "2027-06-30"
