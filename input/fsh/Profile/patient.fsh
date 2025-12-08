Profile: KenyaEPrescriptionPatient
Parent: Patient
Id: kenya-eprescription-patient
Title: "Patient Profile for ePrescription"
Description: "Constraints for patients involved in ePrescription workflows."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* identifier 1..* MS
* name 1..* MS
* telecom 0..* MS
* gender 1..1 MS
* birthDate 1..1 MS



Instance: example-kenya-eprescription-patient
InstanceOf: KenyaEPrescriptionPatient
Title: "Example Kenya ePrescription Patient"
Description: "Example of a patient involved in the Kenya ePrescription workflow."

* identifier[0].system = "http://moh.health.go.ke/patient-identifier"
* identifier[0].value = "KE-PAT-2025-0001"
* identifier[1].system = "http://nhif.or.ke/member-id"
* identifier[1].value = "NHIF12345678"

* name[0].use = #official
* name[0].family = "Omondi"
* name[0].given = "Grace Achieng"

* telecom[0].system = #phone
* telecom[0].value = "+254-701-234567"
* telecom[0].use = #mobile

* gender = #female
* birthDate = "1990-03-14"
* address[0].text = "Kisumu Central, Kisumu County, Kenya"
