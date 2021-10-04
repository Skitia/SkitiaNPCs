// Gregory Von Jurgenson and Guard, who only has one line and is not worth his own file.

/*                                //

Gregory Von Jurgenson. An old blood Noble.
                                  */                               

BEGIN X3EGVJ 
BEGIN X3EGUARD 

CHAIN IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EGVJ heir_selection 
@0
EXIT 

// First time, Emily not in party. Use area code here, we don't need to refer to it outside of the scope.
CHAIN IF ~Global("EmilyNotPresent","LOCALS",0)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJQuest","GLOBAL",0)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3EGVJ Meet-Emilyless 
@1
END
++ @2 + m1.1  
++ @3 EXIT

CHAIN X3EGVJ m1.1 
@4 
END 
++ @5 + m1.2 
++ @6 + m1.3 
++ @7 + m1.4 

CHAIN X3EGVJ m1.2 
@8
DO ~SetGlobal("EmilyNotPresent","LOCALS",1)~
EXIT 

CHAIN X3EGVJ m1.3 
@9
EXIT 

CHAIN X3EGVJ m1.4 
@10
EXIT 

CHAIN IF ~Global("EmilyNotPresent","LOCALS",1)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJQuest","GLOBAL",0)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3EGVJ Meet-Emilyless 
@11
EXIT 

// Emily in party. 
CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJQuest","GLOBAL",0)See("X3Emi")IsValidForPartyDialogue("X3Emi")~ THEN X3EGVJ Meet 
@12
END 
IF ~IsValidForPartyDialogue("Nalia")~ EXTERN NALIAJ Von.1 
IF ~IsValidForPartyDialogue("Anomen")~ EXTERN ANOMENJ Von.4
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Von.2 
IF ~!IsValidForPartyDialogue("Anomen")!IsValidForPartyDialogue("Nalia")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3EmiJ Von.3 

CHAIN NALIAJ Von.1 
@13
== X3EGVJ @14
EXTERN X3EmiJ Von.3 

CHAIN X3VieJ Von.2 
@15
== X3EGVJ @16
EXTERN X3EmiJ Von.3 

CHAIN ANOMENJ Von.4
@17
== X3EGVJ @18
EXTERN X3EmiJ Von.3 

CHAIN X3EmiJ Von.3 
@19
== X3EGVJ @20
== X3EmiJ @21
== X3EGVJ@22
== X3EmiJ @23
== X3EGVJ @24
== X3EGVJ @25
== X3EGVJ @26
 END 
++ @27 EXTERN X3EGVJ Von.7
++ @28 EXTERN X3EGVJ Von.8 
++ @29 EXTERN X3EGVJ Von.6
++ @30 EXTERN X3EGVJ Von.9
++ @31 EXTERN X3EGVJ Von.8 

CHAIN X3EGVJ Von.6 
@32
END 
++ @27 EXTERN X3EGVJ Von.7
++ @28 EXTERN X3EGVJ Von.8 
++ @30 EXTERN X3EGVJ Von.9
++ @31 EXTERN X3EGVJ Von.8 

CHAIN X3EGVJ Von.9
@33
== X3EmiJ @34
== X3EGVJ @35
DO ~AddJournalEntry(@10005,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",1)~
EXIT  

CHAIN X3EGVJ Von.8 
@36
DO ~AddJournalEntry(@10005,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",1)~
EXIT  

CHAIN X3EGVJ Von.7
@37
EXTERN X3EGVJ Von.8

CHAIN IF ~Global("X3EGVJQuest","GLOBAL",1)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN X3EGVJ quest_started
@38
END 
+~IsValidForPartyDialogue("X3Emi")GlobalGT("X3EGVJTalkResult","GLOBAL",0)~+ @39 + done_Emily_here 
+~!IsValidForPartyDialogue("X3Emi")GlobalGT("X3EGVJTalkResult","GLOBAL",0)~+ @39 + done_no_Emily
++ @40 + quest_not_done 

CHAIN X3EGVJ quest_not_done 
@41
EXIT 

CHAIN X3EGVJ done_no_Emily 
@42
EXIT 

CHAIN X3EGVJ done_Emily_here 
@43
END 
IF ~Global("X3EGVJTalkResult","GLOBAL",1)~ EXTERN X3EmiJ diplomacy_worked // Diplomacy prevailed 
IF ~Global("X3EGVJTalkResult","GLOBAL",2)~ EXTERN X3EmiJ Myron_left // Myron left 
IF ~Global("X3EGVJTalkResult","GLOBAL",3)~ EXTERN X3EmiJ Derrick_left // Derrick left 

CHAIN X3EmiJ diplomacy_worked 
@44
== X3EGVJ @45
== X3EmiJ @46
== X3EGVJ @47
== X3EGVJ @48
DO ~AddJournalEntry(@10009,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",3)SetGlobal("X3EGVJVote","GLOBAL",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
EXIT 

CHAIN X3EmiJ Myron_left 
@49
EXTERN X3EGVJ quest_failed 

CHAIN X3EmiJ Derrick_left 
@50
EXTERN X3EGVJ quest_failed 

CHAIN X3EGVJ quest_failed 
@51
== X3EGVJ @52
== X3EmiJ @53
== X3EGVJ @54
DO ~AddJournalEntry(@10010,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",3)~
EXIT 

CHAIN IF ~Global("X3EGVJQuest","GLOBAL",3)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)!Global("X3EGVJVote","GLOBAL",1)~ THEN X3EGVJ upset 
@55
EXIT 

CHAIN IF ~Global("X3EGVJQuest","GLOBAL",3)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJVote","GLOBAL",1)~ THEN X3EGVJ upset 
@56
EXIT 

CHAIN IF ~True()~ THEN X3EGUARD Guard.1 
@57
EXIT 
