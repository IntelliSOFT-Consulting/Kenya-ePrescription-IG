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
* intent 1..1 MS
* category 1..* MS
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
* activity.detail.reasonCode 0..* MS
* activity.detail.reasonReference 0..* MS
* activity.detail.code 0..1 MS
* activity.detail.status 1..1 MS
