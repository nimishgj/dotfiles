local freezeCanvas = nil
local blockInputTap = nil

-- Freeze screen and block input
hs.hotkey.bind({"ctrl", "cmd"}, "U", function()
    if freezeCanvas then return end

    local screen = hs.screen.mainScreen()
    local frame = screen:fullFrame()

    -- Create canvas overlay
    freezeCanvas = hs.canvas.new(frame):appendElements(
        {
            type = "rectangle",
            action = "fill",
            fillColor = { red = 0, green = 0, blue = 0, alpha = 0.9 }
        },
        {
            type = "text",
            text = "🔒 Screen is Frozen",
            textSize = 30,
            textColor = { white = 1 },
            frame = { x = "20%", y = "35%", w = "60%", h = "30%" },
            textAlignment = "center"
        }
    )

    freezeCanvas:level(hs.canvas.windowLevels.overlay)
    freezeCanvas:behavior(hs.canvas.windowBehaviors.canJoinAllSpaces)
    freezeCanvas:show()

    -- Block keyboard input
    blockInputTap = hs.eventtap.new({ hs.eventtap.event.types.keyDown, hs.eventtap.event.types.keyUp }, function(event)
        local flags = event:getFlags()
        local keyCode = event:getKeyCode()

        -- Allow only ⌃ + ⌘ + ⇧ + U to unfreeze
        if flags.ctrl and flags.cmd and flags.shift and keyCode == hs.keycodes.map["u"] then
            return false  -- allow this combo through
        end

        return true -- block all other keys
    end)

    blockInputTap:start()
end)

-- Unfreeze screen and allow input
hs.hotkey.bind({"ctrl", "cmd", "shift"}, "U", function()
    if freezeCanvas then
        freezeCanvas:delete()
        freezeCanvas = nil
    end

    if blockInputTap then
        blockInputTap:stop()
        blockInputTap = nil
    end
end)

-- ~/.hammerspoon/init.lua

-- Generic function to toggle any application
function toggleApp(appName)
    return function()
        local app = hs.application.find(appName)
        
        if app then
            if app:isFrontmost() then
                app:hide()
            else
                app:activate()
            end
        else
            hs.application.launchOrFocus(appName)
        end
    end
end

-- Bind Cmd+Ctrl+G to open Ghostty
hs.hotkey.bind({"cmd"}, "g", toggleApp("Ghostty"))
hs.hotkey.bind({"cmd", "shift"}, "b", toggleApp("qutebrowser"))
hs.hotkey.bind({"cmd"}, "m", toggleApp("Spotify"))

-- Optional: Show a notification when Hammerspoon config is loaded
hs.notify.new({title="Hammerspoon", informativeText="Config loaded! Cmd+Ctrl+G opens Ghostty"}):send()
