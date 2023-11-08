$ver = irm https://raw.githubusercontent.com/I-Am-Jakoby/ShellSync/main/ShellSync/Update/ver.txt

$localVer = Get-Content ./ver.txt 

if ($localVer -lt $ver) {
	echo "Updated Needed"
}

else {echo "Updated Fully"}

pause