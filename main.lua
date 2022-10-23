local mapW = 8
local mapH = 8
local tileW = 84
local tileH = 84
local map = {}

for x = 1, mapW do
    map[x] = {}
    for y = 1, mapH do
        map[x][y] = tostring((x + y) % 4 + 1) .. ".png"
    end
end
for x = 1, mapW do
    for y = 1, mapH do
        local tile = display.newImage(
            map[x][y],
            1080 / 2 - mapW / 2 * tileW + (x - 0.5) * tileW,
            1920 / 2 - mapH / 2 * tileH + (y - 0.5) * tileH)
    end
end
