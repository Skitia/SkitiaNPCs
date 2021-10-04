BEGIN X3VSAMIR 
BEGIN X3VDROW 
// Contains all Underdark quest stuff for Vienxay
CHAIN IF ~!Global("PlayerLooksLikeDrow","GLOBAL",1)PartyHasItem("X3VTOME1")~ THEN X3VSAMIR beg 
@0
EXIT 

CHAIN IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)PartyHasItem("X3VTOME1")~ THEN X3VSAMIR pass 
@1
EXIT 


CHAIN IF ~Global("X3VieQuest","GLOBAL",6)~ THEN X3VSAMIR greeting 
@2
END 
++ @3 DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@50005,QUEST)~ + about 
++ @4 + miserable
++ @5 + duties

CHAIN X3VSAMIR about 
@6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @7
END 
++ @8 + guild 
++ @9 + miserable 
++ @10 + duties 

CHAIN X3VSAMIR guild 
@11
EXIT 

CHAIN X3VSAMIR miserable 
@12
EXIT 

CHAIN X3VSAMIR duties 
@13
EXIT 

CHAIN IF ~!PartyHasItem("X3VTOME1")~ THEN X3VSAMIR doom 
@14
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
DO ~GiveItem("X3VTOME1",Player1)ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())EscapeArea()~ 
EXIT 

CHAIN X3VDROW house_fail 
@38
DO ~ActionOverride("X3VDROW2",Enemy())ActionOverride("X3VDROW3",Enemy())Enemy()~ 
EXIT 

CHAIN X3VDROW strength 
@39
DO ~ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())GiveItem("X3VTOME1",Player1)EscapeArea()~ EXIT 

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
DO ~ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())GiveItem("X3VTOME1",Player1)EscapeArea()~
EXIT 