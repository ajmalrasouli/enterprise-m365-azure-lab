function Get-DiskReport {

<#
.SYNOPSIS
Displays information about local disk drives.

.DESCRIPTION
Retrieves disk usage information for all local fixed drives.

.EXAMPLE
Get-DiskReport

.EXAMPLE
Get-DiskReport | Format-Table -AutoSize
#>

    [CmdletBinding()]
    param()

    Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
        Select-Object `
            DeviceID,
            VolumeName,
            @{
                Name = "Size(GB)"
                Expression = { [math]::Round($_.Size / 1GB, 2) }
            },
            @{
                Name = "Free(GB)"
                Expression = { [math]::Round($_.FreeSpace / 1GB, 2) }
            },
            @{
                Name = "Used(GB)"
                Expression = {
                    [math]::Round(($_.Size - $_.FreeSpace) / 1GB, 2)
                }
            },
            @{
                Name = "Free(%)"
                Expression = {
                    [math]::Round(($_.FreeSpace / $_.Size) * 100, 2)
                }
            }
}