param(
  [Parameter(Mandatory = $true)][string]$EvidenceFile,
  [Parameter(Mandatory = $true)][string]$SealFile
)

$verifier = "$env:USERPROFILE\.wfsl\registry\wfsl.evidence.verify.ps1"

if (-not (Test-Path $verifier)) {
  Write-Error "[WFSL] Verifier not installed"
  exit 2
}

pwsh -NoProfile -File $verifier `
  -EvidenceFile $EvidenceFile `
  -SealFile $SealFile

exit $LASTEXITCODE
