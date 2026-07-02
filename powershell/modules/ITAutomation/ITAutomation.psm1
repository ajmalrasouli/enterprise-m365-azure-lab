function Get-Hello {
    Write-Host "Hello from ITAutomation!" -ForegroundColor Cyan
}

function Get-DateTime {
    Get-Date
}

function Get-PCName {
    $env:COMPUTERNAME
}