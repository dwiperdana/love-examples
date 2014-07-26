#02-draw

##Important callback functions
We already learned about `love.draw()`, now we will learn about two more callback functions, `love.load()` and `love.update()`.

1. `love.load()`  
    This function will be called once at the start of the game, we can use this to load our nescessary files or variables.
2. `love.update()`   
    We will use this function to check keyboard input, but the actual use of the function will be covered in the next section.

##Primitive drawing functions
- Point `love.graphics.point(x,y)`  
    This function will draw a single point or pixel on screen
- Line `love.graphics.line(x1,y1,x2,y2,...)`  
    This function will draw a line with two or more point as
parameter(s).
- Rectangle `love.graphics.rectangle(mode,x,y,width,height)`  
    This function will draw a solid or an outline rectangle.
- Circle `love.graphics.circle(mode,x,y,radius,segments)`  
    This function will draw a polygon with the number of segments
specified. 100 will create a circle, but 5 will create a pentagram.
- Polygon `love.graphics.polygon(mode,vertices)`  
    This function will draw a closed polygion with the vertices in the
parameter. We can use the fill mode if the polygon are right.

##Declaring variables
- In lua, we don't need to specify a type when declaring a variable.
    `x=50` or `star = {}`

##Other Functions

###Checking input
- To check input we can use  `love.keyboard.isdown(key)`

###Quiting the game
- To guit the game we can use `love.event.quit()`

