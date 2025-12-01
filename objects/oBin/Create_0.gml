startX = x;
target = startX + xLimit;

lerpAmount = 0;
xDirection = 1;

leftSide = instance_create_depth(x, y, 1, oBinCollisionsLeft);
rightSide = instance_create_depth(x, y, 1, oBinCollisionsRight);
topLeft = instance_create_depth(x, y, 1, oBinCollisionsTopLeft);
topRight = instance_create_depth(x, y, 1, oBinCollisionsTopRight);

alarmSet = false;