\# WFSL Intent Runner v1

\*\*Status:\*\* Informative (non-normative)  

\*\*Applies to:\*\* WFSL Verification Standard v1  

\*\*Purpose:\*\* Deterministic execution via declared intent, not shell syntax



---



\## 1. Rationale



Human-operated shells are not deterministic systems.



They vary by:

\- Syntax (PowerShell, CMD, Bash)

\- Profile state and aliases

\- Error handling behaviour

\- Line continuation rules



WFSL therefore does \*\*not\*\* treat the shell as a source of authority.



Instead, WFSL introduces an \*\*Intent Runner\*\* that accepts \*declared intent\* and translates it into a controlled execution path.



---



\## 2. Intent vs execution



\### 2.1 Intent

Intent is a structured declaration of \*what is to be done\*, not \*how it is typed\*.



Examples:

\- Run an engine with a boundary and ingress

\- Seal an evidence file

\- Verify evidence against a seal



Intent is:

\- Explicit

\- Validated

\- Logged before execution



\### 2.2 Execution

Execution is the act of running an engine or verifier under WFSL control.



Execution:

\- May succeed

\- May fail

\- May be denied



Execution outcome is \*\*never inferred from intent\*\*.



---



\## 3. Intent Runner responsibilities



The WFSL Intent Runner MUST:



\- Validate required parameters for each intent

\- Reject ambiguous or incomplete requests

\- Resolve canonical paths internally

\- Invoke engines using a known execution model

\- Emit evidence for \*\*every attempt\*\*, including failures



The Intent Runner MUST NOT:

\- Accept raw shell command strings

\- Rely on shell error messages as evidence

\- Modify engine behaviour



---



\## 4. Failure as evidence



A key WFSL principle is that \*\*failure is observable state\*\*.



If an intent:

\- Is malformed → `DENY`

\- Cannot be executed → `FAIL`

\- Is executed → `ATTEMPT`



All three states are recorded.



This closes audit gaps where traditional systems only record success.



---



\## 5. Relationship to Verification Standard v1



The Intent Runner:

\- Does not alter evidence formats

\- Does not change sealing or verification rules

\- Exists to \*protect\* the verification pipeline from shell ambiguity



WFSL Verification Standard v1 remains frozen and authoritative.



This document explains \*\*how compliant implementations reach that standard safely\*\*.



---



\## 6. Versioning



This document is informative and tied to:

\- WFSL Verification Standard v1



Any changes result in a new informative document version without affecting the frozen standard.



