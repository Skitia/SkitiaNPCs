/* Quest */
/* 
	Valygar Edits
*/
/* This series of Alter Trans adds some death checks, so if we've already started the planar sphere quest, it can be acknowledged.*/
ALTER_TRANS VALYGAR// file name
BEGIN 0 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("TOLGER")!Dead("TOLGER2")Global("HiredByCowled","GLOBAL",1)
OR(2)
	!InParty("Korgan")  // Korgan
	!See("Korgan")  // Korgan
~
END

ALTER_TRANS VALYGAR// file name
BEGIN 0 END // state number (can be more than one)
BEGIN 6 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("TOLGER")!Dead("TOLGER2")Global("HiredByCowled","GLOBAL",1)
InParty("Korgan")  // Korgan
See("Korgan")  // Korgan
~
END

ALTER_TRANS VALYGAR// file name
BEGIN 9 END // state number (can be more than one)
BEGIN 0 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("Lavok02")Global("HiredByCowled","GLOBAL",1)  
~
END

ALTER_TRANS VALYGAR// file name
BEGIN 9 END // state number (can be more than one)
BEGIN 2 4 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("Lavok02")  
~
END

ALTER_TRANS VALYGAR// file name
BEGIN 13 END // state number (can be more than one)
BEGIN 0 1 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("Lavok02")  
~
END

ALTER_TRANS VALYGAR// file name
BEGIN 20 END // state number (can be more than one)
BEGIN 0 1 3 4 9 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("Lavok02")  
~
END

ALTER_TRANS VALYGAR// file name
BEGIN 20 END // state number (can be more than one)
BEGIN 5 8 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("Lavok02")Global("HiredByCowled","GLOBAL",0) 
~
END

ALTER_TRANS VALYGAR// file name
BEGIN 20 END // state number (can be more than one)
BEGIN 2 6 7 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~
  !Dead("Lavok02")Global("HiredByCowled","GLOBAL",1) 
~
END

/* These Extend Bottoms add the player input lines for Tolgeria's death or Lavok's. */
EXTEND_BOTTOM VALYGAR 0 
+~Global("HiredByCowled","GLOBAL",1)OR(2)Dead("TOLGER")Dead("TOLGER2")~+ @12 EXTERN VALYGAR Tolgerias_Dead
END 

EXTEND_BOTTOM VALYGAR 9 
+~Dead("Lavok02")~+ @13 EXTERN VALYGAR Lavok_Dead
END 

EXTEND_BOTTOM VALYGAR 13 
+~Dead("Lavok02")~+ @13 EXTERN VALYGAR Lavok_Dead
END 

EXTEND_BOTTOM VALYGAR 9 
+~Dead("Lavok02")~+ @14 EXTERN VALYGAR Lavok_Defeated
END 

EXTEND_BOTTOM VALYGAR 13 
+~Dead("Lavok02")~+ @14 EXTERN VALYGAR Lavok_Defeated
END 

EXTEND_BOTTOM VALYGAR 20 
+~Dead("Lavok02")~+ @14 EXTERN VALYGAR Lavok_Defeated
END 

EXTEND_BOTTOM VALYGAR 20 
+~Dead("Lavok02")~+ @13 EXTERN VALYGAR Lavok_Defeated
END 

CHAIN VALYGAR Lavok_Dead 
@15
DO ~SetGlobal("LavokDead","GLOBAL",1)~
EXTERN VALYGAR Lavok_End

CHAIN VALYGAR Lavok_Defeated 
@16
DO ~SetGlobal("LavokDead","GLOBAL",1)~
EXTERN VALYGAR Lavok_End

//Ultimately it circles back to the same talk Valygar would give when you leave the Planar Sphere after Lavok's death, but shortened since he wasn't with you.
CHAIN VALYGAR Lavok_End 
#58280
= #58281
= #58284
= @17
END 
++ #58286 + JoinNormal
++ #58287 + JoinTemp
++ #58288 + GoHome
++ #58289 + GoneForever 

CHAIN VALYGAR GoneForever 
#18701
DO ~ActionOverride("hervo",DestroySelf())
LeaveParty()
EscapeArea()~
EXIT 


CHAIN VALYGAR GoHome 
#18700
DO
~ SetLeavePartyDialogFile()SetGlobal("KickedOut","LOCALS",1)EscapeAreaMove("AR0326",451,233,S)~
EXIT 

CHAIN VALYGAR JoinTemp 
#18699
DO 
~DestroyItem("misc7l")  // Valygar's Body
JoinParty()~
EXIT 

CHAIN VALYGAR JoinNormal
#18698
DO ~DestroyItem("misc7l")  // Valygar's Body
JoinParty()~
EXIT 

CHAIN VALYGAR Tolgerias_Dead
@11
EXTERN VALYGAR 11

/* 
	End Valygar Edits
*/

/*
	Begin Tolgerias Edit 
*/
CHAIN IF ~Global("TalkedToTolgerias","GLOBAL",1)~ THEN TOLGER2 HowIn
@22
DO ~ActionOverride("tolmag01",Enemy())
Enemy()~
EXIT 

/*
	End Tolgerias Edit
*/

/*

SLSHOP02 Extension //Use AddStoreItem to add it to the store after she agrees to sell it. (You can also add one to her person.)

*/

EXTEND_BOTTOM SLSHOP02 0
+~GlobalGT("X3IsaQuest","GLOBAL",0)Global("X3IStone","LOCALS",0)~+ @18 DO ~SetGlobal("X3IStone","LOCALS",1)AddStoreItem("SLSHOP02","X3IWARD",1,1)~ EXTERN SLSHOP02 Stone
END 

EXTEND_BOTTOM SLSHOP02 3
+~GlobalGT("X3IsaQuest","GLOBAL",0)Global("X3IStone","LOCALS",0)~+ @18 DO ~SetGlobal("X3IStone","LOCALS",1)AddStoreItem("SLSHOP02","X3IWARD",1,1)~ EXTERN SLSHOP02 Stone
END 

CHAIN SLSHOP02 Stone
@19
= @20
END 
++ @21 DO ~StartStore("slshop02",LastTalkedToBy)~ EXIT 
++ #19982 + 4
/*

END SLSHOP02 Extension

*/

/* Reminders */
CHAIN IF ~Global("X3IsaQuestReminder","LOCALS",2)~ THEN X3IsaJ Reminder1
@0
DO ~SetGlobal("X3IsaQuestReminder","LOCALS",3)SetGlobalTimer("X3IsaReminder","GLOBAL",SEVEN_DAYS)~
EXIT 

CHAIN IF ~Global("X3IsaQuestReminder","LOCALS",4)~ THEN X3IsaJ Reminder2
@1
DO ~SetGlobal("X3IsaQuestReminder","LOCALS",5)~
END 
++ @2 + ReminderAnotherWeek
++ @3 + ReminderAnotherWeek
++ @4 + ReminderAnotherWeek
++ @5 + ReminderCruel
++ @6 + ReminderLeave

CHAIN X3IsaJ ReminderAnotherWeek 
@7
DO ~SetGlobalTimer("X3IsaReminder","GLOBAL",SEVEN_DAYS)~
EXIT 

CHAIN X3IsaJ ReminderCruel
@8
DO ~LeaveParty()EscapeArea()~
EXIT 

CHAIN X3IsaJ ReminderLeave
@9
DO ~LeaveParty()EscapeArea()~
EXIT 

CHAIN IF ~Global("X3IsaQuestReminder","LOCALS",6)~ THEN X3IsaJ Reminder3
@10
DO ~SetGlobal("X3IsaQuestReminder","LOCALS",7)LeaveParty()EscapeArea()~
EXIT 
/* First Quest Talk */
CHAIN IF ~Global("X3IsaQuestTalk1","LOCALS",1)~ THEN X3IsaJ FirstQuestTalk
@23
DO ~SetGlobal("X3IsaQuestTalk1","LOCALS",2)~
END 
++ @24 + QuestAngry
++ @25 + QuestAngry
++ @26 + DoQuestLater
++ @27 EXIT 

CHAIN X3IsaJ DoQuestLater 
@28
EXTERN X3IsaJ QuestAngry

CHAIN X3IsaJ QuestAngry 
@29
END 
++ @30 + QuestMistake
++ @31 + QuestMistake
++ @32 + QuestMistake 

CHAIN X3IsaJ QuestMistake
@33
END 
++ @34 + QuestMyMistake
++ @35 + QuestNoMoreDeath
++ @36 + QuestGoBack

CHAIN X3IsaJ QuestMyMistake 
@37
EXTERN X3IsaJ QuestYearsMistakes

CHAIN X3IsaJ QuestYearsMistakes 
@38
EXIT

CHAIN X3IsaJ QuestNoMoreDeath 
@39
EXTERN X3IsaJ QuestYearsMistakes

CHAIN X3IsaJ QuestGoBack 
@40   
EXTERN X3IsaJ QuestYearsMistakes

/* Last Quest Talk */

CHAIN IF ~Global("X3IsaQuestTalk2","LOCALS",1)~ THEN X3IsaJ QuestEndTalk
@41
END 
IF ~Dead("X3IMavis")Dead("X3IPHL")~ DO ~SetGlobal("X3IsaAppChange","GLOBAL",8)SetGlobal("X3IsaQuestTalk2","LOCALS",2)~ EXTERN X3IsaJ QuestEndAllDead
IF ~!Dead("X3IMavis")Dead("X3IPHL")~ DO ~SetGlobal("X3IsaAppChange","GLOBAL",9)SetGlobal("X3IsaQuestTalk2","LOCALS",2)~ EXTERN X3IsaJ SavedMavis
IF ~Dead("X3IMavis")!Dead("X3IPHL")~ DO ~SetGlobal("X3IsaAppChange","GLOBAL",9)SetGlobal("X3IsaQuestTalk2","LOCALS",2)~ EXTERN X3IsaJ KilledMavis

CHAIN X3IsaJ QuestEndAllDead 
@42
END 
IF ~Global("X3IPlanarHunterEnemy","GLOBAL",1)~ EXTERN X3IsaJ QuestEndADMavisAlly
IF ~!Global("X3IPlanarHunterEnemy","GLOBAL",1)~ EXTERN X3IsaJ QuestEndADMavisEnemy

CHAIN X3IsaJ QuestEndADMavisAlly 
@43 
END 
++ @45 + QuestEndADRightThing
++ @47 + QuestEndStay
++ @48 + QuestEndADIAmToo

CHAIN X3IsaJ QuestEndADMavisEnemy
@44
END 
++ @46 + QuestEndHuntADOver
++ @47 + QuestEndStay
++ @48 + QuestEndADIAmToo

CHAIN X3IsaJ QuestEndADRightThing
@49
END 
++ @50 + WhyDoYouBelieve
++ @51 + QuestEndStay
++ @52 + WhyDoYouBelieve
++ @53 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + QuestEndADPity

CHAIN X3IsaJ QuestEndADIAmToo
@57
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ QuestEndHuntADOver
@58
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ QuestEndADPity 
@54
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ QuestEndStay
@55
= @56
EXIT 

CHAIN X3IsaJ WhyDoYouBelieve 
@59 
END 
++ @62 + QuestEndBestSide 
++ @60 + QuestEndHonor
++ @61 + QuestEndHonor
+~Dead("X3IMavis")Dead("X3IPHL")~+ @63 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + QuestEndNotFond

CHAIN X3IsaJ QuestEndBestSide 
@64
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ QuestEndNotFond 
@65 
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ QuestEndHonor 
@66
= @67
DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)ChangeAlignment(Myself,LAWFUL_NEUTRAL)~ 
EXIT 

CHAIN X3IsaJ KilledMavis 
@68
END 
++ @69 + KMSatisfying 
++ @70 + KMGlad
++ @71 + KMNow
++ @72 + KMCelebrate

CHAIN X3IsaJ KMSatisfying
@73
= @74
END 
++ @75 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + KMWhy
++ @76 + KMRoad
++ @77 + KMCelebrate

CHAIN X3IsaJ KMWhy
@78
= @79
EXIT 

CHAIN X3IsaJ KMCelebrate 
@80
EXIT 

CHAIN X3IsaJ KMRoad 
@81
EXIT 

CHAIN X3IsaJ KMGlad 
@82
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ KMNow 
@83
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ SavedMavis
@84
END 
IF ~~ EXTERN X3IsaJ PureMavis
IF ~~ EXTERN X3IsaJ NormalMavis 

CHAIN X3IsaJ NormalMavis 
@85
END 
++ @45 EXTERN X3IsaJ NMRightThing
++ @47 + QuestEndStay
++ @48 + QuestEndADIAmToo


CHAIN X3IsaJ PureMavis 
@86
END 
++ @45 + PMAmmends
++ @87 + PMAmmends
++ @47 + QuestEndStay

CHAIN X3IsaJ NMRightThing
@88
END 
++ @89  DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + QuestEndHaveUs
++ @90 + WhyDoYouBelieve 
++ @91 + WhyDoYouBelieve 
++ @53 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + QuestEndADPity

CHAIN X3IsaJ QuestEndHaveUs 
@92
EXTERN X3IsaJ QuestEndStay

CHAIN X3IsaJ PMAmmends 
@93
END 
++ @89  DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + QuestEndHaveUs
++ @90 + WhyDoYouBelieve 
++ @91 + WhyDoYouBelieve 
++ @53 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + QuestEndADPity

/*  ////////////////   

  End Quest Dialogue 

 ////////////////   */
 
  /*
 
 Optional Interjections and Conversation Extensions
 
 */
 
 /*  ////////////////   

  End Optional Interjections and Conversation Extensions 

 ////////////////   */
 
 /*
 
 Essential Interjections and Conversation Extensions
 
 */
 
 /*Story/Essential Interjections*/


//Celvan
CHAIN IF WEIGHT #-1
~See("X3Isa")
IsValidForPartyDialogue("X3Isa")
RandomNum(2,2)
Global("X3Isa","LOCALS",0)~ THEN CELVAN X3Isa
@123
DO ~SetGlobal("X3Isa","LOCALS",1)~
== X3IsaJ @124
EXTERN CELVAN 1


//Madam Nin
EXTEND_BOTTOM MADAM 0
IF ~Name("X3Isa",LastTalkedToBy)~ EXTERN X3IsaJ X3IsaMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Isa",LastTalkedToBy)~ EXTERN X3IsaJ X3IsaMadam
END

CHAIN X3IsaJ X3IsaMadam 
@125
EXIT 

//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Isa",LastTalkedToBy)~ EXTERN TRGYP02 X3Isag1
END

CHAIN TRGYP02 X3Isag1
@127
== X3IsaJ @128
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3IsaYOSHJ113
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @126
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa") Range("X3Isa",15)~ THEN
@129
END
++ @130 EXTERN X3IsaJ spellhold.1
++ @131 EXTERN X3IsaJ spellhold.1
++ @132 EXTERN X3IsaJ spellhold.1
//Since Interject would take this away from the other five we'll allow them to chip in with a single line of comment.
CHAIN X3IsaJ spellhold.1
@133
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @134
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @135
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @136
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @137 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @138
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3IsaFirstSlayerChange1 
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")See("X3Isa")~ THEN @139
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3IsaSecondSlayerChange0
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa") OR(2) Global("X3IsaRomanceActive","GLOBAL",1) Global("X3IsaRomanceActive","GLOBAL",2)~ THEN @140
END
++ @141 EXTERN X3IsaJ X3IsaSecondSlayerChange1
++ @142 EXTERN X3IsaJ X3IsaSecondSlayerChange1
++ @143 EXTERN X3IsaJ X3IsaSecondSlayerChange1

CHAIN X3IsaJ X3IsaSecondSlayerChange1
@144
DO ~SetGlobal("X3IsaSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3IsaSlayerSurvived1
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa") OR(2) Global("X3IsaRomanceActive","GLOBAL",1) Global("X3IsaRomanceActive","GLOBAL",2) Global("X3IsaSecondSlayerChange","GLOBAL",1)~ THEN @145
= @146
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Isa") Global("X3IsaSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

 
 //Bodhi Chapter 6
EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Isa") Global("X3IsaRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3IsaKidnap
END

CHAIN BODHIAMB X3IsaKidnap
@94
= @95
== X3IsaJ @96
== BODHIAMB @97
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3IBodhi")~ UNSOLVED_JOURNAL @60062
EXIT
//Not Caught 
I_C_T C6BODHI 0 X3IsaC6Bodhi0 
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @98
END 

//Caught 
A_T_T C6bodhi 21 ~!Global("X3IsaVampire","GLOBAL",2)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("X3IsaVampire","GLOBAL",2)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("X3IsaVampire","GLOBAL",2)~ + @99 EXTERN C6BODHI X3IsaAb
+ ~Global("X3IsaVampire","GLOBAL",2)~ + @100 EXTERN C6BODHI X3IsaAb
+ ~Global("X3IsaVampire","GLOBAL",2)~ + @101 EXTERN C6BODHI X3IsaAb
+ ~Global("X3IsaVampire","GLOBAL",2)~ + @102 EXTERN C6BODHI X3IsaAbConf
END



CHAIN C6BODHI X3IsaAbConf
@103
END
IF ~~ EXTERN C6BODHI X3IsaAb

BEGIN X3IsaV 

CHAIN C6BODHI X3IsaAb
@104
== X3IsaV @105
== C6BODHI @106 
END
IF ~~ EXTERN C6BODHI 28

EXTEND_BOTTOM DOGHMA 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3IBody")~ + @107 EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 3
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3IBody")~ + @107 EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 7
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3IBody")~ + @107 EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 9
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3IBody")~ + @107 EXTERN DOGHMA 10
END

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("C6BODHI") OR(2) Global("X3IsaVampire","GLOBAL",1) Global("X3IsaVampire","GLOBAL",2)~ + @108 EXTERN WARSAGE 6
+ ~PartyHasItem("X3IBody")~ + @109 EXTERN WARSAGE 5
END


EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3IBody")~ + @110 EXTERN IMNBOOK1 4
END


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Isa") Global("X3IsaTreeOfLife","GLOBAL",0) !Global("X3IsaRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 Kpl2
END

CHAIN PLAYER1 Kpl2
@111
DO ~SetGlobal("X3IsaTreeOfLife","GLOBAL",1)~
END
++ @112 EXTERN X3IsaJ pl2.2
++ @113 EXTERN X3IsaJ pl2.2
++ @114 EXTERN X3IsaJ pl2.2

CHAIN X3IsaJ pl2.2 
@115
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Isa") Global("X3IsaTreeOfLife","GLOBAL",0) Global("X3IsaRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 Kpl3
END

CHAIN PLAYER1 Kpl3
@116
DO ~SetGlobal("X3IsaTreeOfLife","GLOBAL",1)~
END
++ @117 EXTERN X3IsaJ pl3.1

CHAIN X3IsaJ pl3.1
@118
= @119
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3IsaIrenicusIsDead1
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @120
END

// Hell

I_C_T PLAYER1 25 X3IsaEnteringHell1
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @121
END

// Irenicus in hell

I_C_T HELLJON 7 X3IsaThirdBattleWithIrenicus
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @122
END

I_C_T HELLJON 8 X3IsaThirdBattleWithIrenicus
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @122
END

I_C_T HELLJON 9 X3IsaThirdBattleWithIrenicus
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @122
END

I_C_T HELLJON 10 X3IsaThirdBattleWithIrenicus
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @122
END

/*  ////////////////   

  End Essential Interjections

 ////////////////   */
 
 /* /////////////
 
 Friendship Talks 
 
 /////////////   */
 
 //Talk 1
 
 CHAIN IF ~Global("X3IsaTalk","LOCALS",2)~ THEN X3IsaJ FriendshipTalk1
 @186
 DO ~IncrementGlobal("X3IsaTalk","LOCALS",1)RealSetGlobalTimer("X3IsaTalkTimer","GLOBAL",3100)SetGlobal("X3IsaAppChange","GLOBAL",6)~
 = @187
 END 
 ++ @188 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",2)~ + FT1.1
 ++ @189 + FT1.2
 ++ @190 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + FT1.3
 
 CHAIN X3IsaJ FT1.1
 @191 
 EXTERN X3IsaJ FT1.2
 
 
 CHAIN X3IsaJ FT1.2
 @192
 EXTERN X3IsaJ FT1.3
 
 CHAIN X3IsaJ FT1.3
 @193
 = @194
 = @195
 END 
 ++ @196 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-2)~ + FT1.4
 ++ @197 + FT1.5
 ++ @198 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + FT1.6
 
 CHAIN X3IsaJ FT1.4
 @200
 EXTERN X3IsaJ FT1.7
 
 CHAIN X3IsaJ FT1.5
 @199
  EXTERN X3IsaJ FT1.7
 
 CHAIN X3IsaJ FT1.6
 @203
 EXTERN X3IsaJ FT1.7
 
 CHAIN X3IsaJ FT1.7 
 @202
 END 
 ++ @201 EXIT 
 +~Global("X3IsaPartyBG1","GLOBAL",1)Gender(Player1,FEMALE)~+ @204 + FT1.8
 
 CHAIN X3IsaJ FT1.8
 @205
 END 
 //Small secret bonus to the app for a prior romance mention.
 ++ @206 DO ~IncrementGlobal("X3IsaApp","GLOBAL",9)~ + FT1.9
 ++ @207 EXIT 
 
 
 CHAIN X3IsaJ FT1.9
 @208
 = @209
 = @210
 EXIT 
 
 //Talk 2
 
 CHAIN IF ~Global("X3IsaTalk","LOCALS",4)~ THEN X3IsaJ FriendshipTalk2
 @211
 DO ~IncrementGlobal("X3IsaTalk","LOCALS",1)RealSetGlobalTimer("X3IsaTalkTimer","GLOBAL",3100)SetGlobal("X3IsaAppChange","GLOBAL",6)~
END 
IF ~Global("X3IsaPartyBG1","GLOBAL",1)~ EXTERN X3IsaJ FT2MetBefore 
IF ~!Global("X3IsaPartyBG1","GLOBAL",1)~ EXTERN X3IsaJ FT2NotMet

CHAIN X3IsaJ FT2MetBefore 
@212
END 
++ @214 + F2.1
++ @215 + F2.2
++ @216 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F2.3

CHAIN X3IsaJ FT2NotMet 
@213
END 
++ @214 + F2.1
++ @215 + F2.2
++ @216 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F2.3

CHAIN X3IsaJ F2.1
@217
EXTERN X3IsaJ F2.4

CHAIN X3IsaJ F2.2
@218
EXTERN X3IsaJ F2.4

CHAIN X3IsaJ F2.3
@219
 EXTERN X3IsaJ F2.4
 
 CHAIN X3IsaJ F2.4
 @220
 = @221
 END 
 ++ @222 + F2.5
 ++ @223 + F2.6
++ @224 + F2.7 

 CHAIN X3IsaJ F2.5
 @225 
 EXTERN X3IsaJ F2.8
 
 CHAIN X3IsaJ F2.6
 @227
 EXTERN X3IsaJ F2.8
 
 CHAIN X3IsaJ F2.7
 @228
 EXTERN X3IsaJ F2.5
 
 CHAIN X3IsaJ F2.8
 @226
 END 
 ++ @229 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",2)~ + F2.9
 ++ @230 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-2)~ + F2.10
 ++ @231 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F2.11
 ++ @232 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F2.12
 
 CHAIN X3IsaJ F2.9
 @233
 EXIT 
 
 CHAIN X3IsaJ F2.10
 @234
 EXIT 
 
 CHAIN X3IsaJ F2.11
 @235
 EXIT 
 
 CHAIN X3IsaJ F2.12
 @236
 EXIT 
 
 //Friendship 3
 
 CHAIN IF ~Global("X3IsaTalk","LOCALS",6)~ THEN X3IsaJ FriendshipTalk3
 @237
 DO ~IncrementGlobal("X3IsaTalk","LOCALS",1)RealSetGlobalTimer("X3IsaTalkTimer","GLOBAL",3100)SetGlobal("X3IsaAppChange","GLOBAL",6)~
END 
++ @238 + F3.3
++ @239 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F3.1
++ @240 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F3.2
++ @241 + F3.X 

CHAIN X3IsaJ F3.X
@243
EXIT 

CHAIN X3IsaJ F3.2 
@424
EXTERN X3IsaJ F3.1

CHAIN X3IsaJ F3.1
@244
EXTERN X3IsaJ F3.3 

CHAIN X3IsaJ F3.3 
@242
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @246
== X3IsaJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @247
== X3IsaJ @248
END 
+~!Global("X3IsaPartyBG1","GLOBAL",1)~+ @249 + F3.4A
+~Global("X3IsaPartyBG1","GLOBAL",1)~+ @249 + F3.4B
+~!Global("X3IsaPartyBG1","GLOBAL",1)~+ @250 + F3.4A
+~Global("X3IsaPartyBG1","GLOBAL",1)~+ @250 + F3.4B
++ @251 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F3.5

CHAIN X3IsaJ F3.4A
@252
EXTERN X3IsaJ F3.4

CHAIN X3IsaJ F3.4B 
@256
EXTERN X3IsaJ F3.4

CHAIN X3IsaJ F3.4
@253
= @254
= @255
END 
++ @257 + F3.8
+~PartyGoldGT(99)~+ @258 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",3)DestroyGold(100)~ + F3.9
+~PartyGoldLT(100)~+ @269 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F3.11
++ @259 + F3.7
++ @262 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + F3.6

CHAIN X3IsaJ F3.7
@265
END 
++ @266 + F3.10
+~PartyGoldGT(99)~+ @258 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",3)DestroyGold(100)~ + F3.9
+~PartyGoldLT(100)~+ @269 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F3.11
++ @262 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + F3.6

CHAIN X3IsaJ F3.8
@268
END 
+~PartyGoldGT(99)~+ @258 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",3)DestroyGold(100)~ + F3.9
+~PartyGoldLT(100)~+ @269 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F3.11
++ @259 + F3.7
++ @262 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + F3.6

CHAIN X3IsaJ F3.10
@267
END 
+~PartyGoldGT(99)~+ @258 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",3)DestroyGold(100)~ + F3.9
+~PartyGoldLT(100)~+ @269 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F3.11
++ @262 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + F3.6

CHAIN X3IsaJ F3.5
@261 
END 
++ @262 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + F3.6
+~!Global("X3IsaPartyBG1","GLOBAL",1)~+ @263 + F3.4A
+~Global("X3IsaPartyBG1","GLOBAL",1)~+ @263 + F3.4B

CHAIN X3IsaJ F3.6
@264
EXIT 

CHAIN X3IsaJ F3.11
@269
EXIT 

CHAIN X3IsaJ F3.9
@270
DO ~SetGlobal("X3GaveIsaacGold","LOCALS",1)~
END 
++ @271 + F3.12
++ @272 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~  + F3.13
+~Gender(Player1,FEMALE)~+ @273 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",2)SetGlobal("X3IsaInterest","LOCALS",1)~  + F3.14F
+~!Gender(Player1,FEMALE)~+ @273 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~  + F3.14M

CHAIN X3IsaJ F3.12 
@274
EXIT 

CHAIN X3IsaJ F3.13
@275
EXIT 

CHAIN X3IsaJ F3.14F
@276
EXIT 

CHAIN X3IsaJ F3.14M
@277
EXIT 

//Friendship 4

 CHAIN IF ~Global("X3IsaTalk","LOCALS",8)~ THEN X3IsaJ FriendshipTalk4
 @278
 DO ~IncrementGlobal("X3IsaTalk","LOCALS",1)RealSetGlobalTimer("X3IsaTalkTimer","GLOBAL",3100)SetGlobal("X3IsaAppChange","GLOBAL",6)~
END 
++ @279 + F4.1
++ @280 + F4.2
++ @281 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F4.3 
++ @282 + F4.4

CHAIN X3IsaJ F4.4
@283
EXTERN X3IsaJ F4.5

CHAIN X3IsaJ F4.3
@284
EXTERN X3IsaJ F4.5

CHAIN X3IsaJ F4.2
@285
EXTERN X3IsaJ F4.5

CHAIN X3IsaJ F4.1
@286
EXTERN X3IsaJ F4.5

CHAIN X3IsaJ F4.5
@287
END 
++ @288 + F4.6
++ @289 + F4.7
++ @290 + F4.8

CHAIN X3IsaJ F4.6
@291
EXTERN X3IsaJ F4.9

CHAIN X3IsaJ F4.7
@292
EXTERN X3IsaJ F4.9

CHAIN X3IsaJ F4.8
@293
EXTERN X3IsaJ F4.9

CHAIN X3IsaJ F4.9
@294
END 
++ @295 + F4.10
++ @296 + F4.11
++ @297 + F4.10
++ @298 + F4.12

CHAIN X3IsaJ F4.10
@299
EXTERN X3IsaJ F4.11 

CHAIN X3IsaJ F4.12
@302
EXTERN X3IsaJ F4.11

CHAIN X3IsaJ F4.11
@300
= @301
EXIT 
 
//Friendship 5
CHAIN IF ~Global("X3IsaTalk","LOCALS",10)~ THEN X3IsaJ FriendshipTalk5
@303
DO ~IncrementGlobal("X3IsaTalk","LOCALS",1)SetGlobal("X3IsaAppChange","GLOBAL",6)~
END 
++ @304 + F5.1 
++ @305 + F5.2
++ @306 + F5.2
++ @307 + F5.X 

CHAIN X3IsaJ F5.X 
@308
EXIT 

CHAIN X3IsaJ F5.1
@312
EXTERN X3IsaJ F5.2

CHAIN X3IsaJ F5.2
@309
= @310
= @311
END 
++ @313 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F5.3
++ @314 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F5.4
++ @315 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",2)~ + F5.5

CHAIN X3IsaJ F5.3
@316
END 
++ @318 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F5.7
++ @319 + F5.8

CHAIN X3IsaJ F5.5
@317
END 
+~Gender(Player1,FEMALE)~+ @325 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",2)SetGlobal("X3IsaInterest","LOCALS",1)~ + F5.9 
+~Gender(Player1,MALE)~+ @325 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",2)SetGlobal("X3IsaInterest","LOCALS",1)~ + F5.9 
++ @326 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F5.9
++ @327 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F5.9
++ @328 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-3)~ + F5.7

CHAIN X3IsaJ F5.4
@321
= @322
END 
++ @318 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F5.7
++ @319 + F5.6

CHAIN X3IsaJ F5.7
@323
EXTERN X3IsaJ F5.6

CHAIN X3IsaJ F5.6
@324
EXIT 

CHAIN X3IsaJ F5.8
@329
= @330
EXIT 

CHAIN X3IsaJ F5.9
@331
END 
++ @333 + F5.6
+~Gender(Player1,MALE)~+ @332 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F5.11M
+~Gender(Player1,FEMALE)~+ @332 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)SetGlobal("X3IsaInterest","LOCALS",1)~ + F5.11F
++ @334 + F5.10

CHAIN X3IsaJ F5.10
@335
EXTERN X3IsaJ F5.6

CHAIN X3IsaJ F5.11M
@336
EXTERN X3IsaJ F5.6

CHAIN X3IsaJ F5.11F 
@337
EXTERN X3IsaJ F5.6

//Friendship 6
CHAIN IF ~Global("X3IsaTalk","LOCALS",12)~ THEN X3IsaJ Friendship6
@338
 DO ~IncrementGlobal("X3IsaTalk","LOCALS",1)SetGlobal("X3IsaAppChange","GLOBAL",6)~
END 
++ @339 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-1)~ + F6.1
++ @340 + F6.2
++ @341 + F6.2

CHAIN X3IsaJ F6.1
@342 
EXTERN X3IsaJ F6.2 

CHAIN X3IsaJ F6.2
@343
END 
+~GlobalGT("X3IsaApp","GLOBAL",30)~+ @344 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F6.4
+~GlobalGT("X3IsaApp","GLOBAL",30)~+ @345 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",2)~ + F6.4
+~!GlobalGT("X3IsaApp","GLOBAL",30)~+ @344 + F6.5
+~!GlobalGT("X3IsaApp","GLOBAL",30)~+  @345 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F6.5
++ @346 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-2)~ + F6.3

CHAIN X3IsaJ F6.3
@347
= @348
EXIT 

CHAIN X3IsaJ F6.4
@352
EXTERN X3IsaJ F6.6

CHAIN X3IsaJ F6.5
@349
= @350
EXTERN X3IsaJ F6.6

CHAIN X3IsaJ F6.6
@351
END 
++ @353 + F6.7
++ @354 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",-2)~ + F6.8
++ @355 DO ~IncrementGlobal("X3IsaAppChange","GLOBAL",1)~ + F6.7

CHAIN X3IsaJ F6.7
@356
EXIT 

CHAIN X3IsaJ F6.8
@357
EXIT 

  /* /////////////
 
 End Friendship Talks.

Begin Romance Talks 
 
 /////////////   */
 
 //Romance 1 
 CHAIN IF ~Global("X3IsaLoveTalk","LOCALS",2)~ THEN X3IsaJ RomanceTalk1
 @358
 DO ~SetGlobal("X3IsaAppChange","GLOBAL",6)IncrementGlobal("X3IsaLoveTalk","LOCALS",1)~
 END 
 ++ @359 + L1.1
 ++ @360 DO ~SetGlobal("X3IsaAppChange","GLOBAL",-1)~ + L1.X 
 ++ @361 + L1.2
 
 CHAIN X3IsaJ L1.X 
 @362
 EXIT 
 
 CHAIN X3IsaJ L1.1
 @364
 EXTERN X3IsaJ L1.2
 
 CHAIN X3IsaJ L1.2
 @363
 END 
 ++ @365 + L1.3
 ++ @366 + L1.4
 ++ @367 + L1.5
 ++ @368 DO ~SetGlobal("X3IsaAppChange","GLOBAL",-1)~ + L1.X
 
  CHAIN X3IsaJ L1.3
 @369
 END 
 ++ @371 + L1.11
 ++ @372 + L1.5
 ++ @373 DO ~SetGlobal("X3IsaAppChange","GLOBAL",-1)~ + L1.10
 
 CHAIN X3IsaJ L1.4
 @370
 END 
 ++ @371 + L1.11
 ++ @374 + L1.18
 ++ @375 + L1.17
 
 CHAIN X3IsaJ L1.5
 @376
 END 
 ++ @377 DO ~SetGlobal("X3IsaAppChange","GLOBAL",1)~ + L1.6
 ++ @378 DO ~SetGlobal("X3IsaAppChange","GLOBAL",1)~ + L1.6
 ++ @379 + L1.6
 
 CHAIN X3IsaJ L1.6
@380
= @381
END 
++ @382 + L1.9 
++ @383 + L1.8
++ @384 DO ~SetGlobal("X3IsaAppChange","GLOBAL",1)~ + L1.7

CHAIN X3IsaJ L1.7
@385
EXIT 

CHAIN X3IsaJ L1.8
@386
EXIT

CHAIN X3IsaJ L1.9
@387
EXIT  

CHAIN X3IsaJ L1.10
@388
EXTERN X3IsaJ L1.5

CHAIN X3IsaJ L1.11
@389
END 
++ @390 DO ~SetGlobal("X3IsaAppChange","GLOBAL",2)~ + L1.12
++ @391 + L1.13
++ @392 DO ~SetGlobal("X3IsaAppChange","GLOBAL",1)~ + L1.12

CHAIN X3IsaJ L1.12
@394
END 
++ @396 + L1.14
++ @397 + L1.15
++ @398 DO ~SetGlobal("X3IsaAppChange","GLOBAL",1)~ + L1.16

CHAIN X3IsaJ L1.13
@395
END 
++ @396 + L1.14
++ @397 + L1.15
++ @398 DO ~SetGlobal("X3IsaAppChange","GLOBAL",1)~ + L1.16

CHAIN X3IsaJ L1.14
@399
EXIT 

CHAIN X3IsaJ L1.15
@400
EXIT 

CHAIN X3IsaJ L1.16
@401
EXIT 

CHAIN X3IsaJ L1.17
@402
END 
++ @410 + L1.22
++ @411 + L1.23
++ @412 + L1.11

CHAIN X3IsaJ L1.18
@403
END 
++ @404 + L1.19
++ @405 + L1.20
++ @406 + L1.21

CHAIN X3IsaJ L1.19
@407
EXTERN X3IsaJ L1.5

CHAIN X3IsaJ L1.20
@408 
 EXTERN X3IsaJ L1.5
 
 CHAIN X3IsaJ L1.21
 @409
 EXTERN X3IsaJ L1.5
 
 CHAIN X3IsaJ L1.22
 @414
  EXTERN X3IsaJ L1.5
  
  CHAIN X3IsaJ L1.23
  @413
   EXTERN X3IsaJ L1.5
   /*
   //Romance Talk 2
 CHAIN IF ~Global("X3IsaLoveTalk","LOCALS",4)~ THEN X3IsaJ RomanceTalk2
 @415
 DO ~SetGlobal("X3IsaAppChange","GLOBAL",6)IncrementGlobal("X3IsaLoveTalk","LOCALS",1)~
 END 
 IF ~!Global("X3GaveIsaacGold","LOCALS",1)~  EXTERN X3IsaJ L2.MoneyDenied
 IF ~Global("X3GaveIsaacGold","LOCALS",1)~ EXTERN X3IsaJ L2.MoneyGiven
 
 CHAIN X3IsaJ L2.MoneyDenied 
 @416
 END 
 ++ @423
 
 CHAIN X3IsaJ L2.MoneyGiven 
 @417
 = @418
 END 
 ++ @419
 ++ @420
 ++ @421 + L2.MG1
 
 CHAIN X3IsaJ L2.MG1
 @422 
*/
   
     /* /////////////
 
 End Romance Talks
 
 /////////////   */
 
 // Group Kiss from PID 
CHAIN X3Isa25J Group.Kiss 
@147
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @148
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @149
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @150
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @151
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @152
== X3Isa25J @153
== X3Isa25J @154
EXIT 

APPEND X3IsaJ 

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @170
= @171
= @172
++ @173 + LBreak.1
++ @174 + LBreak.2 
++ @175 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @176
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3IsaRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @177
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3IsaRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @178
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @179
++ @180 + LBreak.5 
++ @181 + LBreak.6 
++ @182 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @183
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @184
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @185
IF ~~ EXIT 
END 

// -40 Approval 

IF ~Global("X3Break","LOCALS",1)~ Break
SAY @155
= @156
++ @157 + Break.1 
++ @158 + Break.2 
++ @159 + Break.1
END 

IF ~~ Break.1
SAY @161
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @160
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @162
++ @164 + Break.5
++ @163 + Break.4
++ @165 + Break.6 
END 

IF ~~ Break.5 
SAY @169
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.4 
SAY @168
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.6
SAY @166
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)IncrementGlobal("X3IsaApp","GLOBAL",15)DisplayStringNoNameDlg(Player1,@600619)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @167
= @168
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

END 