/// obj_camera Create
/// Set the instance or object you want the camera to follow:
target = oHelpBall;    // replace with your player object / instance id

// Camera view size (use display size or explicit values)
cam_w = display_get_width();
cam_h = display_get_height();

// Create the camera and assign it to viewport 0
cam = camera_create_view(0, 0, cam_w, cam_h);
view_camera[0] = cam;
view_enabled[0] = true;

// Optional smoothing (set smooth = false to snap-lock)
smooth = true;
lerp_speed = 0.18; // 0..1: higher = faster/smaller lag

// Optional: margins so camera doesn't stick exactly to center (0 = center)
margin_x = 0;
margin_y = 0;