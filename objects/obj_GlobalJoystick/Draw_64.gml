
if left_device_id>-1
{
str="left direction= " + string(left_analog_direction) + "#left distance= " + string(left_analog_distance)
draw_sprite(spr_Joystick,0,left_start_x,left_start_y)
if left_analog_distance > analog_width {left_analog_distance=analog_width}
if left_analog_distance < -analog_width {left_analog_distance=analog_width}

 point_x=(left_start_x)+left_analog_distance*(cos(left_analog_direction*pi/180));
 point_y=(left_start_y)+left_analog_distance*(sin(left_analog_direction*pi/180));

draw_sprite(spr_JoystickKnob,0,point_x,point_y)

}


draw_text(20,50,string_hash_to_newline(str))


