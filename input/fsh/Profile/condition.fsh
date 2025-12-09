Profile: KenyaEPrescriptionCondition
Parent: Condition
Id: kenya-eprescription-condition
Title: "Condition - ePrescription"
Description: "Condition constraints for ePrescription workflow."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* id 1..1 MS
* id ^short = "Unique identifier for the Condition resource."


* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier ^short = "Business identifier for the condition."


* clinicalStatus 1..1 MS
* clinicalStatus.coding.code 1..1 MS
* clinicalStatus.coding.system 1..1 MS
* clinicalStatus.coding.display 1..1 MS
* clinicalStatus ^short = "The current clinical state of the condition."

* verificationStatus 1..1 MS
* verificationStatus.coding.code 1..1 MS
* verificationStatus.coding.system 1..1 MS
* verificationStatus.coding.display 1..1 MS
* verificationStatus ^short = "The verification status of the condition."


* category 1..1 MS
* category.coding.code 1..1 MS
* category.coding.system 1..1 MS
* category.coding.display 1..1 MS
* category ^short = "Category of condition (e.g., problem-list-item)."


* severity 0..1 MS
* severity.coding.code 1..1 MS
* severity.coding.system 1..1 MS
* severity.coding.display 1..1 MS
* severity ^short = "Optional severity of condition."


* code 1..1 MS
* code.coding.code 1..1 MS
* code.coding.system 1..1 MS
* code.coding.display 1..1 MS
* code ^short = "Identification of the condition/problem/diagnosis."


* bodySite 0..1 MS
* bodySite.coding.code 1..1 MS
* bodySite.coding.system 1..1 MS
* bodySite.coding.display 1..1 MS


* subject 1..1 MS
* subject only Reference(KenyaEPrescriptionPatient)
* subject ^short = "The patient who has the condition."

* encounter 1..1 MS
* encounter only Reference(KenyaEPrescriptionEncounter)
* encounter ^short = "Encounter during which this condition was asserted."

* onset[x] 0..1 MS
* onsetDateTime 1..1 MS
* onsetDateTime ^short = "When the condition started (required if onset is provided)."

* recordedDate 1..1 MS
* recordedDate ^short = "Date the condition record was created."


* recorder 1..1 MS
* recorder only Reference(KenyaEPrescriptionPractitioner)
* recorder ^short = "Practitioner recording the condition."


* asserter 0..1 MS
* asserter only Reference(KenyaEPrescriptionPractitioner)
* asserter ^short = "The individual who asserted the condition."

Instance: ExampleKenyaEprescriptionCondition
InstanceOf: KenyaEPrescriptionCondition
Title: "Example Condition - Kenya ePrescription"
Description: "Example instance conforming to the KenyaEPrescriptionCondition profile (strict coded elements)."

* id = "example-kenya-condition-001"

* meta.profile[0] = "http://example.org/fhir/StructureDefinition/kenya-eprescription-condition"

* identifier[0].system = "http://moh.health.go.ke/condition-id"
* identifier[0].value = "COND-2025-0001"


* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active
* clinicalStatus.coding[0].display = "Active"


* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed
* verificationStatus.coding[0].display = "Confirmed"


* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #problem-list-item
* category[0].coding[0].display = "Problem List Item"


* severity.coding[0].system = "http://snomed.info/sct"
* severity.coding[0].code = #24484000
* severity.coding[0].display = "Severe"


* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #44054006
* code.coding[0].display = "Diabetes mellitus type 2"


* bodySite[0].coding[0].system = "http://snomed.info/sct"
* bodySite[0].coding[0].code = #181414000
* bodySite[0].coding[0].display = "Structure of abdomen"

* subject.reference = "Patient/kenya-eprescription-patient-001"

* encounter.reference = "Encounter/kenya-eprescription-encounter-001"

* onsetDateTime = "2024-10-12T09:00:00+03:00"

* recordedDate = "2024-10-13T11:00:00+03:00"

* recorder.reference = "Practitioner/kenya-eprescription-practitioner-001"

* asserter.reference = "Practitioner/kenya-eprescription-practitioner-001"
