local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, 1, 1, 1) -- Set the size to fill the entire screen
textBox.Position = UDim2.new(0, 0, 0, 0) -- Set the position to the top-left corner
textBox.BackgroundColor3 = Color3.new(1, 1, 1) -- Set the background color to white
textBox.BorderSizePixel = 0
textBox.BackgroundTransparency = 0.7
textBox.FontSize = Enum.FontSize.Size14 -- Set the font size to 14
textBox.Parent = screenGui
textBox.Size = UDim2.new(1, 1, -5, 1) -- Set the size to fill the entire screen
textBox.Position = UDim2.new(0, 0, 0, 0) -- Set the position to the top-left corner
textBox.BackgroundColor3 = Color3.new(1, 1, 1) -- Set the background color to white
textBox.BorderSizePixel = 0
textBox.BackgroundTransparency = 0.7
textBox.FontSize = Enum.FontSize.Size14 -- Set the font size to 14
textBox.Parent = screenGui

local timer = 5
local timerActive = true

local function startTimer()
    timerActive = true
    textBox.Text = "〰 Script Executed 〰"
    wait(timer)
    timerActive = false
    textBox.Text = ""
    textBox:Destroy()
end

startTimer()

local function onFocusLost(enterPressed, inputObject)
    if enterPressed and timerActive then
        print(textBox.Text)
        startTimer()
    end
end
textBox.FocusLost:Connect(onFocusLost)
