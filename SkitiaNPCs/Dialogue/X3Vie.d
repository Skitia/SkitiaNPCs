/* Note: START.d initiates the Five's NPC dialogues, but no one else's. */



BEGIN X3VG
//Will probably never fire, as 1: The approval lower limit was set higher, and 2, they depart for good.
//Commenting out for historical reasons.
/*CHAIN IF ~GlobalLT("X3VieApp","GLOBAL",-89)~ THEN X3VieP nojoin2 
~Get away from me. You've been cruel enough.~ [X3Blank]
EXIT */

CHAIN IF ~Global("X3ViePreMet","GLOBAL",1)~ THEN X3VG meet
@0
EXTERN X3Vie m1 

CHAIN X3Vie m1
@1
== X3VG @2
END 
	++ @3 DO ~SetGlobal("X3ViePartyBG1","GLOBAL",1)~ EXTERN X3Vie m1a
	++ @4 EXTERN X3Vie m3a
	++ @5 EXTERN X3VG m2
	
CHAIN X3Vie m1a
@6
END
IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ EXTERN X3HelJ m1.2a 
IF ~IsValidForPartyDialogue("X3Hel")!Global("X3HelPartyBG1","GLOBAL",1)~ EXTERN X3HelJ m1.2b
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3a
IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3b
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3Vie m3b 

CHAIN X3HelJ m1.2a 
@7 
EXTERN X3Vie m1.25 

CHAIN X3HelJ m1.2b
@8 
EXTERN X3Vie m1.25 

CHAIN X3Vie m1.25
@9
END 
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3a
IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3b
IF ~!IsValidForPartyDialogue("X3Emi")~ EXTERN X3Vie m3b 

CHAIN X3EmiJ m1.3a 
@10
EXTERN X3Vie m3b 

CHAIN X3EmiJ m1.3b 
@11
EXTERN X3Vie m3b

CHAIN X3Vie m3a
@12
== X3VG @13
EXTERN X3VG m2 

CHAIN X3Vie m3b 
@14
== X3VG @15
EXTERN X3VG m2 

CHAIN X3VG m2 
@16
END 
+~PartyGoldGT(599)~+  @17 DO ~TakePartyGold(600)~ + m4 
++ @18 + m5 
++ @19 + m5 

CHAIN X3VG m4 
@20 
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)EscapeArea()SetGlobal("X3VieMet","GLOBAL",-1)
Wait(3)
ActionOverride("X3Vie",StartDialogueNoSet(Player1))~ EXIT 

CHAIN X3VG m5 
@21
== X3Vie @22
DO ~SetGlobal("X3VieMet","GLOBAL",-2)ActionOverride("X3VG",EscapeArea())MoveToPoint([1934.1863])MoveBetweenAreas("AR1005",[830.409],14)~ EXIT 

CHAIN IF ~Global("X3VieMet","GLOBAL",-2)~ THEN X3Vie debt 
@23
EXIT 

EXTEND_TOP PRISONK1 0 #2
+~Global("X3VieMet","GLOBAL",-2)~+ @24 EXTERN PRISONK1 ViePrison
END 

CHAIN PRISONK1 ViePrison 
@25
END 
+~PartyGoldGT(599)~+  @17 DO ~TakePartyGold(600)~ + prison1  
++ @18 + prison2
++ @19 + prison2

CHAIN PRISONK1 prison1 
@26 
DO ~SetGlobal("X3VieMet","GLOBAL",-1)~ EXIT 

CHAIN PRISONK1 prison2 
@27 
EXIT 

CHAIN IF ~Global("X3VieMet","GLOBAL",-1)~ THEN X3Vie meet2 
@28
DO ~SetGlobal("X3VieMet","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@513)~ // Finally, at 1.
END 
IF ~!Global("X3ViePartyBG1","GLOBAL",1)~ EXTERN X3Vie name 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ @29 + joinagain
++ @30 + free 

CHAIN X3Vie name 
@31 
END 
++ @32 + forme
++ @33 + forme

CHAIN X3Vie forme 
@34
END 
++ @35 + join 
++ @36 + reject 

CHAIN X3Vie free 
@37
== X3Vie @38
END 
++ @39 + join 
++  @40 DO ~EscapeAreaMove("AR0406",446,1515,NE)~ EXIT 

CHAIN X3Vie join 
@41 
DO ~JoinParty()~ 
END 
++ @42 + v_reason
++ @43 + v_reason
++ @44 EXIT 

CHAIN X3Vie joinagain
@45 
DO ~JoinParty()~
END 
++ @42 + v_reason
++ @43 + v_reason
++ @44 EXIT 

CHAIN X3Vie v_reason 
@46
EXIT 

CHAIN X3Vie reject 
@47
 DO ~EscapeAreaMove("AR0406",446,1515,NE)~ EXIT 
 
CHAIN IF ~Global("X3VieMet","GLOBAL",1)~ THEN X3Vie meet3 
@48
END 
++ @49 + join 
++ @50 + rejectagain 

CHAIN X3Vie rejectagain 
@51 
EXIT 


//This very specific version of Vienxay's Post Party, presumably being removed for Imoen.
CHAIN IF ~Global("X3VieKickedOut","LOCALS",0)AreaCheck("AR1512")InParty("IMOEN2")~ THEN X3VieP ImoenDepart
@52
END 
++ @53 DO ~SetGlobal("X3VieKickedOut","LOCALS",1)PlaySound("ACT_07")MoveBetweenAreas("AR0406",[446.1515],W)~ EXIT 
++ @54 DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3VieKickedOut","LOCALS",0)!Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP p1
@55
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @56 + p2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @56 + p2b
 	++ @57 DO ~JoinParty()~ EXIT

 
CHAIN X3VieP p2a
@58
 END 
++ @59 DO ~SetGlobal("X3VieKickedOut","LOCALS",1) ActionOverride("X3Vie",EscapeAreaMove("AR0406",446,1515,NE))~ EXIT 
++ @60 DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT


CHAIN X3VieP p2b
@61
END
++ @62 DO ~SetGlobal("X3VieKickedOut","LOCALS",1)PlaySound("ACT_07")MoveBetweenAreas("AR0406",[446.1515],W)~ EXIT
++ @60 DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT

CHAIN IF ~Global("X3VieKickedOut","LOCALS",1)!Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP p4a
@63
 END 
++ @64 + p5
++ @65 + p6


CHAIN X3VieP p5
@66
DO ~SetGlobal("X3VieKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3VieP p6
@67
EXIT

CHAIN IF ~Global("X3VieKickedOut","LOCALS",0)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP rp1
@68
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @69 + rp2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @69 + rp2b
++ @70 DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieApp","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@509)~ + leave 
++ @71 DO ~JoinParty()~ EXIT

CHAIN X3VieP leave 
@72
DO ~ActionOverride("X3Vie",EscapeAreaMove("AR0406",446,1515,NE))~ EXIT  
 
CHAIN X3VieP rp2a
@73
 END 
++ @74 DO ~SetGlobal("X3VieKickedOut","LOCALS",1) ActionOverride("X3Vie",EscapeAreaMove("AR0406",446,1515,NE))~ EXIT 
++ @75 DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT


CHAIN X3VieP rp2b
@76
END
++ @74 DO ~SetGlobal("X3VieKickedOut","LOCALS",1)PlaySound("ACT_07")MoveBetweenAreas("AR0406",[446.1515],W)~ EXIT
++ @75 DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT

CHAIN IF ~Global("X3VieKickedOut","LOCALS",1)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP p4a
@77
 END 
++ @78 + rp5
++ @79 + rp6


CHAIN X3VieP rp5
@80
DO ~SetGlobal("X3VieKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3VieP rp6
@81
EXIT
