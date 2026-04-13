// ============================================================================
// Example: KenyaEPrescriptionMedicationRequest
// Profile: ke-medicationrequest
// ============================================================================

Instance: example-medicationrequest-amina-azithromycin
InstanceOf: KenyaEPrescriptionMedicationRequest
Usage: #example
Title: "MedicationRequest – Amina Hassan Azithromycin Prescription"
Description: "Outpatient prescription for Azithromycin 500 mg once daily for 3 days, issued by Dr. Njoroge at KNH during Amina Hassan's consultation."

* id = "example-medicationrequest-amina-azithromycin"
* meta.profile[0] = "https://prescription.intellisoftkenya.com/StructureDefinition/ke-medicationrequest"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/prescription-identifier"
* identifier[0].value = "RX-2025-OPD-00789"

* status = https://prescription.intellisoftkenya.com/CodeSystem/medication-request-status-cs#active "Active"

* intent = #order

* category[0] = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient "Outpatient"

* priority = https://prescription.intellisoftkenya.com/CodeSystem/medication-request-priorityCS#routine "Routine"

* medicationCodeableConcept = https://ilm-hie.dha.go.ke/fhir/CodeSystem/generic-products#GE10015 "Azithromycin 500 mg Oral Tablet"

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
* dosageInstruction[0].route = https://ilm-hie.dha.go.ke/fhir/CodeSystem/route-of-administration#RT10025 "Oral"
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
* dispenseRequest.quantity.code = #{tablet}

// Substitution: generic substitution permitted
* substitution.allowedBoolean = true
