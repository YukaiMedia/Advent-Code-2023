# begin the code 01...


$Code01		=	import-csv -Path .\code01.csv -Header code		# import list
$NumCode	=	$Code01.code -replace "[a-zA-Z]", ""			# remove alphas



foreach ($line in $NumCode)
{
	$lineSwith	=	$line
	switch ($lineSwith) {
		{$lineSwith -lt 10} { Write-Host $line }
		{$lineSwith -lt 100} { Write-Host $line }
	}
	
	
}
