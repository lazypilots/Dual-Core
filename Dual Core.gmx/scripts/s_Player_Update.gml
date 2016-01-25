///Player Update (dT)

hspeed = 0;

if(collision_point(x, y+(sprite_height / 2),o_collision, false, true) && (!collision_point(x, y+(sprite_height / 2) + 1,o_collision, false, true)))
{
    y--;
}

if (keyboard_check(ord('A')))
{

hspeed = -MOVE_SPEED;

    if(!keyboard_check(ord('D')))
    {
    bFaceRight = true;
    }
}
if (keyboard_check(ord('D')))
{

hspeed = MOVE_SPEED;

    if(!keyboard_check(ord('A')))
    {
    bFaceRight = false;
    }
}

if (keyboard_check_pressed(ord('W')))
{
    if (bJump)
    {
    
    }
    else
    {
    vspeed = -12.0;
    bJump = true;
    }
}


//Jump variable
if (place_free(x, y+1) && (!bJump))
{
    bJump = true;
}

if (bJump)
{
    if (!place_free(x, y+1) && vspeed >= 0)
    {
        bJump = false;
    }
    else
    {
    vspeed += 0.6;
    }
}

//Collision detection and resolution//
if (!place_free(x+hspeed,y))
{
    if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
    if (hspeed>0){move_contact_solid(0,abs(hspeed));}
    hspeed=0;
}
  
if (!place_free(x,y+vspeed))
{
    if (vspeed<=0){move_contact_solid(90,abs(vspeed));}
    if (vspeed>0){move_contact_solid(270,abs(vspeed));djump=1}
    vspeed=0;
}

if (!place_free(x+hspeed,y+vspeed)&& (speed> 0))
{
    hspeed=0;
}





if (bFaceRight)
{
image_xscale = -1;
}
else
{
image_xscale = 1;
}

