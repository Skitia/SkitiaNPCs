CHAIN IF ~Global("X3HelSummoned","GLOBAL",1)~ THEN X3Hel25 b1 
@0
DO ~SetGlobal("X3HelSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3Kal25J b1a   
IF ~IsValidForPartyDialogue("X3Vien")~ EXTERN  X3Vie25J b1b 
IF ~!IsValidForPartyDialogue("X3Vien")!IsValidForPartyDialogue("X3Kal")~ EXTERN X3Hel25 b2 

CHAIN X3Kal25J b1a 
@1
== X3Hel25 @2
EXTERN X3Hel25 b2 

CHAIN X3Vie25J b1b
@3
== X3Hel25 @4
EXTERN X3Hel25 b2 

CHAIN X3Hel25 b2  
@5
END 
++ @6 DO ~SetGlobal("X3HelSummoned","GLOBAL",2)~ + b3a
++ @7 DO ~SetGlobal("X3HelSummoned","GLOBAL",2)~ + b3b


CHAIN X3Hel25 b3a 
@8 
EXTERN X3Hel25 b4

CHAIN X3Hel25 b3b 
@9
== X3Hel25 @10 
EXTERN X3Hel25 b4

CHAIN X3Hel25 b4
@11
END 
++ @12 + b5
++ @13 + b6


CHAIN X3Hel25 b5
@14
DO ~JoinParty()~ EXIT


CHAIN X3Hel25 b6
@15
DO ~MoveToPointNoInterrupt([2198.1256]) Face(0)~ EXIT
 
// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3HelSummoned","GLOBAL",2) !Global("X3HelRomanceActive","GLOBAL",2)~ THEN X3Hel25 j1a
@16
END 
++ @17 + b5
++ @18 + j2

CHAIN X3Hel25 j2
@19
EXIT 


CHAIN IF ~Global("X3HelToBKickedOut","GLOBAL",0) !Global("X3HelRomanceActive","GLOBAL",2)~ THEN X3Hel25P p1
@20
END
++ @21 DO ~ActionOverride("X3Hel",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @22 + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @22 + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3HelApp","GLOBAL",44)~ + @23 + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3HelApp","GLOBAL",44)~ + @23 + p1d


CHAIN X3Hel25P p1a 
@24 
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2198.1256]) Face(0)~
EXIT 

CHAIN X3Hel25P p1b 
@24 
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Hel25P p1c 
@25
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2198.1256],0)~ EXIT

CHAIN X3Hel25P p1d 
@26
 DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2198.1256],0)~ EXIT

// Rep/Approval does not matter post summoning in regards to re-recruiting.
CHAIN IF ~Global("X3HelToBKickedOut","GLOBAL",1)~ THEN X3Hel25P p2
@27
END 
+~Global("X3HelToBQuest","GLOBAL",4)~+ @28 + Scry
++ @29 + p2.1
++ @30 EXIT


CHAIN X3Hel25P p2.1
@31
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",0) JoinParty()~ EXIT

APPEND X3Hel25P

IF ~~ Scry 
SAY @32
++ @33 + Scry.1 
++ @34 + Scry.2
END 

IF ~~ Scry.1
SAY @35
= @36
++ @37 DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~ + Scry.3 
++ @38 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + Scry.4 
++ @39 DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@200206)~ + Scry.5
END 

IF ~~ Scry.2
SAY @40
= @41
++ @42 DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~ + Scry.6
++ @43 DO ~IncrementGlobal("X3HelApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@200209)~ + Scry.7
++ @44 DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@200206)~ + Scry.8
END 

IF ~~ Scry.3 
SAY @45
IF ~~ DO ~AddJournalEntry(@20022,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddExperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.4 
SAY @46
IF ~~ DO ~AddJournalEntry(@20022,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddExperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.5 
SAY @47
IF ~~ + Scry.2 
END 

IF ~~ Scry.6
SAY @48
IF ~~ + Scry.9
END 

IF ~~ Scry.7
SAY @49
IF ~~ DO ~AddJournalEntry(@20021,QUEST_DONE)AddExperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.8
SAY @50
IF ~~ + Scry.9
END 

IF ~~ Scry.9
SAY @51
IF ~~ DO ~AddJournalEntry(@20021,QUEST_DONE)AddExperienceParty(6000)~ EXIT 
END  

END 
