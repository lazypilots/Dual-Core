///Player Update (dT)

hspeed = 0;

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

if (keyboard_check(ord('W')))
{
y = y - MOVE_SPEED;
}

if (keyboard_check(ord('S')))
{
y = y + MOVE_SPEED;
}

if (collide)
{
hspeed = 0;
vspeed = 0;
collide = false;
}

if (bFaceRight)
{
image_xscale = -1;
}
else
{
image_xscale = 1;
}

