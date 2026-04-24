// ============================================================================
// Shared (non-profiled) helper resources referenced by all profiled examples
// ============================================================================

// ----------------------------------------------------------------------------
// Patient – Amina Hassan (outpatient / general scenarios)
// ----------------------------------------------------------------------------
Instance: example-patient-amina
InstanceOf: Patient
Usage: #example
Title: "Patient – Amina Hassan"
Description: "Fictional Kenyan patient used across ePrescription, dispensing and allergy examples."

* id = "example-patient-amina"
* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/national-id"
* identifier[0].value = "29834765"
* name[0].use = #official
* name[0].family = "Hassan"
* name[0].given[0] = "Amina"
* gender = #female
* birthDate = "1988-04-15"
* telecom[0].system = #phone
* telecom[0].value = "+254711234567"
* address[0].city = "Nairobi"
* address[0].country = "KE"


// ----------------------------------------------------------------------------
// Patient – James Otieno (oncology scenario)
// ----------------------------------------------------------------------------
Instance: example-patient-otieno
InstanceOf: Patient
Usage: #example
Title: "Patient – James Otieno"
Description: "Fictional Kenyan oncology patient used in morphology, diagnosis, care plan and administration examples."

* id = "example-patient-otieno"
* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/national-id"
* identifier[0].value = "10293847"
* name[0].use = #official
* name[0].family = "Otieno"
* name[0].given[0] = "James"
* gender = #male
* birthDate = "1968-09-20"
* telecom[0].system = #phone
* telecom[0].value = "+254722987654"
* address[0].city = "Kisumu"
* address[0].country = "KE"


// ----------------------------------------------------------------------------
// Practitioner – Dr. Sarah Njoroge
// ----------------------------------------------------------------------------
Instance: example-practitioner-njoroge
InstanceOf: Practitioner
Usage: #example
Title: "Practitioner – Dr. Sarah Njoroge"
Description: "Fictional Kenyan general-practitioner / oncologist referenced by prescriptions, encounters and observations."

* id = "example-practitioner-njoroge"
* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/medical-licence"
* identifier[0].value = "KE-MED-00123"
* name[0].use = #official
* name[0].family = "Njoroge"
* name[0].given[0] = "Sarah"
* name[0].prefix[0] = "Dr."
* telecom[0].system = #email
* telecom[0].value = "s.njoroge@knh.go.ke"
* qualification[0].identifier[0].value = "KE-MED-00123"
* qualification[0].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"


// ----------------------------------------------------------------------------
// Organization – Kenyatta National Hospital
// ----------------------------------------------------------------------------
Instance: example-organization-knh
InstanceOf: Organization
Usage: #example
Title: "Organization – Kenyatta National Hospital"
Description: "Kenyatta National Hospital, Nairobi – used as service provider, dispenser and performer."

* id = "example-organization-knh"
* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/facility-code"
* identifier[0].value = "KNH-001"
* name = "Kenyatta National Hospital"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* telecom[0].system = #phone
* telecom[0].value = "+254202726300"
* address[0].line[0] = "Hospital Road"
* address[0].city = "Nairobi"
* address[0].country = "KE"


// ----------------------------------------------------------------------------
// Location – KNH Outpatient Pharmacy
// ----------------------------------------------------------------------------
Instance: example-location-knh-pharmacy
InstanceOf: Location
Usage: #example
Title: "Location – KNH Outpatient Pharmacy"
Description: "Outpatient pharmacy at Kenyatta National Hospital."

* id = "example-location-knh-pharmacy"
* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/location-code"
* identifier[0].value = "KNH-PHARM-01"
* name = "KNH Outpatient Pharmacy"
* type[0] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PHARM "Pharmacy"
* managingOrganization = Reference(example-organization-knh)
* address.line[0] = "Ground Floor, Main Block"
* address.city = "Nairobi"
* address.country = "KE"


// ----------------------------------------------------------------------------
// Condition – James Otieno Lung Cancer (shared placeholder for EpisodeOfCare)
// ----------------------------------------------------------------------------
Instance: example-condition-otieno-lungcancer
InstanceOf: Condition
Usage: #example
Title: "Condition – James Otieno Lung Cancer"
Description: "Lung carcinoma condition for James Otieno, referenced by the oncology episode of care."

* id = "example-condition-otieno-lungcancer"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical-status#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = http://hl7.org/fhir/sid/icd-10#C34.1 "Malignant neoplasm of upper lobe, bronchus or lung"
* subject = Reference(example-patient-otieno)
* onsetDateTime = "2025-06-10"
* recordedDate = "2025-06-10"


// ----------------------------------------------------------------------------
// Inline CareTeam – used inside the OncologyCarePlan contained element
// ----------------------------------------------------------------------------
Instance: inline-careteam-oncology
InstanceOf: CareTeam
Usage: #inline
Title: "Inline CareTeam – Oncology"
Description: "Multidisciplinary oncology care team contained within the oncology care plan."

* id = "inline-careteam-oncology"
* name = "KNH Oncology MDT"
* participant[0].member = Reference(example-practitioner-njoroge)
* managingOrganization[0] = Reference(example-organization-knh)
