local Auth             = "https://permit-dn3p.onrender.com"

local function parseJson(response)
    local success, result = pcall(function() return game:GetService("HttpService"):JSONDecode(response) end)
    if success then
        return result
    else
        return "Executor doesnt Support Parsing."
    end
end

local function authenticateKey(key)
    local url = Auth .. "/api/authenticate?hash=" .. key
    local response = game:HttpGet(url)
    return parseJson(response)
end

local key = nil

local result = authenticateKey(key)

if result and result['token'] ~= nil then
    print('success;)
else
    game.Players.LocalPlayer:Kick("discord.gg/grimcc")
end
