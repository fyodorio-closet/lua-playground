-- Dice game

local ch = 640
local cw = 480

local dave = {}
dave.colors = { 220/255, 220/255, 220/255 }

local hal = {}
hal.colors = { 52/255, 52/255, 133/255 }

-- Sound Effect from Pixabay
local tumble = love.audio.newSource('snd/dice.ogg', 'stream')
tumble:setLooping(false)

function love.load()
  love.window.setTitle('FeDice')
  love.window.setMode(cw, ch, { resizable=false, vsync=false })
  love.graphics.setBackgroundColor(25/255, 125/255, 75/255)
  
  dave.img = love.graphics.newImage('img/Die1.png')
  
  math.randomseed(os.time())
end

function love.draw()
  love.graphics.draw(dave.img, cw/2, ch/2, 0, 0.04, 0.04, 0, 0)
end

function love.mousereleased() 
  dave.dice = math.random(1, 6)
  dave.img = love.graphics.newImage(
    'img/Die'..dave.dice..'.png' -- or with %d
    -- string.format('img/Die%d.png', dave.dice)
  )
  love.audio.play(tumble)
end

-- to distribute - zip the folder content and change extension to .love