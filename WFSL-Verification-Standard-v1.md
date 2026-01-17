# WFSL Verification Standard v1
**Status:** Frozen  
**Purpose:** Deterministic, offline verification of execution without platform trust

---

## 1. Scope and non-goals

### 1.1 What this standard guarantees
If verification passes:

- The recorded execution occurred.
- The recorded inputs were the inputs used.
- The recorded outcome matches the execution result.
- The evidence has not been altered since sealing.

### 1.2 What this standard does not claim
- It does not claim the platform behaved honestly.
- It does not claim correctness of business logic.
- It does not claim absence of malicious hardware or kernel compromise.

**This is an execution proof standard, not a trust standard.**

---

## 2. Evidence format

### 2.1 File type
- UTF-8 encoded
- JSON Lines format (`.jsonl`)
- One execution record per line

### 2.2 Schema identifier
Each record MUST include:

```json
"schema": "wfsl.evidence.v1"
