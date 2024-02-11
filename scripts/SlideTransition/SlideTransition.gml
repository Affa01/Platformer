// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// @desc SlideTransition(mode, targetroom)
//@args Mode sets transition mode between next, restart and goto
//@args Target sets target room ehtn using the goto mode

function SlideTransition(_mode, _target = room)
{
	with (oTransition)
	{
		mode = _mode;
		target = _target;
	}

}
