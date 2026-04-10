// ============================================================================
// Example: KenyaMedicationStatement
// Profile: ke-medicationstatement
// ============================================================================

Instance: example-medicationstatement-amina-azithromycin
InstanceOf: KenyaMedicationStatement
Usage: #example
Title: "MedicationStatement – Amina Hassan Completed Azithromycin Course"
Description: "Medication statement recording that Amina Hassan completed a 3-day course of Azithromycin 500 mg following her outpatient consultation at KNH."

* id = "example-medicationstatement-amina-azithromycin"
* meta.profile[0] = "http://example.org/StructureDefinition/ke-medicationstatement"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/medstatement-identifier"
* identifier[0].value = "MEDS-2025-00234"

* status = #completed

* medicationCodeableConcept = https://ilm-hie.dha.go.ke/fhir/CodeSystem/generic-products#GE10015 "Azithromycin 500 mg Oral Tablet"

* subject = Reference(example-patient-amina)

* context = Reference(example-encounter-amina-outpatient)

* effectivePeriod.start = "2025-06-15"
* effectivePeriod.end   = "2025-06-17"

* dateAsserted = "2025-06-18"

* informationSource = Reference(example-patient-amina)

* note[0].text = "Patient confirmed completing the full 3-day course without missing a dose. No adverse effects reported."

* dosage[0].text = "1 tablet (500 mg) orally once daily for 3 days"
* dosage[0].timing.repeat.frequency = 1
* dosage[0].timing.repeat.period = 1
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].route = https://ilm-hie.dha.go.ke/fhir/CodeSystem/route-of-administration#RT10025 "Oral"

* partOf[0] = Reference(example-medicationadministration-otieno-iv)
