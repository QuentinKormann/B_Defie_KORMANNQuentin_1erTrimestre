
y = y + yspd;

if(place_meeting(x , y , oPlayer) || y + 10 > window_get_height() || place_meeting(x,y,oSword))
{
	hit = true;
}