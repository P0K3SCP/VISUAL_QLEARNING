Environment = class()

function Environment:init(width, height)
    self.width = width
    self.height = height
    self.cellWidth = WIDTH/self.width
    self.cellHeight = HEIGHT/self.height
    self.cells = {}
    
    -- Setup the grid, made of singular cells
    for h = 0, self.height do
        for w = 0, self.width do
            cell = Cell(self.cellWidth * w, self.cellHeight * h, self.cellWidth, self.cellHeight, shading)
            
            if math.random(0, 30) == 13 then
                cell.isBlocking = true
                cell.shading = color(255, 0, 0, 255)
                
            elseif math.random(0, 100) == 13 then
                cell.isGoal = true
                cell.shading = color(0, 255, 0, 255)
                
            elseif math.random(0, 250) == 13 then
                cell.isGoal = true
                cell.shading = color(255, 255, 0, 255)
            end
            
            table.insert(self.cells, cell)
        end
    end
end

function Environment:draw()
    for i, cell in pairs(self.cells) do
        cell:draw()
    end
end

function Environment:getFreePosition()
    for i, cell in pairs(self.cells) do
        if (not (cell.isBlocking)) and (not (cell.isGoal)) then
            return vec2(cell.x, cell.y)
        end
    end
end

function Environment:getValidActions(currentState)
    validActions = {}
    
    
end

function Environment:touched(touch)
    -- Codea does not automatically call this method
end
