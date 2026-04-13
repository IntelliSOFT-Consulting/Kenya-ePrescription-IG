// ============================================================================
// Example: KEAllergyIntolerance
// Profile: ke-allergyintolerance
// ============================================================================

Instance: example-allergyintolerance-amina-penicillin
InstanceOf: KEAllergyIntolerance
Usage: #example
Title: "AllergyIntolerance – Amina Hassan Penicillin Allergy"
Description: "Documented high-criticality penicillin allergy for Amina Hassan, confirmed after urticarial reaction following oral exposure."

* id = "example-allergyintolerance-amina-penicillin"
* meta.profile[0] = "https://prescription.intellisoftkenya.com/StructureDefinition/ke-allergyintolerance"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/allergy-identifier"
* identifier[0].value = "ALG-2020-00042"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"

* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"

* type = #allergy

* category[0] = #medication

* criticality = #high

* code = https://ilm-hie.dha.go.ke/fhir/CodeSystem/active-components#AC10686 "Penicillin V potassium"

* patient = Reference(example-patient-amina)

* encounter = Reference(example-encounter-amina-outpatient)

* onsetDateTime = "2020-03-10"

* recordedDate = "2020-03-10"

* recorder = Reference(example-practitioner-njoroge)

* asserter = Reference(example-patient-amina)

* note[0].text = "Patient reports severe urticarial reaction within 30 minutes of taking oral penicillin. Allergy confirmed and flagged in patient record."

// Reaction details
* reaction[0].substance = https://ilm-hie.dha.go.ke/fhir/CodeSystem/active-components#AC10686 "Penicillin V potassium"
* reaction[0].manifestation[0] = http://snomed.info/sct#126485001 "Urticaria (disorder)"
* reaction[0].description = "Widespread urticaria over trunk and limbs appearing within 30 minutes of penicillin administration."
* reaction[0].onset = "2020-03-10T14:00:00+03:00"
* reaction[0].severity = #moderate
* reaction[0].exposureRoute = https://ilm-hie.dha.go.ke/fhir/CodeSystem/route-of-administration#RT10025 "Oral"
