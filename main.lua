
display.setDefault( "background", 20, 30, 0 )


local myText = display.newText( "Calculator", 160, -10, native.systemFont, 50 )
myText:setFillColor(80, 40, 0 )

local myText = display.newText( "Input number:", 122, 285, native.systemFont, 32 )
myText:setFillColor( 40, 50, 0 )

local myText = display.newText( "Pi =...", 145, 410, native.systemFont, 30 )
myText:setFillColor( 30, 20, 0 )

local calculate = display.newImageRect( "calculatebutton.png", 250, 75 )
calculate.x = 145
calculate.y = 90

local resulttext = display.newText( "result", 160, 470, native.systemFont, 37 )
resulttext:setFillColor( 60, 200, 0)

local imputTextfield = native.newTextField( display.contentCenterX, 325, 270, 40 )
inputTextfield.id = "iteration input"



local function calculateTouch ( event )

	local result

	local input

	local sign

	input = inputTextfield.text

	result = 0

	sign = -1

	for loop = 1, input, 1 do

		sign=sign*-1

		result = result+4/(loop*2-1)*sign

		resulttext.text = (result)
	end
end

calculate:addEventListener( "touch", calculateTouch )
