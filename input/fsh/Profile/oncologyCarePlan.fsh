Profile: KenyaOncologyCarePlan
Parent: CarePlan
Id: oncology-careplan
Title: "Kenya Oncology CarePlan"
Description: "CarePlan profile with required elements and activity constraints."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* id 1..1 MS
* instantiatesUri 0..* MS
* identifier 1..* MS

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"

* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/care-plan-intent (required)
* intent ^short = "proposal | plan | order | option"

* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/care-plan-category (extensible)
* category ^short = "Type of plan"

* title 1..1 MS
* description 0..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* encounter 1..1 MS
* period 1..1 MS

* author 1..1 MS
* careTeam 1..* MS
* addresses 1..* MS
* contained 1..* MS
* supportingInfo 0..* MS
* goal 0..* MS

* activity 1..* MS
* activity.detail 0..1 MS
* activity.detail.code 0..1 MS
* activity.detail.code from http://hl7.org/fhir/ValueSet/procedure-code (extensible)
* activity.detail.code ^short = "Detail type of activity"
* activity.detail.reasonCode 0..* MS
* activity.detail.reasonCode from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)
* activity.detail.reasonCode ^short = "Why activity should be done or why it was prohibited"
* activity.detail.reasonReference 0..* MS
* activity.detail.reasonReference only Reference(Condition or Observation or DiagnosticReport or DocumentReference)
* activity.detail.status 1..1 MS
* activity.detail.status from http://hl7.org/fhir/ValueSet/care-plan-activity-status (required)
* activity.detail.status ^short = "not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error"
* activity.detail.doNotPerform 0..1 MS
* activity.detail.doNotPerform ^short = "If true, activity is prohibiting action"
