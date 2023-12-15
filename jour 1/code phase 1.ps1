# begin the code 01...


$Code01		=	import-csv -Path .\code01.csv -Header code								# import list
$Code01		=	Get-Content .\input.txt
$NumCode	=	$Code01.code -replace "[a-zA-Z]", "" | Export-Csv -path .\code02.csv	# remove alphas


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
