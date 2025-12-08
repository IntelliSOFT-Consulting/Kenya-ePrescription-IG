Profile: KenyaEPrescriptionCondition
Parent: Condition
Id: kenya-eprescription-condition
Title: "Condition Profile for ePrescription"
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
* clinicalStatus ^short = "The current clinical state of the condition."

* verificationStatus 1..1 MS
* verificationStatus ^short = "The verification status of the condition."


* category 1..1 MS
* category ^short = "Category of condition (e.g., problem-list-item)."


* severity 0..1 MS
* severity ^short = "Optional severity of condition."


* code 1..1 MS
* code ^short = "Identification of the condition/problem/diagnosis."


* bodySite 0..1 MS


* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "The patient who has the condition."

* encounter 1..1 MS
* encounter only Reference(Encounter)
* encounter ^short = "Encounter during which this condition was asserted."

* onset[x] 0..1 MS
* onsetDateTime 1..1 MS
* onsetDateTime ^short = "When the condition started (required if onset is provided)."

* onsetAge 0..1 MS
* onsetPeriod 0..1 MS
* onsetRange 0..1 MS
* onsetString 0..1 MS

* recordedDate 1..1 MS
* recordedDate ^short = "Date the condition record was created."


* recorder 1..1 MS
* recorder only Reference(Practitioner)
* recorder ^short = "Practitioner recording the condition."


* asserter 0..1 MS
* asserter only Reference(Practitioner)
* asserter ^short = "The individual who asserted the condition."