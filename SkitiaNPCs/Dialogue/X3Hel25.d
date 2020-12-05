CHAIN IF ~Global("X3HelSummoned","GLOBAL",1)~ THEN X3Hel25 b1 
~So the call of battle has arrived, and ye are the trumpet. I have been feeling this moment would come, and I be glad ye remembering me for it.~ [X3Blank]
DO ~SetGlobal("X3HelSummoned","GLOBAL",2)~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3Kal25J b1a   
IF ~IsValidForPartyDialogue("X3Vien")~ EXTERN  X3Vie25J b1b 
IF ~!IsValidForPartyDialogue("X3Vien")!IsValidForPartyDialogue("X3Kal")~ EXTERN X3Hel25 b2 

CHAIN X3Kal25J b1a 
~Are you not freaked out at all? I doubt she's even gotten a good look at this place yet.~
== X3Hel25 ~Pah? From what I see? Place is just perfect to me.~
EXTERN X3Hel25 b2 

CHAIN X3Vie25J b1b
~If you had gotten *my* consideration on who you yanked to this awful place, she would have been my last vote.~
== X3Hel25 ~If the snob be what ye need help with, I got a good hammer with her name on it.~
EXTERN X3Hel25 b2 

CHAIN X3Hel25 b2  
~What do ye need be needing, <CHARNAME>? I be good enough for another outing if that what ye ask of me. Never would I refuse.~
END 
++ ~That is what I summoned you here for, Helga.~ DO ~SetGlobal("X3HelSummoned","GLOBAL",2)~ + b3a
++ ~You seem oddly unbothered for being suddenly pulled all the way here.~ DO ~SetGlobal("X3HelSummoned","GLOBAL",2)~ + b3b


CHAIN X3Hel25 b3a 
~Ye made a wise choice. For what I feel lies ahead of ye...ye'll certainly need me help.~ 
EXTERN X3Hel25 b4

CHAIN X3Hel25 b3b 
~Should I be bothered? After we separated, my heart was thinking there wouldn't be anything that I could wrest myself into that would have the danger, thrill, and high risk that yer adventures and troubles always provided.~
== X3Hel25 ~If this be what is needed of me, well it also be what I want. And if they align, then I see no reason to be disturbed or bothered for a call into battle.~ 
EXTERN X3Hel25 b4

CHAIN X3Hel25 b4
~What do ye say? Is it good old hammer time once more?~
END 
++ ~Something like that. Join me.~ + b5
++ ~I don't need you yet. Wait here.~ + b6


CHAIN X3Hel25 b5
~Moradin's grand old beard! Excitement and the glory of battle loom once again.~
DO ~JoinParty()~ EXIT


CHAIN X3Hel25 b6
~Bah. Teased me with opportunity only with waiting! And I don't even see a keg of ale in this ugly place. I hope ye find me soon, lest I start swinging at the walls here in boredom.~
DO ~MoveToPointNoInterrupt([2198.1256]) Face(0)~ EXIT
 
// Once Summoned, Approval and reputation is irrelevant for joining, she'll stick around at this point to the bitter end.
CHAIN IF ~Global("X3HelSummoned","GLOBAL",2) !Global("X3HelRomanceActive","GLOBAL",2)~ THEN X3Hel25 j1a
~Ye come around yet? My arm be twitching in boredom. I'm meant for the field, not for the waiting.~ [X3Blank]
END 
++ ~I have. Join me.~ + b5
++ ~Just wait a little longer.~ + j2

CHAIN X3Hel25 j2
~Bah! Blasted bloody bothersome boring thrice-cursed waiting!~
EXIT 


CHAIN IF ~Global("X3HelToBKickedOut","GLOBAL",0) !Global("X3HelRomanceActive","GLOBAL",2)~ THEN X3Hel25P p1
~Ye really getting rid of me, after only this long? Reconsider!~ [X3Blank]
END
++ ~You're right. Stay.~ DO ~ActionOverride("X3Hel",JoinParty())~ EXIT
+ ~AreaCheck("AR4500")~ + ~Yes. Wait here.~ + p1a
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Yes. Wait here.~ + p1b
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalLT("X3HelApp","GLOBAL",44)~ + ~Yes, return to the pocket plane.~ + p1c
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200") GlobalGT("X3HelApp","GLOBAL",44)~ + ~Yes, return to the pocket plane.~ + p1d


CHAIN X3Hel25P p1a 
~Waiting? Bah. How I hate idle "waiting". But as ye command.~ 
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([2198.1256]) Face(0)~
EXIT 

CHAIN X3Hel25P p1b 
~Waiting? Bah. How I hate idle "waiting". But as ye command.~ 
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1)~
EXIT 

CHAIN X3Hel25P p1c 
~Bah! If that is what ye want. But I hope ye come around and bring me along sooner rather than later.~
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2198.1256],0)~ EXIT

CHAIN X3Hel25P p1d 
~I know ye've got a plan in yer head if ye're removing me for a time. Be safe, friend...and don't be afraid to get me if ye run into trouble ye need my help with.~
 DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2198.1256],0)~ EXIT

// Rep/Approval does not matter post summoning in regards to re-recruiting.
CHAIN IF ~Global("X3HelToBKickedOut","GLOBAL",1)~ THEN X3Hel25P p2
~About time. Ye wanting me hammer in yer pursuits? Ye'd be wise to ask for it.~ [X3Blank]
END 
+~Global("X3HelToBQuest","GLOBAL",4)~+ ~We were able to attempt a scry on your son.~ + Scry
++ ~I do. Join me.~ + p2.1
++ ~Wait here a while longer.~ EXIT


CHAIN X3Hel25P p2.1
~The moment has arrived! We will have victory in every bloody battle that comes in our path.~
DO ~SetGlobal("X3HelToBKickedOut","GLOBAL",0) JoinParty()~ EXIT

APPEND X3Hel25P

IF ~~ Scry 
SAY ~That be wonderful! Where is he, how does he fare? Nay injured, I hope?~
++ ~(Lie) He is fine. He was traveling to the north, with a group of survivors.~ + Scry.1 
++ ~He is dead, Helga.~ + Scry.2
END 

IF ~~ Scry.1
SAY ~That is wonderful. I knew me boy was tough. I'm sure I'll hear from him in time.~
= ~Thank ye, <CHARNAME>. Ye've assured me heart this day.~
++ ~I'm glad I could ease your concerns.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ + Scry.3 
++ ~Yeah...uh, glad I could help.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + Scry.4 
++ ~Wait, I wasn't telling the truth. He...didn't make it Helga.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~ + Scry.5
END 

IF ~~ Scry.2
SAY ~No...no no no. My poor boy. I should have stayed in Saradush and fought beside him. What was I thinking?~
= ~This brings me great pain. Perhaps I should have never asked ye. I am sorry.~
++ ~It is hard news, but it is better to know than always wonder, Helga.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ + Scry.6
++ ~It isn't your fault that he didn't fight hard enough.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@209)~ + Scry.7
++ ~Going with him would have been a waste of your life.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~ + Scry.8
END 

IF ~~ Scry.3 
SAY ~Aye. I'll cook a good meal and take out a good ale when I can. Thank ye for this news once again, <CHARNAME>. I am grateful.~
IF ~~ DO ~AddJournalEntry(@22,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddExperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.4 
SAY ~What, ye worried he won't be fine? If he can make it out of Saradush, my boy will be fine. Thank ye once again for this news, <CHARNAME>. Thank ye.~
IF ~~ DO ~AddJournalEntry(@22,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddExperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.5 
SAY ~Are ye toying with me, ye just said he was fine? Nay...ye...yer face is telling the truth.~
IF ~~ + Scry.2 
END 

IF ~~ Scry.6
SAY ~Aye...aye, that it is.~
IF ~~ + Scry.9
END 

IF ~~ Scry.7
SAY ~Didn't fight hard enough? Why ye...nay, nay. Getting riled up on yer insensitive words will do nothing for him. Just leave me alone.~
IF ~~ DO ~AddJournalEntry(@21,QUEST_DONE)AddExperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.8
SAY ~Ye don't know that. That can never be known. And yet I will concede ye may be right. *sigh*. I regret that I nay had more time with him.~
IF ~~ + Scry.9
END 

IF ~~ Scry.9
SAY ~I need a bit time to meself. Just...leave me be for a while, <CHARNAME>.~
IF ~~ DO ~AddJournalEntry(@21,QUEST_DONE)AddExperienceParty(6000)~ EXIT 
END  

END 
