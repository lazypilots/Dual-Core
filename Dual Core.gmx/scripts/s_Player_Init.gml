///Player Initialization (PlayerNumber)

//Declarations//
MOVE_SPEED = 4.0;
JUMP_SPEED = 6.00;
MAX_FALL_SPEED = 20.0;
HIT_TIME = 0.5;
STUN_TIME = 1.0;
invincible = false;
isHit = false;
shootState = 0;
newAnim = 0;
SHOOT_DELAY = 0.35;
jumpTimer = 0;
hitTimer = 0;
invincTimer = 0;
JUMP_DELAY = 0.35;
bDoubleJump = false;
bJump = false;
shootTimer = 0;
pHealth = 100;
player_number = argument0;
bFaceRight = true;
collide = false;

enum animation_state{
stand,
jump,
walk,
shoot,
dash,
shield
}
