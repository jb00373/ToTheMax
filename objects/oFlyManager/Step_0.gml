shake_amount = 3;
var cam = view_camera[0];

    var base_x = camera_get_view_x(cam);
    var base_y = camera_get_view_y(cam);

    var sx = random_range(-shake_amount, shake_amount);
    var sy = random_range(-shake_amount, shake_amount);

    camera_set_view_pos(cam, base_x + sx, base_y + sy);