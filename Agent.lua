Agent = class()

function Agent:init(x, y, r)
    self.x = x
    self.y = y
    self.radius = r
    self.step = nil
    
    self.QT = {}
    self.alpha = 0.2
    self.gama = 0.9
    
    self.currentEnvironment = nil
end

function Agent:draw()
    fill(0, 0, 255, 255)
    stroke(0)
    strokeWidth(1)
    ellipse(self.x, self.y, self.radius * 2)
end

function Agent:selectActionToLearn(currentState, actionList)
    
end

function Agent:selectActionToExecute(currentState, actionList)
    
end

function Agent:learn(originalState, nextState, takenAction, reward)
    self.QT[originalState][takenAction] = self.QT[originalState][takenAction] + self.alpha * (0)
end

function Agent:resetQT(numStates, numActions)
    self.QT = {}
    
    for i = 1, numStates do
        self.QT[i] = {}
        
        for j = 1, numActions do
            self.QT[i][j] = 0
        end
    end
end

function Agent:moveToPosition(x, y)
    self.x = x
    self.y = y
end

function Agent:touched(touch)
    
end
