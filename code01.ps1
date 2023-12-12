# begin the code 01...


$Code01		=	import-csv -Path .\code01.csv -Header code		# import list
$NumCode	=	$Code01.code -replace "[a-zA-Z]", ""			# remove alphas



foreach ($line in $NumCode)

{
	$number	=	[int]$line
	if ($number -ilt 10) {write-host "$line <10"}
}
