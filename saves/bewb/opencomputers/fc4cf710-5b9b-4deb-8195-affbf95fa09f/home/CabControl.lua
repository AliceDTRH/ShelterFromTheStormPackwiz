colors = require('colors')
sides = require('sides')

local event = require('event')
local redstone = require('component').redstone

-- redstone_changed(address: string, side: number, oldValue: number, newValue: number[, color: number])


function handleButtonInput(old, new, color)
    print("Color: "..colors[color].." old: "..old.." new: "..new)
    if(old < 255 and new > 0) then
        sendToFloor(color)
    end
end

function handleElevatorArrive(old, new, color)
    print("Color: "..colors[color].." old: "..old.." new: "..new)
    if(old < 255 and new > 0) then
        print(color.." has arrived")
    end
end

function sendToFloor(flcolor)
    print("Sending to floor" .. colors[flcolor])
    
    redstone.setBundledOutput(sides.back, flcolor, 255)

    os.sleep(3)
    redstone.setBundledOutput(sides.back, flcolor, 0)
end
x = 0
while (true)
do
    x = x + 1
    if(x > 4) then
        x = 0
    end
    sendToFloor(x)
    local _, addr, side, old, new, color = event.pull('redstone_changed')
    print(side.." "..old.." "..new.." "..color.." "..colors[color])

    if(side == sides.left) then
        handleButtonInput(old, new, color)
    elseif(side == sides.back) then
        handleElevatorArrive(old, new, color)
    else
        print(side.." not recognized")
    end

    
end