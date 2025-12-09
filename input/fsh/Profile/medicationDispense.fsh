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
// * basedOn MS
* partOf MS

* status MS
* statusReasonCodeableConcept.coding.system 0..1 MS
* statusReasonCodeableConcept.coding.code 0..1 MS
* statusReasonCodeableConcept.coding.display 0..1 MS

* category MS

// -----------------------------------------
// Medication[x]
// -----------------------------------------
* medication[x] MS
* medicationCodeableConcept.coding MS
* medicationCodeableConcept.coding.system MS
* medicationCodeableConcept.coding.code MS
* medicationCodeableConcept.coding.display MS
* medicationCodeableConcept.text MS

// -----------------------------------------
// Subject & Context
// -----------------------------------------
* subject MS
* subject only Reference(Patient)

* context 0..1 MS
* context only Reference(Encounter)
* supportingInformation MS

// -----------------------------------------
// Performer
// -----------------------------------------
* performer MS
* performer.function MS
* performer.actor MS

// -----------------------------------------
// Location & Prescription
// -----------------------------------------
* location MS
* location only Reference(Location)

* authorizingPrescription MS

// -----------------------------------------
// Supply Details
// -----------------------------------------
* type MS
* quantity MS
* daysSupply MS

* whenPrepared MS
* whenHandedOver MS

* destination MS
* receiver MS

// -----------------------------------------
// Notes
// -----------------------------------------
* note MS

// -----------------------------------------
// Dosage Instruction
// -----------------------------------------
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

// Dose and Rate
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

// -----------------------------------------
// Substitution
// -----------------------------------------
* substitution MS
* substitution.wasSubstituted MS
* substitution.type MS
* substitution.reason MS
* substitution.responsibleParty MS

// -----------------------------------------
// Detected & History
// -----------------------------------------
* detectedIssue MS
* eventHistory MS








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

