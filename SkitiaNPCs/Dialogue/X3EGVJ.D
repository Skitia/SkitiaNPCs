// Gregory Von Jurgenson and Guard, who only has one line and is not worth his own file.

/*                                //

Gregory Von Jurgenson. An old blood Noble.
                                  */                               

BEGIN X3EGVJ 
BEGIN X3EGUARD 

CHAIN IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EGVJ heir_selection 
~And now the moment we have been waiting for is about to begin. I tire of this heir drama. I wonder if Charles enjoys the attention it gives his family.~
EXIT 

// First time, Emily not in party. Use area code here, we don't need to refer to it outside of the scope.
CHAIN IF ~Global("EmilyNotPresent","LOCALS",0)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJQuest","GLOBAL",0)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3EGVJ Meet-Emilyless 
~Hrm, what is this? Sods off of the street in Jysstev's home? Ask them for hand outs, not me.~
END
++ ~And you are?~ + m1.1  
++ ~Fine then, we'll be out of your hair.~ EXIT

CHAIN X3EGVJ m1.1 
~Who am I? I am Lord Gregory Von Jurgenson, friend of the Jysstev house, which I am sure you are not, one of the oldest families of Tethyr.~ 
END 
++ ~I believe Emily is seeking you out.~ + m1.2 
++ ~Are you always this dismissive? I'm just trying to chat.~ + m1.3 
++ ~I'll take my leave. ~ + m1.4 

CHAIN X3EGVJ m1.2 
~Emily? Emily Castilla? I am surprised, she never seemed to wish to speak to me much about anything. Well, let her know I am here. Shoo now.~
DO ~SetGlobal("EmilyNotPresent","LOCALS",1)~
EXIT 

CHAIN X3EGVJ m1.3 
~And I have no interest in chatting. Are you even supposed to be in here? Off with you.~
EXIT 

CHAIN X3EGVJ m1.4 
~Yes, do that.~
EXIT 

CHAIN IF ~Global("EmilyNotPresent","LOCALS",1)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJQuest","GLOBAL",0)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3EGVJ Meet-Emilyless 
~Why are you still here? I do not see anyone in your company that I have business with, nor would I want business with. Leave me be.~
EXIT 

// Emily in party. 
CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJQuest","GLOBAL",0)See("X3Emi")IsValidForPartyDialogue("X3Emi")~ THEN X3EGVJ Meet 
~Lady Castilla. Why are you in the company of the common folk? It does not look good upon you to trek in the mud they walk.~
END 
IF ~IsValidForPartyDialogue("Nalia")~ EXTERN NALIAJ Von.1 
IF ~IsValidForPartyDialogue("Anomen")~ EXTERN ANOMENJ Von.4
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Von.2 
IF ~!IsValidForPartyDialogue("Anomen")!IsValidForPartyDialogue("Nalia")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3EmiJ Von.3 

CHAIN NALIAJ Von.1 
~These are good people, sir, if you would just stop and learn of them.~
== X3EGVJ ~Nalia, was it? Your family name carries respect. Odd that you are with this group.~
EXTERN X3EmiJ Von.3 

CHAIN X3VieJ Von.2 
~He calls me a peasant?! Why, I am Lady Vienxay Starlight,and I will be treated as such.~
== X3EGVJ ~Never heard of it. Forgive me if I am mistaken, but you do walk with the common ilk.~
EXTERN X3EmiJ Von.3 

CHAIN ANOMENJ Von.4
~Do you baselessly insult the unknown without even polite introduction?~
== X3EGVJ ~You are Lord Delryn's son? Forgive me, I had not expected you to be amongst such people.~
EXTERN X3EmiJ Von.3 

CHAIN X3EmiJ Von.3 
~Hello Lord Jurgenson. I've been adventuring in <CHARNAME>'s company, they're quite fine if you get to know them. But I've come here to talk to you about receiving your support to be my family's heir.~
== X3EGVJ ~By which the oldest traditions you should be. Normally I would say my decision is made here and now despite your tastes, it should be the eldest's role. But if Charles Castilla sired you to a woman that was not his wife, as is rumoured, Thomas's dispute has ground.~
== X3EmiJ ~If that is true, it is certainly not something I can do anything about, Lord Gregory. I would instead implore you to my character, and how I behave like a good lady ought to. Most of the time, at least.~
== X3EGVJ~Is that a joke, Lady Castilla? Your insistence to depart the keep for months was completely selfish, even if your father gave his blessings.~
== X3EmiJ ~Okay, some of the time. But our Queen-Monarch was also an adventurer, Lord Jurgenson. Surely-~
== X3EGVJ ~The Queen's past is not your story. These are different times. But I will give you a chance to win my support. A test, if you will.~
== X3EGVJ ~There is a dispute between two merchants who are under my care, who both own a considerable amount of property on my lands.~
== X3EGVJ ~Hear them out and resolve it without losing the business of either merchant for my family. If you can do this, then you have the mind to be a good heir, and pass my test.~
 END 
++ ~What can you tell us about these merchants?~ EXTERN X3EGVJ Von.7
++ ~Where can we find these merchants?~ EXTERN X3EGVJ Von.8 
++ ~Why can't you do this yourself?~ EXTERN X3EGVJ Von.6
++ ~If we have time for it, we will do as you ask.~ EXTERN X3EGVJ Von.9
++ ~This sounds simple enough, Emily.~ EXTERN X3EGVJ Von.8 

CHAIN X3EGVJ Von.6 
~If I did it myself, it would not be a test, would it? I am certain I could resolve it cleanly.~
END 
++ ~What can you tell us about these merchants?~ EXTERN X3EGVJ Von.7
++ ~Where can we find these merchants?~ EXTERN X3EGVJ Von.8 
++ ~If we have time for it, we will do as you ask.~ EXTERN X3EGVJ Von.9
++ ~This sounds simple enough, Emily.~ EXTERN X3EGVJ Von.8 

CHAIN X3EGVJ Von.9
~"Time". If you are taking this seriously, Lady Castilla, you will make time. This is not just a test, but it does have implications for my own family.~
== X3EmiJ ~Of course, Mr. Jurgenson. We are taking this completely seriously. I think.~
== X3EGVJ ~*Sigh*. You can find Myron and Derrick just north of the Jysstev estate near the large fountain. They will inform you of their dispute. Be fair and evenhanded, and remember grace, the most important attribute of a noble.~
DO ~AddJournalEntry(@5,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",1)~
EXIT  

CHAIN X3EGVJ Von.8 
~You can find Myron and Derrick just north of the Jysstev estate near the large fountain. They will inform you of their dispute. Be fair and evenhanded, and remember grace, the most important attribute of a noble.~
DO ~AddJournalEntry(@5,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",1)~
EXIT  

CHAIN X3EGVJ Von.7
~Myron buys the products from the peasants who take care of the fields on our lands. Derrick in turn buys things from the cities tools and supplies they may need to maintain their farms and homes.~
EXTERN X3EGVJ Von.8

CHAIN IF ~Global("X3EGVJQuest","GLOBAL",1)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN X3EGVJ quest_started
~Have you done what you were asked?~
END 
+~IsValidForPartyDialogue("X3Emi")GlobalGT("X3EGVJTalkResult","GLOBAL",0)~+ ~Yes, we've spoken to Myron and Derrick about their dispute.~ + done_Emily_here 
+~!IsValidForPartyDialogue("X3Emi")GlobalGT("X3EGVJTalkResult","GLOBAL",0)~+ ~Yes, we've spoken to Myron and Derrick about their dispute.~ + done_no_Emily
++ ~Not yet.~ + quest_not_done 

CHAIN X3EGVJ quest_not_done 
~Then you have no business here. Do leave my presence.~
EXIT 

CHAIN X3EGVJ done_no_Emily 
~Excellent, though where is Lady Castilla? Do return with her so I can hear the results from her.~
EXIT 

CHAIN X3EGVJ done_Emily_here 
~Very well. What was the result of your work?~
END 
IF ~Global("X3EGVJTalkResult","GLOBAL",1)~ EXTERN X3EmiJ diplomacy_worked // Diplomacy prevailed 
IF ~Global("X3EGVJTalkResult","GLOBAL",2)~ EXTERN X3EmiJ Myron_left // Myron left 
IF ~Global("X3EGVJTalkResult","GLOBAL",3)~ EXTERN X3EmiJ Derrick_left // Derrick left 

CHAIN X3EmiJ diplomacy_worked 
~Well, great news! They worked it out, I think, and will continue doing business on your estate, Lord Jurgenson.~
== X3EGVJ ~Well done. You've shown that perhaps you are at least able to do the duty. I will continue to abide by the traditions of supporting the eldest. You have my vote, Lady Castilla.~
== X3EmiJ ~Thank you so much, Lord Jurgenson. I am glad you believe in me.~
== X3EGVJ ~Do not expect it to be easy. There will be those who will be uneasy with you leading. You will have to continue to prove yourself even if you do win the position of leading your house.~
== X3EGVJ ~I believe I have tainted Jysstev's house with unwanted company long enough. Farewell, and goodbye.~
DO ~AddJournalEntry(@9,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",3)SetGlobal("X3EGVJVote","GLOBAL",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
EXIT 

CHAIN X3EmiJ Myron_left 
~Er, well...I'm afraid we couldn't keep Myron happy, and he's decided to end business and foreclose his properties.~
EXTERN X3EGVJ quest_failed 

CHAIN X3EmiJ Derrick_left 
~Well, Derrick wasn't really happy with how things went down. He...isn't going to be staying around and working for you, I fear.~
EXTERN X3EGVJ quest_failed 

CHAIN X3EGVJ quest_failed 
~All of your time away has taken away your father's lessons. Had I asked Charles, he would not have failed me.~
== X3EGVJ ~Despite the traditions of the past, Thomas would make a better heir, without the scandal of a questionable origin of mother. I believe my vote is decided.~
== X3EmiJ ~We tried our best, Lord Jurgenson. Is there nothing more we can say to change your mind?~
== X3EGVJ ~There is nothing you could say that could heal the damage of your actions. If I am fortunate enough, perhaps I can still salvage the damage you have done when I am done here. For now however, get out of my sight. I do not wish to see you.~
DO ~AddJournalEntry(@10,QUEST)SetGlobal("X3EGVJQuest","GLOBAL",3)~
EXIT 

CHAIN IF ~Global("X3EGVJQuest","GLOBAL",3)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)!Global("X3EGVJVote","GLOBAL",1)~ THEN X3EGVJ upset 
~You have done enough damage to my family. Get out of my sight.~
EXIT 

CHAIN IF ~Global("X3EGVJQuest","GLOBAL",3)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGVJVote","GLOBAL",1)~ THEN X3EGVJ upset 
~My support has been given. But if you stay here and keep bugging me, I may reconsider.~
EXIT 

CHAIN IF ~True()~ THEN X3EGUARD Guard.1 
~I'm paid to guard Lord Jurgenson, and I do my job well.~
EXIT 
