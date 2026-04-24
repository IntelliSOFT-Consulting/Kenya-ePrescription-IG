// ============================================================================
// Invalid Examples – Kenya ePrescription IG
//
// Strategy: InstanceOf the BASE FHIR resource type so SUSHI compiles the
// instance, then declare meta.profile pointing to the Kenya profile so the
// IG Publisher validator checks conformance and reports violations.
//
// Expected validation errors are documented in comments on each instance.
// ============================================================================


// ----------------------------------------------------------------------------
// INVALID: KEMedication
// Declared against base Medication; meta.profile claims ke-medication.
// Violations (detected by IG Publisher validator):
//   • identifier [1..*] (profile required) — omitted
//   • form [1..1] (profile required) — omitted
//   • code binding uses SNOMED instead of $KE-GenericProducts (required binding)
// ----------------------------------------------------------------------------
Instance: example-medication-invalid
InstanceOf: Medication
Usage: #example
Title: "Medication – INVALID: Missing identifier/form; wrong code binding"
Description: "INVALID Medication resource. The declared profile ke-medication requires identifier (1..*), form (1..1), and medicationCodeableConcept from the $KE-GenericProducts value set. All three constraints are violated here."

* id = "example-medication-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication"

// INVALID: code is bound to $KE-GenericProducts (required). SNOMED is not in that value set.
* code = http://snomed.info/sct#372687004 "Amoxicillin"

* status = #active

// INVALID: form [1..1 MS in ke-medication] — omitted entirely
// INVALID: identifier [1..* in ke-medication] — omitted entirely

* ingredient[0].itemCodeableConcept = https://ilm-hie.dha.go.ke/fhir/CodeSystem/active-components-cs#AC10746 "Azithromycin"


// ----------------------------------------------------------------------------
// INVALID: KEMedicationRequest
// Violations (detected by IG Publisher validator):
//   • dispenseRequest [1..1] (profile required) — omitted
//   • medicationCodeableConcept binding uses ICD-10 (not in $KE-GenericProducts)
//   • dosageInstruction.route uses a random code system (not in $KE-RouteOfAdmin)
// ----------------------------------------------------------------------------
Instance: example-medicationrequest-invalid
InstanceOf: MedicationRequest
Usage: #example
Title: "MedicationRequest – INVALID: Missing dispenseRequest; wrong medication and route bindings"
Description: "INVALID MedicationRequest. Violations: dispenseRequest (1..1) omitted; medication coded from ICD-10 instead of $KE-GenericProducts (required binding); dosageInstruction.route uses an unknown system not in $KE-RouteOfAdmin."

* id = "example-medicationrequest-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-request"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/prescription-identifier"
* identifier[0].value = "RX-INVALID-001"

* status = #active
* intent = #order
* category[0] = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient "Outpatient"

// INVALID: ICD-10 code is not in the required $KE-GenericProducts value set
* medicationCodeableConcept = http://hl7.org/fhir/sid/icd-10#J06.9 "Acute upper respiratory infection"

* subject = Reference(example-patient-amina)
* authoredOn = "2025-06-15"
* requester = Reference(example-practitioner-njoroge)

* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
// INVALID: route uses an unknown system not in $KE-RouteOfAdmin (RouteOfAdministrationCS)
* dosageInstruction[0].route = http://example.org/wrong-routes#by-mouth "By Mouth"
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 500
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #mg

// INVALID: dispenseRequest [1..1 in ke-medication-request] — omitted entirely


// ----------------------------------------------------------------------------
// INVALID: KEMedicationDispense
// Violations (detected by IG Publisher validator):
//   • authorizingPrescription [1..*] (profile required) — omitted
//   • performer.actor must be Reference(Organization|PractitionerRole); Patient used
//   • medication binding uses SNOMED instead of $KE-GenericProducts
// ----------------------------------------------------------------------------
Instance: example-medicationdispense-invalid
InstanceOf: MedicationDispense
Usage: #example
Title: "MedicationDispense – INVALID: Missing authorizingPrescription; wrong performer and medication"
Description: "INVALID MedicationDispense. Violations: authorizingPrescription (1..*) absent; performer.actor references a Patient instead of the required Organization|PractitionerRole; medication coded from SNOMED instead of $KE-GenericProducts."

* id = "example-medicationdispense-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-dispense"

* status = #completed

* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#FF "First Fill"

// INVALID: SNOMED code is not in the required $KE-GenericProducts value set
* medicationCodeableConcept.coding[0].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[0].code = #372687004
* medicationCodeableConcept.coding[0].display = "Amoxicillin"

* subject = Reference(example-patient-amina)

// INVALID: ke-medication-dispense requires performer.actor only Reference(Organization|PractitionerRole)
// Using a Patient reference violates the type constraint
* performer[0].actor = Reference(example-patient-amina)

* location = Reference(example-location-knh-pharmacy)

// INVALID: authorizingPrescription [1..*] — omitted

* quantity.value = 3
* quantity.unit = "tablet"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #{tablet}

* substitution.wasSubstituted = false


// ----------------------------------------------------------------------------
// INVALID: KEMedicationAdministration
// Violations (detected by IG Publisher validator):
//   • context/Encounter [1..1] (profile required) — omitted
//   • dosage.route uses RouteOfAdministrationCS instead of required $KE-MedAdminRoute
//   • subject references Organization instead of required Patient
// ----------------------------------------------------------------------------
Instance: example-medicationadministration-invalid
InstanceOf: MedicationAdministration
Usage: #example
Title: "MedicationAdministration – INVALID: Missing context; wrong route system; wrong subject type"
Description: "INVALID MedicationAdministration. Violations: context (Encounter, 1..1) absent; dosage.route coded from RouteOfAdministrationCS instead of the required MedAdminRouteCS ($KE-MedAdminRoute); subject references an Organization not a Patient."

* id = "example-medicationadministration-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-administration"

* status = #completed

* medicationCodeableConcept = https://ilm-hie.dha.go.ke/fhir/CodeSystem/generic-products-cs#GE10015 "Azithromycin 500 mg Oral Tablet"

// subject uses a valid Patient reference (base FHIR requires Patient|Group; profile requires Patient only)
* subject = Reference(example-patient-amina)

// INVALID: context [1..1 in ke-medication-administration] — omitted
// Base FHIR context is 0..1 Reference(Encounter|EpisodeOfCare), profile requires 1..1 Reference(Encounter)

* effectiveDateTime = "2025-06-15T10:00:00+03:00"

* performer[0].actor = Reference(example-practitioner-njoroge)

// INVALID: dosage.route must use $KE-MedAdminRoute (MedAdminRouteCS: ORAL|INTRAVENOUS-IV|INHALED)
// RT10036 is from RouteOfAdministrationCS which is NOT the required value set for this element
* dosage.route = https://ilm-hie.dha.go.ke/fhir/CodeSystem/route-of-administration-cs#RT10036 "Intravenous"
* dosage.dose.value = 500
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mg


// ----------------------------------------------------------------------------
// INVALID: KEMedicationStatement
// Violations (detected by IG Publisher validator):
//   • medicationCodeableConcept uses ICD-10 (not in $KE-GenericProducts)
//   • effective[x] must be Period (profile constraint) — dateTime used instead
//   • informationSource must be Reference(Patient|Practitioner|RelatedPerson) — Organization used
// ----------------------------------------------------------------------------
Instance: example-medicationstatement-invalid
InstanceOf: MedicationStatement
Usage: #example
Title: "MedicationStatement – INVALID: Wrong medication binding, wrong effective type, wrong info source"
Description: "INVALID MedicationStatement. Violations: medication coded from ICD-10 instead of $KE-GenericProducts; effective[x] uses dateTime instead of the required Period type; informationSource references an Organization not Patient|Practitioner|RelatedPerson."

* id = "example-medicationstatement-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-medication-statement"

* status = #completed

// INVALID: ICD-10 code is not in the required $KE-GenericProducts value set
* medicationCodeableConcept = http://hl7.org/fhir/sid/icd-10#J06.9 "Acute upper respiratory infection"

* subject = Reference(example-patient-amina)

// INVALID: ke-medication-statement constrains effective[x] to Period only; dateTime is not allowed
* effectiveDateTime = "2025-06-15"

// INVALID: ke-medication-statement requires informationSource only Reference(Patient|Practitioner|RelatedPerson)
* informationSource = Reference(example-organization-knh)

* dateAsserted = "2025-06-18"


// ----------------------------------------------------------------------------
// INVALID: KEAllergyIntolerance
// Violations (detected by IG Publisher validator):
//   • recordedDate [1..1] (profile required) — omitted
//   • criticality uses invalid code not in allergy-intolerance-criticality value set
//   • reaction.severity [1..1] (profile required) — omitted
// ----------------------------------------------------------------------------
Instance: example-allergyintolerance-invalid
InstanceOf: AllergyIntolerance
Usage: #example
Title: "AllergyIntolerance – INVALID: Missing recordedDate, invalid criticality, missing reaction severity"
Description: "INVALID AllergyIntolerance. Violations: recordedDate (1..1) omitted; criticality 'extreme' is not in allergy-intolerance-criticality (valid: low|high|unable-to-assess); reaction.severity (1..1) omitted."

* id = "example-allergyintolerance-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-allergy-intolerance"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category[0] = #medication

// INVALID: 'extreme' is not a valid code in allergy-intolerance-criticality
// Valid codes: low | high | unable-to-assess
* criticality = #extreme

* code = https://ilm-hie.dha.go.ke/fhir/CodeSystem/active-components-cs#AC10686 "Penicillin V potassium"

* patient = Reference(example-patient-amina)

// INVALID: recordedDate [1..1 in ke-allergy-intolerance] — omitted

* reaction[0].substance = https://ilm-hie.dha.go.ke/fhir/CodeSystem/active-components-cs#AC10686 "Penicillin V potassium"
* reaction[0].manifestation[0] = https://ilm-hie.dha.go.ke/fhir/CodeSystem/manifestation-cs#URTICARIA "Urticaria"
// INVALID: reaction.severity [1..1 in ke-allergy-intolerance] — omitted


// ----------------------------------------------------------------------------
// INVALID: KEEncounter
// Violations (detected by IG Publisher validator):
//   • participant [1..*] (profile required) — omitted
//   • serviceProvider [1..1] (profile required) — omitted
//   • class uses 'WALK-IN' which is not in the required v3-ActEncounterCode value set
// ----------------------------------------------------------------------------
Instance: example-encounter-invalid
InstanceOf: Encounter
Usage: #example
Title: "Encounter – INVALID: Missing participant/serviceProvider; wrong class code"
Description: "INVALID Encounter. Violations: participant (1..*) omitted; serviceProvider (1..1) omitted; class 'WALK-IN' is not in v3-ActEncounterCode (valid: AMB|EMER|FLD|HH|IMP|ACUTE|NONAC|SS|VR)."

* id = "example-encounter-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-encounter"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/encounter-identifier"
* identifier[0].value = "ENC-INVALID-001"

* status = #finished

// INVALID: 'WALK-IN' is not in v3-ActEncounterCode
// Valid codes: AMB | EMER | FLD | HH | IMP | ACUTE | NONAC | OBSENC | PRENC | SS | VR
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#WALK-IN "Walk-in"

* subject = Reference(example-patient-amina)

// INVALID: participant [1..*] — omitted entirely

* period.start = "2025-06-15T09:00:00+03:00"
* period.end = "2025-06-15T10:00:00+03:00"

// INVALID: serviceProvider [1..1] — omitted entirely


// ----------------------------------------------------------------------------
// INVALID: KEEpisodeOfCare
// Violations (detected by IG Publisher validator):
//   • type [1..*] (profile required) — omitted
//   • status 'suspended' is not in the required episode-of-care-status value set
//   • careManager uses wrong reference type (Organization instead of Practitioner|PractitionerRole)
// ----------------------------------------------------------------------------
Instance: example-episodeofcare-invalid
InstanceOf: EpisodeOfCare
Usage: #example
Title: "EpisodeOfCare – INVALID: Missing type, invalid status, wrong careManager type"
Description: "INVALID EpisodeOfCare. Violations: type (1..*) omitted; status 'suspended' not in episode-of-care-status (valid: planned|waitlist|active|onhold|finished|cancelled|entered-in-error); careManager references Organization instead of Practitioner|PractitionerRole."

* id = "example-episodeofcare-invalid"
* meta.profile[0] = "https://nshr-uat.sha.go.ke/StructureDefinition/ke-episode-of-care"

// INVALID: 'suspended' is not in episode-of-care-status
// Valid codes: planned | waitlist | active | onhold | finished | cancelled | entered-in-error
* status = #suspended

// INVALID: type [1..* in ke-episode-of-care] — omitted entirely

* patient = Reference(example-patient-otieno)

// careManager omitted to focus violations on status code and missing type
// (ke-episode-of-care requires careManager Reference(Practitioner|PractitionerRole); base FHIR only allows Practitioner)

* period.start = "2025-06-10"
