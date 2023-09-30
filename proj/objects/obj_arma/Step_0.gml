if keyboard_check(ord("D")){
	x = obj_jogador.x + 8
	image_xscale = 1
} else if keyboard_check(ord("A")) {
	x = obj_jogador.x - 8	
	image_xscale = -1
}

y = obj_jogador.y - 2