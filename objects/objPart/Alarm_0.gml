/// @description disappear

image_alpha *= 0.8

if image_alpha < 0.1 {
	instance_destroy()
} 

alarm_set(0, 1)
