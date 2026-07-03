function Get-Greeting {

    [CmdletBinding()]

    param(

        [ValidateSet("Morning","Afternoon","Evening")]

        [string]$Time

    )

    switch ($Time) {

        "Morning"   { "Good Morning" }

        "Afternoon" { "Good Afternoon" }

        "Evening"   { "Good Evening" }

    }

}