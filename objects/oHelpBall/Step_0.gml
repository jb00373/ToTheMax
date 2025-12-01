// --- State transitions ---
switch(state) {
	case BallState.UNASSIGNED:
		break;
    case BallState.HELD:
        if (keyboard_check_pressed(vk_enter)) {
            throwBall();
            state = BallState.THROWN;
        }
        break;

    case BallState.THROWN:
		landedObject = instance_place(x + xSpd, y + ySpd, oWall);
        if (place_meeting(x + xSpd, y + ySpd, oWall) && ySpd >= 0) {
            state = BallState.LANDED;
        }
        break;

    case BallState.LANDED:
        if (keyboard_check_pressed(vk_enter)) {
            resetBall();
            //state = BallState.HELD;
        }
        break;
	
	case BallState.INACTIVE:
		break;
}

// --- State behaviors ---
switch(state) {
    case BallState.HELD:
        xSpd = 0;
        ySpd = 0;
        break;

    case BallState.THROWN:
		if (place_meeting(x + xSpd, y + ySpd, oJeffmBin)) {
			audio_play_sound(jeffm, 1, false);
		}
		if (place_meeting(x + xSpd, y + ySpd, oBounceCorner)) {
			xSpd *= -1;	
			ySpd *= -1;	
			var r = round(random(3));
			if r == 3 {
				audio_play_sound(bounce1, 1, false);
			}
			else if r == 1 {
				audio_play_sound(bounce2, 1, false);
			}
			else if r == 2 {
				audio_play_sound(bounce3, 1, false);
			}
			else {
				audio_play_sound(bounce3, 1, false);
			}
		}
		if (place_meeting(x + xSpd, y + ySpd, oBounceSide)) {
			xSpd *= -1;	
		}
		
        ySpd += gravitee;
        break;

    case BallState.LANDED:
        while (!place_meeting(x, y, oWall)) {
		    y++;
		}
        xSpd = landedObject.xSpd;
        ySpd = 0;
        break;
		
	case BallState.INACTIVE:
		xSpd = landedObject.xSpd;
		ySpd = 0;
}


x += xSpd;
y += ySpd;


function throwBall() {
	xSpd = -5;
	ySpd = -30;
	thrown = true;
	if random(10) > 5 {
		audio_play_sound(swordSwing1, 1, false);
	}
	else {
		audio_play_sound(swordSwing2, 1, false);
	}
}

function resetBall() {
	state = BallState.INACTIVE;
	instance_create_depth(startX, startY, 1, oBall);
	//x = startX;
	//y = startY;
	//xSpd = 0;
	//ySpd = 0;

}