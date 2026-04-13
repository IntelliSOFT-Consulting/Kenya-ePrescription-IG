// ============================================================================
// Custom Extensions – Kenya ePrescription IG
// ============================================================================

// ----------------------------------------------------------------------------
// 1. PrescriptionDigitalSignature
//    Applied to: MedicationRequest
//    Purpose:    Captures the prescriber's digital signature or e-authorization
//                reference, supporting regulatory and audit requirements.
// ----------------------------------------------------------------------------
Extension: PrescriptionDigitalSignatureExtension
Id: prescription-digital-signature
Title: "Prescription Digital Signature"
Description: "A reference to a digital signature or electronic authorization applied to a prescription by the prescribing practitioner, as required under Kenya e-Health regulations."

* ^url    = "https://prescription.intellisoftkenya.com/StructureDefinition/prescription-digital-signature"
* ^status = #active
* ^context[0].type       = #element
* ^context[0].expression = "MedicationRequest"

* extension contains
    signatureType  1..1 and
    signatureValue 1..1 and
    signedBy       1..1 and
    signedOn       1..1

* extension[signatureType].value[x] only Coding
* extension[signatureType].valueCoding from http://hl7.org/fhir/ValueSet/signature-type (extensible)
* extension[signatureType] ^short = "Type of digital signature (e.g. author, co-author)"

* extension[signatureValue].value[x] only base64Binary
* extension[signatureValue] ^short = "Base64-encoded digital signature blob"

* extension[signedBy].value[x] only Reference(Practitioner)
* extension[signedBy] ^short = "Practitioner who applied the signature"

* extension[signedOn].value[x] only instant
* extension[signedOn] ^short = "Date and time the signature was applied"


// ----------------------------------------------------------------------------
// 2. InsurancePreAuthorization
//    Applied to: MedicationRequest, MedicationDispense
//    Purpose:    Records NHIF/SHIF pre-authorization reference numbers required
//                for high-cost or controlled medications.
// ----------------------------------------------------------------------------
Extension: InsurancePreAuthorizationExtension
Id: insurance-pre-authorization
Title: "Insurance Pre-Authorization"
Description: "Captures an insurance pre-authorization number issued by NHIF, SHIF, or a private insurer for a specific medication or treatment, enabling claim adjudication downstream."

* ^url    = "https://prescription.intellisoftkenya.com/StructureDefinition/insurance-pre-authorization"
* ^status = #active
* ^context[0].type       = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type       = #element
* ^context[1].expression = "MedicationDispense"

* extension contains
    authorizationNumber 1..1 and
    insurerName         1..1 and
    validFrom           0..1 and
    validTo             0..1

* extension[authorizationNumber].value[x] only string
* extension[authorizationNumber] ^short = "Pre-authorization reference number from insurer"

* extension[insurerName].value[x] only string
* extension[insurerName] ^short = "Name of insurer (e.g. NHIF, SHA, APA Insurance)"

* extension[validFrom].value[x] only date
* extension[validFrom] ^short = "Start date of the authorization period"

* extension[validTo].value[x] only date
* extension[validTo] ^short = "Expiry date of the authorization period"


// ----------------------------------------------------------------------------
// 3. RefillAuthorization
//    Applied to: MedicationRequest
//    Purpose:    Tracks remaining authorized refills and refill eligibility
//                dates for chronic-disease prescriptions.
// ----------------------------------------------------------------------------
Extension: RefillAuthorizationExtension
Id: refill-authorization
Title: "Refill Authorization"
Description: "Records the number of refills authorized and remaining, together with the earliest eligible refill date, supporting chronic medication management workflows."

* ^url    = "https://prescription.intellisoftkenya.com/StructureDefinition/refill-authorization"
* ^status = #active
* ^context[0].type       = #element
* ^context[0].expression = "MedicationRequest"

* extension contains
    authorizedRefills  1..1 and
    remainingRefills   0..1 and
    earliestRefillDate 0..1

* extension[authorizedRefills].value[x] only unsignedInt
* extension[authorizedRefills] ^short = "Total number of refills authorized by the prescriber"

* extension[remainingRefills].value[x] only unsignedInt
* extension[remainingRefills] ^short = "Number of refills still available to the patient"

* extension[earliestRefillDate].value[x] only date
* extension[earliestRefillDate] ^short = "Earliest date the patient may collect the next refill"


// ----------------------------------------------------------------------------
// 4. ControlledSubstanceSchedule
//    Applied to: MedicationRequest, Medication
//    Purpose:    Flags a prescription or medication as a controlled substance
//                under the Kenya Pharmacy and Poisons Act, and records the
//                regulatory schedule (I–IV).
// ----------------------------------------------------------------------------
Extension: ControlledSubstanceScheduleExtension
Id: controlled-substance-schedule
Title: "Controlled Substance Schedule"
Description: "Indicates that the medication is a controlled substance under the Kenya Pharmacy and Poisons Act, and specifies its regulatory schedule (I through IV). Required for narcotic, psychotropic, and other scheduled medicines."

* ^url    = "https://prescription.intellisoftkenya.com/StructureDefinition/controlled-substance-schedule"
* ^status = #active
* ^context[0].type       = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type       = #element
* ^context[1].expression = "Medication"

* extension contains
    isControlled 1..1 and
    schedule     0..1

* extension[isControlled].value[x] only boolean
* extension[isControlled] ^short = "True if the medication is a controlled substance"

* extension[schedule].value[x] only CodeableConcept
* extension[schedule].valueCodeableConcept from ControlledSubstanceScheduleVS (required)
* extension[schedule] ^short = "Regulatory schedule under the Kenya Pharmacy and Poisons Act"


// ----------------------------------------------------------------------------
// 5. DispenseNotification
//    Applied to: MedicationDispense
//    Purpose:    Records whether the prescribing practitioner and/or patient
//                were notified of the dispensing event, supporting HIE messaging.
// ----------------------------------------------------------------------------
Extension: DispenseNotificationExtension
Id: dispense-notification
Title: "Dispense Notification"
Description: "Indicates whether a notification was sent to the prescriber and/or patient following a dispensing event, and the communication channel used."

* ^url    = "https://prescription.intellisoftkenya.com/StructureDefinition/dispense-notification"
* ^status = #active
* ^context[0].type       = #element
* ^context[0].expression = "MedicationDispense"

* extension contains
    notificationSent    1..1 and
    notificationChannel 0..1 and
    notifiedOn          0..1

* extension[notificationSent].value[x] only boolean
* extension[notificationSent] ^short = "Whether a notification was dispatched"

* extension[notificationChannel].value[x] only CodeableConcept
* extension[notificationChannel] ^short = "Channel used (SMS, email, HIE message, app push)"

* extension[notifiedOn].value[x] only dateTime
* extension[notifiedOn] ^short = "Date and time the notification was sent"


// ============================================================================
// Supporting ValueSet for ControlledSubstanceScheduleExtension
// ============================================================================
ValueSet: ControlledSubstanceScheduleVS
Id: controlled-substance-schedule-vs
Title: "Controlled Substance Schedule ValueSet"
Description: "Regulatory schedules for controlled substances as defined under the Kenya Pharmacy and Poisons Act, Cap 244."

* ^url    = "https://prescription.intellisoftkenya.com/ValueSet/controlled-substance-schedule"
* ^status = #active
* include codes from system ControlledSubstanceScheduleCS


CodeSystem: ControlledSubstanceScheduleCS
Id: controlled-substance-schedule-cs
Title: "Controlled Substance Schedule CodeSystem"
Description: "Schedules for controlled substances under the Kenya Pharmacy and Poisons Act."

* ^url         = "https://prescription.intellisoftkenya.com/CodeSystem/controlled-substance-schedule"
* ^status      = #active
* ^content     = #complete
* ^caseSensitive = true

* #schedule-I   "Schedule I"   "Substances with high abuse potential and no accepted medical use (e.g. heroin)."
* #schedule-II  "Schedule II"  "High abuse potential with severe dependence liability; accepted medical use with restrictions (e.g. morphine, fentanyl)."
* #schedule-III "Schedule III" "Moderate-to-low physical dependence and high psychological dependence potential (e.g. codeine combinations)."
* #schedule-IV  "Schedule IV"  "Lower abuse potential relative to schedule III (e.g. benzodiazepines, tramadol)."
