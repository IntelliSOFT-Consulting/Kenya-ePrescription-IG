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

// ── Kenya MOH Local ValueSets — now resolved to local FHIR IG ────────────────
// MOH-PPB — codes sourced from OCL, published as local CodeSystems/ValueSets
Alias: $KE-GenericProducts          = https://prescription.intellisoftkenya.com/ValueSet/generic-products-vs
Alias: $KE-ActiveComponents         = https://prescription.intellisoftkenya.com/ValueSet/active-components-vs
Alias: $KE-RouteOfAdmin             = https://prescription.intellisoftkenya.com/ValueSet/route-of-administration-vs
Alias: $KE-Formulation              = https://prescription.intellisoftkenya.com/ValueSet/formulation-vs
Alias: $KE-UoM                      = https://prescription.intellisoftkenya.com/ValueSet/unit-of-measure-vs

// MOH-KENYA — codes sourced from OCL, published as local CodeSystems/ValueSets
Alias: $KE-MedReqStatusReason       = https://prescription.intellisoftkenya.com/ValueSet/medication-request-status-reason
Alias: $KE-MedDispStatusReason      = https://prescription.intellisoftkenya.com/ValueSet/medication-dispense-status-reason
Alias: $KE-MedAdminStatusReason     = https://prescription.intellisoftkenya.com/ValueSet/medication-admin-status-reason
Alias: $KE-MedAdminRoute            = https://prescription.intellisoftkenya.com/ValueSet/med-admin-route
Alias: $KE-MedStmtStatusReason      = https://prescription.intellisoftkenya.com/ValueSet/reason-medication-status
Alias: $KE-ConditionCodes           = https://prescription.intellisoftkenya.com/ValueSet/condition-codes-vs
Alias: $KE-ConditionClinicalStatus  = https://prescription.intellisoftkenya.com/ValueSet/condition-clinical-status
Alias: $KE-ConditionVerifStatus     = https://prescription.intellisoftkenya.com/ValueSet/condition-verification-status
Alias: $KE-ConditionCategory        = https://prescription.intellisoftkenya.com/ValueSet/condition-category
Alias: $KE-ConditionSeverity        = https://prescription.intellisoftkenya.com/ValueSet/condition-severity
Alias: $KE-ConditionStage           = https://prescription.intellisoftkenya.com/ValueSet/condition-stage
Alias: $KE-Manifestation            = https://prescription.intellisoftkenya.com/ValueSet/manifestation
Alias: $KE-ObsMethods               = https://prescription.intellisoftkenya.com/ValueSet/observation-methods
Alias: $KE-AdditionalInstr          = https://prescription.intellisoftkenya.com/ValueSet/additional-instruction
Alias: $KE-ApproachSite             = https://prescription.intellisoftkenya.com/ValueSet/approach-site
Alias: $KE-CarePlanCategory         = https://prescription.intellisoftkenya.com/ValueSet/care-plan-category
Alias: $KE-ProcedureCode            = https://prescription.intellisoftkenya.com/ValueSet/procedure-code

// WHO ICD-11 — external system, too large to embed locally; referenced by URL
Alias: $KE-ICD11                    = https://ilm-hie.dha.go.ke/ocl/orgs/WHO/ValueSet/icd-11/$expand

// FHIR standard dispenser instructions ValueSet
Alias: $KE-MedReqDispenserInstr     = http://hl7.org/fhir/ValueSet/medicationrequest-dispenser-instructions

Alias: $KE-TS                       = http://ilm-hie.dha.go.ke