if(place_meeting(x , y , oPlayer) || place_meeting(x , y , oShoot_1) || place_meeting(x, y, oSword))
{
	hp = hp - 1;
}

if(hp <= 0)
{
	instance_destroy();
	instance_create_layer(x , y , "Enemy" , oSmoke);
	score = score + 50;
}