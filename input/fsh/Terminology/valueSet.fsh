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
* ^url = "https://ilm-hie.dha.go.ke/fhir/ValueSet/medication-request-priority"
* ^status = #active
* include codes from system MedicationRequestPriorityCS


ValueSet: MedicationRequestStatusVS
Id: medication-request-status-vs
Title: "MedicationRequest Status ValueSet"
Description: "ValueSet containing status codes for MedicationRequest."
* ^url = "https://ilm-hie.dha.go.ke/fhir/ValueSet/medication-request-status"
* ^status = #active
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
* ^url = "https://ilm-hie.dha.go.ke/fhir/ValueSet/route-of-administration"
* ^status = #active
* include codes from system RouteOfAdministrationCS


// ----------------------------------------------------------------------------
// Unit of Measure
// Used in: MedicationRequest.dosageInstruction.timing.repeat.periodUnit / durationUnit
// ----------------------------------------------------------------------------

ValueSet: UnitOfMeasureVS
Id: unit-of-measure-vs
Title: "Unit of Measure ValueSet"
Description: "Codes for units of measure used in medication dosing, drawn from the MOH PPB unit of measure code system."
* ^url = "https://ilm-hie.dha.go.ke/fhir/ValueSet/unit-of-measure"
* ^status = #active
* include codes from system UnitOfMeasureCS


// ----------------------------------------------------------------------------
// Formulation (Dosage Form)
// Used in: Medication.form
// ----------------------------------------------------------------------------

ValueSet: FormulationVS
Id: formulation-vs
Title: "Formulation (Dosage Form) ValueSet"
Description: "Pharmaceutical formulation/dosage form codes drawn from the MOH PPB formulation code system."
* ^url = "https://ilm-hie.dha.go.ke/fhir/ValueSet/formulation"
* ^status = #active
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
* ^url = "https://ilm-hie.dha.go.ke/fhir/ValueSet/active-components"
* ^status = #active
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
* ^url = "https://ilm-hie.dha.go.ke/fhir/ValueSet/generic-products"
* ^status = #active
* include codes from system GenericProductsCS
