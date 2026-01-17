\# WFSL Verification Standard v1



This repository contains the frozen WFSL Verification Standard v1 and a fully reproducible demo proof.



\## What this provides

\- Deterministic, offline verification

\- Sealed evidence using SHA-256

\- Independent reproduction without platform trust



\## Reproduce verification

Run:



```powershell

pwsh -NoProfile -File demo-proof\\verify.ps1 `

&nbsp; -EvidenceFile demo-proof\\evidence\\wfsl.evidence.20260117.jsonl `

&nbsp; -SealFile demo-proof\\evidence\\wfsl.evidence.20260117.jsonl.seal.sha256



