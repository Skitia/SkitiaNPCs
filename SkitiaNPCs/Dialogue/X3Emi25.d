CHAIN IF ~Global("X3EmiSummoned","GLOBAL",1) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25 b1 
~Okay...this is definitely a nightmare. And... this nightmare is disturbingly real. Is this the part where you morph into a giant spider or something?~  [X3Blank]
DO ~SetGlobal("X3EmiSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J b1a   
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN  X3Vie25J b1b 
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3Emi25 b2 

CHAIN X3Reb25J b1a 
~This is definitely real, Emily. It's a pocket plane, a plane in some other plane. It's almost difficult to grasp just how amazing that is.~
== X3Emi25 ~It's nice to see a familiar friend, Recorder, but do you mind saving the complex jargon for when my head is on straight..~
EXTERN X3Emi25 b2 

CHAIN X3Vie25J b1b
~You summoned her? I certainly wouldn't have made such a poor decision if I were the leader.~
== X3Emi25 ~Wow. I'm hearing and seeing a Vienxay. This is definitely a nightmare now.~
EXTERN X3Emi25 b2 

CHAIN X3Emi25 b2  
~So this is actually a place, actually real. Can you tell me why I am here? Everything feels so strange.~
END 
++ ~I summoned you here, Emily.~ + b3a
++ ~I got bored, and wanted to see if you would actually come.~ + b3b


CHAIN X3Emi25 b3a 
~You did? Well...if I were going to be randomly pulled into some foreign place, better you than someone else.~ 
EXTERN X3Emi25 b4

CHAIN X3Emi25 b3b 
~Haha. You are so funny. In a not funny kind of a way.~ 
EXTERN X3Emi25 b4

CHAIN X3Emi25 b4
~I'm guessing you need my help again? You know I'll always be game to aid you.~
END 
++ ~I'm glad. Join me.~ + b5
++ ~I don't need you yet. Wait here.~ + b6


CHAIN X3Emi25 b5
~Then it's settled. Side by side once again.~
DO ~JoinParty()~ EXIT


CHAIN X3Emi25 b6
~Right. I'll just wait in your weird...place. Nowhere else to go for now.~
DO ~MoveToPointNoInterrupt([1570.1388]) Face(0)~ EXIT

CHAIN IF ~Global("X3EmiSummoned","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25 r1 
~This dream is so sweet. There you are, <CHARNAME>. Come to my arms...wait, this is real. Very real. Oh gods, <CHARNAME>? I am so happy to see you!~ [X3Blank]
== X3Emi25 ~Not so happy to see this place, though. Where are we, the nine hells?~ 
DO ~SetGlobal("X3EmiSummoned","GLOBAL",2)~
END 
++ ~I am still coming to grasps with it myself. I'm happy to see you too, Emily.~ + r2.1
++ ~We are in my own pocket plane.~ + r2.1


CHAIN X3Emi25 r2.1 
~Your adventurers seem to get only stranger and stranger. I want to be next to you, if you will have me. It's where I should be.~
END 
++ ~I agree. Come with me.~ + b5
++ ~Not just yet, Emily. Wait here for now.~ + b6

 
// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3EmiSummoned","GLOBAL",2) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25 j1a
~So! I'm ready to help, if you'll have me.~ [X3Blank]
END 
++ ~I will. Join me.~ + b5
++ ~Just wait a little longer.~ + j2


CHAIN IF ~Global("X3EmiSummoned","GLOBAL",2) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN X3Emi25 j1b
~We're meant to walk together, <CHARNAME>. Moments apart don't put me at ease.~  [X3Blank]
END 
++ ~Then join me.~ + b5
++ ~Just wait a little longer.~ + j2
 

CHAIN X3Emi25 j2
~If that is what you want...~
EXIT 


CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",0) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P p1
~So. I guess it's time to part then?~ [X3Blank]
END
++ ~No, never mind.~ DO ~ActionOverride("X3Emi",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~Yes. Wait here.~ + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Yes. Wait here.~ + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3EmiApp","GLOBAL",44)~ + ~Yes, return to the pocket plane.~ + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3EmiApp","GLOBAL",44)~ + ~Yes, return to the pocket plane.~ + p1d


CHAIN X3Emi25P p1a 
~I'll wait, then, until you need me.~ 
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1570.1388]) Face(0)~
EXIT 

CHAIN X3Emi25P p1b 
~Here then? I can do that.~
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Emi25P p1c 
~Very well then. I'll see you later.~
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1570.1388],0)~ EXIT

CHAIN X3Emi25P p1d 
~Be safe. You're a good friend. I like my friends to be well and whole.~
 DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1570.1388],0)~ EXIT


CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",0)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P rp1
~You know I would much rather stay by your side, <CHARNAME>, for as long as time allows. But if this is your wish...I understand.~ [X3Blank]
END
++ ~No. Continue to stay by me. I need you.~ DO ~ActionOverride("X3Emi",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~Yes. Wait here.~ + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Yes. Wait here.~ + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Yes, return to the pocket plane.~ + rp1c


CHAIN X3Emi25P rp1a 
~I'll wait, then. Come for me, soon.~
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1570.1388]) Face(0)~
EXIT 

CHAIN X3Emi25P rp1b 
~I'll wait, then. Come for me, soon.~
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Emi25P rp1c 
~As you wish, <CHARNAME>. I love you. I always will.~
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1570.1388],0)~ EXIT

CHAIN IF ~InPartyAllowDead("Hexxat")~ THEN X3Emi25P pHexxat 
~I know you might want my aid. But I can't just discard my morals. If you cease traveling with Hexxat, then I will stand by your side.~
EXIT 

CHAIN IF ~InPartyAllowDead("Dorn")~ THEN X3Emi25P pDorn
~I know you might want my aid. But I can't just discard my morals. If you cease traveling with Dorn, then I will stand by your side.~
EXIT 

// Rep doesn't matter here in ToB. Emily will rejoin even at -90 approval. She'll stomach a -1 rep and endure the rest of the way.
CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",1) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P p2
~Here I am, <CHARNAME>! Ready to be of use, if you'll let me.~ [X3Blank]
END 
++ ~Join me.~ + p2.1
++ ~Wait here a while longer.~ EXIT


CHAIN X3Emi25P p2.1
~Great! I am ready for whatever comes.~
DO ~SetGlobal("X3EmiToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3EmiToBKickedOut","GLOBAL",1) !Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25P rp2
~You're back. I've missed you a little bit. Okay, a lot of a bit. Tell me that we're leaving together now?~  [X3Blank]
END
++ ~We are. Come with me.~ + p2.1
++ ~Wait here a while longer.~ EXIT
