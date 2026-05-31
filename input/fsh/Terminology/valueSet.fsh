// ============================================================================
// ValueSets for Kenya ePrescription Implementation Guide
// Rules:
//   • Id MUST equal the last segment of ^url (IG Publisher enforces this).
//   • ^url MUST match alias definitions in aliases.fsh exactly.
//   • ^experimental = false (production) — ShareableValueSet profile requires this field.
// ============================================================================

ValueSet: MedicationRequestPriorityVS
Id: medication-request-priority-vs
Title: "Medication Request Priority ValueSet"
Description: "ValueSet for priority levels in the MedicationRequest workflow."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-request-priority-vs"
* ^status = #active
* ^experimental = false
* include codes from system MedicationRequestPriorityCS


ValueSet: MedicationRequestStatusVS
Id: medication-request-status-vs
Title: "MedicationRequest Status ValueSet"
Description: "ValueSet containing status codes for MedicationRequest."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-request-status-vs"
* ^status = #active
* ^experimental = false
* include codes from system MedicationRequestStatusCS


// Alias: $KE-RouteOfAdmin
ValueSet: RouteOfAdministrationVS
Id: route-of-administration-vs
Title: "Route of Administration ValueSet"
Description: "Codes for route of administration of medications, drawn from the MOH PPB route of administration code system."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/route-of-administration-vs"
* ^status = #active
* ^experimental = false
* include codes from system RouteOfAdministrationCS


// Alias: $KE-UoM
ValueSet: UnitOfMeasureVS
Id: unit-of-measure-vs
Title: "Unit of Measure ValueSet"
Description: "Codes for units of measure used in medication dosing, drawn from the MOH PPB unit of measure code system."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/unit-of-measure-vs"
* ^status = #active
* ^experimental = false
* include codes from system UnitOfMeasureCS


// Alias: $KE-Formulation
ValueSet: FormulationVS
Id: formulation-vs
Title: "Formulation (Dosage Form) ValueSet"
Description: "Pharmaceutical formulation/dosage form codes drawn from the MOH PPB formulation code system."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/formulation-vs"
* ^status = #active
* ^experimental = false
* include codes from system FormulationCS


// Alias: $KE-ActiveComponents
ValueSet: ActiveComponentsVS
Id: active-components-vs
Title: "Active Components ValueSet"
Description: "Active pharmaceutical ingredient codes drawn from the MOH PPB active components code system."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/active-components-vs"
* ^status = #active
* ^experimental = false
* include codes from system ActiveComponentsCS


// Alias: $KE-GenericProducts
ValueSet: GenericProductsVS
Id: generic-products-vs
Title: "Generic Products ValueSet"
Description: "Generic medicinal product codes drawn from the MOH PPB generic products code system."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/generic-products-vs"
* ^status = #active
* ^experimental = false
* include codes from system GenericProductsCS


// ============================================================================
// MOH-KENYA local ValueSets
// ============================================================================

// Alias: $KE-MedReqStatusReason
ValueSet: MedicationRequestStatusReasonVS
Id: medication-request-status-reason
Title: "MedicationRequest Status Reason ValueSet"
Description: "Reasons for a MedicationRequest status change."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-request-status-reason"
* ^status = #active
* ^experimental = false
* include codes from system MedicationRequestStatusReasonCS


// Alias: $KE-MedDispStatusReason
ValueSet: MedicationDispenseStatusReasonVS
Id: medication-dispense-status-reason
Title: "MedicationDispense Status Reason ValueSet"
Description: "Reasons for a MedicationDispense status."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-dispense-status-reason"
* ^status = #active
* ^experimental = false
* include codes from system MedicationDispenseStatusReasonCS


// Alias: $KE-MedAdminStatusReason
ValueSet: MedicationAdminStatusReasonVS
Id: medication-admin-status-reason
Title: "MedicationAdministration Status Reason ValueSet"
Description: "Reasons for a MedicationAdministration status."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-admin-status-reason"
* ^status = #active
* ^experimental = false
* include codes from system MedicationAdminStatusReasonCS


// Alias: $KE-MedStmtStatusReason
ValueSet: ReasonMedicationStatusVS
Id: reason-medication-status
Title: "Reason Medication Status ValueSet"
Description: "Reasons for a MedicationStatement status."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/reason-medication-status"
* ^status = #active
* ^experimental = false
* include codes from system ReasonMedicationStatusCS


// Alias: $KE-ConditionClinicalStatus
ValueSet: ConditionClinicalStatusVS
Id: condition-clinical-status
Title: "Condition Clinical Status ValueSet"
Description: "Clinical status codes for Condition resources."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/condition-clinical-status"
* ^status = #active
* ^experimental = false
* include codes from system ConditionClinicalStatusCS


// Alias: $KE-ConditionVerifStatus
ValueSet: ConditionVerificationStatusVS
Id: condition-verification-status
Title: "Condition Verification Status ValueSet"
Description: "Verification status codes for Condition resources."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/condition-verification-status"
* ^status = #active
* ^experimental = false
* include codes from system ConditionVerificationStatusCS


// Alias: $KE-ConditionCategory
ValueSet: ConditionCategoryVS
Id: condition-category
Title: "Condition Category ValueSet"
Description: "Category codes for Condition resources."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/condition-category"
* ^status = #active
* ^experimental = false
* include codes from system ConditionCategoryCS


// Alias: $KE-ConditionSeverity
ValueSet: ConditionSeverityVS
Id: condition-severity
Title: "Condition Severity ValueSet"
Description: "Severity codes for Condition resources."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/condition-severity"
* ^status = #active
* ^experimental = false
* include codes from system ConditionSeverityCS


// Alias: $KE-ConditionStage
ValueSet: ConditionStageVS
Id: condition-stage
Title: "Condition Stage ValueSet"
Description: "Staging codes for oncology and staged conditions."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/condition-stage"
* ^status = #active
* ^experimental = false
* include codes from system ConditionStageCS


// Alias: $KE-MedAdminRoute
ValueSet: MedAdminRouteVS
Id: med-admin-route
Title: "Medication Administration Route ValueSet"
Description: "Route of administration codes for MedicationAdministration, sourced from MOH PPB OCL RouteOfAdministration collection. Replaces SNOMED CT route-codes binding from base FHIR R4."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/med-admin-route"
* ^status = #active
* ^experimental = false
* include codes from system MedAdminRouteCS


// Alias: $KE-ObsMethods
ValueSet: ObservationMethodsVS
Id: observation-methods
Title: "Observation Methods ValueSet"
Description: "Methods used to perform clinical observations."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/observation-methods"
* ^status = #active
* ^experimental = false
* include codes from system ObservationMethodsCS


// Alias: $KE-AdditionalInstr
ValueSet: AdditionalInstructionVS
Id: additional-instruction
Title: "Additional Instruction Codes ValueSet"
Description: "Supplementary instructions for dispensed or administered medication."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/additional-instruction"
* ^status = #active
* ^experimental = false
* include codes from system AdditionalInstructionCS


// Alias: $KE-ApproachSite
ValueSet: ApproachSiteVS
Id: approach-site
Title: "Approach Site Codes ValueSet"
Description: "Body site codes for medication administration site."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/approach-site"
* ^status = #active
* ^experimental = false
* include codes from system ApproachSiteCS


// Alias: $KE-CarePlanCategory
ValueSet: CarePlanCategoryVS
Id: care-plan-category
Title: "Care Plan Category ValueSet"
Description: "Category codes for care plan types."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/care-plan-category"
* ^status = #active
* ^experimental = false
* include codes from system CarePlanCategoryCS


// Alias: $KE-ProcedureCode
ValueSet: ProcedureCodeVS
Id: procedure-code
Title: "Procedure Code ValueSet"
Description: "Clinical procedure codes for care plan activities and service requests."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/procedure-code"
* ^status = #active
* ^experimental = false
* include codes from system ProcedureCodeCS


// Alias: $KE-Manifestation
ValueSet: ManifestationVS
Id: manifestation
Title: "Manifestation or Symptom ValueSet"
Description: "Clinical manifestations and symptoms."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/manifestation"
* ^status = #active
* ^experimental = false
* include codes from system ManifestationCS


// Alias: $KE-ConditionCodes
ValueSet: ConditionCodesVS
Id: condition-codes-vs
Title: "Condition Codes ValueSet"
Description: "Codes for clinical conditions and diagnoses. References ICD-10 pending population of the MOH-KENYA CONDITION-CODES OCL collection."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/condition-codes-vs"
* ^status = #active
* ^experimental = false
* include codes from system http://hl7.org/fhir/sid/icd-10


// Alias: $KE-ICD11
// Local placeholder; system per WHO FHIR IG. Preferred binding — codes accepted
// even when the tx server cannot enumerate the full ICD-11 hierarchy.
ValueSet: ICD11VS
Id: icd11
Title: "ICD-11 Codes ValueSet"
Description: "All codes from the WHO International Classification of Diseases, 11th Revision (ICD-11)."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/icd11"
* ^status = #active
* ^experimental = false
* include codes from system ICD11CodesCS


// Alias: $KE-EpisodeOfCareType
ValueSet: KEEpisodeOfCareTypeVS
Id: ke-episode-of-care-type-vs
Title: "Kenya Episode of Care Type ValueSet"
Description: "Episode of care type codes for the Kenya ePrescription workflow, sourced from the Kenya Episode of Care Type CodeSystem."
* ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/ke-episode-of-care-type-vs"
* ^status = #active
* ^experimental = false
* include codes from system KEEpisodeOfCareTypeCS
