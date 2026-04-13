// ============================================================
// Kenya eRx FHIR Implementation Guide — Aliases
// ============================================================

// ── External CodeSystems ──────────────────────────────────────
Alias: $SCT        = http://snomed.info/sct
Alias: $LOINC      = http://loinc.org
Alias: $UCUM       = http://unitsofmeasure.org
Alias: $ICD10      = http://hl7.org/fhir/sid/icd-10
Alias: $RxNorm     = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $v2-0092    = http://terminology.hl7.org/CodeSystem/v2-0092
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

// ── FHIR ValueSets ───────────────────────────────────────────
Alias: $VS-med-request-status       = http://hl7.org/fhir/ValueSet/medicationrequest-status
Alias: $VS-med-request-intent       = http://hl7.org/fhir/ValueSet/medicationrequest-intent
Alias: $VS-med-request-category     = http://hl7.org/fhir/ValueSet/medicationrequest-category
Alias: $VS-request-priority         = http://hl7.org/fhir/ValueSet/request-priority
Alias: $VS-med-codes                = http://hl7.org/fhir/ValueSet/medication-codes
Alias: $VS-med-dispense-status      = http://hl7.org/fhir/ValueSet/medicationdispense-status
Alias: $VS-med-dispense-sr          = http://hl7.org/fhir/ValueSet/medicationdispense-status-reason
Alias: $VS-med-admin-status         = http://hl7.org/fhir/ValueSet/medication-admin-status
Alias: $VS-med-admin-category       = http://hl7.org/fhir/ValueSet/medication-admin-category
Alias: $VS-med-admin-sr             = http://hl7.org/fhir/ValueSet/medication-admin-status-reason
Alias: $VS-med-admin-fn             = http://hl7.org/fhir/ValueSet/med-admin-perform-function
Alias: $VS-med-stmt-status          = http://hl7.org/fhir/ValueSet/medication-statement-status
Alias: $VS-med-stmt-sr              = http://hl7.org/fhir/ValueSet/reason-medication-status-codes
Alias: $VS-med-status               = http://hl7.org/fhir/ValueSet/medication-status
Alias: $VS-allergy-clinical         = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical
Alias: $VS-allergy-verification     = http://hl7.org/fhir/ValueSet/allergyintolerance-verification
Alias: $VS-allergy-type             = http://hl7.org/fhir/ValueSet/allergy-intolerance-type
Alias: $VS-allergy-category         = http://hl7.org/fhir/ValueSet/allergy-intolerance-category
Alias: $VS-allergy-criticality      = http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality
Alias: $VS-reaction-severity        = http://hl7.org/fhir/ValueSet/reaction-event-severity
Alias: $VS-encounter-status         = http://hl7.org/fhir/ValueSet/encounter-status
Alias: $VS-encounter-class          = http://terminology.hl7.org/ValueSet/v3-ActEncounterCode
Alias: $VS-service-type             = http://hl7.org/fhir/ValueSet/service-type
Alias: $VS-act-priority             = http://terminology.hl7.org/ValueSet/v3-ActPriority
Alias: $VS-admit-source             = http://hl7.org/fhir/ValueSet/encounter-admit-source
Alias: $VS-readmit                  = http://terminology.hl7.org/ValueSet/v2-0092
Alias: $VS-discharge-disp           = http://hl7.org/fhir/ValueSet/encounter-discharge-disposition
Alias: $VS-episode-status           = http://hl7.org/fhir/ValueSet/episode-of-care-status
Alias: $VS-episode-type             = http://hl7.org/fhir/ValueSet/episodeofcare-type
Alias: $VS-obs-status               = http://hl7.org/fhir/ValueSet/observation-status
Alias: $VS-obs-category             = http://hl7.org/fhir/ValueSet/observation-category
Alias: $VS-obs-codes                = http://hl7.org/fhir/ValueSet/observation-codes
Alias: $VS-obs-methods              = http://hl7.org/fhir/ValueSet/observation-methods
Alias: $VS-body-site                = http://hl7.org/fhir/ValueSet/body-site
Alias: $VS-condition-clinical       = http://hl7.org/fhir/ValueSet/condition-clinical
Alias: $VS-condition-verification   = http://hl7.org/fhir/ValueSet/condition-ver-status
Alias: $VS-condition-severity       = http://hl7.org/fhir/ValueSet/condition-severity
Alias: $VS-condition-stage          = http://hl7.org/fhir/ValueSet/condition-stage
Alias: $VS-condition-stage-type     = http://hl7.org/fhir/ValueSet/condition-stage-type
Alias: $VS-manifestation            = http://hl7.org/fhir/ValueSet/manifestation-or-symptom
Alias: $VS-care-plan-status         = http://hl7.org/fhir/ValueSet/request-status
Alias: $VS-care-plan-intent         = http://hl7.org/fhir/ValueSet/care-plan-intent
Alias: $VS-care-plan-category       = http://hl7.org/fhir/ValueSet/care-plan-category
Alias: $VS-care-plan-activity-stat  = http://hl7.org/fhir/ValueSet/care-plan-activity-status
Alias: $VS-subst-admin-subst        = http://hl7.org/fhir/ValueSet/v3-SubstanceAdminSubstitution
Alias: $VS-subst-admin-reason       = http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason
Alias: $VS-supply-type              = http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType
Alias: $VS-additional-instr        = http://hl7.org/fhir/ValueSet/additional-instruction-codes
Alias: $VS-approach-site            = http://hl7.org/fhir/ValueSet/approach-site-codes
Alias: $VS-route-codes              = http://hl7.org/fhir/ValueSet/route-codes
Alias: $VS-procedure-code           = http://hl7.org/fhir/ValueSet/procedure-code
Alias: $VS-clinical-findings        = http://hl7.org/fhir/ValueSet/clinical-findings

// ── Kenya MOH Local ValueSets (OCL / ILM-HIE) ────────────────
Alias: $KE-GenericProducts          = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-PPB/ValueSet/GenericProducts/
Alias: $KE-ActiveComponents         = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-PPB/ValueSet/ActiveComponents/$expand
Alias: $KE-RouteOfAdmin             = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-PPB/ValueSet/RouteOfAdministration/$expand
Alias: $KE-Formulation              = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-PPB/ValueSet/Formulation/$expand
Alias: $KE-UoM                      = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-PPB/ValueSet/UoM/$expand
Alias: $KE-MedReqStatusReason       = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/MEDICATIONREQUEST-STATUS-REASON/$expand
Alias: $KE-MedDispStatusReason      = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/MEDICATIONDISPENSE-STATUS-REASON/$expand
Alias: $KE-MedAdminStatusReason     = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/MEDICATION-ADMIN-STATUS-REASON/$expand
Alias: $KE-MedAdminRoute            = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/MEDICATION-ADMINISTRATION-ROUTE/
Alias: $KE-MedStmtStatusReason      = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/REASON-MEDICATION-STATUS-CODES/$expand
Alias: $KE-ConditionCodes           = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-CODES/
Alias: $KE-ConditionClinicalStatus  = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-CLINICAL-STATUS/
Alias: $KE-ConditionVerifStatus     = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-VERIFICATION-STATUS/
Alias: $KE-ConditionCategory        = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-CATEGORY/
Alias: $KE-ConditionSeverity        = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-SEVERITY/$expand
Alias: $KE-ConditionStage           = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CONDITION-STAGE/$expand
Alias: $KE-Manifestation            = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/MANIFESTATION-OR-SYMPTOM/$expand
Alias: $KE-ObsMethods               = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/OBSERVATION-METHODS/$expand
Alias: $KE-AdditionalInstr          = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/ADDITIONAL-INSTRUCTION-CODES/$expand
Alias: $KE-ApproachSite             = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/APPROACH-SITE-CODES/$expand
Alias: $KE-CarePlanCategory         = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/CARE-PLAN-CATEGORY/$expand
Alias: $KE-ProcedureCode            = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/ValueSet/PROCEDURE-CODE/$expand
Alias: $KE-ICD11                    = https://ilm-hie.dha.go.ke/ocl/orgs/WHO/ValueSet/icd-11/$expand
Alias: $KE-MedReqDispenserInstr     = http://hl7.org/fhir/ValueSet/medicationrequest-dispenser-instructions
