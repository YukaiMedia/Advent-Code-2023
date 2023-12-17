# begin the code 01...

. ./includes.ps1

$inputCode		=	Get-Content .\input.txt
$total			=	0

$RedMax			=	"12"
$GreenMax		=	"13"
$BlueMax		=	"14"

# mise en tableau...
$CSVtable = foreach ($line in $inputCode) {
	conv2table $line
}

$CSVtable = $CSVtable | ConvertFrom-Csv -Delimiter "," -header 'game','num1','color1','num2','color2','num3','color3'


$col = 2
$CSVtable | Where-Object { $CSVtable[$col] -match "red" -and [int]$CSVtable[$col-1] -gt $RedMax} | ft    
