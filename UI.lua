UI = {}

function UI:new(font, mines_x, mines_y, time_x, time_y)
    local obj = {
        font = font,
        mines_x = mines_x,
        mines_y = mines_y,
        time_x = time_x,
        time_y = time_y
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function UI:draw(mines, score)
    love.graphics.setColor(0,0,0)
    love.graphics.setFont(self.font)

    love.graphics.print("Mines remaining: " .. mines,
                         self.mines_x, self.mines_y)

    love.graphics.print("Time: " .. score,
                        self.time_x, self.time_y)
end

return UI
