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
backup folder, verifies the backup, and records the
operation in a log file.

.AUTHOR
Ajmal Rasouli

.VERSION
2.1
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

$Stopwatch = [System.Diagnostics.Stopwatch]::StartNew()

try {

    Write-Host ""
    Write-Host "===================================" -ForegroundColor Cyan
    Write-Host " Enterprise Backup Utility v2.1"
    Write-Host "===================================" -ForegroundColor Cyan
    Write-Host ""

    Write-Host "Scanning source folder..." -ForegroundColor Yellow

    $SourceFiles = Get-ChildItem `
        -Path $Source `
        -File `
        -Recurse

    $SourceFolders = Get-ChildItem `
        -Path $Source `
        -Directory `
        -Recurse

    $TotalFiles = $SourceFiles.Count

    Write-Host "Files found   : $TotalFiles"
    Write-Host "Folders found : $($SourceFolders.Count)"
    Write-Host ""

    #---------------------------------------------------------
    # Copy Files
    #---------------------------------------------------------

    $Counter = 0

    foreach ($File in $SourceFiles) {

        $Counter++

        $Percent = ($Counter / $TotalFiles) * 100

        Write-Progress `
            -Activity "Backing up files" `
            -Status "$Counter of $TotalFiles files" `
            -PercentComplete $Percent

        $RelativePath = $File.FullName.Substring($Source.Length)

        $DestinationFile = Join-Path $BackupFolder $RelativePath

        $DestinationDirectory = Split-Path $DestinationFile

        if (-not (Test-Path $DestinationDirectory)) {

            New-Item `
                -ItemType Directory `
                -Path $DestinationDirectory `
                -Force | Out-Null
        }

        Copy-Item `
            -Path $File.FullName `
            -Destination $DestinationFile `
            -Force

    }

    Write-Progress `
        -Activity "Backing up files" `
        -Completed

    #---------------------------------------------------------
    # Verification
    #---------------------------------------------------------

    $BackupFiles = Get-ChildItem `
        -Path $BackupFolder `
        -File `
        -Recurse

    $BackupCount = $BackupFiles.Count

    if ($BackupCount -eq $TotalFiles) {
        $Verification = "Passed"
    }
    else {
        $Verification = "Failed"
    }

    #---------------------------------------------------------
    # Statistics
    #---------------------------------------------------------

    $Stopwatch.Stop()

    $Duration = $Stopwatch.Elapsed

    $SourceSize = ($SourceFiles | Measure-Object Length -Sum).Sum

    $SourceSizeMB = [Math]::Round($SourceSize / 1MB, 2)

    #---------------------------------------------------------
    # Summary
    #---------------------------------------------------------

    Write-Host ""
    Write-Host "===================================" -ForegroundColor Cyan
    Write-Host " Backup Summary"
    Write-Host "===================================" -ForegroundColor Cyan
    Write-Host ""

    Write-Host ("Source Folder : {0}" -f $Source)
    Write-Host ("Backup Folder : {0}" -f $BackupFolder)
    Write-Host ("Files Copied  : {0}" -f $BackupCount)
    Write-Host ("Folders       : {0}" -f $SourceFolders.Count)
    Write-Host ("Size (MB)     : {0}" -f $SourceSizeMB)
    Write-Host ("Verification  : {0}" -f $Verification)
    Write-Host ("Duration      : {0}" -f $Duration)

    Write-Host ""

    if ($Verification -eq "Passed") {
        Write-Host "Backup completed successfully." -ForegroundColor Green
    }
    else {
        Write-Host "Backup completed but verification failed." -ForegroundColor Yellow
    }

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