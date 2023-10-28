function onUpdate(elapsed)
    songPos = getSongPosition()
    if curStep >= 0 then
        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/70)
        doTweenY('expungedFlyY3', 'dad', 50 + 100 * math.sin((currentBeat+0 *0.24) *math.pi), 0.0005, 'linear')
        doTweenX('expungedFlyX3', 'dad', 1200 + 100 * math.sin((currentBeat+3 *0.24) *math.pi), 0.0005, 'linear')
    end
end