require("L5")

function setup()
  size(650, 400)
  rectMode(CENTER)

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
  --moon
  if mouseY < 200 then
  fill(255,0,0)
else
  fill(193,189,114)
end
  ellipse(width/2,height/1,700)
  --building1
  fill(64,4,78)
  strokeWeight(3)
  rect(width/12.75,height/1.1255,width/6.5,height/2.5)
  rect(width/2.358,height*0.75,width/3.25,height/1)
  rect(width/4,height/1.2414,width/5.2,height/2)
  rect(width/1.677,height/1.3,width/5.2,height/1.5)
  rect(width/1.1,height*0.875,width/3.75,height/1)
  rect(width/1.3,height*0.8125,width/6.5,height/2)

  --follow thingy
beginShape();
fill(255,216,0)
translate(mouseX,mouseY)
rect(0,0,100,50)
fill(0,0,0)
ellipse(35,25,35,35)
ellipse(-35,25,35,35)
fill(228,205,158)
rect(0,-20,100,5)
fill(255,255,255)
ellipse(50,0,15,15)
endShape();

end