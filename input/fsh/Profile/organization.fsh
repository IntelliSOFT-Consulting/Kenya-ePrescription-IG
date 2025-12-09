Profile: KenyaEPrescriptionOrganization
Parent: Organization
Id: kenya-eprescription-organization
Title: "Organization - ePrescription"
Description: "Constraints for organizations participating in ePrescription workflow."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* name 1..1 MS
* identifier 1..* MS



Instance: example-kenya-eprescription-organization
InstanceOf: KenyaEPrescriptionOrganization
Title: "Example Kenya ePrescription Organization"
Description: "Example of a health facility participating in the Kenya ePrescription workflow."

* name = "MediCare Pharmacy - Nairobi"
* identifier[0].system = "http://healthfacility.registry.health.go.ke"
* identifier[0].value = "FAC-KE-00123"
* identifier[1].system = "http://pharmacyboard.health.go.ke/license"
* identifier[1].value = "PHARM-LIC-2025-0456"
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #prov
* type[0].coding[0].display = "Healthcare Provider"
* address[0].text = "Karen Road, Nairobi, Kenya"
* telecom[0].system = #phone
* telecom[0].value = "+254-712-345678"
* telecom[1].system = #email
* telecom[1].value = "info@medicarepharmacy.co.ke"
