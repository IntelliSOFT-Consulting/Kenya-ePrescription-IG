Profile: KenyaEPrescriptionMedicationRequest
Parent: MedicationRequest
Id: kenya-eprescription-medicationrequest
Title: "MedicationRequest Profile for ePrescription"
Description: "Represents prescriptions in the ePrescription workflow."
* status 1..1 MS
* intent 1..1 MS
* subject 1..1 MS
* subject only Reference(KenyaEPrescriptionPatient)
* requester 1..1 MS 
* requester only Reference(KenyaEPrescriptionPractitioner)
* supportingInformation 0..* MS
* authoredOn 1..1 MS
* dosageInstruction 1..* MS
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
