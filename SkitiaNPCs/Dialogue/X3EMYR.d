// 
BEGIN X3EMYR 
BEGIN X3EDER 
// These two basically use the same dialogue chain. Their dialogue is always True, and they leave the area after they have finished speaking.

CHAIN IF ~True()~ THEN X3EMYR merchant_conversation
@0
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
+~IsValidForPartyDialogue("X3Emi")~+ @1 EXTERN X3EmiJ here_to_help
+~!IsValidForPartyDialogue("X3Emi")~+ @2 EXTERN X3EDER player_help
++ @3 EXIT 

CHAIN IF ~True()~ THEN X3EDER merchant_conversation
@4
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
+~IsValidForPartyDialogue("X3Emi")~+ @1 EXTERN X3EmiJ here_to_help
+~!IsValidForPartyDialogue("X3Emi")~+ @2 EXTERN X3EDER player_help
++ @3 EXIT 

CHAIN X3EDER player_help 
@5
== X3EMYR @6
== X3EDER @7
EXTERN X3EDER problem 

CHAIN X3EmiJ here_to_help
@8
== X3EDER @9
== X3EMYR @10
== X3EmiJ @11
== X3EDER @12
EXTERN X3EDER problem 

CHAIN X3EDER problem 
@13
== X3EMYR @14
== X3EDER @15
END 
++ @16 + clearly
++ @17 + reduce_prices_idea
++ @18 EXTERN X3EMYR deadly_tools

CHAIN X3EDER reduce_prices_idea 
@19
EXTERN X3EMYR walk_away 

CHAIN X3EDER clearly
@20
EXTERN X3EMYR walk_away

CHAIN X3EMYR deadly_tools
@21
== X3EDER @22
EXTERN X3EMYR walk_away 

CHAIN X3EMYR walk_away 
@23
END 
++ @24 + coin_talking
// Charisma Solution
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @25 + Myron_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @25 + Myron_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ @25 + Myron_decline
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @26 EXTERN X3EDER Derrick_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @26 EXTERN X3EDER Derrick_decline
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ @26 EXTERN X3EDER Derrick_decline
// Emily solution->Will lead to the money solution.
+~IsValidForPartyDialogue("X3Emi")~+ @27 EXTERN X3EmiJ idea_known
// If Emily isn't valid, this will auto-fail. Myron walks away.
+~!IsValidForPartyDialogue("X3Emi")~+ @28 + care_not
// if Emily is valid, this will re-direct to the Emily, what do you think solution.
+~IsValidForPartyDialogue("X3Emi")~+ @28 EXTERN X3EmiJ care_not_Emily 

CHAIN X3EMYR care_not 
@29
EXTERN X3EDER Myron_fail 

CHAIN X3EDER Myron_fail
@30
DO ~AddJournalEntry(@10006,QUEST)SetGlobal("X3EGVJTalkResult","GLOBAL",2)ActionOverride("X3EMYR",EscapeArea())EscapeArea()~ // 2 = Myron Left
EXIT  

CHAIN X3EmiJ care_not_Emily 
@31
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~
EXTERN X3EmiJ idea 

CHAIN X3EmiJ idea_known 
@32
EXTERN X3EmiJ idea 

CHAIN X3EmiJ idea 
@33
== X3EmiJ @34
EXTERN X3EMYR coin_talking 

CHAIN X3EMYR coin_talking 
@35
== X3EDER @36
END 
+~PartyGoldGT(1999)~+ @37 + coin_loan
+~PartyGoldGT(1499)RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @38 + coin_lower_loan // Success
+~PartyGoldGT(1499)RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @38 + coin_loan_reject // Fail roll
+~PartyGoldGT(1499)!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ @38 + coin_loan_reject // Charisma too low
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @39 + Myron_accept 
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @39 + Myron_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ @39 + Myron_decline
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @40 EXTERN X3EDER Derrick_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @40 EXTERN X3EDER Derrick_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ @40 EXTERN X3EDER Derrick_decline
++ @41 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + Myron_decline

CHAIN X3EMYR coin_loan 
@42
DO ~TakePartyGold(2000)~
EXTERN X3EDER quest_success 

CHAIN X3EDER quest_success 
@43
== X3EMYR @44
== X3EDER @45
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EGVJTalkResult","GLOBAL",1)AddJournalEntry(@10008,QUEST)ActionOverride("X3EMYR",EscapeArea())EscapeArea()~ // 1 = success!
EXIT 

CHAIN X3EMYR coin_lower_loan 
@46
DO ~TakePartyGold(1500)~
EXTERN X3EDER quest_success 

CHAIN X3EMYR coin_loan_reject
@47
== X3EDER @48
== X3EMYR @49
END 
+~PartyGoldGT(1999)~+ @37 + coin_loan
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @39 + Myron_accept 
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @39 + Myron_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ @39 + Myron_decline
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @40 EXTERN X3EDER Derrick_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ @40 EXTERN X3EDER Derrick_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ @40 EXTERN X3EDER Derrick_decline
++ @41 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + Myron_decline

CHAIN X3EMYR Myron_accept 
@50
EXTERN X3EDER quest_success 

CHAIN X3EMYR Myron_decline 
@51
EXTERN X3EDER Myron_fail 

CHAIN X3EDER Derrick_accept 
@52
== X3EMYR @53
EXTERN X3EDER quest_success 

CHAIN X3EDER Derrick_decline
@54
== X3EDER @55
== X3EMYR @56
== X3EDER @57
== X3EMYR @58
DO ~SetGlobal("X3EGVJTalkResult","GLOBAL",3)AddJournalEntry(@10007,QUEST)ActionOverride("X3EDER",EscapeArea())EscapeArea()~ // 3 = Derrick left
EXIT 