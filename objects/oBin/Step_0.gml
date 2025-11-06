function landedIn() {
	xLerpSpd = 0;
	//ySpd = 0;
}

lerpAmount += xLerpSpd;
if (lerpAmount >= 1) {
	xDirection = xDirection * -1;
	target = startX + xLimit * xDirection;
	lerpAmount = 0;
}

if (instance_place(x + xLerpSpd, y, oBall)) {
	landedIn();	
}

x = lerp(x, target, xLerpSpd);

