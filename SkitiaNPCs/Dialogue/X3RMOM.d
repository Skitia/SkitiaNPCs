BEGIN X3RMOM

CHAIN IF ~GlobalTimerExpired("X3KResearch","GLOBAL")Global("X3KResearchTimer","LOCALS",1)~ THEN X3RMOM cheese_talk 
~There you are, yes, yes, yes. You won't believe just how interesting this cheese is. And dangerous, to certain kinds of creatures, at least.~
DO ~SetGlobal("X3KResearchTimer","LOCALS",2)~
END 
++ ~I was actually expecting you to come back and say this was ordinary cheese.~ + cheese_t1 
++ ~Percy's journal did hint there was something more to this cheese.~ + cheese_t1 
++ ~Well, go on then. Tell us about it.~ + cheese_t1 

CHAIN X3RMOM cheese_t1 
~This is Spring Luiren Cheese. It's known to cause weakness of the mind and body, fainting, and sometimes hallucinations, but only to halflings. Despite that, once they've had it once, they crave more and more of it.~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ interject 
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3RMOM cheese_t2 

CHAIN X3KalJ interject 
~This is that kind of cheese, the cheeeese? Sheesh. If he died from eating too much of it, it may not have been a murder at all.~
EXTERN X3RMOM cheese_t2 

CHAIN X3RMOM cheese_t2 
~Most curiously, this cheese has also been poisoned. There's trace bits of a toxin. It'd slowly weaken the body and cause death in weaker individuals, which the cheese is perfect for doing just that. Without the cheese's properties, a person would have a chance to survive.~
== X3RMOM ~From what I gathered, this poison is still strong enough to kill rats, and is for killing rats, yes, yes, yes. In fact, I believe Miss Flora, the alchemist, sells such.~
END 
++ ~Thank you for your insight, Siria.~ + cheese_t3 
++ ~Were you able to learn anything else?~ + cheese_t4
++ ~That will do then.~ + cheese_t3

CHAIN X3RMOM cheese_t3 
~Come back if you need any other services, yes, yes, yes.~
DO ~SetGlobal("X3KnowledgeCheese","GLOBAL",1)AddJournalEntry(@1,QUEST)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Thank you for your help, mother. Please, take care.~
EXIT 

CHAIN X3RMOM cheese_t4 
~If you are seeking a divination of who did it, I cannot give you that. You will have to do your due diligence to find that out, yes, yes, yes. And that is how it should be, knowledge should be discovered and sought before it can become the reward.~
EXTERN X3RMOM cheese_t3 

CHAIN IF ~Global("X3RebVampTempleTalk","GLOBAL",1)IsValidForPartyDialogue("X3Reb")~ THEN X3RMOM Recorder_Brought_Back 
~Never, child! Never ever worry your mother like you did again, no, no, no!~
DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",2)~
==  X3RebJ ~I am so sorry, mother. But thanks to <CHARNAME>...I am okay. They saved me.~
== X3RMOM ~I am just glad to see you safe, won't you stay a while?~
==  X3RebJ~I can't, but soon, maybe. I miss you and the temple soon, and I have so much to share when I get back!~
== X3RMOM ~Yes, yes, yes, we do wait so eagerly my beloved child. Oghma bless you and your efforts!~
EXIT 

CHAIN IF ~Global("X3RebVampire","GLOBAL",2)Global("X3RebVampTempleTalk","GLOBAL",0)~ THEN X3RMOM Recorder_Bodhi_Dead
~Welcome to the temple of Oghma, yes, yes, y-~
DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~
EXTERN X3RMOM Rec_Vamp 

CHAIN X3RMOM Rec_Vamp 
~No...my little girl. What has befallen her?~
= ~Wait...the ferret is with you. And I can still feel her presence. She did not! No, she did, no, no, no!~
END 
++ ~What are you talking about?~ + Rec_Vamp2 
++ ~Tell us what you know.~ + Rec_Vamp2 
++ ~Are you okay?~  + Rec_Vamp2 

CHAIN X3RMOM Rec_Vamp2
~She used the merging spell, taking her own spirit into Gustav! I told her, no, no, no, never to use it when she discovered it in her research.~
= ~You must reverse, it, yes! I have the knowledge, but not the youth and fire that you do. She learned it from the magic of old elven druids and mages, where some were so bonded to their animals in the midst of battle, they would become one with them and leave their own bodies.~
= ~This was irreversible if their body was destroyed, but you have it! You can go to the altar they used in the North Forest to return them back, you just need a purple iolite, but ours was stolen, huff! Lost in the Small Teeth Pass to bandits!~
END 
++ ~That is no problem for me. We'll find it and bring her back.~ + Rec_Vamp3 
++ ~Why didn't she tell me about this spell before she used it?~ + Rec_Vamp4 
++ ~Is there anything you can tell me about these bandits?~ + Rec_Vamp5 
++ ~Where may I find the altar in the North Forest?~  + Rec_Vamp6

CHAIN X3RMOM Rec_Vamp3 
~Thank you, yes, yes, yes. Oghma bless you with all his knowledge so that you may succeed.~
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 

CHAIN X3RMOM Rec_Vamp4 
~The same reason why she does not tell me things: Because she believes by keeping it to herself she does not burden anyone else.~
END 
++ ~We'll find this gem and bring her back.~ + Rec_Vamp3 
++ ~Is there anything you can tell me about these bandits?~ + Rec_Vamp5 
++ ~Where may I find the altar in the North Forest?~ + Rec_Vamp6 

CHAIN X3RMOM Rec_Vamp5 
~No, no, no, just that they are a nuisance, a small party that is forcing trade routes a different direction. Too far out for the guards or soldiers to bother, with all of the politics up north taking their attention.~
= ~Oghma bless you with all of his knowledge so that you may succeed, for the sake of both of our hearts.~
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 

CHAIN X3RMOM Rec_Vamp6 
~The altar is in the center of old graves honoring the fallen of long ago, yes, for the elves if I remember. Be careful, for there are still many things there that could wish harm upon you.~
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 




//Alternate: Talked to Priest of Oghma First. 

EXTEND_BOTTOM DOGHMA 0
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

EXTEND_BOTTOM DOGHMA 3
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

EXTEND_BOTTOM DOGHMA 7
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

EXTEND_BOTTOM DOGHMA 9
+ ~Global("X3RebVampire","GLOBAL",2)!Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN X3RMOM Rec_Vamp
+ ~Global("X3RebVampire","GLOBAL",2)Dead("X3RMOM")PartyHasItem("X3RBody")Global("X3RebVampTempleTalk","GLOBAL",0)~ + ~A friend took her own life to prevent herself from falling to vamprism, but we don't know how to bring her back. Given her time here, we thought you might know something.~ DO ~SetGlobal("X3RebVampTempleTalk","GLOBAL",1)~ EXTERN DOGHMA Rec_Vamp
END

CHAIN DOGHMA Rec_Vamp
~Is that the daughter of Siria? Two good souls of the temple lost, then, but...something seems off. It is as if she is here yet...perhaps...~
= ~Yes. I believe she placed her spirit within that furry creature that is poking out of your bag. Not all hope is lost after all.~
END 
++ ~So we can save her?~ + Rec_Vamp2 
++ ~How do I get her back into her own body?~ + Rec_Vamp2 
++ ~Why didn't you say anything, ferret?~ + Rec_Vamp3

CHAIN DOGHMA Rec_Vamp2 
~I recall a story where druids intimately connected to their bonded animal would temporarily merge with them to help defend the forest, and they would perform a ritual with a purple iolite and their hostless body to set them back.~
= ~I believe such an altar may be in the North Forest, and we were expecting a purple iolite just days ago, but the merchant responsible abandoned their goods to bandits in small teeth pass. If by some miracle you can find it, knowledge may yet set her free.~
END 
++ ~I will depart immediately, thank you.~ EXTERN DOGHMA 17
++ ~Is there anything you can tell me about these bandits?~ + Rec_Vamp4 
++ ~Where may I find the altar in the North Forest?~ + Rec_Vamp5

CHAIN DOGHMA Rec_Vamp4 
~They are a small group about the size of your own, seeking gold and goods from those bold enough to make the passage through. They have encouraged most to redirect their route elsewhere, even if it is faster.~
EXTERN DOGHMA Rec_Vamp6 

CHAIN DOGHMA Rec_Vamp6 
~I hope my little bit of knowledge has been of service. May Oghma illuminate the path.~
END 
IF ~~ DO ~~ UNSOLVED_JOURNAL @33
EXIT 

CHAIN DOGHMA Rec_Vamp5 
~I believe it is in the center of several graves to honor those who were not so fortunate to be saved.~
EXTERN DOGHMA Rec_Vamp6 

CHAIN DOGHMA Rec_Vamp3 
~She is part of the furry creature, but is limited to all of its capabilities, including lack of speech. A mage may control her familiar, but without being truly alive that control is quite limited.~
EXTERN DOGHMA Rec_Vamp2 


CHAIN IF ~IsGabber("X3Reb")~ THEN X3RMOM Recorder_Talks 
~Take care of yourself. You are my only child, and so much has happened to you already I could not protect you from.~ [X3Blank]
== X3RebJ ~I will be okay, mother. I promise.~
EXTERN X3RMOM services 

CHAIN IF ~!IsGabber("X3Reb")!Global("X3RebQuest","GLOBAL",11)~ THEN X3RMOM Player_talks 
~Welcome to the temple of Oghma, yes, yes, yes.~
EXTERN X3RMOM services 

CHAIN X3RMOM services 
~Is there anything I can do for you today?~
END 
IF ~Global("X3VieQuest","GLOBAL",1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_quest
+~PartyHasItem("X3KCHEES")~+ ~Could you take a gander at this bag of cheese?~ DO ~TakePartyItem("X3KCHEES")~ + cheese 
+~!GlobalTimerExpired("X3KResearch","GLOBAL")Global("X3KResearchTimer","LOCALS",1)~+ ~Have you learned anything about the cheese yet?~ + not_ready
+~Global("X3VieQuest","GLOBAL",1)!IsValidForPartyDialogue("X3Vie")~+ ~Do you know where we could find an elf named Sules'terim?~ + sage
++ ~I would like to see your services.~ DO ~StartStore("doghma",LastTalkedToBy())~ EXIT  // Temple of Oghma
++ ~Nothing, I will be on our way.~ EXIT 
+~!IsGabber("X3Reb")~+ ~What is it that you do here?~ + mom_does

CHAIN X3RMOM  mom_does 
~I am the high priest. I help advise our priests and manage day to day affairs, yes yes yes.~
EXIT 

CHAIN X3RMOM not_ready 
~No, no, no. And I won't any faster with interruptions. Come back in an hour.~
EXIT 

CHAIN X3VieJ Vienxay_quest 
~Excuse me. As a scholar here in this human's temple, I assume you had the delight perhaps to be graced or know of a sage named Sules'terim.~
EXTERN X3RMOM sage 

CHAIN X3RMOM sage
~Sules'terim. The great sage of Evermeet. I have met him. Why do you seek him?~
END 
++ ~My companion, Vienxay, believes there is a tome of old elven magic he might have knowledge on.~ + inform
+~IsValidForPartyDialogue("X3Vie")~+ ~Yes, why are we seeking it, Vienxay?~ EXTERN X3VieJ seeking 
++ ~Personal reasons. Nothing we feel comfortable sharing.~ + personal 
+~!IsValidForPartyDialogue("X3Vie")~+ ~I will wait to have my companion available, Vienxay, to explain it.~ + assistance 

CHAIN X3VieJ seeking 
~I believe Sules'terim has information of ancient magical knowledge of my people, which I take pride in. Can you tell me where he is or not?~
EXTERN X3RMOM inform 

CHAIN X3RMOM personal 
~That makes your intentions cloudy...but in Oghma's illuminative blessings I sense no malice in your reasoning, only guardedness. So I will tell you a little, but no more than you need.~
EXTERN X3RMOM inform
 

CHAIN X3RMOM inform 
~Sules'terim just helped me finish some research into the old halfling realm of Meiritin a few months ago. He's on sabbatical in Imnesvale village for the year now not far from here. He's missed in Althkata, but he deserves the rest.~
DO ~RevealAreaOnMap("AR1100")IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@2,QUEST)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ go_now
++ ~Where is the Imnesvale village?~ EXTERN X3RMOM where 
++ ~I will make my way there if time permits, then. Farewell.~ + assistance 
++ ~Thank you for your assistance.~ EXTERN X3RMOM assistance 

CHAIN X3VieJ go_now 
~Thank you for being a helpful member of your kind, gnome priestess. Now we can find the sage and make some progress straight away.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A helpful member of our kind?~
== X3VieJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN ~Yes, yes, a compliment, clearly. Hardly a need to be offended.~
END 
++ ~Where is the Imnesvale village?~ EXTERN X3RMOM where 
++ ~We'll go when we have time, Vienxay. We have bigger priorities right now.~ DO ~DisplayStringNoNameDlg(Player1,@503)IncrementGlobal("X3VieApp","GLOBAL",-3)~ + priorities 
++ ~Thank you for your assistance.~ EXTERN X3RMOM assistance 

CHAIN X3RMOM assistance 
~May Oghma illuminate your path with knowledge and an open mind.~
EXIT 

CHAIN X3VieJ priorities 
~Hrmph. Fine.~
== X3RMOM ~Being rude will not get you far. You can fetch a book on the shelf to be reminded of the consequences of practicing poor etiquette.~ 
== X3VieJ ~Oh, whatever. Let us carry on, <CHARNAME>, I can't stand being lectured by a gnome.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~*Sigh*, if only...oh its no use to say. Please be well, mother.~
EXTERN X3RMOM assistance 

CHAIN X3RMOM where 
~You can find the Imnesvale village in the Umar Hills. It is a beautiful, secluded area, with a lot of nonsense superstition about the place.~
== X3RMOM ~If you go, may Oghma illuminate your path with knowledge and an open mind.~
EXIT 

CHAIN X3RMOM cheese 
~That is a most unusual request, yes, yes, yes. But do not be disappointed if I respond with "This is ordinary cheese from a cow in a field somewhere in Amn."~
== X3RMOM ~I'll do some research on this. Just give me an hour to consult my books and resources. I am sure you can find something to do in the meantime.~
DO ~SetGlobalTimer("X3KResearch","GLOBAL",ONE_HOUR)SetGlobal("X3KResearchTimer","LOCALS",1)AddJournalEntry(@0,QUEST)~
EXIT 

