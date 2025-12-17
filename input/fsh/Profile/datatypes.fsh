Profile: KenyaCodeableConcept
Parent: CodeableConcept
Id: kenya-codeable-concept
Title: "Kenya Strict CodeableConcept"
Description: """
A profiled data type that enforces strict coding standards.
Usage: Use this whenever you need to ensure a System and Code are present.
"""
* ^abstract = false

* coding 1..* MS
* coding.system 1..1 MS
* coding.code 1..1 MS
* coding.display 0..1 MS
* text 0..1 MS