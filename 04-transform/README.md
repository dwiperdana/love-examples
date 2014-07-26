#04-transform
love2d is using a basic drawing system, much like SDL or OpenGL, there
is no scene or sprite manager like in Flash or Construct 2. (the last two
frameworks that I tried in the past)

If you noticed in section `02-draw` all the primitive objects are axis
alligned, and there is no `angle` parameter in the draw function to
change it's orientation (like in J2ME). So if we want to create a
rotating object, for example the asteroids and player's ship in the
Asteriod game, we need to do all the transformation ourselves.

##Coordinate system
The coordinate system used in love2d is fairly standard, with the origin
point at the top left corner of our screen. The interesting part is
that:

1. There is no `worldTransform` and `objectTransform` by default (I
remember using these in OGRE3D with trial and error just to have an
object rotating correctly). All transformation will be applied to the
world coordinate system.
2. There is a tranformation stack that uses `love.graphics.push()` and
   `love.graphics.pop()` to store and retrieve coordinate states. We
will use this if we use a lot of tranformation to draw our objects. And
we certainly need some custom helper functions.
3. The transform functions will only last until the next `love.draw()` call.

##Transform functions
There are several basic transform functions in love2d, just like any
other 2d platform.
###Translate
`love.graphics.translate(dx,dy)` is used to move the coordinate system
by dx and dy.
###Rotate
`love.graphics.rotate(angle)` is used to rotate the coordinate sytem by
it's origin point. There is no rotate from a defined point, we need to
combine translate and rotate to do that, like the example in this
section.
###Scale
`love.graphics.scale(dx,dy)` will scale our coordinate system by dx and
dy.
###Shear
`love.graphics.shear(dx,dy)` used to shear our objects.

##Other notes
###Rotating object from a point
To achieve this, we need to do several steps:
1. Move the point we want as the center to be our origin (use translate
   to move the point to 0,0.
2. Rotate our coordinate system
3. Move the point back to it's original place using translate to the
   opposite value

###Custom/Helper Tranformation
To make the code readable, we should make several helper functions, like
the function to rotate at a specific point.

    function rotate(x, y, angle)
      love.graphics.translate(x,y)            --move the origin to the center of the rectangle
      love.graphics.rotate(angle)                 --rotate the whole coordinate system
      love.graphics.translate(-x,-y)          --move the origin back
    end

