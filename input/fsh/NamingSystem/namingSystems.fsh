// ============================================================================
// NamingSystem definitions for Kenya ePrescription IG
// All identifier systems referenced in profiles and examples are formally
// declared here so that validators can resolve them to a known authority.
// ============================================================================

// ----------------------------------------------------------------------------
// Patient – National ID
// ----------------------------------------------------------------------------
Instance: ns-national-id
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya National ID"
Description: "Unique national identification number issued by the Kenya National Registration Bureau to Kenyan citizens and residents."

* name         = "KenyaNationalId"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "Kenya National Registration Bureau"
* description  = "Kenya National ID number assigned to every citizen on registration. Used as the primary patient identifier in the ePrescription workflow."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/national-id"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// Practitioner – Medical Licence
// ----------------------------------------------------------------------------
Instance: ns-medical-licence
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Medical Licence"
Description: "Licence number issued by the Kenya Medical Practitioners and Dentists Council (KMPDC) to registered practitioners."

* name         = "KenyaMedicalLicence"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "Kenya Medical Practitioners and Dentists Council (KMPDC)"
* description  = "KMPDC licence number used to uniquely identify registered medical practitioners across the national health system."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/medical-licence"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// Organization – Facility Code
// ----------------------------------------------------------------------------
Instance: ns-facility-code
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Health Facility Code"
Description: "Master Facility List (MFL) code assigned by the Ministry of Health to every registered health facility in Kenya."

* name         = "KenyaFacilityCode"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "Kenya Ministry of Health – Master Facility List"
* description  = "The MFL code provides a unique, government-issued identifier for each licensed health facility. Used as the organization identifier in all ePrescription transactions."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/facility-code"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// Location – Location Code
// ----------------------------------------------------------------------------
Instance: ns-location-code
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Location Code"
Description: "Sub-location identifier used to distinguish specific departments, wings, or service areas within a health facility."

* name         = "KenyaLocationCode"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Facility-level sub-location code (e.g., pharmacy, ward, outpatient department). Scoped within the facility MFL code."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/location-code"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// MedicationRequest – Prescription Identifier
// ----------------------------------------------------------------------------
Instance: ns-prescription-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Prescription Identifier"
Description: "Unique identifier assigned to every electronic prescription generated within the Kenya ePrescription system."

* name         = "KenyaPrescriptionIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya / Kenya Pharmacy and Poisons Board"
* description  = "System-generated prescription number that uniquely identifies a MedicationRequest across all dispensing points. Format: RX-{YYYY}-{SITE}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/prescription-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// Encounter – Encounter Identifier
// ----------------------------------------------------------------------------
Instance: ns-encounter-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Encounter Identifier"
Description: "Unique identifier assigned to each patient encounter (visit, admission, or consultation) within the Kenya health information system."

* name         = "KenyaEncounterIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Encounter number generated by the facility HIS/EMR. Format: ENC-{YYYY}-{TYPE}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/encounter-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// Medication – Medication Identifier
// ----------------------------------------------------------------------------
Instance: ns-medication-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Medication Identifier"
Description: "Product-level identifier for medications registered in the Kenya Pharmacy and Poisons Board (PPB) drug register."

* name         = "KenyaMedicationIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "Kenya Pharmacy and Poisons Board"
* description  = "PPB-assigned identifier for a medicinal product, linking the dispensed item to the national drug register. Format: KE-MED-{CODE}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/medication-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// MedicationDispense – Dispense Identifier
// ----------------------------------------------------------------------------
Instance: ns-dispense-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Dispense Identifier"
Description: "Unique identifier assigned to each medication dispensing event recorded by a Kenya pharmacy."

* name         = "KenyaDispenseIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Dispense transaction number generated by the pharmacy management system. Format: DISP-{YYYY}-{SITE}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/dispense-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// MedicationAdministration – Administration Identifier
// ----------------------------------------------------------------------------
Instance: ns-administration-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Administration Identifier"
Description: "Unique identifier for each medication administration event recorded in the inpatient or emergency setting."

* name         = "KenyaAdministrationIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Administration record number used by the Medication Administration Record (MAR) system. Format: ADM-{YYYY}-{SITE}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/administration-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// MedicationStatement – Statement Identifier
// ----------------------------------------------------------------------------
Instance: ns-medstatement-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya MedicationStatement Identifier"
Description: "Unique identifier for medication statement records capturing a patient's current or historical medication use."

* name         = "KenyaMedStatementIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Medication statement record identifier generated by the clinical system. Format: MEDS-{YYYY}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/medstatement-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// AllergyIntolerance – Allergy Identifier
// ----------------------------------------------------------------------------
Instance: ns-allergy-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Allergy Identifier"
Description: "Unique identifier for allergy and intolerance records documented in the patient's clinical record."

* name         = "KenyaAllergyIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Allergy record number generated by the clinical documentation system. Format: ALG-{YYYY}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/allergy-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// Condition – Condition Identifier
// ----------------------------------------------------------------------------
Instance: ns-condition-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Condition Identifier"
Description: "Unique identifier for problem-list and encounter-diagnosis Condition records."

* name         = "KenyaConditionIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Condition record number generated by the clinical system. Format: COND-{YYYY}-{SITE}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/condition-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// Observation – Observation Identifier
// ----------------------------------------------------------------------------
Instance: ns-observation-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Observation Identifier"
Description: "Unique identifier for clinical observation records, including morphology and diagnostic findings."

* name         = "KenyaObservationIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Observation record number generated by the diagnostic or clinical system. Format: OBS-{YYYY}-{DEPT}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/observation-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// CarePlan – CarePlan Identifier
// ----------------------------------------------------------------------------
Instance: ns-careplan-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya CarePlan Identifier"
Description: "Unique identifier for oncology and chronic-disease care plan records."

* name         = "KenyaCarePlanIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Care plan identifier generated by the clinical system. Format: CP-{YYYY}-{SPECIALTY}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/careplan-identifier"
* uniqueId[0].preferred = true


// ----------------------------------------------------------------------------
// EpisodeOfCare – Episode Identifier
// ----------------------------------------------------------------------------
Instance: ns-episode-identifier
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem – Kenya Episode of Care Identifier"
Description: "Unique identifier for episodes of care grouping multiple encounters under a single management period."

* name         = "KenyaEpisodeIdentifier"
* status       = #active
* kind         = #identifier
* date         = "2025-01-01"
* publisher    = "IntelliSOFT Kenya"
* responsible  = "IntelliSOFT Kenya"
* description  = "Episode of care identifier generated by the clinical system. Format: EOC-{YYYY}-{SPECIALTY}-{SEQ}."
* jurisdiction = urn:iso:std:iso:3166#KE "Kenya"
* uniqueId[0].type  = #uri
* uniqueId[0].value = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/episode-identifier"
* uniqueId[0].preferred = true
