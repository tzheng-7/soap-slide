var hmove = 0;

if (keyboard_check(vk_left)) {
    hmove = -1;
} else if (keyboard_check(vk_right)) {
    hmove = 1;
}

x += hmove * move_speed;