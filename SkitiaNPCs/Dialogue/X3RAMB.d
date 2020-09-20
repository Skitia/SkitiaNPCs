 BEGIN X3RAMB1 

/* Recorder's first ambush */
/* Both groups should already be hostile. The first group's letter is vague, but the second indicates Recorder in more detail and who to return to. Recorder will pipe up when that item is picked up, but not the first.*/

CHAIN IF ~True()~ THEN X3RAMB1 ambush 
~Phelgrim sends his regards. Those who mess with his property suffer severe consequences, even his spouse, and you are about to get yours.~
END 
++ ~I don't know who this Phelgrim is, I'm certainly not married to him,  and I've no idea what you are talking about.~ + who
++ ~Put down your blades before you get hurt.~ + blades
++ ~We have done no such thing. Explain yourselves.~ + who

CHAIN X3RAMB1 who 
~Playing dumb now, are we?~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ recognize 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3RAMB1 strike 

CHAIN X3RAMB1 blades
~My friend, you have it reversed. We intend to do the hurting. But put up a fight if you wish, it makes it more...fun.~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ recognize 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3RAMB1 strike 

CHAIN X3RAMB1 strike 
~A shame then. You should be more careful who you choose to keep company with. No matter, your death will be quick.~
DO ~AddJournalEntry(@4,QUEST)~
EXIT 

CHAIN X3RebJ recognize 
~Why is he looking at me like that? We have nothing to do with this. Please, leave us alone.~
== X3RAMB1 ~Your ignorance or lies do not make you innocent. Your judgment has already been decided, we are just merely the executioners, and nothing you say will change your fate.~
DO ~AddJournalEntry(@4,QUEST)~
EXIT 

BEGIN X3RAMB2 

CHAIN IF ~True()~ THEN X3RAMB2 ambush2 
~Rebecca has been a hard gnome to track down. But now we've found her party. Unfortunately for you, it will be a very short and bloody ending now.~
END 
+~IsValidForPartyDialogue("X3Reb")~+ ~I think you have us confused for someone else.~ + confused_is 
+~!IsValidForPartyDialogue("X3Reb")~+ ~I think you have us confused for someone else.~ + confused_isnt 
+~IsValidForPartyDialogue("X3Reb")~+ ~Who is Rebecca?~ + who_is 
+~!IsValidForPartyDialogue("X3Reb")~+ ~Who is Rebecca?~ + confused_isnt 
+~IsValidForPartyDialogue("X3Reb")~+ ~If you're going to do something stupid, you chose the wrong group to do it with.~ + confused_is 
+~!IsValidForPartyDialogue("X3Reb")~+ ~If you're going to do something stupid, you chose the wrong group to do it with.~ + confused_isnt 

CHAIN X3RAMB2 confused_is 
~I think not. Do we, gnome?~
EXTERN X3RebJ Recorder_Rebecca 

CHAIN X3RAMB2 who_is 
~She is, your gnome.~
EXTERN X3RebJ Recorder_Rebecca 

CHAIN X3RebJ Recorder_Rebecca
~Me? My name is Recorder, not Rebecca.~
== X3RAMB2 ~Is that what you have forced yourself to believe? You can forget but your betrayal to Phelgrim is well remembered by others. Be grateful we are in a hurry to collect our reward that we will give you a quick and painless death.~
EXIT 

CHAIN X3RAMB2 confused_isnt 
~Did she not tell you? Did you really travel in ignorance?~
== X3Ramb2 ~It doesn't matter. You will serve as fine examples for what will become of those who betray Phelgrim.~
EXIT 
