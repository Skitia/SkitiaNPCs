CHAIN IF ~Global("X3KalSummoned","GLOBAL",1) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25 b1 
~Aww, damn it! I was so close to charming that young couple for a good time. Wait a bloody second... it's you. And here I was worried that mage I saw in the corner was trying to yank me away in jealousy.~ [X3Blank]
DO ~SetGlobal("X3KalSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3Hel25J b1a   
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN  X3Emi25J b1b 
IF ~!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ EXTERN X3Kal25 b2 

CHAIN X3Hel25J b1a 
~A good choice, <CHARNAME>. It be bloody fine to see you again, me friend.~
== X3Kal25 ~Helga? What do you know? Good to see you again!~
EXTERN X3Kal25 b2 

CHAIN X3Emi25J b1b
~And by good time you mean something not inappropriate?~
== X3Kal25 ~Nah. Completely inappropriate and a blast. I'd have invited you too, but didn't see you.~
== X3Emi25J ~Oh don't worry. I'll give you advance notice now so you don't think to ask. Never invite me.~
EXTERN X3Kal25 b2 

CHAIN X3Kal25 b2  
~Good thing you didn't summon me a moment later, or I might have less clothes on. Sooo. What do you need? And what is this place, anyway?~
END 
++ ~This is my pocket plane. I need your swordarm once more, Kale.~  + b3a
++ ~That is too much information for me.~+ b3b


CHAIN X3Kal25 b3a 
~You know, after everything that happened, I thought you would take a long vacation. That's what I was trying to enjoy. You neve rest, do you?~ 
EXTERN X3Kal25 b4

CHAIN X3Kal25 b3b 
~Heh, I'd have invited you but...not sure if the guy and gal were keen on four, and all. Baby steps, eh?~ 
EXTERN X3Kal25 b4

CHAIN X3Kal25 b4
~Well, if you're calling me out of vacation early, mate, I suppose I can make some more tales. Just try to give me some of the credit, eh? Besides my fellow hin, it's all <CHARNAME> this, <CHARNAME> question that, as if I'm second fiddle.~
END 
++ ~Well, join me, and we'll see what happens.~ + b5
++ ~You are second fiddle.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@303)~ + b6
++ ~I don't need you yet. Wait here.~ + b7


CHAIN X3Kal25 b5
~Sorry world, Kale's retirement is over! More tales for you later!~
DO ~JoinParty()~ EXIT

CHAIN X3Kal25 b6 
~Aww, come on. I saved your life a few times. At least I reckon I did. I should make up a tale of some god as a father. That might do the trick.~
== X3Kal25 ~Well, I'll join you now if you want. Doesn't seem like I can do anything else in this place.~ 
END 
++ ~Yes, join me now.~ + b5
++ ~I don't need you yet. Wait here.~ + b7

CHAIN X3Kal25 b7
~Huh. If that's what you want. I'll just go over there for now.~
DO ~MoveToPointNoInterrupt([2327.1301]) Face(3)~ EXIT

CHAIN IF ~Global("X3KalSummoned","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25 r1 
~Well now...if you've summoned me because you've missed me and want a bit of a tussle, you sure know how to choose ugly places.~ [X3Blank]
DO ~SetGlobal("X3KalSummoned","GLOBAL",2)~
END 
++ ~You haven't changed a bit, Kale. Welcome to my pocket plane.~ + r2.1
++ ~Hey love. This is my pocket plane.~ + r2.1


CHAIN X3Kal25 r2.1 
~Pocket plane? Damn. Couldn't make it a bit more pleasant? I suppose not, though I don't know much about magic.~
== X3Kal25 ~I'm real happy to be here with you. To be honest...the seperation's been killing me. Any longer and I might have had to track you down myself.~
END 
++ ~Good then that you don't have to wait any longer. Come with me.~ + r3
++ ~I hate to dissapoint you, but I need you to wait here for a little while.~ + r4

CHAIN X3Kal25 r3 
~Heh. Good. Kale and <CHARNAME>, together again. We'll get equal credit for everything as a couple, I hope? Eh, probably not.~
DO ~JoinParty()~ EXIT 

CHAIN X3Kal25 r4 
~Aww, man. If you're sure about it, love. But don't keep me waiting here forever. I'm not known for my patience.~
EXIT 


// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3KalSummoned","GLOBAL",2) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25 j1a
~Hello. Ready to get back out there, if you want me.~ [X3KHello]
END 
++ ~I will. Join me.~ + b5
++ ~Just wait a little longer.~ + j2


CHAIN IF ~Global("X3KalSummoned","GLOBAL",2) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN X3Kal25 j1b
~Hello, love. Let me be your warden again eh, and you my ward.~ [X3KHello]
END 
++ ~Happily. join me.~ + r3
++ ~Just wait a little longer.~ + j2
 

CHAIN X3Kal25 j2
~Huh. I can keep waiting...but man, would it kill you to get some qualify food in here? That butler of yours isn't much of a chef.~
EXIT 


CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",0) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P p1
~Sooo. I'm leaving you, then?~ [X3KSO]
END
++ ~Nevermind. Stay with me.~ DO ~ActionOverride("X3Kal",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~Wait here.~ + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Wait here.~ + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3KalApp","GLOBAL",44)~ + ~Return to the pocket plane for now.~ + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3KalApp","GLOBAL",44)~ + ~Return to the pocket plane for now.~ + p1d


CHAIN X3Kal25P p1a 
~See you around.~ [X3KSYA]
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2327.1301]) Face(0)~
EXIT 

CHAIN X3Kal25P p1b 
~Right then. I'll wait here until you come back for me.~
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Kal25P p1c 
~Right then. See you around.~ [X3KSYA]
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT

CHAIN X3Kal25P p1d 
~Take care of yourself, mate. And catch me up on everything I've missed when we see eachother again.~
 DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT


CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",0)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P rp1
~*Sigh*, if you want me to go, I'll go. But I'm best right next to you, fighting back to back.~ [X3Blank]
END
++ ~Then stay. I need you.~ DO ~ActionOverride("X3Kal",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~Wait here.~ + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Wait here.~ + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Return to the pocket plane. I'll see you later.~ + rp1c


CHAIN X3Kal25P rp1a 
~All right, all right, lover<PRO_GIRLBOY>. But come back as quick as you can, eh?~
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2327.1301]) Face(0)~
EXIT 

CHAIN X3Kal25P rp1b 
~All right, all right, lover<PRO_GIRLBOY>. But come back as quick as you can, eh?~
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Kal25P rp1c 
~Take care of  yourself, darling. I'll be waiting for you.~
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2327.1301],0)~ EXIT

// Rep doesn't matter here in ToB. Emily will rejoin even at -90 approval. She'll stomach a -1 rep and endure the rest of the way.
CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",1) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P p2
~I hate to say it, mate, but the food here is terrible. Would rather be out there fighting, if you'll let me.~ [X3Blank]
END 
++ ~I will. Come with me.~ + p2.1
++ ~Wait here a while longer.~ EXIT


CHAIN X3Kal25P p2.1
~Great. Go on, let's be off!~ [X3KLBO]
DO ~SetGlobal("X3KalToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3KalToBKickedOut","GLOBAL",1) !Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25P rp2
~Phew, I'm quite relieved that you're whole. Not that you aren't capable...but eh, you know I'd rather be with you, lover<PRO_GIRLBOY>~ [X3Blank]
END
++ ~So would I. Come with me.~ + p2.1
++ ~Wait here a while longer.~ EXIT
