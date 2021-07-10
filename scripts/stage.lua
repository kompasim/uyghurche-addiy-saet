--[[

    stage script file

-- api: stage is a SDL2 implementation for lua, u can use these apis below to draw something on the stage ...

-- stage
    -- getVersion
    -- doExit
    -- doDelay
    -- getTick
    -- setClipboard
    -- getClipboard
    -- saveScreenshot
    -- setTimer
    -- cancelTimer

--  window
    -- show
    -- hide
    -- maximaze
    -- minimaze
    -- setTitle
    -- getTitle
    -- setPosition
    -- getPosition
    -- setSize
    -- getSize
    -- setFullscreen
    -- showCursor
    -- setCursor
    -- setIcon
    -- setOpacity

-- audio
    -- initAudio
    -- playMusic
    -- stopMusic
    -- pauseMusic
    -- resumeMusic
    -- pausedMusic
    -- playingMusic
    -- volumeMusic
    -- playSound
    -- destroyAudio

-- render
    -- setBlend : 0 no blending, 1 alpha blending, 2 additive blending, 4 color modulate, 8 color multiply
    -- doRender : render manually after set auto false
    -- doClear : clear stage with current color
    -- setColor
    -- getColor
    -- setScale
    -- getScale
    -- setPort
    -- getPort
    -- setClip
    -- getClip
    -- drawPoint
    -- drawLine
    -- drawRect
    -- fillRect
    -- drawImage
    -- drawText

]]

function render.fillCircle(centerX, centerY, radius)
    for x=1,radius do
        local y = math.sqrt(math.pow(radius, 2) - math.pow(x, 2))
        render.drawLine(centerX + x, centerY + y, centerX + x, centerY - y)
        render.drawLine(centerX - x, centerY + y, centerX - x, centerY - y)
    end
    render.drawLine(centerX, centerY + radius, centerX, centerY - radius)
    render.doRender()
end

-- uyghur script
local uyghur = require("./scripts/uyghur")
-- 
uyghur.import("hazirqiWaqit", "os.time")
uyghur.import("chislaHisablash", "os.date")
uyghur.import("matimatikaRadian", "math.rad")
uyghur.import("matimatikaSinos", "math.sin")
uyghur.import("matimatikaKosinos", "math.cos")
-- 
uyghur.import("sexnidinChikinish", "stage.doExit")
uyghur.import("temaBikitish", "window.setTitle")
uyghur.import("iconBikitish", "window.setIcon")
uyghur.import("rengBikitish", "render.setColor")
uyghur.import("sexniniSizish", "render.doRender")
uyghur.import("nuqtaSizish", "render.drawPoint")
uyghur.import("siziqSizish", "render.drawLine")
uyghur.import("rayunSizish", "render.fillRect")
uyghur.import("chemberSizish", "render.fillCircle")
uyghur.import("xetSizish", "render.drawText")
-- 
uyghur.export("sexneBashlash", "stageStart")
uyghur.export("sexneMeshghulat", "stageHandle")
uyghur.export("sexneYingilash", "stageRender")
-- 
uyghur.execute("./scripts/saet.ug")

-- stage
function Stage_start()
    stageStart()
end

function Stage_stop() end

function Stage_before() end

function Stage_handle(name, value)
    stageHandle(name, value)
end

function Stage_update() end

function Stage_render()
    xpcall(function()
        stageRender()
    end, function(err)
        print(err)
    end)
end

function Stage_after() end
