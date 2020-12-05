/* Note: START.d initiates the Five's NPC dialogues, but no one else. */

// Kale in the temple of Amaunator
//Going to leave it here for ease of use.
APPEND X3KalP

IF ~Global("X3KalVampire","GLOBAL",4)~ v1
SAY ~Huh. Is this the Venya? No...that ain't it. I don't feel that strange darkness anymore.~
IF ~~ DO ~EraseJournalEntry(32084)  
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
SetGlobal("X3KalVampire","GLOBAL",5)~ SOLVED_JOURNAL @32 + v1.1 
END

IF ~~ v1.1
SAY ~Wait, <CHARNAME>? This is wonderful! You came through for me. And here I was thinking I was about to go and pull of a prank with Brandobaris or something.~
IF ~~ DO ~EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Kale.  Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible.  I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!%)~ + v1.1a
END

IF ~~ v1.1a
SAY ~I don't even know what to say to say how grateful I am. I'd have been under her magic and probably worse without you. Glad that's not the case.~
++ ~I am glad, as well. Join me, and let's get out of this place.~ DO ~ActionOverride("X3Kal",JoinParty())~ EXIT
++ ~I have no room for you now. Will you wait for me back in the Copper Coronet?~ + v1.2
END

IF ~~ v1.2
SAY ~Eh? So soon? Well...all right.~
= ~This isn't goodbye though. We'll be seeing each other again.~
IF ~~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1) MoveGlobal("AR0406","X3Kal",[615.1399])~ EXIT
END

END // for the APPEND X3KalP

CHAIN IF ~ReputationLT(Player1,2)~ THEN X3Kal rep-low 
~Yeah, I've heard of what you've been doing about Amn. Best we not be speaking. Ma would kill me if I ended up in a cell because of you.~ [X3Blank]
EXIT 

CHAIN IF ~Global("X3KalMet","GLOBAL",0)~ THEN X3KAl m1 
~Damn, this place is ugly. Hey, you seen the temple of Ilmater around here? I hear they have the belongings of my late father, but I can't find those bastard's temple.~ [X3Blank]
DO ~SetGlobal("X3KalMet","GLOBAL",1)~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ m2a
IF ~!IsValidForPartyDialogue("X3Hel")~ EXTERN X3Kal m2b

CHAIN X3HelJ m2a 
~Chasing after some belongings over adventure still, lad?~
== X3Kal ~Criminy. I said I'd come back, you impatient, mad dwarf, but I didn't think the others were keen on continuing. Besides, didn't the Swifts not speak enough about giving that leg some rest?~
== X3HelJ ~It's as rested as it's gonna get. Bloody coddling halflings.~
EXTERN X3Kal m2b 

CHAIN X3Kal m2b 
~Heh, never mind that. I'm betting you're a foreigner like myself, eh, <PRO_SIRMAAM>? An adventurer even, if I had to guess. Am I right?~
END 
++ ~You really don't recognize me, Kale?~ DO ~SetGlobal("X3KalPartyBG1","GLOBAL",1)~ + m3
++ ~Something of the like. I am <CHARNAME> You seem like a warrior yourself.~ + m4 
++ ~I'm afraid I don't have time to speak with you.~ + m0a 

CHAIN X3Kal m0a
~Yeah, ignore the famous, great halfling from Gullykin. Guess I'll forget about all this family stuff and head back into the Copper Coronet for now.~
 DO ~EscapeAreaMove("AR0406",615,1399,SW)~ EXIT 
 
 CHAIN X3Kal m0b 
 ~Well, that is just a shame mate. You change your mind, I'll be about inside the Copper Coronet for a while.~
 DO ~EscapeAreaMove("AR0406",615,1399,SW)~ EXIT 
 
CHAIN X3Kal m3 
~Holy Yondalla's glorious bosom, <CHARNAME>? Am I blind, or what? Great to see you!~
EXTERN X3Kal m5

CHAIN X3Kal m4 
~You kidding me?! The hero of Baldur's Gate <PRO_HIMHER>self? Should have known the big weapons would be in this city.~
EXTERN X3Kal m5 

CHAIN X3Kal m5 
~Well, you mind lending me a bit of a hand? Heard my father's passed, the git. And from the little details I got, I'm worried it's over a debt.~
== X3Kal ~I just want to look into it a bit and see who did it, and make sure they don't try to get money out of me before they find me. Smart, right?~
== X3Kal ~In return, I can lend you my own services for a while. I'm pretty great with a blade and shield if I say so myself. Gast... taught me quite well and all.~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ m5b 
++ ~It sounds like a deal. But you should know know that I am trying to rescue my friend, Imoen, from the Cowled Wizards. It may be dangerous.~ + m6 
++ ~Sounds simple enough. But if you're joining, know that I am trying to track down a mage named Irenicus that tortured me and killed friends of mine.~ + m7
++ ~Who is Gast?~ EXTERN X3Kal Gast
++  ~I'm afraid I'm not interested in getting involved.~ + m0b 

CHAIN X3HelJ m5b 
~Aye...Honor to that gnome, Gast. Made you into a half-respectable warrior, and that be no easy feat.~
END 
++ ~It sounds like a deal. But you should know know that I am trying to rescue my friend, Imoen, from the Cowled Wizards. It may be dangerous.~ EXTERN X3Kal m6 
++ ~Sounds simple enough. But if you're joining, know that I am trying to track down a mage named Irenicus that tortured me and killed friends of mine.~ EXTERN X3Kal m7
++ ~Who is Gast?~ EXTERN X3Kal Gast
++  ~I'm afraid I'm not interested in getting involved.~ EXTERN X3Kal m0b 

CHAIN X3Kal Gast 
~One of me late adventuring companions, a gnome warrior, wouldn't you have it. Don't see a lot of them, but he was something all right. But I'd rather not talk about him right now, if it's all the same to you, mate.~
END 
++ ~I don't mind you joining me. But you should know know that I am trying to rescue my friend, Imoen, from the Cowled Wizards. It may be dangerous.~ EXTERN X3Kal m6 
++ ~If you're good with joining me, know that I am trying to track down a mage named Irenicus that tortured me and killed friends of mine.~ EXTERN X3Kal m7
++  ~I'm afraid I'm not interested in getting involved with your problems right now.~ EXTERN X3Kal m0b 


CHAIN X3Kal m6 
~Dangerous smangerous. Listen here, mate, wizards are all the same. These ones? Just grayer than the rest. A bit of a swing and they're done for, eh? That's why I was called mageslayer in Gullykin.~
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3KalPartyBG1","GLOBAL",1)Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7a 
IF ~IsValidForPartyDialogue("X3Reb")OR(2)!Global("X3KalPartyBG1","GLOBAL",1)!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7b  
IF ~!IsValidForPartyDialogue("X3Reb")~ + m8

CHAIN X3Kal m7 
~What's with wizards and these kind of names? I'm sure this Irenicus fellow is nothing that I can't handle. I'm famous back in Gullykin, you know, mageslayer they called me.~
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3KalPartyBG1","GLOBAL",1)Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7a 
IF ~IsValidForPartyDialogue("X3Reb")OR(2)!Global("X3KalPartyBG1","GLOBAL",1)!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7b  
IF ~!IsValidForPartyDialogue("X3Reb")~ + m8

CHAIN X3RebJ m7a 
~Wizard slayer? The last time you talked about your adventures in Gullykin, I distinctly recorded "kobold slayer", of which none used magic.~
== X3Kal ~Anyone else get annoyed by folk who have to be all historical accurate? I just didn't mention it is all, Recorder, sheesh.~
== X3RebJ ~I see.~
EXTERN X3Kal m8 

CHAIN X3RebJ m7b 
~To be a wizard requires a lot of training and focus. It would be foolish to see all mages as the same.~
== X3Kal ~You just haven't seen me in action yet, pretty gnome.~
== X3RebJ ~If you underestimate enemies that you haven't studied or researched, I don't know if you ever will get the chance to show me.~
EXTERN X3Kal m8 

CHAIN X3Kal m8 
~Sooo. Let's be off, then!~
DO ~AddJournalEntry(@2,QUEST)JoinParty()~
EXIT

CHAIN IF ~Global("X3KalMet","GLOBAL",1)~ THEN X3Kal remeet
~Soooo. You change your mind about helping? It will be easy getting to the bottom of father's debt once we start! Besides, I am the Hero of Gullykin myself. You'll find no better help.~ [X3Blank]
END 
++ ~Indeed. Join me.~ + remeet1 
++ ~Not right now. Excuse me.~ EXIT 

CHAIN X3Kal remeet1 
~Woohoo. You hear that world? Kale is back in action with a new team.~
EXTERN X3Kal m8 

// Normal.
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
!Global("X3KalRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP p1
~Sooo. You sure you want to part, then? If you ask me, that's a bit of a mistake.~ [X3KSO]
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, for now.~ + p2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~Yes, for now.~ + p2b 
++ ~No, I've changed my mind.~ + p3

CHAIN X3KalP p2a 
~Right then, that's your choice and all. Well, I'll just head back to the Copper Coronet then. I've got some grand tales to tell that I'm sure will be entertainment.~
END 
+~!IsValidForPartyDialogue("X3Hel")~+ ~I'll see you another time, Kale.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
+~IsValidForPartyDialogue("X3Hel")~+ ~I'll see you another time, Kale.~ EXTERN X3HelJ p2c
++ ~Just wait for me right here for now.~  DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP p2b 
~Well...bit far from Amn from here, but I'll make do, mate. Good luck to ye, eh?~
END
++ ~And you too.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ ~No need for that. Just wait for me here. I'll be back.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3HelJ p2c 
~Hey, Kale? Take care of yerself, now. I mean it.~
== X3KalP ~Pfft, you aren't my grandma, Helga, sheesh. I'll be fine, eh?~  
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT

CHAIN X3KalP p3 
~Good choice, mate.~
DO ~JoinParty()~ EXIT 

// Underdark 
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
!Global("X3KalRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP u1
~Look mate, it's your call who stays and goes...but this is the bloody Underdark! You want me to just...wander back to the surface alone?~ [X3Blank]
DO ~SetGlobal("X3KalApp","GLOBAL",6)~
END 
++ ~No need to worry. I'll be back for you, just wait here.~ + u2 
++ ~I know it's dangerous, but I know you can manage.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)~ + u3 
++ ~Get going, Kale. You're not going to change my mind.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",-3)~ + u3 
++ ~I see what you are saying. Stay with the group, then.~ + p3 

CHAIN X3KalP u2 
~Still not all comfortable with that idea mate, but I'll wait..~
DO ~SetGlobal("X3KalKickedOut","LOCALS",0)~
EXIT 

CHAIN X3KalP u3 
~Mate, I know you're going through a lot right now, but this is just plain stupid.~
END 
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ u5a 
IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ u5b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ EXTERN X3KalP u6 


CHAIN X3RebJ u5a 
~Kale shouldn't have to wander alone. I can go with him, to make sure he is safe.~
END
++ ~If that is what you wish, Recorder. Farewell.~ + u7a 
+~GlobalGT("X3RebApp","GLOBAL",44)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + u8a
+~GlobalLT("X3RebApp","GLOBAL",45)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + u9a
++ ~Never mind. Both of you, stay.~ EXTERN X3KalP p3

CHAIN X3EmiJ u5b
~I'd be terrified too. I can go with him. With two of us going he should be fine.~
END
++ ~If you are certain Emily, then you may travel with him.~ + u7b 
+~GlobalGT("X3EmiApp","GLOBAL",44)~+ ~That's not a good idea. I need you here, Emily.~ + u8b
+~GlobalLT("X3EmiApp","GLOBAL",45)~+ ~That's not a good idea. I need you here, Emily.~ + u9b
++ ~Never mind. Both of you, stay.~ EXTERN X3KalP p3

CHAIN X3RebJ u7a
~Farewell, <CHARNAME>. May Oghma give us both the knowledge to survive this place.~
DO ~LeaveParty()SetGlobal("X3KalKickedOut","LOCALS",1)SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0319",516,330,S)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-6)~ EXIT

CHAIN X3RebJ u8a 
~I um...as you wish, <CHARNAME>. I am sorry Kale, but please, please, take care of yourself.~
== X3KalP ~Hells. I've really lost my touch of charm if even Recorder's changed her mind. Well, damn all of you! I'll just take care of myself, then.~
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-9)~ EXIT 

CHAIN X3RebJ u9a 
~I am sorry, <CHARNAME>. I know what you are doing is important, but he could die alone. I don't think it's right for Kale to not have at least someone to be with him.~
END 
++ ~If that is how it must be. Goodbye, Recorder.~ + u7a 
++ ~Never mind then. Both of you, stay.~ EXTERN X3KalP p3

CHAIN X3EmiJ u7b
~Be safe, <CHARNAME>. Let's...just go Kale, before I change my mind.~
DO ~LeaveParty()SetGlobal("X3KalKickedOut","LOCALS",1)SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",531,622,SW)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-6)~ EXIT

CHAIN X3EmiJ u8b 
~I understand, <CHARNAME>. If you need me, then I will stay. I'm sorry Kale, but <CHARNAME>'s needs here are important.~
== X3KalP ~Because they're the leader, huh? Well, damn all of you! I'll just take care of myself, then.~
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-9)~ EXIT 

CHAIN X3EmiJ u9b 
~I can't, <CHARNAME>. If he were to get killed because no one was there...I can't bear the thought.~
END 
++ ~I understand Emily. Take care of yourself, then.~ + u7b 
++ ~Never mind then. Both of you, stay.~ EXTERN X3KalP p3

CHAIN X3KalP u6
~Bloody hells and Yondalla's knickers, I'll just figure out how to get topside myself, then.~
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)EscapeAreaMove("AR0406",615,1399,SW)IncrementGlobal("X3KalApp","GLOBAL",-9)~ EXIT


// Romance
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
Global("X3KalRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP rp1
~Come on, <CHARNAME>. I can't protect you if I'm not with you. And I don't want anything to happen with you, you here?~ [X3Blank]
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~I promise, I'll be back for you Kale.~ + rp2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~I promise, I'll be back for you Kale.~ + rp2b 
++ ~Our relationship is not like that Kale. Just go.~ DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + rp2c 
++ ~Then stay by me. Keep me safe.~ + rp3

CHAIN X3KalP rp2a 
~If you don't, I'll find you. Even if I have to go to the bloody abyss.~
END 
++ ~I'll count on it. Farewell, Kale.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP rp2b 
~If you don't, I'll find you. Even if I have to go to the bloody abyss...after I figure out how to get out of this place, heh.~
END
++ ~Farewell, and be safe Kale.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP rp2c 
~Huh...guess it isn't the first time I've been mistaken about something. I've got no further arguments, then.~
END
++ ~Farewell, Kale.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP rp3 
~Heh. Always, mate.~
DO ~JoinParty()~ EXIT 

// Underdark Romance
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
Global("X3KalRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP ru1
~I know I say somethings I shouldn't sometimes. But come on, darling. Dear. Lover. Please don't leave me behind, in the bloody Underdark.~ [X3Blank]
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~No need to overreact, it's just for a moment. I'll be back for you.~ + ru2 
++ ~I'm sorry Kale. Can you get out of here safely?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + ru3 
++ ~You're too attached Kale. Our time together and our relationship is at an end.~ DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalAppChange","GLOBAL",-5)~ + ru4
++ ~You're right. I can't risk you getting hurt.~ + rp3a 

CHAIN X3KalP ru2 
~Good then, mate, because I was really worried I said something stupid again. Don't take too long, eh?~
DO ~SetGlobal("X3KalKickedOut","LOCALS",0)~
EXIT 

CHAIN X3KalP ru3 
~Well, this is the Underdark, mate, and I am the great Kale, hero of Gullykin. But this is also the Underdark...eh, what the hell, another chapter of great tales, here we come!~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5a
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ ru5b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ DO ~SetGlobal("X3KalKickedOut","LOCALS",0)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT

CHAIN X3KalP ru4 
~What? Too attached? That reminds me of what I've said in the past. Bloody karma. Now I've got to get out of here by myself, damn damn damn!~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5a
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ ru5b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ DO ~SetGlobal("X3KalKickedOut","LOCALS",0)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT

CHAIN X3RebJ ru5a
~Kale shouldn't have to wander alone. I can go with him, to make sure he is safe.~
END
++ ~If that is what you wish, Recorder. Farewell.~ + u7a 
+~GlobalGT("X3RebApp","GLOBAL",44)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + ru8a
+~GlobalGT("X3RebApp","GLOBAL",44)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + u8a
+~GlobalLT("X3RebApp","GLOBAL",45)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + ru9
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3b

CHAIN X3EmiJ ru5b
~I can go with him. With two of us going he should be fine.~
END
++ ~If that is what you wish, Emily. Farewell.~ + u7b
+~GlobalGT("X3RebApp","GLOBAL",44)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + ru8b
+~GlobalGT("X3RebApp","GLOBAL",44)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + u8b
+~GlobalLT("X3RebApp","GLOBAL",45)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + ru9
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3b

CHAIN X3RebJ ru8a 
~I um...as you wish, <CHARNAME>. I am sorry Kale, but please, please, take care of yourself.~
== X3KalP ~I'll be fine. Just make sure <CHARNAME> doesn't get killed without me. I'm counting on that great memory of yours, eh?~
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT 

CHAIN X3EmiJ ru8b 
~I understand, <CHARNAME>. If you need me, then I will stay. I'm sorry Kale, but <CHARNAME>'s needs here are important.~
== X3KalP ~Just make sure <PRO_HESHE> keeps alive. Keep sharp with those arrows, Emily for me. And I better see you again, <CHARNAME>. I better.~
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT 


CHAIN X3RebJ ru9 
~I am sorry, <CHARNAME>. I know what you are doing is important, but he could die alone. I don't think it's right for Kale to not have at least someone to be with him.~
END 
++ ~As you wish, Recorder. Farewell~ + u7a
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3b

CHAIN X3EmiJ ru9 
~I can't, <CHARNAME>. If he were to get killed because no one was there...I can't bear the thought.~
END 
++ ~As you wish, Emily. Farewell~ + u7b
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Never mind. Both of you, stay.~ EXTERN X3KalP rp3b

CHAIN X3KalP rp3a 
~Glad ye came around, lover<PRO_GIRLBOY>. And here I was worried I said something stupid again.~ 
DO ~JoinParty()~ EXIT 

CHAIN X3KalP rp3b 
~Well at least I know how things stand and don't have to endanger myself getting back. Let's just get a move on.~ 
DO ~JoinParty()~ EXIT 

// Kale will join any rep above 1.
CHAIN IF ~ReputationGT(Player1,1)GlobalGT("X3KalApp","GLOBAL",-90)Global("X3KalKickedOut","LOCALS",1)!Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3KalP rj
~Aye! Look who is here. I bet you want the hero of Gullykin back in your group, eh?~ [X3KLWH]
END 
++ ~Indeed. Please rejoin me.~ + rj1
++ ~Not yet.~ + rj2

// Romance is a lot more forgiving with reputation, no number limit.
CHAIN IF ~Global("X3KalKickedOut","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3KalP rr
~Am I glad to see you. I've missed you, you know? Not as much as you've missed me, I bet, heh.~ [X3KGTSY]
END 
	++ ~Oh, get back in the party, you.~ + rj3
	++ ~Stay here a little longer.~ + rj4


CHAIN X3KalP rj1
~Ha! I knew you would come around eventually! Let's get back to it.~ [X3KCAE]
DO ~SetGlobal("X3KalKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3KalP rj2
~Pfft. Your loss, mate.~
EXIT


CHAIN X3KalP rj3
~That's more like it. Let's get back to it, love.~
DO ~SetGlobal("X3KalKickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN X3KalP rj4
~All right then. But not too much longer now, all right?~
EXIT

CHAIN IF ~GlobalLT("X3KalApp","GLOBAL",-89)~ THEN X3KalP nothinga
~We've got no reason to chat, mate. So let's just leave one another be.~ [X3Blank] 
EXIT 


CHAIN IF ~ReputationLT(Player1,2)~ THEN X3KalP rep-low-not-partied 
~Sorry mate. I've heard of what you've been doing about Amn. I'd rather not be associated with that.~ [X3Blank]
EXIT 