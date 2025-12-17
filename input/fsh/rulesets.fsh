// RuleSet: CodeableConceptRule
// Description: Enforces valid coding structure.
// Usage: * insert CodeableConceptRule(type, 1..1, MS)
RuleSet: CodeableConceptRule(path, card, strength)
* {path} {card} {strength}
* {path}.coding 1..* MS
* {path}.coding.system 1..1 MS
* {path}.coding.code 1..1 MS
* {path}.coding.display 0..1 MS
* {path}.text 0..1 MS

// RuleSet: IdentifierRequiredRule
// Description: Enforces robust identification (System, Value, and Type).
// Usage: * insert IdentifierRequiredRule(identifier, 1..*)
RuleSet: IdentifierRequiredRule(path, card)
* {path} {card} MS
* {path}.use 0..1 MS
* {path}.type 1..1 MS
* {path}.system 1..1 MS 
* {path}.value 1..1 MS

// RuleSet: ReferenceRule
// Description: Enforces a reference to a specific profile or resource type.
// Usage: * insert ReferenceRule(patient, Patient, 1..1)
RuleSet: ReferenceRule(path, target, card)
* {path} {card} MS
* {path} only Reference({target})

// RuleSet: DosageInstructionRule
// Description: Comprehensive profiling for medication dosage.
// Usage: * insert DosageInstructionRule
RuleSet: DosageInstructionRule
* dosageInstruction 1..* MS
* dosageInstruction.text 1..1 MS 
* dosageInstruction.text ^short = "Full instructions: 'Take 1 tab orally 3 times a day'"

* dosageInstruction.timing 0..1 MS
* dosageInstruction.timing.code 0..1 MS 
* dosageInstruction.timing.code from http://hl7.org/fhir/ValueSet/timing-abbreviation (extensible)
* dosageInstruction.timing.repeat 0..1 MS
* dosageInstruction.timing.repeat.frequency 0..1 MS
* dosageInstruction.timing.repeat.period 0..1 MS 
* dosageInstruction.timing.repeat.periodUnit 0..1 MS 

* dosageInstruction.asNeeded[x] 0..1 MS
* dosageInstruction.asNeededBoolean ^short = "Take only when needed (true/false)"
* dosageInstruction.asNeededCodeableConcept from http://hl7.org/fhir/ValueSet/medication-as-needed-reason (extensible)

* dosageInstruction.route 1..1 MS
* dosageInstruction.route from http://hl7.org/fhir/ValueSet/route-codes (extensible)
* dosageInstruction.route ^short = "How to take (oral, iv)"

* dosageInstruction.site 0..1 MS
* dosageInstruction.site from http://hl7.org/fhir/ValueSet/body-site (extensible)
* dosageInstruction.site ^short = "Where to apply (left eye, right arm)"

* dosageInstruction.method 0..1 MS
* dosageInstruction.method from http://hl7.org/fhir/ValueSet/method-codes (extensible)
* dosageInstruction.method ^short = "How to apply (injection, topical)"

* dosageInstruction.doseAndRate 0..1 MS
* dosageInstruction.doseAndRate.dose[x] 0..1 MS
* dosageInstruction.doseAndRate.doseQuantity 0..1 MS
* dosageInstruction.doseAndRate.doseQuantity ^short = "Amount per dose (e.g. 500 mg)"

// TODO: The valuesets above need custom VS, since they all reference SNOMED. 