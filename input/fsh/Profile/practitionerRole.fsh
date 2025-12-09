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


Instance: ExampleKenyaEPrescriptionPractitionerRole
InstanceOf: KenyaEPrescriptionPractitionerRole
Title: "Example PractitionerRole - ePrescription"
Description: "Example instance of a practitioner role as used in the Kenya ePrescription workflow."

* id = "prrole-12345"
* meta.profile[+] = "http://example.org/fhir/StructureDefinition/kenya-eprescription-practitionerrole"

* identifier[0].system = "http://mohkenya.org/practitionerrole-ids"
* identifier[0].value = "PR-001"

* active = true

* period.start = "2024-01-01"
* period.end = "2025-01-01"

* practitioner = Reference(KenyaEPrescriptionPractitioner/example-practitioner)

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #309343006
* code.coding[0].display = "Physician"

* specialty.coding[0].system = "http://snomed.info/sct"
* specialty.coding[0].code = #394579002
* specialty.coding[0].display = "Cardiology"



