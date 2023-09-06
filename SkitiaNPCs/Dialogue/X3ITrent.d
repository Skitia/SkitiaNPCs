BEGIN X3ITrent

CHAIN IF ~!IsValidForPartyDialogue("X3Isa")Global("X3IsaQuest","GLOBAL",0)~ THEN X3ITrent NoIsaac
@0
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Isa")Global("X3IsaQuest","GLOBAL",0)~ THEN X3ITrent FirstCon
@1
DO ~SetGlobal("X3IsaAppChange","GLOBAL",6)SetGlobal("X3IsaQuest","GLOBAL",1)~
== X3IsaJ @2
== X3ITrent @3
== X3IsaJ @4
== X3ITrent @5
END 
++ @6 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-2)~ EXTERN X3IsaJ NotPaying
++ @7 EXTERN X3ITrent PriceNotGold
++ @8 EXTERN X3ITrent GreatMinds

CHAIN X3IsaJ NotPaying 
@9
EXTERN X3ITrent PriceNotGold

CHAIN X3ITrent PriceNotGold
@10
EXTERN X3ITrent Proposal

CHAIN X3ITrent GreatMinds 
@11
EXTERN X3ITrent Proposal 

CHAIN X3ITrent Proposal 
@12 
= @13
END 
IF ~!Global("PCSphere","GLOBAL",2)IsValidForPartyDialogue("Valygar")~ EXTERN VALYGARJ NoLove
+~!Global("PCSphere","GLOBAL",2)~+ @16 EXTERN X3ITrent Beat
+~!Global("PCSphere","GLOBAL",2)InParty("Valygar")~+ @18 EXTERN X3ITrent CorthalaCan
+~!Global("PCSphere","GLOBAL",2)!InParty("Valygar")~+ @18 EXTERN X3ITrent NoValygar
+~!Global("PCSphere","GLOBAL",2)~+ @19 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ EXTERN X3ITrent NoInterest
+~!Global("PCSphere","GLOBAL",2)InParty("Valygar")~+ @20 EXTERN X3ITrent HaveValygar
+~!Global("PCSphere","GLOBAL",2)!InParty("Valygar")~+ @20 EXTERN X3ITrent NoValygar
+~Global("PowerObsidianSphere","GLOBAL",1)~+ @43 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",3)~ EXTERN X3ITrent Excellent
+~Global("PCSphere","GLOBAL",2)~+ @44 EXTERN X3ITrent QuestFailed

CHAIN IF ~Global("PCSphere","GLOBAL",2)~ THEN X3ITrent QuestFailed 
@45
== X3IsaJ @46
== X3ITrent @47
DO ~EscapeArea()AddJournalEntry(@6017,QUEST)~
EXIT 

CHAIN VALYGARJ NoLove
@14
== X3ITrent @15
END 
++ @16 EXTERN X3ITrent Beat
++ @18 EXTERN X3ITrent CorthalaCan
++ @19 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ EXTERN X3ITrent NoInterest
++ @20 EXTERN X3ITrent HaveValygar
++ @43 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",3)~ EXTERN X3ITrent Excellent

CHAIN X3ITrent Beat 
@17
END 
+~InParty("Valygar")~+ @18 EXTERN X3ITrent CorthalaCan
+~!InParty("Valygar")~+ @18 EXTERN X3ITrent NoValygar
++ @19 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ EXTERN X3ITrent NoInterest
+~InParty("Valygar")~+ @20 EXTERN X3ITrent HaveValygar
+~!InParty("Valygar")~+ @20 EXTERN X3ITrent NoValygar
++ @43 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",3)~ EXTERN X3ITrent Excellent

CHAIN X3ITrent NoInterest
@21
END 
IF ~InParty("Valygar")~ EXTERN X3ITrent HaveValygar
IF ~!InParty("Valygar")~ EXTERN X3ITrent NoValygar

CHAIN X3ITrent HaveValygar 
@23
DO ~AddJournalEntry(@6002,QUEST)~
EXIT 

CHAIN X3ITrent CorthalaCan
@22
DO ~AddJournalEntry(@6002,QUEST)~
EXIT 

CHAIN X3ITrent NoValygar
@24
= @25
= @26
DO ~AddJournalEntry(@6003,QUEST)~
EXIT 

CHAIN IF ~Global("X3IsaQuest","GLOBAL",1)~ THEN X3ITrent Return 
@27
END 
+~Global("PowerObsidianSphere","GLOBAL",1)~+ @28 + Excellent
++ @29 + NotYet

CHAIN X3ITrent NotYet
@30
EXIT 

CHAIN X3ITrent Excellent 
@31
DO ~SetGlobal("X3IsaQuest","GLOBAL",2)AddJournalEntry(@6004,QUEST)EscapeAreaMove("AR0411",3070,2572,SW)~
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @32
== X3ITrent IF ~IsValidForPartyDialogue("X3Isa")~ THEN @33
EXIT 

CHAIN IF ~Global("X3IsaQuest","GLOBAL",2)~ THEN X3ITrent PlanarSphere 
@34
END 
+~IsValidForPartyDialogue("X3Isa")~+ @35 + Summon
+~!IsValidForPartyDialogue("X3Isa")~+ @35 + BringIsaac
+~IsValidForPartyDialogue("X3Isa")~+ @37 + Lifetime
+~!IsValidForPartyDialogue("X3Isa")~+ @37 + BringIsaac
+~IsValidForPartyDialogue("X3Isa")~+ @38 + Summon
+~!IsValidForPartyDialogue("X3Isa")~+ @38 + BringIsaac

CHAIN X3ITrent BringIsaac 
@36
EXIT 

CHAIN X3Itrent Lifetime 
@39
EXTERN X3ITrent Summon 

CHAIN X3ITrent Summon 
@40
DO ~SetGlobal("X3IsaQuest","GLOBAL",3)StartCutSceneMode()ForceSpell(Myself,WIZARD_TRUE_SIGHT)Wait(1)CreateCreature("X3IMavis",[2946.2557],S)CreateCreature("X3IArbex",[3002.2516],S)CreateVisualEffectObject("SPTRUSEE","X3IMavis")CreateVisualEffectObject("SPTRUSEE","X3IArbex")Wait(2)ActionOverride("X3Isa",FaceObject("X3IMavis")Wait(1)EndCutSceneMode()ActionOverride("X3IMavis",StartDialogueNoSet(Player1))~
EXIT 

CHAIN IF ~!Dead("X3IMavis")~ THEN X3ITrent MavisAlive 
@41
EXIT 

CHAIN IF ~Dead("X3IMavis")~ THEN X3ITrent MavisDead 
@42
DO ~EscapeArea()~
EXIT 