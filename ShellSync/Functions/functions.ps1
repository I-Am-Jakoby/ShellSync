function cInfo {
	$computerSystem = Get-CimInstance CIM_ComputerSystem
	$computerName = $computerSystem.Name
	$computerModel = $computerSystem.Model
	$computerManufacturer = $computerSystem.Manufacturer

	return $computerName, $computerModel, $computerManufacturer
}

function cookie {return (pwd).path}