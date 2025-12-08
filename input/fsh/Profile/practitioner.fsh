Profile: KenyaEPrescriptionPractitioner
Parent: Practitioner
Id: kenya-eprescription-practitioner
Title: "Practitioner Profile for ePrescription"
Description: "Constraints for prescribers in the ePrescription workflow."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..* MS
* name 1..* MS
* qualification 0..* MS

Instance: example-kenya-eprescription-practitioner
InstanceOf: KenyaEPrescriptionPractitioner
Title: "Example Kenya ePrescription Practitioner"
Description: "Example of a prescriber in the Kenya ePrescription workflow."

* identifier[0].system = "http://moh.health.go.ke/practitioner-license"
* identifier[0].value = "MOH-PRAC-78945"

* identifier[1].system = "http://kenyamedicalboard.or.ke/registry"
* identifier[1].value = "KMPDC-2025-1234"

* name[0].use = #official
* name[0].family = "Mwangi"
* name[0].given = "Peter Kamau"

* telecom[0].system = #phone
* telecom[0].value = "+254-722-987654"
* telecom[0].use = #work

* qualification[0].identifier.system = "http://moh.health.go.ke/qualification"
* qualification[0].identifier.value = "QUAL-12345"
* qualification[0].code.text = "Bachelor of Medicine and Bachelor of Surgery (MBChB)"
* qualification[0].period.start = "2010-01-01"
* qualification[0].issuer.display = "University of Nairobi"
