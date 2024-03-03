
-- Configuration settings for NEAT implementation in Super Mario (Fitness Changes Only)

local ConfigSettings = {}

-- Paths
ConfigSettings.BizhawkDir = "X:/B2_BizHawkLab/BizHawk-2.2.2/"  -- Path to BizHawk directory
ConfigSettings.StateDir = ConfigSettings.BizhawkDir .. "Lua/SNES/neat-mario/state/"
ConfigSettings.PoolDir = ConfigSettings.BizhawkDir .. "Lua/SNES/neat-mario/pool/"

-- Savestate configurations
ConfigSettings.State = {
    "DP1.state",  -- Donut Plains 1
    "YI1.state",  -- Yoshi's Island 1
    "YI2.state",  -- Yoshi's Island 2
    -- Additional states...
}

-- Game start settings
ConfigSettings.StartPowerup = 0  -- Start game with specific powerup (0 = No powerup, 1 = Mushroom, 2 = Feather, 3 = Flower)

-- NEAT algorithm configurations
ConfigSettings.NeatConfig = {
    Filename = ConfigSettings.PoolDir .. ConfigSettings.State[1],
    Population = 300,
    DeltaDisjoint = 2.0,
    DeltaWeights = 0.4,
    DeltaThreshold = 1.0,
    StaleSpecies = 15,
    MutateConnectionsChance = 0.25,
    PerturbChance = 0.90,
    CrossoverChance = 0.75,
    LinkMutationChance = 2.0,
    NodeMutationChance = 0.5,
    -- Additional NEAT settings...
}

return ConfigSettings
