--
-- created with TexturePacker (http://www.texturepacker.com)
--
-- $TexturePacker:SmartUpdate:2b46669ea643a6777d07a65617e49835$
--
-- local sheetInfo = require("myExportedImageSheet") -- lua file that Texture packer published
--
-- local myImageSheet = graphics.newImageSheet( "ImageSheet.png", sheetInfo:getSheet() ) -- ImageSheet.png is the image Texture packer published
--
-- local myImage1 = display.newImage( myImageSheet , sheetInfo:getFrameIndex("image_name1"))
-- local myImage2 = display.newImage( myImageSheet , sheetInfo:getFrameIndex("image_name2"))
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- asteroid_1
            x=2,
            y=62,
            width=80,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 80,
            sourceHeight = 80
        },
        {
            -- asteroid_2
            x=172,
            y=60,
            width=80,
            height=80,

        },
        {
            -- asteroid_3
            x=82,
            y=178,
            width=74,
            height=74,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 80,
            sourceHeight = 80
        },
        {
            -- crater_1
            x=22,
            y=218,
            width=16,
            height=16,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 80,
            sourceHeight = 80
        },
        {
            -- crater_2
            x=22,
            y=200,
            width=18,
            height=16,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 80,
            sourceHeight = 80
        },
        {
            -- crater_3
            x=2,
            y=240,
            width=16,
            height=14,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 80,
            sourceHeight = 80
        },
        {
            -- crater_4
            x=2,
            y=200,
            width=18,
            height=20,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 80,
            sourceHeight = 80
        },
        {
            -- crater_5
            x=2,
            y=222,
            width=18,
            height=16,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 80,
            sourceHeight = 80
        },
        {
            -- enemy1
            x=88,
            y=60,
            width=82,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 85,
            sourceHeight = 60
        },
        {
            -- enemy2
            x=2,
            y=2,
            width=84,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 85,
            sourceHeight = 60
        },
        {
            -- enemy3
            x=172,
            y=2,
            width=82,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 85,
            sourceHeight = 60
        },
        {
            -- player
            x=88,
            y=2,
            width=82,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 85,
            sourceHeight = 60
        },
        {
            -- player_l
            x=2,
            y=140,
            width=78,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 85,
            sourceHeight = 60
        },
        {
            -- player_r
            x=84,
            y=118,
            width=78,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 85,
            sourceHeight = 60
        },
    },
    
    sheetContentWidth = 256,
    sheetContentHeight = 256
}

SheetInfo.frameIndex =
{

    ["asteroid_1"] = 1,
    ["asteroid_2"] = 2,
    ["asteroid_3"] = 3,
    ["crater_1"] = 4,
    ["crater_2"] = 5,
    ["crater_3"] = 6,
    ["crater_4"] = 7,
    ["crater_5"] = 8,
    ["enemy1"] = 9,
    ["enemy2"] = 10,
    ["enemy3"] = 11,
    ["player"] = 12,
    ["player_l"] = 13,
    ["player_r"] = 14,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
