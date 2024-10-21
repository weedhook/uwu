-- fonts.lua
local HttpService = game:GetService("HttpService")
local fonts = {
    { ttf = "Proggy.ttf", json = "Proggy.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Proggy.txt", name = "Proggy" },
    { ttf = "Minecraftia.ttf", json = "Minecraftia.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Minecraftia.txt", name = "Minecraftia" },
    { ttf = "SmallestPixel7.ttf", json = "SmallestPixel7.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Smallest%20Pixel.txt", name = "SmallestPixel7" },
    { ttf = "Verdana.ttf", json = "Verdana.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Verdana.txt", name = "Verdana" },
    { ttf = "VerdanaBold.ttf", json = "VerdanaBold.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Verdana%20Bold.txt", name = "VerdanaBold" },
    { ttf = "Tahoma.ttf", json = "Tahoma.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Tahoma.txt", name = "Tahoma" },
    { ttf = "TahomaBold.ttf", json = "TahomaBold.json", url = "https://raw.githubusercontent.com/OxygenClub/Random-LUAS/main/Tahoma%20Bold.txt", name = "TahomaBold" }
}

for _, font in ipairs(fonts) do
    if not isfile(font.ttf) then
        writefile(font.ttf, base64_decode(game:HttpGet(font.url)))
    end

    if not isfile(font.json) then
    
        local fontConfig = {
            name = font.name,
            faces = {
                { name = "Regular", weight = 200, style = "normal", assetId = getcustomasset(font.ttf) }
            }
        }
        writefile(font.json, HttpService:JSONEncode(fontConfig))
    end
end
local DrawingFontsEnum = {
    [0] = Font.new(getcustomasset("Verdana.json"), Enum.FontWeight.Regular),
    [1] = Font.new(getcustomasset("SmallestPixel7.json"), Enum.FontWeight.Regular),
    [2] = Font.new(getcustomasset("Proggy.json"), Enum.FontWeight.Regular),
    [3] = Font.new(getcustomasset("Minecraftia.json"), Enum.FontWeight.Regular),
    [4] = Font.new(getcustomasset("VerdanaBold.json"), Enum.FontWeight.Regular),
    [5] = Font.new(getcustomasset("Tahoma.json"), Enum.FontWeight.Regular),
    [6] = Font.new(getcustomasset("TahomaBold.json"), Enum.FontWeight.Regular),
}
function getfontfromint(index)
    return DrawingFontsEnum[index]
end

return {
    getfontfromint = getfontfromint
}
