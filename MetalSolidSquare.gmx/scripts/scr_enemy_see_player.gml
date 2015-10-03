if (!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,true))
{
    //set Vision Cone
    cone_left = spr_guard.image_angle+sight_cone_left;
    if(cone_left >359) { cone_left = cone_left-359 };
    cone_right = spr_guard.image_angle+sight_cone_right;
    if(cone_right < 0) {cone_right = 359+cone_right};
    //get angle to player
    p_angle = point_direction (x,y,obj_player.x,obj_player.y);
    show_debug_message("Pangle: " +string(p_angle));
    show_debug_message("Lcone: "+string(cone_left));
    show_debug_message("Rcone: "+string(cone_right));
    //is player in cone?
    if (cone_right > cone_left)
    {
        if (p_angle <= cone_left or p_angle >= cone_right) {in_cone =true};
        else {in_cone = false};
    }
    else
    {
        if (p_angle <= cone_left and p_angle >= cone_right){in_cone=true};
        else{in_cone = false};
    }
    //if in cone, act
    if (in_cone)
    {
        //get player distance
        dist_to_player = point_distance(x,y,obj_player.x,obj_player.y);
        //get player visibility
        p_visi = obj_player.visibility;
        //check if see
        if(p_vis ==3)
        {
            if(dist_to_player < detection_rad_3)
            {obj_guard.image_angle = point_direction(x,y, obj_player.x, obj_player.y)}
        }
        else if (p_vis == 2)
        {
            if(dist_to_player < detection_rad_2) 
            {obj_guard.image_angle = point_direction(x,y, obj_player.x, obj_player.y)}
        }       
        else if (p_vis == 1)
        {
            if(dist_to_player < detection_rad_1) 
            {obj_guard.image_angle = point_direction(x,y, obj_player.x, obj_player.y)}
        }
        else if (p_vis == 0)
        {
            if(dist_to_player < detection_rad_0) 
            {obj_guard.image_angle = point_direction(x,y, obj_player.x, obj_player.y)}
        }
    
    }
    
}
