BEGIN X3RMOM

CHAIN IF ~GlobalTimerExpired("X3KResearch","GLOBAL")Global("X3KResearchTimer","LOCALS",1)~ THEN X3RMOM cheese_talk 
@0
DO ~SetGlobal("X3KResearchTimer","LOCALS",2)~
END 
++ @1 + cheese_t1 
++ @2 + cheese_t1 
++ @3 + cheese_t1 

CHAIN X3RMOM cheese_t1 
@4
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ interject 
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3RMOM cheese_t2 

CHAIN X3KalJ interject 
@5
EXTERN X3RMOM cheese_t2 

CHAIN X3RMOM cheese_t2 
@6
== X3RMOM @7
END 
++ @8 + cheese_t3 
++ @9 + cheese_t4
++ @10 + cheese_t3

CHAIN X3RMOM cheese_t3 
@11
DO ~SetGlobal("X3KnowledgeCheese","GLOBAL",1)AddJournalEntry(@30020,QUEST)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
EXIT 

CHAIN X3RMOM cheese_t4 
@13
EXTERN X3RMOM cheese_t3 

CHAIN IF ~Global("X3RebVampTempleTalk","GLOBAL",1)IsValidForPartyDialogue("X3Reb")~ THEN X3RMOM Recorder_Brought_Back 
@14
DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",2)~
==  X3RebJ @15
== X3RMOM @16
==  X3RebJ@17
== X3RMOM @18
EXIT 

CHAIN IF ~Global("X3RebVampire","GLOBAL",2)Global("X3RebVampTempleTalk","GLOBAL",0)~ THEN X3RMOM Recorder_Bodhi_Dead
@19
DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~
EXTERN X3RMOM Rec_Vamp 

CHAIN X3RMOM Rec_Vamp 
@20
= @21
END 
++ @22 + Rec_Vamp2 
++ @23 + Rec_Vamp2 
++ @24  + Rec_Vamp2 

CHAIN X3RMOM Rec_Vamp2
@25
= @26
= @27
END 
++ @28 + Rec_Vamp3 
++ @29 + Rec_Vamp4 
++ @30 + Rec_Vamp5 
++ @31  + Rec_Vamp6

CHAIN X3RMOM Rec_Vamp3 
@32
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @40033
EXIT 

CHAIN X3RMOM Rec_Vamp4 
@33
END 
++ @34 + Rec_Vamp3 
++ @30 + Rec_Vamp5 
++ @31 + Rec_Vamp6 

CHAIN X3RMOM Rec_Vamp5 
@35
= @36
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @40033
EXIT 

CHAIN X3RMOM Rec_Vamp6 
@37
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @40033
EXIT 




//Alternate: Talked to Priest of Oghma First. 

EXTEND_BOTTOM DOGHMA 0
IF ~Global("X3VieQuest","GLOBAL",1)Global("X3VieQuest","LOCALS",0)IsValidForPartyDialogue("X3Vie")~ DO ~SetGlobal("X3VieQuest","LOCALS",1)~ EXTERN X3VieJ Vienxay_quest_priest
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
+ ~OR(2)GlobalGT("X3VieQuest","GLOBAL",3)Global("X3RitualBook","GLOBAL",1)GLOBAL("X3RitualBook","LOCALS",0)~ + @88 DO ~SetGlobal("X3RitualBook","LOCALS",1)~ EXTERN DOGHMA Ritual
END

EXTEND_BOTTOM DOGHMA 3
IF ~Global("X3VieQuest","GLOBAL",1)Global("X3VieQuest","LOCALS",0)IsValidForPartyDialogue("X3Vie")~ DO ~SetGlobal("X3VieQuest","LOCALS",1)~ EXTERN X3VieJ Vienxay_quest_priest
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
+ ~OR(2)GlobalGT("X3VieQuest","GLOBAL",3)Global("X3RitualBook","GLOBAL",1)GLOBAL("X3RitualBook","LOCALS",0)~ + @88 DO ~SetGlobal("X3RitualBook","LOCALS",1)~ EXTERN DOGHMA Ritual
END

EXTEND_BOTTOM DOGHMA 7
IF ~Global("X3VieQuest","GLOBAL",1)Global("X3VieQuest","LOCALS",0)IsValidForPartyDialogue("X3Vie")~ DO ~SetGlobal("X3VieQuest","LOCALS",1)~ EXTERN X3VieJ Vienxay_quest_priest
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
+ ~OR(2)GlobalGT("X3VieQuest","GLOBAL",3)Global("X3RitualBook","GLOBAL",1)GLOBAL("X3RitualBook","LOCALS",0)~ + @88 DO ~SetGlobal("X3RitualBook","LOCALS",1)~ EXTERN DOGHMA Ritual
END

EXTEND_BOTTOM DOGHMA 9
IF ~Global("X3VieQuest","GLOBAL",1)Global("X3VieQuest","LOCALS",0)IsValidForPartyDialogue("X3Vie")~ DO ~SetGlobal("X3VieQuest","LOCALS",1)~ EXTERN X3VieJ Vienxay_quest_priest
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + @38 DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
+ ~OR(2)GlobalGT("X3VieQuest","GLOBAL",3)Global("X3RitualBook","GLOBAL",1)GLOBAL("X3RitualBook","LOCALS",0)~ + @88 DO ~SetGlobal("X3RitualBook","LOCALS",1)~ EXTERN DOGHMA Ritual
END

CHAIN DOGHMA Ritual 
@89
EXIT 

CHAIN DOGHMA Rec_Vamp
@39
= @40
END 
++ @41 + Rec_Vamp2 
++ @42 + Rec_Vamp2 
++ @43 + Rec_Vamp3

CHAIN DOGHMA Rec_Vamp2 
@44
= @45
END 
++ @46 EXTERN DOGHMA 17
++ @30 + Rec_Vamp4 
++ @31 + Rec_Vamp5

CHAIN DOGHMA Rec_Vamp4 
@47
EXTERN DOGHMA Rec_Vamp6 

CHAIN DOGHMA Rec_Vamp6 
@48
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @40033
EXIT 

CHAIN DOGHMA Rec_Vamp5 
@49
EXTERN DOGHMA Rec_Vamp6 

CHAIN DOGHMA Rec_Vamp3 
@50
EXTERN DOGHMA Rec_Vamp2 


CHAIN IF ~IsGabber("X3Reb")~ THEN X3RMOM Recorder_Talks 
@51
== X3RebJ @52
EXTERN X3RMOM services 

CHAIN IF ~!IsGabber("X3Reb")!Global("X3RebQuest","GLOBAL",11)~ THEN X3RMOM Player_talks 
@53
EXTERN X3RMOM services 

CHAIN X3RMOM services 
@54
END 
IF ~Global("X3VieQuest","GLOBAL",1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_quest
+~PartyHasItem("X3VBook")GlobalGT("X3RitualBook","LOCALS",0)~+ @147 DO ~TakePartyItem("X3VBook")~ + ReturnBook
+~HasItem("X3VBook","X3RMOM")!PartyHasItem("X3VBook")Global("X3RitualBook","LOCALS",2)~+ @148 DO ~SetGlobal("X3RitualBook","LOCALS",3)~ + GetBookAgain
+~PartyHasItem("X3HNote")Global("X3HZavatarQuest","GLOBAL",0)~+ @127 + FirstNote
+~PartyHasItem("X3HNote2")Global("X3HZavatarQuest","GLOBAL",1)~+ @128 + SecondNote
+ ~HasItem("X3VBook","X3RMOM")OR(2)GlobalGT("X3VieQuest","GLOBAL",3)Global("X3IsaQuest","GLOBAL",4)Global("X3RitualBook","LOCALS",0)~ + @88 DO ~SetGlobal("X3RitualBook","LOCALS",1)~ EXTERN X3RMOM Ritual
+ ~HasItem("X3VBook","X3RMOM")Global("X3RitualBook","LOCALS",1)Global("X3RMomDiscount","Global",0)~ + @157 EXTERN X3RMOM RitualReturn
+ ~HasItem("X3VBook","X3RMOM")Global("X3RitualBook","LOCALS",1)Global("X3RMomDiscount","Global",1)~ + @157 EXTERN X3RMOM RitualReturnDiscount
+~PartyHasItem("X3KCHEES")~+ @55 DO ~TakePartyItem("X3KCHEES")~ + cheese 
+~!GlobalTimerExpired("X3KResearch","GLOBAL")Global("X3KResearchTimer","LOCALS",1)~+ @56 + not_ready
+~Global("X3VieQuest","GLOBAL",1)!IsValidForPartyDialogue("X3Vie")~+ @57 + sage
+~Global("RevealUmar","GLOBAL",1) OR(8)PartyHasItem("nalbdy")PartyHasItem("PGNalBod")PartyHasItem("X3KBody")PartyHasItem("X3IBody")PartyHasItem("miscbl")PartyHasItem("miscbm")PartyHasItem("miscbn")PartyHasItem("miscbo")~+ @158 + head_priest
++ @58 DO ~StartStore("doghma",LastTalkedToBy())~ EXIT  // Temple of Oghma
++ @59 EXIT 
+~!IsGabber("X3Reb")~+ @60 + mom_does

CHAIN X3RMOM head_priest 
@159
EXIT 

CHAIN X3RMOM GetBookAgain 
@152
DO ~GiveItem("X3VBook",Player1)SetGlobal("X3RitualBook","LOCALS",3)~
EXIT 


CHAIN X3RMOM ReturnBook 
@149
END 
IF ~Global("X3RitualBook","LOCALS",1)~ EXTERN X3RMOM ReturnHalfGold 
IF ~!Global("X3RitualBook","LOCALS",1)~ EXTERN X3RMOM TakeBookBack 

CHAIN X3RMOM ReturnHalfGold 
@150
DO ~GiveGoldForce(400)~
EXTERN X3RMOM TakeBookBack 

CHAIN X3RMOM TakeBookBack
@151
DO ~SetGlobal("X3RitualBook","LOCALS",2)~
EXIT 


CHAIN X3RMom FirstNote 
@129
END 
+~PartyGoldGT(499)~+ @130 + ServicesAccepted
+~!PartyGoldGT(499)~+ @131 + TranscribeLater
++ @132 + TranscribeLater
+~IsValidForPartyDialogue("X3Reb")~+ @133 + Reduction
+~!IsValidForPartyDialogue("X3Reb")~+ @133 + NoReduction

CHAIN X3RMom SecondNote
@144
END 
+~PartyGoldGT(249)~+ @130 + ServicesAccepted
+~!PartyGoldGT(249)~+ @131 + TranscribeLater
++ @132 + TranscribeLater
+~IsValidForPartyDialogue("X3Reb")~+ @133 + Reduction
+~!IsValidForPartyDialogue("X3Reb")~+ @133 + NoReduction

CHAIN X3RMom TranscribeLater 
@135
EXIT 

CHAIN X3RMom NoReduction 
@134
END 
+~PartyGoldGT(499)~+ @130 + ServicesAccepted
+~!PartyGoldGT(499)~+ @131 + TranscribeLater
++ @132 + TranscribeLater

CHAIN X3RMom Reduction 
@136
== X3RebJ @138
== X3RMom @146
END 
+~PartyGoldGT(124)PartyHasItem("X3HNote2")~+ @130 + ServicesAccepted
+~PartyGoldGT(249)!PartyHasItem("X3HNote2")~+ @130 + ServicesAccepted
+~!PartyGoldGT(249)PartyHasItem("X3HNote2")~+ @131 + TranscribeLater
+~!PartyGoldGT(249)!PartyHasItem("X3HNote2")~+ @131 + TranscribeLater
++ @132 + TranscribeLater

CHAIN X3RMom ServicesAccepted 
@139
END 
IF ~PartyHasItem("X3HNote2")~ EXTERN X3RMom TranscribeSecondNote
IF ~!PartyHasItem("X3HNote2")~ EXTERN X3RMom TranscribeFirstNote

CHAIN X3RMom TranscribeFirstNote 
@140 
DO ~TakePartyItem("X3HNote")GiveItemCreate("X3HNote3",Player1,0,0,0)DestroyItem("X3HNote")~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @141
== JANJ IF ~IsValidForPartyDialogue("JAN")~ THEN @142
== X3VieJ IF ~OR(2)IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("JAN")IsValidForPartyDialogue("X3Vie")~ THEN @143
EXIT 

CHAIN X3RMom TranscribeSecondNote 
@145
DO ~TakePartyItem("X3HNote2")GiveItemCreate("X3HNote4",Player1,0,0,0)DestroyItem("X3HNote2")~
EXIT 

//Update this with quest checks.
CHAIN X3RMOM Ritual
@90
END 
+~Global("X3IsaQuest","GLOBAL",4)~+ @91 + Tiefling   // ~We need it for a tiefling's attempt to cleanse her heritage from herself.~
+~GlobalGT("X3VieQuest","GLOBAL",3)~+ @92 + OldElvenSpell // ~We need it to perform an old elven spell.~
+~Global("X3IsaQuest","GLOBAL",4)~+ @93 + WhoThatIs  // ~I was asked to fetch it by Mavis.~
+~GlobalGT("X3VieQuest","GLOBAL",3)~+ @94 + MostComprehensive   // ~I was asked to fetch it by Sules'terim's apprentice, Galadin.~
++ @95 + NotSureWhy   // ~I'm not sure why, we just need it.~

CHAIN X3RMOM NotSureWhy
@99
EXTERN X3RMOM CanRelease

CHAIN X3RMOM MostComprehensive 
@97
EXTERN X3RMOM CanRelease

CHAIN X3RMOM WhoThatIs
@96
EXTERN X3RMOM CanRelease

CHAIN X3RMOM OldElvenSpell
@98
EXTERN X3RMOM CanRelease


CHAIN X3RMOM Tiefling
@126
EXTERN X3RMOM CanRelease

CHAIN X3RMOM CanRelease
@100
END 
IF ~GlobalGT("X3RebApp","GLOBAL",24)~ DO ~SetGlobal("X3RMomDiscount","Global",1)~ EXTERN X3RMom Discount
IF ~!GlobalGT("X3RebApp","GLOBAL",24)~ EXTERN X3RMom NoDiscount

CHAIN X3RMOM Discount 
@101
END 
+~PartyGoldGT(499)~+ @104 DO ~TakePartyGold(500)GiveItem("X3VBook",Player1)~ + GiveRitualBook
++ @103 + OnlyOne
++ @105 + NotEnoughFunds

CHAIN X3RMOM NoDiscount 
@102
END 
+~PartyGoldGT(999)~+ @104 DO ~TakePartyGold(500)GiveItem("X3VBook",Player1)~ + GiveRitualBook
++ @103 + OnlyOne
++ @105 + NotEnoughFunds

CHAIN X3RMOM RitualReturn
@108
END 
+~PartyGoldGT(999)~+ @104 DO ~TakePartyGold(500)GiveItem("X3VBook",Player1)~ + GiveRitualBook
++ @103 + OnlyOne
++ @105 + NotEnoughFunds

CHAIN X3RMOM RitualReturnDiscount
@109
END 
+~PartyGoldGT(499)~+ @104 DO ~TakePartyGold(500)GiveItem("X3VBook",Player1)~ + GiveRitualBook
++ @103 + OnlyOne
++ @105 + NotEnoughFunds

CHAIN X3RMom OnlyOne 
@106
END 
+~PartyGoldGT(999)!Global("X3RMomDiscount","Global",1)~+ @104 DO ~TakePartyGold(1000)GiveItem("X3VBook",Player1)~ + GiveRitualBook
+~PartyGoldGT(499)Global("X3RMomDiscount","Global",1)~+ @104 DO ~TakePartyGold(500)GiveItem("X3VBook",Player1)~ + GiveRitualBook
++ @105 + NotEnoughFunds

CHAIN X3RMom NotEnoughFunds 
@107
EXIT 

CHAIN X3RMom GiveRitualBook 
@110
EXIT 

CHAIN X3RMom CantAfford
@107
EXIT 

CHAIN X3RMOM  mom_does 
@61
EXTERN X3RMOM services 

CHAIN X3RMOM not_ready 
@62
EXIT 

CHAIN X3VieJ Vienxay_quest 
@63
EXTERN X3RMOM sage 

CHAIN X3RMOM sage
@64
END 
++ @65 + inform
+~IsValidForPartyDialogue("X3Vie")~+ @66 EXTERN X3VieJ seeking 
++ @67 + personal 
+~!IsValidForPartyDialogue("X3Vie")~+ @68 + assistance 

CHAIN X3VieJ seeking 
@69
EXTERN X3RMOM inform 

CHAIN X3RMOM personal 
@70
EXTERN X3RMOM inform
 

CHAIN X3RMOM inform 
@71
DO ~RevealAreaOnMap("AR1100")IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@50002,QUEST)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ go_now
++ @72 EXTERN X3RMOM where 
++ @73 + assistance 
++ @74 EXTERN X3RMOM assistance 

CHAIN X3VieJ go_now 
@75
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @76
== X3VieJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN @77
END 
++ @72 EXTERN X3RMOM where 
++ @78 DO ~DisplayStringNoNameDlg(Player1,@500503)IncrementGlobal("X3VieApp","GLOBAL",-3)~ + priorities 
++ @74 EXTERN X3RMOM assistance 

CHAIN X3RMOM assistance 
@79
EXIT 

CHAIN X3VieJ priorities 
@80
== X3RMOM @81 
== X3VieJ @82
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @83
EXTERN X3RMOM assistance 

CHAIN X3RMOM where 
@84
== X3RMOM @85
EXIT 

CHAIN X3RMOM cheese 
@86
== X3RMOM @87
DO ~SetGlobalTimer("X3KResearch","GLOBAL",ONE_HOUR)SetGlobal("X3KResearchTimer","LOCALS",1)AddJournalEntry(@30019,QUEST)~
EXIT 

CHAIN X3VieJ Vienxay_quest_priest 
@153
== DOGHMA @154
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @155
== X3VieJ @156
EXIT 