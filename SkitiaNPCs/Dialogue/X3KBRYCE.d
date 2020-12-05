BEGIN X3KBRYCE

CHAIN IF ~!AreaCheck("AR0527")Global("X3PreTalk","LOCALS",1)!Race(Player1,HALFLING)!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ THEN X3KBRYCE default 
~What are you doing here? Citizens can't just wander around a garrison.~
END 
++ ~We're here to speak with Jillian.~ + jillian_talk
++ ~What do you do here?~ + do_here
++ ~Nothing, never mind me.~ EXIT 

CHAIN IF ~!AreaCheck("AR0527")Global("X3PreTalk","LOCALS",1)OR(3)Race(LastTalkedToBy(),HALFLING)IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("Mazzy")~ THEN X3KBRYCE halfling
~Don't even think about it, halfling. Trying to pickpocket a guard in a garrison? Your people are getting more foolish by the day.~
END 
IF ~IsValidForPartyDialogue("Mazzy")~ EXTERN MAZZYJ Mazzy_pick
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ EXTERN X3KalJ Kale_pick
++ ~We're just here to speak with Jillian.~ + jillian_talk
++ ~Why would I pickpocket a guard in his own garrison?~ + fool_me 
+~!Class(Player1,THIEF_ALL)!Class(Player1,BARD_ALL)~+ ~I'm no thief. Throw your accusations elsewhere.~ + fool_me 
+~OR(2)Class(Player1,THIEF_ALL)Class(Player1,BARD_ALL)~+ ~If I did pickpocket you, you wouldn't know about it.~ + fool_me 

CHAIN X3KalJ Kale_pick 
~Why the bloody hell would I pickpocket you in your own garrison?~
EXTERN X3KBRYCE fool_me  

CHAIN MAZZYJ Mazzy_pick 
~I would never. I am a halfling of honor.~
EXTERN X3KBRYCE fool_me 

CHAIN X3KBRYCE fool_me 
~Could have fooled me. What is it that you want?~
END 
++ ~We're just here to speak with Jillian.~ + jillian_talk
++ ~What do you do here?~ + do_here
++ ~Nothing, never mind me.~ + nevermind_me

CHAIN X3KBRYCE do_here 
~What kind of question is that? I am a guard here. I keep the city safe from filth, and if you are filth, you'll quickly learn the comforts of a cell.~
END 
++ ~We're just here to speak with Jillian.~ + jillian_talk
++ ~Nothing, never mind me.~ + nevermind_me

CHAIN X3KBRYCE jillian_talk
~That halfling is having guests in here? Shame. There's a reason why you don't see many of her people trusted with a job like this. Go on and talk to her then, but then get out when you're done.~
EXIT 

CHAIN X3KBRYCE nevermind_me 
~Then you have no reason to be in here. Shoo.~
EXIT 

CHAIN IF ~AreaCheck("AR0527")~ THEN X3KBRYCE final_meeting 
~I know why you are here, citizen. You should have never interfered with my investigation. You are trespassing, and therefore are in violation of the law. Your sentence is death.~
END 
++ ~Bryce?! Are you in league with Chester?~ + fm_1 
++ ~This man evaded the law. He is the real criminal, Bryce.~ + fm_2 
++ ~The only one who is going to face death is you, fiend.~ + fm_3 

CHAIN X3KBRYCE fm_1 
~Chester shares the same beliefs as I. Halflings are a blight to Althkata. Thieves, mongrels, liars. They take work from us, they take gold from us. And some even take our lives.~
END 
IF ~IsValidForPartyDialogue("MAZZY")~ EXTERN MAZZYJ fm_reaction_mazzy
IF ~IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KalJ fm_reaction_kale
IF ~!IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KBRYCE fm_3

CHAIN X3KBRYCE fm_2 
~Chester did perhaps poison the halfling Percy. There is a "murder" there. But halflings are not real people. They are thieves, mongrels, liars. They take work from humanity, they take our gold, and they even take our lives.~
END 
IF ~IsValidForPartyDialogue("MAZZY")~ EXTERN MAZZYJ fm_reaction_mazzy
IF ~IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KalJ fm_reaction_kale
IF ~!IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KBRYCE fm_3 

CHAIN X3KBRYCE fm_3 
~That is not going to happen today. You will be stopped and our work will continue. There will be security and justice for humanity, and these halflings can get the hell out of this city, one at a time.~
DO ~Enemy()AddJournalEntry(@15,QUEST)~ 
EXIT 

CHAIN MAZZYJ fm_reaction_mazzy 
~Your hatred of my people has clouded your judgment. How can you serve the city if you do not serve all of the people within?~
== X3KBRYCE ~I do serve all of the people within. Your kind are *not* people. You are a blight, a blight that is trying to stop us from working on cleansing you out of this place.~
EXTERN X3KBRYCE fm_3 

CHAIN X3KalJ fm_reaction_kale
~Anyone else agree this guy is cooked in the head? Your beliefs are downright insane! We're not that different from you folk.~
== X3KBRYCE ~Insane? Different? You are trying to justify by calling me insane, by trying to claim you are people like us. You are fools trying to stop me with such weak arguments.~
EXTERN X3KBRYCE fm_3 


