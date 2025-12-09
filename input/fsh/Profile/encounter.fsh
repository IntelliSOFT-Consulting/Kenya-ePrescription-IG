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
* hospitalization.reAdmission.coding.code 1..1 MS
* hospitalization.reAdmission.coding.system 1..1 MS
* hospitalization.reAdmission.coding.display 1..1 MS
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




Instance: ExampleKenyaEPrescriptionEncounter
InstanceOf: KenyaEPrescriptionEncounter
Title: "Example Encounter - ePrescription"
Description: "Example instance of an Encounter for the ePrescription workflow."

* id = "enc-12345"
* meta.profile[0] = "http://example.org/fhir/StructureDefinition/kenya-eprescription-encounter"

* identifier.system = "http://example.org/encounters"
* identifier.value = "ENC-2025-0001"

* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "Ambulatory"

* serviceType.coding.system = "http://snomed.info/sct"
* serviceType.coding.code = #408443003
* serviceType.coding.display = "General medical service"

* priority.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
* priority.coding.code = #R
* priority.coding.display = "Routine"

* subject = Reference(ExampleKenyaEPrescriptionPatient)

* period.start = "2025-01-11T09:10:00+03:00"
* period.end = "2025-01-11T09:25:00+03:00"

* hospitalization.origin = Reference(ExampleKenyaEPrescriptionOrganization)
* hospitalization.admitSource.coding.system = "http://terminology.hl7.org/CodeSystem/admit-source"
* hospitalization.admitSource.coding.code = #emd
* hospitalization.admitSource.coding.display = "Emergency department"
* hospitalization.reAdmission.coding.code = #R
* hospitalization.reAdmission.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0092"
* hospitalization.reAdmission.coding.display = "Re-admission"
* hospitalization.dischargeDisposition.coding.system = "http://terminology.hl7.org/CodeSystem/discharge-disposition"
* hospitalization.dischargeDisposition.coding.code = #home
* hospitalization.dischargeDisposition.coding.display = "Discharged to home"

* serviceProvider = Reference(ExampleKenyaEPrescriptionOrganization)

* participant.individual = Reference(ExampleKenyaEPrescriptionPractitioner)
