# Background

## Regulatory and Policy Context

### Kenya Digital Health Act and ePrescription Policy

The Kenya Digital Health Act (2023) mandates the digitisation of health records across all licensed health facilities, including the transition from paper-based to electronic prescriptions. The Kenya ePrescription Implementation Guide operationalises this mandate by providing a standardised FHIR-based data model for electronic prescriptions across the national health system.

The Ministry of Health's ePrescription policy requires:
- All Level 3 and above facilities to generate electronic prescriptions by 2026.
- Prescriptions to be transmitted through the national Health Information Exchange (HIE) operated by the Digital Health Agency (DHA).
- Pharmacies to record dispenses electronically and link them to the originating prescription on the HIE.

### Kenya Pharmacy and Poisons Board (PPB)

The PPB regulates all pharmaceutical products marketed in Kenya. This IG uses PPB-maintained code systems for:
- **Generic Products** (`GenericProductsCS`) — the national drug register for medicinal products.
- **Active Components** (`ActiveComponentsCS`) — active pharmaceutical ingredients.
- **Formulations** (`FormulationCS`) — dosage form classifications.
- **Routes of Administration** (`RouteOfAdministrationCS`) — standard administration routes.

### Social Health Authority (SHA) / NHIF

The Social Health Authority (previously NHIF) manages national health insurance claims. The ePrescription system integrates with SHA through:
- **Pre-authorization** — high-cost or controlled-substance prescriptions may require an SHA pre-authorization number, captured using the `InsurancePreAuthorizationExtension`.
- **Claims** — dispensed medications are referenced in `Claim` resources submitted by pharmacies for reimbursement.

---

## Standards Alignment

### FHIR R4

This IG is based on **HL7 FHIR Release 4 (R4, version 4.0.1)**. All profiles, extensions, CodeSystems, and ValueSets are expressed in FHIR Shorthand (FSH) and compiled by SUSHI.

### Terminology

| Code System | Authority | Use |
|-------------|-----------|-----|
| PPB GenericProducts | Kenya PPB / OCL | Medication codes (MedicationRequest, MedicationDispense, Medication) |
| PPB ActiveComponents | Kenya PPB / OCL | Allergen and ingredient codes |
| PPB Formulation | Kenya PPB / OCL | Dosage form (Medication.form) |
| PPB Route of Administration | Kenya PPB / OCL | Route codes |
| SNOMED CT | SNOMED International | Clinical findings, body sites, procedures |
| LOINC | Regenstrief Institute | Observation and laboratory codes |
| ICD-10 | WHO | Diagnosis codes |
| UCUM | Unified Code for Units of Measure | Quantities and units |

### Open Concept Lab (OCL)

Kenya MOH terminology is managed in the **Open Concept Lab (OCL)** instance hosted at `https://ilm-hie.dha.go.ke/ocl/`. ValueSets are retrieved via the OCL API and are referenced in this IG using the `https://ilm-hie.dha.go.ke/fhir/` namespace.

---

## Master Facility List (MFL)

Each health facility is identified by its **Master Facility List (MFL) code**, issued by the Ministry of Health. MFL codes are used as the primary `Organization.identifier` throughout this IG. The MFL is maintained at `https://kmhfr.health.go.ke/` and is synchronised with the national HIE.

---

## National Identification

Patients are primarily identified by their **Kenya National ID number**, issued by the National Registration Bureau. For minors, the parent/guardian ID or birth certificate number is used. The NamingSystem `https://ilm-hie.dha.go.ke/fhir/NamingSystem/national-id` is the authoritative identifier system.

---

## Privacy and Security

All data exchanged through this IG is subject to:
- **Kenya Data Protection Act (2019)** — personal health information is classified as sensitive personal data.
- **OAuth 2.0 / SMART on FHIR** — all API clients must authenticate using tokens issued by the national HIE identity provider.
- **TLS 1.2+** — all data in transit must be encrypted.
- **Audit Logging** — every prescription creation, update, and dispense event must be logged in an `AuditEvent` resource.

---

## Relationship to Other Kenya FHIR IGs

| IG | Relationship |
|----|-------------|
| Kenya Patient Summary IG | MedicationStatement records from this IG populate the patient's medication summary |
| Kenya eClaims IG | MedicationDispense records are referenced in SHA pharmacy claims |
| Kenya Laboratory IG | Morphology and diagnostic results referenced by oncology care plans |

---

## Glossary

| Term | Definition |
|------|-----------|
| **CPOE** | Computerised Physician Order Entry — a clinical system for electronic prescribing |
| **DHA** | Digital Health Agency — operator of the national HIE |
| **EMR** | Electronic Medical Record |
| **HIE** | Health Information Exchange — the national interoperability platform |
| **KMPDC** | Kenya Medical Practitioners and Dentists Council |
| **MFL** | Master Facility List — national registry of health facilities |
| **NPI** | National Provider Identifier |
| **OCL** | Open Concept Lab — terminology management platform |
| **PPB** | Pharmacy and Poisons Board — regulatory authority for pharmaceuticals |
| **SHA** | Social Health Authority (successor to NHIF) |
| **SUSHI** | Software Unit to Support FHIR IGs — FSH compiler |
