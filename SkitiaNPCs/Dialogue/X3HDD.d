BEGIN X3HDD 

CHAIN IF ~Global("X3HelQuest","GLOBAL",7)~ THEN X3HDD talk
@0
END 
++ @1 + words
++ @2 + brag 
++ @3 + no_interest

CHAIN X3HDD words 
@4
== X3HDD @5
END 
+~IsValidForPartyDialogue("X3Hel")~+ @6 EXTERN X3HelJ action
+~IsValidForPartyDialogue("X3Hel")~+ @7 EXTERN X3HelJ action
+~IsValidForPartyDialogue("X3Hel")~+ @8 EXTERN X3HelJ regret
+~!IsValidForPartyDialogue("X3Hel")~+ @6 + intimidate 
+~!IsValidForPartyDialogue("X3Hel")~+ @7 + intimidate 
+~!IsValidForPartyDialogue("X3Hel")~+ @8 + give_up

CHAIN X3HDD brag 
@9
EXTERN X3HDD words 

CHAIN X3HDD no_interest 
@10
EXTERN X3HDD words 

CHAIN X3HelJ action 
@11
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
EXTERN X3HDD intimidate

CHAIN X3HelJ regret 
@12
DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~
EXTERN X3HDD give_up

CHAIN X3HDD intimidate 
@13
DO ~AddJournalEntry(@6,QUEST)SetGlobal("X3HelQuest","GLOBAL",8)EscapeArea()~ EXIT 

CHAIN X3HDD give_up 
@14
DO ~AddJournalEntry(@6,QUEST)SetGlobal("X3HelQuest","GLOBAL",8)EscapeArea()~ EXIT 