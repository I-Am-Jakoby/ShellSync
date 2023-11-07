	Add-PodeWebPage -Name 'Tools' -Icon 'Settings' -ScriptBlock {
	New-PodeWebContainer -NoBackground -Content @(
		New-PodeWebTextbox -Name 'Content'

		New-PodeWebButton -Name 'Update Textbox' -ScriptBlock {
			Update-PodeWebTextbox -Name 'Content' -Value ([datetime]::Now.ToString())
		}
	)
	}