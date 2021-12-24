direction = irandom_range(0, 359);
speed = irandom_range(10, 150)/100;

asteroid_update_sprite(self);

rotation_direction_left = bool(irandom_range(0, 1));