Profile: KenyaEPrescriptionServiceRequestLab
Parent: ServiceRequest
Id: kenya-eprescription-serviceRequestLab
Title: "ServiceRequest - lab"
Description: "Constraints for a lab service Request in the ePrescription workflow."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..1 MS
* identifier ^short = "Business identifier for this request."


* status 1..1 MS


* intent 1..1 MS


* category 0..* MS


* priority 0..1 MS


* code 0..1 MS


* subject 1..1 MS
* subject only Reference(KenyaEPrescriptionPatient)
* subject ^short = "The patient who is the subject of the service request."

* encounter 0..1 MS
* encounter only Reference(KenyaEPrescriptionEncounter)


* occurrence[x] 0..1 MS
* occurrenceDateTime 0..1 MS
* occurrenceDateTime ^short = "Date/time when the service should occur."


* authoredOn 0..1 MS


* requester 1..1 MS
* requester only Reference(KenyaEPrescriptionPractitioner or KenyaEPrescriptionOrganization)
* requester ^short = "Individual or organization making the request."


* performer 0..* MS
* performer only Reference(KenyaEPrescriptionPractitioner or KenyaEPrescriptionOrganization)


* reasonCode 0..* MS

* reasonReference 0..* MS
* reasonReference only Reference(KenyaEPrescriptionCondition or Observation)

* bodySite 0..* MS

* specimen 0..* MS
* specimen only Reference(Specimen)

* patientInstruction 0..1 MS

* note 0..* MS



Instance: ExampleKenyaEPrescriptionServiceRequestLab
InstanceOf: KenyaEPrescriptionServiceRequestLab
Title: "Example Lab ServiceRequest"
Description: "Example instance of a lab ServiceRequest in the Kenya ePrescription workflow."

* meta.profile[0] = "http://example.org/fhir/StructureDefinition/kenya-eprescription-serviceRequestLab"

* identifier.system = "http://example.org/fhir/ePrescription/lab-requests"
* identifier.value = "LAB-REQ-2025-0001"

* status = #active
* intent = #order
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/servicerequest-category"
* category[0].coding[0].code = #laboratory
* category[0].coding[0].display = "Laboratory"

* priority = #routine

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #718-7
* code.coding[0].display = "Hemoglobin [Mass/volume] in Blood"

* subject = Reference(ExampleKenyaEPrescriptionPatient)

* encounter = Reference(ExampleKenyaEPrescriptionEncounter)

* occurrenceDateTime = "2025-02-14T09:30:00+03:00"
* authoredOn = "2025-02-14T08:55:00+03:00"

* requester = Reference(ExampleKenyaEPrescriptionPractitioner)

* performer[0] = Reference(ExampleKenyaEPrescriptionOrganization)

* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #271327008
* reasonCode[0].coding[0].display = "Anemia"

* specimen[0] = Reference(ExampleSpecimenBloodSample)

* patientInstruction = "Patient should fast for 8 hours before blood collection."

* note[0].text = "Urgent test requested due to patient's symptoms."
