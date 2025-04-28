var minutes = floor(survival_time div 60);
var seconds = floor(survival_time) mod 60;

draw_set_color(c_black); // set the color to black
draw_text(32, 32, string(minutes) + ":" + string_format(seconds, 2, 0));