//When ball is in position (not moving), move hand there and initialise
if target == noone{
	if (oBall.ySpd == 0) {
		target = oBall;
		x = target.x + xOffset;
		y = target.y + yOffset;
		startingY = y;
		startingX = x;
		holding = true;
	}
}

else {
	if (holding) {
		distanceMoved = (abs(y - startingY) + abs(x - startingX));
	}

	//Keep the hand on the ball for distanceMoved pixels
	if (!target.thrown or distanceMoved < holdingDistance) {
		//holding ball
		xSpd = target.xSpd;
		ySpd = target.ySpd;
	}
	else {
		//return to orginal position
		holding = false;
		xSpd = lerp(xSpd, 0, 0.1);
		ySpd = lerp(ySpd, 0, 0.1);
		y = lerp(y, startingY, 0.1);
		x = lerp(x, startingX, 0.1);
	}
}

x += xSpd;
y += ySpd;