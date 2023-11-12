--made by paperface


function onCreate()




	makeLuaSprite('BoxTag', '', 0, 300)
	makeGraphic('BoxTag', 1280, 280, '000000')
	setObjectCamera('BoxTag', 'camHUD')
	addLuaSprite('BoxTag', true)
	setTextFont('BoxTag', fontMusicBar)
	setProperty('BoxTag.alpha', 0.0)


	makeLuaText('daVerNGS', string.upper(songName), 1300, 0, 250);
	setTextAlignment('daVerNGS', 'center')
	setTextSize('daVerNGS', 120);
	setObjectCamera('daVerNGS', 'camHUD');
	setTextColor('daVerNGS', '0xFFFFFF');
	setProperty('daVerNGS.alpha', 0)
	addLuaText('daVerNGS', true);
	setTextBorder('daVerNGS', 1, 000000)

	makeLuaText('daVerNGSn', string.upper(dadName), 1300, 0, 400);
	setTextAlignment('daVerNGSn', 'center')
	setTextSize('daVerNGSn', 80);
	setObjectCamera('daVerNGSn', 'camHUD');
	setTextColor('daVerNGSn', '0xFFFFFF');
	setProperty('daVerNGSn.alpha', 0)
	addLuaText('daVerNGSn', true);
	setTextBorder('daVerNGSn', 1, 000000)

----------------------------------------------------------

	screenCenter('daVerNGS', 'x')
	screenCenter('daVerNGSn', 'x')

	screenCenter('BoxTag', 'x')
	screenCenter('BoxTag', 'y')

end


function onUpdate()
end

function onSongStart()
	doTweenAlpha('ohHolyShit', 'daVerNGS', 1, .8, 'quintOut')
	doTweenAlpha('ohHolyShitn', 'daVerNGSn', 1, .8, 'quintOut')
	doTweenAlpha('ohHolyShit!', 'BoxTag', 0.6, .8, 'quintOut')

	runTimer('dh', 5)
end



function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'dh' then
		doTweenAlpha('ohHolyShit2', 'daVerNGS', 0, 1, 'quintOut')
		doTweenAlpha('ohHolyShitn2', 'daVerNGSn', 0, 1, 'quintOut')
		doTweenAlpha('ohHolyShit!2', 'BoxTag', 0, 1, 'quintOut')

		doTweenY('ohHolyShit22', 'daVerNGS', getProperty('daVerNGS.y') + 80, 2, 'quintOut')
		doTweenY('ohHolyShitn22', 'daVerNGSn', getProperty('daVerNGSn.y') + 80, 2, 'quintOut')
		doTweenY('ohHolyShit!22', 'BoxTag', getProperty('BoxTag.y') + 80, 2, 'quintOut')
	end
end










