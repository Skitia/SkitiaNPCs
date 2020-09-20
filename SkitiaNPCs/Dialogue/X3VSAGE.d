BEGIN X3VSAGE 


CHAIN IF ~GlobalGT("X3VieQuest","GLOBAL",3)~ THEN X3VSAGE spoke_before 
~How fare you this day?~
END 
+~PartyHasItem("X3VTOME1")~+ ~Here, I have the tome from Myth Drannor.~ + tome_recovered
+~Global("X3VieQuest","GLOBAL",4)PartyHasItem("X3VNOTES")~+ ~I managed to recover your notes.~ DO ~TakePartyItem("X3VNOTES")IncrementGlobal("X3VieQuest","GLOBAL",1)AddexperienceParty(10000)~ + notes 
+~Global("X3VieQuest","GLOBAL",4)~+ ~I haven't found your notes yet.~ + no_notes 
++ ~Just fine, thank you.~ EXIT 

CHAIN X3VSAGE no_notes 
~It is all right. Hopefully you can. I would hate to re-do all the writing from my head. My memory just isn't as sharp as it used to be.~
EXIT 

CHAIN X3VSAGE notes 
~Wonderful. Though is that slobber on them? I can barely read t- oh, that's just my poor quill work. I should hire an assistant.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ quest_two // Vienxay's branch 
++ ~We were glad to help.~ + reward 
++ ~I believe I am owed for my work?~ + owed
++ ~Yes, you probably should.~  + reward 

CHAIN X3VSAGE owed 
~Yes, yes. The greatest reward I can offer, knowledge and a lesson of life.~
EXTERN X3VSAGE story 

CHAIN X3VSAGE reward 
~Now, I do believe I should reward you. Allow me to share with you a bit of knowledge and a lesson of life.~
EXTERN X3VSAGE story 

CHAIN X3VieJ quest_two 
~Whatever, you have it now. Surely you can tell me what I want to know?~
== X3VSAGE ~I shall, but you may be dissapointed, Vienxay.~ 
EXTERN X3VSAGE story 

CHAIN X3VSAGE story 
~Years ago, my father had brought an ancient tome from Myth Drannor, once a great beautiful elven nation far to the east, with some of the strongest elf warriors and elf-friends.~
== X3VSAGE ~They were near the end of their journey in bringing it to Evermeet, when it was lost and everyone but him went missing. My father, in his shame, never said what happened, and everyone thought it was animals, or they had lost it and hid themselves in shame.~
== X3VSAGE ~It was not until my father lay on his deathbed, deathly sick from guilt, that I learned of what truly happened. Our great relic was lost to the dark ones. The elf warriors beside him were slain, and the human Samir was tied and pulled into the earth below.~
END 
++ ~Why did no one try to get it back?~ + back 
++ ~Your father must have felt terrible for what happened.~ + lesson 
++ ~That's it? I was expecting something grander.~ + grander 

CHAIN X3VSAGE back 
~To storm their home below? My father was so afraid that if he had said this, kin would sacrifice their lives for the tome, where he put value over the lives he failed.~
EXTERN X3VSAGE lesson 

CHAIN X3VSAGE grander 
~There is nothing grand about guilt. My father failed because in his party's strength he could do anything...as I assumed with my intelligence that wolves would not be a problem for a scholarly stroll.~
EXTERN X3VSAGE lesson 

CHAIN X3VSAGE lesson 
~Take it as a humbling lesson...that grand, beautiful things, things that we call lives, not precious artifacts, are lost, when we assume we are invincible and immortal like the gods.~
DO ~AddJournalEntry(@4,QUEST)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_comment // Vienxay's branch 
++ ~What if we tracked it down?~ + recovered 
++ ~I see. We will take it to heart then.~ + heart 
++ ~That tale was hardly worth the effort we did for you!~ + not_worth

CHAIN X3VieJ Vienxay_comment 
~The weak may have fallen, but I intend to recover it for my own use, sage. Where were they ambushed?~
== X3VSAGE ~It was not far from Suldanessellar, but do you think they would not have taken it with them? That tome lies in the deep now, in whatever city they came from.~
== X3VSAGE ~Even if you were to recover it, I would not wish for you to use it for yourself, when it is a gift that belongs to all of your people.~
== X3VieJ ~What do you mean? Surely it was meant to bestow some high ordering mage power?~
== X3VSAGE ~You have not heeded my lesson. That book was not for petty power. It was for the people, people that you bled, exile.~
== X3VieJ ~It was an accident, as I said! There is hardly need to be so mean to me.~
== X3VSAGE ~I am not being cruel enough, not for your crime of murder. If by some miracle you recovered it, if you truly care to redeem yourself, you would pass it to me so I could bring it to the homeland.~
== X3VSAGE ~But not even I am hateful enough to condemn you to the impossible. It is lost...and it will always be lost.~
EXIT 

CHAIN X3VSAGE recovered 
~If by some miracle you recovered it? I would want it brought here. But that tome was lost not far from Suldanessar, and likely lies in some foul under city. Only death awaits any attempt, and like my father, I would beg you not try.~
== X3VSAGE ~It is best this way. It serves as a fitting reminder of arrogance and humbles us to be cautious of all of our people's lives. The tome is lost, and it will always be lost.~
EXIT 

CHAIN X3VSAGE heart 
~I am glad. Perhaps by some miracle, the tome may be recovered some day from the pits of the dark. Perhaps...~
== X3VSAGE ~No. It is best it remains lost. For any blood that dies to retrieve it is t ragic and not worth the moment. It is best it stays lost.~
EXIT 

CHAIN X3VSAGE not_worth 
~Perhaps then, you may not heed the cautionary tale. You may believe yourself invincible and capable of anything...but you may lose someone precious with such carelessness. I pray you learn before that day comes.~
== X3VSAGE ~It is such thinking that I believe it is best the tome remains lost, even if by some miracle I wish it was recovered and in my hands so I could bring it to the people. No such foolishness is...well, foolish. The tome is lost, and always will be.~
EXIT 

CHAIN X3VSAGE tome_recovered 
~What? You joke, you must...let me see...it is...this is it. After all of these years...I am so thankful that you have brought this, but...~
END 
++ ~Some things in life are worth fighting for, and worth risking life for, no matter the tragedy.~ + worth_risking 
++ ~I don't suppose you might show your gratefulness with coin?~ + coin 
++ ~You are unhappy that you have this?~ + unhappy 

CHAIN X3VSAGE worth_risking 
~I did not think of it this way. It is odd that I continue to learn so much despite having so much academic knowledge. I must make my way with this to Evermeet right away, my sabbatical comes to an end.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage Vienxay_reward // Vienxay's branch 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage regular_reward // Regular branch 

CHAIN X3VSAGE regular_reward 
~Gold would not do to show just how appreciative our people are for this. Allow me to give you this tome from our homeland. Many of our archers and bards study from such tomes ourselves. If you understand our elven language, I believe you can be trusted with its secrets.~
DO ~ GiveItemCreate("X3VTOME2",Player1,1,1,1)~
== X3VSAGE ~I truly must go now! My people have waited for this for decades now. May Corellon our father bless you for the great thing you have done for us.~
DO ~SetGlobal("X3VieQuest","GLOBAL",12)AddJournalEntry(@9,QUEST_DONE)EscapeArea()ReputationInc(1)AddexperienceParty(30000)~
EXIT 

CHAIN X3VSAGE coin 
~Coin? That would just not do at all. This...is an enormous thing you have done.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage Vienxay_reward // Vienxay's branch 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage regular_reward // Regular branch 

CHAIN X3VSAGE unhappy 
~I truly believed that the risk of recovery should not be done. And yet I am so glad that it is found. Perhaps I have forgotten the feeling of satisfaction of a risky plan after having learned things so easily in my life, and have feared the consequences formed by what I thought could happen, not what would.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage Vienxay_reward // Vienxay's branch 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSage regular_reward // Regular branch 

CHAIN X3VSAGE Vienxay_reward 
~And you, exile of Evermeet...I will tell our people what you have done. Perhaps...perhaps you may find redemption and your way home one year.~
== X3VieJ ~Being away from our people made me cold and angry at them. This doesn't undo the murder I did, but I hope it shows that I still love them, very much.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)ChangeAlignment("X3Vie",NEUTRAL)~
== X3VSAGE ~And they hear you, sister, and they will know. Wipe the tears from your face. You are loved.~
EXTERN X3VSAGE regular_reward 

CHAIN IF ~Global("X3VieQuest","GLOBAL",3)!NumTimesTalkedTo(0)~ THEN X3VSAGE meeting2
~Have you changed your mind? I could really use a hand with those notes!~
END 
++ ~Certainly, we would be glad to help.~ + assist 
++ ~Handle it yourself. We have important matters to get to.~ + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 

CHAIN IF ~Global("X3VieQuest","GLOBAL",3)NumTimesTalkedTo(0)~ THEN X3VSAGE meeting 
~Ah, salutations. You don't seem to be local to this place. Are you hunters per chance?~
END 
++ ~We are not hunters, but adventurers. We may still be able to help you.~ + hunters
++ ~Would you happen to be Sules'terim?~ + Sules_Terim 
++ ~Why do you ask?~ + hunters
++ ~Sorry, I've no time to talk right now.~ + no_time


CHAIN X3VSAGE no_time 
~Of course, of course. I'll see if I can find another that may assist me.~
EXIT 

CHAIN X3VSAGE Sules_Terim 
~Ah, yes, that I am. Have you read one of my works? I recently was assisting the Oghma church in Althkata with the history of the fallen halfling home of Meiritin. It wasn't far from here, but has a tragic history.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_talks
++ ~We are looking to see if you have any information about a tome containing knowledge about old elven magic.~ + book_info3 
++ ~What was your interest in hunters?~ + quest 
++ ~Time is precious. We will have to speak another time.~ + no_time 

CHAIN X3VSAGE hunters 
~I am Sules'terim, a mage on sabbatical here. The Umar Hills has an interesting, rich history, full more of rumor and tall stories than facts. I aim to rectify it with some research while enjoying the fresh air away from the city.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Vienxay_talks 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3VSAGE quest 

CHAIN X3VieJ Vienxay_talks 
~I have been looking for you, kindred! I am Vienxay. You, if I am right, are descended from one of the members of an expedition that lost a tome of our ancient magical secrets. That has my interest.~
== X3VSAGE ~Vienxay? As in Vienxay Starlight? The exile, banished for murder?~
== X3VieJ ~Falsely. Not like I can argue it.~
== X3VSAGE ~Oh no. I was one of the ones asked to review the evidence by the high council itself. There was certainly no doubt.~
== X3VieJ ~Of course you were. Fine. I admit...I lost control. But I never meant to.~
== X3VSAGE ~I can tell you are telling the truth, yet this was not your story before. Perhaps your time in exile has given you reason to change, and you would consider aiding me?~
EXTERN X3VSage quest 

CHAIN X3VSAGE quest 
~I lost some of my notes when I was exploring northwest from here from a pack of beautiful, but admittedly ferocious white wolves. If you could help fetch them, I would be quite grateful.~
END 
++ ~Why can't you do it yourself?~ + yourself 
++ ~Certainly, we would be glad to help.~ + assist 
+~IsValidForPartyDialogue("X3Vie")~+ ~What is in it for us?~ + book_info 
+~!IsValidForPartyDialogue("X3Vie")~+ ~What is in it for us?~ + book_info2
++ ~We were actually looking to get information you might know about a book of ancient elven magic.~ + book_info3
++ ~Handle it yourself. We have important matters to get to.~ DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 

CHAIN X3VSAGE yourself 
~I could, perhaps, but I was always more of a scholar mage rather than a battle mage. And I think the many academic circles I am a part of would be furious if I fatally hurt myself, thus the precaution of using you.~
END 
++ ~Certainly, we would be glad to help.~ + assist 
+~IsValidForPartyDialogue("X3Vie")~+ ~What is in it for us?~ + book_info 
+~!IsValidForPartyDialogue("X3Vie")~+ ~What is in it for us?~ + book_info2
++ ~We were actually looking to get information you might know about a book of ancient elven magic.~ + book_info3
++ ~Handle it yourself. We have important matters to get to.~ DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 

CHAIN X3VSAGE assist 
~Ah, wonderful, I was worrying there was not many brave people out here anymore. As I said, I believe I ran across them somewhere to the northwest. Hopefully they have'nt torn them apart, I'd hate to have to start my note-taking all over again.~
DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@3,QUEST)~
EXIT 
 
 CHAIN X3VSAGE book_info 
 ~Vienxay here wishes to learn about a tome of ancient magic, do you not?~
 == X3VieJ ~Yes, I would quite much like to learn waht you know.~
 == X3VSAGE ~Then I believe my notes for a bit of sharing from myself is more than fair. You would be doing quite a favor for me, and I do like to talk about history to willing students. So what will it be?~
 END 
++ ~Certainly, we would be glad to help.~ + assist 
++ ~Handle it yourself. We have important matters to get to.~ DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 
 
CHAIN X3VSAGE gold_fail
~Even if I wanted to, I don't really have the gold on me right now to offer. But information itself is invaluable. If you do help, I will quite grateful.~
DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@3,QUEST)~
EXIT 

CHAIN X3VSAGE gold 
~I suppose I can throw in a few coins. Good hunting, and try to get them before they tear up my notes.~
DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)GivePartyGold(100)AddJournalEntry(@3,QUEST)~
EXIT 

CHAIN X3VSAGE book_info2 
~I am a sage and historian. I could perhaps impart a bit of knowledge that you wish to know. What I can share or teach is likely invaluable to you.~
END 
++ ~Certainly, we would be glad to help.~ + assist 
++ ~Handle it yourself. We have important matters to get to.~ DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 
  
CHAIN X3VSAGE book_info3 
~And I will be glad to share, if you can get my notes from wolves just northeast from here. A fair trade, I would think, though never again will I take a stroll so far away from town without some magic preperations!~
END 
++ ~Certainly, we would be glad to help.~ + assist 
++ ~Handle it yourself. We have important matters to get to.~ DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~ + no_time 
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold 
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 
+~CheckStatLT(Player1,14,CHR)~+ ~Maybe if you sweeten the deal a little.~ + gold_fail 
 