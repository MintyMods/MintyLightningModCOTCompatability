Scriptname COTMintyAliasScript extends ReferenceAlias  

COTMintyQuestScript Property COTMintyQuest Auto
 
Event OnPlayerLoadGame()
	COTMintyQuest.AddBadWeathers()
EndEvent
