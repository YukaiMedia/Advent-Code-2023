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

function Conv2num ($code) {
	$code = $code -replace "one", "o1e" `
	-replace "two","t2o" `
	-replace "three","t3e" `
	-replace "four", "f4r" `
	-replace "five", "f5e" `
	-replace "six", "s6x" `
	-replace "seven", "s7n" `
	-replace "eight", "e8t" `
	-replace "nine", "n9e"
	return $code
}