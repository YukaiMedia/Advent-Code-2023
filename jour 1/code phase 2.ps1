# begin the code phase 2...
 
. ./includes.ps1

$inputCode		=	Get-Content .\input.txt
$total			=	0

foreach ($line in $inputcode) {
	$line	=	Conv2num $line					# convert numNames by NumNumbers...
	$line	=	RemAlpha $line
	$line	=	SchrinkNum $line				# shrinks to 2 digits !
	$total	+=	[int]$line
}
Write-Host $total