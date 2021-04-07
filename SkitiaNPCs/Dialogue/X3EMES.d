BEGIN X3EMES
// This messenger spawns and gives a message to Emily when she is in a city area that is NOT the graveyard.
CHAIN IF ~True()~ THEN X3EMES message
@0
== X3EmiJ @1
== X3EMES @2
== X3EmiJ @3
END 
++ @4 EXTERN X3EmiJ bad_timing 
++ @5 + Mithrest 
++ @6 EXTERN X3EmiJ I_want_to

CHAIN X3EmiJ I_want_to
@7
== X3EmiJ @8
END 
++ @9 + go
++ @10 + wait 
++ @11 + luck 

CHAIN X3EmiJ wait 
@12
END 
++ @13 + go
++ @14 + luck 

CHAIN X3EmiJ go 
@15
DO ~SetGlobal("X3EmiAppChange","GLOBAL",9)~
== X3EMES @16
== X3EmiJ @17
DO ~AddJournalEntry(@11,QUEST)ActionOverride("X3EMES",EscapeArea())SetGlobal("X3EmiQuest","GLOBAL",3)~ 
EXIT 

CHAIN X3EMES Mithrest 
@18
END 
++ @4 EXTERN X3EmiJ bad_timing 
++ @19 EXTERN X3EmiJ go
++ @20 DO ~SetGlobal("X3EmiAppChange","GLOBAL",3)~ EXTERN X3EmiJ luck 

CHAIN X3EmiJ bad_timing 
@21
END 
++ @13 + go
++ @14  + luck 

CHAIN X3EmiJ luck 
@22
DO ~SetGlobal("X3EmiAppChange","GLOBAL",3)~
END // Doing the quest without your presence successfully requires the support of both. Presumably, Emily surrenders in her duel, while with both supports, she takes their faith and wins.
IF ~Global("X3EGVJVote","GLOBAL",1)Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@12,QUEST)ActionOverride("X3EMES",EscapeArea())SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",1)~ EXIT 
IF ~OR(2)!Global("X3EGVJVote","GLOBAL",1)!Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@12,QUEST)ActionOverride("X3EMES",EscapeArea())SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",-1)~  EXIT 

//Emily will automatically leave the party at the chapter 7 transition area until the quest is finished.