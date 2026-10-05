require("L5")

function setup()
  size(600, 600)
  rectMode(CENTER)

  -- Set the program title
  windowTitle("Happy Frowny")
end

function draw()
  if mouseX < 300 then
  background(0,255,0)
  else
  background(255,0,0)
  end
  fill(255,255,0)
ellipse(300,300,400,400)
fill(0,0,0)
ellipse(200,250,100,100)
ellipse(400,250,100,100)
 
end