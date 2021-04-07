BEGIN X3HArv 

CHAIN IF ~Global("X3HelPreMet","GLOBAL",1)~ THEN X3Hel premeet
@0
DO ~SetGlobal("X3HelPreMet","GLOBAL",2)~
== X3HArv @1
== X3Hel @2 
== X3HArv@3
== X3Hel @4
== X3HArv @5
== X3Hel @6
== X3HArv @7
== X3Hel @8
== X3HArv @9
DO ~EscapeArea()ActionOverride("X3HJil",EscapeArea())~
EXIT 

CHAIN IF ~ReputationLT(Player1,2)~ THEN X3Hel nojoin2
@10
EXIT 


// Before this happens is a small conversation between Helga and two halflings.

CHAIN IF ~Global("X3HelMet","GLOBAL",0)~ THEN X3Hel meet
@11
DO ~SetGlobal("X3HelMet","GLOBAL",1)~
END 
++ @12 DO ~SetGlobal("X3HelPartyBG1","GLOBAL",1)~ + m1 
++ @13 + m2 
++ @14 + m3 


CHAIN X3Hel m0 
@15
== X3Hel @16
EXIT 

CHAIN X3Hel m0b 
@17
EXIT 

CHAIN X3Hel m1 
@18
END 
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X3KalJ m1.b
++ @19 + m2
+~Race(Player1,HALFLING)~+ @20 EXTERN X3Hel m4 
++ @21 + m3
++ @22 + m0

CHAIN X3KalJ m1.b
@23
== X3Hel @24
END 
++ @19 EXTERN X3Hel m2
+~Race(Player1,HALFLING)~+ @25 EXTERN X3Hel m4 
++ @21 EXTERN X3Hel m3
++ @22 EXTERN X3Hel m0

CHAIN X3Hel m2 
@26
== X3Hel @27
END
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X3Hel m3a 
IF ~~ EXTERN X3Hel m3b 

CHAIN X3Hel m3 
@28
END 
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X3Hel m3a 
IF ~!IsValidForPartyDialogue("X3Kale")~ EXTERN X3Hel m3b 

CHAIN X3Hel m3a 
@29
== X3KalJ @30
EXTERN X3Hel m3b 

CHAIN X3Hel m3b 
@31
END 
+~Global("X3HelPartyBG1","GLOBAL",1)~+ @32 + m5a
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ @32 + m5b
++ @33 + m6
++ @34 + m0 
++ @35 + m0b 

CHAIN X3Hel m4 
@36
END 
++ @37 + m3 
++ @19 + m2 
++ @38 + m0 

CHAIN X3Hel m5a
@39
EXTERN X3Hel m7

CHAIN X3Hel m6 
@40
EXTERN X3Hel m7

CHAIN X3Hel m5b
@41
EXTERN X3Hel m7 

CHAIN X3Hel m7 
@42 
END 
IF ~Global("X3HelPartyBG1","GLOBAL",1)Global("X3ViePartyBG1","GLOBAL",1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ m7a 
IF ~IsValidForPartyDialogue("X3Vie")OR(2)!Global("X3HelPartyBG1","GLOBAL",1)!Global("X3ViePartyBG1","GLOBAL",1)~ EXTERN X3VieJ m7b 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3Hel m8

CHAIN X3VieJ m7a 
@43
== X3Hel @44
EXTERN X3Hel m8

CHAIN X3VieJ m7b 
@45
== X3Hel @46
EXTERN X3Hel m8 

CHAIN X3Hel m8 
@47
 DO ~JoinParty()~ EXIT 

// Helga won't join a 1 rep or a -90 approval party...but anyone else is fine.~
CHAIN IF ~ReputationGT(Player1,1)GlobalGT("X3HelApp","GLOBAL",-90)~ THEN X3Hel remeet
@48
END
++ @49 + m8
++ @50 + reject 

CHAIN X3Hel reject 
@51
EXIT 

CHAIN IF ~ReputationLT(Player1,2)~ THEN X3HelP nojoin1
@52
EXIT 

CHAIN IF ~GlobalLT("X3HelApp","GLOBAL",-89)~ THEN X3HelP nojoin2 
@53
EXIT 

// Helga isn't as concerned about the underdark. Morph into one P style. 


CHAIN IF ~Global("X3HelKickedOut","LOCALS",0)~ THEN X3HelP p1
 @54
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @55 + p2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @55 + p2b
 	++ @56 + p3

 
CHAIN X3HelP p2a
 @57
 END 
+~IsValidForPartyDialogue("X3Kal")~+ @58 DO ~SetGlobal("X3HelKickedOut","LOCALS",1) ActionOverride("X3Hel",EscapeAreaMove("AR0709",968,441,SW))~ EXIT 
+~!IsValidForPartyDialogue("X3Kal")~+ @58 EXTERN X3KalJ p2d 
++ @59 + p2c
++ @60 DO ~SetGlobal("X3HelKickedOut","LOCALS",1)~ EXIT


CHAIN X3HelP p2b
@61
END
++ @62 DO ~SetGlobal("X3HelKickedOut","LOCALS",1) ActionOverride("X3Hel",EscapeAreaMove("AR0709",968,441,6))~ EXIT
++ @60 DO ~SetGlobal("X3HelKickedOut","LOCALS",1)~ EXIT


CHAIN X3HelP p2c 
 @63
DO ~SetGlobal("X3HelKickedOut","LOCALS",1) EscapeAreaMove("AR0406",932,1432,E)~ EXIT

CHAIN X3KalJ p2d 
@64
== X3Hel @65
DO ~SetGlobal("X3HelKickedOut","LOCALS",1) ActionOverride("X3Hel",EscapeAreaMove("AR0709",968,441,SW))~ EXIT

CHAIN X3HelP p3 
@66
DO ~JoinParty()~ EXIT


CHAIN IF ~Global("X3HelKickedOut","LOCALS",1)~ THEN X3HelP p4a
 @67
 END 
++ @68 + p5
++ @69 + p6


CHAIN X3HelP p5
@70
DO ~SetGlobal("X3HelKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3HelP p6
@71
EXIT

