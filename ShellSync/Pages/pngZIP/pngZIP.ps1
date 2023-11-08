Add-PodeWebPage -Name "pngZIP" -NoTitle -ScriptBlock {

	New-PodeWebContainer -Content @(
		New-PodeWebForm -Name "passwordform" -SubmitText "Generate" -ShowReset -ResetText "Reset"  -Content @(

			New-PodeWebTextbox -Name "Image" 
			New-PodeWebTextbox -Name "Content" 
			New-PodeWebTextbox -Name "Output" 

		) -ScriptBlock {

			$WebEvent.Data | Out-Default

			$image   = $WebEvent.Data.Image
			$content = $WebEvent.Data.Content
			$output = $WebEvent.Data.Output
			
			#pngZIP $image $content $output
			.\Pages\pngZIP\pack.exe $image $content $output
			Update-PodeWebTextBox -Value "cookie" -Name Image
		}
	)
}