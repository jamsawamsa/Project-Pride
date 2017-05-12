/// Handling player's input
// movement
keyRight = keyboard_check(vk_right);
keyLeft = -keyboard_check(vk_left);
keyJump = keyboard_check_pressed(vk_space);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

// actions and interactions
keyF = keyboard_check_pressed(ord("F"));
keyQ = keyboard_check_pressed(ord("Q"));

// for testing
keyR = keyboard_check_pressed(ord("R"));
keyB = keyboard_check_pressed(ord("B"));

// restart game for testing, remove later
if (keyR) {
    game_restart();
}

//if (keyB && instance_exists(rmController_obj)) {
//    debugMsg = instance_number(rmController_obj.leafPartSys);
//    show_debug_message(debugMsg);
//}
