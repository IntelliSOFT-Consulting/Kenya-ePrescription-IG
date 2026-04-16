// ============================================================================
// ValueSets for Kenya ePrescription Implementation Guide
// Each ValueSet is backed by a local CodeSystem in codeSystem.fsh
// ============================================================================

// ----------------------------------------------------------------------------
// MedicationRequest
// ----------------------------------------------------------------------------

ValueSet: MedicationRequestPriorityVS
Id: medication-request-priority-vs
Title: "Medication Request Priority ValueSet"
Description: "ValueSet for priority levels in the MedicationRequest workflow."
* ^url = "https://prescription.intellisoftkenya.com/fhir/ValueSet/medication-request-priority-vs"
* ^status = #draft
* include codes from system MedicationRequestPriorityCS


ValueSet: MedicationRequestStatusVS
Id: medication-request-status-vs
Title: "MedicationRequest Status ValueSet"
Description: "ValueSet containing status codes for MedicationRequest."
* ^url = "https://prescription.intellisoftkenya.com/fhir/ValueSet/medication-request-status-vs"
* ^status = #draft
* include codes from system MedicationRequestStatusCS


// ----------------------------------------------------------------------------
// Route of Administration
// Used in: MedicationRequest.dosageInstruction.route / .method
//          AllergyIntolerance.reaction.exposureRoute
//          MedicationAdministration.dosage.route / .method
//          MedicationDispense.dosageInstruction.route
// ----------------------------------------------------------------------------

ValueSet: RouteOfAdministrationVS
Id: route-of-administration-vs
Title: "Route of Administration ValueSet"
Description: "Codes for route of administration of medications, drawn from the MOH PPB route of administration code system."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/route-of-administration-vs"
* ^status = #draft
* include codes from system RouteOfAdministrationCS


// ----------------------------------------------------------------------------
// Unit of Measure
// Used in: MedicationRequest.dosageInstruction.timing.repeat.periodUnit / durationUnit
// ----------------------------------------------------------------------------

ValueSet: UnitOfMeasureVS
Id: unit-of-measure-vs
Title: "Unit of Measure ValueSet"
Description: "Codes for units of measure used in medication dosing, drawn from the MOH PPB unit of measure code system."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/unit-of-measure-vs"
* ^status = #draft
* include codes from system UnitOfMeasureCS


// ----------------------------------------------------------------------------
// Formulation (Dosage Form)
// Used in: Medication.form
// ----------------------------------------------------------------------------

ValueSet: FormulationVS
Id: formulation-vs
Title: "Formulation (Dosage Form) ValueSet"
Description: "Pharmaceutical formulation/dosage form codes drawn from the MOH PPB formulation code system."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/formulation-vs"
* ^status = #draft
* include codes from system FormulationCS


// ----------------------------------------------------------------------------
// Active Components (Active Pharmaceutical Ingredients)
// Used in: AllergyIntolerance.code
//          AllergyIntolerance.reaction.substance
//          Medication.ingredient.itemCodeableConcept
// ----------------------------------------------------------------------------

ValueSet: ActiveComponentsVS
Id: active-components-vs
Title: "Active Components ValueSet"
Description: "Active pharmaceutical ingredient codes drawn from the MOH PPB active components code system."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/active-components-vs"
* ^status = #draft
* include codes from system ActiveComponentsCS


// ----------------------------------------------------------------------------
// Generic Products (Medicinal Products)
// Used in: MedicationRequest.medicationCodeableConcept
//          MedicationDispense.medicationCodeableConcept
//          MedicationAdministration.medicationCodeableConcept
//          MedicationStatement.medicationCodeableConcept
//          Medication.code
// ----------------------------------------------------------------------------

ValueSet: GenericProductsVS
Id: generic-products-vs
Title: "Generic Products ValueSet"
Description: "Generic medicinal product codes drawn from the MOH PPB generic products code system."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/generic-products-vs"
* ^status = #draft
* include codes from system GenericProductsCS


// ============================================================================
// ValueSets for MOH-KENYA CodeSystems
// ============================================================================

// Used in: MedicationRequest.statusReason
ValueSet: MedicationRequestStatusReasonVS
Id: medication-request-status-reason-vs
Title: "MedicationRequest Status Reason ValueSet"
Description: "Reasons for a MedicationRequest status change."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/medication-request-status-reason-vs"
* ^status = #draft
* include codes from system MedicationRequestStatusReasonCS


// Used in: MedicationDispense.statusReasonCodeableConcept
ValueSet: MedicationDispenseStatusReasonVS
Id: medication-dispense-status-reason-vs
Title: "MedicationDispense Status Reason ValueSet"
Description: "Reasons for a MedicationDispense status."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/medication-dispense-status-reason-vs"
* ^status = #draft
* include codes from system MedicationDispenseStatusReasonCS


// Used in: MedicationAdministration.statusReason
ValueSet: MedicationAdminStatusReasonVS
Id: medication-admin-status-reason-vs
Title: "MedicationAdministration Status Reason ValueSet"
Description: "Reasons for a MedicationAdministration status."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/medication-admin-status-reason-vs"
* ^status = #draft
* include codes from system MedicationAdminStatusReasonCS


// Used in: MedicationStatement.statusReason
ValueSet: ReasonMedicationStatusVS
Id: reason-medication-status-vs
Title: "Reason Medication Status ValueSet"
Description: "Reasons for a MedicationStatement status."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/reason-medication-status-vs"
* ^status = #draft
* include codes from system ReasonMedicationStatusCS


// Used in: Condition.clinicalStatus (KEOncologyDiagnosis)
ValueSet: ConditionClinicalStatusVS
Id: condition-clinical-status-vs
Title: "Condition Clinical Status ValueSet"
Description: "Clinical status codes for Condition resources."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/condition-clinical-status-vs"
* ^status = #draft
* include codes from system ConditionClinicalStatusCS


// Used in: Condition.verificationStatus (KEOncologyDiagnosis)
ValueSet: ConditionVerificationStatusVS
Id: condition-verification-status-vs
Title: "Condition Verification Status ValueSet"
Description: "Verification status codes for Condition resources."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/condition-verification-status-vs"
* ^status = #draft
* include codes from system ConditionVerificationStatusCS


// Used in: Condition.category (KEOncologyDiagnosis)
ValueSet: ConditionCategoryVS
Id: condition-category-vs
Title: "Condition Category ValueSet"
Description: "Category codes for Condition resources."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/condition-category-vs"
* ^status = #draft
* include codes from system ConditionCategoryCS


// Used in: Condition.severity (KEOncologyDiagnosis)
ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "Condition Severity ValueSet"
Description: "Severity codes for Condition resources."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/condition-severity-vs"
* ^status = #draft
* include codes from system ConditionSeverityCS


// Used in: Condition.stage.summary / stage.type (KEOncologyDiagnosis)
ValueSet: ConditionStageVS
Id: condition-stage-vs
Title: "Condition Stage ValueSet"
Description: "Staging codes for oncology and staged conditions."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/condition-stage-vs"
* ^status = #draft
* include codes from system ConditionStageCS


// Used in: MedicationAdministration.dosage.route
ValueSet: MedAdminRouteVS
Id: med-admin-route-vs
Title: "Medication Administration Route ValueSet"
Description: "Route of administration codes for MedicationAdministration."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/med-admin-route-vs"
* ^status = #draft
* include codes from system MedAdminRouteCS


// Used in: Observation.method (KEMorphologyObservation)
ValueSet: ObservationMethodsVS
Id: observation-methods-vs
Title: "Observation Methods ValueSet"
Description: "Methods used to perform clinical observations."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/observation-methods-vs"
* ^status = #draft
* include codes from system ObservationMethodsCS


// Used in: MedicationDispense.dosageInstruction.additionalInstruction
ValueSet: AdditionalInstructionVS
Id: additional-instruction-vs
Title: "Additional Instruction Codes ValueSet"
Description: "Supplementary instructions for dispensed or administered medication."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/additional-instruction-vs"
* ^status = #draft
* include codes from system AdditionalInstructionCS


// Used in: MedicationDispense.dosageInstruction.site
//          MedicationAdministration.dosage.site
ValueSet: ApproachSiteVS
Id: approach-site-vs
Title: "Approach Site Codes ValueSet"
Description: "Body site codes for medication administration site."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/approach-site-vs"
* ^status = #draft
* include codes from system ApproachSiteCS


// Used in: CarePlan.category (KEOncologyCarePlan)
ValueSet: CarePlanCategoryVS
Id: care-plan-category-vs
Title: "Care Plan Category ValueSet"
Description: "Category codes for care plan types."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/care-plan-category-vs"
* ^status = #draft
* include codes from system CarePlanCategoryCS


// Used in: CarePlan.activity.detail.code (KEOncologyCarePlan)
//          ServiceRequest.code (KEServiceRequest)
ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "Procedure Code ValueSet"
Description: "Clinical procedure codes for care plan activities and service requests."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/procedure-code-vs"
* ^status = #draft
* include codes from system ProcedureCodeCS


// Used in: AllergyIntolerance.reaction.manifestation (KEAllergyIntolerance)
//          Condition.evidence.code (KEOncologyDiagnosis)
//          CarePlan.activity.detail.reasonCode (KEOncologyCarePlan)
ValueSet: ManifestationVS
Id: manifestation-vs
Title: "Manifestation or Symptom ValueSet"
Description: "Clinical manifestations and symptoms."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/manifestation-vs"
* ^status = #draft
* include codes from system ManifestationCS


// Used in: MedicationRequest.reasonCode, MedicationAdministration.reasonCode
// Note: MOH-KENYA CONDITION-CODES OCL collection is currently unpopulated.
// Using ICD-10 as the backing terminology until the collection is populated.
ValueSet: ConditionCodesVS
Id: condition-codes-vs
Title: "Condition Codes ValueSet"
Description: "Codes for clinical conditions and diagnoses. References ICD-10 pending population of the MOH-KENYA CONDITION-CODES OCL collection."
* ^url = "https://prescription.intellisoftkenya.com/ValueSet/condition-codes-vs"
* ^status = #draft
* include codes from system http://hl7.org/fhir/sid/icd-10
