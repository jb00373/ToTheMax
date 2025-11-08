xSpd = 0;
ySpd = 0;

yOffset = 10;
xOffset = 0;

// How far up the hand should go before letting go
holdingDistance = 50;
holding = false;

target = noone;

startingX = y;
startingY = y;
distanceMoved = 0;

enum HandState {
	HOLDING,
	THROWING,
	INITTING,
	RESETTING,
}

//States
//Holding ball
//Throwing ball
//Moving to original position