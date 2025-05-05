y -= 1;

image_alpha -= 0.02; // Fade out

if (image_alpha <= 0) { // If fully faded
    instance_destroy(); // Destroy object
}