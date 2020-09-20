BEGIN X3RPIR1

CHAIN IF ~Dead("X3RPHEL")~ THEN X3RPIR1 Fight 
~Them! They murdered Phelgrim! Kill them!~
DO ~ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT

CHAIN IF ~!IsValidForPartyDialogue("X3Reb")~ THEN X3RPIR1 Talk 
~Best you move along. I don't think we have any reason to speak with one another.~
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Reb")~ THEN X3RPIR1 Talk_Recorder
~Well boys, look at what we have here. Miss Rebbecca. Did you come to beg your way back into your master's good graces?~
== X3RebJ ~No. We do not need to be in conflict. We're here for our own business, and won't bother him.~
== X3RPIR1 ~Your own "business"? To swipe back your boy, perhaps, or to finish the murder you tried years ago?~
== X3RebJ ~What are you talking about? My son is alive?~
== X3RPIR1 ~He is Phelgrim's son. He is not *your* son, he is his property. Are you thinking of sneaking into Desharik's estate to take him? Because you will not be leaving here alive.~
END 
+~Global("AsylumPlot","GLOBAL",10)~+ ~You should reconsider. We are no threat to you. We are here to get into Spellhold, nothing else.~ + Pirate.1
++ ~Tell us where Recorder's boy is, and we might let you live.~ + Pirate.2
++ ~If you want violence, you will get it.~ + Pirate.3
++ ~Recorder, actually, I think they're confused. We are not supposed to be causing disruptions, remember?~ EXTERN X3RebJ Pirate.4

CHAIN X3RebJ Pirate.4
~I'm sorry, <CHARNAME>, I was worried I would be recognized. But if they have my son, t-~
== X3RPIR1 ~Should just give him back? The only thing we will give you, miss Rebecca, is an overdue death.~
DO ~AddJournalEntry(@10,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 

CHAIN X3RPIR1 Pirate.3 
~Kill them. One. By. One.~
DO ~AddJournalEntry(@10,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 

CHAIN X3RPIR1 Pirate.2 
~Do you think we will just hand you that information? It would waste our time. In a moment, you will be on the ground, bleeding to death.~
DO ~AddJournalEntry(@10,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 

CHAIN X3RPIR1 Pirate.1
~Desharik could help you, but your words are hollow and rings with lies to me. Make your prayers, for it is time to die.~
 DO ~AddJournalEntry(@10,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 
