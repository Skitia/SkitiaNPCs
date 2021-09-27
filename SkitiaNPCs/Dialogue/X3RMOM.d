BEGIN X3RMOM

CHAIN IF ~GlobalTimerExpired("X3KResearch","GLOBAL")Global("X3KResearchTimer","LOCALS",1)~ THEN X3RMOM cheese_talk 
@0
DO ~SetGlobal("X3KResearchTimer","LOCALS",2)~
END 
++ @1 + cheese_t1 
++ @2 + cheese_t1 
++ @3 + cheese_t1 

CHAIN X3RMOM cheese_t1 
@4
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ interject 
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3RMOM cheese_t2 

CHAIN X3KalJ interject 
@5
EXTERN X3RMOM cheese_t2 

CHAIN X3RMOM cheese_t2 
@6
== X3RMOM @7
END 
++ @8 + cheese_t3 
++ @9 + cheese_t4
++ @10 + cheese_t3

CHAIN X3RMOM cheese_t3 
@11
DO ~SetGlobal("X3KnowledgeCheese","GLOBAL",1)AddJournalEntry(@30020,QUEST)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
EXIT 

CHAIN X3RMOM cheese_t4 
@13
EXTERN X3RMOM cheese_t3 

CHAIN IF ~Global("X3RebVampTempleTalk","GLOBAL",1)IsValidForPartyDialogue("X3Reb")~ THEN X3RMOM Recorder_Brought_Back 
@14
DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",2)~
==  X3RebJ @15
== X3RMOM @16
==  X3RebJ@17
== X3RMOM @18
EXIT 

CHAIN IF ~Global("X3RebVampire","GLOBAL",2)Global("X3RebVampTempleTalk","GLOBAL",0)~ THEN X3RMOM Recorder_Bodhi_Dead
@19
DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~
EXTERN X3RMOM Rec_Vamp 

CHAIN X3RMOM Rec_Vamp 
@20
= @21
END 
++ @22 + Rec_Vamp2 
++ @23 + Rec_Vamp2 
++ @24  + Rec_Vamp2 

CHAIN X3RMOM Rec_Vamp2
@25
= @26
= @27
END 
++ @28 + Rec_Vamp3 
++ @29 + Rec_Vamp4 
++ @30 + Rec_Vamp5 
++ @31  + Rec_Vamp6

CHAIN X3RMOM Rec_Vamp3 
@32
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 

CHAIN X3RMOM Rec_Vamp4 
@33
END 
++ @34 + Rec_Vamp3 
++ @30 + Rec_Vamp5 
++ @31 + Rec_Vamp6 

CHAIN X3RMOM Rec_Vamp5 
@35
= @36
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 

CHAIN X3RMOM Rec_Vamp6 
@37
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 




//Alternate: Talked to Priest of Oghma First. 

EXTEND_BOTTOM DOGHMA 0
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

EXTEND_BOTTOM DOGHMA 3
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

EXTEND_BOTTOM DOGHMA 7
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

EXTEND_BOTTOM DOGHMA 9
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

CHAIN DOGHMA Rec_Vamp
@39
= @40
END 
++ @41 + Rec_Vamp2 
++ @42 + Rec_Vamp2 
++ @43 + Rec_Vamp3

CHAIN DOGHMA Rec_Vamp2 
@44
= @45
END 
++ @46 EXTERN DOGHMA 17
++ @30 + Rec_Vamp4 
++ @31 + Rec_Vamp5

CHAIN DOGHMA Rec_Vamp4 
@47
EXTERN DOGHMA Rec_Vamp6 

CHAIN DOGHMA Rec_Vamp6 
@48
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 

CHAIN DOGHMA Rec_Vamp5 
@49
EXTERN DOGHMA Rec_Vamp6 

CHAIN DOGHMA Rec_Vamp3 
@50
EXTERN DOGHMA Rec_Vamp2 


CHAIN IF ~IsGabber("X3Reb")~ THEN X3RMOM Recorder_Talks 
@51
== X3RebJ @52
EXTERN X3RMOM services 

CHAIN IF ~!IsGabber("X3Reb")!Global("X3RebQuest","GLOBAL",11)~ THEN X3RMOM Player_talks 
@53
EXTERN X3RMOM services 

CHAIN X3RMOM services 
@54
END 
IF ~Global("X3VieQuest","GLOBAL",1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_quest
+~PartyHasItem("X3KCHEES")~+ @55 DO ~TakePartyItem("X3KCHEES")~ + cheese 
+~!GlobalTimerExpired("X3KResearch","GLOBAL")Global("X3KResearchTimer","LOCALS",1)~+ @56 + not_ready
+~Global("X3VieQuest","GLOBAL",1)!IsValidForPartyDialogue("X3Vie")~+ @57 + sage
++ @58 DO ~StartStore("doghma",LastTalkedToBy())~ EXIT  // Temple of Oghma
++ @59 EXIT 
+~!IsGabber("X3Reb")~+ @60 + mom_does

CHAIN X3RMOM  mom_does 
@61
EXIT 

CHAIN X3RMOM not_ready 
@62
EXIT 

CHAIN X3VieJ Vienxay_quest 
@63
EXTERN X3RMOM sage 

CHAIN X3RMOM sage
@64
END 
++ @65 + inform
+~IsValidForPartyDialogue("X3Vie")~+ @66 EXTERN X3VieJ seeking 
++ @67 + personal 
+~!IsValidForPartyDialogue("X3Vie")~+ @68 + assistance 

CHAIN X3VieJ seeking 
@69
EXTERN X3RMOM inform 

CHAIN X3RMOM personal 
@70
EXTERN X3RMOM inform
 

CHAIN X3RMOM inform 
@71
DO ~RevealAreaOnMap("AR1100")IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@2,QUEST)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ go_now
++ @72 EXTERN X3RMOM where 
++ @73 + assistance 
++ @74 EXTERN X3RMOM assistance 

CHAIN X3VieJ go_now 
@75
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @76
== X3VieJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN @77
END 
++ @72 EXTERN X3RMOM where 
++ @78 DO ~DisplayStringNoNameDlg(Player1,@503)IncrementGlobal("X3VieApp","GLOBAL",-3)~ + priorities 
++ @74 EXTERN X3RMOM assistance 

CHAIN X3RMOM assistance 
@79
EXIT 

CHAIN X3VieJ priorities 
@80
== X3RMOM @81 
== X3VieJ @82
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @83
EXTERN X3RMOM assistance 

CHAIN X3RMOM where 
@84
== X3RMOM @85
EXIT 

CHAIN X3RMOM cheese 
@86
== X3RMOM @87
DO ~SetGlobalTimer("X3KResearch","GLOBAL",ONE_HOUR)SetGlobal("X3KResearchTimer","LOCALS",1)AddJournalEntry(@30019,QUEST)~
EXIT 

