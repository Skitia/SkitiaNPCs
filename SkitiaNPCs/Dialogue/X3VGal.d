/*
Galadin's polymorph should be:
A Balor (Tanari in the cre file.
Have a slight weakness to frost.
Maximize strength, intelligence, dexterity, and constitution.
Add additional hitpoints.
Increase BASE AC.
Deal Fire Damage.
Have a higher base attack.
He should probably be the hardest individual enemy in any of the quests.

There are four routes:
-Give the Tome to Sules'terim, as per normal. Vienxay's exile will be lifted and her alignment will change.
-Keep the Tome, make them all mad. Vienxay will stay exiled. Same as before.
-Give the Tome to Galadin. This splits to:
--Let Galadin die during the ritual. Vienxay stays exiled and party loses reputation.
--Save Galadin during the ritual. Galadin turns into a tanari avatar which the party has to defeat. Party gains one reputation and Vienxay changes alignment.
Outcomes are basically:
+1 Dexterity/Neutral, +1 Intelligence, no alignment change. -1 reputation. (You can take the book from Galadin's body, and gain +1 intelligence, Sules'terim will want nothing to do with it.)
Lose mage class, become Shadowdancer. Also gets +1 intelligence in this route.
No conversation, but Vienxay will gain approval for 19 intelligence. No approval gain for 18 dexterity, however.

SetGlobal("X3GaladinBook","GLOBAL",2) is for Isaac, Vienxay won't chime in if it is at 2 or 0.
*/
CHAIN IF ~Global("X3VieQuest","GLOBAL",3)Global("X3VGalConTrigger","GLOBAL",1)~ THEN X3VGal FirstConAlone
@0 
END 
++ @1 + Adjusted
++ @2 + SpeakBefore
++ @3 + YouRequire

CHAIN X3VGal YouRequire
@4
= @5
= @6
END 
+~IsValidForPartyDialogue("X3Vie")~+ @11 DO ~SetGlobal("X3VieAppChange","GLOBAL",3)~ EXTERN X3VieJ ThisIsImportant
++ @10 + Disapprove
++ @9 + LeaveSight
++ @12 + WhatIsRequired

CHAIN X3VGAL LeaveSight 
@15
EXTERN X3VGAL WhatIsRequired

CHAIN X3VGAL Disapprove 
@19
EXTERN X3VGal WhatIsRequired

CHAIN X3VieJ ThisIsImportant 
@13
== X3VGAL @14
EXTERN X3VGal WhatIsRequired

CHAIN X3VGAL WhatIsRequired 
@16
= @17
= @18
DO ~SetGlobal("X3VieQuest","GLOBAL",4)AddJournalEntry(@50003,QUEST)SetGlobal("X3GaladinBook","GLOBAL",1)~
EXIT 

CHAIN X3VGal SpeakBefore 
@8
EXTERN X3VGal YouRequire 

CHAIN X3VGal Adjusted 
@7
EXTERN X3VGal YouRequire 

CHAIN IF ~Global("X3VieQuest","GLOBAL",6)!InParty("X3Vie")~ THEN X3VGal WaitingVienxay
@24
EXIT 

CHAIN IF ~Global("X3VieQuest","GLOBAL",6)InParty("X3Vie")~ THEN X3VGal WaitingVienxayHere
@40
EXTERN X3VieJ We

CHAIN IF ~GlobalGT("X3VieQuest","GLOBAL",3)GlobalLT("X3VieQuest","GLOBAL",6)OR(2)!HasItem("X3VTome1","X3VGal")!HasItem("X3VBook","X3VGal")~ THEN X3VGal MainBranches
@20 
END 
+~PartyHasItem("X3VTome1")PartyHasItem("X3VBook")~+ @21 + BothItems 
+~PartyHasItem("X3VBook")~+ @22 + RitualBook
+~PartyHasItem("X3VTome1")~+ @23 + TomeBook
+~!PartyHasItem("X3VTome1")Global("X3VadrieTalk","GLOBAL",1)~+ @27 DO ~SetGlobal("X3VadrieTalk","GLOBAL",2)~ + NoBook
++ @25 + ExitLine
+~!HasItem("X3VTome1","X3VGal")!HasItem("X3VBook","X3VGal")~+ @26 + NoHelp

CHAIN X3VGal NoHelp 
@28
EXIT 

CHAIN X3VGal ExitLine 
@29
EXIT 

CHAIN X3VGal NoBook
@30
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VGal NoBookVienxay
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VGal NoBookNoVienxay

CHAIN X3VGal NoBookVienxay
@31
== X3VieJ @33
== X3VGal @34
== X3VieJ @35
DO ~AddJournalEntry(@50021,QUEST)~
EXIT 

CHAIN X3VGal NoBookNoVienxay 
@32
DO ~AddJournalEntry(@50021,QUEST)~
EXIT 

CHAIN X3VGal BothItems
@36
DO ~TakePartyItem("X3VTome1")TakePartyItem("X3VBook")SetGlobal("X3GaladinBook","GLOBAL",2)~
EXTERN X3VGal Everything

CHAIN X3VGal TomeBook
@37
DO ~TakePartyItem("X3VTome1")~
END 
IF ~HasItem("X3VBook","X3VGal")~ EXTERN X3VGal Everything
IF ~!HasItem("X3VBook","X3VGal")~ EXTERN X3VGal MissingRitual

CHAIN X3VGal RitualBook 
@38
DO ~TakePartyItem("X3VBook")SetGlobal("X3GaladinBook","GLOBAL",2)~
END 
IF ~HasItem("X3VTome1","X3VGal")~ EXTERN X3VGal Everything 
IF ~!HasItem("X3VTome1","X3VGal")~ EXTERN X3VGal MissingBook

CHAIN X3VGal MissingBook 
@41
DO ~AddJournalEntry(@50018,QUEST)~
EXIT 

CHAIN X3VGal MissingRitual 
@42
DO ~AddJournalEntry(@50019,QUEST)~
EXIT 

//Change the below so it has player input, they can decide whether to commence with the ritual or not.
CHAIN X3VGal Everything 
@43
DO ~SetGlobal("X3VieQuest","GLOBAL",6)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VGal ProceedRitual
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VGal NoRitualYet

CHAIN X3VGal NoRitualYet 
@43
DO ~AddJournalEntry(@50020,QUEST)~
EXIT 

CHAIN X3VGal ProceedRitual 
@44
EXTERN X3VieJ We 

CHAIN X3VieJ We 
@45
== X3VGal @46
== X3VieJ @47
== X3VGal @48
DO ~AddJournalEntry(@50022,QUEST)SetGlobal("X3VieQuest","GLOBAL",7)StartCutSceneMode()FadeToColor([15.0],0)SmallWait(1)
MoveGlobal("Ar1100",Player1,[314.1435])
MoveGlobal("Ar1100",Player2,[161.1413])
MoveGlobal("Ar1100",Player3,[215.1431])
MoveGlobal("Ar1100",Player4,[265.1448])
MoveGlobal("Ar1100",Player5,[153.1372])
MoveGlobal("Ar1100",Player6,[406.1412])
JumpToPoint([258.1352])Face(SE)
MoveToPoint([258.1352]) //This might seem unnecessary, but this line updates his location to this point if the party runs away/rests.
MoveGlobal("Ar1100","X3Vie",[344.1352])
ActionOverride(Player1,FaceObject("X3VGal"))
ActionOverride(Player2,FaceObject("X3VGal"))
ActionOverride(Player3,FaceObject("X3VGal"))
ActionOverride(Player4,FaceObject("X3VGal"))
ActionOverride(Player5,FaceObject("X3VGal"))
ActionOverride(Player6,FaceObject("X3VGal"))
ActionOverride("X3Vie",Face(SW))
SmallWait(1)
MoveViewPoint([258.1352],INSTANT)
Wait(4)
FadeFromColor([30.0],0)
Wait(1)
EndCutSceneMode()
StartDialogueNoSet(Player1)~ 
EXIT 



CHAIN IF ~Global("X3VieQuest","GLOBAL",7)~ THEN X3VGal RitualStart
@49
DO ~SetGlobal("X3VieQuest","GLOBAL",8)~
END 
++ @50 + NotYourLife
++ @51 + ReadyVienxay
++ @52 + ReadyVienxay

CHAIN X3VGal NotYourLife 
@53
EXTERN X3VGal ReadyVienxay 

//Vienxay *has* to be ready. No need to do checks here.
CHAIN X3VGal ReadyVienxay 
@54
== X3VieJ @55
DO ~StartCutSceneMode()StartCutScene("X3VCut03")~ EXIT  

//Switch to Sage Dialogue.

//Post Ritual 
CHAIN IF ~Global("X3VieQuest","GLOBAL",9)~ THEN X3VGal RitualComplete 
@56
END 
IF ~Dead("X3VSage")~ EXTERN X3VGal SageDeadRoute
++ @76 EXTERN X3VieJ VienxayAlive
++ @77 EXTERN X3VSage SageAliveRoute
++ @78 EXTERN X3VSage SageAliveRoute

CHAIN X3VieJ VienxayAlive
@79
EXTERN X3VSage SageAliveRoute 

CHAIN X3VGal SageDeadRoute 
@71
= @72
END 
++ @89 + UsedUs
++ @61 + IThinkIAm
++ @62 + FarEnough

CHAIN X3VGal IThinkIAm 
@93
EXTERN X3VGal UsedUsContinue

CHAIN X3VGal UsedUs
@90
EXTERN X3VGal UsedUsContinue 

CHAIN X3VGal UsedUsContinue
@91
= @92
EXTERN X3VGal PerfectPawn 

CHAIN X3VSage SageAliveRoute
@57
== X3VGal @58
== X3VSage @83
== X3VGal @81
== X3VieJ @59
== X3VGal @82
= @84
= @85
END 
++ @60 EXTERN X3VGal TrueMaster
++ @61 EXTERN X3VGal TryToStop
++ @62 EXTERN X3VGal FarEnough
++ @63 EXTERN X3VGal SavedLife

CHAIN X3VGal SavedLife 
@95
EXTERN X3VGal Responsible 

CHAIN X3VGal TrueMaster 
@86
EXTERN X3VGal Responsible 

CHAIN X3VGal Responsible 
@94
== X3VSage @87
== X3VGal @88
EXTERN X3VGal PerfectPawn

CHAIN X3VGal PerfectPawn
@66
END 
IF ~!Dead("X3VSage")~ EXTERN X3VieJ NoPower
IF ~Dead("X3VSage")~ EXTERN X3VieJ HasPower

CHAIN X3VieJ HasPower 
@73
== X3VGal @74
DO ~ActionOverride("X3VGal",ChangeAIScript("X3VFIGHT",CLASS))Enemy()ReallyForceSpell(Myself,WIZARD_MIRROR_IMAGE)ReallyForceSpell(Myself,WIZARD_STONE_SKIN)~
EXIT 

CHAIN X3VGal TryToStop 
@65
EXTERN X3VGal Responsible 

CHAIN X3VGal FarEnough 
@64
END 
IF ~!Dead("X3VSage")~ EXTERN X3VGal Responsible
IF ~Dead("X3VSage")~ EXTERN X3VGal UsedUsContinue


CHAIN X3VieJ NoPower 
@67
== X3VSage @68
== X3VGal @69
DO ~ActionOverride("X3VGal",ChangeAIScript("X3VFIGHT",CLASS))ChangeEnemyAlly("X3VSage",GOODBUTBLUE)Enemy()ReallyForceSpell(Myself,WIZARD_MIRROR_IMAGE)ReallyForceSpell(Myself,WIZARD_STONE_SKIN)~
EXIT 
//Use this global to alter epilogue endings if desired.
CHAIN IF ~Global("X3VGaveTome","GLOBAL",1)~ THEN X3VGal AttackParty
@70
DO ~Enemy()~
EXIT 




