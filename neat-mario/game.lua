
-- Game interaction module for Super Mario in Bizhawk 2.2.2

local memory = require "memory"  -- Assuming memory module is available
local config = require "config"
local spritelist = require "spritelist"

local Game = {}

-- Get Mario's position
function Game.getPositions()
    local marioX = memory.read_s16_le(0x94)
    local marioY = memory.read_s16_le(0x96)
    
    local layer1x = memory.read_s16_le(0x1A)
    local layer1y = memory.read_s16_le(0x1C)
    
    Game.screenX = marioX - layer1x
    Game.screenY = marioY - layer1y
end

-- Get number of coins collected
function Game.getCoins()
    return memory.readbyte(0x0DBF)
end

-- Get current score
function Game.getScore()
    local scoreLeft = memory.read_s16_le(0x0F34)
    local scoreRight = memory.read_s16_le(0x0F36)
    return (scoreLeft * 10) + scoreRight
end

-- Get remaining lives
function Game.getLives()
    return memory.readbyte(0x0DBE) + 1
end

-- Set lives
function Game.writeLives(lives)
    if lives < 1 then
        error("Lives cannot be less than 1")
    end
    memory.writebyte(0x0DBE, lives - 1)
end

-- Get current powerup status
function Game.getPowerup()
    return memory.readbyte(0x0019)
end

-- Set powerup status
function Game.writePowerup(powerup)
    memory.writebyte(0x0019, powerup)
end

return Game
