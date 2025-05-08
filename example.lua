-- EXTRA INFO: You can modify this library its open source. The code is horrendous but have fun.
-- In order to make configs of your own make the inactivity text your own text you want
-- I may implement theming etc in the future if i come back to this. 
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Reload-astro/gamesense-menu-lib/refs/heads/main/source.lua"))()

local window = library:CreateWindow({})

local rage = window:CreatePage({Icon = "rbxassetid://8547236654"})
local antiaim = window:CreatePage({Icon = "rbxassetid://8547310764"})
local aimbot = window:CreatePage({Icon = "rbxassetid://8547249956"})
local visuals = window:CreatePage({Icon = "rbxassetid://8547254518"})
local setting = window:CreatePage({Icon = "rbxassetid://8547256547"})
local skins = window:CreatePage({Icon = "rbxassetid://8547258459"})
local config = window:CreatePage({Icon = "rbxassetid://8547269749"})

local section = rage:CreateSection({Name = "Section", Size = 330, Side = "Left"})

section:CreateToggle({Name = "Example Toggle", State = false})

section:CreateDropdown({
    Name = "Example Dropdown",
    Options = {"One", "Two", "Three"},
    State = 1
})

section:CreateMultibox({
    Name = "Example Multi Dropdown",
    State = {1, 3, 4},
    Options = {"One", "Two", "Three"}
})

section:CreateSlider({
    Name = "Example Slider",
    State = 90,
    Max = 100,
    Min = 0,
    Decimals = 0.5,
    Suffix = "%"
})

section:CreateColorpicker({
    Name = "Example Colorpicker",
    State = Color3.fromRGB(255, 255, 255)
})

-- to get the active state of the keybind from flags use ".active".
-- section:keybind({
--     text = "Example Keybind",
--     flags = "example_keybind",
--     mode = 'toggle',
--     bind = 'Q',
--     callback = function(bool) print(bool) end
-- })

--library:CreateConfigTab(window)