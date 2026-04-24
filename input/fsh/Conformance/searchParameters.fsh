// ============================================================================
// SearchParameter definitions – Kenya ePrescription IG
// Custom search parameters that extend or clarify the base FHIR definitions
// for optimised querying within the Kenya ePrescription system.
// ============================================================================

// ----------------------------------------------------------------------------
// MedicationRequest – by prescription identifier
// ----------------------------------------------------------------------------
Instance: sp-medicationrequest-identifier
InstanceOf: SearchParameter
Usage: #definition
Title: "SearchParameter – MedicationRequest Identifier"
Description: "Search MedicationRequest resources by their Kenya prescription identifier (NamingSystem: prescription-identifier)."

* id          = "sp-medicationrequest-identifier"
* url         = "https://nshr-uat.sha.go.ke/SearchParameter/medicationrequest-identifier"
* version     = "0.1.0"
* name        = "MedicationRequestIdentifier"
* status      = #active
* experimental = false
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* description = "Enables lookup of a prescription by its unique Kenya prescription number (e.g. RX-2025-OPD-00789)."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* code        = #identifier
* base[0]     = #MedicationRequest
* type        = #token
* expression  = "MedicationRequest.identifier"
* xpath       = "f:MedicationRequest/f:identifier"
* xpathUsage  = #normal


// ----------------------------------------------------------------------------
// MedicationRequest – by authoredOn date range
// ----------------------------------------------------------------------------
Instance: sp-medicationrequest-authoredon
InstanceOf: SearchParameter
Usage: #definition
Title: "SearchParameter – MedicationRequest AuthoredOn"
Description: "Search MedicationRequest resources by the date the prescription was authored, supporting date range queries."

* id          = "sp-medicationrequest-authoredon"
* url         = "https://nshr-uat.sha.go.ke/SearchParameter/medicationrequest-authoredon"
* version     = "0.1.0"
* name        = "MedicationRequestAuthoredOn"
* status      = #active
* experimental = false
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* description = "Allows date-range queries on prescription creation date (e.g. authored between two dates for reporting and audit)."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* code        = #authoredon
* base[0]     = #MedicationRequest
* type        = #date
* expression  = "MedicationRequest.authoredOn"
* xpath       = "f:MedicationRequest/f:authoredOn"
* xpathUsage  = #normal
* comparator[0] = #eq
* comparator[1] = #ge
* comparator[2] = #le
* comparator[3] = #gt
* comparator[4] = #lt


// ----------------------------------------------------------------------------
// MedicationRequest – by medication code (GenericProducts)
// ----------------------------------------------------------------------------
Instance: sp-medicationrequest-medication-code
InstanceOf: SearchParameter
Usage: #definition
Title: "SearchParameter – MedicationRequest Medication Code"
Description: "Search MedicationRequest resources by the PPB generic product code in medicationCodeableConcept."

* id          = "sp-medicationrequest-medication-code"
* url         = "https://nshr-uat.sha.go.ke/SearchParameter/medicationrequest-medication-code"
* version     = "0.1.0"
* name        = "MedicationRequestMedicationCode"
* status      = #active
* experimental = false
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* description = "Enables lookup of all prescriptions for a specific generic product using the PPB GenericProducts code system."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* code        = #medication
* base[0]     = #MedicationRequest
* type        = #token
* expression  = "(MedicationRequest.medication as CodeableConcept)"
* xpath       = "f:MedicationRequest/f:medicationCodeableConcept"
* xpathUsage  = #normal


// ----------------------------------------------------------------------------
// MedicationDispense – by prescription reference
// ----------------------------------------------------------------------------
Instance: sp-medicationdispense-prescription
InstanceOf: SearchParameter
Usage: #definition
Title: "SearchParameter – MedicationDispense Prescription"
Description: "Search MedicationDispense resources by the authorizing MedicationRequest (prescription) reference."

* id          = "sp-medicationdispense-prescription"
* url         = "https://nshr-uat.sha.go.ke/SearchParameter/medicationdispense-prescription"
* version     = "0.1.0"
* name        = "MedicationDispensePrescription"
* status      = #active
* experimental = false
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* description = "Allows a pharmacy to find all dispense records linked to a specific prescription, supporting refill tracking and audit."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* code        = #prescription
* base[0]     = #MedicationDispense
* type        = #reference
* expression  = "MedicationDispense.authorizingPrescription"
* xpath       = "f:MedicationDispense/f:authorizingPrescription"
* xpathUsage  = #normal
* target[0]   = #MedicationRequest


// ----------------------------------------------------------------------------
// MedicationDispense – by whenHandedOver date
// ----------------------------------------------------------------------------
Instance: sp-medicationdispense-whenhandedover
InstanceOf: SearchParameter
Usage: #definition
Title: "SearchParameter – MedicationDispense WhenHandedOver"
Description: "Search MedicationDispense resources by the date the medication was handed to the patient."

* id          = "sp-medicationdispense-whenhandedover"
* url         = "https://nshr-uat.sha.go.ke/SearchParameter/medicationdispense-whenhandedover"
* version     = "0.1.0"
* name        = "MedicationDispenseWhenHandedOver"
* status      = #active
* experimental = false
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* description = "Enables date-range reporting of dispense events by handover date, useful for pharmacy dispensing reports and NHIF/SHIF claims."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* code        = #whenhandedover
* base[0]     = #MedicationDispense
* type        = #date
* expression  = "MedicationDispense.whenHandedOver"
* xpath       = "f:MedicationDispense/f:whenHandedOver"
* xpathUsage  = #normal
* comparator[0] = #eq
* comparator[1] = #ge
* comparator[2] = #le


// ----------------------------------------------------------------------------
// AllergyIntolerance – by substance code
// ----------------------------------------------------------------------------
Instance: sp-allergyintolerance-substance
InstanceOf: SearchParameter
Usage: #definition
Title: "SearchParameter – AllergyIntolerance Substance Code"
Description: "Search AllergyIntolerance resources by the allergen substance code from ActiveComponentsVS, supporting clinical decision support alerts."

* id          = "sp-allergyintolerance-substance"
* url         = "https://nshr-uat.sha.go.ke/SearchParameter/allergyintolerance-substance"
* version     = "0.1.0"
* name        = "AllergyIntoleranceSubstance"
* status      = #active
* experimental = false
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* description = "Allows querying allergy records by the specific substance code, enabling CDS systems to check for contraindicated drugs before issuing a prescription."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* code        = #code
* base[0]     = #AllergyIntolerance
* type        = #token
* expression  = "AllergyIntolerance.code | AllergyIntolerance.reaction.substance"
* xpath       = "f:AllergyIntolerance/f:code | f:AllergyIntolerance/f:reaction/f:substance"
* xpathUsage  = #normal


// ----------------------------------------------------------------------------
// Encounter – by service provider (facility)
// ----------------------------------------------------------------------------
Instance: sp-encounter-service-provider
InstanceOf: SearchParameter
Usage: #definition
Title: "SearchParameter – Encounter ServiceProvider"
Description: "Search Encounter resources by the managing organisation (health facility) using the MFL facility code."

* id          = "sp-encounter-service-provider"
* url         = "https://nshr-uat.sha.go.ke/SearchParameter/encounter-service-provider"
* version     = "0.1.0"
* name        = "EncounterServiceProvider"
* status      = #active
* experimental = false
* date        = "2025-06-01"
* publisher   = "Digital Health Agency, Kenya"
* description = "Enables facility-level reporting of encounters; useful for facility managers generating service utilization dashboards."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* code        = #service-provider
* base[0]     = #Encounter
* type        = #reference
* expression  = "Encounter.serviceProvider"
* xpath       = "f:Encounter/f:serviceProvider"
* xpathUsage  = #normal
* target[0]   = #Organization
