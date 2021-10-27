/* Note: START.d initiates the Five's NPC dialogues, but no one else's. */

//This very specific version of Recorder's Post Party leaves for good, presumably seeking out Raban or rejoining him.
CHAIN IF ~Global("X3RebKickedOut","LOCALS",0)AreaCheck("AR1512")InParty("IMOEN2")~ THEN X3RebP ImoenDepart
@0
END 
++ @1 DO ~SetGlobal("X3RebKickedOut","LOCALS",1)EscapeArea()~ EXIT 
++ @2 DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3RebVampire","GLOBAL",2)~ THEN X3RebP VampireSave 
@3 
DO ~SetGlobal("X3RebVampire","GLOBAL",3)~
== X3RFER @4
== X3RebP @5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @6
END 
++ @7 + VS.1 
++ @8 + VS.6
++ @9 + VS.2

CHAIN X3RebP VS.1 
@10
= @11
END 
++ @12 + VS.7
++ @13 + VS.4 
++ @14 + VS.3

CHAIN X3RebP VS.7
@15
EXTERN X3RebP VS.3

CHAIN X3RebP VS.3 
@16
END 
IF ~~ DO ~ActionOverride("X3RFER",DestroySelf())JoinParty()
SetGlobal("X3RebKickedOut","LOCALS",0)~ SOLVED_JOURNAL @40035
EXIT 

CHAIN X3RebP VS.4 
@17
EXTERN X3RebP VS.3

CHAIN X3RebP VS.2 
@18
EXTERN X3RebP VS.1 



CHAIN X3RebP VS.6 
@19
EXTERN X3RebP VS.1


CHAIN IF ~Global("X3RMSpell","GLOBAL",4)Global("X3RebKickedOut","LOCALS",1)~ THEN X3RebP nojoinRaban
@20
EXIT 
//Only would fire if the PC somehow found a way to get rid of Recorder at -90 approval or less.
CHAIN IF ~GlobalLT("X3RebApp","GLOBAL",-89)~ THEN X3RebP nojoin2 
@21
EXIT 

CHAIN IF ~ReputationLT(Player1,6)~ THEN X3Reb rep-low 
@22
EXIT 

CHAIN IF ~ReputationLT(Player1,6)~ THEN X3RebP rep-low2 
@23
EXIT 
// Unlike other NPCs, Recorder will repeat her first conversation until do you remember me or what do you do here are selected.
CHAIN IF ~Global("X3RebMet","GLOBAL",0)~ THEN X3Reb m1 
@24
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ m2a
IF ~!IsValidForPartyDialogue("X3Emi")~ EXTERN X3Reb m2b

CHAIN X3EmiJ m2a 
@25
== X3Reb @26
== X3EmiJ @27 
EXTERN X3Reb m2b 

CHAIN X3Reb m2b 
@28
== X3RMOM @29
== X3Reb @30
END 
++ @31 DO ~SetGlobal("X3RebMet","GLOBAL",1)SetGlobal("X3RebPartyBG1","GLOBAL",1)~ + m3a 
++ @32 EXTERN X3RMom m3b 
++ @33 + m0a

CHAIN X3Reb m0a
@34
EXIT 

CHAIN X3Reb m0b 
@35
EXIT 

CHAIN X3Reb m3a 
@36
EXTERN X3RMOM m4 

CHAIN X3RMom m3b 
@37
== X3Reb @38
== X3RMom @39
END 
++ @40 DO ~SetGlobal("X3RebMet","GLOBAL",1)~ + m4
++ @41 DO ~SetGlobal("X3RebMet","GLOBAL",1)~ + m4
++ @42 + m3c

CHAIN X3RMom m3c
@43
EXIT 

CHAIN X3RMOM m4 
@44
END 
IF ~Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3Reb m5a 
IF ~!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3Reb m5b 

CHAIN X3Reb m5a 
@45
EXTERN X3Reb m6 

CHAIN X3Reb m5b 
@46
== X3Reb @47
END 
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m5c 
IF ~OR(2)!IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",0)~ EXTERN X3Reb m6 

CHAIN X3EmiJ m5c 
@48
EXTERN X3Reb m6 

CHAIN X3Reb m6 
@49 
END 
++ @50 + m7a 
++ @51 + m7b 
++ @52 + m7c 

CHAIN X3Reb m7a
@53
EXTERN X3Reb m8 

CHAIN X3Reb m7b 
@54
== X3RMom @55
EXTERN X3Reb m8

CHAIN X3Reb m7c 
@56
EXTERN X3Reb m8 

CHAIN X3Reb m8 
@57
== X3RMOM @58
== X3Reb @59
END 
++ @60 + m9
++ @61 + m0b 
++ @62 + m0b 

CHAIN X3Reb m9
@63 DO ~JoinParty()~ 
== X3RMOM @64
== X3RebJ @65
END 
IF ~IsValidForPartyDialogue("X3Kal")Global("X3RebPartyBG1","GLOBAL",1)Global("X3KalPartyBG1","GLOBAL",1)~ EXTERN X3KalJ m10a  
IF ~IsValidForPartyDialogue("X3Kal")OR(2)!Global("X3RebPartyBG1","GLOBAL",1)!Global("X3KalPartyBG1","GLOBAL",1)~ EXTERN X3KalJ m10b
IF ~!IsValidForPartyDialogue("X3Kal")~ EXIT 

CHAIN X3KalJ m10a 
@66
== X3RebJ @67
== X3KalJ @68
EXIT 

CHAIN X3KalJ m10b 
@69
== X3RebJ @70
== X3KalJ @71
EXIT 

CHAIN IF ~Global("X3RebMet","GLOBAL",1)~ THEN X3Reb remeet
@72
END 
++ @73 + m9
++ @74 EXIT 




CHAIN IF ~Global("X3RebKickedOut","LOCALS",0)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3RebP p1
@75
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @76 + p2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @76 + p2b
 	++ @77 DO ~JoinParty()~ EXIT

 
CHAIN X3RebP p2a
@78
 END 
+~!IsValidForPartyDialogue("X3Emi")~+ @79 DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT 
+~IsValidForPartyDialogue("X3Emi")~+ @79 EXTERN X3EmiJ p2d 
++ @80 + p2c
++ @81 DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP p2b
@82
END
++ @83 DO ~SetGlobal("X3RebKickedOut","LOCALS",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR0319",[504.290],W)~ EXIT
++ @84 DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP p2c 
@85
DO ~SetGlobal("X3RebKickedOut","LOCALS",1) EscapeAreaMove("AR0406",1606,1710,SW)~ EXIT

CHAIN X3EmiJ p2d 
@86
== X3Reb @87
DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT

CHAIN IF ~Global("X3RebKickedOut","LOCALS",1)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3RMSpell","GLOBAL",4)~ THEN X3RebP p4a
@88
 END 
++ @89 + p5
++ @90 + p6


CHAIN X3RebP p5
@91
DO ~SetGlobal("X3RebKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3RebP p6
@92
EXIT

CHAIN IF ~Global("X3RebKickedOut","LOCALS",0)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3RebP rp1
@93
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @94 + rp2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @94 + rp2b
 	++ @95 DO ~JoinParty()~ EXIT

 
CHAIN X3RebP rp2a
@96
 END 
+~!IsValidForPartyDialogue("X3Emi")~+ @97 DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT 
+~IsValidForPartyDialogue("X3Emi")~+ @97 EXTERN X3EmiJ rp2d 
++ @98 + rp2c
++ @99 DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP rp2b
@100
END
++ @97 DO ~SetGlobal("X3RebKickedOut","LOCALS",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR0319",[504.290],W)~ EXIT
++ @99 DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP rp2c 
@101
DO ~SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0406",1606,1710,SW)~ EXIT

CHAIN X3EmiJ rp2d 
@102
== X3Reb @103
DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT

CHAIN IF ~Global("X3RebKickedOut","LOCALS",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3RebP p4a
@104
 END 
++ @105 + rp5
++ @106 + rp6


CHAIN X3RebP rp5
@107
DO ~SetGlobal("X3RebKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3RebP rp6
@108
EXIT
