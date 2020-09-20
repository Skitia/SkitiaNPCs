/*Non-Essential Interjections*/ 

//Watcher's Keep 

I_C_T GORAPP1 16 X3HelGORAPP1-16
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Aye! I am up for the good fight. Let's kill the blasted thing.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T GORDEMO 12 X3HelDEMOGOR1
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~...Goddess Haela...watch over us all.~
END 

I_C_T GORSAL 2 X3HelGORSAL2 
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~For the glory, too. A glory I be desiring, but it be yer choice, <CHARNAME>...suppose there be no harm in civility either.~
END 

I_C_T GORCAR 15 X3HelGORCAR 
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~I say let him die. I nay appreciate his games with us.~
END 

I_C_T GORCAMB 17 X3HelGorcamb17
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Better to fight and nay ask more questions than play a game with a demon. Ye asking for trouble, nay matter the reward.~
END  

I_C_T GORCAMB 54 X3HelGorcamb54
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hrngh! We should have nay gambled and let this creature win. I'd have been up for fighting. Bah.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~ 
END  


EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Hel",LastTalkedToBy)~ EXTERN X3Hel25J Yackman
END

CHAIN X3Hel25J Yackman  
~Bah, enough with the chatter. Tell us what ye want to know...hey! Stop it and tell us, or I'll smack ye!~
EXTERN GORMAD1 10

I_C_T GORODR1 11 X3HelGORODR1-11
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I be suprised ye haven't taken the call of battle for yerselves. This be sounding like a glorious task!~
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~The fact he nay be smacked in the face with a weapon is a testament to yer patience, <CHARNAME>. For I would not have had it.~
END 

I_C_T GORODR1 35 X3HELGORODR1-35
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Traitors and cowards both! I nay fault <CHARNAME> if they saw fit to take your life.~
END 


// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~IsValidForPartyDialogue("X3Hel")~ + ~Tell me about Helga.~ + X3HelVoloBio1
END

CHAIN SARVOLO X3HelVoloBio1
~The bloodmaiden of Haela Brightaxe who fights by <CHARNAME>'s side welcomes every trouble and conflict brought <CHARNAME>'s way, especially if it can be resolved with her swing. Age nor injury can hold her back: Where she walks, the blood of battle is sure to follow.~
EXTERN X3Hel25J X3HelVoloBio

CHAIN X3Hel25J X3HelVoloBio
~Aye, that be bloody right, bard!~
EXTERN SARVOLO 9

// Solar, final interjection at the Throne of Bhaal

I_C_T FINSOL01 27 X3HelSolarFriend1
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~It be an honor to fight by yer side for all this time, <CHARNAME>. Haela bless yer ventures, be they beyond or still on this realm.~
END

//Talks
// 1, general comment about things after they left Suldanessellar. 
CHAIN IF ~Global("X3HelToBTalk","LOCALS",2)~ THEN X3Hel25J Talk1
~Suldanessar. I won't miss our brief stint there. Being on the road feels right.~
DO ~IncrementGlobal("X3HelToBTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~Your leg seems to be much better. You seem to be moving with more ease.~ + 1.1 
++ ~I could have stayed a bit longer, if I could.~ + 1.2 
++ ~Yes, the road is where I belong.~ + 1.3 
++ ~Aye, let's keep moving.~ + 1.X

CHAIN X3Hel25J 1.1
~I had the chance to rest it, and some of the elves helped further its healing. Not perfect, but probably as good as it is going to get.~
== X3Hel25J ~Nice enough people, but their city just isn't for me.~
EXTERN X3Hel25J 1.5 

CHAIN X3Hel25J 1.2 
~Maybe ye. Living so high above the ground just is not right for a dwarf.~
= ~They were nice enough people. I owe them for helping with my leg. But bah, definitely glad to be gone.~ 
EXTERN X3Hel25J 1.4 

CHAIN X3Hel25J 1.3 
~Aye, that is what my heart feels as well. A dwarf belongs in a mountain, with her brethren, or searcing for a battle. Not in some elf home.~
EXTERN X3Hel25J 1.4 

CHAIN X3Hel25J 1.X 
~Hrmph. To the next, then.~
EXIT 

CHAIN X3Hel25J 1.4
~Seems you'll have plenty of battles yet from the look of things.~
END 
++ ~Nothing we can't handle, I am sure.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~  + 1.5 
++ ~Are you sure you're up for this? You are getting old.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 1.6 
++ ~Do you think of anything else besides battle?~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + 1.7

CHAIN X3Hel25J 1.5
~Plenty sure. Ye took down that damn finger waggler. If ye can do that, there isn't any limits as long as ye fight with yer head.~
= ~It sure beats staying at the temple and doing domestic services and prayers for other warriors to see their glory. Even if it were for me children, I'd never want to hang up my weapon.~
END 
++ ~Do you hear much of your children?~ + 1.8
++ ~It may be a different sort of service, but providing temple services is its own good for people, isn't it?~ + 1.9
++ ~No retirement plans for you, I assume.~ + 1.10

CHAIN X3Hel25J 1.6 
~Am I sure? Bah, even if I become crippled and in immense pain, i want to die fighting. Yer adventurers so far bring plenty of challenges to overcome and test my resolve. By Haela, I'll endure them all.~
== X3Hel25J ~Besides, if I weren't doing this, I'd have to be miserably listening to my own children's adventures. I'll never be ready to hang up my weapons.~
END 
++ ~Do you hear much of your children?~ + 1.8
++ ~It may be a different sort of service, but providing temple services is its own good for people, isn't it?~ + 1.9
++ ~No retirement plans for you, I assume.~ + 1.10

CHAIN X3Hel25J 1.7
~There is nothing more glorious. The great test where ye pit your own life against another. Yer blood rushes, yer fingers itch, and the tiniest error can send ye to yer grave.~
= ~But that nay means I think of nothing else. I have a spot for me family, and for me goddess.~
END 
++ ~Do you hear much of your children?~ + 1.8
++ ~It may be a different sort of service, but providing temple services is its own good for people, isn't it?~ + 1.9
++ ~No retirement plans for you, I assume.~ + 1.10

CHAIN X3Hel25J 1.8
~Nay, but I know they'll be all right. Helen and Berk have good heads, and better swings. Plenty to make a mother proud with.~
EXIT 

CHAIN X3Hel25J 1.9
~It ain't bad, and I have respect for my sisters that do. But it is nay as glorious or honorable, and those things matter much to me.~
EXIT 

CHAIN X3Hel25J 1.10 
~Pah! You can get me to retire as fast as you can get a pig to fly.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Well, if that is the way to get rid of her, do point out the next pig and I'll see it done.~
== X3Hel25J ~Even if the damn things could be made to fly, I'll nay put up my hammer. The field of battle is the only end I will accept for myself.~
EXIT 

CHAIN IF ~Global("X3HelToBQuest","GLOBAL",2)~ THEN X3Hel25J Talk2 
~Hrngh...hrugh...argh! Berk!~
DO ~SetGlobal("X3HelToBQuest","GLOBAL",3)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~Helga, what's going on? You're sweating terribly.~ + 2.1 
++ ~Easy, Helga. It's just a bad dream.~ + 2.1 
++ ~The hells, Helga? You're going to wake everyone.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 2.2 

CHAIN X3Hel25J 2.1 
~Damn nightmare...been a long while since I've let anything spook me in my sleep.~
== X3Hel25J ~Berk...I need to know if he made it, <CHARNAME>. All I saw was his corpse in my sleep. There's got to be a way to know if he lived.~
END 
++ ~Returning to Saradush isn't an option, Helga.~ + 2.3
++ ~Unless you have any ideas, I can't think of anything.~ + 2.4
++ ~I am sure he is fine. If he takes after you I'd say his enemies are the ones who should worry.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + 2.45


CHAIN X3Hel25J 2.2 
~Like I bloody mean to do that! Pah.~
EXTERN X3Hel25J 2.1 

CHAIN X3Hel25J 2.3
~Aye...reasonably? That would nay be an option.~
EXTERN X3Hel25J 2.4

CHAIN X3Hel25J 2.4 
~I have one idea, a way we can know if he is okay. Though I nay know how feasible it may just be.~
= ~There are finger wagglers who can scry, or see people from far away distances. I nay know if we may find such a mage on our travels, but if we do, ask them what is necessary to achieve this.~
END 
++ ~We may never find such a person, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 2.5
++ ~I will keep an eye out, but I can't promise we'll find anyone.~ + 2.5
+~InParty("X3Vie")~+ ~What about Vienxay? She is a powerful mage now. She could be able to do this.~ + 2.6
+~InParty("X3Reb")~+ ~What about Recorder? She might know a few things.~ + 2.7

CHAIN X3Hel25J 2.5
~Aye, there is a chance we may not find anyone, but it would ease my concerns.~
END 
IF ~InParty("X3Vie")~ EXTERN X3Hel25J 2.6 
IF ~!InParty("X3Vie")InParty("X3Reb")~ EXTERN X3Hel25J 2.7
IF ~!InParty("X3Reb")!InParty("X3Vie")~ EXTERN X3Hel25J 2.8

CHAIN X3Hel25J 2.6
~If you want to ask her if she knows anything, I'd be grateful. That damn elf would give me a hard time if I brought it up with her.~
END 
IF ~InParty("X3Reb")~ EXTERN X3Hel25J 2.7
IF ~!InParty("X3Reb")~ EXTERN X3Hel25J 2.8

CHAIN X3Hel25J 2.7
~Recorder may know a few things about this. I know about her and her own son though...and I don't know if I want to bring any painful reminders to her with my words. Best you say talk to her about it if you want to see if she's willing.~
EXTERN X3Hel25J 2.8

CHAIN X3Hel25J 2.45
~Soothing words like that would normally be enough to ease me. But nay this day.~
EXTERN X3Hel25J 2.4

CHAIN X3Hel25J 2.8
~Ye have my thanks in advance. If we are unable to learn anything, I will just have to believe.~
DO ~AddJournalEntry(@13,QUEST)~ // It helps if Vienxay and Recorder are in the party for this quest. Vienxay will mention what is needed, Recorder will mention the possible scrier with information on where it is.
EXIT 

CHAIN IF ~Global("X3HelToBTalk","LOCALS",4)~ THEN X3Hel25J Talk3
~Everyone in a while, I go and reflect on a good kill. And that Yagashura...was probably one of the best. A dwarf fighting against a seemingly unkillable giant and coming out on top with her party...that is a story.~
DO ~IncrementGlobal("X3HelToBTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~Your tone doesn't seem as excited as you tell it.~  + 3.1 
++ ~It was a good battle. People will now know not to underestimate me.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 3.2 
++ ~I could not have done it without your help, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 3.3 
++ ~We can reflect on our glories another time. We should keep moving.~ + 3.X

CHAIN X3Hel25J 3.1
~Aye, despite the glory, the honor, and the legendary tales, something is bothering me.~
EXTERN X3Hel25J 3.4

CHAIN X3Hel25J 3.2 
~Your prestige is greater than ever. But something is bothering me.~
EXTERN X3Hel25J 3.4

CHAIN X3Hel25J 3.3 
~I am not so sure. Yer power is greater than it ever was. And the consequences of that has not sat well in my mind.~
EXTERN X3Hel25J 3.4

CHAIN X3Hel25J 3.X 
~Pah. There is never a bad time to reflect on glories over a good ale. But as ye wish, <CHARNAME>.~
EXIT 

CHAIN X3Hel25J 3.4
~More than ever, wherever ye seem to trek, bodies and blood follow in yer wake. It may as well be raining death where ye go.~
== X3Hel25J ~I live for battle. I love for the good fight to the death. But yer bloodline seems to inspire death be necessary on a massive scale.~
END 
++ ~It is not all caused by me, Helga.~ + 3.5 
++ ~And this makes you uncomfortable? I'm suprised.~ + 3.6 
++ ~Come now, this isn't like you. I find it all thrilling.~ + 3.7

CHAIN X3Hel25J 3.5
~Aye, it is not all of yer doing. But it certainly is partially influenced by you. You inspire it unwillingly.~
EXTERN X3Hel25J 3.8

CHAIN X3Hel25J 3.6
~Even I have my limits. If all of our enemies were giants and ogres, maybe not. But they are more then just that.~
EXTERN X3Hel25J 3.8

CHAIN X3Hel25J 3.7
~The thrill is there, I will agree. But do you not notice it? The endless, endless death you influence?~
EXTERN X3Hel25J 3.8

CHAIN X3Hel25J 3.8
~Do ye think if ye do take on yer godhood, that ye won't continue to see that for the rest of yer life? Bhaal is all about murder, ye know.~
END 
++ ~I do not think I would want to be a god at all if I have the choice.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 3.10
++ ~I would not want that. I would remake things in my own image.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + 3.9
++ ~I wouldn't mind, to be honest.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 3.11

CHAIN X3Hel25J 3.9
~Sensible. I love Haela Brightaxe and Moradin both, but I would nay feel right standing next to them in presence.~
EXTERN X3Hel25J 3.12 

CHAIN X3Hel25J 3.10
~I can appreciate that. I think that is an altogether better path to walk.~
EXTERN X3Hel25J 3.12 

CHAIN X3Hel25J 3.11 
~Ye serious? I can understand a good battle, but murder is altogether different.~
END 
++ ~It was a joke, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 3.13 
++ ~Of course I am serious.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 3.14
++ ~What is the difference? Someone dies in the end.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 3.14

CHAIN X3Hel25J 3.12 
~Enough of my unease though. I'll be fine. Let's just carry on.~
EXIT 

CHAIN X3Hel25J 3.13
~Ye could use some work on yer humor, then. It wasn't very funny.~
EXTERN X3Hel25J 3.12 

CHAIN X3Hel25J 3.14 
~Hrmph. I suppose I do nay know ye as well as I thought.~
EXTERN X3Hel25J 3.12

//Friendship Talk #4
CHAIN IF ~Global("X3HelToBTalk","LOCALS",6)~ THEN X3Hel25J Talk4
~The Skyriders of Aglandar. I hope we get such a bloody fitting name when this be all said and done. Ye never formally named our group, ye know?~
DO ~IncrementGlobal("X3HelToBTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~The what of Aglandar?~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 4.1 
++ ~Isn't <CHARNAME>'s company suitable?~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 4.2 
++ ~I never really thought it important.~ + 4.3
++ ~Let's focus on more important things.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 4.X 

CHAIN X3Hel25J 4.X 
~If having an identity is nay important to ye, so be it.~
EXIT 

CHAIN X3Hel25J 4.1 
~Griffon riders from the Shining South. Terrifying warriors of Haela, but unlike meself, they rarely traveled far from their lands.~
EXTERN X3Hel25J 4.3

CHAIN X3Hel25J 4.2 
~<CHARNAME>'s company is as dry as a poorly made ale.~
EXTERN X3Hel25J 4.3

CHAIN X3Hel25J 4.3 
~Nay, it be good to ask who ye are, and what yer collective company means.~
END 
++ ~I am a Bhaalspawn, Helga. I am fighting for my destiny.~ + 4.5
++ ~I'm who I always was, Helga.~ + 4.6
++ ~I really don't see why this matters.~ + 4.X 

CHAIN X3Hel25J 4.5 
~Hrngh. Perhaps there nay be an easy name, but at this rate, Bloodguard may do with all the blood we've shed to keep yours within.~
END 
++ ~A bit too dark for me.~ + 4.7
++ ~Bloodguard. That's not a bad suggestion.~ + 4.8 
++ ~I'm capable of protecting myself, thank you.~ + 4.9

CHAIN X3Hel25J 4.7
~As ye say. Though I will drop the suggestion as is. With a fate as yers, I nay think there be much a name even I can come up with.~
EXTERN X3Hel25J 4.10 


CHAIN X3Hel25J 4.10
~<CHARNAME>'s company 'tis is, but if ye come up with something better, let's chat.~
EXIT 

CHAIN X3Hel25J 4.6
~Nay. Ye have changed, but perhaps it be hardest to see from yerself.~
EXTERN X3Hel25J 4.5

CHAIN X3Hel25J 4.8 
~Then perhaps we have something to work with, though I suppose the name would nay work with ye. Hrngh.~
= ~If ye come up with something bettter, let's chat. Pointless as it may seem to mule on it...give's me a reason to smile.~
EXIT 

CHAIN X3Hel25J 4.9
~I never implied otherwise, <CHARNAME>.~
EXTERN X3Hel25J 4.10

//Engagement Ring Rejection
CHAIN IF ~Global("X3Engagement","LOCALS",1)~ THEN X3Hel25J engagement_auto_fail 
~Why ye giving me this band?~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~Oh, I just figured it would look nice.~ + eaf.1 
++ ~I want to marry you, Helga.~ + eaf.2
++ ~I was hoping you could unlock it's magic properties.~ + eaf.4

CHAIN X3Hel25J eaf.1 
~I nay be wearing this into battle. This be for lovers, and we are nay that!~
EXTERN X3Hel25J eaf.3 

CHAIN X3Hel25J eaf.2 
~Bah! Ye are either drunk, or an idiot. Nay! I be married once. And that be the only experience I ever be wanting.~
EXTERN X3Hel25J eaf.3

CHAIN X3Hel25J eaf.4 
~Nay! Nay I could not.~
EXTERN X3Hel25J eaf.3

CHAIN X3Hel25J eaf.3
~Give this to someone else who it be better suited for. Nay a veteran dwarf uninterested in such a thing.~
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN ~Could give it to the elf. I have little love for her, but she seems to have much of it for ye.~
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~The gnome would probably be happy if ye asked. She's too shy to suggest it herself.~
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~The aasimar may like the ring. Might even scream in joy. I pray me ears don't break if ye do.~
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Kale's culture nay much into rings like this. But he may still be fond of ye asking him, as a suggestion.~
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

// 5 is a PID, and is the player telling Helga the results of the sight, either that her son died (Truth) or that he still lives (Alive).

APPEND X3Hel25J


// Break Approval
IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~Bah! Listen up, ye damn <PRO_GIRLBOY>.~ 
= ~Maybe ye was never taught to respect yer elders, yer veterans, or even yer damn fellow companions. I've tolerated it for a time. But nay more! Ye and I be done.~
++ ~This is my fault? Respect is earned.~ + Break.1 
++ ~What did I even do?~ + Break.2 
++ ~Helga, I'm sorry. I've not meant any disrespect.~ + Break.8
END 

IF ~~ Break.1
SAY ~Bah! That ye think it hasn't been, <PRO_GIRLBOY> is nothing short of shameful!~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~Nay listen. Nay act sensibly. Nay be someone worth standing next to.~ 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY ~Yer "sorry" doesn't change what was done.~
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY ~It be time for me to depart and find others more worthy of me comradery.~
++ ~Fine. Though whoever you find next will find little worth.~ + Break.4
++ ~As you wish. But what you have was earned by myself. So your equipment is mine.~ + Break.5
++ ~Give me another chance. I promise I will be better to you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~I ought to battle ye for that insult. But I'll nay give ye even whatever honor that be worth.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~I spit on you! Have it ye bloody git! I nay want anything ye've offered to me anyway.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~...Bah. Ye have had yer moments. And for those alone...I'll give it one last chance.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3HelApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@216)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~Bah! What were my words even worth to you? Again and again, ye nay listen! Ye nay care!~
= ~I be leaving, and I nay wish to see ye again. Or if we do...it will nay be as companions, but enemies with how ye treat yer path!~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

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
IF ~~ DO ~AddJournalEntry(@22,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddexperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.4 
SAY ~What, ye worried he won't be fine? If he can make it out of Saradush, my boy will be fine. Thank ye once again for this news, <CHARNAME>. Thank ye.~
IF ~~ DO ~AddJournalEntry(@22,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddexperienceParty(6000)~ EXIT 
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
IF ~~ DO ~AddJournalEntry(@21,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",6)AddexperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.8
SAY ~Ye don't know that. That can never be known. And yet I will concede ye may be right. *sigh*. I regret that I nay had more time with him.~
IF ~~ + Scry.9
END 

IF ~~ Scry.9
SAY ~I need a bit time to meself. Just...leave me be for a while, <CHARNAME>.~
IF ~~ DO ~AddJournalEntry(@21,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",6)AddexperienceParty(6000)~ EXIT 
END  



// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  ~Yes, what do you need?~ [X3HeCom2]
+~Global("X3HelToBQuest","GLOBAL",4)~+ ~We were able to attempt a scry on your son.~ + Scry
++ ~I have a question.~ + Question.PID 
++ ~Do you mind if I meet with you when we next make rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ ~Nothing for now.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  ~Well met.~ [X3HeCom3]
++ ~I have a question.~ + Question.PID 
++ ~Do you mind if I meet with you when we next make rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ ~Nothing for now.~ EXIT 
END  

 
IF ~~ Question.PID
SAY ~Ask.~
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about your faith.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith 
+~Global("X3PIDCON3","LOCALS",0)~+ ~So how old are you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~What now?~ [X3HeCom1]
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about your faith.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ ~So how old are you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Home 
SAY ~Aye, though 'tis nay a grand place. Not a pastoral farm nor a great dwarven hall.~
= ~Torstultok, the Hall of Grand Hunts. The great fortress keep of the Forlorn Hills. It is a quiet lonely place to grow as a child, but nowhere else is more secure.~
= ~Ruins of fallen kingdoms lay scattered about the hills and sprawling tunnels. The entire land would just give you a thirst for exploration and adventure. If it wasn't Haela that captured your spirit, it was Dumathoin.~
++ ~Were those ruins dangerous?~ + PHome.1 
++ ~What of your parents?~ + PHome.2
++ ~Why did you leave?~ + PHome.3 
END 

IF ~~ PHome.1 
SAY ~Aye. Many old traps and puzzles would keep you out, and the dead did not always rest easy.~
= ~It only spurned me on to be a priestess of Haela. The ruins were often trial grounds to be a Luck Maiden, and I remember returning to my parents after my first succesful trial.~
= ~Damn proud they were. I was their little watermelon into a true warrior.~
++ ~Watermelon?~ + PHome.4
++ ~What of your parents?~ + PHome.2
++ ~Why did you leave?~ + PHome.3 
END 

IF ~~ PHome.2 
SAY ~They lived their entire lives there. They served as guardians of the land and ensured we were rarely seen in the area except when we needed engage in battle or aid an ally.~
= ~They had passed on my last visit there, hours apart. I will always remember them fondly.~
++ ~Why did you leave?~ + PHome.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PHome.3 
SAY ~Once my children grew up, the Keep grew quiet. Less tasks for our warriors and more waiting, and I thirsted for more tales. So I left and went south, and you know the rest.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PHome.4
SAY ~A childhood nickname. I loved the damn fruit. Liked to spit the seeds at targets for practice.~
++ ~What of your parents?~ + PHome.2 
++ ~Why did you leave?~ + PHome.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PID.Faith 
SAY ~Aye, gladly.~
= ~Haela Brightaxe is a goddess for those who love battle and find joy in it, as I do. She is different from the other Morndinsamman, less orderly and bound to all the ways, but she is still widely respected in the realms.~
= ~We were an all female order until the last few years, where we have had a few males join our ranks. My own rank in the church is Flamebolt, though that holds meaning only in the fotress-keep~
= ~We are trained to use any weapon, but you'll still find me favoring the traditional cleric arms, unless I summon the blessing for the blade.~
++ ~Why did you worship her yourself?~ + PFaith.1
++ ~How does one become a member of the faith?~ + PFaith.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.1 
SAY ~There is nay complex reason for it. I was in Haela's keep and enjoyed the thrill of danger and battle. I was a good fit, and my parents had pushed me to join her ranks.~
= ~I have no regrets. I never will.~
++ ~How does one become a member of the faith?~ + PFaith.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.2 
SAY ~To become a priestess, one must fight in battle and know their first kill. You are sent off to a nearby ruin or towards an enemy of the people, and are to return with it defeated.~
= ~Those who succeed are bestowed the title of First Blood from the Hallowed Crimson, the eldest of the faith.~
= ~Those who fail are honored for their bravery. I still remember the joy of mine. To be triumphant in battle, there is no greater joy save dying while taking down as many as you can with you.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Age 
SAY ~Older than you. Does it bloody matter?~
++ ~No need to be grumpy about it. I am just curious.~ + PID.Age1
++ ~Not, really no.~  + PID.Age1
++ ~Just tell me, will you?~  + PID.Age1
++ ~Okay, nevermind. Let me ask you something else.~ + MoreQuestion.PID 
END 

IF ~~ PID.Age1
SAY ~Hrngh. A hundred and ninety-five summers.~
++ ~Okay, that is *old*.~ + PAge.1 
++ ~Is that young for a dwarf?~ + PAge.2 
++ ~Well. No doubt about it. You are older than me.~ + PAge.2 
END 

IF ~~ PAge.1 
SAY ~Pah. There are older dwarves. I've got a good century left if I take care of myself. But I'd rather not die venerable and sick. Battle is a better death.~
++ ~I can understand where you come from.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + PAge.3
++ ~Ah, but would it not be better to die having triumphed over all odds?~ + PAge.4
++ ~You could die from many things. We don't get to choose how our story ends.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~ + PAge.5
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.2 
SAY ~Nay! Certainly not, but there are older dwarves. I've got a good century left if I take care of myself. But I'd rather not die venerable and sick. Battle is a better death.~
++ ~I can understand where you come from.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + PAge.3
++ ~Ah, but would it not be better to die having triumphed over all odds?~ + PAge.4
++ ~You could die from many things. We don't get to choose how our story ends.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~ + PAge.5
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.3
SAY ~With ye, I may get that good death, or it may come far in the future. But Haela's work is best served on the field, and to die for such a cause...there be no end as glorious.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.4 
SAY ~There can be glory in that. But nay if one sits on their laurels pleased with the few great battles they have fought. There will always be enemies of the dwarven people or the times. Damn if I will ever ignore them.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.5 
SAY ~But we get to choose how we want it to play out. And I am going to influence my tale to end with the clang of metal and the fury of blood.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk
SAY ~Hrngh, yer probably just after my grub, but if ye wishes, so be it.~
IF ~~ EXIT 
END 

END 