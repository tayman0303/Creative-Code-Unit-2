--carpetBgColor
risoPinkR = 255
risoPinkG = 72
risoPinkB = 176

--cool color
risoYellowR = 255
risoYellowG = 232
risoYellowB = 0

--alphaz
patternAlpha1 = 60
patternAlpha2 = 120
patternAlpha3 = 180
patternAlpha4 = 240

coolAlpha = {patternAlpha3,patternAlpha4}
boringAlpha = {patternAlpha2,patternAlpha4}

--shapez
coolShapes = {"circle","square","diamond"}
boringShapes = {"dot","line"}

--colorz
coolColors = {"yellow","paper"}
boringColors = {"pink","yellow"}

--sizes
sizeOptions = {0.15,0.2,0.25,0.3,0.35}


require("L5")

function setup()
  size(600, 600)
  angleMode(DEGREES)
  rectMode(CENTER)
  noStroke()
  windowTitle("Carpet Shopping - Print")

  describe('A carpet you as the user picked with RISO colors!')

  printStep = 0
  gridSize = 50

  newCarpet()
end

function draw()
end

function mousePressed()
  newCarpet()
end

function newCarpet()
  printStep = printStep + 1
  background(255)

  -- carpet base
  fill(risoPinkR,risoPinkG,risoPinkB,patternAlpha3)
  rect(300,300,400,500)

  -- carpet fringe 
  for i = 1, 40, 1 do
    fringeX = 105 + (i - 1) * 10
    -- top fringe
    rect(fringeX, 45, 6, 10)
    -- bottom fringe
    rect(fringeX, 555, 6, 10)
  end

  gridGen()
end

-- gives a shape its color
function setFill(colorName, a)
  if colorName == "pink" then
    fill(risoPinkR,risoPinkG,risoPinkB,a)
  elseif colorName == "yellow" then
    fill(risoYellowR,risoYellowG,risoYellowB,a)
  else
    fill(255)
  end
end

--makes the grid pattern
function gridGen()
  x = 125
  y = 75
  row = 0
  col = 0

  for i = 1, 80, 1 do
    if (row + col) % 2 == 0 then
      graphicShape = random(coolShapes)
      graphicColor = random(coolColors)
      graphicAlpha = random(coolAlpha)
    else
      graphicShape = random(boringShapes)
      graphicColor = random(boringColors)
      graphicAlpha = random(boringAlpha)
    end

    graphicSize = random(sizeOptions)
    setFill(graphicColor, graphicAlpha)
    drawShape(graphicShape, x, y, graphicSize)

    y = y + gridSize
    row = row + 1
    if row >= 10 then
      row = 0
      y = 75
      x = x + gridSize
      col = col + 1
    end
  end
end

function drawShape(shapeName, x, y, s)
  if shapeName == "circle" then
    shapeCircle(x,y,s)
  elseif shapeName == "square" then
    shapeSquare(x,y,s)
  elseif shapeName == "diamond" then
    shapeDiamond(x,y,s)
  elseif shapeName == "dot" then
    shapeDot(x,y,s)
  elseif shapeName == "line" then
    shapeLine(x,y,s)
  else
  end
end

function shapeCircle(x,y,s)
  push()
  translate(x,y)
  scale(s)
  ellipse(0,0,100,100)
  pop()
end

function shapeSquare(x,y,s)
  push()
  translate(x,y)
  scale(s)
  rect(0,0,100,100)
  pop()
end

function shapeDiamond(x,y,s)
  push()
  translate(x,y)
  rotate(45)
  scale(s)
  rect(0,0,100,100)
  pop()
end

function shapeDot(x,y,s)
  push()
  translate(x,y)
  scale(s / 3)
  ellipse(0,0,100,100)
  pop()
end

function shapeLine(x,y,s)
  push()
  translate(x,y)
  scale(s)
  rect(0,0,100,12)
  pop()
end

function keyPressed()
  if key == 's' then
    save('carpet_shopping.png')
  end
end

--hi