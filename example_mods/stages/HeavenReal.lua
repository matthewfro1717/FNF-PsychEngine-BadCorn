function onCreate()
	makeLuaSprite('HeavenReal', 'HeavenReal', -1000, -600);
	setLuaSpriteScrollFactor('HeavenReal', 0.5, 0.5);
	scaleObject('HeavenReal', 2, 2);

addLuaSprite('HeavenReal', false);
	addLuaSprite('HeavenReal', false);
end


local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('HeavenReal', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('HeavenReal', 'uWaveAmplitude', 0.1)
	setShaderFloat('HeavenReal', 'uFrequency', 5)
	setShaderFloat('HeavenReal', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('HeavenReal', 'uTime', os.clock())
	end