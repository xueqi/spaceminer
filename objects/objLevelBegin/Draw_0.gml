/// @description Insert description here
// You can write your code in this editor


draw_self()
draw_set_font(fntGold)
draw_set_color(c_black)
draw_text(300, 150, "Level " + string(global.level))

// draw the targets

for (var i = 0; i < ds_list_size(global.targets); i++) {
	draw_sprite_stretched(sprItem, global.targets[| i],   300 + i * 150, 225, 80, 80)
}