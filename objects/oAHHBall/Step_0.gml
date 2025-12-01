/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
state = BallState.THROWN;
xSpd = -10;
event_inherited();

if (place_meeting(x + xSpd, y + ySpd, oBounceCorner)) {
	alarm[1] = 100;
}

