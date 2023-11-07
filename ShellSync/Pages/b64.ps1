Add-PodeWebPage -Name "Base64"  -ScriptBlock {

	New-PodeWebContainer -Content @(
		New-PodeWebForm -Name "encoder/decoder" -SubmitText "Encode" -ShowReset -ResetText "Reset"  -Content @(


			New-PodeWebTextbox -Name "Input"
			New-PodeWebTextbox -Name "Output" 

		) -ScriptBlock {

			$WebEvent.Data | Out-Default

			$string = $WebEvent.Data.Input
			$encString = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($string))
			
				Update-PodeWebTextBox -Value "$encString" -Name "Output"

		}
	)
}
