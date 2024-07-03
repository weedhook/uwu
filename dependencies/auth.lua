local Auth = "https://permit-dn3p.onrender.com"

local function parseJson(response)
    local success, result = pcall(function()
        return game:GetService("HttpService"):JSONDecode(response)
    end)
    if success then
        return result
    else
        return { error = "Executor doesn't support parsing." }
    end
end

local function authenticateKey(key)
    local url = Auth .. "/api/authenticate?hash=" .. key
    local response = game:HttpGet(url)
    local result = parseJson(response)
    if result and result.token ~= nil then
        print("Authentication successful. Token:", result.token)
        -- Proceed with further actions if needed
    else
        game.Players.LocalPlayer:Kick("discord.gg/grimcc")
    end
end

-- Main execution starts here
local key = ...

-- Authenticate with the provided key
authenticateKey(key)
