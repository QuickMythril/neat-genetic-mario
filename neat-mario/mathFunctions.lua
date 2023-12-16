
-- Math utility functions for NEAT implementation in Super Mario

local MathFunctions = {}

-- Sigmoid function
function MathFunctions.sigmoid(x)
    return 2 / (1 + math.exp(-4.9 * x)) - 1
end

-- Function to squash distances
function MathFunctions.squashDistance(x)
    local window = 0.20
    local delta = 0.25
    
    local dist = (x - 8)
    local newDist = 1
    
    while dist > 0 do
        newDist = newDist - (window * delta)
        dist = dist - 1
    end
    
    newDist = math.max(newDist, 0.80)  -- Ensure newDist doesn't fall below 0.80
    
    return newDist
end

return MathFunctions
