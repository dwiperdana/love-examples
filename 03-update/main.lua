function love.load()
  love.window.setMode(640,480,{fullscreen=false})
  x=200
  y=200
  a=100
  b=100
  drawCount=0
  elapsedTime=0
  FPS=0
end

function love.update(dt)
  if love.keyboard.isDown('escape') then
    love.event.quit()
  end
  -- keyboard input functions, manually check button state and do the corresponding action
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
  -- mouse input function, will change an object position as long as [l]eft button is pressed
  if love.mouse.isDown('l') then
    a=love.mouse.getX()
    b=love.mouse.getY()
  end
  --
  elapsedTime=elapsedTime+dt
  if elapsedTime > 1 then
    elapsedTime=elapsedTime-1
    FPS=drawCount
    drawCount=0
  end
end

function love.draw()
  -- draw first object, a triangle.
  love.graphics.setColor(0,0,0xff) -- set blue color
  love.graphics.circle('fill',x,y,50,3) --draw triangle controlled by keyboard input
  -- draw second object, a hex. This object will be drawed on top of the first object. [Painter Algorithm]
  love.graphics.setColor(0xca,0,0) --set red color
  love.graphics.circle('line',a,b,30,6) --hexagon

  love.graphics.setColor(0xff,0xff,0xff)
  love.graphics.print('FPS: '.. FPS, 10,10)
  love.graphics.print('love FPS: '.. love.timer.getFPS(), 10,30)
  drawCount=drawCount+1
end


