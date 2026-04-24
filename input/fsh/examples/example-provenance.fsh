// ============================================================================
// Examples: KEProvenance
// Profile: ke-provenance
// ============================================================================

// ----------------------------------------------------------------------------
// VALID: Provenance – Prescription created by Dr. Njoroge
// ----------------------------------------------------------------------------
Instance: example-provenance-prescription-created
InstanceOf: KEProvenance
Usage: #example
Title: "Provenance – Prescription Created by Dr. Njoroge (VALID)"
Description: "Valid provenance record capturing the creation of Amina Hassan's Azithromycin prescription by Dr. Sarah Njoroge at KNH on 15 June 2025."

* id = "example-provenance-prescription-created"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-provenance"

* target[0] = Reference(example-medicationrequest-amina-azithromycin)

* occurredDateTime = "2025-06-15T09:30:00+03:00"

* recorded = "2025-06-15T09:30:05+03:00"

* policy[0] = "https://nshr-uat.sha.go.ke/policy/eprescription-creation"

* location = Reference(example-location-knh-pharmacy)

* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(example-practitioner-njoroge)
* agent[0].onBehalfOf = Reference(example-organization-knh)


// ----------------------------------------------------------------------------
// VALID: Provenance – Dispense verified by KNH Pharmacy
// ----------------------------------------------------------------------------
Instance: example-provenance-dispense-verified
InstanceOf: KEProvenance
Usage: #example
Title: "Provenance – Dispense Verified at KNH Pharmacy (VALID)"
Description: "Valid provenance record capturing the verification and completion of Amina Hassan's Azithromycin dispense at KNH Outpatient Pharmacy."

* id = "example-provenance-dispense-verified"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-provenance"

* target[0] = Reference(example-medicationdispense-amina-azithromycin)

* occurredDateTime = "2025-06-15T10:30:00+03:00"

* recorded = "2025-06-15T10:30:15+03:00"

* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#UPDATE "update"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#performer "Performer"
* agent[0].who = Reference(example-organization-knh)

* entity[0].role = #source
* entity[0].what = Reference(example-medicationrequest-amina-azithromycin)


// ----------------------------------------------------------------------------
// INVALID: Provenance – Wrong target type and missing activity
// InstanceOf base Provenance so SUSHI compiles; meta.profile triggers
// IG Publisher validator which reports profile violations.
// Expected validation errors:
//   • activity [1..1 in ke-provenance] — omitted
//   • target restricted to Reference(MedicationRequest|MedicationDispense|
//     MedicationAdministration|MedicationStatement) — Patient reference violates constraint
//   • agent.who restricted to Reference(Practitioner|PractitionerRole|Organization|Patient)
//     from an invalid system reference
// ----------------------------------------------------------------------------
Instance: example-provenance-invalid
InstanceOf: Provenance
Usage: #example
Title: "Provenance – INVALID: Missing activity; wrong target type"
Description: "INVALID Provenance. Violations: activity (1..1 in ke-provenance) omitted; target references a Patient instead of the required MedicationRequest|MedicationDispense|MedicationAdministration|MedicationStatement; agent.who references a Location which is not in the allowed reference types."

* id = "example-provenance-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-provenance"

// INVALID: ke-provenance restricts target to medication workflow resources only
// Patient is not in Reference(MedicationRequest|MedicationDispense|MedicationAdministration|MedicationStatement)
* target[0] = Reference(example-patient-amina)

* recorded = "2025-06-15T09:30:05+03:00"

// INVALID: activity [1..1 in ke-provenance] — omitted entirely

// agent.who uses a valid base-FHIR type (Practitioner); the profile violations shown above
// (wrong target type + missing activity) are what the validator will catch
* agent[0].who = Reference(example-practitioner-njoroge)
