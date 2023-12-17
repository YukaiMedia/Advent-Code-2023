

# mis en tableau des lignes
function conv2table ($table) {
$game	=	$table.substring(0,$table.IndexOf(":")+1)		# le nom du game
$table	=	$table -replace ";","`n$game" `
					-replace ": ",","`
					-replace ", ",","`
					-replace " g",",g"`
					-replace " r",",r"`
					-replace " b",",b"
return $table
}