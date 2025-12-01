switch(state) {
	case HandState.INITTING:
		if (target) {
			if (round(x) == target.x + xOffset && round(y) == target.y + yOffset) {
				state = HandState.HOLDING;
			}
		}
		break;
		
	case HandState.HOLDING:
		if (target.thrown) {
			if (distanceMoved < holdingDistance) {
				state = HandState.THROWING;
			}
		}
		break;
		
	case HandState.THROWING:
		if (distanceMoved >= holdingDistance) {
			state = HandState.RESETTING;
		}
		break;
		
	case HandState.RESETTING:
		if (round(x) == startingX && round(y) == startingY) {
			state = HandState.INITTING;
		}
		break;
}



switch(state) {
	case HandState.INITTING:
		//When ball is in position (not moving), move hand there and initialise
		if !ball {
			for (var i = 0; i < instance_number(oBall); i++)
			{
			    if (instance_find(oBall,i).state == BallState.UNASSIGNED) {
					ball = instance_find(oBall,i);
					ball.state = BallState.HELD;
					break;
				}
			}
		}
		else if (ball.ySpd == 0) {
			target = ball;
			x = target.x + xOffset;
			y = target.y + yOffset;
			startingY = y;
			startingX = x;
			distanceMoved = 0;
		}
		break;
		
	case HandState.HOLDING:
		xSpd = target.xSpd;
		ySpd = target.ySpd;
		break;
		
	case HandState.THROWING:
		//Keep the hand on the ball for distanceMoved pixels
		if (distanceMoved < holdingDistance) {
			distanceMoved = (abs(y - startingY) + abs(x - startingX));
			xSpd = target.xSpd;
			ySpd = target.ySpd;
			image_speed = 1;
		}
		break;
		
	case HandState.RESETTING:
		ball = noone;
		target = noone;
		xSpd = lerp(xSpd, 0, 0.1);
		ySpd = lerp(ySpd, 0, 0.1);
		x = lerp(x, startingX, 0.1);
		y = lerp(y, startingY, 0.1);
		break;
}

x += xSpd;
y += ySpd;


