# Downloads

This page provides links to downloadable artifacts generated from this Implementation Guide.

---

## Downloadable Packages

| Artifact | Description | Format |
|----------|-------------|--------|
| **Full IG Package** | The complete FHIR package (profiles, terminology, examples, CapabilityStatement) for use with FHIR validators and servers | `.tgz` |
| **FSH Source** | Raw FHIR Shorthand source files for all profiles and terminology | `.zip` |
| **JSON Profiles** | All StructureDefinition resources in JSON format | `.zip` |
| **XML Profiles** | All StructureDefinition resources in XML format | `.zip` |
| **Validator Pack** | Pre-configured package for use with the HL7 FHIR Validator | `.tgz` |

---

## Terminology Downloads

| Code System | Codes | Format |
|-------------|-------|--------|
| Generic Products (PPB) | 3,021 | CSV / JSON |
| Active Components (PPB) | 2,632 | CSV / JSON |
| Formulation (PPB) | 592 | CSV / JSON |
| Unit of Measure (PPB) | 493 | CSV / JSON |
| Route of Administration (PPB) | ~40 | CSV / JSON |
| MedicationRequest Status | 6 | CSV / JSON |
| MedicationRequest Priority | 2 | CSV / JSON |

---

## Example Resources

All examples are available as standalone JSON resources:

| Example | Profile |
|---------|---------|
| Azithromycin 500 mg Medication | `KenyaEPrescriptionMedication` |
| Amina Hassan – Patient | Base `Patient` |
| James Otieno – Patient | Base `Patient` |
| Dr. Sarah Njoroge – Practitioner | Base `Practitioner` |
| Kenyatta National Hospital – Organization | Base `Organization` |
| KNH Outpatient Pharmacy – Location | Base `Location` |
| Amina Outpatient Encounter | `KenyaEncounter` |
| James Otieno Inpatient Encounter | `KenyaEncounter` |
| Azithromycin Prescription | `KenyaEPrescriptionMedicationRequest` |
| Penicillin Allergy | `KEAllergyIntolerance` |
| Azithromycin Dispense | `KenyaMedicationDispense` |
| IV Azithromycin Administration | `KEMedicationAdministration` |
| Azithromycin Medication Statement | `KenyaMedicationStatement` |
| James Otieno Episode of Care | `KenyaEpisodeOfCare` |
| Lung Cancer Diagnosis | `KenyaOncologyDiagnosisCondition` |
| Lung Biopsy Histopathology | `KenyaMorphologyObservation` |
| Chemotherapy Care Plan | `KenyaOncologyCarePlan` |

---

## Validator Usage

To validate a FHIR resource against this IG:

```bash
java -jar validator_cli.jar \
  -ig https://nshr-uat.sha.go.ke/packages/fhir.eprescription.ig-0.1.0.tgz \
  -version 4.0.1 \
  -profile https://nshr-uat.sha.go.ke/StructureDefinition/ke-medicationrequest \
  my-prescription.json
```

---

## Tooling

| Tool | Version | Purpose |
|------|---------|---------|
| [SUSHI](https://github.com/FHIR/sushi) | ≥ 3.x | FSH compiler |
| [HL7 FHIR Validator](https://github.com/hapifhir/org.hl7.fhir.core) | latest | Resource validation |
| [IG Publisher](https://github.com/HL7/fhir-ig-publisher) | latest | IG build and publication |
| [HAPI FHIR](https://hapifhir.io/) | 6.x+ | Reference server implementation |

---

## License

This Implementation Guide is published under the **Creative Commons Attribution 4.0 International (CC-BY-4.0)** license. You are free to share and adapt the material, provided you give appropriate credit to Digital Health Agency, Kenya.

&copy; 2025 Digital Health Agency, Kenya. All rights reserved where not otherwise stated.
