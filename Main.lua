-- Q-Learning

displayMode(FULLSCREEN)

STATES = vec2(10, 10)
ACTIONS = 4

function setup()
    env = Environment(STATES.x, STATES.y)
    
    freePos = env:getFreePosition()
    smartAgent = Agent(freePos.x + env.cellWidth/2, freePos.y + env.cellHeight/2, 35)
    smartAgent.currentEnvironment = env
    smartAgent:resetQT(STATES.x * STATES.y, ACTIONS)
    smartAgent.step = vec2(env.cellWidth/2, env.cellHeight/2)
end

function draw()
    env:draw()
    smartAgent:draw()
end

