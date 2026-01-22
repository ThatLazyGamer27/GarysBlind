if (collision_circle(x, y, sightrange, Obj_Player_Final, false, true))
{
	if(collision_line(x, y, Obj_Player_Final.x, Obj_Player_Final.y, obj_block, false, true)) foundplayer = false;
	else foundplayer = true;
	if(foundplayer == true)
	{
		image_angle = dir;
        var _diff = angle_difference(point_direction(x, y, Obj_Player_Final.x, Obj_Player_Final.y), dir);
        dir += _diff * 0.1;
		move_towards_point(Obj_Player_Final.x, Obj_Player_Final.y, it_speed);
	}
	if(foundplayer == false)
	{
		speed = 0;
	}
}
else foundplayer = false

if monster_health == 0
{
	instance_destroy();
}



