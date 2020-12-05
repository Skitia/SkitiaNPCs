// Remember to block P's and normal if Scry is just finished.
APPEND X3Reb25P 

IF ~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelQuestCutScene","GLOBAL",1)~ ScryFinish 
SAY ~Oh dear. I don't know...how to say this. It worked, and that was amazing. But...~ [X3Blank]
++ ~Just tell me, Recorder.~ + ScryDead 
++ ~Oh no. Is he dead?~ + ScryDead 
++ ~Go on.~ + ScryDead 
END 

IF ~~ ScryDead 
SAY ~I am afraid Berk is dead. He fought valiantly. So very valiantly. I feel so horrible for Helga right now.~
= ~Should we even tell her this? She would be heartbroken. Maybe it is wrong...but you could just wait until the right time, or say that he went up north.~
= ~But history is full of enough liars. I don't think we should add our names to that list, despite how terrible I feel for her.~
++ ~I think your first thought is better actually. Lying to her may be best.~ + ScryDead.1
++ ~You are right, Recorder. I'll just tell her the truth.~ + ScryDead.2
++ ~I will have to think about what to say before I talk to her.~ + ScryDead.2
END 

IF ~~ ScryDead.1 
SAY ~If you think it is best. I don't know. It would set her at ease...but I think of my Raban, and I think I would want to know the truth if it was him.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.2 
SAY ~It will be hard. But I think it is the best decision.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.3 
SAY ~It is your choice in the end, <CHARNAME>. You have my support for whatever  you decide.~
IF ~~ DO ~SetGlobal("X3HelToBQuest","GLOBAL",4)AddJournalEntry(@20,QUEST)~ EXIT 
END 

END 

CHAIN IF ~Global("X3RebSummoned","GLOBAL",1) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 b1 
~<CHARNAME>! I knew our last meeting could not be our last. Ever since I've been writing your stories, the end still feels like we have not reached it. And now I am here....where is here?~  [X3Blank] 
DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J b1a   
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN  X3Kal25J b1b 
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Kal")~ EXTERN X3Reb25 b2 

CHAIN X3Emi25J b1a 
~You know, I haven't figured that either, my good friend.~
== X3Reb25 ~If you are here and well Emily, I suppose I shouldn't worry.~
EXTERN X3Reb25 b2 

CHAIN X3Kal25J b1b
~Heh, now that's useful. Summoning your own author in.~
EXTERN X3Reb25 b2 

CHAIN X3Reb25 b2  
~This looks to be another plane. The statues and forms around this place...the abyss, or the nine-hells perhaps? Or is it something else?~
END 
++ ~This is my pocket plane, Recorder. I summoned you here to join me.~ DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~ + b3a
++ ~Something else, if I understand.~ DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~ + b3b


CHAIN X3Reb25 b3a 
~This is disturbing and yet oddly fascinating. The extent of the magic and the world as we understand it is so much deeper than most of our understanding.~ 
EXTERN X3Reb25 b4

CHAIN X3Reb25 b3b 
~Something different? You will have to enlighten me. I definitely want to remember what I have seen with the correct description.~ 
EXTERN X3Reb25 b4

CHAIN X3Reb25 b4
~I could spend days studying this place, but I would rather join you once more. I just feel it, that I am supposed to be here to aid you. I won't fail with that.~
END 
++ ~I'll take that offer. Join me.~ + b5
++ ~I don't need you yet. Feel free to take your time studying this place for the time being.~ + b6


CHAIN X3Reb25 b5
~I shall aid you to the best of my ability once more.~
DO ~JoinParty()~ EXIT

CHAIN X3Reb25 b6
~I understand. I'll take some time to get a better grasp of this place, then~
DO ~MoveToPointNoInterrupt([1641.1334]) Face(0)~ EXIT

CHAIN IF ~Global("X3RebSummoned","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 r1 
~I knew this moment would come. Ever since we parted ways I have yearned to be by your side, and then I just heard this gentle pull of song in my head that I had to heed, and here you are.~ [X3Blank]
== X3Reb ~Where you would bring me though, I could not have expected to look like this. This is definitely a different plane of sorts, isn't it?~ 
DO ~SetGlobal("X3RebSummoned","GLOBAL",2)~
END 
++ ~Welcome to this place, Recorder. I've missed you.~ + r2.1
++ ~This is my pocket plane. I needed to see you again.~ + r2.1


CHAIN X3Reb25 r2.1 
~I've missed you dearly.~
== X3Reb25 ~Let us not spend another beat apart. As your recorder, in name and heart, I will continue to observe your story to the end, if you will have me.~
END 
++ ~Most certainly. Lets go.~ + r5
++ ~Not yet. Wait here for the moment.~ + r6

CHAIN X3Reb25 r5 
~We walk in harmony once again.~
 DO ~JoinParty()~ EXIT
 
CHAIN X3Reb25 r6 
~I understand. You always have a reason for your decisions, even if I disagree. I will yearn for  your return.~
EXIT 
 
// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3RebSummoned","GLOBAL",2) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 j1a
~This place is really fascinating, <CHARNAME>. Some of this looks years in the making, formed from magic at least centuries old.~  [X3Blank]
== X3Reb25 ~I do not think you came to me to listen to that though. Do you require my presence with you?~
END 
++ ~I do. Join me.~ + b5
++ ~Not at this time.~ + j2


CHAIN IF ~Global("X3RebSummoned","GLOBAL",2) Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25 j1b
~There you are. I have missed you. Do our hearts sing on the road together again, or am I waiting here still?~  [X3Blank]
END 
++ ~It is time, Recorder. Join me.~ + r5
++ ~Not yet, Recorder.~ + r6
 

CHAIN X3Reb25 j2
~Of course, I understand. Take care of yourself.~
EXIT 


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",0)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25P p1
~Are you sure you wish me to leave?~  [X3Blank]
END
++ ~No, never mind.~ DO ~ActionOverride("X3Reb",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~Yes. Wait here.~ + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Yes. Wait here.~ + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3RebApp","GLOBAL",44)~ + ~Yes, return to the pocket plane.~ + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3RebApp","GLOBAL",44)~ + ~Yes, return to the pocket plane.~ + p1d


CHAIN X3Reb25P p1a 
~I'll wait, then, until you need me. I can study this place a bit more in the meantime.~ 
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1641.1334]) Face(0)~
EXIT 

CHAIN X3Reb25P p1b 
~I will do that.~
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Reb25P p1c 
~I'll see you later. Be careful.~
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1641.1334],0)~ EXIT

CHAIN X3Reb25P p1d 
~Be well, <CHARNAME>. Remember my friend, you've come this far. You can do this.~
 DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1641.1334],0)~ EXIT


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",0)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25P rp1
~I don't want to go, if you will reconsider, my love. But it is your choice.~  [X3Blank]
END
++ ~As you wish, then. Stay with me.~ DO ~ActionOverride("X3Reb",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~I will be back. Just wait here for now.~ + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~I will be back. Just wait here for now.~ + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Return to the pocket plane. I'll be back to see you soon.~ + rp1c


CHAIN X3Reb25P rp1a 
~I will, my love.~
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1641.1334]) Face(0)~
EXIT 

CHAIN X3Reb25P rp1b 
~I will, my love.~
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Reb25P rp1c 
~I will, my love. Oghma bless you with the knowledge to stay safe.~
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1641.1334],0)~ EXIT


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",1) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN  X3Reb25P p2
~Do you wish me back in the group now?~  [X3Blank]
END 
++ ~Join me.~ + p2.1
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@19,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartPlane
++ ~Wait here a while longer.~ EXIT


CHAIN X3Reb25P p2.1
~Thank you. I will do all I can to aid you.~
DO ~SetGlobal("X3RebToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3RebToBKickedOut","GLOBAL",1) !Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25P rp2
~I've yearned for your return. Do we come together again?~   [X3Blank]
END
++ ~We are. Come with me.~ + p2.1
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@19,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartPlane
++ ~Wait here a while longer.~ EXIT

APPEND X3Reb25P 

IF ~~ Scry 
SAY ~I have never done that before, but I know how it is done, and I think I can help.~
= ~I will need a scrying crystal. They are a beautiful little purple crystal used to help catalyze the spell as a component.~
= ~I don't know if my power will be enough even with the crystal, but if we do it in your pocket plane, I believe the place itself has enough to draw from to make it work.~
+~PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ + ScryStartNotPlane 
+~PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ DO ~EraseJournalEntry(@19)TakePartyItem("X3HGEM")~ + ScryStartPlane 
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.1
SAY ~Let me know when you have the crystal, <CHARNAME>. I will read up more about divination and scrying on my free time so I am ready.~
IF ~~ EXIT 
END 

IF ~~ Scry.2 
SAY ~Hrm. If we ask with merchants and shopkeepers, I am sure someone should sell something. Maybe a jeweler? They tend to specialize in such items.~
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.3 
SAY ~The pocket plane is full of magic. It is a perfect place to focus and perform a spell like this. It is also safe, I would be quite vulnerable when scrying.~
= ~There are other ways that use some aspect or item that belonged to the individual, but I am not knowledge of that method, and so it must be this way.~
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
END 

IF ~~ ScryStartNotPlane 
SAY ~I see. Bring us to the pocket plane, and I can perform the spell there.~
IF ~~ EXIT 
END 

IF ~~ ScryStartPlane 
SAY ~I hope I am ready for this. I hope I don't faint from sheer anxiousness.~
IF ~~ DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Rcut03")~ EXIT  
END 

END 
