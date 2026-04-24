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
Alias: $KE-GenericProducts          = https://nshr-uat.sha.go.ke/ValueSet/generic-products-vs
Alias: $KE-ActiveComponents         = https://nshr-uat.sha.go.ke/ValueSet/active-components-vs
Alias: $KE-RouteOfAdmin             = https://nshr-uat.sha.go.ke/ValueSet/route-of-administration-vs
Alias: $KE-Formulation              = https://nshr-uat.sha.go.ke/ValueSet/formulation-vs
Alias: $KE-UoM                      = https://nshr-uat.sha.go.ke/ValueSet/unit-of-measure-vs

// MOH-KENYA — codes sourced from OCL, published as local CodeSystems/ValueSets
Alias: $KE-MedReqStatusReason       = https://nshr-uat.sha.go.ke/ValueSet/medication-request-status-reason
Alias: $KE-MedDispStatusReason      = https://nshr-uat.sha.go.ke/ValueSet/medication-dispense-status-reason
Alias: $KE-MedAdminStatusReason     = https://nshr-uat.sha.go.ke/ValueSet/medication-admin-status-reason
Alias: $KE-MedAdminRoute            = https://nshr-uat.sha.go.ke/ValueSet/med-admin-route
Alias: $KE-MedStmtStatusReason      = https://nshr-uat.sha.go.ke/ValueSet/reason-medication-status
Alias: $KE-ConditionCodes           = https://nshr-uat.sha.go.ke/ValueSet/condition-codes-vs
Alias: $KE-ConditionClinicalStatus  = https://nshr-uat.sha.go.ke/ValueSet/condition-clinical-status
Alias: $KE-ConditionVerifStatus     = https://nshr-uat.sha.go.ke/ValueSet/condition-verification-status
Alias: $KE-ConditionCategory        = https://nshr-uat.sha.go.ke/ValueSet/condition-category
Alias: $KE-ConditionSeverity        = https://nshr-uat.sha.go.ke/ValueSet/condition-severity
Alias: $KE-ConditionStage           = https://nshr-uat.sha.go.ke/ValueSet/condition-stage
Alias: $KE-Manifestation            = https://nshr-uat.sha.go.ke/ValueSet/manifestation
Alias: $KE-ObsMethods               = https://nshr-uat.sha.go.ke/ValueSet/observation-methods
Alias: $KE-AdditionalInstr          = https://nshr-uat.sha.go.ke/ValueSet/additional-instruction
Alias: $KE-ApproachSite             = https://nshr-uat.sha.go.ke/ValueSet/approach-site
Alias: $KE-CarePlanCategory         = https://nshr-uat.sha.go.ke/ValueSet/care-plan-category
Alias: $KE-ProcedureCode            = https://nshr-uat.sha.go.ke/ValueSet/procedure-code

// WHO ICD-11 — external system, too large to embed locally; referenced by URL
Alias: $KE-ICD11                    = https://ilm-hie.dha.go.ke/ocl/orgs/WHO/ValueSet/icd-11/$expand

// FHIR standard dispenser instructions ValueSet
Alias: $KE-MedReqDispenserInstr     = http://hl7.org/fhir/ValueSet/medicationrequest-dispenser-instructions

Alias: $KE-TS                       = http://ilm-hie.dha.go.ke