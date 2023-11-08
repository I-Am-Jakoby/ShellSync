Add-PodeWebPage -Name 'Upload' -Icon 'File' -ScriptBlock {
    New-PodeWebContainer -Content @(
		New-PodeWebCard -Content @(
			New-PodeWebForm -Name 'Example' -ScriptBlock {
				Save-PodeRequestFile -Key 'File' -Path 'C:\some\path\file.png'
			} -Content @(
				New-PodeWebFileUpload -Name 'File'
			)
		)
    )
}
