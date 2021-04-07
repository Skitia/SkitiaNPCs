BEGIN X3VSAGE 


CHAIN IF ~GlobalGT("X3VieQuest","GLOBAL",3)~ THEN X3VSAGE spoke_before 
@0
END 
+~PartyHasItem("X3VTOME1")~+ @1 DO ~TakePartyItem("X3VTOME1")~ + tome_recovered
+~Global("X3VieQuest","GLOBAL",4)PartyHasItem("X3VNOTES")~+ @2 DO ~TakePartyItem("X3VNOTES")IncrementGlobal("X3VieQuest","GLOBAL",1)AddexperienceParty(10000)~ + notes 
+~Global("X3VieQuest","GLOBAL",4)~+ @3 + no_notes 
++ @4 EXIT 

CHAIN X3VSAGE no_notes 
@5
EXIT 

CHAIN X3VSAGE notes 
@6
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ quest_two // Vienxay's branch 
++ @7 + reward 
++ @8 + owed
++ @9  + reward 

CHAIN X3VSAGE owed 
@10
EXTERN X3VSAGE story 

CHAIN X3VSAGE reward 
@11
EXTERN X3VSAGE story 

CHAIN X3VieJ quest_two 
@12
== X3VSAGE @13 
EXTERN X3VSAGE story 

CHAIN X3VSAGE story 
@14
== X3VSAGE @15
== X3VSAGE @16
END 
++ @17 + back 
++ @18 + lesson 
++ @19 + grander 

CHAIN X3VSAGE back 
@20
EXTERN X3VSAGE lesson 

CHAIN X3VSAGE grander 
@21
EXTERN X3VSAGE lesson 

CHAIN X3VSAGE lesson 
@22
DO ~AddJournalEntry(@4,QUEST)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_comment // Vienxay's branch 
++ @23 + recovered 
++ @24 + heart 
++ @25 + not_worth

CHAIN X3VieJ Vienxay_comment 
@26
== X3VSAGE @27
== X3VSAGE @28
== X3VieJ @29
== X3VSAGE @30
== X3VieJ @31
== X3VSAGE @32
== X3VSAGE @33
EXIT 

CHAIN X3VSAGE recovered 
@34
== X3VSAGE @35
EXIT 

CHAIN X3VSAGE heart 
@36
== X3VSAGE @37
EXIT 

CHAIN X3VSAGE not_worth 
@38
== X3VSAGE @39
EXIT 

CHAIN X3VSAGE tome_recovered 
@40
END 
++ @41 + worth_risking 
++ @42 + coin 
++ @43 + unhappy 

CHAIN X3VSAGE worth_risking 
@44
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage Vienxay_reward // Vienxay's branch 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage regular_reward // Regular branch 

CHAIN X3VSAGE regular_reward 
@45
DO ~ GiveItemCreate("X3VTOME2",Player1,1,1,1)~
== X3VSAGE @46
DO ~SetGlobal("X3VieQuest","GLOBAL",12)AddJournalEntry(@9,QUEST_DONE)EscapeArea()ReputationInc(1)AddexperienceParty(30000)~
EXIT 

CHAIN X3VSAGE coin 
@47
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage Vienxay_reward // Vienxay's branch 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage regular_reward // Regular branch 

CHAIN X3VSAGE unhappy 
@48
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage Vienxay_reward // Vienxay's branch 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage regular_reward // Regular branch 

CHAIN X3VSAGE Vienxay_reward 
@49
== X3VieJ @50
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)ChangeAlignment("X3Vie",NEUTRAL)~
== X3VSAGE @51
EXTERN X3VSAGE regular_reward 

CHAIN IF ~Global("X3VieQuest","GLOBAL",3)!NumTimesTalkedTo(0)~ THEN X3VSAGE meeting2
@52
END 
++ @53 + assist 
++ @54 + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ @55 + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ @55 + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ @55 + gold_fail 

CHAIN IF ~Global("X3VieQuest","GLOBAL",3)NumTimesTalkedTo(0)~ THEN X3VSAGE meeting 
@56
END 
++ @57 + hunters
++ @58 + Sules_Terim 
++ @59 + hunters
++ @60 + no_time


CHAIN X3VSAGE no_time 
@61
EXIT 

CHAIN X3VSAGE Sules_Terim 
@62
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_talks
++ @63 + book_info3 
++ @64 + quest 
++ @65 + no_time 

CHAIN X3VSAGE hunters 
@66
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_talks 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSAGE quest 

CHAIN X3VieJ Vienxay_talks 
@67
== X3VSAGE @68
== X3VieJ @69
== X3VSAGE @70
== X3VieJ @71
== X3VSAGE @72
EXTERN X3VSage quest 

CHAIN X3VSAGE quest 
@73
END 
++ @74 + yourself 
++ @53 + assist 
+~IsValidForPartyDialogue("X3Vie")~+ @75 + book_info 
+~!IsValidForPartyDialogue("X3Vie")~+ @75 + book_info2
++ @76 + book_info3
++ @54 DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 

CHAIN X3VSAGE yourself 
@77
END 
++ @53 + assist 
+~IsValidForPartyDialogue("X3Vie")~+ @75 + book_info 
+~!IsValidForPartyDialogue("X3Vie")~+ @75 + book_info2
++ @76 + book_info3
++ @54 DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 

CHAIN X3VSAGE assist 
@78
DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@3,QUEST)~
EXIT 
 
 CHAIN X3VSAGE book_info 
 @79
 == X3VieJ @80
 == X3VSAGE @81
 END 
++ @53 + assist 
++ @54 DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ @55 + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ @55 + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ @55 + gold_fail 
 
CHAIN X3VSAGE gold_fail
@82
DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@3,QUEST)~
EXIT 

CHAIN X3VSAGE gold 
@83
DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)GivePartyGold(100)AddJournalEntry(@3,QUEST)~
EXIT 

CHAIN X3VSAGE book_info2 
@84
END 
++ @53 + assist 
++ @54 DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ @55 + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ @55 + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ @55 + gold_fail 
  
CHAIN X3VSAGE book_info3 
@85
END 
++ @53 + assist 
++ @54 DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ @55 + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ @55 + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ @55 + gold_fail 
 