# begin the code 01...

. ./includes.ps1

$inputCode		=	Get-Content .\input.txt
$total			=	0

$RedMax			=	"12 red"
$GreenMax		=	"13 green"
$BlueMax		=	"14 blue"

# mise en tableau...
foreach ($line in $inputCode) {
	conv2table $line
}

# $CSVtable = conv2table $inputCode | ConvertFrom-Csv -Delimiter "," -header 'game','num1','color1','num2','color2','num3','color3'


