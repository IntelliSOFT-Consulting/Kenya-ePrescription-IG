// ============================================================================
// Example: KenyaMorphologyObservation
// Profile: ke-morphology-observation
// ============================================================================

Instance: example-morphologyobservation-otieno-histopath
InstanceOf: KenyaMorphologyObservation
Usage: #example
Title: "MorphologyObservation – James Otieno Lung Biopsy Histopathology"
Description: "Final histopathology result for James Otieno's CT-guided lung biopsy confirming pulmonary adenocarcinoma, performed at KNH pathology department."

* id = "example-morphologyobservation-otieno-histopath"
* meta.profile[0] = "http://example.org/StructureDefinition/ke-morphology-observation"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/observation-identifier"
* identifier[0].value = "OBS-2025-PATH-00512"

* status = #final

* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"

// LOINC code for histology/morphology report
* code = http://loinc.org#59847-4 "Histology and Behavior ICD-O-3 Cancer"

* subject = Reference(example-patient-otieno)

// Focus: the oncology diagnosis condition this observation is about
* focus[0] = Reference(example-oncologydiagnosis-otieno-lungcancer)

* encounter = Reference(example-encounter-otieno-inpatient)

* effectiveDateTime = "2025-06-12T14:30:00+03:00"

* performer[0] = Reference(example-practitioner-njoroge)

// Morphology finding: pulmonary adenocarcinoma (ICD-O-3 M-8140/3)
* valueCodeableConcept = http://snomed.info/sct#413448000 "Adenocarcinoma (morphologic abnormality)"
* valueCodeableConcept.text = "Pulmonary adenocarcinoma – moderately differentiated (Grade 2). ICD-O-3: 8140/3."

* bodySite = http://snomed.info/sct#39607008 "Lung structure (body structure)"

// Method: CT-guided core biopsy
* method = http://snomed.info/sct#432541000124108 "Computed tomography guided biopsy (procedure)"
