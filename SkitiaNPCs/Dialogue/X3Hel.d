BEGIN X3HArv 

CHAIN IF ~Global("X3HelPreMet","GLOBAL",1)~ THEN X3Hel premeet
~So, ye really leaving the Six Shields of Earthkin?~ [X3Blank]
DO ~SetGlobal("X3HelPreMet","GLOBAL",2)~
== X3HArv ~We are not the six we started as anymore, friend. We need time to grieve and decide what is best for us. And your leg...you need to rest.~
== X3Hel ~It be only the risk of the trade. I nay be stopping until I can no longer be going.~ 
== X3HArv~And that will be very soon if you push it. Even with the combined might of your healing and mine, your leg still isn't fully restored.~
== X3Hel ~Bah, halflings be always pulling out quick when the going gets grim. Come on now. Just one more bit of adventure. Ye said yerself that there is another party of earthkin adventurers about in the Umar Hills. We could bolster what we have lost with their ranks.~
== X3HArv ~I'm sorry, Helga. Jillian is needed in the city again. You may not care, but there is some work that cannot just be fixed with the swing of the blade.~
== X3Hel ~I do bloody care. Losing Gast and Stormaxe...they died warrior's deaths. Noble, good, warrior deaths. The type we should be seeking ourselves for glory and greatness.~
== X3HArv ~If you are so insistent on risking your health, Helga, I won't stop you, but my niece and I won't be a part of it. We'll be returning to the guard. You might find some adventurers about in the Copper Coronet, or perhaps someone might walk through here.~
== X3Hel ~Aye. I'll find someone. Ye'll regret dipping out so soon.~
== X3HArv ~I am puzzled by your line of thinking. We may not see eye to eye, but it was still an honor to fight side by side.~
DO ~EscapeArea()ActionOverride("X3HJil",EscapeArea())~
EXIT 

CHAIN IF ~ReputationLT(Player1,2)~ THEN X3Hel nojoin2
~'Fraid we have little to talk about. Yer a wanted person around these parts. Best ye be off before my hammer does the guard's work.~ [X3Blank]
EXIT 


// Before this happens is a small conversation between Helga and two halflings.

CHAIN IF ~Global("X3HelMet","GLOBAL",0)~ THEN X3Hel meet
~Bah! Me leg is fine! Damn bloody fine! I need another cold ale. Wait, ye aren't the server. Who be ye?~ [X3Blank]
DO ~SetGlobal("X3HelMet","GLOBAL",1)~
END 
++ ~Helga, it's me, <CHARNAME>. It's been a while.~ DO ~SetGlobal("X3HelPartyBG1","GLOBAL",1)~ + m1 
++ ~I am <CHARNAME>. I couldn't help but overhear. What happened to your leg?~ + m2 
++ ~<CHARNAME>. You seem to be going through a hard time.~ + m3 


CHAIN X3Hel m0 
~Bah. Bloody reminds me of that Arvora hin already. Clueless as a deer but damn, she has heart.~
== X3Hel ~But if ye need a hand in whatever trouble ye find yourself in this place, come find me. I'm old, but I'm not done for, and I'll be glad to prove it.~
EXIT 

CHAIN X3Hel m0b 
~Old cripple?! Bloody...I ought to...just get out of my sight before I wallop ye with my hammer and put sense into that empty head of yers.~
EXIT 

CHAIN X3Hel m1 
~<CHARNAME>? Ye caught me at a low moment. Damn halflings are too soft. Damn them and damn this leg.~
END 
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X3KalJ m1.b
++ ~What happened to your leg?~ + m2
+~Race(Player1,HALFLING)~+ ~Hey now, I'm not a soft halfling, dwarf.~ EXTERN X3Hel m4 
++ ~Are your own adventures coming to an end, then?~ + m3
++ ~I'll leave you be. You look like you need rest.~ + m0

CHAIN X3KalJ m1.b
~Hello to you too, grumpy woman.~
== X3Hel ~Don't push it, Kale. Surprised ye even back here. Might have to add bloody indecisive to halfling annoyances as well.~
END 
++ ~What happened to your leg?~ EXTERN X3Hel m2
+~Race(Player1,HALFLING)~+ ~Hey now, I'm not indecisive, dwarf.~ EXTERN X3Hel m4 
++ ~Are your own adventures coming to an end, then?~ EXTERN X3Hel m3
++ ~I'll leave you be. You look like you need rest.~ EXTERN X3Hel m0

CHAIN X3Hel m2 
~Didn't heal right after a confrontation with a giant and it's bloody big boulder. Useful enough to walk at the same pace as ever, but it has a bit of an ache. Nothing I can't ignore for a while, but it's still an irritation.~
== X3Hel ~We've already faced losses of a few of our party. The injury and the deaths all took too much of a toll and the remainder dispersed.~
END
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X3Hel m3a 
IF ~~ EXTERN X3Hel m3b 

CHAIN X3Hel m3 
~Aye. My group's dispersed. The Swifts want time to mourn. Lost our only gnome, clever lad, but too brave for his own. good.~
END 
IF ~IsValidForPartyDialogue("X3Kale")~ EXTERN X3Hel m3a 
IF ~!IsValidForPartyDialogue("X3Kale")~ EXTERN X3Hel m3b 

CHAIN X3Hel m3a 
~Then ye just walked out on us, Kale. Ye show up here to apologize?~
== X3KalJ ~Hey, I got nothing to apologize for, Helga. 'Sides, had issues in the family. Not that you cared.~
EXTERN X3Hel m3b 

CHAIN X3Hel m3b 
~Pah, it ain't matter. My blood is itching to prove myself. Bad leg or no, ye look like ye might travel into dens of danger. If that be true, I want in.~
END 
+~Global("X3HelPartyBG1","GLOBAL",1)~+ ~I've no problems with this, but you should know I am trying to rescue my friend, Imoen. She was taken by the Cowled Wizards.~ + m5a
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ ~I've no problems with this, but you should know I am trying to rescue my friend, Imoen. She was taken by the Cowled Wizards.~ + m5b
++ ~Not just any den. I'm chasing after a mage named Irenicus, who tortured me and my friends. Taking him down is the goal.~ + m6
++ ~Not in your condition. It would be a bad idea.~ + m0 
++ ~I'd rather not be burdened with an old cripple.~ + m0b 

CHAIN X3Hel m4 
~I mean nay insult to ye. Been speaking of my former companions.~
END 
++ ~Former companions?~ + m3 
++ ~What happened to your leg?~ + m2 
++ ~I'll just leave you be, you look grumpy and tired.~ + m0 

CHAIN X3Hel m5a
~Imoen, the twerp? Nay offense, I found her an annoying human...but she nay deserve to be with the finger-wagglers, from the little I know of the grey.~
EXTERN X3Hel m7

CHAIN X3Hel m6 
~I always be up to taking down a mage a notch, literally if I get the chance. Aye, this sounds right up my alley.~
EXTERN X3Hel m7

CHAIN X3Hel m5b
~A companion taken, eh? I know what it's like to lose someone...but to the finger wagglers? It will nay be easy.~
EXTERN X3Hel m7 

CHAIN X3Hel m7 
~Ye have me hammer in this. By Haela, it will strike true with the full fury of my heart.~ 
END 
IF ~Global("X3HelPartyBG1","GLOBAL",1)Global("X3ViePartyBG1","GLOBAL",1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ m7a 
IF ~IsValidForPartyDialogue("X3Vie")OR(2)!Global("X3HelPartyBG1","GLOBAL",1)!Global("X3ViePartyBG1","GLOBAL",1)~ EXTERN X3VieJ m7b 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3Hel m8

CHAIN X3VieJ m7a 
~I have to suffer the presence of this dwarf again? Ugh.~
== X3Hel ~The blasted elf is actually still alive? Thought her mouth would get her killed by now.~
EXTERN X3Hel m8

CHAIN X3VieJ m7b 
~And now we're playing hosts to cripples. Next we'll take in orphans.~
== X3Hel ~With someone like ye around prissy pants? I think the orphans will run away screaming.~
EXTERN X3Hel m8 

CHAIN X3Hel m8 
~Let's get on the road. Me hammer longs for action.~
 DO ~JoinParty()~ EXIT 

// Helga won't join a 1 rep or a -90 approval party...but anyone else is fine.~
CHAIN IF ~ReputationGT(Player1,1)GlobalGT("X3HelApp","GLOBAL",-90)~ THEN X3Hel remeet
~Ye're back. All this rest makes me restless. Ye want a priestess's hammer on your journeys or not?~ [X3Blank]
END
++ ~That is what I am here for. Welcome aboard.~ + m8
++ ~Not at this time, sorry.~ + reject 

CHAIN X3Hel reject 
~Pah. Leave me bloody be, then.~
EXIT 

CHAIN IF ~ReputationLT(Player1,2)~ THEN X3HelP nojoin1
~If ye are here to ask me along, <CHARNAME>...while I'd normally agree, with the kind of name ye brewed, I don't think we'll be a good fit. Best ye administer that, before yer name is so sullied ye become one of those I must take down meself.~  [X3Blank]
EXIT 

CHAIN IF ~GlobalLT("X3HelApp","GLOBAL",-89)~ THEN X3HelP nojoin2 
~I don't believe we have anything to say to one another. Get to yer business, and I'll get to mine.~ [X3HeNoth]
EXIT 

// Helga isn't as concerned about the underdark. Morph into one P style. 


CHAIN IF ~Global("X3HelKickedOut","LOCALS",0)~ THEN X3HelP p1
 ~Ye hanging up me hammer already? I nay wish to do so when my heart is nay ready to rest. Are ye sure?~ [X3Blank]
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, for now.~ + p2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, for now.~ + p2b
 	++ ~No. I've changed my mind.~ + p3

 
CHAIN X3HelP p2a
 ~As ye wish. I'll be back at the Den of the Seven Vales drinking lesser ales. Don't do anything I wouldn't, and hit twice as hard to make up for me absence.~
 END 
+~IsValidForPartyDialogue("X3Kal")~+ ~See you around, Helga.~ DO ~SetGlobal("X3HelKickedOut","LOCALS",1) ActionOverride("X3Hel",EscapeAreaMove("AR0709",968,441,SW))~ EXIT 
+~!IsValidForPartyDialogue("X3Kal")~+ ~See you around, Helga.~ EXTERN X3KalJ p2d 
++ ~We're only parting ways for a little while. Why don't you go to the Copper Coronet instead, and I'll meet you there?~ + p2c
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("X3HelKickedOut","LOCALS",1)~ EXIT


CHAIN X3HelP p2b
~Pah. I'll find me way out of here, then. I won't need help wtih that, either, my goddess will keep me true. Haela's luck to ye, <CHARNAME>.~
END
++ ~To you as well.~ DO ~SetGlobal("X3HelKickedOut","LOCALS",1) ActionOverride("X3Hel",EscapeAreaMove("AR0709",968,441,6))~ EXIT
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("X3HelKickedOut","LOCALS",1)~ EXIT


CHAIN X3HelP p2c 
 ~Why not? That place has its charms. Maybe I'll get into a nice fight or two as well. Haela bless ye.~
DO ~SetGlobal("X3HelKickedOut","LOCALS",1) EscapeAreaMove("AR0406",932,1432,E)~ EXIT

CHAIN X3KalJ p2d 
~Be safe Helga. You're getting old, you know.~
== X3Hel ~Bah, shut yer trap. And keep <CHARNAME> safe, or I'll smash yer skull in meself.~
DO ~SetGlobal("X3HelKickedOut","LOCALS",1) ActionOverride("X3Hel",EscapeAreaMove("AR0709",968,441,SW))~ EXIT

CHAIN X3HelP p3 
~Ha! Good! Battle awaits then.~
DO ~JoinParty()~ EXIT


CHAIN IF ~Global("X3HelKickedOut","LOCALS",1)~ THEN X3HelP p4a
 ~Here ye be, <CHARNAME>. Do I hear a call for me hammer?~ [X3Blank]
 END 
++ ~You do. Please rejoin me.~ + p5
++ ~Not yet.~ + p6


CHAIN X3HelP p5
~Bloody good. Battle awaits!~
DO ~SetGlobal("X3HelKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3HelP p6
~Bah. Leave me be, then.~
EXIT

