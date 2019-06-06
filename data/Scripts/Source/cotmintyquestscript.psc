Scriptname COTMintyQuestScript extends Quest  
{Add more weather types from the COT weather mod, to the list of bad weathers within Minty Lightning Mod}

FormList Property COTBadWeathers Auto 

Event OnInit()
	AddBadWeathers() 
EndEvent

Function AddBadWeathers()
	FormList MintyBadWeathers = Game.GetFormFromFile(0x0101D776, "MintyLightningMod.esp") As FormList
	if (MintyBadWeathers)
		int index = COTBadWeathers.GetSize() 
		While(index > 0)
			index -= 1
			Weather COTWeather = COTBadWeathers.GetAt(index) as Weather
			MintyBadWeathers.AddForm(COTWeather)
		EndWhile
	endif
EndFunction
