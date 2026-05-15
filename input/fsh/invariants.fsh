Invariant: has-dosage-or-dispense
Description: "A MedicationRequest MUST include at least one dosageInstruction or a dispenseRequest."
Severity: #error
Expression: "dosageInstruction.exists() or dispenseRequest.exists()"
