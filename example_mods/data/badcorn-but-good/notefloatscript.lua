function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
	noteTweenY(defaultPlayerStrumX3, 4, defaultPlayerStrumY3 - 1000*math.sin((currentBeat+2*6)*math.pi), 15)
	noteTweenY(defaultPlayerStrumX1, 5, defaultPlayerStrumY1 - 1000*math.sin((currentBeat+6*2)*math.pi), 15)
	noteTweenY(defaultPlayerStrumX0, 6, defaultPlayerStrumY0 - 1000*math.sin((currentBeat+2*6)*math.pi), 15)
	noteTweenY(defaultPlayerStrumX2, 7, defaultPlayerStrumY2 - 1000*math.sin((currentBeat+6*2)*math.pi), 15)

	noteTweenY(defaultOpponentStrumX3, 0, defaultOpponentStrumY3 - 1000*math.sin((currentBeat+2*6)*math.pi), 15)
	noteTweenY(defaultOpponentStrumX1, 2, defaultOpponentStrumY1 - 1000*math.sin((currentBeat+6*2)*math.pi), 15)
	noteTweenY(defaultOpponentStrumX0, 3, defaultOpponentStrumY0 - 1000*math.sin((currentBeat+2*6)*math.pi), 15)
	noteTweenY(defaultOpponentStrumX2, 1, defaultOpponentStrumY2 - 1000*math.sin((currentBeat+6*2)*math.pi), 15)
end

function opponentNoteHit()
	health = getProperty('health')
	if health > 0.5 then
		setProperty('health', health - 0.01);	
	end
end