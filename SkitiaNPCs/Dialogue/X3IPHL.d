BEGIN X3IPHL

CHAIN IF ~Global("X3IsaQuest","GLOBAL",5)~ THEN X3IPHL PreBattleMeeting
@0
DO ~SetGlobal("X3IsaQuest","GLOBAL",6)~
== X3IMavis @1
== X3IPHL @2
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @105
== X3IPHL IF ~IsValidForPartyDialogue("X3Isa")~ THEN @3
== X3IPHL IF ~!IsValidForPartyDialogue("X3Isa")~ THEN @106
END
+~!IsValidForPartyDialogue("X3Isa")~+ @4 EXTERN X3IPHL SomeStory
+~IsValidForPartyDialogue("X3Isa")~+ @4 EXTERN X3IsaJ SomeStory
++ @5 EXTERN X3IPHL DoorOpen
+~!IsValidForPartyDialogue("X3Isa")~+ @6 EXTERN X3IPHL HerTruth
+~IsValidForPartyDialogue("X3Isa")~+ @6 EXTERN X3IsaJ SomeStory
+~IsValidForPartyDialogue("X3Isa")~+ @7 EXTERN X3IsaJ NothingToDo

CHAIN X3IsaJ NothingToDo
@8
== X3IPHL @10
EXTERN X3IPHL MyTruth

CHAIN X3IPHL HerTruth 
@9
EXTERN X3IPHL MyTruth

CHAIN X3IsaJ SomeStory 
@12
EXTERN X3IPHL SomeStory

CHAIN X3IPHL SomeStory 
@13
EXTERN X3IPHL MyTruth

CHAIN X3IPHL DoorOpen 
@11
END 
IF ~IsValidForPartyDialogue("X3Isa")~ EXTERN X3IsaJ SomeStory 
IF ~!IsValidForPartyDialogue("X3Isa")~ EXTERN X3IPHL SomeStory 

CHAIN X3IPHL MyTruth 
@14
= @15
= @16
= @17
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @18
== X3IPHL IF ~IsValidForPartyDialogue("X3Emi")~ THEN @19
END 
++ @20 EXTERN X3IPHL EvidenceDead 
++ @21 EXTERN X3IMavis CounterCase
+~IsValidForPartyDialogue("X3Isa")~+ @22 EXTERN X3IMavis TolerateThis
+~!IsValidForPartyDialogue("X3Isa")~+ @22 EXTERN X3IMavis FightMavis
+~!IsValidForPartyDialogue("X3Isa")~+ @23 EXTERN X3IPHL TolerateThis
+~IsValidForPartyDialogue("X3Isa")~+ @23 EXTERN X3IPHL FightPlanarHunters

CHAIN X3IPHL EvidenceDead 
@24
EXTERN X3IMavis CounterCase 

CHAIN X3IMavis CounterCase 
@25
== X3IPHL @26
END 
+~IsValidForPartyDialogue("X3Isa")~+ @27 EXTERN X3IMavis TolerateThis
+~!IsValidForPartyDialogue("X3Isa")~+ @27 EXTERN X3IMavis FightMavis
+~IsValidForPartyDialogue("X3Isa")~+ @28 EXTERN X3IPHL TolerateThis
+~!IsValidForPartyDialogue("X3Isa")~+ @28 EXTERN X3IPHL FightPlanarHunters
+~IsValidForPartyDialogue("X3Isa")~+ @29 EXTERN X3IPHL Neutral
+~!IsValidForPartyDialogue("X3Isa")~+ @29 EXTERN X3IPHL NeutralAttack

CHAIN X3IPHL Neutral 
@30
== X3IsaJ @31
== X3IPHL @32
END
IF ~ReputationGT(Player1,12)~ EXTERN X3IsaJ LoyalToMavis
IF ~!ReputationGT(Player1,12)~ EXTERN X3IsaJ LoyalToLeader

CHAIN X3IsaJ LoyalToLeader 
@33 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @52
DO ~SetGlobal("X3EmiAppChange","GLOBAL",4)~
EXTERN X3IsaJ RevengeAtLast 

CHAIN X3IsaJ RevengeAtLast 
@107
== X3IMavis @34
EXTERN X3IArbex Support 

CHAIN X3IArbex Support
@35
== X3ITrent @36
DO ~SetGlobal("X3IMavisEnemy","GLOBAL",1)ActionOverride("X3IArbex",Enemy())ActionOverride("X3ITrent",Enemy())ActionOverride("X3IMavis",Enemy())~
EXIT 

CHAIN X3IMavis FightMavis 
@108
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @53
DO ~SetGlobal("X3EmiAppChange","GLOBAL",3)~
EXTERN X3IArbex Support 

CHAIN X3IsaJ LoyalToMavis 
@37
EXTERN X3IPHL FightPlanarHunters

CHAIN X3IPHL FightPlanarHunters
@38
DO ~SetGlobal("X3IPlanarHunterEnemy","GLOBAL",1)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @54
DO ~SetGlobal("X3EmiAppChange","GLOBAL",9)~
EXIT 

CHAIN X3IPHL NeutralAttack
@104
DO ~SetGlobal("X3IPlanarHunterEnemy","GLOBAL",1)~
EXIT 

CHAIN X3IMavis TolerateThis 
@109
== X3IsaJ @110
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @53
DO ~SetGlobal("X3EmiAppChange","GLOBAL",3)~
== X3IsaJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @111
EXTERN X3IArbex Support

CHAIN X3IPHL TolerateThis 
@112 
== X3IsaJ @55
EXTERN X3IPHL FightPlanarHunters

//Sided with Demetria
CHAIN IF ~Dead("X3IArbex")Dead("X3ITrent")Dead("X3IMavis")Global("X3IsaQuest","GLOBAL",6)~ THEN X3IPHL BattleOver 
@39
DO ~SetGlobal("X3IsaQuest","GLOBAL",7)AddJournalEntry(@6010,QUEST_DONE)AddexperienceParty(36750)~
== X3IPHL IF ~IsValidForPartyDialogue("X3Isa")~ THEN @40
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @41
== X3IPHL @42
END 
IF ~IsValidForPartyDialogue("{X3Isa")~ EXTERN X3IPHL ComeWithUs
++ @43 EXTERN X3IPHL DoNow
++ @44 EXTERN X3IPHL AsAmI
++ @45 EXTERN X3IPHL DidWell

CHAIN X3IPHL DoNow 
@46
EXTERN X3IPHL DidWell 

CHAIN X3IPHL AsAmI
@47
EXTERN X3IPHL DoNow 

CHAIN X3IPHL DidWell 
@48
END 
IF ~OR(3)InParty("HAERDALIS")InParty("X3Emi")InParty("C0Sirene")~ EXTERN X3IPHL JustNoBlooded
IF ~!InParty("HAERDALIS")!InParty("X3Emi")!InParty("C0Sirene")~ EXTERN X3IPHL FindVictory

CHAIN X3IPHL JustNoBlooded 
@49
== HAERDAJ IF ~IsValidForPartyDialogue("HAERDALIS")~ THEN @50
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @51
EXTERN X3IPHL FindVictory


CHAIN X3IPHL FindVictory 
@113 
DO ~SetGlobal("X3IPlanarHunterLeave","GLOBAL",1)EscapeArea()~
EXIT 

CHAIN X3IPHL ComeWithUs 
@56
== X3ISaJ @57
END 
++ @43 EXTERN X3IPHL DoNow
++ @44 EXTERN X3IPHL AsAmI
++ @45 EXTERN X3IPHL DidWell
++ @114 EXTERN X3IsaJ AreYouSure 

CHAIN X3IsaJ AreYouSure 
@58
END 
+~OR(2)Global("X3IsaRomance","GLOBAL",1)Global("X3IsaRomance","GLOBAL",2)~+ @89 + StandInWay
+~!Global("X3IsaRomance","GLOBAL",1)!Global("X3IsaRomance","GLOBAL",2)~+ @90 + Depart
+~OR(2)Global("X3IsaRomanceActive","GLOBAL",2)!GlobalLT("X3IsaApp","GLOBAL",45)~+ @91 + IStay
+~!Global("X3IsaRomanceActive","GLOBAL",2)GlobalLT("X3IsaApp","GLOBAL",45)~+ @91 + Depart 
++ @92 + IStay

CHAIN X3IsaJ IStay 
@93
== X3IPHL @94 
EXTERN X3IPHL DidWell 

CHAIN X3IsaJ StandInWay 
@95
END 
++ @96 + IStay 
++ @97 + Depart 

CHAIN X3IsaJ Depart 
@98 
DO ~LeaveParty()EscapeArea()~
== X3IPHL @99
EXTERN X3IPHL DidWell 

BEGIN X3IPH 

CHAIN IF ~True()~ THEN X3IPH OnlyLine 
@115
EXIT 