/// @desc ScreenShake(magnitude,frames)
/// @args Magnitude sets the strength of the shake (radius in pixels)
/// @args Frames sets the length of the shake and frames (60 = 1 second at 60fps)
 function ScreenShake(_magnitude,_frames)
{
	with(oCamera)
	{
			if (_magnitude > shake_remain)
			{
				shake_magnitude = _magnitude;
				shake_remain = _magnitude;
				shake_length = _frames;
			}
	}
}