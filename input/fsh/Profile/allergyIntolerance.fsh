Profile: KenyaEprescriptionAllergyIntolerance
Parent: AllergyIntolerance
Id: kenya-eprescription-allergyintolerance
Title: "AllerygyIntolerance - ePrescription"
Description: "AllergyIntolerance constraints for ePrescription workflow."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* id 1..1 MS
* id ^short = "Unique identifier for the AllergyIntolerance resource."


* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier ^short = "Business identifier for the allergy/intolerance record."


* clinicalStatus 1..1 MS
* clinicalStatus.coding.code 0..1 MS
* clinicalStatus.coding.system 0..1 MS
* clinicalStatus.coding.display 0..1 MS
* clinicalStatus ^short = "Clinical status of the allergy (active, inactive, resolved)."

* verificationStatus 1..1 MS
* verificationStatus.coding.code 0..1 MS
* verificationStatus.coding.system 0..1 MS
* verificationStatus.coding.display 0..1 MS
* verificationStatus ^short = "Verification status of the allergy (confirmed, unconfirmed)."

* type 0..1 MS
* type ^short = "Allergy or intolerance."

* category 0..* MS
* category ^short = "Category of the allergy (food, medication, environment)."

* criticality 0..1 MS
* criticality ^short = "Estimate of potential clinical harm (low, high, unable-to-assess)."

* code 0..1 MS
* code.coding.code 1..1 MS
* code.coding.system 1..1 MS
* code.coding.display 1..1 MS
* code ^short = "The allergen or substance causing the reaction."


* patient 1..1 MS
* patient only Reference(Patient)
* patient ^short = "Patient who has the allergy."

* encounter 0..1 MS
* encounter only Reference(Encounter)
* encounter ^short = "Encounter during which this allergy/intolerance was recorded."


* onset[x] 0..1 MS

* onsetDateTime 1..1 MS
* onsetDateTime ^short = "Date and time when the allergy was first noted."

* recordedDate 0..1 MS
* recordedDate ^short = "Date the allergy/intolerance entry was created."


* reaction 0..* MS
* reaction ^short = "Details about a specific reaction event."

* reaction.substance 0..1 MS
* reaction.substance.coding.code 1..1 MS
* reaction.substance.coding.system 1..1 MS
* reaction.substance.coding.display 1..1 MS
* reaction.substance ^short = "Causative agent of the reaction."

* reaction.manifestation 1..* MS
* reaction.manifestation.coding.code 1..1 MS
* reaction.manifestation.coding.system 1..1 MS
* reaction.manifestation.coding.display 1..1 MS
* reaction.manifestation ^short = "Clinical symptoms/signs presented during the reaction."

* reaction.severity 0..1 MS
* reaction.severity ^short = "Severity of the reaction."

* reaction.exposureRoute 0..1 MS
* reaction.exposureRoute.coding.code 1..1 MS
* reaction.exposureRoute.coding.display 1..1 MS
* reaction.exposureRoute.coding.system 1..1 MS
* reaction.exposureRoute ^short = "The route by which the patient was exposed."