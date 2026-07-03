function Write-Log {

<#
.SYNOPSIS
Writes a timestamped message to the console.

.PARAMETER Message
The message to display.

.PARAMETER Level
The severity level.

#>

    [CmdletBinding()]

    param(

        [Parameter(Mandatory)]
        [string]$Message,

        [ValidateSet("INFO","WARNING","ERROR")]
        [string]$Level = "INFO"

    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    Write-Host "[$timestamp] [$Level] $Message"

}