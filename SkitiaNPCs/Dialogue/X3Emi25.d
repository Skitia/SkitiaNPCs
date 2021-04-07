CHAIN IF ~Global("X3EmiSummoned","GLOBAL",1) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25 b1 
@0
DO ~SetGlobal("X3EmiSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J b1a   
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN  X3Vie25J b1b 
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3Emi25 b2 

CHAIN X3Reb25J b1a 
@1
== X3Emi25 @2
EXTERN X3Emi25 b2 

CHAIN X3Vie25J b1b
@3
== X3Emi25 @4
EXTERN X3Emi25 b2 

CHAIN X3Emi25 b2  
@5
END 
++ @6 + b3a
++ @7 + b3b


CHAIN X3Emi25 b3a 
@8 
EXTERN X3Emi25 b4

CHAIN X3Emi25 b3b 
@9 
EXTERN X3Emi25 b4

CHAIN X3Emi25 b4
@10
END 
++ @11 + b5
++ @12 + b6


CHAIN X3Emi25 b5
@13
DO ~JoinParty()~ EXIT


CHAIN X3Emi25 b6
@14
DO ~MoveToPointNoInterrupt([1570.1388]) Face(0)~ EXIT

CHAIN IF ~Global("X3EmiSummoned","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25 r1 
@15
== X3Emi25 @16 
DO ~SetGlobal("X3EmiSummoned","GLOBAL",2)~
END 
++ @17 + r2.1
++ @18 + r2.1


CHAIN X3Emi25 r2.1 
@19
END 
++ @20 + b5
++ @21 + b6

 
// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3EmiSummoned","GLOBAL",2) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25 j1a
@22
END 
++ @23 + b5
++ @24 + j2


CHAIN IF ~Global("X3EmiSummoned","GLOBAL",2) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN X3Emi25 j1b
@25
END 
++ @26 + b5
++ @24 + j2
 

CHAIN X3Emi25 j2
@27
EXIT 


CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",0) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P p1
@28
END
++ @29 DO ~ActionOverride("X3Emi",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @30 + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @30 + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3EmiApp","GLOBAL",44)~ + @31 + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3EmiApp","GLOBAL",44)~ + @31 + p1d


CHAIN X3Emi25P p1a 
@32 
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1570.1388]) Face(0)~
EXIT 

CHAIN X3Emi25P p1b 
@33
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Emi25P p1c 
@34
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1570.1388],0)~ EXIT

CHAIN X3Emi25P p1d 
@35
 DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1570.1388],0)~ EXIT


CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",0)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P rp1
@36
END
++ @37 DO ~ActionOverride("X3Emi",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @30 + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @30 + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @31 + rp1c


CHAIN X3Emi25P rp1a 
@38
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1570.1388]) Face(0)~
EXIT 

CHAIN X3Emi25P rp1b 
@38
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Emi25P rp1c 
@39
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1570.1388],0)~ EXIT

CHAIN IF ~InPartyAllowDead("Hexxat")~ THEN X3Emi25P pHexxat 
@40
EXIT 

CHAIN IF ~InPartyAllowDead("Dorn")~ THEN X3Emi25P pDorn
@41
EXIT 

// Rep doesn't matter here in ToB. Emily will rejoin even at -90 approval. She'll stomach a -1 rep and endure the rest of the way.
CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",1) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P p2
@42
END 
++ @43 + p2.1
++ @44 EXIT


CHAIN X3Emi25P p2.1
@45
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",1) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P rp2
@46
END
++ @47 + p2.1
++ @44 EXIT
