
uPW = shader_get_uniform(shOutline,"pixelW")
uPH = shader_get_uniform(shOutline,"pixelH")

PW = texture_get_texel_width(sprite_get_texture(sPlayer,image_index))
PH = texture_get_texel_height(sprite_get_texture(sPlayer,image_index))

shader_set(shOutline)
     shader_set_uniform_f(uPW,PW)
     shader_set_uniform_f(uPH,PH)
    draw_self();
shader_reset()

draw_text(x,y- 20,jump_buffer);
draw_self();


var circle_rad = 18
var offset_x = circle_rad*2 + 4
var cam_w_half = global.ideal_width/2
var cam_h_half = global.ideal_height/2

// HP BAR
var bar_normal = hp/hp_max
var bar_width = 128*bar_normal
var bar_width_max = 128
top_left_x = oCamera.x - cam_w_half +20
top_left_y = oCamera.y - cam_h_half +20

draw_rectangle(top_left_x,top_left_y,top_left_x+bar_width,top_left_y+10,false)
draw_rectangle(top_left_x,top_left_y,top_left_x+bar_width_max,top_left_y+10,true)

for (var i = 0; i  < hp_max; i++){
	var xx = oCamera.x+i*offset_x-cam_w_half + circle_rad
	var yy = oCamera.y-cam_h_half + circle_rad
	//draw_circle(xx,yy,circle_rad,true);
}

for (var i = 0; i  < hp; i++){
	var xx = oCamera.x+i*offset_x-cam_w_half + circle_rad
	var yy = oCamera.y-cam_h_half + circle_rad
	//draw_circle(xx,yy,circle_rad,false);
}