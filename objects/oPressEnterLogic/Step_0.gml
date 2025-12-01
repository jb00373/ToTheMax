var enterKey = keyboard_check_pressed(vk_enter);

if enterKey {
	if (room_next(room) != -1) {
		room_goto_next();
	}
}