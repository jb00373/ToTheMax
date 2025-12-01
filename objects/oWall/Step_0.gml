if (place_meeting(x + xSpd, y, oBall)) {
	if !alarmSet {
		alarm[0] = 20;
		alarmSet = true;
	}
}

function grab() {
	room_goto_next();
}