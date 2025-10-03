///Properties
ideal_width=0; //Doesn't matter because we are going to calculate this.
ideal_height=360;
zoom=1;
max_zoom=1;
use_sub_pixels=false;
 
//Aspect ratio
aspect_ratio = display_get_width()/display_get_height();
 
//Calculate new ideal width.
ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width/aspect_ratio);
 
ideal_width=round(ideal_width);
ideal_height=round(ideal_height);
 
//Check to make sure the width and height isn't an odd number
 
if(ideal_width & 1)
  ideal_width++;
     
if(ideal_height & 1)
  ideal_height++;
 
global.ideal_width = ideal_width
global.ideal_height = ideal_height

 
for(var i=1; i<= room_last; i++)
{
  if(room_exists(i))
  {    
        room_set_view_enabled(i,true);
        room_set_viewport(i,0,true,0,0,ideal_width,ideal_height);
        
  }
}
 
surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width*zoom,ideal_height*zoom);
 
room_goto_next()