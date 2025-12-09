Profile: KenyaEPrescriptionServiceProcedure
Parent: ServiceRequest
Id: kenya-eprescription-serviceRequestProcedure
Title: "A Procedure/Imaging Service Request Profile for ePrescription"
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
* subject only Reference(Patient)
* subject ^short = "The patient who is the subject of the request."


* encounter 0..1 MS
* encounter only Reference(Encounter)


* occurrence[x] 0..1 MS
* occurrenceDateTime 0..1 MS
* occurrenceDateTime ^short = "Date/time when the service should occur."


* authoredOn 0..1 MS

* requester 1..1 MS
* requester only Reference(Practitioner or Organization)
* requester ^short = "Individual or organization making the request."

* performer 0..* MS
* performer only Reference(Practitioner or Organization)

* reasonCode 0..* MS


* reasonReference 0..* MS
* reasonReference only Reference(Condition or Observation)

* bodySite 0..* MS
* specimen 0..* MS
* specimen only Reference(Specimen)

* patientInstruction 0..1 MS
* note 0..* MS