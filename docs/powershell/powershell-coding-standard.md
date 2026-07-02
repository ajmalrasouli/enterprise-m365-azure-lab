# PowerShell Coding Standard

## Script Header

Every script must contain:

- Synopsis
- Description
- Author
- Version

---

## Use CmdletBinding

```powershell
[CmdletBinding()]
param ()
```

---

## Error Handling

Always use:

```powershell
try {

}
catch {

}
finally {

}
```

---

## Logging

Use:

```powershell
Start-Transcript
```

---

## Output

Return PowerShell objects whenever possible.

Avoid using `Write-Host` for data output.

---

## Functions

Functions should use approved PowerShell verbs.

Examples:

- Get-
- Set-
- New-
- Remove-
- Test-
- Invoke-
- Export-

---

## Comments

Explain *why*, not *what*.

---

## Formatting

- 4-space indentation
- PascalCase variable names
- Descriptive function names
