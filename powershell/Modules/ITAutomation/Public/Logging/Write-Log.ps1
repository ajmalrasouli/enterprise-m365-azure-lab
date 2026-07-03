function Write-Log {

<#
.SYNOPSIS
Writes timestamped log entries to the console and optionally to a log file.

.DESCRIPTION
Provides centralized logging for the ITAutomation module. Supports
INFO, WARNING and ERROR log levels and can optionally write entries
to a log file.

.PARAMETER Message
The message to log.

.PARAMETER Level
The log severity level.

.PARAMETER LogPath
Optional path to a log file.

.EXAMPLE
Write-Log -Message "Backup started"

.EXAMPLE
Write-Log -Message "Disk usage is high" -Level WARNING

.EXAMPLE
Write-Log -Message "Backup failed" -Level ERROR -LogPath "C:\Logs\Backup.log"

.NOTES
Author : Ajmal Rasouli
Module : ITAutomation
#>

    [CmdletBinding()]
    param(

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Message,

        [ValidateSet("INFO","WARNING","ERROR")]
        [string]$Level = "INFO",

        [string]$LogPath

    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    $entry = "[$timestamp] [$Level] $Message"

    switch ($Level) {

        "INFO" {
            Write-Host $entry -ForegroundColor Green
        }

        "WARNING" {
            Write-Warning $entry
        }

        "ERROR" {
            Write-Error $entry
        }

    }

    if ($LogPath) {

        $directory = Split-Path $LogPath -Parent

        if (-not (Test-Path $directory)) {

            New-Item `
                -ItemType Directory `
                -Path $directory `
                -Force | Out-Null

        }

        Add-Content `
            -Path $LogPath `
            -Value $entry

    }

}