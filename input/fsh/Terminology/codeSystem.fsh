CodeSystem: MedicationRequestPriorityCS
Id: medication-request-priorityCS
Title: "Medication Request Priority CodeSystem"
Description: "Codes representing priority levels for MedicationRequest."

* ^content = #complete
* ^caseSensitive = true

* #routine "Routine" "Standard, non-urgent medication request."
* #urgent "Urgent" "Requires expedited processing."


CodeSystem: MedicationRequestStatusCS
Id: medication-request-status-cs
Title: "MedicationRequest Status CodeSystem"
Description: "Status codes used for MedicationRequest resources."

* ^content = #complete
* ^caseSensitive = true

* #active "Active" "The prescription is active and can be acted on."
* #on-hold "On Hold" "The prescription is temporarily paused."
* #cancelled "Cancelled" "The prescription has been cancelled. Consider holding before cancelling."
* #completed "Completed" "The prescription has been fully administered or fulfilled."
* #stopped "Stopped" "The prescription was stopped before completion."
* #draft "Draft" "The prescription is in a preliminary state."