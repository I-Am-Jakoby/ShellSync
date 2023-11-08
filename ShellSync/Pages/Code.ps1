Add-PodeWebPage -Name 'FileStream' -Icon 'File' -ScriptBlock {
	New-PodeWebContainer -Content @(
		New-PodeWebFileStream -Url "/logs/error.log"
	)
}
