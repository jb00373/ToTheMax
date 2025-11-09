function landedIn() {
	//xSpd = 0;
	//ySpd = 0;
}

if (place_meeting(x + xSpd, y, oBinWall)) {
	xDirection = xDirection * -1;
	xSpd *= xDirection;
}

if (place_meeting(x + xSpd, y, oBall)) {
	landedIn();	
}


x += xSpd;

leftSide.x = x;
rightSide.x = x;
topLeft.x = x;
topRight.x = x;