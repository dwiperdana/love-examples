function love.load()  --this function will be called once before we run the game
  x=50  --variable declaration
  y=250 --x and y will be used for one of our object
  stars = {} --table to hold the stars
  max_stars = 100;
  for i=1, max_stars do --loop 100 times, create a star
    --local variable were only available for this loop?
    local x = math.random(5, love.graphics.getWidth()-5)  --get random x position for a star
    local y = math.random(5, love.graphics.getHeight()-5) --get random y position for a star
    stars[i] = {x ,y} --insert a tuple to the table
  end
  --line variable
  zigzag = {
    100, 100,
    200, 200,
    300, 100,
    400, 200,
  }
  --polygon variable
  vertices = {
    500,300,
    550,330,
    600,300,
    580,400,
    530,400,
  }
end

function love.draw()
  love.graphics.point(10,10) --a single pixel
  --stars example from love2d wiki
  for i=1, #stars do --loop through all stars
    love.graphics.point(stars[i][1], stars[i][2]) --draw each stars
  end
  --line
  love.graphics.line(15,15,25,30) -- create a line, we can create a polygon with this function
  love.graphics.line(zigzag) --create a line from a table
  --rectangle
  love.graphics.rectangle("fill", x, y, 60, 120)        --draw a solid rectangle
  love.graphics.rectangle("line", x+100, y, 60, 120) --draw an empty rectangle
  --circle
  love.graphics.circle("fill", x, y+150, 20, 100)   --draw a solid circle
  love.graphics.circle("fill", x+100, y+150, 20, 5) --we can use the last parameter (segment), to create pentagram
  --polygon
  love.graphics.polygon("line", vertices)
end

function love.update()
  if love.keyboard.isDown('escape') then --function to check if the escape button is currently pressed
    love.event.quit() --close the game
  end

end
