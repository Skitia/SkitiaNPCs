CHAIN IF ~Global("X3IsaSummoned","GLOBAL",1) !Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25 b1 
@0
DO ~SetGlobal("X3IsaSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3Vie25J b1a   
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN  X3Emi25J b1b 
IF ~!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ EXTERN X3Isa25 b2 

CHAIN X3Vie25J b1a 
@1
== X3Isa25 @2
EXTERN X3Isa25 b2 

CHAIN X3Emi25J b1b
@3
== X3Isa25 @4
== X3Emi25J @5
EXTERN X3Isa25 b2 

CHAIN X3Isa25 b2  
@6
END 
++ @7  + b3a
++ @8 + b3b


CHAIN X3Isa25 b3a 
@9 
EXTERN X3Isa25 b4

CHAIN X3Isa25 b3b 
@10 
EXTERN X3Isa25 b4

CHAIN X3Isa25 b4
@11
END 
++ @12 + b5
++ @14 + b7


CHAIN X3Isa25 b5
@15
= @16
DO ~JoinParty()~ EXIT

CHAIN X3Isa25 b7
@19
DO ~MoveToPointNoInterrupt([1764.1242]) Face(S)~ EXIT

CHAIN IF ~Global("X3IsaSummoned","GLOBAL",1)Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25 r1 
@20
= @17
DO ~SetGlobal("X3IsaSummoned","GLOBAL",2)~
END 
++ @21 + r2.1
++ @22 + r2.1


CHAIN X3Isa25 r2.1 
@23
== X3Isa25 @24
END 
++ @25 + r3
++ @26 + r4

CHAIN X3Isa25 r3 
@27
DO ~JoinParty()~ EXIT 

CHAIN X3Isa25 r4 
@28
DO ~MoveToPointNoInterrupt([1764.1242]) Face(S)~ 
EXIT 


// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3IsaSummoned","GLOBAL",2) !Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25 j1a
@29
END 
++ @30 + b5
++ @31 + j2


CHAIN IF ~Global("X3IsaSummoned","GLOBAL",2) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN X3Isa25 j1b
@32
END 
++ @33 + r3
++ @31 + j2
 

CHAIN X3Isa25 j2
@34
EXIT 


CHAIN IF ~Global("X3IsaToBKickedOut","GLOBAL",0) !Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25P p1
@35
END
++ @36 DO ~ActionOverride("X3Isa",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @37 + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @37 + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3IsaApp","GLOBAL",44)~ + @38 + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3IsaApp","GLOBAL",44)~ + @38 + p1d


CHAIN X3Isa25P p1a 
@39
DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2327.1301]) Face(0)~
EXIT 

CHAIN X3Isa25P p1b 
@40
DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Isa25P p1c 
@41
DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT

CHAIN X3Isa25P p1d 
@42
 DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT


CHAIN IF ~Global("X3IsaToBKickedOut","GLOBAL",0)Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25P rp1
@43
END
++ @44 DO ~ActionOverride("X3Isa",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + @37 + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @37 + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @45 + rp1c


CHAIN X3Isa25P rp1a 
@46
DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2327.1301]) Face(0)~
EXIT 

CHAIN X3Isa25P rp1b 
@46
DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Isa25P rp1c 
@47
DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT

// Rep doesn't matter here in ToB. Isaac will rejoin even at -90 approval. She'll stomach a -1 rep and endure the rest of the way.
CHAIN IF ~Global("X3IsaToBKickedOut","GLOBAL",1) !Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25P p2
@48
END 
++ @49 + p2.1
++ @50 EXIT


CHAIN X3Isa25P p2.1
@51
DO ~SetGlobal("X3IsaToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3IsaToBKickedOut","GLOBAL",1) !Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25P rp2
@52
END
++ @53 + p2.1
++ @50 EXIT
