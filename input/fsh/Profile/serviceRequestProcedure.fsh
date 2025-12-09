Profile: KenyaEPrescriptionServiceProcedure
Parent: ServiceRequest
Id: kenya-eprescription-serviceRequestProcedure
Title: "Service Request - Procedure/Imaging"
Description: "Constraints for a procedure/Imaging lab service Request in the ePrescription workflow."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..1 MS
* identifier ^short = "Business identifier for this ServiceRequest."


* status 1..1 MS
* intent 1..1 MS
* category 0..* MS

* priority 0..1 MS

* code 0..1 MS

* subject 1..1 MS
* subject only Reference(KenyaEPrescriptionPatient)
* subject ^short = "The patient who is the subject of the request."


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


Instance: Example-KenyaEPrescriptionServiceRequestProcedure
InstanceOf: KenyaEPrescriptionServiceProcedure
Title: "Example ServiceRequest - Procedure/Imaging"
Description: "Example of a procedure/imaging ServiceRequest for the ePrescription workflow."

* id = "srvreq-procedure-001"
* meta.profile[0] = "http://example.org/fhir/StructureDefinition/kenya-eprescription-serviceRequestProcedure"

* identifier[0].system = "http://moh.health.go.ke/servicerequest-ids"
* identifier[0].value = "PROC-REQ-2025-0001"

* status = #active
* intent = #order

* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/service-category"
* category[0].coding[0].code = #imaging
* category[0].coding[0].display = "Imaging"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #36626-8
* code.coding[0].display = "CT Chest"

* subject = Reference(Example-KenyaEPrescriptionPatient)

* encounter = Reference(Example-KenyaEPrescriptionEncounter)

* occurrenceDateTime = "2025-02-12T10:30:00+03:00"

* authoredOn = "2025-02-10T09:00:00+03:00"

* requester = Reference(Example-KenyaEPrescriptionPractitioner)

* performer[0] = Reference(Example-KenyaEPrescriptionOrganization)

* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #267036007
* reasonCode[0].coding[0].display = "Chest pain"

* bodySite[0].coding[0].system = "http://snomed.info/sct"
* bodySite[0].coding[0].code = #51185008
* bodySite[0].coding[0].display = "Thoracic region"

* specimen[0] = Reference(Example-Specimen)

* patientInstruction = "Please avoid eating 4 hours before the scan."

* note[0].text = "Urgent request due to worsening symptoms."
