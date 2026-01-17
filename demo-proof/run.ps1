$root = Split-Path -Parent $MyInvocation.MyCommand.Path

pwsh -NoProfile -File "C:\Users\Paul Wynn\eco-engine-v1\wfsl-edge-enforcement\wfsl.run.ps1" `
  -BoundarySpec "$root\boundary\wfsl.execution.boundary.v2.json" `
  -IngressSample "$root\ingress\ingress.json"

exit $LASTEXITCODE
