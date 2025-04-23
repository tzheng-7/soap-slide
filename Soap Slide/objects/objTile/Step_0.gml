// If there is no tile beneath, clone itself
if (!instance_place(x, y + sprite_height, object_index)) {
    instance_create_layer(x, y + sprite_height, layer, object_index);
}

// Move up
y -= 1;