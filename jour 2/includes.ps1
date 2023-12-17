

# mis en tableau des lignes
function conv2table ($table) {
$game	=	$table.substring(0,$inputcode.IndexOf(":"))		# le nom du game
$table	=	$table -replace ";","`n$game" `
					-replace ": ",","`
					-replace ", ",","
return $table
}