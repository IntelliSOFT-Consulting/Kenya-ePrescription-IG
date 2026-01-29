Profile:        KenyaOncologyDiagnosisCondition
Parent:         Condition
Id:             kenya-oncology-diagnosis-condition
Title:          "Kenya Oncology Diagnosis Condition Profile"
Description:    "Condition profile for recording diagnoses and patient conditions at facility level."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* identifier 0..1 MS 
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS

* category 1..1 MS
// * category.coding.code = #encounter-diagnosis 
* severity 0..1 MS
* code 1..1 MS 
* bodySite 0..1 MS 
* subject 1..1 MS
* subject only Reference(Patient)

* encounter 1..1 MS
* encounter only Reference(Encounter) 
* onset[x] 0..1 MS
* onset[x] only dateTime or Age or string

* onsetDateTime 1..1 MS 
* abatement[x] 0..1 MS 
* recordedDate 1..1 MS

* recorder 0..1 MS
* recorder only Reference(Practitioner) 

* asserter 0..1 MS
* asserter only Reference(Practitioner) 
* stage 1..1 MS

* stage.summary 0..1 MS
* stage.assessment 0..1 MS
* stage.assessment only Reference(DiagnosticReport or Observation)

* stage.type 0..1 MS 
* evidence 0..1 MS
* evidence.code 0..1 MS
* note 0..* MS
