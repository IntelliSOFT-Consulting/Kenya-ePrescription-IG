// ============================================================================
// Example: KenyaMedicationDispense
// Profile: ke-medication-dispense
// ============================================================================

Instance: example-medicationdispense-amina-azithromycin
InstanceOf: KenyaMedicationDispense
Usage: #example
Title: "MedicationDispense – Amina Hassan Azithromycin First Fill"
Description: "First-fill dispense of Azithromycin 500 mg (3 tablets) at KNH Outpatient Pharmacy against Amina Hassan's prescription."

* id = "example-medicationdispense-amina-azithromycin"
* meta.profile[0] = "https://prescription.intellisoftkenya.com/StructureDefinition/ke-medication-dispense"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/dispense-identifier"
* identifier[0].value = "DISP-2025-OPD-00456"

* status = #completed

* medicationCodeableConcept.coding[0].system = "https://ilm-hie.dha.go.ke/fhir/CodeSystem/generic-products"
* medicationCodeableConcept.coding[0].code = #GE10015
* medicationCodeableConcept.coding[0].display = "Azithromycin 500 mg Oral Tablet"
* medicationCodeableConcept.text = "Azithromycin 500 mg Oral Tablet"

* subject = Reference(example-patient-amina)

* context = Reference(example-encounter-amina-outpatient)

* performer[0].actor = Reference(example-organization-knh)

* location = Reference(example-location-knh-pharmacy)

* authorizingPrescription[0] = Reference(example-medicationrequest-amina-azithromycin)

* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#FF "First Fill"

* quantity.value = 3
* quantity.unit = "tablet"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #{tablet}

* daysSupply.value = 3
* daysSupply.unit = "day"
* daysSupply.system = "http://unitsofmeasure.org"
* daysSupply.code = #d

* whenPrepared = "2025-06-15T10:15:00+03:00"
* whenHandedOver = "2025-06-15T10:30:00+03:00"

* dosageInstruction[0].text = "Take 1 tablet (500 mg) by mouth once daily for 3 days"
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].route = https://ilm-hie.dha.go.ke/fhir/CodeSystem/route-of-administration#RT10025 "Oral"

// No substitution occurred
* substitution.wasSubstituted = false
