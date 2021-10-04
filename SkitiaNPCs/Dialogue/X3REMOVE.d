BEGIN X3REMOVE // The Bounty Hunter, I guess?
BEGIN X3RTANYA

CHAIN IF ~True()~ THEN X3REMOVE meeting
@0
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ why_me 
++ @1 DO ~SetGlobal("X3RebQuest","GLOBAL",10)~  + sending // Quest Variable check.
++ @2 + who_are
++ @3 EXIT 

CHAIN X3RebJ why_me 
@4
DO ~SetGlobal("X3RebQuest","GLOBAL",10)~
== X3REMOVE @5
== X3RebJ @6
== X3REMOVE @7
== X3RebJ @8
== X3REMOVE @9
END 
++ @10 EXTERN X3REMOVE who_Phelgrim 
++ @11 EXTERN X3REMOVE care 
++ @12 EXTERN X3REMOVE want 

CHAIN X3REMOVE care 
@13
EXTERN X3REMOVE who_Phelgrim 

CHAIN X3REMOVE want
@14
EXTERN X3REMOVE who_Phelgrim 

CHAIN X3REMOVE who_Phelgrim 
@15
== X3RebJ @16
== X3REMOVE @17
== X3RebJ @18
== X3REMOVE @19
END 
++ @20 + fight 
++ @21 EXTERN X3RebJ what_have_you_done
++ @22 DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~ + cease 

CHAIN X3RebJ what_have_you_done
@23
== X3REMOVE @24
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @25
END 
++ @26 EXTERN X3REMOVE fight 
++ @27 DO ~DisplayStringNoNameDlg(Player1,@400403)IncrementGlobal("X3RebApp","GLOBAL",-3)~  EXTERN X3REMOVE cease // Ouch, Approval lost here. 
++ @22 DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~ EXTERN X3REMOVE cease 


CHAIN X3REMOVE who_are 
@28
END 
++ @29 DO ~SetGlobal("X3RebQuest","GLOBAL",9)~ + sending // Quest Variable check.
++ @30 EXIT 

CHAIN X3REMOVE sending 
@31
END 
++ @32 + turn 
++ @33 + meek 
++ @34 + turn 

CHAIN X3REMOVE turn 
@35
== X3REMOVE @36
END 
++ @37 + married 
++ @38 + cease 
++ @39 + fight

CHAIN X3REMOVE married 
@40
END 
++ @41 DO ~DisplayStringNoNameDlg(Player1,@400416)IncrementGlobal("X3RebApp","GLOBAL",6)~ + cease  
++ @42 DO ~DisplayStringNoNameDlg(Player1,@400409)IncrementGlobal("X3RebApp","GLOBAL",-9)~  + cease 
++ @43 + fight 

CHAIN X3REMOVE meek 
@44
END 
++ @37 + married 
++ @38 + cease 
++ @39 + fight 

CHAIN X3REMOVE fight
@45
DO ~AddJournalEntry(@40007,QUEST_DONE)Enemy()ActionOverride("X3RTANYA",Enemy())~ EXIT 

CHAIN X3REMOVE cease 
@46
DO ~AddJournalEntry(@40006,QUEST_DONE)EscapeArea()ActionOverride("X3RTANYA",EscapeArea())~ EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Reb")~ THEN X3RTanya meeting_1
@47
== X3RebJ @48
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Reb")~ THEN X3RTanya meeting_2
@49
EXIT 
