
Profile:        KenyaMedicationDispense
Parent:         MedicationDispense
Id:             ke-medication-dispense
Title:          "Kenya MedicationDispense Profile"
Description:    "MedicationDispense constrained for Kenya eDispense workflows, with Must Support flags for the required dataset."
 
* id 1..1
* id MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* status 1..1
* status MS

* medication[x] 1..1
* medication[x] MS

* subject 1..1
* subject MS
* subject only Reference(Patient)

* performer 1..*
* performer MS
* performer.actor 1..1
* performer.actor MS 
* performer.function 0..1 
* location 1..1
* location MS
* location only Reference(Location) 
* authorizingPrescription 1..*
* authorizingPrescription MS
* authorizingPrescription only Reference(KenyaEPrescriptionMedicationRequest)

* type 1..1
* type MS

* quantity 1..1
* quantity MS

* whenPrepared 1..1
* whenPrepared MS

* whenHandedOver 1..1
* whenHandedOver MS 
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1
* medicationCodeableConcept MS

* medicationCodeableConcept.coding 1..*
* medicationCodeableConcept.coding MS
* medicationCodeableConcept.coding.system 1..1
* medicationCodeableConcept.coding.system MS
* medicationCodeableConcept.coding.code 1..1
* medicationCodeableConcept.coding.code MS
* medicationCodeableConcept.coding.display 1..1
* medicationCodeableConcept.coding.display MS 
* medicationCodeableConcept.text 0..1
* medicationCodeableConcept.text MS 
* text 0..1
* contained 0..*
* extension 0..*
* modifierExtension 0..*
* identifier 0..*
* partOf 0..* 
* category 0..1
* context 0..1
* context only Reference(Encounter)
* supportingInformation 0..*
* daysSupply 0..1
* destination 0..1
* receiver 0..*
* note 0..* MS
* substitution 0..1
* detectedIssue 0..* MS
* eventHistory 0..*  MS
* dosageInstruction 0..*
* dosageInstruction MS

* dosageInstruction.sequence MS
* dosageInstruction.text MS
* dosageInstruction.additionalInstruction MS
* dosageInstruction.patientInstruction MS
* dosageInstruction.timing MS
* dosageInstruction.asNeeded[x] MS
* dosageInstruction.site MS
* dosageInstruction.route MS 
* dosageInstruction.method 0..1
* dosageInstruction.doseAndRate 0..* 
* dosageInstruction obeys ke-md-dosage-minimum
