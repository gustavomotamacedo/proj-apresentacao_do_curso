if obj_jogador.x > x {
	x += dx * spd
}else if obj_jogador.x < x {
	x -= dx * spd
}

if obj_jogador.y > y {
	y += dy * spd
}else if obj_jogador.y < y  {
	y -= dy * spd
}

if place_meeting(x, y - (dy*spd), obj_inimigo) {
	y += y - yprevious
}
if place_meeting(x, y + (dy*spd), obj_inimigo) {
	y -= yprevious
}
if place_meeting(x  - (dx*spd), y, obj_inimigo) {
	x += x - xprevious
}
if place_meeting(x + (dx*spd), y, obj_inimigo) {
	x -= x - xprevious
}