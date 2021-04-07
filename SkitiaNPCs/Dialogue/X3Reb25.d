// Remember to block P's and normal if Scry is just finished.
APPEND X3Reb25P 

IF ~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelQuestCutScene","GLOBAL",1)~ ScryFinish 
SAY @0
++ @1 + ScryDead 
++ @2 + ScryDead 
++ @3 + ScryDead 
END 

IF ~~ ScryDead 
SAY @4
= @5
= @6
++ @7 + ScryDead.1
++ @8 + ScryDead.2
++ @9 + ScryDead.2
END 

IF ~~ ScryDead.1 
SAY @10
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.2 
SAY @11
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.3 
SAY @12
IF ~~ DO ~SetGlobal("X3HelToBQuest","GLOBAL",4)AddJournalEntry(@20,QUEST)~ EXIT 
END 

END 

CHAIN IF ~Global("X3RebSummoned","GLOBAL",1) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 b1 
@13 
DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J b1a   
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN  X3Kal25J b1b 
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Kal")~ EXTERN X3Reb25 b2 

CHAIN X3Emi25J b1a 
@14
== X3Reb25 @15
EXTERN X3Reb25 b2 

CHAIN X3Kal25J b1b
@16
EXTERN X3Reb25 b2 

CHAIN X3Reb25 b2  
@17
END 
++ @18 DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~ + b3a
++ @19 DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~ + b3b


CHAIN X3Reb25 b3a 
@20 
EXTERN X3Reb25 b4

CHAIN X3Reb25 b3b 
@21 
EXTERN X3Reb25 b4

CHAIN X3Reb25 b4
@22
END 
++ @23 + b5
++ @24 + b6


CHAIN X3Reb25 b5
@25
DO ~JoinParty()~ EXIT

CHAIN X3Reb25 b6
@26
DO ~MoveToPointNoInterrupt([1641.1334]) Face(0)~ EXIT

CHAIN IF ~Global("X3RebSummoned","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 r1 
@27
== X3Reb @28 
DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~
END 
++ @29 + r2.1
++ @30 + r2.1


CHAIN X3Reb25 r2.1 
@31
== X3Reb25 @32
END 
++ @33 + r5
++ @34 + r6

CHAIN X3Reb25 r5 
@35
 DO ~JoinParty()~ EXIT
 
CHAIN X3Reb25 r6 
@36
EXIT 
 
// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3RebSummoned","GLOBAL",2) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 j1a
@37
== X3Reb25 @38
END 
++ @39 + b5
++ @40 + j2


CHAIN IF ~Global("X3RebSummoned","GLOBAL",2) Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 j1b
@41
END 
++ @42 + r5
++ @43 + r6
 

CHAIN X3Reb25 j2
@44
EXIT 


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",0)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25P p1
@45
END
++ @46 DO ~ActionOverride("X3Reb",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @47 + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @47 + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3RebApp","GLOBAL",44)~ + @48 + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3RebApp","GLOBAL",44)~ + @48 + p1d


CHAIN X3Reb25P p1a 
@49 
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1641.1334]) Face(0)~
EXIT 

CHAIN X3Reb25P p1b 
@50
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Reb25P p1c 
@51
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1641.1334],0)~ EXIT

CHAIN X3Reb25P p1d 
@52
 DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1641.1334],0)~ EXIT


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",0)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25P rp1
@53
END
++ @54 DO ~ActionOverride("X3Reb",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @55 + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @55 + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @56 + rp1c


CHAIN X3Reb25P rp1a 
@57
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1641.1334]) Face(0)~
EXIT 

CHAIN X3Reb25P rp1b 
@57
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Reb25P rp1c 
@58
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1641.1334],0)~ EXIT


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",1) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN  X3Reb25P p2
@59
END 
++ @60 + p2.1
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ @61 DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@19,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @62 DO ~EraseJournalEntry(@19)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @62 DO ~EraseJournalEntry(@19)~ + ScryStartPlane
++ @63 EXIT


CHAIN X3Reb25P p2.1
@64
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",1) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25P rp2
@65
END
++ @66 + p2.1
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ @61 DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@19,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @62 DO ~EraseJournalEntry(@19)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @62 DO ~EraseJournalEntry(@19)~ + ScryStartPlane
++ @63 EXIT

APPEND X3Reb25P 

IF ~~ Scry 
SAY @67
= @68
= @69
+~PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @70 + ScryStartNotPlane 
+~PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @70 DO ~EraseJournalEntry(@19)TakePartyItem("X3HGEM")~ + ScryStartPlane 
++ @71 + Scry.1 
++ @72 + Scry.2 
++ @73 + Scry.3
END 

IF ~~ Scry.1
SAY @74
IF ~~ EXIT 
END 

IF ~~ Scry.2 
SAY @75
++ @71 + Scry.1 
++ @73 + Scry.3
END 

IF ~~ Scry.3 
SAY @76
= @77
++ @71 + Scry.1 
++ @72 + Scry.2 
END 

IF ~~ ScryStartNotPlane 
SAY @78
IF ~~ EXIT 
END 

IF ~~ ScryStartPlane 
SAY @79
IF ~~ DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Rcut03")~ EXIT  
END 

END 
