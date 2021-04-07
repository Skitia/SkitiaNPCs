CHAIN IF ~Global("X3KalSummoned","GLOBAL",1) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25 b1 
@0
DO ~SetGlobal("X3KalSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3Hel25J b1a   
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN  X3Emi25J b1b 
IF ~!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ EXTERN X3Kal25 b2 

CHAIN X3Hel25J b1a 
@1
== X3Kal25 @2
EXTERN X3Kal25 b2 

CHAIN X3Emi25J b1b
@3
== X3Kal25 @4
== X3Emi25J @5
EXTERN X3Kal25 b2 

CHAIN X3Kal25 b2  
@6
END 
++ @7  + b3a
++ @8+ b3b


CHAIN X3Kal25 b3a 
@9 
EXTERN X3Kal25 b4

CHAIN X3Kal25 b3b 
@10 
EXTERN X3Kal25 b4

CHAIN X3Kal25 b4
@11
END 
++ @12 + b5
++ @13 DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@303)~ + b6
++ @14 + b7


CHAIN X3Kal25 b5
@15
DO ~JoinParty()~ EXIT

CHAIN X3Kal25 b6 
@16
== X3Kal25 @17 
END 
++ @18 + b5
++ @14 + b7

CHAIN X3Kal25 b7
@19
DO ~MoveToPointNoInterrupt([2327.1301]) Face(3)~ EXIT

CHAIN IF ~Global("X3KalSummoned","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25 r1 
@20
DO ~SetGlobal("X3KalSummoned","GLOBAL",2)~
END 
++ @21 + r2.1
++ @22 + r2.1


CHAIN X3Kal25 r2.1 
@23
== X3Kal25 @24
END 
++ @25 + r3
++ @26 + r4

CHAIN X3Kal25 r3 
@27
DO ~JoinParty()~ EXIT 

CHAIN X3Kal25 r4 
@28
EXIT 


// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3KalSummoned","GLOBAL",2) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25 j1a
@29
END 
++ @30 + b5
++ @31 + j2


CHAIN IF ~Global("X3KalSummoned","GLOBAL",2) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN X3Kal25 j1b
@32
END 
++ @33 + r3
++ @31 + j2
 

CHAIN X3Kal25 j2
@34
EXIT 


CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",0) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P p1
@35
END
++ @36 DO ~ActionOverride("X3Kal",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @37 + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @37 + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3KalApp","GLOBAL",44)~ + @38 + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3KalApp","GLOBAL",44)~ + @38 + p1d


CHAIN X3Kal25P p1a 
@39
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2327.1301]) Face(0)~
EXIT 

CHAIN X3Kal25P p1b 
@40
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Kal25P p1c 
@41
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT

CHAIN X3Kal25P p1d 
@42
 DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT


CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",0)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P rp1
@43
END
++ @44 DO ~ActionOverride("X3Kal",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @37 + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @37 + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @45 + rp1c


CHAIN X3Kal25P rp1a 
@46
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2327.1301]) Face(0)~
EXIT 

CHAIN X3Kal25P rp1b 
@46
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Kal25P rp1c 
@47
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT

// Rep doesn't matter here in ToB. Emily will rejoin even at -90 approval. She'll stomach a -1 rep and endure the rest of the way.
CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",1) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P p2
@48
END 
++ @49 + p2.1
++ @50 EXIT


CHAIN X3Kal25P p2.1
@51
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",1) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P rp2
@52
END
++ @53 + p2.1
++ @50 EXIT
