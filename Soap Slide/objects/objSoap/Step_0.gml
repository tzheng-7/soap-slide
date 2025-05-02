// Horizontal movement
var hmove = 0;

if (keyboard_check(vk_left)) {
    hmove = -1;
} else if (keyboard_check(vk_right)) {
    hmove = 1;
}

// Timer for speed increase (every 3 seconds)
if (!variable_global_exists("speed_timer")) {
    global.speed_timer = 0;
}

global.speed_timer += 1;

if (global.speed_timer >= 180) { // 180 frames = 3 seconds
    global.speed_timer = 0; // Reset timer
    move_speed += 0.5; // Increase speed by 1
}

// Apply movement
x += hmove * move_speed;

// Bubble trail effect
if (!variable_global_exists("bubble_timer")) {
    global.bubble_timer = 0;
}

global.bubble_timer -= 1;

if (global.bubble_timer <= 0) {
    global.bubble_timer = 4; // Spawn every 4 frames

    var bubble_count = 3 + irandom(2); // 3–5 bubbles at once

    for (var i = 0; i < bubble_count; i++) {
        var offset_x = random_range(-sprite_width * 0.5, sprite_width * 0.5);
        var bub = instance_create_layer(x + offset_x, y + sprite_height * 0.5, "Bubble_trail", objBubbleTrail);
        
        bub.image_xscale = random_range(0.4, 1);
        bub.image_yscale = bub.image_xscale;
    }
}