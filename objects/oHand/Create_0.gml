xSpd = 0;
ySpd = 0;

yOffset = 10;
xOffset = 0;

// How far up the hand should go before letting go
holdingDistance = 50;
holding = false;

target = noone;
ball = noone;

startingX = y;
startingY = y;
distanceMoved = 0;

enum HandState {
	HOLDING,
	THROWING,
	INITTING,
	RESETTING,
	AWAITING_BALL,
}

state = HandState.INITTING;
image_speed = 0;

//States
//Holding ball
//Throwing ball
//Moving to original position