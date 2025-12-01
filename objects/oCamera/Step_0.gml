/// obj_camera Step
if (!instance_exists(target)) {
    exit; // nothing to follow
}

// desired top-left camera position to center the target:
var target_x = target.x;
var target_y = target.y;


// apply to camera
camera_set_view_pos(cam, target_x, target_y);