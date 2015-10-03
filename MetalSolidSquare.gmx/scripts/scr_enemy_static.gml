///scr_enemy_static();
var dis = point_distance(x,y,obj_player.x,obj_player.y);
alert = false;
if (dis <= attackDis && !collision_line(x,y,obj_player.x,obj_player.y, obj_wall,false,true))
{
    state = scr_enemy_follow;
}

