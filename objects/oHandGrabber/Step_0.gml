x = lerp(x, target.x, .02);
y = lerp(y, target.y, .02);

if (place_meeting(x, y, target)) {
	target.grab();
	image_index = 1;
	target = oWall;
}