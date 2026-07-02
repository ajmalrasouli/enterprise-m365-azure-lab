[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [ValidateScript({ Test-Path $_ })]
    [string]$Source,

    [Parameter(Mandatory)]
    [string]$Destination
)

<#
.SYNOPSIS
Creates a backup of a folder.

.DESCRIPTION
Copies all files from the source folder to a timestamped
backup folder and records the operation in a log file.

.AUTHOR
Ajmal Rasouli

.VERSION
1.0
#>

#---------------------------------------------------------
# Configuration
#---------------------------------------------------------

$TimeStamp = Get-Date -Format "yyyy-MM-dd_HHmmss"

$BackupFolder = Join-Path $Destination "Backup_$TimeStamp"

$LogFolder = "..\logs"

New-Item -ItemType Directory -Force -Path $LogFolder | Out-Null
New-Item -ItemType Directory -Force -Path $BackupFolder | Out-Null

$LogFile = Join-Path $LogFolder "Backup_$TimeStamp.log"

Start-Transcript -Path $LogFile

try {

    Write-Host ""
    Write-Host "Starting backup..." -ForegroundColor Cyan
    Write-Host ""

    Copy-Item `
        -Path "$Source\*" `
        -Destination $BackupFolder `
        -Recurse `
        -Force

    Write-Host ""
    Write-Host "Backup completed successfully." -ForegroundColor Green
    Write-Host ""

}
catch {

    Write-Host ""
    Write-Host "Backup failed." -ForegroundColor Red
    Write-Host $_.Exception.Message

    exit 1

}
finally {

    Stop-Transcript

}

exit 0