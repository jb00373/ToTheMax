function landedIn() {
	alarm[0] = 20;
	alarmSet = true;
}

if (place_meeting(x + xSpd, y, oBinWall)) {
	xDirection = xDirection * -1;
	xSpd *= xDirection;
}

if (place_meeting(x + xSpd, y, oBall)) {
	if !alarmSet {
		landedIn();	
	}
}


x += xSpd;

leftSide.x = x;
rightSide.x = x;
topLeft.x = x;
topRight.x = x;