BEGIN X3RM25 

CHAIN IF ~OR(2)!IsValidForPartyDialogue("X3Reb")Global("X3RebToBEvent","GLOBAL",2)~ THEN X3RM25 RecorderToBEventNoFire 
~*Hic*. Can't down them fast enough. Guess this is all loyalty gets you.~
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Reb")~ THEN X3RM25 RecorderToBEventFire
~Aw...I must be seeing things. Is'sim that you, Rebecca?~
DO ~SetGlobal("X3RebToBEvent","GLOBAL",2)~
END
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J SonSaved  
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J SonNotSaved 

CHAIN X3Reb25J SonSaved 
~You...you are the slaver that served Phelgrim. You escaped from us.~
== X3RM25 ~*Hic*. Yeah. I did. I *hic* didn't want to die. But now it don't matter. Can't magick my way out of this place. Going to die one way or another.~
== X3Reb25J ~It is justice, even if less than you deserve. Maybe now you can understand how a slave feels to be stuck and trapped in a place that isn't home.~
END 
++ ~That isn't enough. He should die for what he did.~ EXTERN X3RM25 SS.1
++ ~Are you sure about sparing his life, Recorder, after all he did?~ + SS.2 
++ ~Let's spend no more time with this man. Let him rot away on his drink.~ EXTERN X3RM25 SS.3 

CHAIN X3RM25 SS.1 
~Death may be my doom, but I will stave it off as long as I can. You won't *hic* kill me that easily.~
DO ~Enemy()~
EXIT 

CHAIN X3Reb25J SS.2 
~There is little to spare. He may not even make it out of here alive. But if he does, maybe he will come to a reflection, and change his course.~
== X3RM25 ~*Hic* Phelgrim...wouldn't have done the same you know. But I'm thankful you let me live at least long enough to enjoy the escape only ale can bring.~
EXIT 

CHAIN X3RM25 SS.3 
~Yeah. *Hic*. Let me drink. Maybe I can get a hit by a flying ball of fire while in a sweet dream, at least.~
EXIT 

CHAIN X3Reb25J SonNotSaved 
~You...You slaver! What insidiousness has you here?~
== X3RM25 ~Phelgrim is dead. I lost his property. This city is a hellhole falling apart from siege. *Hic* I dun'na want to be here.~
== X3Reb25J ~His property...Raban? Where is Raban?~
== X3RM25 ~Gone. Dead maybe. Taken by some rival slavers. Always the risk when you try to fight with supremacy with another smuggler gang. Now I got stuck here, my doom and impending grave.~
END 
++ ~Speak sense, mage, lest you lose your life. Where can we find these slavers?~ EXTERN X3RM25 SNS.1
++ ~Far less than you actually deserve, slaver.~ EXTERN X3RM25 SNS.2
++ ~Raban? What are you talking about?~ + SNS.3 

CHAIN X3RM25 SNS.1 
~You can't. You think I wouldn't if it was possible? They're half a world away by now. There's nothing left for me. This city is a fitting doom.~
== X3Reb25J ~I won't accept that. He has to be able to be found.~
== X3RM25 ~You are foolish and naive. Phelgrim should have made sure you were dead the first time.~
DO ~AddJournalEntry(@16,INFO)~
END 
++ ~Tell us what you know, then. Or I will beat it out of you.~ + SNS.4 
++ ~He can't tell us anything, Recorder, or won't. There's nothing more to be gotten out from him.~ + SNS.5 
++ ~Scoundrel. You don't deserve to breath another moment!~ + SNS.4

CHAIN X3RM25 SNS.2
~Deserve is so subjective. *Hic* I was a man of business now left with nothing. No money. No company. No slave goods. But at least I got enough to enjoy this last ale before this siege gets me.~
END 
++ ~Tell us what you know, then. Or I will beat it out of you.~ + SNS.4 
++ ~He can't tell us anything, Recorder, or won't. There's nothing more to be gotten out from him.~ + SNS.5
++ ~Scoundrel. You don't deserve to breath another moment!~ + SNS.4 

CHAIN X3Reb25J SNS.3
~My son, that is Raban. I lost him, in part due to this man if you don't remember. I must know where he is. I need to find him! Tell me!~
EXTERN X3RM25 SNS.1

CHAIN X3RM25 SNS.4 
~Give it your best shot. I've nothing left. No information to give you, no money. No family. No friends. No company. Take my life if you wish it. But I...I will at least see how many of you I can take down first!~
DO ~Enemy()~
EXIT 

CHAIN X3RM25 SNS.5 
~Yeah. *Hic*. I got nothing. And it don't matter. We're going to die together in this place anyway. All just a matter of how, by flaming ball or sword in the gut.~
EXIT 