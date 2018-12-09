for (i=0;i<4;i += 1)
{

if device_mouse_check_button_pressed(i,mb_left)
    {
        if device_mouse_raw_x(i) < window_get_width()//2
        {
            left_device_id=i
            left_start_x=device_mouse_raw_x(i)
            left_start_y=device_mouse_raw_y(i)
                
        }
        else
        {
            right_device_id=i
            right_start_x=device_mouse_raw_x(i)
            right_start_y=device_mouse_raw_y(i)
        }
    }
}


if left_device_id > -1
{
    left_analog_direction = radtodeg(arctan2((device_mouse_raw_y(left_device_id)-(left_start_y)),(device_mouse_raw_x(left_device_id)-(left_start_x)+.000001)));
    left_analog_distance = sqrt(sqr(device_mouse_raw_x(left_device_id)-(left_start_x))+sqr(device_mouse_raw_y(left_device_id)-(left_start_y)));;

}


str=""


if device_mouse_check_button_released(right_device_id,mb_left)
{
    right_device_id=-1
    right_analog_direction = -1
    right_analog_distance = -1
}

if device_mouse_check_button_released(left_device_id,mb_left)
{
    left_device_id=-1
    left_analog_direction=-1
    left_analog_distance = -1
}

lad=-1
rad=-1
if abs(left_analog_distance) > 15
{
    lad=point_direction(left_start_x,left_start_y,device_mouse_raw_x(left_device_id),device_mouse_raw_y(left_device_id))
}




