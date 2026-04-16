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

* severity = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/CONDITION-SEVERITY/#severe "Severe"

* code = http://hl7.org/fhir/sid/icd-10#C34.1 "Malignant neoplasm of upper lobe, bronchus or lung"

* subject = Reference(example-patient-otieno)

* encounter = Reference(example-encounter-otieno-inpatient)

* onsetDateTime = "2025-05-01"

* recordedDate = "2025-06-10"

* recorder = Reference(example-practitioner-njoroge)

* asserter = Reference(example-practitioner-njoroge)

// Staging: TNM Stage II
* stage[0].summary = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/CONDITION-STAGE/#stage-ii "Stage II"

// Supporting evidence
* evidence[0].code[0] = https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/MANIFESTATION-OR-SYMPTOM/#CHEST-PAIN "Chest pain"

* note[0].text = "Histopathology confirmed non-small cell lung carcinoma (adenocarcinoma) of the right upper lobe. CT staging indicates T2N1M0, clinical Stage IIA. Patient referred for oncology MDT review and chemotherapy planning."
