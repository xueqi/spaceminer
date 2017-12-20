/// @description Insert description here
// You can write your code in this editord



draw_self()
// draw label
// draw_sprite_stretched(sprItem, label_index, x - sprite_width / 2 + 5, y - sprite_height / 2 + 2, 40, 40)

// draw value

if label_index == objControll.GOLD_BANNER {
	draw_set_font(fntGold)
	draw_set_color(c_black)
	draw_text(x-10, y-20, string(objControll.gold))
} else if label_index == objControll.FUEL_BANNER {
	draw_set_font(fntGold)
	draw_set_color(c_black)
	draw_text(x-20, y-20, string(objControll.fuel) + "/" + string(objControll.totalFuel))
}