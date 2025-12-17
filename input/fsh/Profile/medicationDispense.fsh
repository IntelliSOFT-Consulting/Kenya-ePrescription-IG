Profile: KenyaMedicationDispense
Parent: MedicationDispense
Id: kenya-medication-dispense
Title: "Kenya Medication Dispense"
Description: """
Records the actual dispensing of a medication to a patient. 
"""

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* insert IdentifierRequiredRule(identifier, 1..*)
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationdispense-status (required)

* authorizingPrescription 1..* MS
* authorizingPrescription only Reference(KenyaEPrescriptionMedicationRequest) 

* medication[x] 1..1 MS
* medication[x] only KenyaCodeableConcept or Reference(Medication)
* insert CodeableConceptRule(medicationCodeableConcept, 0..1, MS)
* medicationCodeableConcept from https://fhir.sha.go.ke/fhir/ValueSet/medication-codes-vs (extensible)

* insert ReferenceRule(subject, Patient, 1..1)
* insert ReferenceRule(context, Encounter, 1..1)

* performer 1..* MS
* insert ReferenceRule(performer.actor, Practitioner, 1..1)

* receiver 0..* MS
* insert ReferenceRule(receiver, Patient or Practitioner, 1..1)

* quantity 1..1 MS
* quantity ^short = "Amount dispensed (e.g., 30 Tablets)"
* daysSupply 1..1 MS
* daysSupply ^short = "How long this supply lasts"
* whenHandedOver 1..1 MS
* whenHandedOver ^short = "Timestamp of pickup"

* substitution 0..1 MS
* substitution.wasSubstituted 1..1 MS
* substitution.wasSubstituted ^short = "True if different from Order"
* insert CodeableConceptRule(substitution.type, 0..1, MS)
* substitution.reason 0..* MS 

* insert DosageInstructionRule