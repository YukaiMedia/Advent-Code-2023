code phase 2.ps1
# begin the code phase 2...


$Code01		=	import-csv -Path ".\code01.csv" -Header code  # import list
$NumCode	=	$code01 | select -expand code
# $NumCode	=	$numcode -replace "[0-9]", ""
$numcode    =   $numcode -replace "one", "1"
$numcode    =   $numcode -replace "two", "2"
$numcode    =   $numcode -replace "three", "3"
$numcode    =   $numcode -replace "four", "4"
$numcode    =   $numcode -replace "five", "5"
$numcode    =   $numcode -replace "six", "6"
$numcode    =   $numcode -replace "seven", "7"
$numcode    =   $numcode -replace "eight", "8"
$numcode    =   $numcode -replace "nine", "9"
$NumCode	=	$numcode -replace "[a-zA-Z]", ""	# remove alphas


foreach ($line in $NumCode)

{
	$number	=	[int]$line
	switch ($number) {
		{$_ -lt 10} { Write-Host "$_$_" }
		{($_ -lt 100) -and ($_ -gt 9)} { Write-Host "$_" }
		{$_ -gt 99)} 
			{
				while($_ -gt 99) {}
			}
	}
}