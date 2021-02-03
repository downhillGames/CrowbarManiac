halfCameraWidth = camera_get_view_width(view_camera[0]) / 2;
halfCameraHeight = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x- halfCameraWidth, y - halfCameraHeight)

Camera_ID = view_camera[0];
camera_set_view_pos(Camera_ID,
	clamp( camera_get_view_x(Camera_ID), 0, room_width - camera_get_view_width(Camera_ID) ),
	clamp( camera_get_view_y(Camera_ID), 0, room_height - camera_get_view_height(Camera_ID) )
);
