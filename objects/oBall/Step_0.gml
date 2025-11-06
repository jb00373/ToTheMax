function throwBall() {
	xSpd = -5;
	ySpd = -30;
	thrown = true;
}

function resetBall() {
	x = startX;
	y = startY;
	xSpd = 0;
	ySpd = 0;
	thrown = false;
}

if (!thrown) {
	if (keyboard_check_pressed(vk_enter)) {
		throwBall();
	}
}
else {
	if (keyboard_check_pressed(vk_enter)) {
		resetBall();
	}
}

if (place_meeting(x, y + ySpd, oWall)) {
	while (!place_meeting(x, y + 1, oWall)) {
		y++;
	}
	ySpd = 0;
	xSpd = 0;
}
else if (thrown) {
	ySpd += gravitee;
}



x += xSpd;
y += ySpd;