--riso pink
risoPinkR = 255
risoPinkG = 72
risoPinkB = 176

--riso yellow
risoYellowR = 255
risoYellowG = 232
risoYellowB = 0

--riso blue (extra color for the screen version)
risoBlueR = 0
risoBlueG = 120
risoBlueB = 191

--alpha values
patternAlpha1 = 60
patternAlpha2 = 120
patternAlpha3 = 180
patternAlpha4 = 240

--color options
colorChoice = {"pink", "yellow", "blue"}

--alpha option arrays
baseAlpha = {patternAlpha2,patternAlpha3,patternAlpha4}
topAlpha = {patternAlpha1,patternAlpha2}

--shape options
bottomShape = {"blank","diamond","x","circle","diamond","x","circle"}
topShape = {"blank","diamond","x","circle","diamond","x","circle"}

--background (floor) options
backgroundShape = {"horizontal", "vertical", "circles", "squares"}

require("L5")

function setup()
  size(400, 600)
  angleMode(DEGREES)
  rectMode(CENTER)
  noStroke()
  windowTitle("Virtual Carpet")

  describe('A carpet of overlapping shapes on a patterned floor that makes a new design every two seconds')

  frameRate(60)

  printStep = 0
  gridSize = 50

  newCarpet()
end

function draw()
  -- make a new carpet every 120 frames (2 seconds)
  if frameCount%120 == 0 then
    newCarpet()
  end
end

function mousePressed()
  newCarpet()
end

function newCarpet()
  printStep = printStep + 1
  x = 75
  y = 75
  background(255)
  bgGen()

  -- carpet base
  fill(255)
  rect(200,300,300,500)

  gridGen()
end

function bgGen()
  bgShape = random(backgroundShape)
  if bgShape == "horizontal" then
    bgHorz()
  elseif bgShape == "vertical" then
    bgVert()
  elseif bgShape == "circles" then
    bgCircles()
  elseif bgShape == "squares" then
    bgSquares()
  else
  end
end

function gridGen()
  for i = 1, 60, 1 do
    -- base color
    graphicColor1 = random(colorChoice)
    graphicColor2 = random(baseAlpha)
    if graphicColor1 == "pink" then
      fill(risoPinkR,risoPinkG,risoPinkB,graphicColor2)
    elseif graphicColor1 == "yellow" then
      fill(risoYellowR,risoYellowG,risoYellowB,graphicColor2)
    else
      fill(risoBlueR,risoBlueG,risoBlueB,graphicColor2)
    end

    --base shape
    graphicBase = random(bottomShape)
    if graphicBase == "diamond" then
      baseDiamond(x,y)
    elseif graphicBase == "x" then
      baseCross(x,y)
    elseif graphicBase == "circle" then
      baseCircle(x,y)
    else
    end

    --top color
    graphicColor3 = random(colorChoice)
    graphicColor4 = random(topAlpha)
    if graphicColor3 == "pink" then
      fill(risoPinkR,risoPinkG,risoPinkB,graphicColor4)
    elseif graphicColor3 == "yellow" then
      fill(risoYellowR,risoYellowG,risoYellowB,graphicColor4)
    else
      fill(risoBlueR,risoBlueG,risoBlueB,graphicColor4)
    end

    --top shape
    graphicTop = random(topShape)
    if graphicTop == "diamond" then
      topDiamond(x,y)
    elseif graphicTop == "x" then
      topCross(x,y)
    elseif graphicTop == "circle" then
      topCircle(x,y)
    else
    end

    -- move down the column, then over to the next column
    y = y + gridSize;
    if y >= 575 then
      y = 75;
      x = x + gridSize;
    end
  end
end

function baseDiamond(x,y)
  push()
  translate(x,y)
  rotate(45)
  scale(0.5)
  rect(0,0,100,100)
  pop()
end

function baseCross(x,y)
  push()
  translate(x,y)
  rotate(45)
  scale(0.5)
  rect(0,0,30,100)
  rect(-33,0,35,30)
  rect(33,0,35,30)
  pop()
end

function baseCircle(x,y)
  push()
  translate(x,y)
  scale(0.5)
  ellipse(0,0,100,100)
  pop()
end

function topDiamond(x,y)
  push()
  translate(x,y)
  rotate(45)
  scale(0.25)
  rect(0,0,100,100)
  pop()
end

function topCross(x,y)
  push()
  translate(x,y)
  rotate(45)
  scale(0.25)
  rect(0,0,30,100)
  rect(-33,0,35,30)
  rect(33,0,35,30)
  pop()
end

function topCircle(x,y)
  push()
  translate(x,y)
  rotate(45)
  scale(0.25)
  ellipse(0,0,100,100)
  pop()
end

function bgHorz()
  background(255)

  for i = 1, 60, 1 do
    stroke(0,i*4)
    line(0,i*10,width,i*10)
  end
  noStroke()
end

function bgVert()
  background(255)

  for i = 1, 60, 1 do
    stroke(0,i*4)
    line(i*10,0,i*10,height)
  end
  noStroke()
end

function bgCircles()
  for i = 1, 100, 1 do
    stroke(0,i*2.5)
    noFill()
    ellipse(width/2,height/2,10+i*10,10+i*10)
  end
  noStroke()
end

function bgSquares()
  for i = 1, 100, 1 do
    stroke(0,i*2.5)
    noFill()
    push()
    translate(width/2,height/2)
    rotate(45)
    rect(0,0,10+i*10,10+i*10)
    pop()
  end
  noStroke()
end