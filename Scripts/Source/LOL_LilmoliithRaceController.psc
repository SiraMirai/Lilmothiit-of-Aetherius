Scriptname LOL_LilmoliithRaceController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property HeadPartsLilmoliith Auto
Formlist Property HeadPartsLilmoliithandVampire Auto
Race Property LilmothiitRace Auto
Race Property LilmothiitRaceVampire Auto

Event OnInit () 

	raceController.  NewArgonian = none 
	raceController.  NewArgonianVampire = none 

	raceController.  NewBreton = none 
	raceController.  NewBretonVampire = none 

	raceController.  NewDarkElf =  none
	raceController.  NewDarkElfVampire = none

	raceController.  NewHighElf = none
	raceController.  NewHighElfVampire = none

	raceController.  NewImperial = none
	raceController.  NewImperialVampire = none 

	raceController.  NewKhajiit = HeadPartsLilmoliith	
	raceController.  NewKhajiitVampire = HeadPartsLilmoliithandVampire

	raceController.  NewNord = none 
	raceController.  NewNordVampire = none 

	raceController.  NewOrc = none
	raceController.  NewOrcVampire = none

	raceController.  NewRedguard = none 
	raceController.  NewRedguardVampire = none 

	raceController.  NewWoodElf = none
	raceController.  NewWoodElfVampire =  none

	raceController.  proxyRaces () 
	
	FormList FoodPoisoningImmuneRaces = Game.GetFormFromFile(0x000009AA, "ccQDRSSE001-SurvivalMode.esl") As FormList
	
	if( FoodPoisoningImmuneRaces )
		FoodPoisoningImmuneRaces.AddForm(LilmothiitRace)
		FoodPoisoningImmuneRaces.AddForm(LilmothiitRaceVampire)
	endif

EndEvent

FormList Property HeadPartsKhajiit  Auto  

FormList Property HeadPartsKhajiitandVampire  Auto  
