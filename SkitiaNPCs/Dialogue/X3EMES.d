BEGIN X3EMES
// This messenger spawns and gives a message to Emily when she is in a city area that is NOT the graveyard.
CHAIN IF ~True()~ THEN X3EMES message
~Excuse me, Lady Castilla? I have a message for you from your father, Charles.~
== X3EmiJ ~If he's asking why I haven't tried to communicate to him...this is a really long story.~
== X3EMES ~It is not about that ma'am, though he has been trying to get a hold for you for sometime. He wishes to announce the heirship today, with or without you. I'm sorry for the last minute message, but I could only find you now.~
== X3EmiJ ~This is *really* last minute... and really big. I don't even know if I'm ready for this.~
END 
++ ~We can't go now, Emily. This is bad timing.~ EXTERN X3EmiJ bad_timing 
++ ~Where is this happening at?~ + Mithrest 
++ ~You don't have to go if you do not want to, Emily.~ EXTERN X3EmiJ I_want_to

CHAIN X3EmiJ I_want_to
~No...I do want. I want to finally get this over with, all this stressing and wondering, even if my brother will be there.~
== X3EmiJ ~What about you? I know with everything that is at stake...you might not want to join me. I hate to leave you, but this is so important.~
END 
++ ~This is also important. We will travel with you.~ + go
++ ~Can't this wait? Could we not go after we stop Irenicus?~ + wait 
++ ~I'm sorry Emily. I wish you luck.~ + luck 

CHAIN X3EmiJ wait 
~It can't wait, <CHARNAME>. If I do not show, it is as good as forfeiting and shows my father I don't care. I can't do that. This happens once in my life...I know how important everything else is, but this is my own world at stake.~
END 
++ ~We will travel with you then.~ + go
++ ~I cannot go with you. I wish you luck.~ + luck 

CHAIN X3EmiJ go 
~Thank you, <CHARNAME>. That means a lot to me.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",9)~
== X3EMES ~I will alert Lord Castilla of your incoming arrival to the Mithrest inn. Try not to take longer than a couple of days, else he will be forced to proceed without you.~
== X3EmiJ ~Of course. Thank you, we will be there as soon as possible.~
DO ~AddJournalEntry(@11,QUEST)ActionOverride("X3EMES",EscapeArea())SetGlobal("X3EmiQuest","GLOBAL",3)~ 
EXIT 

CHAIN X3EMES Mithrest 
~The Mithrest inn, <PRO_SIRMAAM>. An establishment of appropriate class to hold such an announcement.~
END 
++ ~We can't go now, Emily. This is bad timing.~ EXTERN X3EmiJ bad_timing 
++ ~We will travel there, then.~ EXTERN X3EmiJ go
++ ~I cannot go with you to the Mithrest, Emily, there are other obligations at stake here. I wish you luck.~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",3)~ EXTERN X3EmiJ luck 

CHAIN X3EmiJ bad_timing 
~I know, but I have to go, <CHARNAME>. I'm sure it won't take long and we can get right back to things...but this is important. This is a once in a lifetime thing that defines my own future. I have to go.~
END 
++ ~We will travel with you then.~ + go
++ ~I cannot go with you. I wish you luck.~  + luck 

CHAIN X3EmiJ luck 
~The same to you, <CHARNAME>. Farewell.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",3)~
END // Doing the quest without your presence successfully requires the support of both. Presumably, Emily surrenders in her duel, while with both supports, she takes their faith and wins.
IF ~Global("X3EGVJVote","GLOBAL",1)Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@12,QUEST)ActionOverride("X3EMES",EscapeArea())SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",1)~ EXIT 
IF ~OR(2)!Global("X3EGVJVote","GLOBAL",1)!Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@12,QUEST)ActionOverride("X3EMES",EscapeArea())SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",-1)~  EXIT 

//Emily will automatically leave the party at the chapter 7 transition area until the quest is finished.