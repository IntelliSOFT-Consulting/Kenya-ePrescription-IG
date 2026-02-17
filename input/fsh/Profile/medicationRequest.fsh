
Profile:        KenyaEPrescriptionMedicationRequest
Parent:         MedicationRequest
Id:             ke-medicationrequest
Title:          "Kenya MedicationRequest Profile"
Description:    "Constrained MedicationRequest to support the required ePrescription data set."
 
* id 1..1
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* status 1..1
* intent 1..1
* category 1..1
* priority 0..1 
* medication[x] 1..1
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1

* subject 1..1
* subject only Reference(Patient)

* encounter 1..1
* encounter only Reference(Encounter)

* supportingInformation 0..*
* authoredOn 1..1

* requester 1..1
* requester only Reference(Practitioner)

* performer 0..1
* performer only Reference(Organization)

* performerType 0..1

* recorder 0..1
* recorder only Reference(Practitioner)

* reasonCode 1..1
* reasonReference 0..1
* reasonReference only Reference(Condition or Observation) 
* basedOn 1..1
* basedOn only Reference(CarePlan or MedicationRequest or ServiceRequest or ImmunizationRecommendation) 

* dosageInstruction 0..* MS
* dosageInstruction.text 1..1 
* dosageInstruction.timing 0..1 MS
* dosageInstruction.route 0..1 MS
* dosageInstruction.route.coding 0..*
* dosageInstruction.route.coding.system 0..1
* dosageInstruction.route.coding.code 0..1
* dosageInstruction.route.coding.display 0..1 
* dosageInstruction.doseAndRate 0..* MS
* dosageInstruction.doseAndRate.dose[x] 0..1
* dosageInstruction.doseAndRate.dose[x] only SimpleQuantity  
* dosageInstruction.doseAndRate.doseQuantity.value 1..1
* dosageInstruction.doseAndRate.doseQuantity.unit 1..1
* dosageInstruction.doseAndRate.doseQuantity.system 1..1
* dosageInstruction.doseAndRate.doseQuantity.code 1..1 


// * dosageInstruction.doseAndRate.doseRange 
// * dosageInstruction.doseAndRate.doseRange 0..1
// * dosageInstruction.doseAndRate.doseRange.low 0..1
// * dosageInstruction.doseAndRate.doseRange.low.value 0..1
// * dosageInstruction.doseAndRate.doseRange.low.unit 0..1
// * dosageInstruction.doseAndRate.doseRange.low.system 0..1
// * dosageInstruction.doseAndRate.doseRange.low.code 0..1

// * dosageInstruction.doseAndRate.doseRange.high 0..1
// * dosageInstruction.doseAndRate.doseRange.high.value 0..1
// * dosageInstruction.doseAndRate.doseRange.high.unit 0..1
// * dosageInstruction.doseAndRate.doseRange.high.system 0..1
// * dosageInstruction.doseAndRate.doseRange.high.code 0..1

* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.asNeeded[x] only boolean or CodeableConcept  
* dispenseRequest 1..1

* dispenseRequest.validityPeriod 1..1 MS
* dispenseRequest.validityPeriod.start 1..1
* dispenseRequest.validityPeriod.end 1..1

* dispenseRequest.numberOfRepeatsAllowed 1..1 MS

* dispenseRequest.quantity 1..1 MS
* dispenseRequest.quantity.value 1..1
* dispenseRequest.quantity.code 1..1
* dispenseRequest.quantity.unit 0..1 
* dispenseRequest.quantity.system 1..1

* dispenseRequest.initialFill 0..1 MS
* dispenseRequest.initialFill.quantity 0..1
* dispenseRequest.initialFill.duration 0..1

* dispenseRequest.dispenseInterval 0..1 MS
* dispenseRequest.expectedSupplyDuration 0..1 

* substitution 0..1 MS
* substitution.allowed[x] 1..1
* substitution.allowed[x] only boolean or CodeableConcept
* substitution.reason 0..1

* priorPrescription 0..1 MS
* priorPrescription only Reference(MedicationRequest) 
* note 0..* MS
* detectedIssue 0..* MS
* eventHistory 0..* MS
