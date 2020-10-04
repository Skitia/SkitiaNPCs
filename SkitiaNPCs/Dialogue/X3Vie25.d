// Make sure the P dialogues/normal dialogues don't fire if the scry scene just happened.

APPEND X3Vie25P 


IF ~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelQuestCutScene","GLOBAL",1)~ ScryFinish 
SAY ~It is done. You will not like what I have to say.~ [] // Use the It is done soundset 
++ ~Just tell me, Vienxay.~ + ScryDead 
++ ~Oh no. Is he dead?~ + ScryDead 
++ ~Go on.~ + ScryDead 
END 

IF ~~ ScryDead 
SAY ~Dead under a rubble of the tower. With the number of bolts I saw in him, he went down fighting hard at least.~
= ~Now you could tell the dwarf this, break her heart, and have her moping for the rest of our adventure for all I care.~
= ~Or for making her at least continue to be marginally useful, you could lie to her and say I saw him alive. I'm sure you can see the benefits. It is your choice.~
++ ~I am not going to lie to her. Why would you even suggest it?~ + ScryDead.1
++ ~Perhaps you have a point.~ + ScryDead.2
++ ~I will have to think about what to say before I talk to her.~ + ScryDead.2
END 

IF ~~ ScryDead.1 
SAY ~Because even if I loath the dwarf, she has protected me here and there, and I do return favors. This will hurt her, <CHARNAME>. Sometimes the truth is not the weapon of choice.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.2 
SAY ~Of course I do. You know me well enough I hope that I always speak with wisdom.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.3 
SAY ~It is your choice in the end. Just consider my words carefully.~
IF ~~ DO ~SetGlobal("X3HelToBQuest","GLOBAL",4)AddJournalEntry(@19,QUEST)~ EXIT 
END 


END 

CHAIN IF ~Global("X3VieSummoned","GLOBAL",1) !Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25 b1 
~Just what in the world is g- <CHARNAME>? Are you responsible for bringing me here? I should thank you. Another idiot human was about to arrest me, *again*.~ [X3Blank] 
DO ~SetGlobal("X3EmiSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3Hel25J b1a   
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN  X3Emi25J b1b 
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Kal")~ EXTERN X3Vie25 b2 

CHAIN X3Hel25J b1a 
~Sounds like it serves ye right to me.~
EXTERN X3Vie25 b2 

CHAIN X3Emi25J b1b
~You know, guards do tend to do that if you do something illegal.~
EXTERN X3Vie25 b2 

CHAIN X3Vie25 b2  
~Ugh, I suppose this puts me in your debt once more. What is it that you want?~
END 
++ ~I summoned you here to join me Vienxay.~ DO ~SetGlobal("X3VieSummoned","GLOBAL",2)~ + b3a
++ ~I just missed listening to you groan and moan all the time.~ DO ~SetGlobal("X3VieSummoned","GLOBAL",2)~ + b3b


CHAIN X3Vie25 b3a 
~You have still not settled down after all that business in Suldanessellar? You deserve a long period of luxurious relaxation for that work for my people.~ 
EXTERN X3Vie25 b4

CHAIN X3Vie25 b3b 
~How rude! Yanking me to...this horrid place for your personal entertainment. I would never do that to you, unless I hated you, and I am beginning to lean that way.~ 
EXTERN X3Vie25 b4

CHAIN X3Vie25 b4
~Suldanessellar was such a nice place too. It almost felt like Evermeet. But enough of that, you wanted my help, I assume? Obviously I am quite powerful and useful to you.~
END 
++ ~I agree. Join me.~ + b5
++ ~Not yet. Just wait around here.~ + b6


CHAIN X3Vie25 b5
~A smart choice. Do lead on, then.~
DO ~JoinParty()~ EXIT

CHAIN X3Vie25 b6
~Summoned just to wait around. I feel very offended, hrmph.~
DO ~MoveToPointNoInterrupt([2599.1344]) Face(0)~ EXIT

CHAIN IF ~Global("X3VieSummoned","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25 r1 
~So. You leave me behind, and now all of a sudden, yank me here with no warning. Is this to apologize? I hope it is. My heart was hurting in impatience.~ [X3Blank] 
== X3Vie ~Fine, I'll admit I am happy to see you well. But you are an idiot to forego my company for even a moment.~ 
DO ~SetGlobal("X3EmiSummoned","GLOBAL",2)~
END 
++ ~It's nice to see you too, my love.~ + r2.1
++ ~I'm sorry Vienxay. But I need you now.~ + r2.2
++ ~If all you are going to do is complain, perhaps I shouldn't have brought you here at all.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@503)~ + r3 

CHAIN X3Vie25 r2.1 
~Of course it's nice to see me. I am irrestible.~
EXTERN X3Vie25 r4 

CHAIN X3Vie25 r2.2 
~Good, I am glad you admit it. Together we are unstoppable, after all.~
EXTERN X3Vie25 r4

CHAIN X3Vie25 r3  
~Perhaps you shouldn't have! No, forget what I said. I am just angry. I do want to be with you again, if you will endure who I am.~
END 
++ ~I always will. Come, let's journey together again.~ + r5 
++ ~I can, but for now I need you to wait here.~ + r6 
++ ~I'm sorry Vienxay. I don't think I can.~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + rb 

CHAIN X3Vie25 rb 
~Ugh, whatever! Forget you then! When you've come around, I will help you, but only as friends as you are so wanting us to be.~
DO ~MoveToPointNoInterrupt([2599.1344]) Face(0)~ EXIT

CHAIN X3Vie25 r4  
~But if you think to leave me behind again, I will navigate the entire plane of shadows if I must to jump to your location.~
END 
++ ~I believe that. Come, lets go.~ + r5
++ ~It's just for a while. I'll come for you here when I need you.~ + r6

CHAIN X3Vie25 r5 
~Yes! The most powerful duo in the realms is together again. Let's take the world by thunder.~
 DO ~JoinParty()~ EXIT
 
CHAIN X3Vie25 r6 
~Ugh! I hate being in love.~
EXIT 
 
// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3VieSummoned","GLOBAL",2) !Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25 j1a
~I am tired of waiting. Do you want me to help you or not?~ [X3Blank] 
END 
++ ~I do. Join me.~ + b5
++ ~Not at this time.~ + j2


CHAIN IF ~Global("X3VieSummoned","GLOBAL",2) Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25 j1b
~I hate being seperated from you. And I can barely stand admitting that. Do end my torment.~  [X3Blank] 
END 
++ ~The wait is over, Vienxay. Join me once more, my love.~ + r5
++ ~Not yet, just be a little more patient..~ + r6
 

CHAIN X3Vie25 j2
~Ugh! You waste perfectly good help.~
EXIT 


CHAIN IF ~Global("X3VieToBKickedOut","GLOBAL",0) !Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25P p1
~You are removing your most capable ally from your party? A foolish decision, I must say.~ [X3Blank] 
END
++ ~No, never mind.~ DO ~ActionOverride("X3Vie",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~For now, yes. Wait here.~ + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~For now, yes. Wait here.~ + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3VieApp","GLOBAL",44)~ + ~I need you to return to the pocket plane.~ + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3VieApp","GLOBAL",44)~ + ~I need you to return to the pocket plane.~ + p1d


CHAIN X3Vie25P p1a 
~"Wait here", <PRO_HESHE> says. Gods, just don't make me wait here forever.~ 
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2599.1344]) Face(0)~
EXIT 

CHAIN X3Vie25P p1b 
~Fine, as you wish.~
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Vie25P p1c 
~Hrmph, if you get yourself killed, you'll know why.~
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2599.1344],0)~ EXIT

CHAIN X3Vie25P p1d 
~Don't get yourself killed. You're one of the very few I call friend.~
 DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2599.1344],0)~ EXIT


CHAIN IF ~Global("X3VieToBKickedOut","GLOBAL",0)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25P rp1
~You're splitting ourselves up? I cannot accept that. Reconsider!~ [X3Blank] 
END
++ ~As you wish, then. Stay with me.~ DO ~ActionOverride("X3Vie",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~I'll be back, it's just for a while.~ + rp1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~I'll be back, it's just for a while.~ + rp1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~I'm set on this Vienxay. Return to the pocketplane for now.~ + rp1c


CHAIN X3Vie25P rp1a 
~Fine, but don't think to just leave me here and sneak towards another woman. I'll know.~
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2599.1344]) Face(0)~
EXIT 

CHAIN X3Vie25P rp1b 
~Fine, but don't think to just leave me here and sneak towards another woman. I'll know.~
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Vie25P rp1c 
~Hrmph, you are a fool. A fool I love. Don't you dare get yourself killed without me.~
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2599.1344],0)~ EXIT

// Rep doesn't matter here in ToB. Emily will rejoin even at -90 approval. She'll stomach a -1 rep and endure the rest of the way.
CHAIN IF ~Global("X3VieToBKickedOut","GLOBAL",1) !Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25P p2
~Have you come to your senses? You know you need my power.~ [X3Blank] 
END 
++ ~I want you to join me.~ + p2.1
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@15,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~  + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@15)~ + ScryStartPlane
++ ~Not right now. Continue waiting here.~ + p3 

CHAIN X3Vie25P p3 
~Hrmph!~
EXIT 


CHAIN X3Vie25P p2.1
~Finally. My power shall make your needs trivial to accomplsih.~
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


CHAIN IF ~Global("X3VieToBKickedOut","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25P rp2
~I know, you miss my lovely presence. Invite me along and you can stop missing me.~ [X3Blank]  
END
++ ~I need you, Vienxay. Come with me.~ + pr.1
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@14,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~  + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@14)~ + ScryStartPlane
++ ~Wait here a while longer.~ + p3 

CHAIN X3Vie25P pr.1
~Finally. It is hard to love you sometimes, but you make me so happy at the same time. Let's take the world by thunder, together.~
DO ~SetGlobal("X3VieToBKickedOut","GLOBAL",0) JoinParty()~ EXIT


////


APPEND X3Vie25P

IF ~~ Scry 
SAY ~I don't care much for the dwarf but...I suppose I could help. I will require a few things of course.~
= ~I need a scrying crystal. They are a little purple gem, perfect for this sort of thing. I will also need a place full of energy to manipulate.~
= ~That particular place I believe would be your little planar home. Since I am so talented, that is all there is to it, for you.~
+~PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ + ScryStartNotPlane 
+~PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ DO ~EraseJournalEntry(@14)TakePartyItem("X3HGEM")~ + ScryStartPlane 
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.1
SAY ~Yes, yes. But if that dwarf gets to be in a pain in the neck, do drive home the point how *kind* I have been in this moment.~
IF ~~ EXIT 
END 

IF ~~ Scry.2 
SAY ~I would check with the merchants as we travel. Someone who specialized in jewelry might carry something special like that.~
++ ~Where could I find a scrying crystal?~ + Scry.2 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.3 
SAY ~It is not necessary for scrying, but it is necessary for how I will approach it. This plane has just the energy I need to make sure I don't have some terrible mishap happen instead. I don't want to risk that much for the dwarf. I barely want to help her at all.~
= ~There are other ways that use some aspect or item that belonged to the individual, but I am not knowledge of that method, and so it must be this way.~
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
END 

IF ~~ ScryStartNotPlane 
SAY ~Great. But obviously, we are not in your pocket plane. Ask me when we are there.~
IF ~~ EXIT
END  

IF ~~ ScryStartPlane 
SAY ~*Sigh*. Let us get this over with.~
IF ~~ DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Vcut02")~ EXIT  
END 

END 