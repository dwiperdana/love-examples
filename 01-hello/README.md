#01-hello

    function love.draw()
	    love.graphics.print("Hello world!", 300,400)
    end

The `love.draw()` function will be called many times per second to render stuff to the screen. This is the function that we will use to display interesting things in our games.