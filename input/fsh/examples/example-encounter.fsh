// ============================================================================
// Examples: KenyaEncounter
// Profile: ke-encounter
// ============================================================================

// ----------------------------------------------------------------------------
// Outpatient encounter – Amina Hassan
// ----------------------------------------------------------------------------
Instance: example-encounter-amina-outpatient
InstanceOf: KEEncounter
Usage: #example
Title: "Encounter – Amina Hassan Outpatient Consultation"
Description: "Outpatient consultation at KNH for Amina Hassan, during which a prescription for Azithromycin was issued."

* id = "example-encounter-amina-outpatient"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-encounter"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/encounter-identifier"
* identifier[0].value = "ENC-2025-OPD-00123"

* status = #finished

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"

* serviceType = http://terminology.hl7.org/CodeSystem/service-type#57 "General Practice"

* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#R "Routine"

* subject = Reference(example-patient-amina)

* participant[0].individual = Reference(example-practitioner-njoroge)

* period.start = "2025-06-15T09:00:00+03:00"
* period.end   = "2025-06-15T10:30:00+03:00"

* serviceProvider = Reference(example-organization-knh)


// ----------------------------------------------------------------------------
// Inpatient encounter – James Otieno (oncology admission)
// ----------------------------------------------------------------------------
Instance: example-encounter-otieno-inpatient
InstanceOf: KEEncounter
Usage: #example
Title: "Encounter – James Otieno Oncology Inpatient Admission"
Description: "Inpatient oncology admission for James Otieno at KNH for cancer evaluation and chemotherapy initiation."

* id = "example-encounter-otieno-inpatient"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-encounter"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/encounter-identifier"
* identifier[0].value = "ENC-2025-IPD-00456"

* status = #in-progress

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"

* serviceType = http://terminology.hl7.org/CodeSystem/service-type#218 "Oncology"

* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#R "Routine"

* subject = Reference(example-patient-otieno)

* participant[0].individual = Reference(example-practitioner-njoroge)

* period.start = "2025-06-10T08:00:00+03:00"

* hospitalization.admitSource = http://terminology.hl7.org/CodeSystem/admit-source#outp "From outpatient department"
* hospitalization.dischargeDisposition.coding[0].system = "http://terminology.hl7.org/CodeSystem/discharge-disposition"
* hospitalization.dischargeDisposition.coding[0].code = #home
* hospitalization.dischargeDisposition.coding[0].display = "Home"

* serviceProvider = Reference(example-organization-knh)
