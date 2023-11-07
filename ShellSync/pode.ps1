Import-Module -Name Pode, Pode.Web

Import-Module "$PsScriptRoot/Functions/Functions.ps1"


# https://github.com/public-apis/public-apis#security

Start-PodeServer {
    Add-PodeEndpoint -Address localhost -Port 8080 -Protocol Http
	#Add-PodeEndpoint -Hostname example.pode.com -Port 8080 -Protocol Http
	# Show-PodeGui -Title 'Basic Server'

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels @("Error", "Warning")
    New-PodeLoggingMethod -Terminal | Enable-PodeRequestLogging

    Use-PodeWebTemplates -Title 'Shell Sync - S2' -Theme Dark -HideSidebar
	
# --------------------------------------------------------------------------------------

	Set-PodeWebHomePage -Layouts @(
		New-PodeWebHero -Title 'Welcome!' -Message 'This is the home page' -Content @(
			New-PodeWebText -Value 'Here is some text!' -InParagraph -Alignment Center
		)
	)

# --------------------------------------------------------------------------------------

. ./Pages/Tools.ps1
. ./Pages/b64.ps1
. ./Pages/Navigation.ps1

# --------------------------------------------------------------------------------------

}


