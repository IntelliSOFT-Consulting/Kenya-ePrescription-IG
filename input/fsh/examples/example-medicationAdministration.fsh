// ============================================================================
// Example: KEMedicationAdministration
// Profile: ke-medicationadministration
// ============================================================================

Instance: example-medicationadministration-otieno-iv
InstanceOf: KEMedicationAdministration
Usage: #example
Title: "MedicationAdministration – James Otieno IV Azithromycin"
Description: "Intravenous administration of Azithromycin 500 mg to James Otieno during his oncology inpatient admission, as empirical antibiotic coverage prior to chemotherapy initiation."

* id = "example-medicationadministration-otieno-iv"
* meta.profile[0] = "http://example.org/StructureDefinition/ke-medicationadministration"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/administration-identifier"
* identifier[0].value = "ADM-2025-IPD-00101"

* status = #completed

* category = http://terminology.hl7.org/CodeSystem/medication-admin-category#inpatient "Inpatient"

* medicationCodeableConcept = https://ilm-hie.dha.go.ke/fhir/CodeSystem/generic-products#GE10015 "Azithromycin 500 mg Oral Tablet"

* subject = Reference(example-patient-otieno)

* context = Reference(example-encounter-otieno-inpatient)

* effectiveDateTime = "2025-06-11T09:00:00+03:00"

* performer[0].actor = Reference(example-practitioner-njoroge)
* performer[0].function = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer "Performer"

* request = Reference(example-medicationrequest-amina-azithromycin)

* note[0].text = "Administered as pre-chemotherapy antibiotic prophylaxis. Patient tolerated infusion well with no adverse reactions."

// Dosage
* dosage.route = https://ilm-hie.dha.go.ke/fhir/CodeSystem/route-of-administration#RT10036 "Intravenous"
* dosage.method = https://ilm-hie.dha.go.ke/fhir/CodeSystem/route-of-administration#RT10036 "Intravenous"
* dosage.dose.value = 500
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mg
