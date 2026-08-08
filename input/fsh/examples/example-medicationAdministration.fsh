// ============================================================================
// Example: KEMedicationAdministration
// Profile: ke-medication-administration
// ============================================================================

Instance: example-medicationadministration-otieno-iv
InstanceOf: KEMedicationAdministration
Usage: #example
Title: "MedicationAdministration – James Otieno IV Azithromycin"
Description: "Intravenous administration of Azithromycin 500 mg to James Otieno during his oncology inpatient admission, as empirical antibiotic coverage prior to chemotherapy initiation."

* id = "example-medicationadministration-otieno-iv"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-medication-administration"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Medication administration</b> of Azithromycin 500 mg given intravenously to James Otieno on 2025-06-11 during inpatient oncology care at KNH.</p></div>"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Administration ADM-2025-IPD-00101</b></p><p>Azithromycin 500 mg administered to James Otieno on 11 June 2025 at KNH by Dr. Sarah Njoroge as pre-chemotherapy antibiotic prophylaxis. Route: Inhalation (RT10007). Patient tolerated well with no adverse reactions.</p></div>"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/administration-identifier"
* identifier[0].value = "ADM-2025-IPD-00101"

* status = #completed

* category = http://terminology.hl7.org/CodeSystem/medication-admin-category#inpatient "Inpatient"

* medicationCodeableConcept = https://fhir.dha.go.ke/eclaims/CodeSystem/generic-products-cs#GE10015 "Azithromycin 500 mg Oral Tablet"

* subject = Reference(example-patient-otieno)

* context = Reference(example-encounter-otieno-inpatient)

* effectiveDateTime = "2025-06-11T09:00:00+03:00"

* performer[0].actor = Reference(example-practitioner-njoroge)
* performer[0].function = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer "Performer"

* note[0].text = "Administered as pre-chemotherapy antibiotic prophylaxis. Patient tolerated infusion well with no adverse reactions."

// Dosage
// dosage.route bound to $KE-MedAdminRoute (MedAdminRouteCS): ORAL | INTRAVENOUS-IV | INHALED
* dosage.route = https://nshr-uat.sha.go.ke/fhir/CodeSystem/med-admin-route-cs#RT10007 "Inhalation"
* dosage.dose.value = 500
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mg
