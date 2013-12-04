Spaceship = Class(GameSprite)

function Spaceship:new( group )
	-- Initialize the Spaceship sprite
    self:initialize( spriteAnims.spaceshipSequence, group )
    
    -- Set the start coordinates and rotation
    local rot = math.pi * ( -0.4 + math.random( 8 ) / 10 )
    local dx = SHIP_DIST * math.sin( rot )
    local dy = - SHIP_DIST * math.cos( rot )
    local x = PLANET_X + dx
    local y = PLANET_Y + dy
    local rot = 90 + math.atan2( dy, dx ) * 180 / math.pi
    self.spriteInstance.rotation = rot
    self:moveTo( x, y )
    
    -- Set the speed
    self.speed = 1 + math.random(3)
end

function update( )
	-- Ship movement goes here
    -- END:updateFunc
    -- START:updatePos
    -- Calculate the distance to the planet
    local dx = PLANET_X - self.spriteInstance.x
    local dy = PLANET_Y - self.spriteInstance.y
    local hyp = dx * dx + dy * dy

    -- END:updatePos
    -- START:checkPositiveHypotenuse
    -- Move the sprite only if the ship is not on the planet
    if hyp > 2500 then
        -- START:updatePos
        -- Move the sprite
        hyp = math.sqrt( hyp )
        self:move( self.speed * dx / hyp, self.speed * dy / hyp )
        -- END:updatePos
    end
    -- END:checkPositiveHypotenuse
    -- START:updateFunc
end