Profile: KenyaEpisodeOfCare
Parent: EpisodeOfCare
Id: kenya-episode-of-care
Title: "Kenya Episode of Care"
Description: "Defines the standard structure for an EpisodeOfCare in Kenya."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/episode-of-care-status (required)
* status ^short = "planned | waitlist | active | onhold | finished | cancelled | entered-in-error"

* type 1..1 MS
* type from http://hl7.org/fhir/ValueSet/episodeofcare-type (extensible)
* type ^short = "Type/class - e.g. specialist referral, disease management"

* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(Condition)

* patient 1..1 MS
* patient only Reference(Patient)

* managingOrganization 0..1 MS
* managingOrganization only Reference(Organization)

* period 0..1 MS
* period ^short = "Interval during which responsibility is assumed"

* careManager 0..1 MS
* careManager only Reference(Practitioner or PractitionerRole)
* careManager ^short = "Care manager/care coordinator for the patient"
