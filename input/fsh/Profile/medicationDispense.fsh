
Profile:        KenyaMedicationDispense
Parent:         MedicationDispense
Id:             ke-medication-dispense
Title:          "Kenya MedicationDispense Profile"
Description:    "MedicationDispense constrained for Kenya eDispense workflows, with Must Support flags for the required dataset."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 0..* MS
* partOf 0..* MS

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationdispense-status (required)
* status ^short = "Status of dispensing (preparation, in-progress, completed, cancelled)"

* statusReasonCodeableConcept 0..1 MS
* statusReasonCodeableConcept from http://hl7.org/fhir/ValueSet/medicationdispense-status-reason (required)
* statusReasonCodeableConcept ^short = "Reason for dispense status (e.g. out of stock, patient declined)"

* category 0..1 MS
* context 0..1 MS
* context only Reference(Encounter)

* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from GenericProductsVS (required)
* medicationCodeableConcept ^short = "Medication dispensed"
* medicationCodeableConcept.coding 1..* MS
* medicationCodeableConcept.coding.system 1..1 MS
* medicationCodeableConcept.coding.code 1..1 MS
* medicationCodeableConcept.coding.display 1..1 MS
* medicationCodeableConcept.text 0..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* performer 1..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(Organization or PractitionerRole)
* performer.actor ^short = "Dispensing pharmacy or authorised dispenser"

* location 1..1 MS
* location only Reference(Location)

* authorizingPrescription 1..* MS
* authorizingPrescription only Reference(KenyaEPrescriptionMedicationRequest)

* type 1..1 MS
* type from http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType (required)
* type ^short = "Type of dispensing event performed"

* quantity 1..1 MS
* daysSupply 0..1 MS
* whenPrepared 0..1 MS
* whenHandedOver 0..1 MS

* destination 0..1 MS
* receiver 0..* MS

* note 0..* MS

// Dosage instruction
* dosageInstruction 0..* MS
* dosageInstruction obeys ke-md-dosage-minimum
* dosageInstruction.sequence 0..1 MS
* dosageInstruction.text 0..1 MS
* dosageInstruction.additionalInstruction 0..* MS
* dosageInstruction.additionalInstruction from http://hl7.org/fhir/ValueSet/additional-instruction-codes (required)
* dosageInstruction.additionalInstruction ^short = "Supplement instructions or warnings to the patient"
* dosageInstruction.patientInstruction 0..1 MS
* dosageInstruction.timing 0..1 MS
* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.site 0..1 MS
* dosageInstruction.site from http://hl7.org/fhir/ValueSet/approach-site-codes (required)
* dosageInstruction.site ^short = "Body site to administer to"
* dosageInstruction.route 0..1 MS
* dosageInstruction.route from RouteOfAdministrationVS (required)
* dosageInstruction.route ^short = "How drug should enter body"
* dosageInstruction.method 0..1 MS
* dosageInstruction.doseAndRate 0..* MS

// Substitution
* substitution 0..1 MS
* substitution.wasSubstituted 1..1 MS
* substitution.wasSubstituted ^short = "Whether substitution occurred"
* substitution.type 0..1 MS
* substitution.type from http://hl7.org/fhir/ValueSet/v3-SubstanceAdminSubstitution (required)
* substitution.type ^short = "Type of substitution"
* substitution.reason 0..* MS
* substitution.reason from http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason (required)
* substitution.reason ^short = "Reason for substitution (formulary, availability)"

// Batch / lot

// * batch.lotNumber 0..1 MS
// * batch.lotNumber ^short = "Lot or batch number"
// * batch.expirationDate 0..1 MS
// * batch.expirationDate ^short = "Expiry date of the dispensed product"

* detectedIssue 0..* MS
* eventHistory 0..* MS
