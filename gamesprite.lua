GameSprite = Class( )

function GameSprite:new( )
end

function GameSprite:initSprite( sequence )
	self.spriteInstance = display.newSprite( imageSheet, sequence )
	self.spriteInstance.object = self;
end

function GameSprite:removeSprite( )
	self.spriteInstance:removeSelf( )
	self.spriteInstance = nil
end

function GameSprite:changeAnimation( animName )
    self.spriteInstance:setSequence( animName )
    self.spriteInstance:play( )
end

function GameSprite:moveTo( posX, posY )
	self.spriteInstance.x = posX;
	self.spriteInstance.y = posY;
end

function GameSprite:move( distanceX, distanceY )
	self.spriteInstance.x = self.spriteInstance.x + distanceX
	self.spriteInstance.y = self.spriteInstance.y + distanceY
end

function GameSprite:initialize( sequence, group )
	self:initSprite(sequence)
	if group ~= nil then
		group:insert( self.spriteInstance )
	end
end