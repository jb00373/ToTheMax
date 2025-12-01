function grab() {
	grabbed = true;
}

if grabbed {
	x = oHandGrabber.x;
	y = oHandGrabber.y;
}

if (place_meeting(x, y, oHelpChanger)) {
	sprite_index = sHELP;
}