
BEGIN X3ECH 
BEGIN X3EGOD 
// The Hornkeepers should leave after the heir is selection, so they need no comment afterwards.
// They will also not be present for the duel, believing it "uncouth".

CHAIN IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3ECH heir_selection 
~Speak to Lord Castilla. This is overdue to begin.~
EXIT 

CHAIN IF ~Global("X3ECHQuest","GLOBAL",2)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN X3ECH support_done_already 
~I have pledged my support. We've nothing further to discuss for now.~
EXIT 

// Emily not seen or not valid for dialogue, less than chapter 6, and quest never initiated.
CHAIN IF ~Global("EmilyNotPresent","LOCALS",0)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",0)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3ECH no_emily
~You do not appear to be Godfrey's evaluators for the auxiliary. Do you have business with me?~
END 
++ ~Who are you?~ + no_emily.1 
++ ~What are you talking about? What evaluators?~ + no_emily.2
++ ~No. Excuse me.~ EXIT 

CHAIN X3ECH no_emily.2
~In order for my son Godfrey to be admitted into the Radiant Heart's auxiliary, he must first be evaluated. Prestige is important, not any person of any reputation can enter.~
== X3ECH ~House Hornkeeper prides itself on its grace and prestige in how we carry ourselves. I am certain my son is worthy.~
END 
++ ~You are Charmaine Hornblower, then? Emily wishes to speak to you.~ + no_emily.3 
++ ~I wish you luck then.~ + no_emily.4
++ ~We must be going. Farewell.~ EXIT 

CHAIN X3ECH no_emily.3 
~Ah, I have been expecting her. But I will not speak of what I wish with a messenger. When she is in front of me, we may speak further.~
DO ~SetGlobal("EmilyNotPresent","LOCALS",1)~
EXIT 

CHAIN X3ECH no_emily.4 
~Luck is not needed, but it is appreciated all the same.~
EXIT 

CHAIN X3ECH no_emily.1
~I am Lady Charmaine Hornkeeper, matriarch of House Hornkeeper in the glorious land of Tethyr, bless the queen. The chapter house here is the closest distance to our home near the border, and that is why we are here.~ 
END 
++ ~You are Charmaine then? I believe Emily needs to speak with you.~ + no_emily.3 
++ ~You are here to join the Radiant?~ + no_emily.2
++ ~We must be going. Farewell.~ EXIT 

CHAIN IF ~Global("EmilyNotPresent","LOCALS",1)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)GlobalLT("X3ECHQuest","GLOBAL",2)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3ECH no_emily_again
~I am afraid I have no business with you. If this is about Emily, have her come to me herself.~
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",0)See("X3Emi")IsValidForPartyDialogue("X3Emi")~ THEN X3ECH charmaine_quest_start
~Lady Emily Castilla. I have not seen you in a year, almost.~
== X3EmiJ ~Lady Hornkeeper! It is good to see you again. Catherine told me you would be around here and-~
== X3ECH ~Yes, yes. I hate to get to the point, Emily, but I am expecting Godfrey's evaluators soon. Let us address why you are here.~
== X3EmiJ ~Of course, Lady Hornkeeper. I assume you know that my father intends to select who will inherit the responsibility of our family name and estate.~
END 
IF ~ReputationGT(Player1,16)~ EXTERN X3ECH my_support 
IF ~!ReputationGT(Player1,16)~ EXTERN X3ECH no_support 

CHAIN X3ECH no_support 
~And you are here with the intention of having my support. You cannot have it.~
END 
++ ~Wait, you haven't even heard her argument!~ + not_yet
++ ~Well that's...the end of that, then. Sorry, Emily.~ EXTERN X3EmiJ my_argument
++ ~A waste of time, then. Your brother has likely influenced her decision already.~ + argument 
++ ~We are not leaving until you hear her out.~ + not_yet

CHAIN X3ECH argument 
~He has not, nor does he have my support either. At least, not yet.~
EXTERN X3ECH support_requires

CHAIN X3ECH not_yet
~I will not. She will not have my support. At least, not yet.~
EXTERN X3ECH support_requires

CHAIN X3EmiJ my_argument
~But...you haven't even heard my argument, lady Ho-~
== X3ECH ~And I will not. You will not have my spport. At least, not yet.~
EXTERN X3ECH support_requires

CHAIN X3ECH support_requires 
~House Hornkeeper values prestige above all the three noble tenants: Might, Grace, and Prestige. Your brother shows some promise, for he has gained the respect of some of the nobles while you have been away playing adventurer, Emily.~
== X3EmiJ ~But the Queen herself was an adventurer, doing good in tumoltous times, just like I am now.~
== X3ECH ~And that is why you also have potential. But if you wish me to support you over your brother, show me that you have the prestige. Garner yourself a reputation amongst the people here with your friends. Show them what we are like in Tethyr, and the standard we hold ourself to.~
== X3ECH ~Then, and only then, when you return to me, will I consider supporting you over Thomas.~
END 
++ ~How will we do what you ask?~ + ask 
++ ~That's it? That doesn't sound so terrible, Emily.~ EXTERN X3EmiJ so_terrible 
++ ~And if Emily doesn't do this? Will you be supporting Thomas instead?~ + thomas_instead 

CHAIN X3ECH ask 
~There are many people in need of help in this city, as Emily well knows. Prove to me that you have the people in mind and serve them. People talk of the good deeds others do. It will come to my ears, and only prestige, the thoughts of others, will sway my decision.~
END 
++ ~Do our thoughts not count?~ + not_count 
++ ~That's it? That doesn't sound so terrible, Emily.~ EXTERN X3EmiJ so_terrible 
++ ~And if Emily doesn't do this? Will you be supporting Thomas instead?~ + thomas_instead 

CHAIN X3ECH not_count 
~They do not. You are her companions. Your view would be biased.~
END 
++ ~We will return then, when we have gained more prestige amongst the populace.~ + return_later
++ ~This doesn't sound so terrible, Emily.~ EXTERN X3EmiJ so_terrible 
++ ~And if Emily doesn't do this? Will you be supporting Thomas instead?~ + thomas_instead 

CHAIN X3ECH thomas_instead 
~Indeed. If I am going to pick the girl that chased adventurer and as rumored, her true mother, then I will pick someone who the people see value in their character.~
== X3EmiJ ~Well, about t-~
== X3ECH ~I would rather not know, Emily. You are a Castilla, because you are Lord Castilla's daughter. That matters more than who your father bestowed the gift of his noble seed. ~
== X3EmiJ ~This conversation got *really* awkward. I think we'll return when we're done with this.~
== X3ECH ~Good. Off you go then, I am expecting Godfrey's evaluators any moment.~
DO ~AddJournalEntry(@3,QUEST)SetGlobal("X3ECHQuest","GLOBAL",1)~
EXIT 

CHAIN X3EmiJ so_terrible 
~I guess not. I just hope we have the time, considering your own goals, <CHARNAME>.~
== X3ECH ~It is your own future at stake, not anyone elses. It is your decision if it is important or not, not your friends, and whether to put the time in.~
== X3EmiJ ~You are right, Lady Hornkeeper. But I doubt I stand much a chance of helping many people all alone.~
== X3ECH ~Then if they care about you, they will give you the time you seek. Now, I expect Godfrey's evaluators soon. Return when you have fulfilled my request. I will still be here.~
DO ~AddJournalEntry(@3,QUEST)SetGlobal("X3ECHQuest","GLOBAL",1)~
EXIT 

CHAIN X3ECH return_later 
~That would be best. Good luck, and take care of yourself, Lady Castilla.~
DO ~AddJournalEntry(@3,QUEST)SetGlobal("X3ECHQuest","GLOBAL",1)~
EXIT 

CHAIN X3ECH my_support 
~And you are here with the intention of receiving my support. You already have it.~
== X3EmiJ ~Wait...really? This isn't some sort of joke? I didn't even give my r-~
== X3ECH ~I do not need words. I have heard of your deeds around the city, what you have been trying with your companions. It reminds me of the Queen-Monarch before she held the throne. That is the character we need more if in Tethyr.~
== X3EmiJ ~I...well, I'm at a loss of words of what to say, besides...thank you. Thank you so much, Lady Hornkeeper.~
== X3ECH ~It is nothing less than you deserve. We will see if it is enough to grant you the seat of Heirdom. It will be a difficult responsibility, and you will be expected to birth an heir of your own. Have you given thoughts to suitors?~
END 
IF ~OR(2)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_active // Romance at 1 or 2
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_not_active // Romance not at 1 or 2

CHAIN X3EmiJ romance_active 
~Erm well, maybe...~
== X3ECH ~You are blushing, Lady Castilla. Perhaps it is someone I have met? Perhaps one of your c-~
== X3EmiJ ~You know this is all really too soon to think about. I'm not even heir yet, Lady Hornkeeper.~
== X3ECH ~That is true. Do not let me keep you then, from what you need to do to secure your title, Lady Castilla.~
EXTERN X3EmiJ quest_Charmaine_end 

CHAIN X3EmiJ quest_Charmaine_end 
~I-, yes. Thank you once again, Lady Hornkeeper. Your support will not be wasted, I assure you.~
== X3ECH ~Good. May Siamorphe see you as worthy as I do.~
DO ~AddJournalEntry(@4,QUEST)SetGlobal("X3ECHQuest","GLOBAL",2)SetGlobal("X3ECHVote","GLOBAL",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
EXIT 

CHAIN X3EmiJ romance_not_active
~You always bring up the awkward subjects, Lady Hornkeeper. Can't this wait until I'm actually heir for sure?~
== X3ECH ~That would be wiser. Do not let me keep you then, from what you need to do to secure your title, Lady Castilla.~
EXTERN X3EmiJ quest_Charmaine_end 


CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",1)See("X3Emi")IsValidForPartyDialogue("X3Emi")!ReputationGT(Player1,16)~ THEN X3ECH not_enough
~You return too soon. I am not yet convinced you have the prestige. Remember that we too, serve others. Return when you have better prestige with the populace, and then we will speak.~
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",1)See("X3Emi")IsValidForPartyDialogue("X3Emi")ReputationGT(Player1,16)~ THEN X3ECH enough_prestige
~Lady Emily Castilla.~
== X3EmiJ ~Lady Hornkeeper, we have returned after a time, and-~
EXTERN X3ECH my_support 
// Godfrey lines here 
CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGODBanter","LOCALS",1)See("X3Emi")IsValidForPartyDialogue("X3Emi")~THEN X3EGOD one_liner_one 
~Be well, Lady Castilla.~
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3EGOD one_liner_two
~I am nervous, but I hope my wish to join the auxiliary is accepted. I must focus myself for their questions, so if you wish conversation, speak to my mother.~
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGODBanter","LOCALS",0)See("X3Emi")IsValidForPartyDialogue("X3Emi")~ THEN X3EGOD Godfrey_Emily_Banter
~Lady Castilla, it has been a while. You look fairer by the day.~
DO ~SetGlobal("X3EGODBanter","LOCALS",1)~
== X3EmiJ ~Thank you, Godfrey. I honestly didn't expect you to take this route with your life. I hope you are selected. You would do well here, I think.~
== X3EGOD ~So do I, my lady. But if I am not, I will continue to do my best for house Hornkeeper, and house Castilla if you become heir.~
== X3EmiJ ~What if I don't?~
== X3EGOD ~My mother will support Thomas out of loyalty, and I will follow her example, of course. But I would prefer yourself. I believe you would carve the best future, and my mother has been talking of a possible arrangement with our families if you are selected.~
== X3EmiJ ~I...think I know what you are getting at. Your mom would talk about something like that, wouldn't she?~
== X3EGOD ~I don't mean to spring up the idea so forwardly, my apologies, lady Castilla.~
END 
IF ~OR(2)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_active_Godfrey // Romance at 1 or 2
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_not_active_Godfrey // Romance not at 1 or 2

CHAIN X3EmiJ romance_active_Godfrey 
~It's just...there might be...someone else. Anyway, I'm not even heir yet. I think anything your mother is discussing should wait, shoudn't it?~
EXTERN X3EGOD Godfrey_Emily_end_banter

CHAIN X3EGOD Godfrey_Emily_end_banter
~*Hem*, yes, of course. Please...do not let me take up more of your time. I must be getting prepared, myself.~
== X3EmiJ ~Good luck, Godfrey!~
EXIT 

CHAIN X3EmiJ romance_not_active_Godfrey 
~Look I'll at least give it an honest thought when this heir selection is all over with. We don't know what will happen yet.~
EXTERN X3EGOD Godfrey_Emily_end_banter

