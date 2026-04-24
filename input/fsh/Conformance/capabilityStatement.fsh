// ============================================================================
// CapabilityStatement – Kenya ePrescription Server
// Describes the FHIR R4 server capabilities for the Kenya ePrescription
// system hosted at the national Health Information Exchange (HIE).
// ============================================================================

Instance: kenya-eprescription-server-capability
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Kenya ePrescription Server CapabilityStatement"
Description: "Declares the FHIR R4 capabilities of the Kenya national ePrescription server. Implementers must support all SHALL interactions and SHOULD support all SHOULD interactions to claim conformance with this IG."

* id          = "kenya-eprescription-server-capability"
* url         = "https://nshr-uat.sha.go.ke/CapabilityStatement/kenya-eprescription-server"
* version     = "0.1.0"
* name        = "KenyaEPrescriptionServerCapabilityStatement"
* title       = "Kenya ePrescription Server CapabilityStatement"
* status      = #draft
* experimental = true
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* contact[0].name = "Digital Health Agency – FHIR Team"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value  = "fhir@dha.go.ke"
* description = "This CapabilityStatement defines the conformance requirements for any system claiming to be a Kenya ePrescription server. It covers the core prescription-to-dispense workflow as well as oncology care plan and allergy management capabilities."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* kind        = #requirements
* fhirVersion = #4.0.1
* format[0]   = #json
* format[1]   = #xml

// ============================================================================
// REST capabilities
// ============================================================================
* rest[0].mode = #server
* rest[0].documentation = "The Kenya ePrescription server supports resource-level CRUD operations and the search interactions listed below. All transactions must be authenticated via OAuth 2.0 / SMART on FHIR."

// ----------------------------------------------------------------------------
// Security
// ----------------------------------------------------------------------------
* rest[0].security.cors = true
* rest[0].security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR "SMART-on-FHIR"
* rest[0].security.description = "OAuth 2.0 with SMART on FHIR scopes. All clients must present a valid access token issued by the national HIE identity provider."

// ----------------------------------------------------------------------------
// Patient
// ----------------------------------------------------------------------------
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = "http://hl7.org/fhir/StructureDefinition/Patient"
* rest[0].resource[0].documentation = "Patient resources are read-only on this server; patient registration is managed by the MPI."
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[0].interaction[1].code = #search-type
* rest[0].resource[0].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[0].searchParam[0].name = "identifier"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].documentation = "Search by national ID or other patient identifier"
* rest[0].resource[0].searchParam[1].name = "name"
* rest[0].resource[0].searchParam[1].type = #string
* rest[0].resource[0].searchParam[2].name = "birthdate"
* rest[0].resource[0].searchParam[2].type = #date

// ----------------------------------------------------------------------------
// Practitioner
// ----------------------------------------------------------------------------
* rest[0].resource[1].type = #Practitioner
* rest[0].resource[1].profile = "http://hl7.org/fhir/StructureDefinition/Practitioner"
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[1].interaction[1].code = #search-type
* rest[0].resource[1].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[1].searchParam[0].name = "identifier"
* rest[0].resource[1].searchParam[0].type = #token
* rest[0].resource[1].searchParam[0].documentation = "Search by KMPDC medical licence number"

// ----------------------------------------------------------------------------
// Organization
// ----------------------------------------------------------------------------
* rest[0].resource[2].type = #Organization
* rest[0].resource[2].profile = "http://hl7.org/fhir/StructureDefinition/Organization"
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[2].interaction[1].code = #search-type
* rest[0].resource[2].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].interaction[1].extension[0].valueCode = #SHOULD
* rest[0].resource[2].searchParam[0].name = "identifier"
* rest[0].resource[2].searchParam[0].type = #token
* rest[0].resource[2].searchParam[0].documentation = "Search by MFL facility code"

// ----------------------------------------------------------------------------
// Encounter
// ----------------------------------------------------------------------------
* rest[0].resource[3].type = #Encounter
* rest[0].resource[3].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-encounter"
* rest[0].resource[3].interaction[0].code = #read
* rest[0].resource[3].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[3].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[3].interaction[1].code = #create
* rest[0].resource[3].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[3].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[3].interaction[2].code = #update
* rest[0].resource[3].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[3].interaction[2].extension[0].valueCode = #SHALL
* rest[0].resource[3].interaction[3].code = #search-type
* rest[0].resource[3].interaction[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[3].interaction[3].extension[0].valueCode = #SHALL
* rest[0].resource[3].searchParam[0].name = "patient"
* rest[0].resource[3].searchParam[0].type = #reference
* rest[0].resource[3].searchParam[1].name = "status"
* rest[0].resource[3].searchParam[1].type = #token
* rest[0].resource[3].searchParam[2].name = "date"
* rest[0].resource[3].searchParam[2].type = #date

// ----------------------------------------------------------------------------
// MedicationRequest
// ----------------------------------------------------------------------------
* rest[0].resource[4].type = #MedicationRequest
* rest[0].resource[4].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-request"
* rest[0].resource[4].documentation = "Core ePrescription resource. Servers SHALL support create, read, update, and search by patient, requester, status, and authored date."
* rest[0].resource[4].interaction[0].code = #read
* rest[0].resource[4].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[4].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[4].interaction[1].code = #create
* rest[0].resource[4].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[4].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[4].interaction[2].code = #update
* rest[0].resource[4].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[4].interaction[2].extension[0].valueCode = #SHALL
* rest[0].resource[4].interaction[3].code = #search-type
* rest[0].resource[4].interaction[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[4].interaction[3].extension[0].valueCode = #SHALL
* rest[0].resource[4].searchParam[0].name  = "patient"
* rest[0].resource[4].searchParam[0].type  = #reference
* rest[0].resource[4].searchParam[0].documentation = "Search prescriptions by patient"
* rest[0].resource[4].searchParam[1].name  = "requester"
* rest[0].resource[4].searchParam[1].type  = #reference
* rest[0].resource[4].searchParam[2].name  = "status"
* rest[0].resource[4].searchParam[2].type  = #token
* rest[0].resource[4].searchParam[3].name  = "authoredon"
* rest[0].resource[4].searchParam[3].type  = #date
* rest[0].resource[4].searchParam[4].name  = "medication"
* rest[0].resource[4].searchParam[4].type  = #token
* rest[0].resource[4].searchParam[5].name  = "identifier"
* rest[0].resource[4].searchParam[5].type  = #token

// ----------------------------------------------------------------------------
// Medication
// ----------------------------------------------------------------------------
* rest[0].resource[5].type = #Medication
* rest[0].resource[5].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication"
* rest[0].resource[5].interaction[0].code = #read
* rest[0].resource[5].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[5].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[5].interaction[1].code = #search-type
* rest[0].resource[5].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[5].interaction[1].extension[0].valueCode = #SHOULD
* rest[0].resource[5].searchParam[0].name = "code"
* rest[0].resource[5].searchParam[0].type = #token
* rest[0].resource[5].searchParam[0].documentation = "Search by PPB generic product code"

// ----------------------------------------------------------------------------
// MedicationDispense
// ----------------------------------------------------------------------------
* rest[0].resource[6].type = #MedicationDispense
* rest[0].resource[6].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-dispense"
* rest[0].resource[6].interaction[0].code = #read
* rest[0].resource[6].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[6].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[6].interaction[1].code = #create
* rest[0].resource[6].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[6].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[6].interaction[2].code = #update
* rest[0].resource[6].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[6].interaction[2].extension[0].valueCode = #SHALL
* rest[0].resource[6].interaction[3].code = #search-type
* rest[0].resource[6].interaction[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[6].interaction[3].extension[0].valueCode = #SHALL
* rest[0].resource[6].searchParam[0].name = "patient"
* rest[0].resource[6].searchParam[0].type = #reference
* rest[0].resource[6].searchParam[1].name = "prescription"
* rest[0].resource[6].searchParam[1].type = #reference
* rest[0].resource[6].searchParam[1].documentation = "Filter dispenses by originating prescription"
* rest[0].resource[6].searchParam[2].name = "status"
* rest[0].resource[6].searchParam[2].type = #token
* rest[0].resource[6].searchParam[3].name = "whenhandedover"
* rest[0].resource[6].searchParam[3].type = #date

// ----------------------------------------------------------------------------
// MedicationAdministration
// ----------------------------------------------------------------------------
* rest[0].resource[7].type = #MedicationAdministration
* rest[0].resource[7].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-administration"
* rest[0].resource[7].interaction[0].code = #read
* rest[0].resource[7].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[7].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[7].interaction[1].code = #create
* rest[0].resource[7].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[7].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[7].interaction[2].code = #search-type
* rest[0].resource[7].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[7].interaction[2].extension[0].valueCode = #SHOULD
* rest[0].resource[7].searchParam[0].name = "patient"
* rest[0].resource[7].searchParam[0].type = #reference
* rest[0].resource[7].searchParam[1].name = "request"
* rest[0].resource[7].searchParam[1].type = #reference
* rest[0].resource[7].searchParam[2].name = "effective-time"
* rest[0].resource[7].searchParam[2].type = #date

// ----------------------------------------------------------------------------
// MedicationStatement
// ----------------------------------------------------------------------------
* rest[0].resource[8].type = #MedicationStatement
* rest[0].resource[8].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-statement"
* rest[0].resource[8].interaction[0].code = #read
* rest[0].resource[8].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[8].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[8].interaction[1].code = #create
* rest[0].resource[8].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[8].interaction[1].extension[0].valueCode = #SHOULD
* rest[0].resource[8].interaction[2].code = #search-type
* rest[0].resource[8].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[8].interaction[2].extension[0].valueCode = #SHALL
* rest[0].resource[8].searchParam[0].name = "patient"
* rest[0].resource[8].searchParam[0].type = #reference
* rest[0].resource[8].searchParam[1].name = "status"
* rest[0].resource[8].searchParam[1].type = #token

// ----------------------------------------------------------------------------
// AllergyIntolerance
// ----------------------------------------------------------------------------
* rest[0].resource[9].type = #AllergyIntolerance
* rest[0].resource[9].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-allergy-intolerance"
* rest[0].resource[9].interaction[0].code = #read
* rest[0].resource[9].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[9].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[9].interaction[1].code = #create
* rest[0].resource[9].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[9].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[9].interaction[2].code = #update
* rest[0].resource[9].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[9].interaction[2].extension[0].valueCode = #SHALL
* rest[0].resource[9].interaction[3].code = #search-type
* rest[0].resource[9].interaction[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[9].interaction[3].extension[0].valueCode = #SHALL
* rest[0].resource[9].searchParam[0].name = "patient"
* rest[0].resource[9].searchParam[0].type = #reference
* rest[0].resource[9].searchParam[1].name = "clinical-status"
* rest[0].resource[9].searchParam[1].type = #token
* rest[0].resource[9].searchParam[2].name = "code"
* rest[0].resource[9].searchParam[2].type = #token
* rest[0].resource[9].searchParam[2].documentation = "Search by allergen substance code (ActiveComponentsVS)"

// ----------------------------------------------------------------------------
// Condition (Oncology Diagnosis)
// ----------------------------------------------------------------------------
* rest[0].resource[10].type = #Condition
* rest[0].resource[10].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-oncology-diagnosis"
* rest[0].resource[10].interaction[0].code = #read
* rest[0].resource[10].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[10].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[10].interaction[1].code = #create
* rest[0].resource[10].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[10].interaction[1].extension[0].valueCode = #SHALL
* rest[0].resource[10].interaction[2].code = #search-type
* rest[0].resource[10].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[10].interaction[2].extension[0].valueCode = #SHALL
* rest[0].resource[10].searchParam[0].name = "patient"
* rest[0].resource[10].searchParam[0].type = #reference
* rest[0].resource[10].searchParam[1].name = "code"
* rest[0].resource[10].searchParam[1].type = #token
* rest[0].resource[10].searchParam[2].name = "clinical-status"
* rest[0].resource[10].searchParam[2].type = #token

// // ----------------------------------------------------------------------------
// // Observation (Morphology)
// // ----------------------------------------------------------------------------
// * rest[0].resource[11].type = #Observation
// * rest[0].resource[11].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-morphology-observation"
// * rest[0].resource[11].interaction[0].code = #read
// * rest[0].resource[11].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest[0].resource[11].interaction[0].extension[0].valueCode = #SHALL
// * rest[0].resource[11].interaction[1].code = #create
// * rest[0].resource[11].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest[0].resource[11].interaction[1].extension[0].valueCode = #SHALL
// * rest[0].resource[11].interaction[2].code = #search-type
// * rest[0].resource[11].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest[0].resource[11].interaction[2].extension[0].valueCode = #SHALL
// * rest[0].resource[11].searchParam[0].name = "patient"
// * rest[0].resource[11].searchParam[0].type = #reference
// * rest[0].resource[11].searchParam[1].name = "code"
// * rest[0].resource[11].searchParam[1].type = #token
// * rest[0].resource[11].searchParam[2].name = "status"
// * rest[0].resource[11].searchParam[2].type = #token

// // ----------------------------------------------------------------------------
// // CarePlan (Oncology)
// // ----------------------------------------------------------------------------
// * rest[0].resource[12].type = #CarePlan
// * rest[0].resource[12].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-oncology-care-plan"
// * rest[0].resource[12].interaction[0].code = #read
// * rest[0].resource[12].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest[0].resource[12].interaction[0].extension[0].valueCode = #SHALL
// * rest[0].resource[12].interaction[1].code = #create
// * rest[0].resource[12].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest[0].resource[12].interaction[1].extension[0].valueCode = #SHALL
// * rest[0].resource[12].interaction[2].code = #update
// * rest[0].resource[12].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest[0].resource[12].interaction[2].extension[0].valueCode = #SHALL
// * rest[0].resource[12].interaction[3].code = #search-type
// * rest[0].resource[12].interaction[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest[0].resource[12].interaction[3].extension[0].valueCode = #SHALL
// * rest[0].resource[12].searchParam[0].name = "patient"
// * rest[0].resource[12].searchParam[0].type = #reference
// * rest[0].resource[12].searchParam[1].name = "status"
// * rest[0].resource[12].searchParam[1].type = #token

// ----------------------------------------------------------------------------
// EpisodeOfCare
// ----------------------------------------------------------------------------
* rest[0].resource[11].type = #EpisodeOfCare
* rest[0].resource[11].profile = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-episode-of-care"
* rest[0].resource[11].interaction[0].code = #read
* rest[0].resource[11].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[11].interaction[0].extension[0].valueCode = #SHALL
* rest[0].resource[11].interaction[1].code = #create
* rest[0].resource[11].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[11].interaction[1].extension[0].valueCode = #SHOULD
* rest[0].resource[11].interaction[2].code = #search-type
* rest[0].resource[11].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[11].interaction[2].extension[0].valueCode = #SHOULD
* rest[0].resource[11].searchParam[0].name = "patient"
* rest[0].resource[11].searchParam[0].type = #reference
* rest[0].resource[11].searchParam[1].name = "status"
* rest[0].resource[11].searchParam[1].type = #token
