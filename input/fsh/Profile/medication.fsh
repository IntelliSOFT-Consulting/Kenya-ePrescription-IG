// Profile: KenyaEPrescriptionMedication
// Parent: Medication
// Id: kenya-eprescription-medication
// Title: "Medication - ePrescription"
// Description: "Medication constraints for ePrescription workflow."

// // -----------------------------------------------------
// // Metadata
// // -----------------------------------------------------
// * meta 1..1 MS
// * meta.profile 1..* MS
// * meta.profile ^short = "Profiles this resource claims to conform to."

// * code 1..1 MS 
// * status 1..1 MS


// Instance: example-kenya-eprescription-medication
// InstanceOf: KenyaEPrescriptionMedication
// Title: "Example Kenya ePrescription Medication"
// Description: "An example medication resource representing Paracetamol 500mg tablet used in an ePrescription workflow."

// * status = #active
// * code = http://www.nlm.nih.gov/research/umls/rxnorm#161 "Paracetamol 500 MG Oral Tablet"
