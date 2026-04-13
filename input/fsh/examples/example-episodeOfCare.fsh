// ============================================================================
// Example: KenyaEpisodeOfCare
// Profile: ke-episode-of-care
// ============================================================================

Instance: example-episodeofcare-otieno-oncology
InstanceOf: KEEpisodeOfCare
Usage: #example
Title: "EpisodeOfCare – James Otieno Oncology Management"
Description: "Active episode of care for James Otieno covering ongoing oncology management at KNH, from initial diagnosis through planned chemotherapy."

* id = "example-episodeofcare-otieno-oncology"
* meta.profile[0] = "https://prescription.intellisoftkenya.com/StructureDefinition/ke-episode-of-care"

* identifier[0].system = "https://ilm-hie.dha.go.ke/fhir/NamingSystem/episode-identifier"
* identifier[0].value = "EOC-2025-ONCO-00099"

* status = #active

* type[0] = http://terminology.hl7.org/CodeSystem/episodeofcare-type#hacc "Home and Community Care"

* diagnosis[0].condition = Reference(example-oncologydiagnosis-otieno-lungcancer)

* patient = Reference(example-patient-otieno)

* managingOrganization = Reference(example-organization-knh)

* period.start = "2025-06-10"

* careManager = Reference(example-practitioner-njoroge)
