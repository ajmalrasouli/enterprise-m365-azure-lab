function Test-PathExists {

<#
.SYNOPSIS
Checks whether a file or folder exists.

.DESCRIPTION
Returns True or False depending on whether the supplied path exists.

.PARAMETER Path
The path to check.

.EXAMPLE
Test-PathExists -Path C:\Temp
#>

    [CmdletBinding()]

    param(

        [Parameter(Mandatory)]

        [string]$Path

    )

    Test-Path $Path

}