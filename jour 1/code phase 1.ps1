# begin the code 01...

. ./includes.ps1

$inputCode		=	Get-Content .\input.txt
$total			=	0

$inputCode		=	RemAlpha $inputCode			# removes alpha

foreach ($line in $inputcode) {
	$line	=	SchrinkNum $line				# shrinks to 2 digits !
	$total	+=	[int]$line
}
Write-Host $total