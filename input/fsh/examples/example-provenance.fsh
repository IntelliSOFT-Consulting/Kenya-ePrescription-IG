// ============================================================================
// Examples: KEProvenance
// Profile: ke-provenance
// ============================================================================

// ----------------------------------------------------------------------------
// VALID: Provenance – Prescription created by Dr. Njoroge
// ----------------------------------------------------------------------------
Instance: example-provenance-prescription-created
InstanceOf: KEProvenance
Usage: #example
Title: "Provenance – Prescription Created by Dr. Njoroge (VALID)"
Description: "Valid provenance record capturing the creation of Amina Hassan's Azithromycin prescription by Dr. Sarah Njoroge at KNH on 15 June 2025."

* id = "example-provenance-prescription-created"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-provenance"

* target[0] = Reference(example-medicationrequest-amina-azithromycin)

* occurredDateTime = "2025-06-15T09:30:00+03:00"

* recorded = "2025-06-15T09:30:05+03:00"

* location = Reference(example-location-knh-pharmacy)

* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(example-practitioner-njoroge)
* agent[0].onBehalfOf = Reference(example-organization-knh)


// ----------------------------------------------------------------------------
// VALID: Provenance – Dispense verified by KNH Pharmacy
// ----------------------------------------------------------------------------
Instance: example-provenance-dispense-verified
InstanceOf: KEProvenance
Usage: #example
Title: "Provenance – Dispense Verified at KNH Pharmacy (VALID)"
Description: "Valid provenance record capturing the verification and completion of Amina Hassan's Azithromycin dispense at KNH Outpatient Pharmacy."

* id = "example-provenance-dispense-verified"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-provenance"

* target[0] = Reference(example-medicationdispense-amina-azithromycin)

* occurredDateTime = "2025-06-15T10:30:00+03:00"

* recorded = "2025-06-15T10:30:15+03:00"

* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#UPDATE "update"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#performer "Performer"
* agent[0].who = Reference(example-organization-knh)

* entity[0].role = #source
* entity[0].what = Reference(example-medicationrequest-amina-azithromycin)


// ----------------------------------------------------------------------------
// VALID: Provenance – Administration recorded by Dr. Njoroge (Otieno IV cycle)
// ----------------------------------------------------------------------------
Instance: example-provenance-administration-recorded
InstanceOf: KEProvenance
Usage: #example
Title: "Provenance – Administration Recorded by Dr. Njoroge (VALID)"
Description: "Valid provenance record capturing the recording of James Otieno's IV chemotherapy administration by Dr. Sarah Njoroge at KNH, linking back to the originating prescription as a source entity."

* id = "example-provenance-administration-recorded"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-provenance"

* target[0] = Reference(example-medicationadministration-otieno-iv)

* occurredDateTime = "2025-06-15T10:00:00+03:00"

* recorded = "2025-06-15T10:00:10+03:00"

* location = Reference(example-location-knh-pharmacy)

* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(example-practitioner-njoroge)
* agent[0].onBehalfOf = Reference(example-organization-knh)

* entity[0].role = #source
* entity[0].what = Reference(example-medicationrequest-amina-azithromycin)


// ----------------------------------------------------------------------------
// VALID: Provenance – Medication statement recorded by Dr. Njoroge
// ----------------------------------------------------------------------------
Instance: example-provenance-statement-recorded
InstanceOf: KEProvenance
Usage: #example
Title: "Provenance – Medication Statement Asserted by Amina Hassan (VALID)"
Description: "Valid provenance record capturing the assertion of Amina Hassan's completed Azithromycin medication statement, as recorded in the patient's longitudinal medication history at KNH."

* id = "example-provenance-statement-recorded"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-provenance"

* target[0] = Reference(example-medicationstatement-amina-azithromycin)

* occurredDateTime = "2025-06-18T11:00:00+03:00"

* recorded = "2025-06-18T11:00:05+03:00"

* location = Reference(example-location-knh-pharmacy)

* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(example-patient-amina)
* agent[0].onBehalfOf = Reference(example-organization-knh)
