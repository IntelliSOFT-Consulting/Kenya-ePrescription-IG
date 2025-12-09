Profile: KenyaEPrescriptionPractitionerRole
Parent: PractitionerRole
Id: kenya-eprescription-practitionerrole
Title: "PractitionerRole - ePrescription"
Description: "Constraints for practitioner Role in the ePrescription workflow."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* id 1..1 MS
* id ^short = "Unique identifier assigned by the HAPI FHIR server (UUID)."

* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier ^short = "Additional identifiers for the practitioner role, if needed."

* active 1..1 MS
* active ^short = "Indicates whether this practitioner role record is active."

* period 1..1 MS
* period ^short = "Period during which the practitioner is authorized to perform these roles."

* practitioner 1..1 MS
* practitioner only Reference(KenyaEPrescriptionPractitioner)
* practitioner ^short = "Practitioner able to provide services under this role."

* code 1..1 MS
* code ^short = "Role(s) performed by the practitioner (e.g., DOCTOR, NURSE, PHARMACIST)."

* specialty 0..1 MS
* specialty ^short = "Optional specialty of the practitioner (e.g., cardiology, oncology)."


