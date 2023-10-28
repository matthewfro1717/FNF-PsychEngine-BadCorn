function onCreate()
	makeLuaSprite('swag', 'swag', 160, -100);
	setLuaSpriteScrollFactor('swag', 1, 1);
	scaleObject('swag', 6.5, 6.5);

	addLuaSprite('swag', false);
	addLuaSprite('swag', false);
	
	close(true);
end