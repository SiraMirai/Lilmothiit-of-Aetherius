Scriptname LOL_LilmothiitTeammateCount_Script extends ActiveMagicEffect

Spell Property LOL_LilmothiitNiche Auto

GlobalVariable Property PlayerAnimalCount Auto
GlobalVariable Property LilmothiitTeammateCount Auto
Faction Property CurrentFollowerFaction Auto


Event OnEffectStart(Actor akCaster, Actor akTarget)
	
	int teammateCount = 0
	
	if(PlayerAnimalCount.GetValueInt() == 1)
		teammateCount+=1
	endif
	
	Actor GladysCorgi = Game.GetFormFromFile(0x0004C752, "Gladys.esp") As Actor
	
	
	if(GladysCorgi)
		if(GladysCorgi.IsInFaction(CurrentFollowerFaction))
			teammateCount+=1
		endif
	endif
	
	Actor MerlinCorgi = Game.GetFormFromFile(0x0000286A, "Merlin.esp") As Actor
	
	
	if(MerlinCorgi)
		if(MerlinCorgi.IsInFaction(CurrentFollowerFaction))
			teammateCount+=1
		endif
	endif
	
	
	LilmothiitTeammateCount.SetValueInt(teammateCount)
	
EndEvent