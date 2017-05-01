/// Handles death behaviour of enemies
// chance to spawn an item
if random(1) <= 0.3 {
    instance_create(x, y - 16, obj_powerUpItem); 
}
// destroys the monster instance
instance_destroy();

