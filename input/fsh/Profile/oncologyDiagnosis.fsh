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
* clinicalStatus from https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-CLINICAL-STATUS (required)
* clinicalStatus ^short = "active | recurrence | relapse | inactive | remission | resolved"

* verificationStatus 1..1 MS
* verificationStatus from https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-VERIFICATION-STATUS (required)
* verificationStatus ^short = "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"

* category 1..1 MS
* category from https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-CATEGORY (extensible)
* category ^short = "problem-list-item | encounter-diagnosis"

* severity 0..1 MS
* severity from http://hl7.org/fhir/ValueSet/condition-severity (extensible)
* severity ^short = "Subjective severity of condition"

* code 1..1 MS
* code from https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-CODES (extensible)
* code ^short = "Identification of the condition, problem or diagnosis"

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* bodySite ^short = "Anatomical location, if relevant"

* subject 1..1 MS
* subject only Reference(Patient)

* encounter 1..1 MS
* encounter only Reference(Encounter)

* onset[x] 0..1 MS
* onset[x] only dateTime or Age or string
* onsetDateTime 1..1 MS
* onsetDateTime ^short = "Estimated or actual date/time of onset"

* abatement[x] 0..1 MS

* recordedDate 1..1 MS

* recorder 0..1 MS
* recorder only Reference(Practitioner)

* asserter 0..1 MS
* asserter only Reference(Practitioner)

* stage 1..1 MS
* stage.summary 0..1 MS
* stage.summary from http://hl7.org/fhir/ValueSet/condition-stage (extensible)
* stage.summary ^short = "Simple summary (disease specific)"
* stage.assessment 0..1 MS
* stage.assessment only Reference(DiagnosticReport or Observation)
* stage.type 0..1 MS
* stage.type from http://hl7.org/fhir/ValueSet/condition-stage-type (extensible)
* stage.type ^short = "Kind of staging"

* evidence 0..1 MS
* evidence.code 0..1 MS
* evidence.code from http://hl7.org/fhir/ValueSet/manifestation-or-symptom (extensible)
* evidence.code ^short = "Manifestation/symptom"

* note 0..* MS
