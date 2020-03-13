Cell = class()

function Cell:init(x, y, w, h, s)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
    
    self.shading = color(120, 120, 120, 255)
    
    self.isBlocking = false
    self.isGoal = false
end

function Cell:draw()
    fill(self.shading)
    stroke(255)
    strokeWidth(1)
    rect(self.x, self.y, self.w, self.h)
end

function Cell:touched(touch)
    -- Codea does not automatically call this method
end
