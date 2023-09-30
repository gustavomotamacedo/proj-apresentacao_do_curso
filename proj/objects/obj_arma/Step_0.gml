if keyboard_check(ord("D")){
	x = obj_jogador.x + 8
	image_xscale = 1
	image_angle = 0
} else if keyboard_check(ord("A")) {
	x = obj_jogador.x - 8	
	image_xscale = -1
	image_angle = 0
}

y = obj_jogador.y - 2

if keyboard_check(ord("W")) {
	if image_xscale == 1 {
		image_angle = 90
	} else {
		image_angle = 270
	}
} else if keyboard_check(ord("S")) {
	if image_xscale == 1 {
		image_angle = 270
	} else {
		image_angle = 90
	}
}

if keyboard_check(vk_space) {
	with(instance_create_layer(x, y, "Disparos", obj_disparo)){
	speed = 8
	direction = -90 + 90 * other.image_xscale
	image_angle = direction
	}
}