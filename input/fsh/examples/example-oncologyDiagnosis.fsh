// ============================================================================
// Example: KenyaOncologyDiagnosisCondition
// Profile: ke-oncology-diagnosis
// ============================================================================

Instance: example-oncologydiagnosis-otieno-lungcancer
InstanceOf: KEOncologyDiagnosis
Usage: #example
Title: "OncologyDiagnosis – James Otieno Lung Cancer"
Description: "Confirmed diagnosis of malignant neoplasm of the right lower lobe of the lung (Stage II) for James Otieno, recorded at KNH during inpatient admission."

* id = "example-oncologydiagnosis-otieno-lungcancer"
* meta.profile[0] = "https://prescription.intellisoftkenya.com/StructureDefinition/ke-oncology-diagnosis"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/condition-identifier"
* identifier[0].value = "COND-2025-IPD-00301"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"

* severity = http://snomed.info/sct#24484000 "Severe (severity modifier)"

* code = http://hl7.org/fhir/sid/icd-10#C34.1 "Malignant neoplasm of upper lobe, bronchus or lung"

* bodySite[0] = http://snomed.info/sct#39607008 "Lung structure (body structure)"

* subject = Reference(example-patient-otieno)

* encounter = Reference(example-encounter-otieno-inpatient)

* onsetDateTime = "2025-05-01"

* recordedDate = "2025-06-10"

* recorder = Reference(example-practitioner-njoroge)

* asserter = Reference(example-practitioner-njoroge)

// Staging: TNM Stage II
* stage[0].summary = http://snomed.info/sct#258219007 "Stage 2 (qualifier value)"
* stage[0].type = http://snomed.info/sct#254299000 "Tumor staging (tumor staging)"

// Supporting evidence
* evidence[0].code[0] = http://snomed.info/sct#169069000 "CT scan of chest"

* note[0].text = "Histopathology confirmed non-small cell lung carcinoma (adenocarcinoma) of the right upper lobe. CT staging indicates T2N1M0, clinical Stage IIA. Patient referred for oncology MDT review and chemotherapy planning."
