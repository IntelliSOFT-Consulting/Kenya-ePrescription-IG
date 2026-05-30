// ============================================================================
// Extension Examples – Kenya ePrescription IG
// Demonstrates all five custom extensions defined in extensions.fsh.
// ============================================================================


// ----------------------------------------------------------------------------
// MedicationRequest with four extensions:
//   1. PrescriptionDigitalSignature  (prescription-digital-signature)
//   2. RefillAuthorization           (refill-authorization)
//   3. ControlledSubstanceSchedule   (controlled-substance-schedule)
//   4. InsurancePreAuthorization     (insurance-pre-authorization)
// ----------------------------------------------------------------------------
Instance: example-medicationrequest-with-extensions
InstanceOf: KEMedicationRequest
Usage: #example
Title: "MedicationRequest – Extensions: Digital Signature, Refill, Controlled Substance, Insurance Auth"
Description: "MedicationRequest for Metformin 500 mg demonstrating the PrescriptionDigitalSignature, RefillAuthorization, ControlledSubstanceSchedule, and InsurancePreAuthorization custom extensions defined in the Kenya ePrescription IG."

* id = "example-medicationrequest-with-extensions"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-medication-request"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Prescription RX-2025-EXT-00001 – Extension Demonstration</b></p><p>Metformin 500 mg twice daily for James Otieno, prescribed by Dr. Sarah Njoroge. Demonstrates: digital signature, refill authorization (3 refills), controlled substance schedule (not controlled), and SHA insurance pre-authorization SHA-2025-AUTH-001234 valid 15 Jun–15 Sep 2025.</p></div>"

// -- Extension 0: PrescriptionDigitalSignature --
* extension[0].url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/prescription-digital-signature"
* extension[0].extension[0].url = "signatureType"
* extension[0].extension[0].valueCoding.system  = "urn:iso-astm:E1762-95:2013"
* extension[0].extension[0].valueCoding.code    = #1.2.840.10065.1.12.1.1
* extension[0].extension[0].valueCoding.display = "Author's Signature"
* extension[0].extension[1].url = "signatureValue"
* extension[0].extension[1].valueBase64Binary   = "U0lHTkFUVVJFX1BMQUNFSE9MREVS"
* extension[0].extension[2].url = "signedBy"
* extension[0].extension[2].valueReference      = Reference(example-practitioner-njoroge)
* extension[0].extension[3].url = "signedOn"
* extension[0].extension[3].valueInstant        = "2025-06-15T09:30:00+03:00"

// -- Extension 1: RefillAuthorization --
* extension[1].url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/refill-authorization"
* extension[1].extension[0].url = "authorizedRefills"
* extension[1].extension[0].valueUnsignedInt    = 3
* extension[1].extension[1].url = "remainingRefills"
* extension[1].extension[1].valueUnsignedInt    = 3
* extension[1].extension[2].url = "earliestRefillDate"
* extension[1].extension[2].valueDate           = "2025-07-15"

// -- Extension 2: ControlledSubstanceSchedule --
* extension[2].url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/controlled-substance-schedule"
* extension[2].extension[0].url = "isControlled"
* extension[2].extension[0].valueBoolean        = false

// -- Extension 3: InsurancePreAuthorization --
* extension[3].url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/insurance-pre-authorization"
* extension[3].extension[0].url = "authorizationNumber"
* extension[3].extension[0].valueString         = "SHA-2025-AUTH-001234"
* extension[3].extension[1].url = "insurerName"
* extension[3].extension[1].valueString         = "Social Health Authority (SHA)"
* extension[3].extension[2].url = "validFrom"
* extension[3].extension[2].valueDate           = "2025-06-15"
* extension[3].extension[3].url = "validTo"
* extension[3].extension[3].valueDate           = "2025-09-15"

// -- Standard required fields --
* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/prescription-identifier"
* identifier[0].value  = "RX-2025-EXT-00001"

* status   = #active
* intent   = #order
* category[0] = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient "Outpatient"

* medicationCodeableConcept = https://nshr-uat.sha.go.ke/fhir/CodeSystem/generic-products-cs#GE10002 "Metformin 500 mg Oral Tablet"

* subject     = Reference(example-patient-otieno)
* authoredOn  = "2025-06-15"
* requester   = Reference(example-practitioner-njoroge)

* dosageInstruction[0].text = "Take 1 tablet (500 mg) by mouth twice daily with meals"
* dosageInstruction[0].timing.repeat.frequency  = 2
* dosageInstruction[0].timing.repeat.period     = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].route = https://nshr-uat.sha.go.ke/fhir/CodeSystem/route-of-administration-cs#RT10025 "Oral"
* dosageInstruction[0].doseAndRate[0].doseQuantity.value  = 500
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit   = "mg"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code   = #mg

* dispenseRequest.quantity.value  = 60
* dispenseRequest.quantity.unit   = "tablet"
* dispenseRequest.quantity.system = "http://unitsofmeasure.org"
* dispenseRequest.quantity.code   = #1
* dispenseRequest.numberOfRepeatsAllowed = 3

* substitution.allowedBoolean = true


// ----------------------------------------------------------------------------
// MedicationDispense with one extension:
//   5. DispenseNotification  (dispense-notification)
// ----------------------------------------------------------------------------
Instance: example-medicationdispense-with-notification
InstanceOf: KEMedicationDispense
Usage: #example
Title: "MedicationDispense – Extension: Dispense Notification"
Description: "MedicationDispense demonstrating the DispenseNotification extension, recording that both the prescriber and patient were notified by SMS after Metformin was dispensed at KNH Pharmacy."

* id = "example-medicationdispense-with-notification"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/ke-medication-dispense"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Dispense DISP-2025-EXT-00001 – Notification Extension</b></p><p>60 tablets of Metformin 500 mg dispensed at KNH Pharmacy on 15 June 2025 (30-day supply). SMS notification sent to patient at 10:35 EAT. Authorized by prescription RX-2025-EXT-00001.</p></div>"

// -- Extension 0: DispenseNotification --
* extension[0].url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/dispense-notification"
* extension[0].extension[0].url = "notificationSent"
* extension[0].extension[0].valueBoolean        = true
* extension[0].extension[1].url = "notificationChannel"
* extension[0].extension[1].valueCodeableConcept.text = "SMS"
* extension[0].extension[2].url = "notifiedOn"
* extension[0].extension[2].valueDateTime       = "2025-06-15T10:35:00+03:00"

// -- Standard required fields --
* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/dispense-identifier"
* identifier[0].value  = "DISP-2025-EXT-00001"

* status = #completed

* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#FF "First Fill"

* medicationCodeableConcept.coding[0].system  = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/generic-products-cs"
* medicationCodeableConcept.coding[0].code    = #GE10002
* medicationCodeableConcept.coding[0].display = "Metformin 500 mg Oral Tablet"
* medicationCodeableConcept.text              = "Metformin 500 mg Oral Tablet"

* subject  = Reference(example-patient-otieno)
* context  = Reference(example-encounter-otieno-inpatient)

* performer[0].actor = Reference(example-organization-knh)

* location = Reference(example-location-knh-pharmacy)

* authorizingPrescription[0] = Reference(example-medicationrequest-with-extensions)

* quantity.value  = 60
* quantity.unit   = "tablet"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code   = #1

* daysSupply.value  = 30
* daysSupply.unit   = "day"
* daysSupply.system = "http://unitsofmeasure.org"
* daysSupply.code   = #d

* whenHandedOver = "2025-06-15T10:35:00+03:00"

* substitution.wasSubstituted = false
