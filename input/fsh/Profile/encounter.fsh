Profile:        KenyaEncounter
Parent:         Encounter
Id:             ke-encounter
Title:          "Kenya Encounter Profile"
Description:    "Encounter profile constrained to the specified Kenya dataset." 


* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..1 MS 
* status 1..1 MS
* class 1..1 MS

* serviceType 0..1 MS
* priority 0..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* period 1..1 MS 
* hospitalization 0..1 MS

* hospitalization.origin 0..1 MS
* hospitalization.origin only Reference(Location or Organization)

* hospitalization.admitSource 0..1 MS
* hospitalization.reAdmission 0..1 MS
* hospitalization.dischargeDisposition 0..1 MS 
* serviceProvider 1..1 MS
* serviceProvider only Reference(Organization) 
* participant 1..* MS
* participant.individual 1..1 MS
* participant.individual only Reference(Practitioner)
