# test code jour 1 phase 1

# remove alphas...
Function RemAlpha ($code) {
	$code		=	$Code -replace "[a-zA-Z]", ""
	return $code
}

function SchrinkNum ($Numline) {
	switch ($Numline) {
		{$Numline.length -eq 1} { $numline	=	"$Numline$Numline" }
		{$Numline.length -gt 2} { 
			do {
				$numline	=	$Numline.remove(1,1)
			} until (
				$Numline.length -eq 2 
			)
		}
	}
	$number		=	$Numline
	return $number
}

function total ($addition){
	foreach ($line in $addition) {
		$total	+=	[int]$line
	}
	return $total
}

