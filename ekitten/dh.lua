local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local InviteLabel = Instance.new("TextLabel")
local DescriptionLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
Frame.Size = UDim2.new(0.4, 0, 0.4, 0)
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)

UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = Frame

InviteLabel.Parent = Frame
InviteLabel.Text = "Wait for Release, discord.gg/grimcc"
InviteLabel.Size = UDim2.new(1, -15, 0.3, -15)
InviteLabel.Position = UDim2.new(0, 10, 0, 10)
InviteLabel.TextColor3 = Color3.new(1, 1, 1)
InviteLabel.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
InviteLabel.Font = Enum.Font.SourceSansBold
InviteLabel.TextSize = 24
InviteLabel.TextScaled = true
InviteLabel.TextWrapped = true

local InviteLabelCorner = Instance.new("UICorner")
InviteLabelCorner.CornerRadius = UDim.new(0.1, 0)
InviteLabelCorner.Parent = InviteLabel

DescriptionLabel.Parent = Frame
DescriptionLabel.Text = "- Not Released Yet Wait!"
DescriptionLabel.Size = UDim2.new(1, -20, 0.5, -20)
DescriptionLabel.Position = UDim2.new(0, 10, 0.4, 10)
DescriptionLabel.TextColor3 = Color3.new(1, 1, 1)
DescriptionLabel.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
DescriptionLabel.Font = Enum.Font.SourceSans
DescriptionLabel.TextSize = 18
DescriptionLabel.TextWrapped = true

local DescriptionLabelCorner = Instance.new("UICorner")
DescriptionLabelCorner.CornerRadius = UDim.new(0.1, 0)
DescriptionLabelCorner.Parent = DescriptionLabel

local HttpService = game:GetService("HttpService")
local response = request({
    Url = 'http://127.0.0.1:6463/rpc?v=1',
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json',
        Origin = 'https://discord.com'
    },
    Body = HttpService:JSONEncode({
        cmd = 'INVITE_BROWSER',
        nonce = HttpService:GenerateGUID(false),
        args = { code = 'grimcc' }
    })
})
