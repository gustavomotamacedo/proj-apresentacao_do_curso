if keyboard_check(ord("D")){
	x = obj_jogador.x + 4
	image_yscale = 1 
	image_angle = 0
} else if keyboard_check(ord("A")) {
	x = obj_jogador.x - 4	
	image_yscale = -1
	image_angle = 180
}

y = obj_jogador.y - 2

if keyboard_check(ord("W")) {
	image_angle = 90
} else if keyboard_check(ord("S")) {
	image_angle = 270
}

if keyboard_check_pressed(vk_space) {
	with(instance_create_layer(x, obj_jogador.y, "Disparos", obj_disparo)){
	speed = 8
	direction = obj_arma.image_angle * obj_arma.image_xscale
	image_angle = direction
	}
}