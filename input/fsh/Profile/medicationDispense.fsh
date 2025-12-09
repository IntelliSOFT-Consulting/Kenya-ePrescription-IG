Profile: KenyaEPrescriptionMedicationDispense
Parent: MedicationDispense
Id: kenya-eprescription-medicationdispense
Title: "MedicationDispense - ePrescription"
Description: "Represents dispensing events in the ePrescription workflow."

* id MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* text MS
* identifier MS

* partOf MS

* status MS
* statusReasonCodeableConcept.coding.system 0..1 MS
* statusReasonCodeableConcept.coding.code 0..1 MS
* statusReasonCodeableConcept.coding.display 0..1 MS

* category MS

* medication[x] MS
* medicationCodeableConcept.coding  MS
* medicationCodeableConcept.coding.system MS
* medicationCodeableConcept.coding.code MS
* medicationCodeableConcept.coding.display MS
* medicationCodeableConcept.text MS


* subject MS
* subject only Reference(KenyaEPrescriptionPatient)

* context 0..1 MS
* context only Reference(KenyaEPrescriptionEncounter)
* supportingInformation MS


* performer MS
* performer.function MS
* performer.actor MS


* location MS
* location only Reference(Location)

* authorizingPrescription MS

* type MS
* quantity MS
* daysSupply MS

* whenPrepared MS
* whenHandedOver MS

* destination MS
* receiver MS

* note MS


* dosageInstruction MS

// Dosage-specific Fields
* dosageInstruction.sequence MS
* dosageInstruction.text MS
* dosageInstruction.additionalInstruction MS
* dosageInstruction.patientInstruction MS
* dosageInstruction.timing MS
* dosageInstruction.asNeeded[x] MS
* dosageInstruction.site MS
* dosageInstruction.route MS
* dosageInstruction.method MS

* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.type MS

* dosageInstruction.doseAndRate.doseRange MS
* dosageInstruction.doseAndRate.doseQuantity MS

* dosageInstruction.doseAndRate.rateRatio MS
* dosageInstruction.doseAndRate.rateRange MS
* dosageInstruction.doseAndRate.rateQuantity MS

* dosageInstruction.maxDosePerPeriod MS
* dosageInstruction.maxDosePerAdministration MS
* dosageInstruction.maxDosePerLifetime MS


* substitution MS
* substitution.wasSubstituted MS
* substitution.type MS
* substitution.reason MS
* substitution.responsibleParty MS


* detectedIssue MS
* eventHistory MS




Instance: ExampleKenyaEPrescriptionMedicationDispense
InstanceOf: KenyaEPrescriptionMedicationDispense
Title: "Example MedicationDispense - Kenya ePrescription"
Description: "Example instance conforming to the KenyaEPrescriptionMedicationDispense profile."

* id = "meddisp-001"

* meta.profile[0] = "http://example.org/fhir/StructureDefinition/kenya-eprescription-medicationdispense"

* text.status = #generated
* text.div = "<div>Medication dispense for patient example</div>"

* identifier[0].system = "http://moh.health.go.ke/meddispense"
* identifier[0].value = "MD-2025-0001"

* status = #completed

* medicationCodeableConcept.coding[0].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[0].code = #372687004
* medicationCodeableConcept.coding[0].display = "Amoxicillin 500mg capsule"
* medicationCodeableConcept.text = "Amoxicillin 500mg capsule"

* subject.reference = "Patient/kenya-eprescription-patient-001"

* context.reference = "Encounter/kenya-eprescription-encounter-001"

* performer[0].function.coding[0].system = "http://terminology.hl7.org/CodeSystem/medicationdispense-performer-function"
* performer[0].function.coding[0].code = #prf
* performer[0].function.coding[0].display = "Performer"
* performer[0].actor.reference = "Practitioner/kenya-eprescription-practitioner-001"

* location.reference = "Location/kenya-pharmacy-001"

* quantity.value = 30
* quantity.unit = "capsule"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #capsule

* daysSupply.value = 10
* daysSupply.unit = "days"
* daysSupply.system = "http://unitsofmeasure.org"
* daysSupply.code = #d

* whenPrepared = "2025-01-12T08:00:00+03:00"
* whenHandedOver = "2025-01-12T09:00:00+03:00"

* dosageInstruction[0].sequence = 1
* dosageInstruction[0].text = "Take 1 capsule three times a day after meals"
* dosageInstruction[0].patientInstruction = "Take with food"
* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].route.coding[0].system = "http://snomed.info/sct"
* dosageInstruction[0].route.coding[0].code = #26643006
* dosageInstruction[0].route.coding[0].display = "Oral route"

* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "capsule"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #capsule

* substitution.wasSubstituted = false

* note[0].text = "Dispensed as per ePrescription instructions"

