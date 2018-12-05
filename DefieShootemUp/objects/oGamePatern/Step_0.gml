if(wave1 <= 10 && spawn == true)
{
	if(wave1 <= 5)
	{
		instance_create_layer(window_get_width()/3,-40,"Enemy",oEnemy);
		spawn = false;
		alarm[0] = delay;
		wave1++;
	}
	else
	{
		instance_create_layer((window_get_width()/3)*2,-40,"Enemy",oEnemy);
		spawn = false;
		alarm[0] = delay;
		wave1++;
	}
}