function Start-Backup {

<#
.SYNOPSIS
Creates a backup of files from a source folder to a destination folder.

.DESCRIPTION
Copies all files and subfolders from the specified source directory to the
destination directory. If the destination folder does not exist, it is
created automatically.

.PARAMETER Source
The source folder to back up.

.PARAMETER Destination
The destination folder where the backup will be stored.

.PARAMETER LogPath
Optional path to a log file.

.EXAMPLE
Start-Backup `
    -Source "C:\Data" `
    -Destination "D:\Backups"

.EXAMPLE
Start-Backup `
    -Source "C:\Data" `
    -Destination "D:\Backups" `
    -LogPath "C:\Logs\Backup.log" `
    -Verbose

.EXAMPLE
Start-Backup `
    -Source "C:\Data" `
    -Destination "D:\Backups" `
    -WhatIf

.NOTES
Author : Ajmal Rasouli
Module : ITAutomation
Version: 2.0
#>

    [CmdletBinding(
        SupportsShouldProcess = $true,
        ConfirmImpact = 'Medium'
    )]

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
        [string]$Destination,

        [Parameter()]
        [string]$LogPath

    )

    $backupTime = Get-Date

    try {

        Write-Verbose "Validating destination folder..."

        Write-Log `
            -Message "Backup started." `
            -LogPath $LogPath

        if (-not (Test-Path $Destination)) {

            Write-Verbose "Creating destination folder."

            if ($PSCmdlet.ShouldProcess($Destination, "Create destination folder")) {

                New-Item `
                    -ItemType Directory `
                    -Path $Destination `
                    -Force | Out-Null

            }

        }

        $sourcePath = Join-Path $Source '*'

        Write-Verbose "Copying files..."

        if ($PSCmdlet.ShouldProcess($Destination, "Copy files from '$Source'")) {

            Copy-Item `
                -Path $sourcePath `
                -Destination $Destination `
                -Recurse `
                -Force

        }

        Write-Verbose "Backup completed successfully."

        Write-Log `
            -Message "Backup completed successfully." `
            -LogPath $LogPath

        return [PSCustomObject]@{

            Source          = $Source
            Destination     = $Destination
            BackupTime      = $backupTime
            Status          = "Success"
            ComputerName    = $env:COMPUTERNAME
            FilesCopied     = (Get-ChildItem -Path $Source -Recurse -File).Count

        }

    }
    catch {

        Write-Log `
            -Message "Backup failed: $($_.Exception.Message)" `
            -Level ERROR `
            -LogPath $LogPath

        Write-Error $_

        return [PSCustomObject]@{

            Source          = $Source
            Destination     = $Destination
            BackupTime      = $backupTime
            Status          = "Failed"
            ComputerName    = $env:COMPUTERNAME
            FilesCopied     = 0
            Error           = $_.Exception.Message

        }

    }

}