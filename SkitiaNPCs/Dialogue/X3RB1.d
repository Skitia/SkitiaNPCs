
BEGIN X3RB 

CHAIN IF ~True()~ THEN X3RB One_Liner
@0
EXIT 

BEGIN X3RB1 

CHAIN IF ~Global("X3RBanditSpawn","AR1700",2)~ THEN X3RB1 Only_Conversation 
@1
DO ~SetGlobal("X3RBanditSpawn","AR1700",3)~
END 
++ @2 + Who
++ @3 + Fee
+~PartyGoldGT(499)~+ @4 + Gold
++ @5 + Lying 
++ @6 + Attack 

CHAIN X3RB1 Attack 
@7
DO ~ActionOverride("X3RB2",Enemy())
	  ActionOverride("X3RB3",Enemy())
	  ActionOverride("X3RB4",Enemy())
	  ActionOverride("X3RB5",Enemy())
	  ActionOverride("X3RB6",Enemy())
	  Enemy()
	  ApplySpell(Myself,WARRIOR_POWER_ATTACK)~ EXIT 

CHAIN X3RB1 Lying 
@8
END 
++ @2 + Who
++ @3 + Fee
+~PartyGoldGT(499)~+ @4 + Gold
+~PartyGoldLT(500)~+ @9 + Not_Lying 
++ @6 + Attack  

CHAIN X3RB1 Fee 
@10
END 
++ @2 + Who
+~PartyGoldGT(499)~+ @4 + Gold
+~PartyGoldLT(500)~+ @9 + Not_Lying 
++ @6 + Attack 

CHAIN X3RB1 Not_Lying 
@11
END 
++ @12 + Who
++ @13 + Attack 
++ @6 + Attack  

CHAIN X3RB1 Gold 
@14 
DO ~TakePartyGold(500)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @15
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @16 
DO ~IncrementGlobal("X3HelApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@206)~
EXIT 


CHAIN IF ~Global("X3RBanditSpawn","AR1700",3)~ THEN X3RB1 Second_Conversation_Somehow 
@17
END 
++ @18 + Gem 
++ @19 + Attack 
++ @20 EXIT 

CHAIN X3RB1 Who 
@21
END 
+~OR(2)ReputationGT(Player1,16)ReputationLT(Player1,5)~+ @22 + Scared 
+~!ReputationGT(Player1,16)!ReputationLT(Player1,5)~+ @22 + Careless 
++ @23 + Attack 
++ @24 + Attack 

CHAIN X3RB1 Careless 
@25
END 
+~PartyGoldGT(499)~+ @4 + Gold
++ @6 + Attack 
+~PartyGoldLT(500)~+ @26 + Attack 

CHAIN X3RB1 Gem 
@27
END 
++ @28 + Not_For_Free 
++ @29 + Not_For_Free
++ @30 + Attack 

CHAIN X3RB1 Not_For_Free 
@31
END 
++ @32 + Afford 
+~PartyGoldGT(999)~+ @33 + Trade 
++ @30 + Attack 

CHAIN X3RB1 Trade 
@34
END 
IF ~~ DO ~TakePartyGold(1000)GiveItem("X3RGEM",Player1)ActionOverride("X3RB2",EscapeArea())ActionOverride("X3RB3",EscapeArea())ActionOverride("X3RB4",EscapeArea())
ActionOverride("X3RB5",EscapeArea())ActionOverride("X3RB6",EscapeArea())EscapeArea()~ UNSOLVED_JOURNAL @34
EXIT 

CHAIN X3RB1 Afford 
@35
EXIT 

CHAIN X3RB1 Scared 
@36
= @37
= @38
END 
IF ~~ DO ~GiveItem("X3RGEM",Player1)ActionOverride("X3RB2",EscapeArea())ActionOverride("X3RB3",EscapeArea())ActionOverride("X3RB4",EscapeArea())
ActionOverride("X3RB5",EscapeArea())ActionOverride("X3RB6",EscapeArea())EscapeArea()~ UNSOLVED_JOURNAL @34
EXIT 
