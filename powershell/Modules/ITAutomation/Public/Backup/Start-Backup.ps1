function Start-Backup {

<#
.SYNOPSIS
Creates a backup of files from a source folder to a destination folder.

.DESCRIPTION
Copies all files and subfolders from the specified source directory to the
destination directory. If the destination folder does not exist, it will be
created automatically.

.PARAMETER Source
The source directory containing the files to back up.

.PARAMETER Destination
The destination directory where the backup will be stored.

.EXAMPLE
Start-Backup -Source "C:\Data" -Destination "D:\Backups"

.EXAMPLE
Start-Backup -Source "C:\Data" -Destination "D:\Backups" -Verbose

.EXAMPLE
Start-Backup -Source "C:\Data" -Destination "D:\Backups" -WhatIf

.NOTES
Author : Ajmal Rasouli
Module : ITAutomation
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    param(

        [Parameter(Mandatory)]
        [ValidateScript({
            if (-not (Test-Path $_ -PathType Container)) {
                throw "Source folder '$_' does not exist."
            }
            $true
        })]
        [string]$Source,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Destination

    )

    try {

        Write-Verbose "Checking destination folder..."

        if (-not (Test-Path $Destination)) {

            Write-Verbose "Creating destination folder."

            New-Item `
                -Path $Destination `
                -ItemType Directory `
                -Force | Out-Null
        }

        $sourcePath = Join-Path $Source '*'

        if ($PSCmdlet.ShouldProcess($Destination, "Copy files from '$Source'")) {

            Write-Verbose "Starting backup..."

            Copy-Item `
                -Path $sourcePath `
                -Destination $Destination `
                -Recurse `
                -Force

            Write-Verbose "Backup completed successfully."

            [PSCustomObject]@{
                Source      = $Source
                Destination = $Destination
                BackupTime  = Get-Date
                Status      = "Success"
            }
        }

    }
    catch {

        Write-Error "Backup failed: $($_.Exception.Message)"

        [PSCustomObject]@{
            Source      = $Source
            Destination = $Destination
            BackupTime  = Get-Date
            Status      = "Failed"
            Error       = $_.Exception.Message
        }

    }

}