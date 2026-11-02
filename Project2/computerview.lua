--carpetBgColor
redR = 185
redG = 35
redB = 40

--cool color
goldR = 235
goldG = 190
goldB = 50

whiteR = 225
whiteG = 225
whiteB = 225

blueR = 50
blueG = 150
blueB = 200

--boring colorz
navyR = 35
navyG = 50
navyB = 160

greenR = 50
greenG = 140
greenB = 70

--alphaz
alphaOptions = {200,230,255}

--shapez
coolShapes = {"circle","square","diamond"}
boringShapes = {"dot","line"}

--colorz
coolColors = {"gold","white","blue"}
boringColors = {"navy","green"}

--sizes
sizeOptions = {0.15,0.2,0.25,0.3,0.35}


require("L5")

function setup()
  size(600, 600)
  angleMode(DEGREES)
  rectMode(CENTER)
  noStroke()
  windowTitle("Carpet Shopping - Computer Colors")

  describe('A carpet you as the user picked with new colors!')

  printStep = 0
  gridSize = 50

  newCarpet()
end

function draw()
  --this makes the carpet change every 2 seconds (the user can still click to change faster)
  if frameCount%120 == 0 then
    newCarpet()
  end
end

function mousePressed()
  newCarpet()
end

function newCarpet()
  printStep = printStep + 1
  background(255)

  -- carpet base
  fill(redR,redG,redB,255)
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
  if colorName == "gold" then
    fill(goldR,goldG,goldB,a)
  elseif colorName == "white" then
    fill(whiteR,whiteG,whiteB,a)
  elseif colorName == "blue" then
    fill(blueR,blueG,blueB,a)
  elseif colorName == "navy" then
    fill(navyR,navyG,navyB,a)
  elseif colorName == "green" then
    fill(greenR,greenG,greenB,a)
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
    else
      graphicShape = random(boringShapes)
      graphicColor = random(boringColors)
    end
    graphicAlpha = random(alphaOptions)

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

--extra shape crap here
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