// ============================================================
// Kenya eRx — ServiceRequest Profiles (Lab & Imaging)
// New profile — no previous counterpart
// ============================================================

// ── Abstract base ─────────────────────────────────────────
Profile: KEServiceRequestBase
Parent: ServiceRequest
Id: ke-service-request-base
Title: "Kenya eRx ServiceRequest (Base)"
Description: "Abstract base profile on ServiceRequest. Use KEServiceRequestLab or KEServiceRequestImaging in practice."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..* MS
* identifier ^short = "Identifiers assigned to this order"

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"

* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/request-intent (required)
* intent ^short = "Must be 'order'"

* priority 0..1 MS
* priority from $VS-request-priority (required)
* priority ^short = "routine | urgent | asap | stat"

* code 0..1 MS
* code ^short = "Service code — use Kenya MOH valueset when available"

* subject 1..1 MS
* subject only Reference(Patient)

* encounter 0..1 MS
* encounter only Reference(Encounter)

* occurrence[x] 0..1 MS
* occurrenceDateTime 0..1
* occurrenceDateTime ^short = "Date/time the service should occur"

* authoredOn 0..1 MS
* authoredOn ^short = "When request became actionable"

* requester 1..1 MS
* requester only Reference(Practitioner or PractitionerRole or Organization)
* requester ^short = "Who initiated this request"

* performer 0..* MS
* performer only Reference(Practitioner or PractitionerRole or Organization or CareTeam or HealthcareService)

* reasonCode 0..* MS
* reasonCode ^short = "Reason for the order — use Kenya MOH or ICD-11 codes"

* reasonReference 0..* MS
* reasonReference only Reference(Condition or Observation or DiagnosticReport or DocumentReference)

* bodySite 0..* MS
* bodySite from $VS-body-site (preferred)
* bodySite ^short = "Anatomical location of the procedure or specimen"

* specimen 0..* MS

* patientInstruction 0..1 MS
* patientInstruction ^short = "Instructions for the patient"

* note 0..* MS
* relevantHistory 0..* MS


// ── Laboratory ────────────────────────────────────────────
Profile: KEServiceRequestLab
Parent: KEServiceRequestBase
Id: ke-service-request-lab
Title: "Kenya eRx ServiceRequest — Laboratory"
Description: "Profile on ServiceRequest for laboratory investigations in the Kenya eRx Implementation Guide."

* category 1..* MS
* category ^short = "Category — fixed to 'laboratory-procedure'"
* category = $SCT#108252007 "Laboratory procedure"


// ── Imaging ───────────────────────────────────────────────
Profile: KEServiceRequestImaging
Parent: KEServiceRequestBase
Id: ke-service-request-imaging
Title: "Kenya eRx ServiceRequest — Imaging"
Description: "Profile on ServiceRequest for imaging/radiology investigations in the Kenya eRx Implementation Guide."

* category 1..* MS
* category ^short = "Category — fixed to 'imaging'"
* category = $SCT#363679005 "Imaging"
