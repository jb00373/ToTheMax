xSpd = 0;
ySpd = 0;

distance = 0;

gravitee = 1;

thrown = false;

startX = x;
startY = y;

landedObject = noone;


enum BallState {
	HELD,
	THROWN,
	LANDED,
	INACTIVE,
	UNASSIGNED,
}

state = BallState.UNASSIGNED;