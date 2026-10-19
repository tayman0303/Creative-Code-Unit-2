require("L5")

function setup()
  size(640, 480)
img1 = loadImage('assets/landscapeimage.jpeg')
  -- Set the program title
  windowTitle("Homework 9")
end

function draw()
  background(img1)
  fill(119, 129, 240, 50)
  stroke(0,0,0,0)
  strokeWeight(0)
  triangle(0,0,0,125,200,0)
  fill(255,255,255,0)
  stroke(0,0,0)
  strokeWeight(10)
  ellipse(50,420,350)
  -- the code below adds the cursor position for bebugging
  fill(0)
  text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
end