BEGIN X3HDD 

CHAIN IF ~Global("X3HelQuest","GLOBAL",7)~ THEN X3HDD talk
~So you are the group that we be facing. I wanted to have a word with you before things got started.~
END 
++ ~Go ahead, speak what you wish to say.~ + words
++ ~I suppose I can listen to you while you're still able to stand.~ + brag 
++ ~I've no interest in talking to my competition.~ + no_interest

CHAIN X3HDD words 
~My friends and I do this sort of thing for a living, fighting in pits and arenas and always coming out on top.~
== X3HDD ~I don't take pride in the killing of...inadequate competition, however, so I'm going to give you a chance to come out of this painlessly. Tell Rulendo you forfeit, and keep what you've had. No need to risk it all against the best.~
END 
+~IsValidForPartyDialogue("X3Hel")~+ ~You're just trying to intimidate us. That will not work.~ EXTERN X3HelJ action
+~IsValidForPartyDialogue("X3Hel")~+ ~You are afraid *You* will meet your end, not I.~ EXTERN X3HelJ action
+~IsValidForPartyDialogue("X3Hel")~+ ~I'll consider your words. I don't know if this is worth that much risk.~ EXTERN X3HelJ regret
+~!IsValidForPartyDialogue("X3Hel")~+ ~You're just trying to intimidate us. That will not work.~ + intimidate 
+~!IsValidForPartyDialogue("X3Hel")~+ ~You are afraid *You* will meet your end, not I.~ + intimidate 
+~!IsValidForPartyDialogue("X3Hel")~+ ~I'll consider your words. I don't know if this is worth that much risk.~ + give_up

CHAIN X3HDD brag 
~So you say. But you have no idea who we are. We're not the lowly blokes you fought desperate for some gold.~
EXTERN X3HDD words 

CHAIN X3HDD no_interest 
~You would regret ignoring me. We're not the same lowly blokes from the streets hoping to get lucky you fought before.~
EXTERN X3HDD words 

CHAIN X3HelJ action 
~Aye, I appreciate yer "warning" to us, but actions speak louder than words. Let the pit do the talking.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
EXTERN X3HDD intimidate

CHAIN X3HelJ regret 
~Don't let this dwarf get to ye. Pride and arrogance makes him think he can win. He will be for a surprise.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~
EXTERN X3HDD give_up

CHAIN X3HDD intimidate 
~Then you have chosen your fate. I'll give you a quick death with my axe when it's time.~
DO ~AddJournalEntry(@6,QUEST)SetGlobal("X3HelQuest","GLOBAL",8)EscapeArea()~ EXIT 

CHAIN X3HDD give_up 
~Tell Rulendo of your desire to forfeit, and enjoy that your head will still rest on your shoulders, eh?~
DO ~AddJournalEntry(@6,QUEST)SetGlobal("X3HelQuest","GLOBAL",8)EscapeArea()~ EXIT 