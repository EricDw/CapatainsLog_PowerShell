# The purpose of the momdule is to assist in the making of the captains logs


$stardate = Get-Date -Format yyyy-MM-dd-T-hh:mm

$template = "## __Captains Log__
__Star Date:__ $stardate
*****************************

"

$supplament = "

## __Supplamental__
"


Function New-CaptainsLog {

	$year = Get-Date -Format yyyy;

	$month = Get-Date -Format MM;

	$day = Get-Date -Format dd;
	
	$date = "$year$month$day"

	$fileName = "CPL$date.txt";

	$file = "$HOME\captainsLog\$year\$month\$day\$fileName"
	
	$path = "$HOME\captainsLog\$year\$month\$day\"

	New-Item $path -Itemtype Directory

	New-Item $file -Itemtype File

	$template | Set-Content $file
}

Function Add-SupplamentToCaptainsLog {
	
	$year = Get-Date -Format yyyy;

	$month = Get-Date -Format MM;

	$day = Get-Date -Format dd;

	$date = "$year$month$day"

	$time = Get-Date -Format hh:mm

	$fileName = "CPL$date.txt";

	$supplamentalText = $supplament + $time + "
***************

"

	$supplamentalText | Add-Content "$HOME\captainsLog\$year\$month\$day\$fileName"
}
