Profile: KenyaEpisodeOfCare
Parent: EpisodeOfCare
Id: kenya-episode-0of-care
Title: "Kenya Episode of Care "
Description: "Defines the standard structure for an EpisodeOfCare in Kenya."

* meta 1..1 MS
* meta.profile 1..* MS
* meta.profile ^short = "Profiles this resource claims to conform to."
* status 1..1 MS
* type 1..1 MS
* patient 1..1 MS
* managingOrganization 0..1 MS
* period 0..1 MS
* careManager 0..1 MS
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS