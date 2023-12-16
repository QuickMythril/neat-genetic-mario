
-- Sprite list and categorization for Super Mario in Bizhawk 2.2.2

local SpriteList = {}

-- List of sprites
SpriteList.Sprites = {}

-- Neutral sprites (sorted for easier maintenance)
SpriteList.NeutralSprites = {
    0x0E,  -- Keyhole
    0x2C,  -- Yoshi egg Red/Blue/Yellow/Blue (X&3)
    0x2D,  -- Baby green Yoshi
    0x2F,  -- Portable spring board
    0x35,  -- Green Yoshi
    0x3E,  -- POW, blue/silver (X&1)
    0x41,  -- Dolphin, horizontal
    0x42,  -- Dolphin2, horizontal
    0x43,  -- Dolphin, vertical
    0x49,  -- Growing/shrinking pipe end
    0x4A,  -- Goal Point Question Sphere
    0x52,  -- Moving ledge hole in ghost house
    0x53,  -- ???
    0x54,  -- Climbing net door, use with object 0x4A-E
    0x55,  -- Checkerboard platform, horizontal
    0x56,  -- Flying rock platform, horizontal
    0x57,  -- Checkerboard platform, vertical
    -- Additional sprite data...
}

-- Additional sprite categorizations and functions can be added here

return SpriteList
