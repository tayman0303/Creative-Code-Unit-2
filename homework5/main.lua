require("L5")

function setup()
  size(800, 600)

  -- Set the program title
  windowTitle("Cityscape Nighttime")
end

function draw()
  -- Fills the background with the color yellow
  background(33, 1, 36)
  --grid
  --left to right
  strokeWeight(0)
  line(0,50,800,50)
  line(0,100,800,100)
  line(0,150,800,150)
  line(0,200,800,200)
  line(0,250,800,250)
  line(0,300,800,300)
  line(0,350,800,350)
  --up and down
  line(50,0,50,400)
  line(100,0,100,400)
  line(150,0,150,400)
  line(200,0,200,400)
  line(250,0,250,400)
  line(300,0,300,400)
  line(350,0,350,400)
  line(400,0,400,400)
  line(450,0,450,400)
  line(500,0,500,400)
  line(550,0,550,400)
  line(600,0,600,400)
  line(650,0,650,400)
  line(700,0,700,400)
  line(750,0,750,400)
  --building1
  strokeWeight(3)
  rect(0,275,100,175)
  rect(175,125,200,300)
  rect(100,225,150,175)
end