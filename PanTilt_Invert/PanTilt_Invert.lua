--[[
PanTilt_Inverter V1.0 created by Felix Scheib "DarfSchader"

Read README.md for more information and an explaination how to use the plugin
Read LICENSE for license Information of the whole grandMA3_Snippets project

For more information about the grandMA3_Snippets project take a look at the README of the grandMA3_Snippets project

Happy Lighting
]]

DMXInvert = {}

DMXInvert.PAN = "pandmxinvert"
DMXInvert.TILT = "tiltdmxinvert"

DMXInvert.invert = function (attribute, enabled)
    local subfixtureIndex = SelectionFirst();

    while subfixtureIndex do
        local subFixture = GetSubfixture(subfixtureIndex)

        subFixture[attribute] = tostring(enabled)

        subfixtureIndex = SelectionNext(subfixtureIndex)
    end
end

DMXInvert.panEnabled = function ()
    DMXInvert.invert(DMXInvert.PAN, true)
end

DMXInvert.panDisabled = function ()
    DMXInvert.invert(DMXInvert.PAN, false)
end

DMXInvert.tiltEnabled = function ()
    DMXInvert.invert(DMXInvert.TILT, true)
end

DMXInvert.tiltDisabled = function ()
    DMXInvert.invert(DMXInvert.TILT, false)
end