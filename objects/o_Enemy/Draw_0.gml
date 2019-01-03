/// @description Draw Enemy Event
// ---------------------------------------------------------------------------------
draw_self();
if(damaged) {
	image_blend = c_red;
} else {
	image_blend = c_white;
}
var cc = make_color_rgb(252, 252, 252); // Health Bar Color
var ccc = make_color_rgb(10, 11, 15); // Health Bar Color
if(state != STATE.DYING){
	#region Health Bar
	// Draw Bars if Damaged
	var bar_length = 32;
	var bar_width = 4;
	if(shld < shld_max || hp < hp_max){
		// Draw Bar Container
		draw_set_alpha(0.8);
		draw_rectangle_color(x-(bar_length/2)-1, y-(sprite_height/4)-bar_width-1, x+(bar_length/2)+1, y-(sprite_height/4)+1, ccc, ccc, ccc, ccc, false);
		draw_set_alpha(1.0);
		draw_rectangle_color(x-(bar_length/2)-1, y-(sprite_height/4)-bar_width-1, x+(bar_length/2)+1, y-(sprite_height/4)+1, cc, cc, cc, cc, true);
		// Draw Percentage of HP and Shield
		var hp_perc = hp/hp_max;
		if(hp_perc > 0)
			draw_rectangle_color(x-(bar_length/2), y-(sprite_height/4)-bar_width, x-(bar_length/2)+(bar_length*hp_perc), y-(sprite_height/4), c_red, c_red, c_red, c_red, false);
		var shld_perc = shld/shld_max;
		if(shld_perc > 0)
			draw_rectangle_color(x-(bar_length/2), y-(sprite_height/4)-bar_width, x-(bar_length/2)+(bar_length*shld_perc), y-(sprite_height/4), c_aqua, c_aqua, c_aqua, c_aqua, false);
	}
	#endregion
	#region Range/Threat Indicators
	//if(player_in_range){
	//	draw_circle_color(x, y, range, c_red, c_red, true);
	//} else {
	//	draw_circle_color(x, y, range, c_green, c_green, true);
	//}
	#endregion
	
	if(attacking){
		draw_sprite(spr_indicator_alerted, 0, x, y-24);	
	}	
}

// Debuggin

