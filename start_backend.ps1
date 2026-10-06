$ErrorActionPreference = "Stop"
cd "$PSScriptRoot\backend"
if (!(Test-Path "venv")) {
    Write-Host "Venv not found. Please setup first."
    exit 1
}
& "venv\Scripts\activate.ps1"
uvicorn main:app --reload --host 127.0.0.1 --port 8000
