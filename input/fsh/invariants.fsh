Invariant: has-dosage-or-dispense
Description: "One of dosageInstruction or dispenseRequest MUST be present"
Severity: #error
Expression: "dosageInstruction.exists() or dispenseRequest.exists()"