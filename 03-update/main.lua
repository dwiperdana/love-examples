function love.load()
  love.window.setMode(640,480,{fullscreen=false})
  angle=0.0;
  x=200
  y=200
end

function love.update()
  angle=angle + 0.1
  if love.keyboard.isDown('escape') then
    love.event.quit()
  end
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
end

function love.draw()
  love.graphics.setColor(0xff,0xff,0xff)
  love.graphics.rectangle('line',50,50,40,20) --draw rectangle in default coordinate state
  love.graphics.push() -- save the current coordinate state
  -- draw rotating rectangle
  love.graphics.translate(100,100)            --move the origin to the center of the rectangle
  love.graphics.rotate(angle)                 --rotate the whole coordinate system
  love.graphics.translate(-100,-100)          --move the origin back
  love.graphics.rectangle('line',80,90,40,20) --draw our rectangle on the new (rotated) coordinate system
  love.graphics.pop() -- restore the last coordinate state
  love.graphics.push() -- save the current coordinate state
  rotate(x,y,angle)
  love.graphics.setColor(0,0,0xff)
  love.graphics.circle('fill',x,y,50,3) --draw rotating triangle
  love.graphics.pop() -- restore the last coordinate state
  
end

function rotate(x, y, angle)
  love.graphics.translate(x,y)            --move the origin to the center of the rectangle
  love.graphics.rotate(angle)                 --rotate the whole coordinate system
  love.graphics.translate(-x,-y)          --move the origin back
end
