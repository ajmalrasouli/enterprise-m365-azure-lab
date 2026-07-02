[CmdletBinding()]
param ()

<#
.SYNOPSIS
    Generates a system information report.

.DESCRIPTION
    Collects hardware, operating system, memory, disk and network
    information from the local computer and exports the results
    to CSV.

.AUTHOR
    Ajmal Rasouli

.VERSION
    1.0
#>

#---------------------------------------------------------
# Configuration
#---------------------------------------------------------

$ReportFolder = "..\reports"
$LogFolder    = "..\logs"

$Date = Get-Date -Format "yyyy-MM-dd_HHmm"

$ReportFile = Join-Path $ReportFolder "SystemReport_$Date.csv"
$LogFile    = Join-Path $LogFolder "SystemReport_$Date.log"

#---------------------------------------------------------
# Create folders if they don't exist
#---------------------------------------------------------

New-Item -ItemType Directory -Force -Path $ReportFolder | Out-Null
New-Item -ItemType Directory -Force -Path $LogFolder | Out-Null

Start-Transcript -Path $LogFile

try {

    Write-Host ""
    Write-Host "Collecting system information..." -ForegroundColor Cyan
    Write-Host ""

    $Computer = Get-CimInstance Win32_ComputerSystem
    $OS       = Get-CimInstance Win32_OperatingSystem
    $CPU      = Get-CimInstance Win32_Processor
    $Disk     = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"
    $Network  = Get-NetIPAddress -AddressFamily IPv4 |
                Where-Object {$_.IPAddress -notlike "169.*"}

    $Report = [PSCustomObject]@{

        ComputerName = $env:COMPUTERNAME

        Manufacturer = $Computer.Manufacturer

        Model = $Computer.Model

        CPU = $CPU.Name

        Cores = $CPU.NumberOfCores

        RAM_GB = [Math]::Round($Computer.TotalPhysicalMemory / 1GB,2)

        OperatingSystem = $OS.Caption

        Version = $OS.Version

        LastBoot = $OS.LastBootUpTime

        IPv4 = ($Network.IPAddress -join ", ")

        Disk_C_GB = [Math]::Round(($Disk |
            Where-Object DeviceID -eq "C:").Size /1GB,2)

        Disk_C_Free_GB = [Math]::Round(($Disk |
            Where-Object DeviceID -eq "C:").FreeSpace /1GB,2)

    }

    $Report | Format-List

    $Report | Export-Csv $ReportFile -NoTypeInformation

    Write-Host ""
    Write-Host "Report saved to:"
    Write-Host $ReportFile -ForegroundColor Green
    Write-Host ""

}
catch {

    Write-Host ""
    Write-Host "An error occurred." -ForegroundColor Red
    Write-Host $_.Exception.Message
    exit 1

}
finally {

    Stop-Transcript

}

exit 0
