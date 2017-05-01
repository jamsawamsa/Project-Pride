// enemyAttack_scr(firstKeyFrame, lastKeyFrame, atk, atkAnimSpd, atkSpr, hitBoxSpr)
image_speed = argument3;
sprite_index = argument4;

if ((image_index >= argument0) && (image_index <= argument1)) {
    with(instance_create(x, y, obj_hitBox)) {
        sprite_index = argument5;
        image_xscale = other.image_xscale;
        chance = 1.3 - random(0.6);
        damage = round(argument2 * chance * .6);
        with(instance_place(x, y, player_par)) {
            if (hit == 0) {
                hit = 1;
                // playSound_scr(knightHit_snd); // player hit sound animation
                hp -= other.damage;
                dmgText = instance_create(x, y -32, obj_damage)
                dmgText.str = string(other.damage);
            }
        }
    }
}
