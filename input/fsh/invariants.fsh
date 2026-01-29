Invariant: has-dosage-or-dispense
Description: "One of dosageInstruction or dispenseRequest MUST be present"
Severity: #error
Expression: "dosageInstruction.exists() or dispenseRequest.exists()"

Invariant: ke-md-dosage-minimum
Description: "If dosageInstruction is present, sequence, text, additionalInstruction, patientInstruction, timing, asNeeded[x], site, and route must be present."
Severity: #error
Expression: "dosageInstruction.empty() or (dosageInstruction.sequence.exists() and dosageInstruction.text.exists() and dosageInstruction.additionalInstruction.exists() and dosageInstruction.patientInstruction.exists() and dosageInstruction.timing.exists() and dosageInstruction.asNeeded.exists() and dosageInstruction.site.exists() and dosageInstruction.route.exists())"
