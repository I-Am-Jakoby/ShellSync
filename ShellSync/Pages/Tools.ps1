	Add-PodeWebPage -Name 'Tools' -Icon 'Settings' -ScriptBlock {
		$name, $model, $manufacturer = cInfo
		New-PodeWebContainer -NoBackground -Content @(
			New-PodeWebTextbox -Name 'Name' -Value ($env:username)
			New-PodeWebTextbox -Name 'PC Name' -Value ($name)
			New-PodeWebTextbox -Name 'Model' -Value ($model)
			New-PodeWebTextbox -Name 'Manufacturer' -Value ($manufacturer)
			New-PodeWebButton -Name 'Update' -ScriptBlock {
				
				Update-PodeWebTextbox -Name 'Current Directory' -Value (cookie)
			}
		)
	}