Profile: KenyaEPrescriptionMedicationRequest
Parent: MedicationRequest
Id: kenya-eprescription-medicationrequest
Title: "MedicationRequest - ePrescription"
Description: "Defines the standard structure for an electronic prescription in Kenya."

* ^status = #active
* obeys has-dosage-or-dispense
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* insert IdentifierRequiredRule(identifier, 1..*)
* insert CodeableConceptRule(category, 0..*, MS)
* category from http://hl7.org/fhir/ValueSet/medicationrequest-category (extensible)

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationrequest-status (required)
* intent 1..1 MS
* intent = #order
* authoredOn 1..1 MS

* medication[x] 1..1 MS
* medication[x] only KenyaCodeableConcept or Reference(Medication)

* insert ReferenceRule(subject, Patient, 1..1)
* insert ReferenceRule(requester, Practitioner, 1..1)
* insert ReferenceRule(encounter, Encounter, 1..1)

* insert CodeableConceptRule(reasonCode, 0..*, MS)
* insert DosageInstructionRule

* dispenseRequest 1..1 MS
* dispenseRequest.initialFill 0..1
* dispenseRequest.dispenseInterval 0..1
* dispenseRequest.validityPeriod 0..1
* dispenseRequest.numberOfRepeatsAllowed 0..1
* dispenseRequest.quantity 0..1
* dispenseRequest.expectedSupplyDuration 0..1
* dispenseRequest.performer 0..1
* dispenseRequest.performer only Reference(Organization)
* dispenseRequest.performer ^type.profile = Canonical(Reference)

* substitution 0..1
* substitution.allowedBoolean 0..1
* substitution.reason 0..1