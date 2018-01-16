# The purpose of the momdule is to assist in the making of the captains logs


$stardate = Get-Date -Format yyyyMMdd

$template = " 
#Captains Log
Star Date: $stardate
--------------------"


Function New-CaptainsLog {

	$fileName = "CPL.txt";

	$year = Get-Date -Format yyyy;

	$month = Get-Date -Format MM;

	$day = Get-Date -Format dd;

	$file = "$HOME\captainsLog\$year\$month\$day\$fileName"
	
	$path = "$HOME\captainsLog\$year\$month\$day\"

	New-Item $path -Itemtype Directory

	New-Item $file -Itemtype File

	$template | Set-Content $file
}
