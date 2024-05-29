local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, 1, -5, 1)
textBox.Position = UDim2.new(0, 0, 0, 0)
textBox.BackgroundColor3 = Color3.new(0, 0, 0)
textBox.BorderSizePixel = 0
textBox.BackgroundTransparency = 0
textBox.FontSize = Enum.FontSize.Size14
textBox.Parent = screenGui

local timer = 5
local timerActive = true

local function startTimer()
    timerActive = true
    textBox.Text = ""
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
