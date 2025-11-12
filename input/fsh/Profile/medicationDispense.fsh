Profile: KenyaEPrescriptionMedicationDispense
Parent: MedicationDispense
Id: kenya-eprescription-medicationdispense
Title: "MedicationDispense Profile for ePrescription"
Description: "Represents dispensing events in the ePrescription workflow."

* status 1..1 MS
* subject 1..1 MS
* medication[x] 1..1 MS
* medication[x] only Reference(KenyaEPrescriptionMedication)
* subject only Reference(KenyaEPrescriptionPatient)
* performer 0..* MS
* authorizingPrescription 0..* MS
* authorizingPrescription only Reference(KenyaEPrescriptionMedicationRequest)
* quantity 1..1 MS
* daysSupply 0..1 MS


Instance: KenyaEPrescriptionMedicationDispenseExample
InstanceOf: KenyaEPrescriptionMedicationDispense
Title: "Example - Kenya ePrescription MedicationDispense"
Description: "Example of a medication dispensing event in the Kenya ePrescription workflow."

* status = #completed
* subject = Reference(KenyaEPrescriptionPatientExample)
* medicationReference = Reference(KenyaEPrescriptionMedicationExample)
* authorizingPrescription = Reference(KenyaEPrescriptionMedicationRequestExample)
* performer[0].actor = Reference(KenyaEPrescriptionPractitionerExample)
* quantity.value = 30
* quantity.unit = "tablet"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #tbl
* daysSupply.value = 10
* daysSupply.unit = "days"
* daysSupply.system = "http://unitsofmeasure.org"
* daysSupply.code = #d

