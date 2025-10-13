draw_self();

draw_text(x,y- 20,jump_buffer);

var circle_rad = 18
var offset_x = circle_rad*2 + 4
var cam_x = global.ideal_width/2
var cam_y = global.ideal_height/2


for (var i = 0; i  < hp_max; i++){
	var xx = oCamera.x+i*offset_x-cam_x + circle_rad
	var yy = oCamera.y-cam_y + circle_rad
	draw_circle(xx,yy,circle_rad,true);
}

for (var i = 0; i  < hp; i++){
	var xx = oCamera.x+i*offset_x-cam_x + circle_rad
	var yy = oCamera.y-cam_y + circle_rad
	draw_circle(xx,yy,circle_rad,false);
}