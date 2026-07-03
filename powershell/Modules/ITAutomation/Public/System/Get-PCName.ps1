function Get-PCName {

<#
.SYNOPSIS
Returns the local computer name.

.DESCRIPTION
Retrieves the computer name from the environment variables.

.EXAMPLE
Get-PCName

Returns:

LAPTOP-123ABC

.NOTES
Author: Ajmal Rasouli
#>

    [CmdletBinding()]

    param()

    Write-Verbose "Retrieving computer name..."

    $env:COMPUTERNAME

}