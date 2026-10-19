require("L5")

function setup()
  size(640, 480)
img1 = loadImage('assets/landscapeimage.jpeg')
  -- Set the program title
  windowTitle("Homework 9 Landscape")
end

function draw()
  background(img1)
  fill(119, 129, 240, 50)
  stroke(0,0,0,0)
  strokeWeight(0)
  triangle(0,0,0,125,200,0)
  fill(55,222,80,100)
  triangle(400,185,330,150,320,205)
  fill(20,180,40,100)
  triangle(320,205,330,150,275,130)
  fill(5,100,20,100)
  triangle(320,205,275,130,280,220)
  fill(255,255,255,0)
  stroke(0,0,0)
  strokeWeight(10)
  ellipse(50,420,350)
end