if (collision_circle(x, y, sightrange, obj_player, false, true))
{
	if(collision_line(x, y, obj_player.x, obj_player.y, obj_block, false, true)) foundplayer = false;
	else foundplayer = true;
	if(foundplayer == true)
	{
		image_angle = dir;
        var _diff = angle_difference(point_direction(x,y, obj_player.x, obj_player.y), dir);
        dir += _diff * 0.1;
		move_towards_point(obj_player.x, obj_player.y, it_speed);
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



