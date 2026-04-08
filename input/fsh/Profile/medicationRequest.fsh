
Profile:        KenyaEPrescriptionMedicationRequest
Parent:         MedicationRequest
Id:             ke-medicationrequest
Title:          "Kenya MedicationRequest Profile"
Description:    "Constrained MedicationRequest to support the required ePrescription data set."

* id 1..1
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..* MS

* status 1..1 MS
* status from MedicationRequestStatusVS (required)

* statusReason 0..1 MS
* statusReason from http://hl7.org/fhir/ValueSet/medicationrequest-status-reason (extensible)
* statusReason ^short = "Reason for prescription status change (e.g. cancelled by prescriber)"

* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/medicationrequest-intent (required)

* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/medicationrequest-category (required)
* category ^short = "Prescription type (community, inpatient, discharge)"

* priority 0..1 MS
* priority from MedicationRequestPriorityVS (required)

* medication[x] 1..1
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from GenericProductsVS (required)
* medicationCodeableConcept ^short = "Prescribed product including form"

* subject 1..1
* subject only Reference(Patient)

* encounter 0..1
* encounter only Reference(Encounter)

* supportingInformation 0..*
* authoredOn 1..1 MS

* requester 1..1
* requester only Reference(Practitioner)

* recorder 0..1
* recorder only Reference(Practitioner)

* reasonCode 0..* MS
* reasonCode from https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-CODES (required)
* reasonCode ^short = "Clinical indication for therapy"

* reasonReference 0..* MS
* reasonReference only Reference(Condition)

// Dosage
* dosageInstruction 1..* MS
* dosageInstruction.text 0..1 MS
* dosageInstruction.text ^short = "Human-readable patient instructions"

* dosageInstruction.timing 1..1 MS
* dosageInstruction.timing.code 0..1 MS
* dosageInstruction.timing.code from http://hl7.org/fhir/ValueSet/timing-abbreviation (required)
* dosageInstruction.timing.code ^short = "Coded frequency (e.g. BID, TID)"
* dosageInstruction.timing.repeat 0..1 MS
* dosageInstruction.timing.repeat.frequency 0..1 MS
* dosageInstruction.timing.repeat.period 0..1 MS
* dosageInstruction.timing.repeat.periodUnit 1..1 MS
* dosageInstruction.timing.repeat.periodUnit from UnitOfMeasureVS (required)
* dosageInstruction.timing.repeat.periodUnit ^short = "Time unit (day, hour, week)"
* dosageInstruction.timing.repeat.duration 0..1 MS
* dosageInstruction.timing.repeat.duration ^short = "Duration value"
* dosageInstruction.timing.repeat.durationUnit 0..1 MS
* dosageInstruction.timing.repeat.durationUnit from UnitOfMeasureVS (required)
* dosageInstruction.timing.repeat.durationUnit ^short = "Duration unit (days, weeks)"

* dosageInstruction.route 1..1 MS
* dosageInstruction.route from RouteOfAdministrationVS (required)
* dosageInstruction.route ^short = "Route of administration"

* dosageInstruction.method 0..1 MS
* dosageInstruction.method from RouteOfAdministrationVS (required)

* dosageInstruction.doseAndRate 1..* MS
* dosageInstruction.doseAndRate.dose[x] 1..1 MS
* dosageInstruction.doseAndRate.dose[x] only SimpleQuantity
* dosageInstruction.doseAndRate.doseQuantity.value 1..1
* dosageInstruction.doseAndRate.doseQuantity.unit 1..1
* dosageInstruction.doseAndRate.doseQuantity.system 1..1
* dosageInstruction.doseAndRate.doseQuantity.code 1..1

* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.asNeeded[x] only boolean or CodeableConcept

// Dispense
* dispenseRequest 1..1 MS
* dispenseRequest.validityPeriod 0..1 MS
* dispenseRequest.validityPeriod.start 0..1
* dispenseRequest.validityPeriod.end 0..1
* dispenseRequest.numberOfRepeatsAllowed 0..1 MS
* dispenseRequest.quantity 1..1 MS
* dispenseRequest.quantity.value 1..1
* dispenseRequest.quantity.code 1..1
* dispenseRequest.quantity.unit 0..1
* dispenseRequest.quantity.system 1..1
* dispenseRequest.initialFill 0..1 MS
* dispenseRequest.initialFill.quantity 0..1
* dispenseRequest.initialFill.duration 0..1
* dispenseRequest.dispenseInterval 0..1 MS
* dispenseRequest.expectedSupplyDuration 0..1 MS

// Substitution
* substitution 0..1 MS
* substitution.allowed[x] 1..1
* substitution.allowed[x] only boolean or CodeableConcept
* substitution.allowedCodeableConcept from http://hl7.org/fhir/ValueSet/v3-SubstanceAdminSubstitution (extensible)
* substitution.allowedCodeableConcept ^short = "Whether generic substitution is allowed"
* substitution.reason 0..1 MS
* substitution.reason from http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason (extensible)
* substitution.reason ^short = "Reason substitution is restricted"

* note 0..* MS
* detectedIssue 0..* MS
* eventHistory 0..* MS
