if not isfolder('Spectral/Assets/Images') then
    makefolder('Spectral/Assets/Images')
end
if not isfolder('Spectral/Assets/Fonts') then
    makefolder('Spectral/Assets/Fonts')
end

local Material = {
    ['BaseParts'] = {
        Plastic = Enum.Material.Plastic,
        SmoothPlastic = Enum.Material.SmoothPlastic,
        Neon = Enum.Material.Neon,
        Wood = Enum.Material.Wood,
        WoodPlanks = Enum.Material.WoodPlanks,
        Marble = Enum.Material.Marble,
        Basalt = Enum.Material.Basalt,
        Slate = Enum.Material.Slate,
        CrackedLava = Enum.Material.CrackedLava,
        Concrete = Enum.Material.Concrete,
        Limestone = Enum.Material.Limestone,
        Granite = Enum.Material.Granite,
        Pavement = Enum.Material.Pavement,
        Brick = Enum.Material.Brick,
        Pebble = Enum.Material.Pebble,
        Cobblestone = Enum.Material.Cobblestone,
        Rock = Enum.Material.Rock,
        Sandstone = Enum.Material.Sandstone,
        CorrodedMetal = Enum.Material.CorrodedMetal,
        DiamondPlate = Enum.Material.DiamondPlate,
        Foil = Enum.Material.Foil,
        Metal = Enum.Material.Metal,
        Fabric = Enum.Material.Fabric,
        Glass = Enum.Material.Glass,
        Cardboard = Enum.Material.Cardboard,
        Carpet = Enum.Material.Carpet,
        ForceField = Enum.Material.ForceField,
        CeramicTiles = Enum.Material.CeramicTiles,
        ClayRoofTiles = Enum.Material.ClayRoofTiles,
        RoofShingles = Enum.Material.RoofShingles,
        Leather = Enum.Material.Leather,
        Plaster = Enum.Material.Plaster,
        Rubber = Enum.Material.Rubber,
    },
    ['Terrain'] = {
        Air = Enum.Material.Air,
        Water = Enum.Material.Water,
        Grass = Enum.Material.Grass,
        LeafyGrass = Enum.Material.LeafyGrass,
        Sand = Enum.Material.Sand,
        Snow = Enum.Material.Snow,
        Mud = Enum.Material.Mud,
        Ground = Enum.Material.Ground,
        Asphalt = Enum.Material.Asphalt,
        Salt = Enum.Material.Salt,
        Ice = Enum.Material.Ice,
        Glacier = Enum.Material.Glacier,
        Basalt = Enum.Material.Basalt,
        Slate = Enum.Material.Slate,
        Cobblestone = Enum.Material.Cobblestone,
        Rock = Enum.Material.Rock,
        Sandstone = Enum.Material.Sandstone,
    },
}

local fonts = {
    { ttf = "Proggy.ttf", json = "Proggy.json", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/dependencies/assets/fonts/Proggy.txt", name = "Proggy" },
    { ttf = "Minecraftia.ttf", json = "Minecraftia.json", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/dependencies/assets/fonts//Minecraftia.txt", name = "Minecraftia" },
    { ttf = "SmallestPixel7.ttf", json = "SmallestPixel7.json", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/dependencies/assets/fonts/SmallestPixel7.txt", name = "SmallestPixel7" },
    { ttf = "Verdana.ttf", json = "Verdana.json", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/dependencies/assets/fonts/Verdana.txt", name = "Verdana" },
    { ttf = "VerdanaBold.ttf", json = "VerdanaBold.json", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/dependencies/assets/fonts/VerdanaBold.txt", name = "VerdanaBold" },
    { ttf = "Tahoma.ttf", json = "Tahoma.json", url = "ttps://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/dependencies/assets/fonts/Tahoma.txt", name = "Tahoma" },
    { ttf = "TahomaBold.ttf", json = "TahomaBold.json", url = "ttps://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/dependencies/assets/fonts/TahomaBold.txt", name = "TahomaBold" }
}

for _, font in ipairs(fonts) do
    if not isfile(font.ttf) then
        writefile(font.ttf, base64_decode(game:HttpGet(font.url)))
    end

    if not isfile('Spectral/Assets/Fonts/'..font.json) then
        local Config = {name = font.name, faces = {{name = "Regular", weight = 200, style = "normal", assetId = getcustomasset(font.ttf)}}}
        writefile(font.json, game:GetService('HttpService'):JSONEncode(Config))
    end
end

local DrawingFontsEnum = {
    [0] = Font.new(getcustomasset("Spectral/Assets/Fonts/Verdana.json"), Enum.FontWeight.Regular),
    [1] = Font.new(getcustomasset("Spectral/Assets/Fonts/SmallestPixel7.json"), Enum.FontWeight.Regular),
    [2] = Font.new(getcustomasset("Spectral/Assets/Fonts/Proggy.json"), Enum.FontWeight.Regular),
    [3] = Font.new(getcustomasset("Spectral/Assets/Fonts/Minecraftia.json"), Enum.FontWeight.Regular),
    [4] = Font.new(getcustomasset("Spectral/Assets/Fonts/VerdanaBold.json"), Enum.FontWeight.Regular),
    [5] = Font.new(getcustomasset("Spectral/Assets/Fonts/Tahoma.json"), Enum.FontWeight.Regular),
    [6] = Font.new(getcustomasset("Spectral/Assets/Fonts/TahomaBold.json"), Enum.FontWeight.Regular),
}

function GetFontFromIndex(fontIndex)
    return DrawingFontsEnum[fontIndex]
end

local images = {
    { image = "ak47.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/ak47.png", name = "AK47" },
    { image = "ar.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/ar.png", name = "Assault Rifle" },
    { image = "aug.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/aug.png", name = "AUG" },
    { image = "db.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/db.png", name = "DB" },
    { image = "flame.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/flame.png", name = "Flame" },
    { image = "glock.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/glock.png", name = "Glock" },
    { image = "knife.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/knife.png", name = "Knife" },
    { image = "lmg.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/lmg.png", name = "LMG" },
    { image = "p90.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/p90.png", name = "P90" },
    { image = "rev.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/rev.png", name = "Revolver" },
    { image = "rifle.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/rifle.png", name = "Rifle" },
    { image = "shotgun.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/shotgun.png", name = "Shotgun" },
    { image = "smg.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/smg.png", name = "SMG" },
    { image = "tac.png", url = "https://raw.githubusercontent.com/firm0001/uwu/refs/heads/main/tac.png", name = "Tactical" }
}

for _, img in pairs(images) do
    if not isfile('Spectral/Assets/Images/'..img.image) then
        writefile('Spectral/Assets/Images/'..img.image, game:HttpGet(img.url))
    end
end

local DrawingImagesEnum = {
    [0] = getcustomasset("Spectral/Assets/Images/ak47.png"),
    [1] = getcustomasset("Spectral/Assets/Images/ar.png"),
    [2] = getcustomasset("Spectral/Assets/Images/aug.png"),
    [3] = getcustomasset("Spectral/Assets/Images/db.png"),
    [4] = getcustomasset("Spectral/Assets/Images/flame.png"),
    [5] = getcustomasset("Spectral/Assets/Images/glock.png"),
    [6] = getcustomasset("Spectral/Assets/Images/knife.png"),
    [7] = getcustomasset("Spectral/Assets/Images/lmg.png"),
    [8] = getcustomasset("Spectral/Assets/Images/p90.png"),
    [9] = getcustomasset("Spectral/Assets/Images/rev.png"),
    [10] = getcustomasset("Spectral/Assets/Images/rifle.png"),
    [11] = getcustomasset("Spectral/Assets/Images/shotgun.png"),
    [12] = getcustomasset("Spectral/Assets/Images/smg.png"),
    [13] = getcustomasset("Spectral/Assets/Images/tac.png"),
}

local Textures = {
    ['Normal'] = 'rbxassetid://7151778302',
    ['Fog'] = 'rbxassetid://9150635648',
    ["Default"] = "rbxassetid://446111271",
    ["Beam"] = "rbxassetid://7151777149",
    ["Ion Beam"] = "rbxassetid://2950987173",
    ["Lightning"] = "rbxassetid://7151778302",
    ["Pulsing"] = "rbxassetid://11226108137",
    ["DNA"] = "rbxassetid://6511613786",
}

local Sounds = {
    ["Bubble"] = "rbxassetid://6534947588",
    ["Lazer"] = "rbxassetid://130791043",
    ["Pick"] = "rbxassetid://1347140027",
    ["Pop"] = "rbxassetid://198598793",
    ["Rust"] = "rbxassetid://1255040462",
    ["Sans"] = "rbxassetid://3188795283",
    ["Fart"] = "rbxassetid://130833677",
    ["Big"] = "rbxassetid://5332005053",
    ["Vine"] = "rbxassetid://5332680810",
    ["UwU"] = "rbxassetid://8679659744",
    ["Bruh"] = "rbxassetid://4578740568",
    ["Skeet"] = "rbxassetid://5633695679",
    ["Neverlose"] = "rbxassetid://6534948092",
    ["Fatality"] = "rbxassetid://6534947869",
    ["Bonk"] = "rbxassetid://5766898159",
    ["Minecraft"] = "rbxassetid://5869422451",
    ["Gamesense"] = "rbxassetid://4817809188",
    ["RIFK7"] = "rbxassetid://9102080552",
    ['Bruh'] = "rbxassetid://4275842574",
    ['Bamboo'] = "rbxassetid://3769434519",
    ['Crowbar'] = "rbxassetid://546410481",
    ['Weeb'] = "rbxassetid://6442965016",
    ['Beep'] = "rbxassetid://8177256015",
    ['Bambi'] = "rbxassetid://8437203821",
    ['Stone'] = "rbxassetid://3581383408",
    ["Old Fatality"] = "rbxassetid://6607142036",
    ['Click'] = "rbxassetid://8053704437",
    ['Ding'] = "rbxassetid://7149516994",
    ['Snow'] = "rbxassetid://6455527632",
    ['Laser'] = "rbxassetid://7837461331",
    ['Mario'] = "rbxassetid://2815207981",
    ['Steve'] = "rbxassetid://4965083997",
    ["Call of Duty"] = "rbxassetid://5952120301",
    ["Bat"] = "rbxassetid://3333907347",
    ["TF2 Critical"] = "rbxassetid://296102734",
    ["Saber"] = "rbxassetid://8415678813",
    ["Baimware"] = "rbxassetid://3124331820",
    ["Osu"] = "rbxassetid://7149255551",
    ["TF2"] = "rbxassetid://2868331684",
    ["Slime"] = "rbxassetid://6916371803",
    ["Among Us"] = "rbxassetid://5700183626",
    ["One"] = "rbxassetid://7380502345"
}

return {
    Material = Material,
    DrawingFontsEnum = DrawingFontsEnum,
    DrawingImagesEnum = DrawingImagesEnum,
    Textures = Textures,
    Sounds = Sounds,
}
