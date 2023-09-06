BEGIN X3VSAMIR 
BEGIN X3VDROW 
// Contains all Underdark quest stuff for Vienxay
CHAIN IF ~PartyHasItem("X3VSack")~ THEN X3VSAMIR sack 
@0
END 
++ @1 + TellFirst
++ @2 DO ~TakePartyItem("X3VSack")~ + TellSecond

CHAIN X3VSamir TellSecond 
@3
EXTERN X3VSamir Freedom 

CHAIN X3VSamir Freedom 
@4
DO ~AddJournalEntry(@50003,QUEST)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)DestroySelf()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @10
DO ~IncrementGlobal("X3RebAppChange","GLOBAL",9)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @11
DO ~IncrementGlobal("X3VieAppChange","GLOBAL",9)~
EXIT 

CHAIN X3VSamir TellFirst 
@5
END 
++ @6 + Cruelness
++ @2 DO ~TakePartyItem("X3VSack")~ + Freedom 

CHAIN X3VSamir Cruelness 
@7
DO ~AddJournalEntry(@50003,QUEST)EscapeArea()~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",4)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @9
DO ~IncrementGlobal("X3RebAppChange","GLOBAL",3)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @11
DO ~IncrementGlobal("X3VieAppChange","GLOBAL",9)~
EXIT 





CHAIN IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)!PartyHasItem("X3VSack")NumTimesTalkedTo(0)~ THEN X3VSAMIR drowsee
@1
END 
++ @56 + crazy
++ @57 + cantell
++ @58 + foolme

CHAIN IF ~!Global("PlayerLooksLikeDrow","GLOBAL",1)!PartyHasItem("X3VSack")NumTimesTalkedTo(0)~ THEN X3VSAMIR normalsee
@77
END 
++ @56 + crazy
++ @78 + cantell
++ @58 + foolme

CHAIN X3VSamir crazy 
@59
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayBranch
IF ~!IsValidForPartyDialogue("X3Vie")Global("X3VieQuest","GLOBAL",5)~ EXTERN X3VSamir NoVienxayBranch

CHAIN X3VSamir cantell 
@60
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayBranch
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSamir NoVienxayBranch

CHAIN X3VSamir foolme
@61
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayBranch
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSamir NoVienxayBranch

CHAIN X3VSamir NoVienxayBranch 
@62
END 
++ @63 + RunAway
++ @64 + WhatPower
++ @65 + FreeHow
++ @79 + NoTime 

CHAIN X3VSamir NoTime 
@80
DO ~AddJournalEntry(@50005,QUEST)~ 
EXIT 

CHAIN X3VSamir RunAway 
@66
EXTERN X3VSamir FreeHow 

CHAIN X3VSamir WhatPower 
@69
EXTERN X3VSamir NoOneCame

CHAIN X3VSamir NoOneCame
@70
EXTERN X3VSamir FreeHow 

CHAIN X3VSamir FreeHow 
@67
= @68
DO ~AddJournalEntry(@50005,QUEST)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @75
EXIT 

CHAIN X3VieJ VienxayBranch 
@71
== X3VSamir @72
== X3VieJ @73
== X3VSamir @74
EXTERN X3VSamir NoOneCame

CHAIN IF ~!PartyHasItem("X3VSack")!NumTimesTalkedTo(0)~ THEN X3VSAMIR nosack
@76
EXIT 


CHAIN IF ~True()~ THEN X3VDROW Greeting
@15
END 
++ @16 + gloomy 
++ @17 + tome
++ @18 EXIT 

CHAIN X3VDROW gloomy 
@19
END 
++ @20 + unsettling 
++ @21 + tome
++ @22 EXIT 

CHAIN X3VDROW unsettling 
@23
END 
++ @24 EXIT 
++ @25 + tome 

CHAIN X3VDROW tome 
@26
== X3VDROW @27
END 
++ @28 + giving 
+~!Class(Player1,MAGE_ALL)~+ @29 + not_mage 
+~Class(Player1,MAGE_ALL)~+ @29 + price 
++ @30 EXIT 

CHAIN X3VDROW giving 
@31
END 
+~CheckStatGT(Player1,16,CHR)!RandomNum(3,1)~+ @32 + house // Persuasion attempt. 66%, requires 17 or more charisma.
+~CheckStatGT(Player1,16,CHR)RandomNum(3,1)~+ @32 + house_fail // Persuasion attempt. 66%, requires 17 or more charisma.
+~CheckStatLT(Player1,17,CHR)~+ @32 + house_fail // Persuasion attempt with insufficient charisma. 
+~CheckStatGT(Player1,16,STR)!RandomNum(3,1)~+ @33 + strength // Will provoke a fight, unless with 17 or more strength, 66% chance.
+~CheckStatGT(Player1,16,STR)RandomNum(3,1)~+ @33 + strength_fail // Will provoke a fight, unless with 17 or more strength, 66% chance.
+~CheckStatLT(Player1,17,STR)~+ @33 + strength_fail // Intimidate attempt with insufficient strength. 
+~!Class(Player1,MAGE_ALL)~+ @34 + not_mage 
+~Class(Player1,MAGE_ALL)~+ @34 + price
++ @35 + nevermind 

CHAIN X3VDROW nevermind 
@36 
EXIT 

CHAIN X3VDROW house 
@37
DO ~GiveItem("X3VSack",Player1)ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())EscapeArea()~ 
EXIT 

CHAIN X3VDROW house_fail 
@38
DO ~ActionOverride("X3VDROW2",Enemy())ActionOverride("X3VDROW3",Enemy())Enemy()~ 
EXIT 

CHAIN X3VDROW strength 
@39
DO ~ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())GiveItem("X3VSack",Player1)EscapeArea()~ EXIT 

CHAIN X3VDROW strength_fail 
@40
DO ~ActionOverride("X3VDROW2",Enemy())ActionOverride("X3VDROW3",Enemy())Enemy()~ 
EXIT 

CHAIN X3VDROW not_mage 
@41
END 
+~OR(8)InParty("Imoen")InParty("Nalia")InParty("Jan")InParty("X3Vie")InParty("Edwin")InParty("NEERA")InParty("X3Reb")InParty("Aerie")~+ @42 + price
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ @43 + price // Requires 13+ charisma and succesful roll
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ @43 + house_fail 
+~CheckStatLT(Player1,14,CHR)~+ @43 + house_fail
+~CheckStatGT(Player1,13,STR)!RandomNum(3,1)~+ @44 + price // Will provoke a fight, unless with 16+ strength, 66% chance.
+~CheckStatGT(Player1,13,STR)RandomNum(3,1)~+ @44 + strength_fail 
+~CheckStatLT(Player1,14,STR)~+ @44 + strength_fail // Auto fail 
++ @35 + nevermind 

CHAIN X3VDROW price 
@45
END 
+~PartyGoldGT(4999)~+ @46 + pay // Auto success 
+~PartyGoldGT(2499)CheckStatGT(Player1,11,CHR)~+ @47 + pay// Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(2499)CheckStatLT(Player1,12,CHR)~+ @47 + pay_fail // Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(999)~+ @48 + auto_fail_1 // Auto fail. 
+~PartyGoldGT(499)~+ @49 + auto_fail_2 // Also auto fail
++ @50 + nevermind 


CHAIN X3VDROW auto_fail_2 
@51
END 
+~PartyGoldGT(4999)~+ @46 + pay // Auto success 
+~PartyGoldGT(2499)CheckStatGT(Player1,11,CHR)~+ @47 + pay// Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(2499)CheckStatLT(Player1,12,CHR)~+ @47 + pay_fail // Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(999)~+ @48 + auto_fail_1 // Auto fail. 
++ @52 + nevermind 

CHAIN X3VDROW auto_fail_1 
@53
END 
+~PartyGoldGT(4999)~+ @46 + pay // Auto success 
+~PartyGoldGT(2499)CheckStatGT(Player1,11,CHR)~+ @47 + pay// Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(2499)CheckStatLT(Player1,12,CHR)~+ @47 + pay_fail // Requires 12+ Charisma, but no randomness attached.
++ @52 + nevermind 

CHAIN X3VDROW pay_fail 
@54
END 
+~PartyGoldGT(4999)~+ @46 + pay // Auto success 
++ @52 + nevermind 

CHAIN X3VDROW pay 
@55
DO ~ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())GiveItem("X3VSack",Player1)EscapeArea()~
EXIT 