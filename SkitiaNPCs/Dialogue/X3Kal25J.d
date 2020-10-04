//Interjections: Non-Essential
//Watcher's Keep

I_C_T GORAPP1 16 X3KalGORAPP1-16
== X3Kal25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Heh, what the hell. We go out with a bang or make one. A good tale either way.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
END 

I_C_T GORAPP1 6 X3KalGORAPP1-6
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Criminy. Can't trust anyone these days, I swear.~
END 


I_C_T GORDEMO 24 X3KalGORDEMO 
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I hope this thing is wrong, because I do not want to be stuck here forever, mate.~
END 


I_C_T FSDRAGON 0 X3KalFSDRAGON
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Damn. Another lizard. Will it end?~
END   

I_C_T FSSPIR2 1 X3KalFSSPIR2-1
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I've got a feeling this fellow ain't just going to be nice and give it to us. Haven't we been tested enough?~
END    

I_C_T GORSAL 0 X3KalGORSAL0 
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Oh boy. What is it with you and getting us in front of dragons, <CHARNAME>?~
END   


I_C_T GORGIT 2 X3KalGORGIT2
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Is this creature serious? He's as mad as every other bloody thing in this place.~
END   

I_C_T GORCAMB 17 X3KalGorcamb17
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I don't mind a bit of a game, myself. As long as we don't lose, I think we'll be all right.~
END  


I_C_T GORSUC01 7 X3KalGORSUC01 
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ ~Damn...wish I were so lucky.~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Kal",LastTalkedToBy)~ EXTERN X3Kal25J Yackman
END

CHAIN X3Kal25J Yackman  
~Eh, we're not demons! See? A demon is far taller than me. Their loss, too. Life's more fun when you're right-sized.~
EXTERN GORMAD1 10

I_C_T GORODR1 44 X3KalGORODR1-44
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hey mate, you mind giving us a heads up before you bury us alive? Appreciate it.~
END 

//Pre-Saradush 

I_C_T SAREV25A 0 X3KalSAREV25A
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN ~Damn. I thought we were done with this guy.~
END

I_C_T SAREV25A 10 X3KalSAREV25A
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I don't trust him. Any deal from this guy is probably going to be slimy.~
END

//Saradush Interjects 

A_T_T SARPROVM 0 ~!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)~ DO 0

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN X3Kal25J SARPROVF-Care
END

CHAIN X3Kal25J SARPROVF-Care 
~I'd normally be offended, but uh, I'm guessing they have some sort of secret thing they'll only say in private. Find out for me, eh?~
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPROVM 0
IF ~Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN X3Kal25J SARPROVF-Care
END

CHAIN X3Kal25J SARPROVM-Care 
~I'd normally be offended, but uh, I'm guessing they have some sort of secret thing they'll only say in private. Find out for me, eh?~
EXTERN SARPROVM 1


I_C_T SARCNT01 9 X3KalSARCNT01-9
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Sounds like fitting work for us. A bit of fame and fortune both. I'm sure this fellow that has her stands no chance.~
END 

I_C_T SARBAR01 21 X3KalSARBAR01-21
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I swear, the folk that preach about staying pure always are the ones getting secretly dirty.~
END 

I_C_T SARBHA02 1 X3HelSARBHA02-1
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Wish I could help you, kin-fellow. But a bit too late to yell at your mother and her taste in men.~
END

I_C_T SARMEL01 45 X3KalSARMEL01-45
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Criminy. Couldn't have been a simple kobold to hack. What are these gifts this bloke has?~
END

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3KalRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Kal") Gender(Player1,MALE)~  EXTERN X3Kal25J SarPro_No 
END 

CHAIN X3Kal25J SarPro_No 
~Eh <CHARNAME>? You haven't forgotten about me, right?~
END 
++ ~Ah, fear not, Kale, her prices are too high anyway.~ EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ ~I'm interested and going to take up her offer, actually.~ EXTERN X3Kal25J SarPro_Break 
++ ~I would never, Kale.~ EXTERN X3Kal25J SarPro_Yes 

CHAIN X3Kal25J SarPro_Yes 
~Heh, bit harsh of a joke to play, now one of us has to break the news. Hey, harlot, you heard him. We're not interested. Sorry!~
EXTERN SARPRO01 3

CHAIN X3Kal25J SarPro_Break 
~Damn. Usually it's me doing something like this. Well...do what you want, mate. Just don't expect me to take you back after this.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)SetGlobal("X3KalApp","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@409)~
EXTERN SARPRO01 12 

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ + ~Tell me about Kale.~ + X3KalVoloBio1
+ ~IsValidForPartyDialogue("X3Kal")Global("X3KalRomanceActive","GLOBAL",2)~ + ~Tell me about Kale.~ + X3KalVoloBio2
END

CHAIN SARVOLO X3KalVoloBio1
~The halfling warrior who tells tales larger than life, Kale has carved out quite a legend for himself with his toughness and legendary feats, though whether born of truth or exaggeration remains to be seen.~
EXTERN X3Kal25J X3KalVoloBio


CHAIN SARVOLO X3KalVoloBio2
~The halfling warrior who tells tales larger than life, Kale has found himself a place by <CHARNAME>'s side. Defending his beloved from all threats, he creates his own legend as a great protecter of many grand feats, though whether born of truth or exaggeration remains to be seen.~
EXTERN X3Kal25J X3KalVoloBio

CHAIN X3Kal25J X3KalVoloBio
~Aww yes! This is the day. Kale's legend is spoken across the land by a legend! I knew it would come.~
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGNYA01 15 X3KalHGNYA01-15
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What are they, undead? Nah, they don't look like it, but how do these blokes live without their heart? It's making my head hurt.~
END

// Amkethran and Beyond

I_C_T AMMAYOR 5 X3KalAMMAYOR-5
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Vie")~ THEN ~Heh, this is why we halflings live on the motto "Don't get caught", if we're going to walk the crime lines.~
END

I_C_T AMMONK02 3 X3KalAMMONK02-3
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Damn it's nice to be known. Although not sure if I'm not sure if that's so by these guys.~
END

I_C_T AMSAEMON 0 X3KalAMSAEMON2
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You got to be kidding me. This guy, again?~
END

I_C_T AMSMITH 16 X3KalAMSMITH-16
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Criminy. Those pants you have been carrying around all this time actually will be useful? I'd have never guessed.~
END 

I_C_T BAZEYE01 9 X3KalBAZEYE9
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft, I've had good cheese. Smelled good cheese. This? Not even close.~
END 

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3KalSolarFriend1
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Even now you've got all the light on you. Still mate, it's been a blast being by your side, whatever you decide to do.~
END

// romanced, Kale and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarPers","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarPers
END

CHAIN X3Kal25J X3KalSolarPers
~Damn. I feel quesy all of a sudden, and I thought the fighting would be the scariest part today. But the thought of losing you? That's terrifying me more than anything thrown at us just a few moments ago.~
END
++ ~What do you think I should do?~ + FinalChoice.1
++ ~I can't imagine leaving you, Kale. I love you.~ + FinalChoice.2
++ ~I feel as if I should go forth with my destiny.~ + FinalChoice.1

CHAIN X3Kal25J FinalChoice.1 
~Well...before you is a choice to be a god. I mean, what greater legend can one become besides becoming a god?~
= ~But I think you could also forge a great legend by being the one person to walk away from that.~
END 
IF ~PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.3
IF ~!PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.4


CHAIN X3Kal25J FinalChoice.3
~'sides, we have a great wedding to plan someday, don't we? Can't do that if you're a god. Or maybe you could. But it wouldn't be the same.~
EXTERN X3Kal25J FinalChoice.4

CHAIN X3Kal25J FinalChoice.4
~If you do choose to ascend, <CHARNAME>? This adventure with you was still worth every damn moment.~
END
COPY_TRANS FINSOL01 27

CHAIN X3Kal25J FinalChoice.2 
~That makes me happy to hear. Damn, I think I'm shedding a tear. You've brought me more memories than I could recite to you right now. So many grand feats and moments together. I hope you stay for more.~
END 
IF ~PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.3
IF ~!PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.4



// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarLeave","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarLeave","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarLeave","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarLeave
END

CHAIN X3Kal25J X3KalSolarLeave
~Goodbye, <CHARNAME>. Aww, damn it, I'm not going to break down now. Make me damn proud up there, you hear me?~
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarStay","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarStay
END

CHAIN X3Kal25J X3KalSolarStay
~<CHARNAME>! You have...aww damn, I won't break down now. I really thought you would be gone for good.~
END
++ ~Did you expect anything less of me?~ EXTERN X3Kal25J X3KalSolarStay1.1
++ ~I love you, Kale. I don't want to be anywhere else.~ EXTERN X3Kal25J X3KalSolarStay1.1
++ ~I can't let you get rid of me that easily.~ EXTERN X3Kal25J X3KalSolarStay1.1

CHAIN X3Kal25J X3KalSolarStay1.1
~Heh. ~
END
IF ~PartyHasItem("X3RingK")~ EXTERN X3Kal25J StayChoice.1
IF ~!PartyHasItem("X3RingK")~ EXTERN X3Kal25J StayChoice.2

CHAIN X3Kal25J StayChoice.1 
~I'm going to make our time together grand. And our wedding too, everyone will talk about it for years! Just you wait.~
END 
COPY_TRANS FINSOL01 32

CHAIN X3Kal25J StayChoice.2
~I'm going to make our time together grand. Whether you want to settle down or slap a few more dragons, I'm all for whatever trouble you throw us into.~
END 
COPY_TRANS FINSOL01 32


//Talks

CHAIN IF ~Global("X3KalToBTalk","LOCALS",2)~ THEN X3Kal25J FriendshipTalk1 
~Man, I will miss Suldanessellar. I was treated like a real hero there. Finally. My legacy honored without me having to do a tiny bit of exaggeration.~
DO ~IncrementGlobal("X3KalToBTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~You deserved it. I don't think I could have done it without you.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T1.1 
++ ~Just a tiny bit, Kale?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.2
++ ~It was really myself, but, if it makes you feel better.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T1.3 

CHAIN X3Kal25J T1.1 
~Heh. And you are welcome for that mate.~
EXTERN X3Kal25J T1.4

CHAIN X3Kal25J T1.2 
~You know it!~
EXTERN X3Kal25J T1.4

CHAIN X3Kal25J T1.3
~Pfft. Not sharing any of the credit, I see.~
EXTERN X3Kal25J T1.4

CHAIN X3Kal25J T1.4
~A shame it didn't last. To feel real adoration, without even needing to talk about it. It was a nice feeling.~
= ~Brothers and sisters eh? Family always has to ruin the fun.~
END 
++ ~One of us is to take Bhaal's mantle. This is more or less inevitable.~ + T1.5 
++ ~Once we settle this Bhaalspawn affair of mine, we can go back to being adored.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.6 
++ ~I don't know if "adored" is the right word. Being a Bhaalspawn makes people uncomfortable.~ + T1.7

CHAIN X3Kal25J T1.5
~Yeah, you are right about that. That god sure knows how to throw a bloody party, even when he is dead.~
EXTERN X3Kal25J T1.8

CHAIN X3Kal25J T1.6
~Now that...is something to look forward to.~
EXTERN X3Kal25J T1.8

CHAIN X3Kal25J T1.7
~I guess I may have assumed that you were more adored than I thought. I didn't think that it may not really be that way, my apologies mate.~
EXTERN X3Kal25J T1.8

CHAIN X3Kal25J T1.8
~Well, let me stop talking your ear off, eh? We've got some bloody work to do, and more tales to add to our legacy.~
EXIT 

// Friendship Talk #2

CHAIN IF ~Global("X3KalToBTalk","LOCALS",4)~ THEN X3Kal25J FriendshipTalk2 
~You ever think about all of the other Bhaalspawn, <CHARNAME>? You're practically one big family, you know, that sure doesn't get along at all.~
DO ~IncrementGlobal("X3KalToBTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Not really, no. I barely know any of them.~ + T2.1
++ ~Only the ones that are trying to kill me.~ + T2.1 
++ ~Only Imoen, really.~ + T2.2

CHAIN X3Kal25J T2.2
~Imoen, right. Won't you have to kill her? It sounds like you really have to be one alive.~
END 
++ ~I sure hope not!~ + T2.3 
++ ~We'll worry about that when it gets there.~ + T2.3 
++ ~She better hope that isn't true, she wouldn't stand a chance.~ + T2.3

CHAIN X3Kal25J T2.3 
~That would be quite horrible if you had to. For both of your sakes let's pray it doens't come to that.~
EXTERN X3Kal25J T2.1

CHAIN X3Kal25J T2.1
~You know, my father could have fathered some half-siblings out there. At least I'll never know, eh? Would be quite strange if we all of a sudden had to battle to the death.~
= ~I'd come out of top of course, great as I am but... we kin hate killing eachother. Just isn't right.~
= ~Long shanks? Totally fine. Elf? Eh, they might deserve a stabbing when they get snippy and snooty...but another halfling? That's always just bloody tragic.~
END 
++ ~What does this have to do with the other bhaalspawn?~ + T2.4
++ ~We've fought halflings in the past, haven't we?~ + T2.5
++ ~What is your point?~ + T2.4 
++ ~I don't have time to listen to this, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T2.X 

CHAIN X3Kal25J T2.X 
~All right, all right. Sheesh, this wasn't even a story.~
EXIT 

CHAIN X3Kal25J T2.5 
~Rarely. And I feel awful whenever we do. I'm glad we at least make it quick when we have to.~
EXTERN X3Kal25J T2.3 

CHAIN X3Kal25J T2.4
~Just...I feel bad for your family, mate. Ain't proper, murdering your own flesh and blood, even if you don't get along.~
END 
++ ~I have little choice in the matter, I fear.~ + T2.6
++ ~It's hard to see it as siblings when we only share a god as a parent.~ + T2.7
++ ~The strongest survive and that they are family won't hold me back either way.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.8

CHAIN X3Kal25J T2.6
~I suppose you don't. Makes me bloody glad I don't have to be in your shoes. Not like they would even fit, your feet are bigger than mine.~
EXIT 

CHAIN X3Kal25J T2.7
~Well when you've got giants as siblings mate, I can kind of  you see your counter argument there. Just let me know if you have any stranger or deadlier siblings to introduce to me, may as well get the worst out now.~
EXIT 

CHAIN X3Kal25J T2.8
~Yeah, you are definitely no devout Yondalla worshiper. Her whole stick is about family. But given your destiny, a halfling's simple life doesn't really fit what you are expected to do.~
= ~You're not murdering all your family left and right at least. Makes it easy to not mind being around and protecting you from these bigger fish. Just uh...I hope the rest of your siblings stay shorter in height than the giant.~
EXIT 

// Friendship Talk #3

CHAIN IF ~Global("X3KalToBTalk","LOCALS",6)~ THEN X3Kal25J FriensdhipTalk3 
~Huh. You know, these times make you really think about the precious things in life. Make you wonder about past decisions, you know?~
DO ~IncrementGlobal("X3KalToBTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~I have never really had any regrets.~ + T3.1
++ ~Is there something in particular you are thinking about?~ + T3.2
++ ~I don't have time to wonder. My destiny looms.~ + T3.3 
++ ~Let's stay focused Kayle, we can't talk now.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.X 

CHAIN X3Kal25J T3.X 
~All right, all right. Sheesh, sometimes you are too serious for your own good, mate.~
EXIT 

CHAIN X3Kal25J T3.3 
~That reminds me just how different your life is from mine. You'll always be bigger than me. Been easier to accept that since we started traveling, and I'm glad for the glory I've gotten.~
EXTERN X3Kal25J T3.2 

CHAIN X3Kal25J T3.2 
~I regret not being so committed, really. Always floating to the next fun guy or gal to mess around with. When I get the chance, I'm going to change that.~
END 
// Kale will get the Mazzy Ending only if the player isn't in a romance with Mazzy via mod, Kale is Lawful Neutral, and they have had their single banter.
IF ~Global("X3KalMazzyEnd","GLOBAL",1)~ EXTERN X3Kal25J T3.Mazzy 
IF ~!Global("X3KalMazzyEnd","GLOBAL",1)~ EXTERN X3Kal25J T3.Default

CHAIN X3Kal25J T3.1 
~Heh, <CHARNAME> the perfect. If only the rest of us were so damn lucky.~
EXTERN X3Kal25J T3.2 

CHAIN X3Kal25J T3.Default 
~I'm going to go home after this, and amend things with my former love, if someone hasn't tied her down. Pretty and sparkly bright Alora.~
= ~I was so afraid of being her husband and tied down, but I'm never going to have a bigger story than what I've done with you mate. I'm not even going to bother to try.~
= ~I'm going to settle down, sire some little Kayle's, and have a lifetime of stories to share. Or if she wants to wander or travel, I always got plenty of energy for that too.~ 
END 
++ ~I remember Alora. I wish you luck if that's your goal.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.D1
++ ~What if she doesn't want to be with you? What will you do then?~ + T3.D2
++ ~I never expected you to turn away from adventure. That seems quite unlike you.~ + T3.3D

CHAIN X3Kal25J T3.D1 
~Appreciated, mate. To be honest, it may not be an adventure but it is own "adventure". I might fail and that makes it all the more of a thrill.~
= ~If that happens, ma's getting older and will need someone to watch out for her, and Gullykin could probably use a protecter.~
EXTERN X3Kal25J T3.D7 

CHAIN X3Kal25J T3.3D 
~Time's have changed even me, mate. Even if I couldn't convince Alora to give me another chance, ma could use someone to look after her, and Gullykin could use someone to watch over it. It's just a small village you know.~
EXTERN X3Kal25J T3.D7

CHAIN X3Kal25J T3.D2 
~Pfft, who would refuse me? Heh, I suppose you want a serious answer. Ma's getting older and will need someone to watch out for her, and Gullykin could use a guardian.~
EXTERN X3Kal25J T3.D7 

CHAIN X3Kal25J T3.D7
~I don't mind being being that guardian for Gullykin. I always wanted to be the biggest thing to talk about in the realms, but there won't be anything bigger than this.~
END 
++ ~Just try to keep the story accurate when you retell it.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.D4 
++ ~Well, when this is over, I think I'll miss traveling with you.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.D5 
++ ~A shame, I was hoping you would stick around for a while.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.D6
++ ~You don't have to be the biggest thing. To me you are already great.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.D8

CHAIN X3Kal25J T3.D8 
~Damn mate. That hit me in the heart. Let's continue on before you make me cry, that's not something I want to add to the Kale tale.~
EXIT 

CHAIN X3Kal25J T3.D6 
~Not if you become a bloody god, mate. And even if you don't...you won't need me. I think you'll do just fine.~
EXIT 

CHAIN X3Kal25J T3.D5 
~Well, if you ever miss me to much, Gullykin will be calling. You can visit anytime, or overlook from the above, however the god stuff works, heh.~
EXIT 

CHAIN X3Kal25J T3.D4 
~Pfft, come on! You always hit me on that. I'll retell it true. Heck, I might have to tone down some things. People won't believe me if I tell it true. And that is bloody funny.~
EXIT 
// Only happens if Kayle is lawful (maybe) and Mazzy is in the party.
CHAIN X3Kal25J T3.Mazzy 
~I'm going to keep adventuring. But I don't want to really do it just for my own glory anymore, weird as it is to admit that.~
= ~I want to travel with Mazzy if she lets me. That gal has a bright future ahead of her, and she'll need a shield to make sure it lasts. I think I'll be pretty good for that.~
== MAZZY25J IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~If we can make it through our current one. Our path is not over, yet.~
== X3Kal25J IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~Well, a halfling can dream, can't he?~ 
END 
++ ~I wouldn't mind joining you two.~ + T3.M1 
++ ~Is it just to protect her, or for *other* reasons?~ + T3.M2 
++ ~No plans to ever settle down, then?~ + T3.M3 

CHAIN X3Kal25J T3.M1 
~It isn't my decision mate. But with your destiny, I don't think you could fit in such a plan.~
EXTERN X3Kal25J T3.M4

CHAIN X3Kal25J T3.M2 
~Heh, well, there could be *other* reasons. Can't hide anything from that intuition of yours.~
EXTERN X3Kal25J T3.M4

CHAIN X3Kal25J T3.M3 
~Pfft. Kale's a wild halfling, <CHARNAME>. Eh, well not wild. Just...not a pie eating burrow sitting halfling.~
EXTERN X3Kal25J T3.M4

CHAIN X3Kal25J T3.M4 
~I'll definitely miss these times when they are over, though. I owe you a lot for my growth, <CHARNAME>. One day I'll find a way to repay you for that.~
END 
++ ~I'll miss this too.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + T3.M5
++ ~Ha, good luck ever doing that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.M6 
++ ~With all you have done for me, I think we are equal.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.M7

CHAIN X3Kal25J T3.M5 
~You better.~
EXTERN X3Kal25J T3.M8

CHAIN X3Kal25J T3.M6 
~Hey...damn. I can't think of a comeback. Well our path together is not over yet. I'll find time to squeeze in plenty of glorious savings of your life to repay you soon enough.~
EXIT 

CHAIN X3Kal25J T3.M7
~That mate, is why I love traveling with you.~
EXTERN X3Kal25J T3.M8

CHAIN X3Kal25J T3.M8
~I'm not going anywhere for now though, so don't start crying, your lovable Kayle is right here. I still got to get you to the end of this road.~
EXIT 

//Romance Talks 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",2)~ THEN X3Kal25J LoveTalk1 
~Seems like only yesterday we were being paraded about like proper heroes in Suldanessellar. Damn I miss it already.~
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)~
END 
++ ~Suldanessellar isn't our home. We couldn't stay forever.~ + 1.1 
++ ~Things were getting tense. I think we overstayed our welcome.~ + 1.2 
++ ~We still have more adventure ahead of us.~ + 1.3

CHAIN X3Kal25J 1.1
~Yeah, yeah. Still, it was nice to be properly congratulated. We deserved it, you know.~
EXTERN X3Kal25J 1.4

CHAIN X3Kal25J 1.2
~Huh. I thought because it was because I got a little too drunk. You noticed too?~
EXTERN X3Kal25J 1.4

CHAIN X3Kal25J 1.3
~Yeah, I guess we shouldn't get too spoiled, I suppose.~
EXTERN X3Kal25J 1.4

CHAIN X3Kal25J 1.4
~Still, I liked the time we got together. And they had some fine bathes too. Gullykin really ought to consider something like that for our own village.~
END 
++ ~You really liked that, didn't you?~ + 1.5
++ ~It will be a while before we have that luxury again.~ + 1.6
++ ~Shouldn't we focus ahead? We can reminisce later.~ + 1.X 

CHAIN X3Kal25J 1.X 
~Yeah, you're right. We can talk about it some more at a better time.~
EXIT 

CHAIN X3Kal25J 1.5
~You bet I did, <CHARNAME> Especially the fine company that was joined with me, heh.~
EXTERN X3Kal25J 1.7

CHAIN X3Kal25J 1.6
~Yeah, it will. I'll miss it, but I'll go anywhere as long as we're together.~
EXTERN X3Kal25J 1.7

CHAIN X3Kal25J 1.7
~I guess that's in the past now. Now we have to deal with these other Bhaalspawn. Must be weird, fighting your own family.~
END 
++ ~They don't mean anything to me.~ + 1.8
++ ~A little. But we can only look out for ourselves.~ + 1.7
++ ~It's unfortunate, but we have little choice.~ + 1.8

CHAIN X3Kal25J 1.8
~Kind of sad, that. My people think of anyone as family, even if they're just distant cousins.~
EXTERN X3Kal25J 1.10

CHAIN X3Kal25J 1.9
~True, and probably for the best. Especially with a few showing they would much rather kill you than be friends.~
EXTERN X3Kal25J 1.10

CHAIN X3Kal25J 1.10
~Well, let's get back it. But if we find a nice lake somewhere, we should totally dive in, just the two of us. I'll give you a real treat then.~
EXIT 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",4)~ THEN X3Kal25J LoveTalk2
~Gullykin seems so far away now. Wasn't so long ago I was just hoping to find a group to get out of there and make a name.~
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Why are you so fond of that village, if you were wanting to leave it?~ + 2.1
++ ~I'm glad you left to be by my side.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.2 
++ ~I remember you then. You've become a marvel since.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 2.2 

CHAIN X3Kal25J 2.1
~Well, besides my mother being there...I don't know. It's just always been the place to return to for me.~
= ~You don't have the same thing, do you?~
END 
++ ~In Candlekeep, there was only Gorion. With him gone, that's not really home anymore.~ + 2.3
++ ~My home is the road. It always will be.~ + 2.4
++ ~As long as I am beside you, I don't care what home is.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.5

CHAIN X3Kal25J 2.2
~I'm glad you let me join you all that time ago. You could have said no, you know? Would probably have changed both our lives for the worse, heh.~
= ~You don't really have a home though, do you? Not a place where you can go back if you wanted.~
END 
++ ~In Candlekeep, there was only Gorion. With him gone, that's not really home anymore.~ + 2.3
++ ~My home is the road. It always will be.~ + 2.4
++ ~As long as I am beside you, I don't care what home is.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.5

CHAIN X3Kal25J 2.3
~I always said Candlekeep was the most boring place in the realms. No one would talk about that in Gullykin.~
EXTERN X3Kal25J 2.4

CHAIN X3Kal25J 2.4
~Really? So after this is all over, you want to stay on the road?~
END 
++ ~I do. There are plenty more adventures to be had.~ + 2.10 
++ ~I don't know. I haven't thought about it.~ + 2.12 
++ ~Actually, I plan to take my rightful place as a god.~ + 2.11

CHAIN X3Kal25J 2.5
~I like the sound of that.~
END 
IF ~!Race(Player1,HALFLING)!Race(Player1,DWARF)Race(Player1,GNOME)~ + 2.6
IF ~OR(2)Race(Player1,DWARF)Race(Player1,GNOME)~ + 2.7
IF ~Race(Player1,HALFLING)~ + 2.8

CHAIN X3Kal25J 2.6
~I don't think Gullykin would be comfortable for a non-halfling, but there's Beregost if we ever wanted to take a break for a while, you know, when this is all over.~
END 
++ ~That sounds nice, actually. I wouldn't mind going there with you.~ + 2.9
++ ~I would rather stay on the road. There's still so much we could accomplish.~ + 2.10
++ ~Actually, I plan to take my rightful place as a god.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.11

CHAIN X3Kal25J 2.7
~We could go back to Gullykin one day, you know. They wouldn't mind a <PRO_RACE> living with me there. We could take a bit of a break once this is all over. Ma would sure like that.~
END 
++ ~That sounds nice, actually. I wouldn't mind going there with you.~ + 2.9
++ ~I would rather stay on the road. There's still so much we could accomplish.~ + 2.10
++ ~Actually, I plan to take my rightful place as a god.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.11

CHAIN X3Kal25J 2.8
~We could go back to Gullykin one day, you know. We could take a bit of a break once this is all over. Ma would sure like that.~
END 
++ ~That sounds nice, actually. I wouldn't mind going there with you.~ + 2.9
++ ~I would rather stay on the road. There's still so much we could accomplish.~ + 2.10
++ ~Actually, I plan to take my rightful place as a god.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.11

CHAIN X3Kal25J 2.9
~Good. You'll like it, trust me. And as much as I like swinging a sword around...it's good to have a future planned.~
EXIT 

CHAIN X3Kal25J 2.10
~The road eh? I don't mind making a few more legends together. Granted if we survive this one, at least. Good times ahead either way, I hope.~
EXIT 

CHAIN X3Kal25J 2.11 
~...I kind of forgot about that. Not really sure what to say. Best I...probably not say anything at all for now.~
EXIT 

CHAIN X3Kal25J 2.12
~Well, we have plenty of time. Guess nothing really needs to be decided now. We can focus on living through this hell of a time first.~
EXIT 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",6)~ THEN X3Kal25J LoveTalk3 
~So if you really, really did decide to pick up your mantle...I mean what does a god do day in and day out?~
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~I may find out soon enough.~ + 3.1 
++ ~I don't know. But I imagine the power will be immense.~ + 3.1 
++ ~Whatever it may be, I will handle it responsibly.~ + 3.1 
++ ~I don't want the mantle. If I have a choice, I'd rather refuse it.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 3.2 
++ ~I'd rather not talk about this, Kale. Not now.~ + 3.X

CHAIN X3Kal25J 3.X 
~Eh...right. As you wish, love.~
EXIT 

CHAIN X3Kal25J 3.1
~You know, I'm pretty faithful to my own gods...but uh, I might sneak in a prayer to you now or then, if it happens. Or just to say hi, even if you don't say anything back.~
END 
++ ~I'd find a way. I imagine I could have some creative methods of doing that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.3
++ ~I imagine I would have far more important things to worry about.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 3.4
++ ~That sounds sweet, Kale. Even if that happens, our love wouldn't have to end, would it?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 3.5

CHAIN X3Kal25J 3.2 
~I consider myself pretty selfless most of the time but...damn that makes me happy for my own reasons. I don't want to lose you, you know?~
= ~Of course if I have to...I might sneak in a prayer to you now or then. I'm sure Yondalla wouldn't mind too much. Even if you didn't say anything back.~
END 
++ ~I'd find a way. I imagine I could have some creative methods of doing that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.3
++ ~I imagine I would have far more important things to worry about.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 3.4
++ ~That sounds sweet, Kale. Even if that happens, our love wouldn't have to end, would it?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 3.5

CHAIN X3Kal25J 3.3 
~You sure would. I should tell you that classic story where Brandobaris outsmarted Myrkul, saved lots of lost souls, and left him a special present. Let's just say...he wasn't pleased.~
= ~I imagine your adventures would never end up there. But still...I'd rather you stay, you know?~
EXTERN X3Kal25J 3.6

CHAIN X3Kal25J 3.6
~Ah well, it's...pointless to ponder. Just makes things a bit uncomfortable.~
EXIT 

CHAIN X3Kal25J 3.4
~Right...I don't know what I was even thinking, heh. Forget I asked.~
EXIT 

CHAIN X3Kal25J 3.5
~...That's...probably one of the most hopeful things you've said. With everything going bad, you know how to give a guy a lot of hope.~
= ~I don't think I would. But I would want you here, you know, where I can see you, feel you. It's selfish but...it's the hope I have.~
EXTERN X3Kal25J 3.6

//Kale Wraith Talk 
// Kale's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3KalRomanceActive","GLOBAL",2) InParty("X3Kal") See("X3Kal")~ EXTERN HGWRA01 X3KalWraith1
END

CHAIN HGWRA01 X3KalWraith1
~What of the inevitable pain you must give to the one you love? Such as the one known as Kale?~ [HGWRA108]
DO ~SetGlobal("X3LovedOne","GLOBAL",2)~
== X3Kal25J ~Eh? I think you're all wrong about that, creature. No pain over here.~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3KW1")~ EXIT
END

BEGIN X3KLove 

CHAIN 
IF ~Global("X3KalWraithSpirit1","GLOBAL",0)~ THEN X3KLove X3KalWraithSpirit1
~Kale? It has been so long, where did you go off to?~
DO ~SetGlobal("X3KalWraithSpirit1","GLOBAL",1)~
== X3Kal25J ~Oh. Alora...eh, well, about that...?~
== X3KLove ~You told me you would only be gone for a few days to visit your mother. It has been months now.~
== X3Kal25J ~Heh. Yeah...I might have lied. Sorry.~
== X3KLove ~I trusted you, Kale. I needed you. I pulled off that heist I wanted to do with you alone, and I was caught, and then executed.~
== X3Kal25J ~Wait, what? You're dead Alora? By the Hound, I didn't mean for that.~
== X3KLove ~Did you, Kale? You are with another, now. You have not only left me to death, but you have been unfaithful.~
== X3Kal25J ~Now hold on! Your death wasn't my fault. And I...eh, I'm just not good at saying things are over. I'm different now, honest!~
== X3KLove ~Are you? Are you really? Or is that another lie you tell yourself?~
== X3Kal25J ~Damn, someone make this thing shut up! I don't need all of this.~ 
END 
++ ~Stop it! He's not responsible for what happened to you!~ EXTERN HGWRA01 25
++ ~Stop this, Gorion! Kale doesn't deserve this!~ EXTERN HGWRA01 25
++ ~Enough! I won't allow this to continue!~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~Don't believe anything you hear, Kale, this is a lie!~ EXTERN HGWRA01 25 


//Post Wraith Event 
CHAIN IF ~Global("X3KalWraithTalk","LOCALS",1)~ THEN X3Kal25J WraithTalk 
~Aww, damn it, I feel so guilty. Alora...she's really dead?~
DO ~IncrementGlobal("X3KalWraithTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~None of it was real, Kale.~ + W.1 
++ ~We have no way of knowing, Kale.~ + W.2
++ ~Can you really trust anything that was said here?~ + W.1

CHAIN X3Kal25J W.1 
~Yeah, I know you are right, but...damn her words stung.~
EXTERN X3Kal25J W.3 

CHAIN X3Kal25J W.2 
~Yeah. That's what's chilling me inside, mate.~
EXTERN X3Kal25J W.3 

CHAIN X3Kal25J W.3 
~I'll...I'll never abandon you like that, <CHARNAME>. I'm not that man anymore. Alora didn't deserve it. And you don't either.~
END 
++ ~I know, Kale. I trust you.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + W.5
++ ~No need to dwell on it. It's the past.~ + W.7
++ ~You better not, Kale. I'd have no tolerance for that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + W.4

CHAIN X3Kal25J W.4 
~Sheesh, way to be scary.~
EXTERN X3Kal25J W.6

CHAIN X3Kal25J W.5 
~Thanks. That really means a lot, mate.~
EXTERN X3Kal25J W.6

CHAIN X3Kal25J W.7
~Yeah. It's all in the past, now.~
EXTERN X3Kal25J W.6

CHAIN X3Kal25J W.6
~Now, let's get the hell out of this place.~
EXIT 

//Love Talk #4
CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",8)~ THEN X3Kal25J LoveTalk4 
~Aaaah! *Sigh* Just another damn nightmare.~
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Are you all right, Kale?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.1
++ ~It's over. Come close, tell me what it was about.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.2
++ ~About time you wake up. Your murmurings were interrupting my sleep.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 4.3 

CHAIN X3Kal25J 4.1
~Yeah...yeah.~
EXTERN X3Kal25J 4.2 

CHAIN X3Kal25J 4.3 
~Sheesh. Sorry. Hard to not do that when you don't even know you're muttering.~
EXTERN X3Kal25J 4.2 

CHAIN X3Kal25J 4.2 
~I saw my mother. Just...laying in her chair, like she was dead. Then she lurched up and started shaking me, accusing me of abandoning her to die.~
= ~Damn I feel guilty. I haven't checked on her in forever...won't get a chance for a while longer.~
END 
++ ~I am sorry Kale. I've had you alongside me for so long, I didn't consider your family.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.14
++ ~She's probably proud of you, not angry.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.4
++ ~Isn't she old anyway? Nothing you can do if she decided to pass on.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 4.5

CHAIN X3Kal25J 4.14 
~You, apologizing? It's not your fault mate. I could have tried to get in contact...I just...forgot. Got entrenched in what we were doing.~
EXTERN X3Kal25J 4.6

CHAIN X3Kal25J 4.4
~If she knows what I am doing. Otherwise she's worried sick. She understands my need to travel...but she's not the biggest fan, deep down. I know it even if she won't admit it.~
EXTERN X3Kal25J 4.6

CHAIN X3Kal25J 4.5
~Wow you are...not  very sympathetic, are you, <CHARNAME>?~
EXTERN X3Kal25J 4.6

CHAIN X3Kal25J 4.6
~I just wish there was something I could do. Someway to know for sure she is all right.~
END 
++ ~There isn't. Not right now. Just have faith.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.7
++ ~I wish I knew how to help.~  + 4.8
++ ~If you want to...you could go. You could go home and see if she is all right.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.9

CHAIN X3Kal25J 4.7
~Yeah...I'll try.~
EXTERN X3Kal25J 4.10

CHAIN X3Kal25J 4.8
~It's all right, love. We halfling folk do live a long time...I'll just pray everything is all right.~
EXTERN X3Kal25J 4.10 

CHAIN X3Kal25J 4.9
~Damn that's...touching. And tempting, even. But I can't abandon you. Not now. Not until this is over.~
EXTERN X3Kal25J 4.10 

CHAIN X3Kal25J 4.10
~The others will probably get up soon, right. May as well start getting ready.~
END 
++ ~I think I know of something else that might set you at ease.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.11 
++ ~(Kiss Him)~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.12
++ ~You sure you are all right?~ + 4.13
++ ~Aye, let's prepare to be off.~ EXIT 

CHAIN X3Kal25J 4.11
~Really? Well then...forget the others. Let's enjoy ourselves for a brief moment. Because damn do I need this.~
DO ~StartCutSceneMode()
	FadeToColor([20.0],0)
	Wait(2)
		FadeFromColor([20.0],0)
	EndCutSceneMode()~ 
EXIT 

CHAIN X3Kal25J 4.12
~(The suprise of your affection quickly dissipates and he eagerly returns your advances.)~
= ~Forget the others. Damn do I need you right now.~
DO ~StartCutSceneMode()
	FadeToColor([20.0],0)
	Wait(2)
		FadeFromColor([20.0],0)
	EndCutSceneMode()~ 
EXIT 

CHAIN X3Kal25J 4.13
~I don't know. Hard to be in these times. But I'm all right enough to keep swinging, and that's what matters.~
EXIT 

// Love Talk #5
CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",10)~ THEN X3Kal25J LoveTalk5 
~Damn. The smoke. The death. The bodies. I've seen many things, but that many in one place? Makes you glad to be alive.~
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Do you have no sorrow for any of the fallen?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 5.1 
++ ~It was thrilling. We took down a supposedly immortal giant, too.~  + 5.2 
++ ~We should keep moving, Kale.~ + 5.X

CHAIN X3Kal25J 5.X
~Right, celebrate later and all that, eh? As you wish.~
EXIT 

CHAIN X3Kal25J 5.1 
~I don't mean to say that I don't feel sorry for them. They didn't deserve it, but I'm also glad not to be them.~
EXTERN X3Kal25J 5.3

CHAIN X3Kal25J 5.2
~I feel just like Littleman when he outsmarted the giant. Damn, that was fun. Damn that was thrilling too.~
EXTERN X3Kal25J 5.3

CHAIN X3Kal25J 5.3 
~We endured and fought and scrapped our way out of so many things, and here we are living when so many didn't. It makes you appreciate life.~
END 
++ ~You seem so cold to those who passed. I don't like that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 5.4 
++ ~You're right. It shows that we won't let anything stop us.~  + 5.5 
++ ~Thanks to me. If I wasn't there you wouldn't be alive.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 5.6

CHAIN X3Kal25J 5.4
~*Sigh*. We've seen a lot of it, you know? It's hard to feel that way to strangers.~
= ~Heck you've seen more death than I have. How the hell can you still feel anything?~
END 
++ ~Because I don't want to feel like a monster.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + 5.7
++ ~I don't know. I just try. I don't want to know what will happen if I quit caring.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + 5.7 
++ ~Maybe you are right. Maybe there's no point.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",4)~ + 5.8

CHAIN X3Kal25J 5.7
~I...I can see why that is important to you. I'm sorry.~
= ~I'll try to be more empathetic. For you. And if I slip again...I know you'll help me.~
= ~Damn I'm a lucky halfling. Thank Yondalla that you are in my life, <CHARNAME>.~
EXIT 

CHAIN X3Kal25J 5.8
~It's not easy, but...this happens. It's not a fun thing, but it's part of the world we live in now.~
= ~Come on. Let's pick up. I've a bad feeling we've still got worse ahead.~
EXIT 

CHAIN X3Kal25J 5.5
~Exactly. They could throw more giants, dragons, or wolves, and we'll get through it all.~
= ~On to the next, eh? My blood is boiling with energy, and I'm ready!~
EXIT 

CHAIN X3Kal25J 5.6
~Way to take the storm out of it. It's always just about you and your greatness. Sometimes I wonder why I...eh, just forget it.~
EXIT 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",12)~ THEN X3Kal25J LoveTalk6
~Damn. We didn't take out just one dragon, but two dragons. Half Bhaalspawn Dragons. The legend ever grows!~
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~You seem very excited about this.~ + 6.1 
++ ~Yes it does. People will never run out of stories to tell about our achievements.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.1 
++ ~This isn't over yet, Kale.~ + 6.2

CHAIN X3Kal25J 6.1 
~Damn right. Soon there won't be any of these Bhaalspawn left. Then it will be just you and...~
EXTERN X3Kal25J 6.3

CHAIN X3Kal25J 6.2 
~Heh, maybe not, but soon there won't be any of those Bhaalspawn left. Then it will just be you and...~
EXTERN X3Kal25J 6.3 

CHAIN X3Kal25J 6.3
~...and then I don't know. I hate not knowing that.~
END 
++ ~I will try to stay. You know that, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 6.4
++ ~Even if I ascend, that doesn't mean I am leaving now. We still have time.~  DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.4
++ ~Don't think about that. It will only bother you more.~ + 6.5

CHAIN X3Kal25J 6.4
~I know. But...maybe you shouldn't make that decision based solely on what I want.~
= ~I know I've always been selfish, but it's about what you want to. And if you choose otherwise...I shouldn't say anything about it, should i?~
EXTERN X3Kal25J 6.6

CHAIN X3Kal25J 6.6
~Damn this has soured my mood. Just forget I mentioned this.~
EXIT 

CHAIN X3Kal25J 6.5
~I think about it everyday, <CHARNAME>. When I sleep, when I look at you...constricts my heart like a snake.~
EXTERN X3Kal25J 6.6

// Final Love Talk 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",14)~ THEN X3Kal25J LoveTalk7
~I know this may be...a strange time to present this, but I have a bit of rope here.~
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Er. Okay?~ + 7.1
++ ~That could have been useful. Why didn't you say something earlier?~ + 7.2
++ ~Kale, if this is a set up for a joke, this isn't the time.~ + 7.3

CHAIN X3Kal25J 7.1
~Right, I should explain what this is. I can see you're not understanding just with me holding it.~
= ~In Gullykin, we have two different types of marriages. There's the one for life, sworn to the gods to be together for good, which...definitely is not for us right now.~
= ~Then there's this, which lasts for as long as love lasts. As long as you are willing to have this last.~
= ~I don't know if you want this, or if...you'll even say yes, or even be around for this to last. But I know I want to at least do this, for the memory, if nothing else.~
END 
++ ~I would love to do this with you, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.8
++ ~I don't know what to say, Kale.~ + 7.7
++ ~I can't do this with you, Kale. I'm sorry.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 7.4

CHAIN X3Kal25J 7.4
~Are...are you ending us, then?~
END 
++ ~No. I do want to be with you. I just want to make sure that's what I truly decide.~ + 7.6
++ ~Yes. I think that will be easier for us all.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 7.5
++ ~I might ascend. I can't commit until I know for sure.~ + 7.6
++ ~I know you'll find someone willing to do this with you someday.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.5

CHAIN X3Kal25J 7.5
~...I don't know what to say. I'm...dissapointed, I guess.~
= ~I'll still follow you to the end. I'll do that much for you. After that...I guess I'll figure out what to do with my life.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3Kal25J 7.6
~I will wait, then...and ask you when this is over. I just hope you are still around for me to ask.~
EXIT 

CHAIN X3Kal25J 7.7
~May I politely suggest the word yes?~
END 
++ ~Yes. Absolutely.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.8
++ ~I might ascend. I can't commit until I know for sure.~ + 7.6
++ ~I can't do this with you, Kale. I'm sorry.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 7.4

CHAIN X3Kal25J 7.2
~What? It's not *that* kind of rope. Look how tiny it is.~
EXTERN X3Kal25J 7.1

CHAIN X3Kal25J 7.3
~I sure hope this isn't a joke.~
EXTERN X3Kal25J 7.1

CHAIN X3Kal25J 7.8
~That's what I was hoping to hear.~
END 
IF ~NumInPartyGT(4)~ EXTERN X3Kal25J 7.9A 
IF ~!NumInPartyGT(4)~ EXTERN X3Kal25J 7.9B 

CHAIN X3Kal25J 7.9A 
~A handfasting is usually done with three witnesses, and we've got just that. It's actually...pretty simple of a ceremony.~
EXTERN X3Kal25J 7.10 

CHAIN X3Kal25J  7.9B 
~A handfasting is usually done with three witnesses, but damn the rules. We can do it right later. I just want something simple now.~
EXTERN X3Kal25J 7.10

CHAIN X3Kal25J 7.10
~We tie our hands together, like this...then look eachother in the eye, and say something like this:~
= ~I'll protect you, <CHARNAME>, and always have your back with my body or my shield. I'll keep you happy and pleased for as long as love lasts.~
END 
++ ~I will protect you too, Kale, with all my heart. I'll keep you happy for as long as our love lasts.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.1
++ ~I don't think I can say it like you did. But I will love you for however long it lasts.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.11
++ ~You better. I love you, you rascal.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.11

CHAIN X3Kal25J 7.11
~(He kisses you, then releases the rope binding you two.) For as long as love lasts.~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Aww. This is so sweet.~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I was always interested in what a handfasting is like. It is as romantic as I was told.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Are we done here? Ugh, I did not need to see this.~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I'm proud of ye, Kale. 'Bout time ye got over yer commitment issues.~
EXTERN X3Kal25J 7.12 

CHAIN X3Kal25J 7.12
~Let's go finish this, love. For good.~
EXIT 


//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25J engagement 
~Uh...what's this? What is its magic?~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~It's an engagement ring, Kale. I want to marry you.~ + engagement_yes
++ ~I have been wanting to ask for a while. Will you marry me, Kale?~ + engagement_yes
++ ~I was proposing, but if  you aren't interested...~ + engagement_yes

CHAIN X3Kal25J engagement_yes 
~I'm definitely interested. Kind of odd to be the one asked. Normally that's the thing I would do.~
= ~Marriage is a big deal in our culture. We usually start with the smaller handfasting. Easier to break out of, heh, not that I would ever do that to you.~
= ~But if you want a promise of marriage happening someday? I'll give it a dozen times over. You're my love for life. Hopefully it's not about to end 'round the corner, cause I want it to be a long one.~
DO ~TransformItem("X3ERING","X3RINGK")~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Aww! I think that's the sweetest thing I've ever heard Kale say.~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, congrats to ye both! But nay get comfortable yet. We have many battles ahead.~
EXIT 







CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25J engagement_auto_fail 
~Uh...what's this? What is its magic?~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~Oh, I just figured it would look nice.~ + eaf.1 
++ ~I want to marry you, Kale.~ + eaf.2
++ ~I was hoping you could unlock it's magic properties.~ + eaf.4

CHAIN X3Kal25J eaf.1 
~It looks great mate! But if it doesn't do anything, not sure I want it.~
EXTERN X3Kal25J eaf.3 

CHAIN X3Kal25J eaf.2 
~Sorry mate! I'm not going to want to be under your shadow my whole life, now.~
EXTERN X3Kal25J eaf.3

CHAIN X3Kal25J eaf.4 
~Nope. Not working.~
EXTERN X3Kal25J eaf.3

CHAIN X3Kal25J eaf.3
~So, uh, take it back, mate. Save it for someone who its better suited for.~
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN ~Like Vienxay. If you're crazy enough, anyway. And you seem to be.~
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~Maybe Recorder would get a kick out of it. She's the knowledgeable type anyway, eh?~
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~Could offer it to Emily. Might make her day, you never know.~
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

// Group Kiss from PID 
CHAIN X3Kal25J Group.Kiss 
~Um, but what about the rest of the party?~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Aww. How cute.~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Life's short. Go get it, Kale.~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Every story needs a little bit of sugar. Don't be shy on our behalf.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh, just go brag about your love to the world. Like I care.~
== X3Kal25J ~Heh, forget that. Come here.~
== X3Kal25J ~Mmm. Damn, I am lucky to have you. Very, very lucky.~
EXIT 

APPEND X3Kal25J

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~Soo. Things have been kind of sour lately. I know this road is hard and all but...I know when a relationship has hit its end.~
= ~That's whats going on with us right now. You and me? I think it's time that stops. I don't know what it is but...you've been treating me far worse, mate.~
= ~And that's...well I'm bloody worth something.~
++ ~Kale, please. Give me another chance.~ + LBreak.1
++ ~Maybe we shouldn't have ever done this.~ + LBreak.2 
++ ~You can't stand a bit of hardship? Boohoo.~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~'Fraid my mind has been made up for a while now. Just...didn't have the courage to speak 'til now.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~Maybe. But I'll remember the good as much as the bad.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~That coldness, mate, is why this is over.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~Question is, do you see me as too distracting to stay, or are you fine with it?~
++ ~I think you should go, Kale.~ + LBreak.5 
++ ~Go. Give me your equipment. I never want to see you again.~ + LBreak.6 
++ ~I'll be okay. Stay.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~Right. Well...no need to make this ceremonious or anything. I'll just pack up and go.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~Pfft. If that's how you want to end it. See ya.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~Good. I'm glad to stay and keep fighting for you, despite things, mate. 'Sides, can't let you have all the glory.~
IF ~~ EXIT 
END 

// Approval Break Point

IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~Look mate, I hate to bring this up suddenly. Honestly, 'figured lately things were just some temporary mood storm. But it's not changed.~ 
= ~'Fraid I'm not interested in traveling with someone like you anymore, mate. Not sure you even care about that.~
++ ~What changed? Am I taking up all the glory from you?~ + Break.1 
++ ~And what would you have me do differently?~ + Break.2 
++ ~Look, I'm sorry with how things have been. It's just been temporary, as you said.~ + Break.8
END 

IF ~~ Break.1
SAY ~That ain't it mate, at least, it ain't the only reason.~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~Treat me decently? Listen to me for once in a while? Give me an ounce of some bloody respect?~ 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY ~I don't know if your lack of regard is temporary, mate. It's been a while.~
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY ~As things stand, I think it's best you and I split.~
++ ~Then go. Not as if you are useful anyway.~ + Break.4
++ ~Fine. Give me your equipment and go.~ + Break.5
++ ~Look, let's try this again. Give me another chance.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~Damn you, mate. Frankly, I hope something out there kills you.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~Right, taking away everything I have too? Damn you, mate. Have it if you must. I hope something bloody kills you out there.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~You're probably fooling me. But you know what? I'll see your chance through. Maybe there's worth in your words.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3KalApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@316)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~This was a waste of time. I bet you weren't even listening to me before. Just saying whatever you thought would soothe me.~
= ~Well guess what, mate? I'm out of here. Goodbye. I bloody hope we don't meet again.~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY ~Yeah? You want something, I bet.~  [KaleCom1]
++ ~I have a question for you.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY ~Well, heh, how's it going?~ [X3KWHIG] 
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END  

IF ~~ main.PID 
SAY ~Yeah, yeah, ask away.~
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Go ahead, ask.~
+~PartyHasItem("X3ERing")Global("X3KalRomanceActive","GLOBAL",2)~+ ~Kale, I bought this ring for you. I want you to be my husband, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ ~I'd like to hear about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your home village?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ ~Are you very faithful? Religious, I mean.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ ~I've never seen you without your cloak. Why is that?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~Something else you need?~ [X3KSYND]
+~PartyHasItem("X3ERing")Global("X3KalRomanceActive","GLOBAL",2)~+ ~Kale, I bought this ring for you. I want you to be my husband, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ ~I'd like to hear about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your home village?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ ~Are you very faithful? Religious, I mean.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ ~I've never seen you without your cloak. Why is that?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ ~Let's talk about something else.~ + main.PID
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Family 
SAY ~My family, eh? Well, where to start...~
= ~I've got Ma and Sam. Ma was part of a caravan before she came to Gullykin. Once she got round with me, she made roots and just never bothered getting up.~
= ~Damn good with farm tools and growing things though, so the locals have no complaints.~
++ ~She never adventured?~ + PFamily.1 
++ ~Compared to your life, your mother's is suprisingly simple.~ + PFamily.1 
++ ~Tell me about your brother, Sam.~ + PFamily.2
++ ~Let's talk about something else.~ + main.PID 
END

IF ~~ PFamily.1 
SAY ~Most of us don't venture out of the burrow mate. In fact, being stuck in Gullykin all the time made me want to wander myself, so I don't have any complaints about how it all turned out.~
IF ~~ + PFamily.2
END 

IF ~~ PFamily.2 
SAY ~Sam though, damn fool always found some stupid way to get in trouble. He found the cities exciting and just wasn't ready for all the temptations. Always finding himself in debt and spending gold he doesn't have.~
= ~I've helped him out now and then, but he better not be finding some more trouble while I'm gone. He was never as good with weapons like I am, so he's not the best at protecting himself.~
++ ~If he has the luck other halflings have, he'll be fine.~ + PFamily.3 
++ ~Do you still love him?~ + PFamily.4
++ ~He sounds like a nuisance. Why do you bother?~ + PFamily.5
++ ~Let's talk about something else.~ + main.PID 
END

IF ~~ PFamily.3 
SAY ~Heh, you would think that. But luck runs out, even for us.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.4 
SAY ~Aye, even if he is a nuisance at times, I love the fellow. He's come through with good advice for me. So I don't mind being his hero, long as he brags about me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.5 
SAY ~Family is family. In the end we share the same blood. I'll be there for him when the road isn't taking me so far away.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Gullykin 
SAY ~Ain't much to talk about. You've seen the village haven't you? Small and at the fringe of a ruin. The ruin was the most interesting part, and everyone tells you to stay away from it.~
= ~Besides the kobolds, it was a rather safe place to grow up if you didn't wander out far. Otherwise it was a boring place of farms and vineyards.~
++ ~Would you rather call somewhere else home?~ + PGully.1 
++ ~You must be glad to be on the road, then.~ + PGully.2
++ ~Let's talk about something else.~ + main.PID 
END 

IF ~~ PGully.1 
SAY ~Heh, nah. With the dinners Ma makes when I come back, damn would I be regretful if I never returned.~
= ~And it does allow me to bring wild tales to impress the locals. Hard to do that if you're in a town where there are other adventurers.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PGully.2 
SAY ~Aye. Though don't get me wrong, I could see myself settling there myself. Just not until I have a lot of stories to regale and a legend created for myself.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Faith
SAY ~Huh. You know, we halfling folk have a different way to look at our gods. It's not like we don't pray to them often...though we don't pray to them often, heh.~
= ~We believe the best way to pay our respects is to live by their wishes. Care for the sick, watch out for the old, and live a life of plenty, but not greed.~
= ~I don't care much about any deities outside of our Venya, though. None save Tymora. She gives us our luck, you know.~
++ ~Is that why you are so lucky?~ + PFaith.1 
++ ~Can you tell me more about your gods?~ + PFaith.2 
++ ~Do you not have temples?~ + PFaith.3
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.1 
SAY ~Yeah, or it could be because of Brandobaris. The Scamp always has misadventures, but always gets through them all.~
IF ~~ + PFaith.2 
END 

IF ~~ PFaith.2 
SAY ~There's Yondalla, Sheela, Urogalan, Arvoreen, Brandobaris, and Cyrrollalee. They all as a collective help round out how a halfling should behave.~
= ~Cyrrollalee's door is always open, so you always find Gullykin's doors open. Brandobaris is a scamp, so you might find something in your pockets missing. Arvoreen is the defender, so we're always keeping an eye on those who might bully our people.~
= ~Urogalan guides the dead to the next great adventure, while Sheela watches over the harvest, and Yondalla teaches to keep our families tight knit. It's a nice collective if you ask me.~
++ ~Interesting. Thank you for sharing that.~ + PFaith.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.3 
SAY ~Eh, our temples tend to double as something else. You know, a winery, or a tavern. I think it makes more sense that way than have some extravagant, expensive building.~
++ ~Can you tell me more about your gods?~ + PFaith.2 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.4
SAY ~Thanks for asking. Kind of nice to remember to think of the Mother and her Children I sometimes don't do that enough.~
IF ~~ EXIT 
END 

IF ~~ PID.Cloak
SAY ~That's because every hero needs to look good, and the cloak's just the essential part of the ensemble.~
= ~Made this my self. I always repair it if it gets any holes, and a cloak can be useful distraction, a tool of its own.~
++ ~I guess you have a point.~ + PCloak.1 
++ ~It's just that there are more stylish cloaks you could get for yourself.~ + PCloak.2 
++ ~I don't think I agree with you at all.~ + PCloak.3
++ ~Let's talk about something else.~ + main.PID 
 END 
 
IF ~~ PCloak.1 
SAY ~Well, now that you understand, hopefully you'll look at your own choices of attire and wisen up, eh?~
++ ~There's nothing wrong with what I am wearing.~ + PCloak.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PCloak.2 
SAY ~What? That is the most slanderous thing I have ever heard. You mate, need to evaluate your choices of attire if you think that.~
++ ~I am allowed to have my own opinion.~ + PCloak.5
++ ~There's nothing wrong with what I am wearing.~ + PCloak.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PCloak.3 
SAY ~Well mate, considering your own choice of attire, I'm not suprised. Didn't you grow up in a monastery? I didn't think you'd be the sharpest out there.~
++ ~I am allowed to have my own opinion.~ + PCloak.5
++ ~There's nothing wrong with what I am wearing.~ + PCloak.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PCloak.4 
SAY ~Heh, well, I will have to prove to you otherwise someday. I could dress you and make you look very sharp. But unfortunately there's no room for that when we're getting blood all over us from the monsters that fall on our swords.~
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.5 
SAY ~Yeah. You are. It's just the wrong opinion. I could dress you and make you look very sharp. But unfortunately there's no room for that when we're getting blood all over us from the monsters that fall on our swords.~
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.6 
SAY ~So it will have to wait for a better day, I'm afraid.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY ~Well, it's not just us, but ask anyway.~
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe? When it's a safe place, of course.~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe? When it's a safe place, of course.~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~(Kiss him)~ + Group.Kiss
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~I think we should end this thing between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~Well, it's just the two of us. Ask away.~
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~(Kiss him)~ + Group.Kiss
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~I think we should end this thing between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~Sure, mate. Sounds fun.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~You don't even have to ask, love.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmm. A damn good kiss just because. I could get used to this.~
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY ~Oh...*sigh*. Usually it's I that initiates this stuff. Can...I ask why, mate?~
++ ~I'd rather not say why. I'm sorry.~ + BU.1 
++ ~This was fun. That's all it was to me.~ + BU.2 
++ ~It's just not working out.~ + BU.3 
++ ~I just don't see this going anywhere.~ + BU.4
END 

IF ~~ BU.1 
SAY ~Well...all right then. You can have your secret.~
IF ~~ + BU.5 
END 

IF ~~ BU.2 
SAY ~Yeah...t'was fun. Honestly I...normally would even be okay with that reason. Not sure why I'm not.~
IF ~~ + BU.5 
END 

IF ~~ BU.3 
SAY ~I don't know what that means...sounds like a reason I might give if I found something so stiffling. Maybe that's it.~
IF ~~ + BU.5 
END 

IF ~~ BU.4 
SAY ~Yeah...I guess I can see what you mean. I don't know why though why it bothers me so much...damn my heart.~
IF ~~ + BU.5 
END 

IF ~~ BU.5 
SAY ~Maybe I was getting too close and this is for the best. I'll...give you the space you want.~
IF ~~ DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@309)~ EXIT 
END 

END 
