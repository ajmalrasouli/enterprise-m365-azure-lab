# Load all public functions (including subfolders)
Get-ChildItem -Path "$PSScriptRoot\Public" -Filter *.ps1 -Recurse |
    ForEach-Object {
        . $_.FullName
    }

# Load all private functions
Get-ChildItem -Path "$PSScriptRoot\Private" -Filter *.ps1 -Recurse |
    ForEach-Object {
        . $_.FullName
    }

# Export only public functions
Export-ModuleMember -Function *