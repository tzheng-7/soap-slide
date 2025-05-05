var minutes = floor(survival_time div 60); // Get mins from survival time 
var seconds = floor(survival_time) mod 60; // Get remaining secs

draw_set_color(c_black); // Black text
draw_text(32, 32, string(minutes) + ":" + string_format(seconds, 2, 0)); // Display in mm:ss format
