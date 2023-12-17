# begin the code 01...

. ./includes.ps1

$inputCode		=	Get-Content .\input.txt
$total			=	0

$RedMax			=	12
$GreenMax		=	13
$BlueMax		=	14

$code			=	$inputCode -replace ":",","`
					-replace ", ",","`
					-replace "red", ",red"`
					-replace "green", ",green"`
					-replace "blue", ",blue"