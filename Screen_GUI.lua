local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, 1, 1, 1)
textBox.Position = UDim2.new(0, 0, 0, 0)
textBox.BackgroundColor3 = Color3.new(1, 1, 1)
textBox.BorderSizePixel = 0
textBox.BackgroundTransparency = 0.8
textBox.FontSize = Enum.FontSize.Size14
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.TextStrokeTransparency = 0
textBox.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox.ClearTextOnFocus = false
textBox.TextEditable = false
textBox.Text = "〰 Script Executed 〰"
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
