BEGIN X3HZava 
BEGIN X3HZAG2

//Should fire if Zavatar is in this area at all.
CHAIN IF ~AreaCheck("AR0530")~ THEN X3HZava ZavatarAngry
@60
DO ~ActionOverride("X3HZag2",Enemy())Enemy()~
EXIT 

CHAIN IF ~GlobalTimerNotExpired("X3HZavatarQuestTimer","GLOBAL")Global("X3HZavatarDuel","GlOBAL",1)!IsValidForPartyDialogue("X3Hel")!Global("X3HZavatarWon","GLOBAL",1)~ THEN X3HZava InvalidHelga 
@59
EXIT 

CHAIN IF ~GlobalTimerNotExpired("X3HZavatarQuestTimer","GLOBAL")Global("X3HZavatarDuel","GlOBAL",2)!IsValidForPartyDialogue("X3Kal")!Global("X3HZavatarWon","GLOBAL",1)~ THEN X3HZava InvalidKale 
@58
EXIT 

//Below is set if Helga or Kale Died.
CHAIN IF ~Global("X3HZavatarWon","GLOBAL",1)~ THEN X3HZava Won
@55
DO ~ActionOverride("X3HZag1",EscapeArea())ActionOverride("X3HZag2",EscapeArea())EscapeArea()~ EXIT 


CHAIN IF ~Global("X3HZavatarQuest","GLOBAL",0)~ THEN X3HZava IntroCon 
@0 
DO ~SetGlobal("X3HZavatarQuest","GLOBAL",1)~
END 
++ @1 + IntroClassBelow 
++ @2 + IntroClassBelow 
++ @3 + IntroBow

CHAIN X3HZava IntroBow 
@4
END 
++ @6 + Zavatar
++ @7 + AboutJillian
++ @8 + HearZavatar

CHAIN X3HZava IntroClassBelow
@5
END 
++ @6 + Zavatar
++ @7 + AboutJillian
++ @8 + HearZavatar 

CHAIN X3HZava Zavatar 
@11 
EXTERN X3HZava AboutJillian



CHAIN X3HZava HearZavatar 
@9
EXTERN X3HZava AboutJillian

CHAIN X3HZava AboutJillian
@10 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @12
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @13
== X3HZava IF ~OR(2)IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Kal")~ @14
== X3HZava @15
= @16
END 
++ @17 + RansomCost
++ @18 + JustKill
++ @19 + NoDifference

CHAIN X3HZava RansomCost 
@20
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ OfferDuel
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3KalJ OfferDuel 
+~PartyGoldGT(4999)~+ @34 + GiveGold
++ @18 + JustKill
++ @35 + NoDifference
++ @36 + NoDifference

CHAIN X3HZava JustKill 
@21
= @22
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ OfferDuel
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3KalJ OfferDuel 
++ @61 DO ~SetGlobal("X3HZavatarDuel","GlOBAL",3)~ + NameThePlace
++ @62 + FightNow
++ @30 + RansomSecond

CHAIN X3HelJ OfferDuel 
@23
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @24
EXTERN X3HZava Challenge

CHAIN X3KalJ OfferDuel 
@25
EXTERN X3HZava Challenge

CHAIN X3HZava Challenge 
@22 
END 
+~InParty("X3Hel")~+ @26 DO ~SetGlobal("X3HZavatarDuel","GlOBAL",1)~ DO ~AddJournalEntry(@20036,QUEST)~ + NameThePlace
+~InParty("X3Kal")~+ @27 DO ~SetGlobal("X3HZavatarDuel","GlOBAL",2)~ DO ~AddJournalEntry(@20037,QUEST)~ + NameThePlace
++ @28 DO ~SetGlobal("X3HZavatarDuel","GlOBAL",3)~ DO ~AddJournalEntry(@20038,QUEST)~ + NameThePlace
++ @29 + FightNow
++ @30 + RansomSecond

CHAIN X3HZava NameThePlace
@31 
DO ~SetGlobalTimer("X3HZavatarQuestTimer","GLOBAL",ONE_DAY)SetGlobal("X3HZavatarQuest","GLOBAL",1)ActionOverride("X3HZag1",EscapeAreaMove("AR0406",1543,1817,SW))ActionOverride("X3HZag2",EscapeAreaMove("AR0406",1517,1802,SW))EscapeAreaMove("AR0406",1535,1854,SW)~
EXIT 

CHAIN X3HZava RansomSecond 
@32
END 
+~PartyGoldGT(4999)~+ @34 + GiveGold
++ @35 + NoDifference
++ @36 + NoDifference

CHAIN X3HZava NoDifference 
@37
DO ~AddJournalEntry(@20032,QUEST)SetGlobalTimer("X3HZavatarQuestTimer","GLOBAL",ONE_DAY)~
== X3HelJ IF ~IsValidForPartyDialogue("X3HelJ")~ THEN @52
DO ~SetGlobal("X3HelAppChange","GLOBAL",5)~
EXIT 

CHAIN X3HZava FightNow 
@33
DO ~AddJournalEntry(@20027,QUEST)ActionOverride("X3HZag1",Enemy())ActionOverride("X3HZag2",Enemy())Enemy()~
EXIT 

CHAIN X3HZava GiveGold 
@38
= @39
= @40
DO ~SetGlobal("X3HZavatarQuest","GLOBAL",2)ActionOverride("X3HZag1",EscapeArea())ActionOverride("X3HZag2",EscapeArea())EscapeArea()~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @53
DO ~SetGlobal("X3HelAppChange","GLOBAL",4)~
EXIT 

CHAIN IF ~GlobalTimerExpired("X3HZavatarQuestTimer","GLOBAL")Global("X3HZavatarQuest","GLOBAL",1)~ THEN X3HZava TimeExpired
@41
DO ~AddJournalEntry(@20035,QUEST_DONE)~
END 
IF ~!IsValidForPartyDialogue("X3Hel")~ DO ~SetGlobal("X3HQuestExpired","GLOBAL",1)ActionOverride("X3HZag1",EscapeArea())ActionOverride("X3HZag2",EscapeArea())EscapeArea()~ EXIT 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ Rage

CHAIN X3HelJ Rage
@42
DO ~ActionOverride("X3HZag1",Enemy())ActionOverride("X3HZag2",Enemy())ActionOverride("X3HZava",Enemy())~
EXIT 

CHAIN IF ~Global("X3HZavatarQuest","GLOBAL",3)~ THEN X3HZava StoleJillian 
@43
DO ~ActionOverride("X3HZag1",Enemy())ActionOverride("X3HZag2",Enemy())Enemy()~
EXIT 

CHAIN IF ~!GlobalTimerExpired("X3HZavatarQuestTimer","GLOBAL")Global("X3HZavatarQuest","GLOBAL",1)GlobalGT("X3HZavatarDuel","GlOBAL",0)~ THEN X3HZava DuelRoute
@44
END 
+~Global("X3HZavatarDuel","GlOBAL",1)~+ @45 EXTERN X3HelJ HelgaLine
+~Global("X3HZavatarDuel","GlOBAL",2)~+ @45 EXTERN X3KalJ KaleLine
+~Global("X3HZavatarDuel","GlOBAL",3)~+ @45 EXTERN X3HZava ZavatarPreBattleLine
+~PartyGoldGT(4999)~+ @46 EXTERN X3HZava GiveGold 
++ @47 EXIT 

CHAIN X3HelJ HelgaLine 
@49
EXTERN X3HZava ZavatarPreBattleLine 

CHAIN X3KalJ KaleLine 
@50 
EXTERN X3HZava ZavatarPreBattleLine 

CHAIN X3HZava ZavatarPreBattleLine 
@51
END 
IF ~Global("X3HZavatarDuel","GLOBAL",1)~ DO ~SetGlobal("X3HZavatarWon","GLOBAL",-1)FadeToColor([26.0],0)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		Wait(1)
		ActionOverride("X3Hel",JumpToPoint([769.1728]))
		JumpToPoint([462.1673])
		SmallWait(1)
		ActionOverride("X3Hel",FaceObject("X3HZava"))
		FaceObject("X3Hel")
		SmallWait(1)
		MoveViewPoint([608.1747],INSTANT)FadeFromColor([15.0],0)
		Wait(2)
		EndCutSceneMode()
		SetInterrupt(TRUE)
		DisplayStringHead("X3HZava",@55)
		Enemy()~ EXIT 
IF ~Global("X3HZavatarDuel","GLOBAL",2)~ DO ~SetGlobal("X3HZavatarWon","GLOBAL",-1)FadeToColor([26.0],0)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		Wait(1)
		ActionOverride("X3Kal",JumpToPoint([769.1728]))
		JumpToPoint([462.1673])
		SmallWait(1)
		ActionOverride("X3Kal",FaceObject("X3HZava"))
		FaceObject("X3Kal")
		SmallWait(1)
		MoveViewPoint([608.1747],INSTANT)FadeFromColor([15.0],0)
		Wait(2)
		EndCutSceneMode()
		SetInterrupt(TRUE)
		DisplayStringHead("X3HZava",@55)
		Enemy()~ EXIT 
IF ~Global("X3HZavatarDuel","GLOBAL",3)~ DO ~SetGlobal("X3HZavatarWon","GLOBAL",-1)FadeToColor([26.0],0)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		Wait(1)
		ActionOverride(Player1,JumpToPoint([769.1728]))
		JumpToPoint([462.1673])
		SmallWait(1)
		ActionOverride(Player1,FaceObject("X3HZava"))
		FaceObject(Player1)
		SmallWait(1)
		MoveViewPoint([608.1747],INSTANT)FadeFromColor([15.0],0)
		Wait(2)
		EndCutSceneMode()
		SetInterrupt(TRUE)
		DisplayStringHead("X3HZava",@55)
		Enemy()~ EXIT 	 	

CHAIN IF ~!GlobalTimerExpired("X3HZavatarQuestTimer","GLOBAL")Global("X3HZavatarQuest","GLOBAL",1)Global("X3HZavatarDuel","GlOBAL",0)~ THEN X3HZava RansomRoute
@57
END 
+~PartyGoldGT(4999)~+ @46 EXTERN X3HZava GiveGold 
++ @29 + FightNow
++ @47 EXIT 

CHAIN IF ~True()~ THEN X3HZAG2 OnlyLine
@56
EXIT 



