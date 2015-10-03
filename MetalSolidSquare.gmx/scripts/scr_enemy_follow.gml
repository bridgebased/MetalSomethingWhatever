///scr_enemy_follow()
var dis = point_distance (x,y, obj_player.x,obj_player.y);

if (dis <= attackDis)
{
    mp_potential_step_object(obj_player.x,obj_player.y,enemySpeed,obj_wall);
    alert = true;
}
else
{
    state = scr_enemy_static;
    alert = false;
}
