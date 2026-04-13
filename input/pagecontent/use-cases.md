# Use Cases

This page describes the primary clinical and operational use cases supported by the Kenya ePrescription Implementation Guide (IG). Each use case is mapped to the FHIR profiles defined in this IG.

---

## Actors

| Actor | Description |
|-------|-------------|
| **Prescriber** | A registered medical practitioner (physician, clinical officer, nurse prescriber) licensed by KMPDC |
| **Dispenser** | A registered pharmacist or pharmacy technician operating a licensed pharmacy |
| **Patient** | The individual for whom the prescription is issued |
| **Pharmacy System** | A dispensing management system connected to the national HIE |
| **EMR / CPOE System** | An electronic medical record or computerised prescribing system used at the facility |
| **National HIE** | The Kenya Health Information Exchange operated by DHA |
| **NHIF / SHA** | National Health Insurance Fund / Social Health Authority — the national insurer |

---

## UC-01 – Outpatient Electronic Prescription

**Trigger:** A clinician completes a patient consultation and decides to prescribe medication.

**Actors:** Prescriber, Patient, EMR System, National HIE

**Preconditions:**
- The patient has been registered and verified against the MPI.
- The prescriber holds a valid KMPDC medical licence.
- The EMR is connected to the national HIE.

**Main Flow:**
1. The prescriber selects the patient and opens a new prescription.
2. The EMR checks the patient's allergy record (`AllergyIntolerance`) against the selected drug.
3. If no contraindication, the prescriber completes the `MedicationRequest` with dose, route, frequency, and duration.
4. The EMR sends the `MedicationRequest` to the national HIE.
5. The patient receives a prescription reference number (QR code / SMS).
6. The prescription is accessible at any dispensing point linked to the HIE.

**FHIR Resources Used:**
- `KenyaEncounter` — consultation encounter
- `KenyaEPrescriptionMedicationRequest` — the prescription
- `KEAllergyIntolerance` — allergy check
- `KenyaEPrescriptionMedication` — medication catalogue lookup

---

## UC-02 – Pharmacy Dispensing

**Trigger:** A patient presents a prescription reference at a pharmacy.

**Actors:** Dispenser, Patient, Pharmacy System, National HIE

**Preconditions:**
- A valid `MedicationRequest` with status `active` exists on the HIE.
- The pharmacy is a licensed dispensing facility with an MFL code.

**Main Flow:**
1. The pharmacist retrieves the prescription from the HIE using the reference number.
2. The pharmacy system validates the prescription (status, validity period, refill count).
3. The pharmacist verifies the patient's identity against the national ID.
4. The pharmacist dispenses the medication and records a `MedicationDispense` resource.
5. The HIE updates the `MedicationRequest` status to `completed` (if no refills remain).
6. An optional dispense notification is sent to the prescriber via the HIE.

**FHIR Resources Used:**
- `KenyaEPrescriptionMedicationRequest` — prescription retrieval and status update
- `KenyaMedicationDispense` — dispense record
- `DispenseNotificationExtension` — optional notification

---

## UC-03 – Inpatient Medication Administration

**Trigger:** A nurse or clinician administers a prescribed medication to an admitted patient.

**Actors:** Prescriber/Nurse, Patient, EMR System

**Preconditions:**
- The patient is admitted (inpatient encounter exists).
- A `MedicationRequest` with status `active` has been issued during the admission.

**Main Flow:**
1. The nurse opens the Medication Administration Record (MAR) for the patient.
2. The system retrieves pending administrations from the `MedicationRequest`.
3. The nurse confirms the five rights (patient, drug, dose, route, time) and administers the medication.
4. The nurse records the event as a `MedicationAdministration` resource.
5. The MAR is updated and the administration is linked to the prescription.

**FHIR Resources Used:**
- `KenyaEncounter` — inpatient admission encounter
- `KenyaEPrescriptionMedicationRequest` — source prescription
- `KEMedicationAdministration` — administration record

---

## UC-04 – Medication History / Reconciliation

**Trigger:** A clinician or pharmacist needs to review a patient's current and past medications.

**Actors:** Prescriber, Pharmacist, EMR/Pharmacy System

**Main Flow:**
1. The clinician queries the HIE for all `MedicationStatement` records for the patient.
2. The system returns current and historical medication records.
3. The clinician reconciles current medications with the new prescription to check for interactions or duplicates.
4. The reconciled list is updated in the patient's longitudinal record.

**FHIR Resources Used:**
- `KenyaMedicationStatement` — medication history record
- `KEAllergyIntolerance` — cross-check for drug allergies

---

## UC-05 – Oncology Care Plan and Chemotherapy Prescription

**Trigger:** An oncology MDT approves a chemotherapy protocol for a cancer patient.

**Actors:** Oncologist (Prescriber), MDT Team, Patient, EMR System

**Preconditions:**
- A confirmed oncology diagnosis (`KenyaOncologyDiagnosisCondition`) exists.
- Histopathology results (`KenyaMorphologyObservation`) are available.

**Main Flow:**
1. The MDT reviews the morphology report and staging.
2. The oncologist creates an `EpisodeOfCare` to group all oncology encounters.
3. The MDT records a `KenyaOncologyCarePlan` with chemotherapy activities and supportive care.
4. For each chemotherapy cycle, a `MedicationRequest` is issued (flagged with `ControlledSubstanceScheduleExtension` if applicable).
5. The nurse records each administration as `KEMedicationAdministration`.
6. Follow-up observations are recorded against the care plan.

**FHIR Resources Used:**
- `KenyaOncologyDiagnosisCondition` — cancer diagnosis
- `KenyaMorphologyObservation` — histopathology result
- `KenyaEpisodeOfCare` — oncology episode
- `KenyaOncologyCarePlan` — treatment plan
- `KenyaEPrescriptionMedicationRequest` — chemotherapy prescription
- `KEMedicationAdministration` — cycle administration record

---

## UC-06 – Controlled Substance Prescription

**Trigger:** A prescriber issues a prescription for a Schedule II–IV controlled substance (e.g. morphine, tramadol).

**Actors:** Prescriber, Patient, Pharmacy System, Kenya Pharmacy and Poisons Board (PPB)

**Preconditions:**
- The prescriber has the authority to prescribe controlled substances.
- The dispensing pharmacy holds a controlled-substance licence.

**Main Flow:**
1. The prescriber creates a `MedicationRequest` and attaches the `ControlledSubstanceScheduleExtension` indicating the schedule.
2. If required, the prescriber attaches a `PrescriptionDigitalSignatureExtension`.
3. For high-cost controlled substances, an `InsurancePreAuthorizationExtension` is added.
4. The prescription is transmitted to the HIE with enhanced audit logging.
5. The pharmacy verifies the prescriber's authority, dispenses, and records a `MedicationDispense`.
6. The transaction is flagged for PPB pharmacovigilance reporting.

**FHIR Resources Used:**
- `KenyaEPrescriptionMedicationRequest` — prescription
- `ControlledSubstanceScheduleExtension` — controlled substance flag
- `PrescriptionDigitalSignatureExtension` — e-signature
- `InsurancePreAuthorizationExtension` — pre-auth (if applicable)
- `KenyaMedicationDispense` — dispense record

---

## UC-07 – Allergy Documentation and Drug Safety Alert

**Trigger:** A patient discloses an allergy, or a clinician identifies a new allergy during consultation.

**Actors:** Prescriber / Clinical Staff, Patient, EMR System, CDS System

**Main Flow:**
1. The clinician records the allergy as a `KEAllergyIntolerance` resource with substance, severity, and reaction details.
2. The allergy is transmitted to the HIE and flagged in the patient's record.
3. On the next prescription, the CDS system queries the patient's allergies and checks for contraindicated substances.
4. If a contraindication is detected, a safety alert is raised and the prescriber must override with a documented reason.

**FHIR Resources Used:**
- `KEAllergyIntolerance` — allergy record
- `KenyaEPrescriptionMedicationRequest` — prescription with `detectedIssue` reference
