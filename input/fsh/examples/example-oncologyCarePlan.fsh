// ============================================================================
// Example: KenyaOncologyCarePlan
// Profile: oncology-careplan
// ============================================================================

Instance: example-oncologycareplan-otieno-chemo
InstanceOf: KenyaOncologyCarePlan
Usage: #example
Title: "OncologyCarePlan – James Otieno Chemotherapy Plan"
Description: "Active oncology care plan for James Otieno covering chemotherapy initiation and supportive care activities, managed by the KNH oncology MDT."

* id = "example-oncologycareplan-otieno-chemo"
* meta.profile[0] = "http://example.org/StructureDefinition/oncology-careplan"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/careplan-identifier"
* identifier[0].value = "CP-2025-ONCO-00077"

* status = #active

* intent = #plan

* category[0] = http://snomed.info/sct#734163000 "Care plan (record artifact)"

* title = "Lung Cancer Chemotherapy and Supportive Care Plan"

* description = "Multidisciplinary oncology care plan for James Otieno with Stage IIA pulmonary adenocarcinoma, encompassing platinum-based chemotherapy, monitoring, and supportive care."

* subject = Reference(example-patient-otieno)

* encounter = Reference(example-encounter-otieno-inpatient)

* period.start = "2025-06-15"
* period.end   = "2025-12-15"

* author = Reference(example-practitioner-njoroge)

// Contained CareTeam (inline instance)
* contained[+] = inline-careteam-oncology
* careTeam[0] = Reference(inline-careteam-oncology)

// Addressed condition
* addresses[0] = Reference(example-oncologydiagnosis-otieno-lungcancer)

// Activity 1: Chemotherapy administration
* activity[0].detail.code = http://snomed.info/sct#367336001 "Chemotherapy (procedure)"
* activity[0].detail.reasonCode[0] = http://snomed.info/sct#363358000 "Malignant tumor of lung (disorder)"
* activity[0].detail.status = #in-progress
* activity[0].detail.doNotPerform = false

// Activity 2: Oncology follow-up review
* activity[1].detail.code = http://snomed.info/sct#185389009 "Follow-up visit (procedure)"
* activity[1].detail.reasonCode[0] = http://snomed.info/sct#363358000 "Malignant tumor of lung (disorder)"
* activity[1].detail.status = #scheduled
* activity[1].detail.doNotPerform = false
