#03-update

##Love.update()
In a game loop, the 3 main function is getInput, worldUpdate, and draw.
 `love.update()` is both the getInput and the worldUpdate part. 
- getInput is where we collect any user input, we then use the input
  information to update our user state in the worldUpdate part.
- worldUpdate is where we update all our objects' states and positions. This is also where we put our game system (like score calculations) and AI logic.

##Moving object
To move an object we simply need to change it's position. In this
section we change the triangle object using keyboard input, and the hex
object using mouse interactions.

###Keyboard Input

    if love.keyboard.isDown('up') then
      y=y-1
    end
    if love.keyboard.isDown('down') then
      y=y+1
    end
    if love.keyboard.isDown('left') then
      x=x-1
    end
    if love.keyboard.isDown('right') then
      x=x+1
    end

###Draw triangle
    
    love.graphics.setColor(0,0,0xff) -- set blue color
    love.graphics.circle('fill',x,y,50,3) --draw triangle controlled by keyboard input

---
###Mouse Input
    
    if love.mouse.isDown('l') then
      a=love.mouse.getX()
      b=love.mouse.getY()
    end

###Draw hex
    
    love.graphics.setColor(0xca,0,0) --set red color
    love.graphics.circle('line',a,b,30,6) --hexagon

##Other Functions
###Set Primitive Function's Draw Color 
`love.graphics.setColor(r,g,b)` This function will set the color of any
primitive draw functions from section `02-draw` until the next
`setColor` (doesn't resetted at the end on each draw call).

###FPS Counter
We can use the `love.timer.getFPS()` function or create our own FPS
counter as a practice. Our own implementation of FPS counter is to count
how many does the `love.draw()` function is called in one second. We use
the `dt` parameter in `love.update(dt)` to count the elapsedTime.
For simple input demo like this, the FPS is stable at 60.

