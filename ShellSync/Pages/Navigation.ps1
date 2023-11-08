
    # social
    Set-PodeWebSocial -Type GitHub -Url 'https://github.com/badgerati'
    Set-PodeWebSocial -Type Twitter -Url 'https://twitter.com/Badgerati' -Tooltip '@Badgerati'

    $navDiv = New-PodeWebNavDivider
	
    $navPode = New-PodeWebNavDropdown -Name 'Social' -Icon 'cellphone-iphone' -Items @(
		New-PodeWebNavLink -Name 'Twitter' -Url 'https://twitter.com' -Icon 'twitter'
		New-PodeWebNavLink -Name 'Facebook' -Url 'https://facebook.com' -Icon 'facebook'
		New-PodeWebNavDivider
		New-PodeWebNavLink -Name 'YouTube' -Url 'https://youtube.com' -Icon 'youtube'
		New-PodeWebNavLink -Name 'Twitch' -Url 'https://twitch.tv' -Icon 'twitch'
	)
	
    $tools = New-PodeWebNavDropdown -Name 'Tools' -Icon 'cellphone-iphone' -Items @(
		New-PodeWebNavLink -Name 'Base64' -Url 'https://twitter.com' -Icon 'file-key-outline'
		New-PodeWebNavLink -Name 'URL Decoder' -Url 'https://facebook.com' -Icon 'facebook'
		New-PodeWebNavLink -Name 'pngZIP' -Url 'pages/pngZIP' -Icon 'folder-zip-outline'
		New-PodeWebNavLink -Name 'Twitch' -Url 'https://twitch.tv' -Icon 'twitch'
	)

    $navPodeWeb = New-PodeWebNavLink -Name 'Help' -Url 'https://badgerati.github.io/Pode.Web/' -Icon 'help-circle'
	
	
    $navGH = New-PodeWebNavLink -name 'Payloads' -Url 'https://github.com/kprocyszyn/About-PowerShell' -Icon 'virus'

    Set-PodeWebNavDefault -Items $navPode, $navDiv, $navPodeWeb, $navDiv, $tools, $navDiv, $navGH