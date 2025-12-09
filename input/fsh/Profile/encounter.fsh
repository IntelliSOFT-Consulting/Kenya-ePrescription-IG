Profile: KenyaEPrescriptionEncounter
Parent: Encounter
Id: kenya-eprescription-encounter
Title: "Encounter - ePrescription"
Description: "Encounter constraints for ePrescription workflow."

* id 1..1 MS
* id ^short = "Unique identifier for this Encounter within the bundle."


* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."


* identifier 1..1 MS
* identifier ^short = "Identifier by which this encounter is known."


* status 1..1 MS
* status ^short = "Current state of the encounter."

* class 1..1 MS
* class ^short = "Classification such as ambulatory, inpatient, emergency."

* serviceType 0..1 MS
* serviceType ^short = "Broad categorization of the service provided (e.g., cardiology)."


* priority 0..1 MS
* priority ^short = "Indicates urgency of encounter."


* subject 1..1 MS
* subject only Reference(KenyaEPrescriptionPatient)
* subject ^short = "The patient or group present at the encounter."


* period 1..1 MS
* period.start 0..1 MS
* period.start ^short = "The start time of the encounter."
* period.end 0..1 MS
* period.end ^short = "The end time of the encounter."


* hospitalization 0..1 MS
* hospitalization.origin 0..1 MS
* hospitalization.origin ^short = "Location/organization patient came from before admission."

* hospitalization.admitSource 0..1 MS
* hospitalization.admitSource ^short = "From where patient was admitted."

* hospitalization.reAdmission 0..1 MS
* hospitalization.reAdmission ^short = "Type of hospital re-admission (if any)."

* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.dischargeDisposition ^short = "Category of location after discharge."


* serviceProvider 1..1 MS
* serviceProvider only Reference(KenyaEPrescriptionOrganization)
* serviceProvider ^short = "Organization primarily responsible for the Encounter."


* participant 1..1 MS
* participant.individual 1..1 MS
* participant.individual only Reference(KenyaEPrescriptionPractitioner)
* participant ^short = "The practitioner involved in the encounter."