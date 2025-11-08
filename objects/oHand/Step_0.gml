
if target == noone {
	state = HandState.INITTING
}

else {	
	if (target.thrown) {
		state = HandState.THROWING;
	}
	else {
		//return to orginal position
		state = HandState.INITTING;
	}
}


switch(state) {
	case HandState.INITTING:
		//When ball is in position (not moving), move hand there and initialise
		if (oBall.ySpd == 0) {
			target = oBall;
			x = target.x + xOffset;
			y = target.y + yOffset;
			startingY = y;
			startingX = x;
			state = HandState.HOLDING;
		}
		
	case HandState.HOLDING:
		distanceMoved = (abs(y - startingY) + abs(x - startingX));
		xSpd = target.xSpd;
		ySpd = target.ySpd;
		
	case HandState.THROWING:
		//Keep the hand on the ball for distanceMoved pixels
		if (distanceMoved < holdingDistance) {
			distanceMoved = (abs(y - startingY) + abs(x - startingX));
			xSpd = target.xSpd;
			ySpd = target.ySpd;
		}
		//Once that's done, reset to original position
		else {
			state = HandState.RESETTING;
		}
		
	case HandState.RESETTING:
		xSpd = lerp(xSpd, 0, 0.1);
		ySpd = lerp(ySpd, 0, 0.1);
		y = lerp(y, startingY, 0.1);
		x = lerp(x, startingX, 0.1);
}

x += xSpd;
y += ySpd;


