Profile: KenyaEPrescriptionMedicationRequest
Parent: MedicationRequest
Id: kenya-eprescription-medicationrequest
Title: "MedicationRequest Profile for ePrescription"
Description: "Represents prescriptions in the ePrescription workflow."
* status 1..1 MS
* intent 1..1 MS
* subject 1..1 MS
* priority 0..1 MS
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept.coding.code 0..1 MS
* medicationCodeableConcept.coding.system 0..1 MS
* medicationCodeableConcept.coding.display 0..1 MS
* subject only Reference(KenyaEPrescriptionPatient)
* requester 1..1 MS 
* requester only Reference(KenyaEPrescriptionPractitioner)
* supportingInformation 0..* MS
* authoredOn 1..1 MS
* dosageInstruction 0..* MS
* dosageInstruction.text 0..1 MS
* dosageInstruction.timing 0..1 MS
* dosageInstruction.timing ^short = "See Frequency Guide" 

* dosageInstruction.route.coding.code 0..1 MS
* dosageInstruction.route.coding.system 0..1 MS
* dosageInstruction.route.coding.display 0..1 MS
* dosageInstruction.doseAndRate.doseQuantity 0..1 MS

* dosageInstruction.doseAndRate.doseRange.high 0..1 MS
* dosageInstruction.doseAndRate.doseRange.high.system 0..1 MS
* dosageInstruction.doseAndRate.doseRange.high.code 0..1 MS
* dosageInstruction.doseAndRate.doseRange.high.value 0..1 MS

* dosageInstruction.doseAndRate.doseRange.low 0..1 MS
* dosageInstruction.doseAndRate.doseRange.low.system 0..1 MS
* dosageInstruction.doseAndRate.doseRange.low.code 0..1 MS
* dosageInstruction.doseAndRate.doseRange.low.value 0..1 MS

// -----------------------------------------
// Dosage Instructions
// -----------------------------------------
* dosageInstruction MS
* dosageInstruction.asNeededBoolean MS
// * dosageInstruction.asNeededFor MS

// -----------------------------------------
// Dispense Request
// -----------------------------------------
* dispenseRequest MS
* dispenseRequest.validityPeriod MS
* dispenseRequest.validityPeriod.start MS
* dispenseRequest.validityPeriod.end MS

* dispenseRequest.numberOfRepeatsAllowed MS

* dispenseRequest.quantity MS
* dispenseRequest.quantity.value MS
* dispenseRequest.quantity.unit MS
* dispenseRequest.quantity.system MS
* dispenseRequest.quantity.code MS

* dispenseRequest.expectedSupplyDuration MS


* substitution MS
* substitution.allowedBoolean MS
* substitution.reason MS

* priorPrescription MS
* encounter MS
* supportingInformation MS
* recorder MS

* reasonCode MS
* reasonCode.coding MS
* reasonCode.coding.system MS
* reasonCode.coding.code MS
* reasonCode.coding.display MS

* reasonReference MS

* note MS
* detectedIssue MS
* eventHistory MS


* dispenseRequest 0..1 MS
* performer 0..1 MS
* performer only Reference(KenyaEPrescriptionOrganization)



Instance: example-kenya-eprescription-medicationrequest
InstanceOf: KenyaEPrescriptionMedicationRequest
Title: "Example Kenya ePrescription MedicationRequest"
Description: "Example of a prescription for Paracetamol 500mg tablets."

* status = #active
* intent = #order
* subject = Reference(example-kenya-eprescription-patient)
* requester = Reference(example-kenya-eprescription-practitioner)
* performer = Reference(example-kenya-eprescription-organization)
* authoredOn = "2025-11-12"
* medicationReference = Reference(example-kenya-eprescription-medication)
* dosageInstruction[0].text = "Take 1 tablet by mouth every 8 hours for 5 days"
* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate.doseQuantity.value = 1
* dosageInstruction[0].doseAndRate.doseQuantity.unit = "tablet"
* dosageInstruction[0].doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate.doseQuantity.code = #tbl
* dispenseRequest.quantity.value = 15
* dispenseRequest.quantity.unit = "tablet"
* dispenseRequest.quantity.system = "http://unitsofmeasure.org"
* dispenseRequest.quantity.code = #tbl
* dispenseRequest.expectedSupplyDuration.value = 5
* dispenseRequest.expectedSupplyDuration.unit = "days"
* dispenseRequest.expectedSupplyDuration.system = "http://unitsofmeasure.org"
* dispenseRequest.expectedSupplyDuration.code = #d
