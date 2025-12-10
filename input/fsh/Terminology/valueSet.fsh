ValueSet: MedicationRequestPriorityVS
Id: medication-request-priority-vs
Title: "Medication Request Priority ValueSet"
Description: "ValueSet for priority levels in the MedicationRequest workflow."

* include codes from system MedicationRequestPriorityCS


ValueSet: MedicationRequestStatusVS
Id: medication-request-status-vs
Title: "MedicationRequest Status ValueSet"
Description: "ValueSet containing status codes for MedicationRequest."

* include codes from system MedicationRequestStatusCS


ValueSet: AllergyIntoleranceCodeVS
Id: allergyintolerance-code-vs
Title: "AllergyIntolerance Substance/Product and Condition ValueSet"
Description: "Contains codes representing allergy-causing substances, intolerance triggers, related clinical conditions, and negation/exclusion concepts used for reporting no known allergies."

* include codes from valueset http://hl7.org/fhir/ValueSet/allergyintolerance-code


ValueSet: SubstanceCodeVS
Id: substance-code-vs
Title: "Substance Code"
Description: "This value set includes codes for substances that can cause allergic or adverse reactions. It is used as the binding for the 'substance' element in AllergyIntolerance and related resources."

* include codes from system http://hl7.org/fhir/substance-code


ValueSet: ManifestationCodeVS
Id: manifestation-code-vs
Title: "Clinical Manifestation Code"
Description: "This value set includes codes for clinical symptoms and signs observed during an allergic or adverse reaction. It is used as the binding for the 'manifestation' element in AllergyIntolerance and related resources."

* include codes from system http://snomed.info/sct