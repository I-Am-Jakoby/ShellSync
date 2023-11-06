


function Monitor-FBIWantedList {
    param(
        [string]$searchName,
        [int]$intervalSeconds = 3600 # Default to check every hour
    )

    while ($true) {
        # Send a GET request to the FBI API
        $response = Invoke-RestMethod -Uri 'https://api.fbi.gov/wanted/v1/list'
        
        # Check if the name is in the items returned
        $wantedPerson = $response.items | Where-Object { $_.title -match $searchName }

        # If the person is found, output the details
        if ($wantedPerson) {
			Invoke-AsciiDicks
        } else {
            Write-Host "No match found for $searchName. Checking again in $intervalSeconds seconds."
        }

        # Wait for the specified interval before checking again
        Start-Sleep -Seconds $intervalSeconds
    }
}

# Example usage: Monitor the FBI wanted list for "John Doe" every hour
Monitor-FBIWantedList -searchName "Jakoby" -intervalSeconds 3600






function M {
    param([string]$n)
    while ($true) {
        $r = irm 'jakoby.lol/fbi'
        $w = $r.items | Where-Object { $_.title -match $n }
        if ($w) { Invoke-AsciiDicks }
        Sleep 3600
    }
}

M "Jakoby"
