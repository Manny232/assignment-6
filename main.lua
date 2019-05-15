display.setDefault( "background", 20, 30, 0 )


local displayText = display.newText( " Pi Calculator", 160, -10, native.systemFont, 40 )
displayText:setFillColor(0, 40, 50 )

local displayText = display.newText( "Pi =", 145, 180, native.systemFont, 30 )
displayText:setFillColor( 0, 40, 50 )

local displayText = display.newText( "Input number:", 122, 285, native.systemFont, 30 )
displayText:setFillColor( 0, 50, 40 )

local displayText = display.newText( "Created by Emanuel", 145, 410, native.systemFont, 20 )
displayText:setFillColor( 0, 40, 50 )

local calculatebutton = display.newImageRect( "calculatebutton.png", 250, 75 )
calculatebutton.x = 145
calculatebutton.y = 90

local inputTextfield = native.newTextField( display.contentCenterX, 325, 270, 40 )
inputTextfield.id = "input a number"

local resulttext = display.newText( "Result", 160, 220, native.systemFont, 37 )
resulttext:setFillColor( 0, 0, 0)


local function calculatebuttonTouch ( event )

	local input
	local sign
    local result

	sign = -1
	result = 0
	input = inputTextfield.text
	

	for loop = 1, input, 1 do
		sign=sign*-1
		result = result+4/(loop*2-1)*sign
		resulttext.text = (result)
	end
    end

calculatebutton:addEventListener( "touch", calculatebuttonTouch )
