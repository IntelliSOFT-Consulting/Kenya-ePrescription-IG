// ============================================================================
// Example: KenyaEPrescriptionMedicationRequest
// Profile: ke-medication-request
// ============================================================================

Instance: example-medicationrequest-amina-azithromycin
InstanceOf: KEMedicationRequest
Usage: #example
Title: "MedicationRequest – Amina Hassan Azithromycin Prescription"
Description: "Outpatient prescription for Azithromycin 500 mg once daily for 3 days, issued by Dr. Njoroge at KNH during Amina Hassan's consultation."

* id = "example-medicationrequest-amina-azithromycin"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-medication-request"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Medication request</b> for Amina Hassan: Azithromycin 500 mg oral tablet once daily for 3 days, prescribed by Dr. Sarah Njoroge on 2025-06-15 during an outpatient consultation at KNH.</p></div>"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Prescription RX-2025-OPD-00789</b></p><p>Azithromycin 500 mg oral tablet — 1 tablet once daily for 3 days. Prescribed by Dr. Sarah Njoroge at KNH for Amina Hassan on 15 June 2025. Dispense: 3 tablets, valid to 15 July 2025. Generic substitution permitted.</p></div>"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/prescription-identifier"
* identifier[0].value = "RX-2025-OPD-00789"

* status = #active

* intent = #order

* category[0] = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient "Outpatient"

* priority = #routine

* medicationCodeableConcept = https://fhir.dha.go.ke/eclaims/CodeSystem/generic-products-cs#GE10015 "Azithromycin 500 mg Oral Tablet"

* subject = Reference(example-patient-amina)

* encounter = Reference(example-encounter-amina-outpatient)

* authoredOn = "2025-06-15"

* requester = Reference(example-practitioner-njoroge)

// Dosage: 500 mg orally once daily for 3 days
* dosageInstruction[0].text = "Take 1 tablet (500 mg) by mouth once daily for 3 days"
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 1
// periodUnit: using FHIR base units-of-time (#d) – UnitOfMeasureVS binding conflicts with base required binding
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].timing.repeat.duration = 3
* dosageInstruction[0].timing.repeat.durationUnit = #d
* dosageInstruction[0].route = https://nshr-uat.sha.go.ke/fhir/CodeSystem/route-of-administration-cs#RT10025 "Oral"
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 500
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #mg

// Dispense request: 3 tablets, valid 30 days, no repeats
* dispenseRequest.validityPeriod.start = "2025-06-15"
* dispenseRequest.validityPeriod.end = "2025-07-15"
* dispenseRequest.numberOfRepeatsAllowed = 0
* dispenseRequest.quantity.value = 3
* dispenseRequest.quantity.unit = "tablet"
* dispenseRequest.quantity.system = "http://unitsofmeasure.org"
* dispenseRequest.quantity.code = #1

// Substitution: generic composition substitution permitted (v3-substanceAdminSubstitution#G)
* substitution.allowedCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#G "equivalent generic composition"
