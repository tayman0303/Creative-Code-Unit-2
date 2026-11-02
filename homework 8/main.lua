require("L5")

function setup()
  size(650, 300)
    -- Set the program title
  windowTitle("Make A Hotdog")

  hotdogBuns = {"White","Potato","Brioche","Wheat","Sesame","Gluten-Free"}
  hotdogMeat = {"Beef","Pork","Chicken","Turkey","Polish","Bratwurst","Veggie"}
  hotdogToppings = {"Ketchup","Mustard","Relish","Onions","Sauerkraut","Cheese","Jalapenos"}

  textSize(25)
  textGenerator()
end

function draw()
end

function mousePressed()
  textGenerator()
end

function textGenerator()
  background(0)
  text("I want a hot dog with a " .. random(hotdogBuns) .. " bun,", 100, 100)
  text("a " .. random(hotdogMeat) .. " dog,", 100, 150)
  text("topped with " .. random(hotdogToppings) .. " and " .. random(hotdogToppings) .. ".", 100, 200)
end

