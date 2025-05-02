y -= 1; // Float upward faster

image_alpha -= 0.02;

if (image_alpha <= 0) {
    instance_destroy();
}