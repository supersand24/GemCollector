/// @description Insert description here
// You can write your code in this editor

if (point_distance(x, y, mouse_x, mouse_y) > walkingSpeed) {
	if ((point_distance(x,y,mouse_x,mouse_y) > 200) || keyboard_check(vk_lshift)) {
		move_towards_point(mouse_x, mouse_y, runningSpeed)
		sprite_index = spr_player_running
	} else if (point_distance(x, y, mouse_x, mouse_y) > walkingSpeed) {
		move_towards_point(mouse_x, mouse_y, walkingSpeed)
		sprite_index = spr_player_walking
	}
} else {
	speed = 0
	sprite_index = spr_player_idle
}

if mouse_x > x {
	image_xscale = 1 * 1
} else {
	image_xscale = 1 * -1
}