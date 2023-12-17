# begin the code 01...

. ./includes.ps1

$inputCode		=	Get-Content .\input.txt
$total			=	0

foreach ($line in $inputcode) {
	$line	=	RemAlpha $line			# removes alpha
	$line	=	SchrinkNum $line		# shrinks to 2 digits !
	$total	+=	[int]$line
}
Write-Host $total