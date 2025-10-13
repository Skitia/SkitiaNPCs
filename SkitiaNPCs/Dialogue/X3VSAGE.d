//There are 4 rewards. Gold, the Tome, the exile lifted ending, and +1 reputation if you give the sage the tome first.
//
//If you use the tome instead, destroyself on Galadin and Sules'terim.
//If you give Galadin the tome, you can get nothing, both tomes, -1 reputation, and Vienxay's exile lifted ending.
//You can also use the tome, making both of them angry and ending the quest.


BEGIN X3VSAGE 

BEGIN X3VGAL 

//
CHAIN IF ~Global("X3VieQuest","GLOBAL",3)AreaCheck("AR1100")~ THEN X3VSAGE FirstConversation
@0
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ EngageConversation
IF ~!IsValidForPartyDialogue("X3Vie")~ EXIT 

CHAIN X3VieJ EngageConversation 
@1
== X3VSAGE @2
== X3VieJ @3
== X3VSAGE @4
== X3VieJ @5
END 
++ @11 EXTERN X3VSAGE Misunderstand
++ @12 EXTERN X3VSAGE Misunderstand
++ @13 EXTERN X3VSAGE Burden

CHAIN X3VSAGE Burden
@14
= @15
EXTERN X3VieJ Setup

CHAIN X3VSAGE Misunderstand
@6
EXTERN X3VieJ Setup

CHAIN X3VieJ Setup 
@7
== X3VSage @8
== X3VieJ @9
== X3VSage @10
DO ~SetGlobal("X3VGalConTrigger","GLOBAL",1)EscapeAreaMove("AR1105",761,441,SE)~
EXIT 

CHAIN IF ~Global("X3VGalConTrigger","GLOBAL",0)~ THEN X3VGal MasterThere
@17
EXTERN X3VSAGE FirstConversation

CHAIN IF ~Global("X3VieQuest","GLOBAL",8)~ THEN X3VSage CutsceneInterrupt 
@42 
DO ~SetGlobal("X3VieQuest","GLOBAL",9)~
== X3VGal @43
== X3VSage @44
== X3VGal @45
= @46
== X3VieJ @47
== X3VGal @48
END 
++ @49 EXTERN X3VGal Madness
++ @50 EXTERN X3VSage AskMaster 
++ @51 EXTERN X3VieJ MagicLossWarning

CHAIN X3VSage AskMaster
@52
== X3VGal @53
EXTERN X3VGal OnlyHope 

CHAIN X3VGal OnlyHope
@54
== X3VieJ @55
== X3VGal @56
END 
++ @58 EXTERN X3VieJ ToLive
++ @59 + ToDie

CHAIN X3VieJ MagicLossWarning 
@57
EXTERN X3VGal OnlyHope

CHAIN X3VGal Madness 
@82
EXTERN X3VSage AskMaster

CHAIN X3VGal ToDie 
@63
== X3VSage @64
== X3VGal @65
DO ~StartCutSceneMode()StartCutScene("X3VCut04")~ //Cutscene, the Sage will die as Galadin does not try to stop and he begins to resist.
EXIT 

CHAIN X3VieJ ToLive
@60
== X3VSage @61
== X3VGal @62
DO ~ChangeClass("X3Vie",THIEF)
ActionOverride("X3VSage",MoveToPoint([446.1400]))ActionOverride("X3Vie",AddKit(SHADOWDANCER))ChangeAlignment("X3Vie",NEUTRAL)SetPlayerSound("X3Vie",@942,TIRED)SetPlayerSound("X3Vie",@881,BATTLE_CRY4)SetPlayerSound("X3Vie",@892,SELECT_COMMON6)SetPlayerSound(Myself,@904,HIDDEN_IN_SHADOWS)StartCutSceneMode()StartCutScene("X3VCut05")~ //Cutscene, Vienxay will lose her class and become True Neutral as well. 
EXIT 

//This part is cut, the Sage will change his mind and save Galadin.
/*
CHAIN IF ~False()~ THEN X3VSage CutsceneGaladinNotHelped
@64
= @65
= @66
== X3VieJ @67
== X3VieJ @68
== X3VSage @69
END 
++ @83 + FarewellSage
++ @84 + ThreatenSage

CHAIN X3VSage ThreatenSage 
@85
END 
++ @86 + FightSage
++ @87 + SensibleWords 

CHAIN X3VSage SensibleWords 
@89
EXTERN X3VSage FarewellSage

CHAIN X3VSage FightSage 
@88
== X3VieJ @89
== X3VSage @90
DO ~ReputationInc(-1)AddJournalEntry(@50030,QUEST_DONE)Enemy()~
EXIT 


//In Testing, keep the transition from Galadin's death to the pickup in a cutscene mode, so the player can't take the tome.
CHAIN X3VSage FarewellSage 
@92
DO ~PickUpItem("X3VTome1")AddJournalEntry(@50029,QUEST_DONE)EscapeArea()~
EXIT 
*/
CHAIN IF ~Global("X3VieQuest","GLOBAL",10)~ THEN X3VSage CutsceneGaladinHelped
@70
END 
++ @71 + NoBlame
++ @72 + NoBlame
++ @73 + NoBlame

CHAIN X3VSage NoBlame 
@74
= @75
= @76
END 
+~!IsValidForPartyDialogue("X3Vie")~+ @93 + FarewellFarewell
+~IsValidForPartyDialogue("X3Vie")~+ @93 + VienxayForgiveness 
++ @94 + PressForTome

CHAIN X3VSage PressForTome 
@95
END 
+~!IsValidForPartyDialogue("X3Vie")~+ @96 + KeepTome
+~IsValidForPartyDialogue("X3Vie")~+ @96 EXTERN X3VieJ KeepTomeVie
+~!IsValidForPartyDialogue("X3Vie")~+ @97 + FarewellFarewell
+~IsValidForPartyDialogue("X3Vie")~+ @97 + VienxayForgiveness 

CHAIN X3VSage FarewellFarewell 
@101
DO ~PickUpItem("X3VTome1")SetGlobal("X3VieQuest","GLOBAL",12)AddJournalEntry(@50025,QUEST_DONE)EscapeArea()~
EXIT 


CHAIN X3VSage KeepTome 
@103 
DO ~ReputationInc(-1)AddJournalEntry(@50028,QUEST_DONE)EscapeArea()~
EXIT 

CHAIN X3VieJ KeepTomeVie 
@98
== X3VSage @99
DO ~SetGlobal("X3VieAppChange","GLOBAL",1)ReputationInc(-1)AddJournalEntry(@50028,QUEST_DONE)EscapeArea()~
== X3VieJ @100
EXIT 

//Vienxay has to be alive/in party for the sage to give them the tome! Make sure to spawn the item on the Sage.
CHAIN X3VSage VienxayForgiveness 
@77
= @78
= @79
== X3VieJ @80
== X3VSage @81
DO ~GiveItem("X3VTome2","X3Vie")PickUpItem("X3VTome1")SetGlobal("X3VieQuest","GLOBAL",12)AddJournalEntry(@50009,QUEST_DONE)EscapeArea()~
EXIT 

//Keep this at the bottom.
CHAIN IF ~Global("X3VSageTomeCon","GLOBAL",0)PartyHasItem("X3VTome1")~ THEN X3VSage PlayerFoundTome
@19
DO ~SetGlobal("X3VSageTomeCon","GLOBAL",1)~
END 
++ @20 + GiveTomeToHim
++ @21 + WhatWouldYouAsk
++ @22 + ThinkAboutIt

CHAIN IF ~Global("X3VSageTomeCon","GLOBAL",1)PartyHasItem("X3VTome1")~ THEN X3VSage PlayerFoundTomeSpeakAgain 
@34
END 
++ @20 + GiveTomeToHim
++ @21 + WhatWouldYouAsk
++ @22 + ThinkAboutIt

CHAIN X3VSage ThinkAboutIt 
@23
EXIT 

CHAIN X3VSage WhatWouldYouAsk
@24
END 
++ @25 + Gold
++ @26 + Power
++ @27 + HelpVienxay

CHAIN X3VSage Gold 
@28
END 
++ @31 DO ~SetGlobal("X3VReward","GLOBAL",1)~ + GiveTomeToHim
++ @32 + SeeReasonPlease

CHAIN X3VSage Power
@29
END 
++ @31 DO ~SetGlobal("X3VReward","GLOBAL",2)~ + GiveTomeToHim
++ @32 + SeeReasonPlease 

CHAIN X3VSage HelpVienxay
@30
END 
++ @31 DO ~SetGlobal("X3VReward","GLOBAL",3)~ + GiveTomeToHim
++ @32 + SeeReasonPlease

CHAIN X3VSage SeeReasonPlease 
@33
EXIT 

CHAIN X3VSage GiveTomeToHim
@35
= @108
DO ~SetGlobal("X3VGaveTome","GLOBAL",1)~
END 
IF ~Global("X3VReward","GLOBAL",1)~ DO ~AddJournalEntry(@50023,QUEST_DONE)GiveGoldForce(5000)~ EXTERN X3VSage GoldReward
IF ~Global("X3VReward","GLOBAL",2)~ DO ~AddJournalEntry(@50023,QUEST_DONE)GiveItem("X3VTome2",Player1)~ EXTERN X3VSage TomeReward
IF ~Global("X3VReward","GLOBAL",3)~ DO ~AddJournalEntry(@50024,QUEST_DONE)~ EXTERN X3VSage ExileReward
IF ~Global("X3VReward","GLOBAL",0)~ DO ~AddJournalEntry(@50023,QUEST_DONE)ReputationInc(1)~ EXTERN X3VSage NoReward

//Test to make sure the externs work if there is no Vienxay.
CHAIN X3VSage GoldReward 
@36
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @105
DO ~SetGlobal("X3VieAppChange","GLOBAL",2)SetGlobal("X3VieQuest","GLOBAL",11)~
EXTERN X3VSage FarewellGiveTomeRoute 

CHAIN X3VSage TomeReward 
@37
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @106
DO ~SetGlobal("X3VieAppChange","GLOBAL",3)SetGlobal("X3VieQuest","GLOBAL",11)~
EXTERN X3VSage FarewellGiveTomeRoute 

CHAIN X3VSage ExileReward 
@38
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @39
DO ~SetGlobal("X3VieAppChange","GLOBAL",11)SetGlobal("X3VieQuest","GLOBAL",12)~
== X3VSage IF ~IsValidForPartyDialogue("X3Vie")~ THEN @40
EXTERN X3VSage FarewellGiveTomeRoute 

CHAIN X3VSage NoReward 
@107
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @104
DO ~SetGlobal("X3VieAppChange","GLOBAL",2)SetGlobal("X3VieQuest","GLOBAL",11)~
EXTERN X3VSage FarewellGiveTomeRoute 

CHAIN X3VSage FarewellGiveTomeRoute
@41
DO ~EscapeArea()~
EXIT 
