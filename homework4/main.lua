require("L5")

function setup()
  size(400, 400)

  -- Set the program title
  windowTitle("Rudy Shapes")
end

function draw()
  --grid
  line(50,0,50,400)
  line(100,0,100,400)
  line(150,0,150,400)
  line(200,0,200,400)
  line(250,0,250,400)
  line(300,0,300,400)
  line(350,0,350,400)
  line(0,50,400,50)
  line(0,100,400,100)
  line(0,150,400,150)
  line(0,200,400,200)
  line(0,250,400,250)
  line(0,300,400,300)
  line(0,350,400,350)
  --main body
  fill(255, 255, 255)
  ellipse(200, 200, 250, 250)
  --eyes
  fill(153, 255, 51)
  triangle(125, 175, 150, 125, 175, 175)
  triangle(225, 175, 250, 125, 275, 175)
  --ears
  fill(255,255,255)
  triangle(90,140,60,60,140,90)
  triangle(310,140,340,60,260,90)
  fill(0,0,0)
  triangle(95,125,90,90,125,95)
  triangle(305,125,310,90,275,95)
  --nose
  fill(255,204,255)
  triangle(175,200,200,225,225,200)
  --whiskers
  --left side
  fill(0,0,0)
  line(150,200,125,190)
  line(150,212.5,125,212.5)
  line(150,225,125,235)
  --right side
  line(250,200,275,190)
  line(250,212.5,275,212.5)
  line(250,225,275,235)
  --mouth
  line(175,250,200,275)
  line(225,250,200,275)
end