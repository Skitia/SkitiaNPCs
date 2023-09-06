BEGIN X3IArbex 
//Arbex's Only line.
CHAIN IF ~True()~ THEN X3IArbex OnlyLine 
@0
EXIT 

BEGIN X3IMavis
//Mavis First Meeting
CHAIN IF ~Global("X3IsaQuest","GLOBAL",3)~ THEN X3IMavis FirstCon 
@1
== X3IsaJ @2
== X3ITrent @3
== X3IsaJ @4
== X3IMavis @5
== X3IsaJ @111
== X3IMavis @112
== X3IMavis @113
== X3IsaJ @114
== X3IMavis @115
== X3IMavis @6
END 
++ @7 + Talk
++ @8 + Talk
++ @9 + Talk
++ @10 EXTERN X3ITrent TimeToDie

CHAIN X3ITrent TimeToDie 
@11
END 
++ @12 EXTERN X3IMavis Talk
++ @13 EXTERN X3IsaJ NoTalking

CHAIN X3IMavis Talk 
@16
== X3IsaJ @17
== X3IMavis @18
== X3IMavis @19
== X3IsaJ @116
== X3IMavis @20
== HAERDAJ IF ~IsValidForPartyDialogue("HAERDALIS")~ THEN @131
== X3IMavis IF ~IsValidForPartyDialogue("HAERDALIS")~ THEN @132
== X3IMavis @21
== X3IsaJ @117
== X3IMavis @118
END 
+~Global("X3IMavisTakeOver","LOCALS",0)~+ @23 DO ~SetGlobal("X3IMavisTakeOver","LOCALS",1)~ + TakeOver
+~Global("X3IMavisTakeOver","LOCALS",0)~+ @24 DO ~SetGlobal("X3IMavisTakeOver","LOCALS",1)~ EXTERN X3IMavis Lying
+~Global("X3IMavisToldItems","LOCALS",0)~+ @25 DO ~SetGlobal("X3IMavisToldItems","LOCALS",1)~ EXTERN X3IMavis PlanarSphereMeet
++ @26 EXTERN X3ITrent ThreeMages 

CHAIN X3IsaJ NoTalking 
@14
EXTERN X3IMavis Battle

CHAIN X3IMavis Battle
@15
DO ~ActionOverride("X3IArbex",Enemy())ActionOverride("X3ITrent",Enemy())Enemy()~
EXIT 

CHAIN X3ITrent ThreeMages
@27
EXTERN X3IsaJ NoTalking

CHAIN X3IsaJ IsaacOpinion
@39
= @40
END 
++ @41 EXTERN X3IMavis HelpHer
++ @42 EXTERN X3ITrent PoorDecision


CHAIN X3IMavis TakeOver 
@29
EXTERN X3IMavis Lying 

CHAIN X3IMavis Lying
@30
== X3IsaJ @31
== X3IMavis @32
END 
++ @22 EXTERN X3IsaJ IsaacOpinion
+~Global("X3IMavisToldItems","LOCALS",0)~+ @25 DO ~SetGlobal("X3IMavisToldItems","LOCALS",1)~ EXTERN X3IMavis PlanarSphereMeet
++ @26 EXTERN X3ITrent ThreeMages 
++ @41 EXTERN X3IMavis HelpHer

CHAIN X3IMavis PlanarSphereMeet 
@33
= @34
== X3IsaJ @35
== X3IMavis @36
== X3IsaJ @37
== X3IMavis @38
END 
++ @22 EXTERN X3IsaJ IsaacOpinion
+~Global("X3IMavisTakeOver","LOCALS",0)~+ @23 DO ~SetGlobal("X3IMavisTakeOver","LOCALS",1)~ + TakeOver
+~Global("X3IMavisTakeOver","LOCALS",0)~+ @24 DO ~SetGlobal("X3IMavisTakeOver","LOCALS",1)~ EXTERN X3IMavis Lying
++ @26 EXTERN X3ITrent ThreeMages
++ @41 EXTERN X3IMavis HelpHer

CHAIN X3ITrent PoorDecision 
@43
== X3IsaJ @44
EXTERN X3IMavis Battle

CHAIN X3IMavis HelpHer 
@124
== X3EmiJ IF ~Global("X3EmiPartyBG1","GLOBAL",1)IsValidForPartyDialogue("X3Emi")~ THEN @122
== X3IMavis IF ~Global("X3EmiPartyBG1","GLOBAL",1)IsValidForPartyDialogue("X3Emi")~ THEN @123
END 
IF ~Global("X3IMavisToldItems","LOCALS",0)~ EXTERN X3IMavis TellItems
IF ~!Global("X3IMavisToldItems","LOCALS",0)~ EXTERN X3IMavis KnowItems

CHAIN X3IMavis TellItems 
@45
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ Oghma
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3IMavis Oghma 

CHAIN X3IMavis KnowItems 
@46
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ Oghma
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3IMavis Oghma 

CHAIN X3RebJ Oghma 
@48
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Oghma
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3IMavis WhenOver

CHAIN X3IMavis Oghma 
@47
END 
IF ~IsValidForPartyDialogue("X3Vie")Global("X3GaladinBook","GLOBAL",1)~ EXTERN X3VieJ Oghma
IF ~OR(2)!IsValidForPartyDialogue("X3Vie")!Global("X3GaladinBook","GLOBAL",1)~ EXTERN X3IMavis WhenOver

CHAIN X3VieJ Oghma 
@49
EXTERN X3IMavis WhenOver 

CHAIN X3IMavis WhenOver 
@50
DO ~StartCutSceneMode()AddJournalEntry(@6005,QUEST)SetGlobal("X3IsaQuest","GLOBAL",4)CreateVisualEffectObject("spdimndr",Myself)CreateVisualEffectObject("spdimndr","X3IArbex")CreateVisualEffectObject("spdimndr","X3ITrent")
Wait(2)ActionOverride("X3IArbex",JumpToPoint([1410.1169]))ActionOverride("X3ITrent",JumpToPoint([1553.1292])JumpToPoint([1510.1220])SmallWait(1)ActionOverride("X3IArbex",MoveToPoint([1410.1169]))ActionOverride("X3ITrent",MoveToPoint([1553.1292])MoveToPoint([1510.1220])EndCutSceneMode()~
EXIT 
//Mavis Item Checking
CHAIN IF ~Global("X3IsaQuest","GLOBAL",4)~ THEN X3IMavis SpellPrep 
@51
END 
+~OR(2)PartyHasItem("X3EGem")PartyHasItem("X3VBook")~+ @52 EXTERN X3IMavis ItemCheck
++ @53 EXIT 
++ @54 EXTERN X3IMavis ChangeMind 

CHAIN X3IMavis ChangeMind 
@55
DO ~ActionOverride("X3IArbex",Enemy())ActionOverride("X3ITrent",Enemy())Enemy()~
EXIT 

CHAIN X3IMavis ItemCheck 
@56
END 
IF ~PartyHasItem("X3EGem")PartyHasItem("X3VBook")~ DO ~TakePartyItem("X3EGem")TakePartyItem("X3VBook")AddJournalEntry(@6008,QUEST)~ EXTERN X3IMavis AllItems
IF ~PartyHasItem("X3EGem")!PartyHasItem("X3VBook")HasItem("X3VBook","X3IMavis")~ DO ~TakePartyItem("X3EGem")AddJournalEntry(@6008,QUEST)~ EXTERN X3IMavis AllItems
IF ~PartyHasItem("X3VBook")!PartyHasItem("X3EGem")HasItem("X3EGem","X3IMavis")~ DO ~TakePartyItem("X3VBook")AddJournalEntry(@6008,QUEST)~ EXTERN X3IMavis AllItems
IF ~PartyHasItem("X3VBook")!PartyHasItem("X3EGem")!HasItem("X3EGem","X3IMavis")~ DO ~TakePartyItem("X3VBook")AddJournalEntry(@6007,QUEST)~ EXTERN X3IMavis Book
IF ~PartyHasItem("X3EGem")!PartyHasItem("X3VBook")!HasItem("X3VBook","X3IMavis")~ DO ~TakePartyItem("X3EGem")AddJournalEntry(@6006,QUEST)~ EXTERN X3IMavis Gem

CHAIN X3IMavis Book
@58
EXIT 

CHAIN X3IMavis Gem 
@57
EXIT 

CHAIN X3IMavis AllItems 
@59
DO ~GiveItem("X3VBook","X3IArbex")GiveItem("X3EGem","X3IArbex")~ // Arbex will always die and is the safest keeper of the book.
== X3IArbex @60
== X3IMavis @61
== X3ITrent @62
== X3IMavis @63
DO ~SetGlobal("X3IsaQuest","GLOBAL",5)StartCutSceneMode()StartCutScene("X3ICut11")~ EXIT 

//Mavis Battle Over 
CHAIN IF ~Global("X3IsaQuest","GLOBAL",6)Dead("X3IPHL")Global("X3Gnome","GLOBAL",0)~ THEN X3IMavis BattleOver 
@64
DO ~SetGlobal("X3IsaQuest","GLOBAL",7)AddexperienceParty(36750)~
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @65
== X3IMavis @66
END 
++ @119 EXTERN X3IMavis Toying
++ @67 EXTERN X3IMavis Toying
++ @68 EXTERN X3IMavis Survived
//Only an Artificer (Aura) can offer to do the spell in place of the Artificer. For eventual easier crossmod, giving the Aura branch a unique identifier.
//Rename C0Aura to the actual identifier whenever Aura is released.
//For flexibility, (Jan) is a close substitue, and Recorder has enough passing lore and knowledge to help (Recorder). Go gnomes!
+~IsValidForPartyDialogue("C0Aura")~+ @71 DO ~SetGlobal("X3Gnome","GLOBAL",1)~ EXTERN X3IMavis ChooseAura
+~IsValidForPartyDialogue("JAN")~+ @69 DO ~SetGlobal("X3Gnome","GLOBAL",2)~ EXTERN JANJ Remarks
+~IsValidForPartyDialogue("X3Reb")~+ @70 DO ~SetGlobal("X3Gnome","GLOBAL",3)~ EXTERN X3RebJ Remarks

CHAIN X3IMavis ChooseAura 
@75
DO ~AddJournalEntry(@6012,QUEST)~
END 
IF ~PartyHasItem("X3IArt")~ EXTERN X3IMavis BeginSpell1
IF ~!PartyHasItem("X3IArt")~ EXTERN X3IMavis PickUp



CHAIN JANJ Remarks
@72
DO ~AddJournalEntry(@6013,QUEST)~
EXTERN X3IMavis ChooseJan

CHAIN X3RebJ Remarks 
@73
DO ~AddJournalEntry(@6014,QUEST)~
EXTERN X3IMavis ChooseRecorder

CHAIN X3IMavis ChooseRecorder
@74
END 
IF ~PartyHasItem("X3IArt")~ EXTERN X3IMavis BeginSpell3
IF ~!PartyHasItem("X3IArt")~ EXTERN X3IMavis PickUp


CHAIN X3IMavis ChooseJan
@75
END 
IF ~PartyHasItem("X3IArt")~ EXTERN X3IMavis BeginSpell2
IF ~!PartyHasItem("X3IArt")~ EXTERN X3IMavis PickUp

CHAIN IF ~Global("X3IsaQuest","GLOBAL",7)!PartyHasItem("X3IArt")GlobalGT("X3Gnome","GLOBAL",0)~ THEN X3IMavis PickUp
@76
EXIT 

CHAIN IF ~Global("X3IsaQuest","GLOBAL",7)PartyHasItem("X3IArt")Global("X3Gnome","GLOBAL",1)See("C0Aura")~ THEN X3IMavis BeginSpell1 
@77
DO ~SetGlobal("X3IsaQuest","GLOBAL",8)StartCutSceneMode()StartCutScene("X3ICut2A")~ EXIT 

CHAIN IF ~Global("X3IsaQuest","GLOBAL",7)PartyHasItem("X3IArt")Global("X3Gnome","GLOBAL",2)See("JAN")~ THEN X3IMavis BeginSpell2 
@77
DO ~SetGlobal("X3IsaQuest","GLOBAL",8)StartCutSceneMode()StartCutScene("X3ICut3J")~ EXIT 

CHAIN IF ~Global("X3IsaQuest","GLOBAL",7)PartyHasItem("X3IArt")Global("X3Gnome","GLOBAL",3)See("X3Reb")~ THEN X3IMavis BeginSpell3 
@77
DO ~SetGlobal("X3IsaQuest","GLOBAL",8)StartCutSceneMode()StartCutScene("X3ICut4R")~ EXIT 

CHAIN IF ~Global("X3IsaQuest","GLOBAL",7)PartyHasItem("X3IArt")GlobalGT("X3Gnome","GLOBAL",0)!See("C0Aura")!See("X3Reb")!See("JAN")~ THEN X3IMavis WhereAreThey
@121
EXIT 

CHAIN IF ~Global("X3IsaQuest","GLOBAL",8)~ THEN X3IMavis Purified
@78
DO ~AddJournalEntry(@6015,QUEST_DONE)SetGlobal("X3IMavisPureEpilogue","GLOBAL",1)AddexperienceParty(18150)~ //Only matters in non-romanced path.
= @79
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @80
END 
IF ~IsValidForPartyDialogue("X3Isa")~ EXTERN X3IMavis LostSoMuch
IF ~!IsValidForPartyDialogue("X3Isa")~ EXTERN X3IMavis DoPurified

CHAIN X3IMavis LostSoMuch
@81
== X3IsaJ @82
== X3IMavis @83
== X3IsaJ IF ~!Global("X3IsaRomanceActive","GLOBAL",2)~ THEN @84
== X3IsaJ IF ~Global("X3IsaRomanceActive","GLOBAL",2)~ THEN @85
END 
+~Global("X3IMavisPureEpilogue","GLOBAL",1)~+ @85 EXTERN X3IMavis DoPurified
+~!Global("X3IMavisPureEpilogue","GLOBAL",1)~+ @85 EXTERN X3IMavis DoNormal
++ @86 EXTERN X3IsaJ SorryMavis 
++ @87 EXTERN X3IsaJ AreYouSure

CHAIN X3IsaJ AreYouSure
@88
END 
+~OR(2)Global("X3IsaRomanceActive","GLOBAL",2)Global("X3IsaRomanceActive","GLOBAL",1)~+ @89 + StandInTheWay
+~!Global("X3IsaRomanceActive","GLOBAL",2)!Global("X3IsaRomanceActive","GLOBAL",1)~+ @90 + ThenGoodbye
+~!Global("X3IsaRomanceActive","GLOBAL",2)GlobalLT("X3IsaApp","GLOBAL",45)~+ @91 + ThenGoodbye
+~OR(2)Global("X3IsaRomanceActive","GLOBAL",2)!GlobalLT("X3IsaApp","GLOBAL",45)~+ @91 + SorryMavis
++ @92 + SorryMavis 

CHAIN X3IsaJ SorryMavis 
@93
== X3IMavis @94
END 
IF ~Global("X3IMavisPureEpilogue","GLOBAL",1)~ EXTERN X3IMavis Goodbye 
IF ~!Global("X3IMavisPureEpilogue","GLOBAL",1)~ EXTERN X3IMavis GoodbyeNormal
 

CHAIN X3IsaJ StandInTheWay 
@95
END 
++ @96 + SorryMavis
++ @97 + ThenGoodbye 

CHAIN X3IsaJ ThenGoodbye 
@98
DO ~LeaveParty()CreateVisualEffectObject("spdimndr",Myself)Wait(2)DestroySelf()~
END 
IF ~Global("X3IMavisPureEpilogue","GLOBAL",1)~ EXTERN X3IMavis Goodbye 
IF ~!Global("X3IMavisPureEpilogue","GLOBAL",1)~ EXTERN X3IMavis GoodbyeNormal
 
CHAIN X3IMavis Goodbye 
@99
END 
IF ~!Dead("X3ITrent")~ DO ~StartCutSceneMode()CreateVisualEffectObject("spdimndr","X3ITrent")CreateVisualEffectObject("spdimndr",Myself)Wait(2)ActionOverride("X3ITrent",DestroySelf())EndCutSceneMode()DestroySelf()~ EXIT 
IF ~Dead("X3ITrent")~ DO ~StartCutSceneMode()CreateVisualEffectObject("spdimndr",Myself)CreateVisualEffectObject("spdimndr","X3ITrent")Wait(2)ActionOverride("X3ITrent",DestroySelf())EndCutSceneMode()DestroySelf()~ EXIT 

CHAIN X3IMavis GoodbyeNormal 
@105
END 
IF ~!Dead("X3ITrent")~ DO ~StartCutSceneMode()CreateVisualEffectObject("spdimndr","X3ITrent")CreateVisualEffectObject("spdimndr",Myself)Wait(2)ActionOverride("X3ITrent",DestroySelf())EndCutSceneMode()DestroySelf()~ EXIT 
IF ~Dead("X3ITrent")~ DO ~StartCutSceneMode()CreateVisualEffectObject("spdimndr",Myself)CreateVisualEffectObject("spdimndr","X3ITrent")Wait(2)ActionOverride("X3ITrent",DestroySelf())EndCutSceneMode()DestroySelf()~ EXIT 

CHAIN X3IMavis DoPurified 
@100
== HAERDAJ IF ~IsValidForPartyDialogue("HAERDALIS")~ THEN @127
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @128
== X3IMavis IF ~IsValidForPartyDialogue("X3Emi")~ THEN @129
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @130
END 
IF ~IsValidForPartyDialogue("X3Isa")~ EXTERN X3IsaJ SorryMavis 
IF ~!IsValidForPartyDialogue("X3Isa")~ EXTERN X3IMavis Goodbye

CHAIN X3IMavis DoNormal
@101
== HAERDAJ IF ~IsValidForPartyDialogue("HAERDALIS")~ THEN @125
== X3IMAVIS IF ~IsValidForPartyDialogue("HAERDALIS")~ @126
END 
IF ~IsValidForPartyDialogue("X3Isa")~ EXTERN X3IsaJ SorryMavis 
IF ~!IsValidForPartyDialogue("X3Isa")~ EXTERN X3IMavis GoodbyeNormal



CHAIN X3IMavis Survived
@102
EXTERN X3IMavis Toying 

CHAIN X3IMavis Toying 
@103 
DO ~AddJournalEntry(@6011,QUEST_DONE)~
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @104
END 
IF ~IsValidForPartyDialogue("X3Isa")~ EXTERN X3IMavis LostSoMuch
IF ~!IsValidForPartyDialogue("X3Isa")~ EXTERN X3IMavis DoNormal

