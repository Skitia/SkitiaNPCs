BEGIN X3REMOVE // The Bounty Hunter, I guess?
BEGIN X3RTANYA

CHAIN IF ~True()~ THEN X3REMOVE meeting
~Do you have a reason for speaking to me?~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ why_me 
++ ~You've been sending thugs at my friend, Recorder, and my party.~ DO ~SetGlobal("X3RebQuest","GLOBAL",10)~  + sending // Quest Variable check.
++ ~Who are you?~ + who_are
++ ~Nothing, we'll leave you be.~ EXIT 

CHAIN X3RebJ why_me 
~You have been sending people to kill us. We're here to ask you to stop.~
DO ~SetGlobal("X3RebQuest","GLOBAL",10)~
== X3REMOVE ~Ask? Ha. You are certainly Rebecca. Meek as ever. It is incredulous you've survived at all.~
== X3RebJ ~I don't care. Leave us alone, or we will defend ourselves from you and your thugs.~
== X3REMOVE ~Now there is a bit of fire. Perhaps you are really Phelgrim's wife after all. A pity you threw away your marriage and a life of luxury in defiance.~
== X3RebJ ~I was his property first, his wife second. Only someone like you would see it as anything else.~
== X3REMOVE ~I see it as betrayal of your husband and master. And traitors...traitors have what is coming to them.~
END 
++ ~Who even is this Phelgrim? What does he want with her?~ EXTERN X3REMOVE who_Phelgrim 
++ ~I don't really care about any of this. But leave us out of it.~ EXTERN X3REMOVE care 
++ ~Those who try to hurt my friends tend to get hurt back. Is that what you want?~ EXTERN X3REMOVE want 

CHAIN X3REMOVE care 
~You have prevented Phelgrim from having his vengeance. You are as much a mark as she is, now.~
EXTERN X3REMOVE who_Phelgrim 

CHAIN X3REMOVE want
~You would not threaten me if you had even an inkling of who Phelgrim was.~
EXTERN X3REMOVE who_Phelgrim 

CHAIN X3REMOVE who_Phelgrim 
~Phelgrim is the best "trader" in the seas. Between Lantan and here,  He may be a gnome, the gnome has earned fierce reputation that even Amn's vessels know to steer clear of him. He is a poor enemy to make and unfortunately you've made him yours.~
== X3RebJ ~"Trader". You mean *slaver*.~
== X3REMOVE ~You have no moral high ground, murderer. You took his most valued property and when that didn't work, slit its throat. Sickening, really. All in some dumb act of defiance.~
== X3RebJ ~Don't talk about that! Do not talk about that! Just leave us alone!~
== X3REMOVE ~Look at how you lose control. Your tears will do *nothing*. You have dug your grave. Make it easy for my men and jump in it.~
END 
++ ~Enough of your lies. This ends now.~ + fight 
++ ~Recorder, what have you done? There is more to this than you are telling me.~ EXTERN X3RebJ what_have_you_done
++ ~They may try. Lets get out of here, Recorder. This man can't hurt us.~ DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~ + cease 

CHAIN X3RebJ what_have_you_done
~I...I...I...~
== X3REMOVE ~She can't even talk. The guilty is silenced. I may have to take extra time in finding some new willing killers. This suffering of yours is true justice.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~<CHARNAME>, either let us get out of here or stop this man. We can have Recorder answer afterwards.~
END 
++ ~Enough out of you, thug. This ends now.~ EXTERN X3REMOVE fight 
++ ~If you want to hurt her, fine, but leave the rest of us out of this. We have no part in this.~ DO ~DisplayStringNoNameDlg(Player1,@403)IncrementGlobal("X3RebApp","GLOBAL",-3)~  EXTERN X3REMOVE cease // Ouch, Approval lost here. 
++ ~They may try. Lets get out of here, Recorder. This man can't hurt us.~ DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~ EXTERN X3REMOVE cease 


CHAIN X3REMOVE who_are 
~I am the Remover. I handle swift solutions to problem people. I get good work, and I know who to hire to get things done. Lucky for you, you aren't one such person, yet.~
END 
++ ~On the contrary. You've been sending thugs at my friend Recorder, and thus my party.~ DO ~SetGlobal("X3RebQuest","GLOBAL",9)~ + sending // Quest Variable check.
++ ~Farewell.~ EXIT 

CHAIN X3REMOVE sending 
~And you live. May I make a suggestion? Separate yourself from the quarry if you find it so inconvenient.~
END 
++ ~And what stops me from finishing this now, with you?~ + turn 
++ ~Back off. I'd have no quarrel with you.~ + meek 
++ ~I'll turn you in to the guards if I must.~ + turn 

CHAIN X3REMOVE turn 
~Will you now? I am not afraid of you. You have killed those who went after Phelgrim's wife, and now your plan is to get me? Do you really think it will end there?~
== X3REMOVE ~Phelgrim's ire knows no end. That you have prevented his revenge will only have him turn on all of you. You and the gnome will never be safe.~
END 
++ ~Wife? Recorder is married to him?~ + married 
++ ~Then he may try. But you will cease.~ + cease 
++ ~Then he will die as soon as I am done killing you.~ + fight

CHAIN X3REMOVE married 
~The wife to one of the finest slavers. A man dangerous to cross, as she should have known.~
END 
++ ~It doesn't matter. We will keep her safe from you or him.~ DO ~DisplayStringNoNameDlg(Player1,@416)IncrementGlobal("X3RebApp","GLOBAL",6)~ + cease  
++ ~If you want to hurt her, fine, but leave us out of it.~ DO ~DisplayStringNoNameDlg(Player1,@409)IncrementGlobal("X3RebApp","GLOBAL",-9)~  + cease 
++ ~He will go down all the same, as will you.~ + fight 

CHAIN X3REMOVE meek 
~Oh, I will stop, of course, I don't mean to be to be an inconvenience. Ha! How did you even survive against the men I sent against Phelgrim's wife I will never understand.~
END 
++ ~Wife? Recorder is married to him?~ + married 
++ ~Then he may try. But you will cease.~ + cease 
++ ~Then he will die as soon as I am done killing you.~ + fight 

CHAIN X3REMOVE fight
~I do not typically do the work of my men...but you leave me no choice. Come on, dear, we have practice before us.~
DO ~AddJournalEntry(@7,QUEST_DONE)Enemy()ActionOverride("X3RTANYA",Enemy())~ EXIT 

CHAIN X3REMOVE cease 
~Your gall amuses me. I have no further men to send at you for now. But understand that Phelgrim *always* gets his way, and I never fail him. Your death is only a question of when.~
DO ~AddJournalEntry(@6,QUEST_DONE)EscapeArea()ActionOverride("X3RTANYA",EscapeArea())~ EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Reb")~ THEN X3RTanya meeting_1
~Pretty, you're lucky your bounty isn't high enough. I'm the Remover's favorite and best cutthroat, and for the right price, your pretty neck would have a nice, beautiful gash in it if I so pleased.~
== X3RebJ ~Um...can we go now, please <CHARNAME>?~
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Reb")~ THEN X3RTanya meeting_2
~Are you sure you want to get so close to me? My knives are silent and swift. If you're wanted dead for the right price, I make it true.~
EXIT 
