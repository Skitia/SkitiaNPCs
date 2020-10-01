//Interjects: Non Essential 

//Watcher's Keep 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN ~Are you truly a fool? He deserves everything that comes to him. Read the scroll and be done with it.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN ~I would have called you a fool in the past for doing this. Yet I trust in our combined power, though I would still advice the scroll over this.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN ~Are you truly a fool? He deserves everything that comes to him. Read the scroll and be done with it.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN ~I would have called you a fool in the past for doing this. Yet I trust in our combined power, though I would still advice the scroll over this.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T GORAPP1 6 X3VieGORAPP1-6
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hrmph. Then their fate is quite deserved.~
END 

I_C_T GORDEMO 18 X3VieGORDEMO 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~They more than deserve what they have in mind. We are no one's pawns.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T GORDEMO 1 X3VieGORDEMO
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Such power! I can feel it...beware. Whatever is here is nothing that I have ever felt before.~
END  

I_C_T FSRIDD 0 X3VieFSRIDD0
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~This lowly imp is our challenge? This will be boringly easy.~
END  

I_C_T GORAPR 11 X3VieGORAPR 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~One can hardly blame him. I would have done the same if it was my master.~
END 

I_C_T GORSUC01 7 X3VieGORSUC01 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Hrmph. If you ask why I am upset later, I will point to this precise moment.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Vie",LastTalkedToBy)~ EXTERN X3Vie25J Yackman
END

CHAIN X3Vie25J Yackman  
~Hrmph, I have no desire to hurt someone so w- what are you doing? Stand still and stop being a nuisance! I'll use a spell if I must.~
EXTERN GORMAD1 10

I_C_T GORODR1 35 X3VieGORODR1-35
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I have no appreciation of being used and manipulated. And yet you will try to wave this away with words, I am sure.~
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~And he acts as if it is our fault, when this was clearly his duty. Humans!~
END 

I_C_T GORIMP01 0 X3VieGORIMP01
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~As if this imp could do much of anything to deter us. Still, it may know something.~
END  

//Pre-Saradush 
I_C_T SAREV25A 0 X3VieSAREV25A
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~What a fool. Give me the command and I will gladly destroy him twice over.~
END


//Saradush Interjects 

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J SARPROVF-Care
END

CHAIN X3Vie25J SARPROVF-Care 
~Oh, you are so lucky that I can tell what you are trying to do. 'Tis foolish to be brought alone to hear what they truly want without us near you, but, do as you wish.~
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPROVM 0
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J SARPROVF-Care
END

CHAIN X3Vie25J SARPROVM-Care 
~Oh, you are so lucky that I can tell what you are trying to do. 'Tis foolish to be brought alone to hear what they truly want without us near you, but, do as you wish.~
EXTERN SARPROVM 1

I_C_T SARKIS01 25 X3VieSARKIS01-25
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. His rubbish fear of magic is quite plain. I am suddenly completely averse to aiding him at all.~
END

I_C_T SARTHF1 13 X3VieSARTHF1-12
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL)~ THEN ~Use the shadows, human. Bide your time and then become unseen. You cannot be harmed if no one knows you are there.~
DO ~SetGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~
== SARTHF1 ~I...I will keep your advice in mind. Thank you.~
END 

I_C_T SARTHF1 12 X3VieSARTHF1-12
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL_EVIL)!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~This will be sweet to observe.~
DO ~SetGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~
== SARTHF1 ~Freedom!~
END 

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3VieRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Vie") Gender(Player1,MALE)~  EXTERN X3Vie25J SarPro_No 
END 

I_C_T SARBUL05 2 X3VieSarbul05-2 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Damn you! My kin deserve better!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@509)~
END

I_C_T SARBUL05 5 X3VieSarbul05-5 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~We should have killed them. No matter. I will remember their faces.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@513)~
END




CHAIN X3Vie25J SarPro_No 
~<CHARNAME>. Hello? Have you lost your mind?~
END 
++ ~Ah, fear not, Vienxay, her prices are too high anyway.~ EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ ~I'm interested and going to take up her offer, actually.~ EXTERN X3Vie25J SarPro_Break 
++ ~Don't worry, love. I only have eyes for you.~ EXTERN X3Vie25J SarPro_Yes 

CHAIN X3Vie25J SarPro_Yes 
~Good. Move on, harlot. You are not worth our time.~
EXTERN SARPRO01 3

CHAIN X3Vie25J SarPro_Break 
~Well then. You know exactly what this means. Have your fun, but I will not forgive you.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieAppChange","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@509)~
EXTERN SARPRO01 12 

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~IsValidForPartyDialogue("X3Vie")!Global("X3VieRomanceActive","GLOBAL",2)~ + ~Tell me about Vienxay.~ + X3VieVoloBio1
+ ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2)~ + ~Tell me about Vienxay.~ + X3VieVoloBio2
END

CHAIN SARVOLO X3VieVoloBio1
~The elf who mixes both the art of magic and shadow who first traveled with a sense of debt, and now stays along out of a sense of friendship. People still however, speak of her as that awful elf.~
EXTERN X3Vie25J X3VieVoloBio


CHAIN SARVOLO X3VieVoloBio2
~The elf who mixes both the art of magic and shadow who first traveled with a sense of debt, but now stays out of affection for <CHARNAME>. People still however, speak of her as that awful elf, or at least, those who envy her place as <CHARNAME>'s beloved.~
EXTERN X3Vie25J X3VieVoloBio

CHAIN X3Vie25J X3VieVoloBio
~Hrmph. And I thought he was a bard of legend.~
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGNYA01 29 X3VieHGNYA01-29
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. I would find this amusing, if she wasn't preparing to attack us, the fool.~
END

//

I_C_T BALTH 20 X3VieBalth20
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I am tired of us being the pawns of all of these humans! All the better that these games of yours are coming to an end, Balthazar.~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~The elf has the right of it, and that nay please me to say.~
END

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3VieSolarFriend1
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")!Global("X3VieRomanceActive","GLOBAL",2)~ THEN ~Finally. At the summit of everything. This is a goodbye, isn't it? One way or another, the journey is at an end. I may have repaid my favor to you but...your friendship, I do not think I will ever repay. Ugh, I am actually crying. Whatever. Take care of yourself, whatever you decide.~
END

// romanced, Vienxay and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarPers","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarPers
END

CHAIN X3Vie25J X3VieSolarPers
~So this is it. Your choice. To stay, or to take your destiny. I cannot imagine the power that awaits...nor what it will be like to be apart.~
= ~Do you know what you will choose, my great love?~
END
+~Alignment("X3Vie",NEUTRAL)~+ ~I don't know what I should do.~ + FinalChoice.1A
+~!Alignment("X3Vie",NEUTRAL)~+ ~I don't know what I should do.~ + FinalChoice.1B
++ ~I can't imagine leaving you, Vienxay. I love you.~ + FinalChoice.2
++ ~I do want to go forth with my destiny.~ + FinalChoice.6

CHAIN X3Vie25J FinalChoice.1A 
~In the past I would have said to take the power before you. You taught me however, that there is more to life than books of power and trinkets of magic.~
= ~Your love has made me stronger. And without it...I would be lost. But...~
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.3
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.5

CHAIN X3Vie25J FinalChoice.1B
~You should ascend! Take the power that is here. It is what I would do, were I in your place.~
= ~Love has made us stronger. But do not let love take away this opportunity of a lifetime. But...~
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.5


CHAIN X3Vie25J FinalChoice.3
~You did want to marry me. If that meant something...then you should stay. We can make a life together. I know we would be happy, and...~
EXTERN X3Vie25J FinalChoice.5

CHAIN X3Vie25J FinalChoice.4
~I know you wished to marry me. I say that this is more important, far more important! This is what I would choose, if I were in your position. And...~
EXTERN X3Vie25J FinalChoice.5

CHAIN X3Vie25J FinalChoice.5
~No. I have spoken enough. I will never forget my experience with you, my love, whatever you choose.~
END
COPY_TRANS FINSOL01 27

CHAIN X3Vie25J FinalChoice.6
~I see. There is nothing for me to advice, if you are certain. Say as much to the Solar, and let it be done.~
END
COPY_TRANS FINSOL01 27

CHAIN X3Vie25J FinalChoice.2 
~Do you say that out of concern for me? I am strong. Strong because of you, <CHARNAME>.~
END 
IF ~PartyHasItem("X3RingE")Alignment("X3Vie",NEUTRAL)~ EXTERN X3Vie25J FinalChoice.3
IF ~PartyHasItem("X3RingE")!Alignment("X3Vie",NEUTRAL)~ EXTERN X3Vie25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.5




// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarLeave","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarLeave","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarLeave","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarLeave
END

CHAIN X3Vie25J X3VieSolarLeave
~You will make a wonderful god, <CHARNAME>. Goodbye, my love. Bring with you a storm into the realm of the gods.~
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarStay","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarStay
END

CHAIN X3Vie25J X3VieSolarStay
~You are staying? This is...ugh. These aren't tears. I am not crying! This is humiliating.~
END
++ ~Seeing your face makes this all worth it.~ EXTERN X3Vie25J X3VieSolarStay1.1
++ ~I love you too, Vienxay.~ EXTERN X3Vie25J X3VieSolarStay1.1
++ ~Well, I can't let you get rid of me that easily.~ EXTERN X3Vie25J X3VieSolarStay1.1

CHAIN X3Vie25J X3VieSolarStay1.1
~Ugh, you are intolerable! But I am happy. Gloriously happy!~
END
IF ~PartyHasItem("X3RingE")~ EXTERN X3Vie25J StayChoice.1
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J StayChoice.2


CHAIN X3Vie25J StayChoice.1 
~Hrmph, we have a wedding to plan. But I am not going to just stay at home after this. We have adventurers to be had yet.~
END 
COPY_TRANS FINSOL01 32

CHAIN X3Vie25J StayChoice.2
~Oh the places we can go on the realms now that this journey is over. We have adventurers to be had yet.~
END 
COPY_TRANS FINSOL01 32



//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25J engagement 
~According to these runes I see, it is activated by...the lover's word of yes? Just what is your intention, <CHARNAME>?~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~Yes. I am asking for your hand in marriage, if you will have me.~ + engagement_yes 
++ ~I have been wanting to ask for a while. Will you marry me, Vienxay?~ + engagement_yes 
++ ~Well, if you are having doubts...~ + engagement_doubts

CHAIN X3Vie25J engagement_yes 
~Let me stop you right now. In the future, you will do this again in the elven custom when I teach it to you. But for your immediate answer I...I will.~
EXTERN X3Vie25J engagement_yes2 

CHAIN X3Vie25J engagement_doubts
~Hrmph. I think I undestand. This is the human custom of expressing the desire of marriage, is it not?~
EXTERN X3Vie25J engagement_yes

CHAIN X3Vie25J engagement_yes2 
~Of course, you are not allowed to become lazy once we are married. But you have picked the best possible wife in the realm, and I will prove it to you everyday.~
DO ~TransformItem("X3ERING","X3RINGV")~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~In her own...arrogant way, that was kind of sweet. Congratulations.~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh, the bloody elf is getting married. Let's find some battle so my eyes can nay be blinded by disgust.~
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25J engagement_auto_fail 
~What is this? I can sense a magic in this ring. According to these runes I see, it is activated by...the lover's word of yes? What are you giving me?~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~Well, this is an engagement ring, but I just figured it would look nice on you.~ + eaf.1 
++ ~I want to marry you, Vienxay.~ + eaf.2
++ ~I was hoping you could unlock it's magic properties.~ + eaf.4

CHAIN X3Vie25J eaf.1 
~Please, no. I am not wearing some human marriage thing. It sounds scandalous enough as it is.~
EXTERN X3Vie25J eaf.3 

CHAIN X3Vie25J eaf.2 
~No. Never ask again. Never think of asking again. And never give me such a thing again!~
EXTERN X3Vie25J eaf.3

CHAIN X3Vie25J eaf.4 
~Hrmph. No, I sense that the answer must  be truthful. And I cannot give such an answer. So no.~
EXTERN X3Vie25J eaf.3

CHAIN X3Vie25J eaf.3
~Take it back, and out of my hands.~
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~I am sure the mutt however, would jump for joy if you gave it to her.~
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~I hardly know about halfling customs, but perhaps you could give it to Kale? A far, obviously better idea if you ask me.~
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~I hardly know about gnome customs, but perhaps you could give it to Recorder? A far, obviously better idea if you ask me.~
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

// Talk1 = I feel like Irenicus.
CHAIN IF ~Global("X3VieToBTalk","LOCALS",2)~ THEN X3Vie25J FriendshipTalk1 
~Suldanessellar was beautiful, wasn't it? Despite the destruction, it was the closest thing I have ever been in that was close to Evermeet.~
DO ~IncrementGlobal("X3VieToBTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~You seemed happy there.~ + F1.1
++ ~It was nice, but the road calls.~ + F1.2
++ ~Why don't you make it your home?~ + F1.2 

CHAIN X3Vie25J F1.1  
~I was happy there. I was finally around my own people. It was...relaxing. And yet...~
EXTERN X3Vie25J F1.3 

CHAIN X3Vie25J F1.2 
~With everything happening to the bhaalspawn, I suppose you couldn't stay.~
EXTERN X3Vie25J F1.3 

CHAIN X3Vie25J F1.3 
~I have been thinking about the mage you defeated Irenicus. He reminded me so much of myself. Both of exiles. Both of us mages. Both of us wanting revenge on those who we saw at fault.~
= ~And yet I do not understand why I did not follow the same path as he did.~
END 
++ ~Deep down you are a good person, Vienxay. Sometimes at least.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + F1.4 
++ ~Maybe it is because you met me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + F1.5
++ ~Irenicus's power was greater, and he was madder and less of an elf than you were. He lost who he was.~ + F1.6

CHAIN X3Vie25J F1.4 
~Perhaps. I do...regret what I have done. And unlike him, I still care for my people.~
= ~Further, I...do not think my punishment was unjust. It is hard. It is painful. It is miserable. But I cannot say it is unjust.~
EXTERN X3Vie25J F1.7

CHAIN X3Vie25J F1.5 
~You say that to compliment yourself but...oddly it has a point. Had I not met you, I am not sure where I would be right now.~
= ~Perhaps I would still be bemoaning about my situation at the Friendly Arm Inn, or trying and failing to find my mentor for revenge.~
EXTERN X3Vie25J F1.7

CHAIN X3Vie25J F1.6
~His power was unbelievable. I still cannot believe you defeated him. It perhaps speaks volumes of your power, and of mine.~
= ~I cannot imagine someone losing the essence of who they were, however. If that punishment was given to me, I fear I may have walked the same path as he.~
EXTERN X3Vie25J F1.7

CHAIN X3Vie25J F1.7
~But enough of my musing. We can talk more another time.~
EXIT 

// Friendship Talk #2

CHAIN IF ~Global("X3VieToBTalk","LOCALS",4)~ THEN X3Vie25J FriendshipTalk2
~It is odd to reflect one's growth to this very day, is it not? I can remember when I was a scared, weak elf not even sure how to live life outside of her homeland.~
DO ~IncrementGlobal("X3VieToBTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~We have grown a lot since our journey has begun.~ + F2.1
++ ~I don't know. I still feel like the same <PRO_GIRLBOY> that left candlekeep.~ + F2.1 
++ ~Let's talk another time, Vienxay.~ + F2.X 

CHAIN X3Vie25J F2.X 
~Hrmph. As you wish.~
EXIT 

CHAIN X3Vie25J F2.1
~I am practically an archmage now. My grasp of the weave is stronger than it ever was.~
= ~I think I owe most of that to you. Had I not traveled with you...I do not think I would ever fathom such power.~
= ~I would probably be in a jail with my luck. I was...not in a good place before I met you.~
END 
++ ~I'm glad to have been friends with you too, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + F2.2 
++ ~Admit it. You would be hopeless without me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + F2.3 
++ ~I owe you much as well. You've saved my life a time or two.~ + F2.4

CHAIN X3Vie25J F2.2 
~Friends. I will remember you fondly, I think, no matter what you decide about your future.~
= ~Just do try to make it to that future? I do want to see what this all leads to. It would be embarrasing if you fell to some hungry wolf on the road.~
EXIT 

CHAIN X3Vie25J F2.3 
~Hopeless? Why I could have managed on my own. But...I admit I would not half as well, I will give you that.~
EXTERN X3Vie25J F2.5

CHAIN X3Vie25J F2.5 
~Whatever this brings about, I am glad to have been your friend. You have taught me there are good things outside of Evermeet, and I will remember them fondly.~
EXIT 

CHAIN X3Vie25J F2.4 
~I have about as much as you. We are good companions, and I think I will miss our time together when it is time to go apart.~
EXTERN X3Vie25J F2.5 

// Friendship Talk #3

CHAIN IF ~Global("X3VieToBTalk","LOCALS",6)~ THEN X3Vie25J FriendshipTalk3 
~The weave has never felt so vigorous in my hands. I almost look forward to unleashing another spell, decimating whoever you point me at.~
DO ~IncrementGlobal("X3VieToBTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~You sound a little too excited.~ + FT.1
++ ~You have grown more powerful. But be mindful of the responsibility that comes with it.~ + FT.2 
++ ~I have enjoyed watching your spellcasting.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + FT.4

CHAIN X3Vie25J FT.1 
~Please, how can someone be too excited?~
EXTERN X3Vie25J FT.3

CHAIN X3Vie25J FT.2 
~Of course I have grown more powerful, but please.~
EXTERN X3Vie25J FT.3

CHAIN X3Vie25J FT.3 
~Are you seriously suggesting that I am irresponsible?~
END 
++ ~Not irresponsible. But what you can do is greater and more dangerous than before.~ + FT.7
++ ~Well, yes.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + FT.7
++ ~I am just saying to be careful.~ + FT.7

CHAIN X3Vie25J FT.7 
~Hrmph! Well stop fretting! I am in full control, I know what I am doing.~
= ~I suppose...your concern is touching, I will admit. Now, can we drop it?~
END 
++ ~As long as you understand. I don't want you to accidentally hurt yourself or anyone else.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + FT.8
++ ~It's not something to be "dropped", Vienxay. Keep in mind what I said.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + FT.10
++ ~All right, I'll drop it.~ + FT.9

CHAIN X3Vie25J FT.8
~And yet...for you and those I have traveled with, I would not mind a small amount of personal sacrifice to ensure we win the day.~
= ~Ugh, nevermind what I just said. You heard nothing. Let us be off!~
EXIT 

CHAIN X3Vie25J FT.9 
~Thank you. Let us be off, yes? We have things to accomplish.~
EXIT 

CHAIN X3Vie25J FT.10 
~Ugh. As you wish. Let us be off, please. We have things to accomplish.~
EXIT 

CHAIN X3Vie25J FT.4
~It hardly matters how challenging the art is. Enchantment, Illusion, Divination, all the spheres of magic swirl in my head.~
END 
++ ~Just don't get carried away, now.~ + FT.3 
++ ~Is that what makes you happy, knowing all of this magical power?~ + FT.5 
++ ~I think you're letting this get to your head a bit.~ + FT.3 

CHAIN X3Vie25J FT.5 
~Yes. I have told you before how I felt so powerless. Now...it is the precise opposite. I could crush anyone! Oh, so many lessons I could teach of those who have wronged me with ease.~
END 
++ ~Just don't get carried away, now.~ + FT.3 
++ ~And teach them all, Vienxay. No one deserves to test your patience.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + FT.6
++ ~I think you're letting this get to your head a bit.~ + FT.3 

CHAIN X3Vie25J FT.6 
~Your understanding is...quite kind. I almost expected different words from you.~
= ~But no matter, and have no fear. I won't let it to get to my head. For vengeance, but no further.~
EXIT 

//ToB Love Talks 

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",2)~ THEN X3Vie25J LoveTalk1 
~Suldanessellar was a nice reprieve while it lasted, wasn't it? I got to show you much of what elven culture was like.~
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~It was nice, though they seemed uneasy with me towards the end.~ + 1.1 
++ ~I don't know if it was for me, but I was glad I could help them.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.2 
++ ~You taught me a lot about their rituals and food and way of life.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.3 
++ ~We should talk later. Now isn't the time.~ + 1.X 

CHAIN X3Vie25J 1.X
~Hrmph. We can talk later, then.~
EXIT 

CHAIN X3Vie25J 1.1 
~You are still a bhaalspawn to them, and everything happening outside of the world has a chilling effect. But that does not mean they have quickly forgotten what you did for them.~
EXTERN X3Vie25J 1.4 

CHAIN X3Vie25J 1.2 
~So am I. Over the years we have lost many elven homes, many elven empires. I am glad my people do not have to add another to that list.~
EXTERN X3Vie25J 1.4 

CHAIN X3Vie25J 1.3 
~You still have a lot to learn. I only touched the surface. We especially need to teach you proper decorum. But that can wait.~
EXTERN X3Vie25J 1.4 

CHAIN X3Vie25J 1.4 
~There has been something plaguing my mind actually. I am...unsure if it is worthy of your attention.~
END 
++ ~You may as well tell me what it is.~ + 1.5 
++ ~Of course it is, love. What is bothering you?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.5 
++ ~From the sounds of it, it probably isn't.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 1.9

CHAIN X3Vie25J 1.5
~I have been thinking of Irenicus. Like me, he was an exile. Like me, a mage. Like me, vengeful. And yet I do not understand why his path ended as it did and not mine.~
END 
++ ~Well, you did not seek to become a goddess for starters.~ + 1.6
++ ~That isn't who you are, Vienxay. Of course you wouldn't be like him.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.7
++ ~Probably because I've done all I can to keep you alive and on the right course.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 1.8

CHAIN X3Vie25J 1.8
~What does that mean? That I am weak? I am *not* a burden.~
END 
++ ~That isn't what I mean. I mean that you have had people to advise you. People to assist you as much as you've helped them.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.12
++ ~We all have our moments where we are down. We can't always be perfect.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.11
++ ~Sometimes, you really are a burden.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 1.10

CHAIN X3Vie25J 1.9
~Yes, it isn't. Let us tarry on.~
EXIT 

CHAIN X3Vie25J 1.10
~What? You are infuriating me. Forget it! I should have never talked about this with you.~
EXIT 


CHAIN X3Vie25J 1.6
~No, I did not seek that. But I did seek power. I did seek to become stronger. I did seek revenge against my mentor. I could have easily gotten lost.~
END 
++ ~But you never did it at the harm of another, at least not intentionally. You are not a terrible person like he was.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.13
++ ~But I would have never let you get lost. I would be here, supporting you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 1.12
++ ~Come on, stop your pointless worrying. It's annoying.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 1.10

CHAIN X3Vie25J 1.7
~Then what am I, <CHARNAME>? I know I could have been like that. Quite easily. Despite the love and praise of my home even I have had the dark moment where malicious thoughts creeped in my mind about them.~
END 
++ ~But you have never acted on them. And I think that is a clear difference.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.13
++ ~But I would have never let you fall like that. I would always keep your head high, as it should be.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 1.12
++ ~Right now you are merely annoying me with your pointless worrying at the moment.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 1.10




CHAIN X3Vie25J 1.11 
~You are right, of course. I am ever thinking about being perfect, but I do not have to be. I suppose I am worrying for nothing.~
EXTERN X3Vie25J 1.14

CHAIN X3Vie25J 1.12 
~You are sweet. Almost sickeningly so. Why does it move me, I will never understand.~
EXTERN X3Vie25J 1.14

CHAIN X3Vie25J 1.13
~I did not think of that. I suppose being aware of such dangers and avoiding them is why I never took his road.~
EXTERN X3Vie25J 1.14 

CHAIN X3Vie25J 1.14 
~(She gives you a soft kiss, sweet, but far too short.)~
= X3Vie25J ~I owe you more of those for the pillar you are to me.~
END 
++ ~What can I say? I'm just great sometimes.~ + 1.15 
++ ~Well, what is stopping you? Deliver up.~ + 1.16 
++ ~It's nothing you wouldn't do for me, Vienxay.~ + 1.17

CHAIN X3Vie25J 1.15 
~Now you sound like me. But you are great, and so you can claim it. Just don't ever claim to be greater or I will have to remind you some night why I am truly the best.~
EXIT 

CHAIN X3Vie25J 1.16 
~Ha! Perhaps later, when we are snuggled up together. I'll deliver plenty to you then.~
EXIT 

CHAIN X3Vie25J 1.17
~I would tell you to toughen up. Fine, I suppose I would try to ease you just as well. Just don't tell everyone how soft I am, it will ruin my toughness.~
EXIT 

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",4)~ THEN X3Vie25J LoveTalk2 
~Ugh, is it time to rise already? I am so comfortable lying where I am.~
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)IncrementGlobal("X3VieAppChange","GLOBAL",7)~
END 
++ ~We can stay together a little longer.~ + 2.1 
++ ~I've no complaints of delaying for just a while.~ + 2.1
++ ~Yes. We should get moving.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.X 

CHAIN X3Vie25J 2.1 
~Thank goodness. It is tiring to fix the problems that humans cause.~
END 
++ ~I would say very little of what has occured to me the last few months are the fault of one race, let alone humans.~ + 2.2
++ ~Irenicus, I will remind you, was an elf.~ + 2.3
++ ~Exhausting, I reckon. Perhaps you would like a massage?~ + 2.4

CHAIN X3Vie25J 2.4 
~Yes, but...no. You will surely make it to lead to something else and I hardly want someone overhearing us and gossiping about it later.~
= ~Though the thought is sorely tempting but...no. *sigh* All the more reason for us to prepare. You are a terrible <PRO_MANWOMAN>.~
END 
++ ~You know you like it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 2.5
++ ~I resent that!~ + 2.5
++ ~Right, let's get moving then.~ EXIT 

CHAIN X3Vie25J 2.5 
~Yes, yes, whatever. Let us rise and continue on.~
= ~(She hesitates, then, tugs you to herself, giving you a long peck on your lips). Don't ask for another until we lay to rest again. I swear I spoil you too much.~
EXIT 

CHAIN X3Vie25J 2.3 
~Ugh, don't remind me.~
EXTERN X3Vie25J 2.2

CHAIN X3Vie25J 2.2
~I suppose we have a...mixed group of foes, then, I confess. I suppose...I pity them all the more, then. They have so many enemies, it's a wonder they survive.~
END 
++ ~They survive because of us Vienxay. I thank you for your part in that.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 2.6
++ ~Well, when you have lots of children, its not so difficult.~ + 2.7
++ ~Humans are far stronger than you give them credit.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.8

CHAIN X3Vie25J 2.6
~Flattery. I suppose you are due some sort of reward for that.~
= ~(She tugs you to herself, giving you a long peck on your lips). Don't ask for another until we lay to rest again. I swear I spoil you too much.~
= ~I suppose we should get moving. If we linger any longer I will make good use of my desire for you that requires more time than we are allowed.~
EXIT 

CHAIN X3Vie25J 2.7
~Ugh, probably like rabbits.~
EXTERN X3Vie25J 2.9

CHAIN X3Vie25J 2.8
~I will always disagree with that.~
EXTERN X3Vie25J 2.9

CHAIN X3Vie25J 2.9
~I suppose we have dallied long enough. One kiss, and then don't ask for another until we rest again. I spoil  you enough as it is.~
= ~(She tugs you to herself, giving you a long peck on your lips). Let us be off, before my desire outweighs the task at hand.~
EXIT 

CHAIN X3Vie25J 2.X 
~Hrmph. Very well, then. Let us rise to the day's needs.~
EXIT 

// Vienxay's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3VieRomanceActive","GLOBAL",2) InParty("X3Vie") See("X3Vie")~ EXTERN HGWRA01 X3VieWraith1
END

CHAIN HGWRA01 X3VieWraith1
~What of the inevitable pain you must give to the one you love? Your beloved shadowmage, Vienxay?~ [HGWRA108]
DO ~SetGlobal("X3LovedOne","GLOBAL",4)~
== X3Vie25J ~Please. <CHARNAME> has only done the opposite. You do not even know what you speak of!~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",4)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3VW1")~ EXIT
END

BEGIN X3VLOVE 

CHAIN 
IF ~Global("X3VieWraithSpirit1","GLOBAL",0)~ THEN X3VLOVE X3VieWraithSpirit1
~Vienxay? Ah. It has been a long time, my love, my Vie.~
DO ~SetGlobal("X3VieWraithSpirit1","GLOBAL",1)~
== X3Vie25J ~Leondolis? No, you are not real. I know well the art of illusions.~
== X3VLOVE ~But I am, Vienxay. Formed into a spectre from your own spell. Do you not know the extent of your spells consequences?~
== X3Vie25J ~What are you...No, I...regret what happened, but it only tore you apart. It was a horrible accident.~
== X3VLOVE ~I loved you. I would have married you. And then I saw you with Lacius. You laid with him!~
== X3Vie25J ~I know I...I did it for the chance of power. To seduce him. I regret it even to this day. To be back in Evermeet with you...I would give much for that...but I have accepted my fate, and found someone else.~
== X3VLOVE ~Accepted? So you have embraced the dark. I am ashamed of you Vienxay. You are with a spawn of murder!~
== X3Vie25J ~Do not ridicule me! I...I was young, and I have grown, and I know full well the extent of who I am with. I...I am sorry. I cannot say anything to undo what I have done. What do you want from me?!~
== X3VLOVE ~I want nothing from you! I loved you, Vienxay. And you *murdered* me for your precious power! Now my soul shall never find rest. Because of you!~
== X3Vie25J ~No! Stop this madness! Stop it, now!~ 
END 
++ ~Stop it! She told you it was an accident! Forgive her, please.~ EXTERN HGWRA01 25
++ ~Stop this, Gorion! Vienxay doesn't deserve this!~ EXTERN HGWRA01 25
++ ~Enough! I won't allow this to continue!~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~Don't believe anything you hear, Vienxay, this is a lie!~ EXTERN HGWRA01 25 

//Post Vienxay Wraith

CHAIN IF ~Global("X3VieWraithTalk","LOCALS",1)~ THEN X3Vie25J Wraith //(Shade)
~I cannot believe that I fell for that shade's tricks. I knew that was not Leondolis, but I let its words get to me.~
DO ~IncrementGlobal("X3VieWraithTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Are you okay?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + W.1 
++ ~It was perfectly understandable to doubt yourself.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + W.2 
++ ~It's over now. Don't let it keep bothering you.~ + W.3
++ ~We survived and it didn't. Let's move on.~  + W.X 

CHAIN X3Vie25J W.1
~Do I look okay? That was the man I had murdered, had loved! I felt I was being judged, that I was being shown to be a monster.~
END 
++ ~I have been with you this long. I think you are a remarkable person, Vienxay, don't let this bring you down.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.4 
++ ~Come on, it was just an apparition. Just forget about it. It wants you to feel this way.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + W.6
++ ~You're not perfect. You've made great mistakes. But you've risen from them, you've continued living. You've not let the past bother you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.5

CHAIN X3Vie25J W.2 
~I...only *slightly* doubted myself. The real concern was its words could be true...that I am just some horrible elf.~
END 
++ ~I have been with you this long. I think you are a remarkable person, Vienxay, don't let this bring you down.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.4 
++ ~Come on, it was just an apparition. Just forget about it. It wants you to feel this way.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + W.6
++ ~You're not perfect. You've made great mistakes. But you've risen from them, you've continued living. You've not let the past bother you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.5

CHAIN X3Vie25J W.3
~How can I? That was the man I had murdered, had loved! I felt I was being judged, that I was being shown to be a monster.~
END 
++ ~I have been with you this long. I think you are a remarkable person, Vienxay, don't let this bring you down.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.4 
++ ~Come on, it was just an apparition. Just forget about it. It wants you to feel this way.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + W.6
++ ~You're not perfect. You've made great mistakes. But you've risen from them, you've continued living. You've not let the past bother you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.5

CHAIN X3Vie25J W.4 
~Were it so easy to just forget what just happened.~
EXTERN X3Vie25J W.7

CHAIN X3Vie25J W.5
~Do you really think that I have? I've embraced some of my flaws. And now it is just infuriating to think about.~
EXTERN X3Vie25J W.7

CHAIN X3Vie25J W.6
~How can you be so dismissive? I don't understand.~
EXTERN X3Vie25J W.7

CHAIN X3Vie25J W.7
~Forget it, I don't know why it is bothering me. It was all fake. It's not real. It...it means nothing.~
END 
++ ~I don't know what to say. But let me hold you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + W.8
++ ~Exactly. It means nothing. Don't let it bother you.~ + W.8
++ ~You don't say that very convincingly.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + W.9

CHAIN X3Vie25J W.8
~(She stops to wrap her arms around you, shivering like she is in a freezing hail.)~
= ~Nevermind me. I will be fine. I just hope that I can see my father again in a form that isn't some...horrible shade.~
EXIT 

CHAIN X3Vie25J W.9
~Ugh, I was, I am! Sometimes you are so...nevermind!~
EXIT 

CHAIN X3Vie25J W.X 
~Yes...I'll just forgot about that damn creature.~
EXIT 

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",6)~ THEN X3Vie25J LoveTalk3 
~All of the dead bodies, the smoke and blood, it's like Suldanessellar all over again.~
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~

END 
++ ~It seems no matter where I go, death follows.~ + 3.1 
++ ~It is tragic, isn't it? I'm still trying to process it.~ + 3.2 
++ ~It's nothing we haven't seen before.~ + 3.3

CHAIN X3Vie25J 3.1
~It is certainly a sign of clashes between beings of great power.~
EXTERN X3Vie25J 3.3 

CHAIN X3Vie25J 3.2 
~It is hard to use the word tragic. After you have seen so much, it just seems like another number.~
EXTERN X3Vie25J 3.3 

CHAIN X3Vie25J 3.3 
~Does it bother you? That this will certainly not be the last bodies that will lay before you, and not necessarily from your hand.~
END 
++ ~Greatly. I wish there was a better way.~ + 3.4 
++ ~I think I've grown numb to it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.5
++ ~Whatever it takes to acheive my destiny. It does not matter the cost.~ + 3.6 

CHAIN X3Vie25J 3.6
~That sounds almost...disturbing. Many powerful figures we have faced before were that ruthless. Do not be so destructive you invite so much ire you cannot overcome.~
END 
++ ~I don't need your advice, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.7
++ ~You are right, of course. I don't know what I was thinking.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 3.8
++ ~And why not? I've handled everything so far.~ + 3.9

CHAIN X3Vie25J 3.7
~Hrmph. If you do not want my advice, then I won't give it. But if you do not heed the warning of others...well you have seen for yourself what hapepns to fools.~
EXIT 

CHAIN X3Vie25J 3.8
~I just do not want you to die and fail, <CHARNAME>. Your power should be reckoned and feared. Just do not be careless.~
EXIT 

CHAIN X3Vie25J 3.9
~You have, and that is a testament to your power. I just hope you do not ever push past your limits. We are still limited by the own limits of our bodies.~
EXIT 

CHAIN X3Vie25J 3.4
~There is no better way. This will continue until there is only one bhaalspawn. Consider it a mass filter of the weak. At the least, whatever will be left is what is worthy to live.~
END 
++ ~That is a terrible way to look at things, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 3.10 
++ ~Then we must end this quickly.~ + 3.11 
++ ~I suppose it is for the best, then.~ + 3.12 

CHAIN X3Vie25J 3.10 
~You may not like it, but it is the truth you saw around you back at Saradush. But if it bothers you, I will speak of it no more.~
EXIT 

CHAIN X3Vie25J 3.11 
~If that is your wish. I do feel things are at least getting closer to some form of conclusion. But there will be more death, one way or another.~
EXIT 

CHAIN X3Vie25J 3.12 
~In a way. The world will recover. It always has. I just want you to be the one still standing.~
EXIT 

CHAIN X3Vie25J 3.5
~That is for the best. You will need to be resistant to this. Only more will come.~
END 
++ ~It doesn't bother you either?~ + 3.13 
++ ~I will be ready for it.~ + 3.14 
++ ~I pity them. Most of them were not a part of this Bhaalspawn Conflict.~ + 3.15

CHAIN X3Vie25J 3.13 
~There are some nights it does. All that death. But you are there with me, and so I can sleep soundly. We will survive to the end, I know it.~
EXIT 

CHAIN X3Vie25J 3.14 
~Good. I know you will achieve your destiny, <CHARNAME>, whatever it will be. And I will be standing there to reckon it.~
EXIT 

CHAIN X3Vie25J 3.15 
~So often do the uninvolved die in other's conflicts. It is just a fact of the world. Accept it and move on. It is all that can be done.~
EXIT 


//LoveTalk4
CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",8)~ THEN X3Vie25J LoveTalk4 
~I have been thinking about our encounter with the sage over and over.~
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
IF ~!Global("X3VEvermeetEnd","GLOBAL",1)~ EXTERN X3Vie25J 4.NoEvermeet
IF ~Global("X3VEvermeetEnd","GLOBAL",1)~ EXTERN X3Vie25J 4.Evermeet 

CHAIN X3Vie25J 4.NoEvermeet
~I will never be able to go home. And my family may never visit in fear of being shamed. I have known this for a long time. Only now have I finally accepted it.~
= ~It just makes what I will do when this over a difficult decision. I suppose it all comes down to what you decide, <CHARNAME>.~
END 
++ ~I can't promise anything, Vienxay. You should still make your own plans, just in case.~ + 4.N1 
++ ~I want the power of my father, Vienxay. I want to ascend.~ + 4.N1  
++ ~No matter what Vienxay, I think I want to stay with you.~ + 4.N2

CHAIN X3Vie25J 4.N1 
~I think if you truly...go to where I cannot follow, I would return to Suldanessellar. It was the closet I could find to home again, and I think they would take me for what I did for them.~
EXTERN X3Vie25J 4.N2 

CHAIN X3Vie25J 4.N2 
~To be honest I do not know if I lean one way or another with your destiny. To witness and fight alongside a bhaalspawn who ascends is its own greatness, and long have I advocated for you to always seek greater power.~
= ~But I will also selfishly, in some small way, want you to stay. Our time together has been precious, and you would dreadfully miss my beauty, I imagine.~
END 
++ ~That I would. And far more then that.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.N3 
++ ~I don't know. Sometimes you can be a bit much.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.N4 
++ ~This isn't the deciding time, yet. When it comes, we can talk about it more then.~ + 4.N5

CHAIN X3Vie25J 4.N3 
~But enough of that. I have you for now, and I will make sure that every night we can squeeze in is full of delightful memories for you.~
EXIT 

CHAIN X3Vie25J 4.N4 
~You better be teasing me. May I remind you I have the power of an archmage? I may just decide to turn you into a squirrel one of these days to teach you a lesson.~
EXIT 

CHAIN X3Vie25J 4.N5 
~I suppose so.~
EXTERN X3Vie25J 4.N3 

CHAIN X3Vie25J 4.Evermeet 
~I can finally go home. I can see my people. All of the misery I have felt for so long is off of my shoulders. I feel free.~
END 
IF ~!Race(Player1,Elf)~ EXTERN X3Vie25J 4.NoElf
IF ~Race(Player1,Elf)~ EXTERN X3Vie25J 4.Elf 

CHAIN X3Vie25J 4.NoElf 
~It is a shame you could not join me when I go. I would have loved to show you the forests and the magic of our cities, our temples and our delightful revels.~
END 
++ ~Ah, but you can tell me all about it when you return.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.NE1
++ ~Even if I could, I do not even know if I would be here. We don't know how this will all end.~ + 4.N2
++ ~I've never seen you this joyous. I'm happy for you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.NE3

CHAIN X3Vie25J 4.NE1 
~You can bet on that. But I suppose...there is your destiny, the decisions you have to make. We could very well be permamently seperated.~
EXTERN X3Vie25J 4.N2 

CHAIN X3Vie25J 4.NE3 
~Oh you have no idea, <CHARNAME>. There is truly no word to describe this. I just wish there wasn't your impending destiny to make things...difficult.~
EXTERN X3Vie25J 4.N2 

CHAIN X3Vie25J 4.Elf 
~I would be glad to show you the island. The beautiful forests, the magic of our cities, our lavish temples, and of course, you would have to partake in our festivals and revels with me.~
END 
++ ~It sounds like the perfect experience. I'd be glad to go with you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.E1
++ ~I am not sure if I could, Vienxay. We don't know how this will all end.~ + 4.N2
++ ~I've never seen you this joyous. I'm happy for you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.NE3

CHAIN X3Vie25J 4.E1 
~I would have to introduce you to my family, of course. My sisters will be happy for me, and I imagine, quite jealous. Fitting that the oldest finds the best partner for herself. But it may not come to pass, with...your destiny.~
EXTERN X3Vie25J 4.N2 

// Romance Talk #5

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",10)~ THEN X3Vie25J LoveTalk5
~There are so many fools out there, <CHARNAME>. Fools that could use a guide just like I needed.~
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Wait, what?~ + 5.1
++ ~Not everyone is fortunate, no.~ + 5.2 
++ ~This isn't the time for chatter, Vienxay.~ + 5.X 

CHAIN X3Vie25J 5.2 
~Not everyone is, no. But that can be changed.~
EXTERN X3Vie25J 5.1

CHAIN X3Vie25J 5.1 
~I think I would like an apprentice someday. Many apprentices, perhaps. I know so much, and I know how you can give someone a bright future or take it all away.~
= ~I have been thinking of how all of this began...and I want someone else's beginning to be different.~
END 
++ ~You seem to have really thought about this.~ + 5.3 
++ ~I've never thought of you as the mentoring teacher type.~ + 5.4
++ ~I'm not sure if you'd make a good instructor.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.4

CHAIN X3Vie25J 5.3 
~Of course I have. I do want something at the end of all of this. Something meaningful. And mentoring seems a suitable choice.~
END 
++ ~I would like to see that. No matter how this ends.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.5
++ ~I can't promise I will be there next to you to see that.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.6 
++ ~I think you would make a great mentor, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 5.7

CHAIN X3Vie25J 5.4 
~Please, how hard can it be? I have already mastered and learned everything that you shouldn't do from my own mentors and fellow apprentices.~
END 
++ ~For you? Quite difficult.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.8
++ ~Ah, I only tease. I think you would be a natural at this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 5.7 
++ ~Whatever you decide, I'd like to see what you become.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.5

CHAIN X3Vie25J 5.8 
~Hrmph. Well, I *will* show you someday, love. And then you will owe me, and I will delightfully collect it.~
END 
++ ~Sure, sure. We'll see.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.5
++ ~A bet I look forward to losing and giving you your reward.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.9
++ ~Ah, I only tease. I think you would be a natural at this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.7 

CHAIN X3Vie25J 5.6 
~I know you can't, and I do hate that. But I will wait patiently...and make the decision for you as hard as possible along the way.~
END 
++ ~We will see, then.~ + 5.5
++ ~Ah, sounds like I will look forward to your seductive antics.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.9
++ ~No matter what happens, I'd like to see what you become.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.5

CHAIN X3Vie25J 5.9
~What? The way you say that is...Ugh! I will be punishing you later for that mind. But your enemies call, and someone must take care of them first.~
EXIT 

CHAIN X3Vie25J 5.7
~You think? I know I will, my love. And I look forward to my first, whenever that day comes.~
EXIT 

CHAIN X3Vie25J 5.5 
~Quite. But enough chatter. We can talk more of this later, when your remaining enemies are taken care of.~
EXIT 

CHAIN X3Vie25J 5.X 
~Sometimes, you are no fun, <CHARNAME>.~
EXIT 

// Post Sendai 
CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",12)~ THEN X3Vie25J LoveTalk6
~We are ever closer to your destiny, <CHARNAME>, and after toppling a drow bhaalspawn none the less. Well done.~
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)~
END 
++ ~We can't congratulate ourselves yet. It will only get tougher from here.~ + 6.1 
++ ~You seem unusually enthused about this victory.~ + 6.2
++ ~Now isn't the time to sit on our laurels. Let's keep moving.~ + 6.X 

CHAIN X3Vie25J 6.X 
~Not even a moment to celebrate? Fine.~
EXIT 

CHAIN X3Vie25J 6.1 
~Please. We should enjoy ourselves every now and then.~
EXTERN X3Vie25J 6.3 

CHAIN X3Vie25J 6.2 
~Of course I am. A giant fallen, a drow. Nothing, *Nothing* will stop us.~
EXTERN X3Vie25J 6.3 

CHAIN X3Vie25J 6.3 
~(She tugs you to her, kissing you almost roughly.)~
= ~We can celebrate properly when we find time to rest. But for now, lead us to where you desire.~
EXIT 

// Finale, after the last test in the pocket plane.
CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",14)~ THEN X3Vie25J FinalLoveTalk 
~We are at the cusp then. Very shortly we will likely face the final battle before your choice.~
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Aye. Finally.~ + 7.1 
++ ~Are you ready for this?~ + 7.2  
++ ~And there is no reason to delay.~ + 7.3 

CHAIN X3Vie25J 7.1 
~There is something that I have been overdue to say to you, <CHARNAME>, before we go. I am not sure why I have never said it.~
EXTERN X3Vie25J 7.4

CHAIN X3Vie25J 7.2 
~I am almost. There is something that I must say to you. Something that I have realized I have never spoken to you.~
EXTERN X3Vie25J 7.4

CHAIN X3Vie25J 7.3 
~There is...one. There is something that I must say to you, before I never get the chance. Something that I have realized I have never spoken to you.~
EXTERN X3Vie25J 7.4

CHAIN X3Vie25J 7.4
~I love you, <CHARNAME>. I have perhaps shown it, and acted on it, but I have never said the word. Perhaps it was myself still believing that love was a sort of weakness.~
= ~Yet never before have I felt so strong, so in belief that we can accomplish anything together. And so I want to show you that I no longer believe that. I love you. I dearly do.~
END 
++ ~I know this, Vienxay. You didn't have to say it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 7.5 
++ ~And I love you too.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",5)~ + 7.6
++ ~Er, that's it? I thought it would be something else.~  + 7.7

CHAIN X3Vie25J 7.5 
~I did. Perhaps for myself, as selfish as it was. I shouldn't have gone so long without uttering these words.~
EXTERN X3Vie25J 7.5

CHAIN X3Vie25J 7.6 
~Let us go before I grow selfish and ask to prolong this moment. I do not know what awaits us, or you. But I am ready to face it.~
EXIT 

CHAIN X3Vie25J 7.7
~Sometimes simple words are the biggest magic, my love.~
EXTERN X3Vie25J 7.6

// Group Kiss from PID 
CHAIN X3Vie25J Group.Kiss 
~And do you really enjoy having an audience?~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'll just...not look.~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Don't we have battles to get to?~
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What? I'm not staring at all.~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Well...love is love.~
== X3Vie25J ~Whatever. Get over here.~
== X3Vie25J ~Mmm. Now that was deserved delight.~
EXIT

APPEND X3Vie25J

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~Well. I am not going to make this flowery or step softly, so I am going to be quite blunt with you, <CHARNAME>.~
= ~I was desired by many in Evermeet. Lately, despite us being together, you have treated me horribly. I have better standards, and you have utterly failed them.~
= ~So you and I are no longer a we. I am through with you.~
++ ~Vienxay, I'm sorry. Forgive me.~ + LBreak.1
++ ~It's just a bad time for me to be close with anyone. Maybe this is for the best.~ + LBreak.2 
++ ~As you often say, "Whatever".~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~It is far, far, too late for that.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~You could have figured that out before you got yourself close to me.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~Ugh!~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~Well, I'll be leaving then. No reason to stay around after a proclamation like this.~
++ ~Agreed. Leave, please.~ + LBreak.5 
++ ~Leave. And give me your equipment.~ + LBreak.6 
++ ~I still need you, Vienxay, and want your company, even if it's just as friends.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~Hrmph. Goodbye... and goodluck.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~Whatever. Have it. I'm out of here.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~I...I will stay. For you. I...suppose I admit I still care. I will try to see this to the end.~
IF ~~ EXIT 
END 

// Approval Break Point 
IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~I'm done here. Be fools if you wish but you do so without me.~  [VieBreak]
= ~I have seen you blunder about long enough. And you have little regard for me, and I? Even far less for you.~
++ ~Blundering about, Vienxay? I saved you. Remember that.~ + Break.1 
++ ~What did I even do wrong?~ + Break.2 
++ ~If I did something to hurt you, I apologize.~ + Break.8
END 

IF ~~ Break.1
SAY ~And I think I have more than repaid you by now. Debts do not make me your slave.~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~If you even have to ask now, then you are sorely in need of clerical help. Help that I will not wait around to see it's progress of.~ 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY ~Please. You are apologizing now? Now?!~
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY ~It is time for us to seperate our paths.~
++ ~Then get out of my sight.~ + Break.4
++ ~Go ahead. But your equipment? That's mine.~ + Break.5
++ ~Vienxay, please. Just give me one more chance to make this up to you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~Gladly! Hrmph.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~What?! Fine. But watch your pockets if we cross again. I will not forget this.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~Ugh, begging makes you so weak. *Sigh*. Fine. But only one. Don't ruin it.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3VieApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@516)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~I can stomach this no longer! You have had your chance and it is far wasted!~
= ~I'm done here. Done, done, done! And there is nothing more to be said on it. Goodbye!~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelQuestCutScene","GLOBAL",1)~ ScryFinish 
SAY ~It is done. You will not like what I have to say.~ [] // Use the It is done soundset 
++ ~Just tell me, Vienxay.~ + ScryDead 
++ ~Oh no. Is he dead?~ + ScryDead 
++ ~Go on.~ + ScryDead 
END 

IF ~~ ScryDead 
SAY ~I am afraid so. Dead under a rubble of the tower. With the number of bolts I saw in him, he went down fighting hard.~
= ~Now you could tell the dwarf this, break her heart, and have her moping for the rest of our adventure for all I care.~
= ~Or for making her at least continue to be marginally useful, you could lie to her and say I saw him alive. I'm sure you can see the benefits. It is your choice.~
++ ~I am not going to lie to her. Why would you even suggest it?~ + ScryDead.1
++ ~Perhaps you have a point.~ + ScryDead.2
++ ~I will have to think about what to say before I talk to her.~ + ScryDead.2
END 

IF ~~ ScryDead.1 
SAY ~Because even if I loath the dwarf, she has protected me here and there, and I do return favors. This will hurt her, <CHARNAME>. Sometimes the truth is not the weapon of choice.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.2 
SAY ~Of course I do. You know me well enough I hope that I always speak with wisdom.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.3 
SAY ~It is your choice in the end. Just consider my words carefully.~
IF ~~ DO ~SetGlobal("X3HelToBQuest","GLOBAL",4)AddJournalEntry(@19,QUEST)~ EXIT 
END 
// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])!GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  ~Yes?~ [VienCom1]
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@15,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@15)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@15)~ + ScryStartPlane
++ ~Let me ask you a question.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to ask something private.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to ask something private.~ + PersonalAlone.PID 
++ ~Not now. Maybe later.~ EXIT 
END 


IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  ~Your desire?~ [VienCom3]
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@15,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@15)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@15)~ + ScryStartPlane
++ ~Let me ask you a question.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to ask something private.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to ask something private.~ + PersonalAlone.PID 
++ ~Not now. Maybe later.~ EXIT 
END 

IF ~~ Scry 
SAY ~I don't care much for the dwarf but...I suppose I could help. I will require a few things of course.~
= ~I need a scrying crystal. They are a little purple gem, perfect for this sort of thing. I will also need a place full of energy to manipulate.~
= ~That particular place I believe would be your little planar home. Since I am so talented, that is all there is to it, for you.~
+~PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ + ScryStartNotPlane 
+~PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ DO ~EraseJournalEntry(@15)TakePartyItem("X3HGEM")~ + ScryStartPlane 
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.1
SAY ~Yes, yes. But if that dwarf gets to be in a pain in the neck, do drive home the point how *kind* I have been in this moment.~
IF ~~ EXIT 
END 

IF ~~ Scry.2 
SAY ~I would check with the merchants as we travel. Someone who specialized in jewelry might carry something special like that.~
++ ~Where could I find a scrying crystal?~ + Scry.2 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.3 
SAY ~It is not necessary for scrying, but it is necessary for how I will approach it. This plane has just the energy I need to make sure I don't have some terrible mishap happen instead. I don't want to risk that much for the dwarf. I barely want to help her at all.~
= ~There are other ways that use some aspect or item that belonged to the individual, but I am not knowledge of that method, and so it must be this way.~
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
END 

IF ~~ ScryStartNotPlane 
SAY ~Great. But obviously, we are not in your pocket plane. Ask me when we are there.~
IF ~~ EXIT 
END 

IF ~~ ScryStartPlane 
SAY ~*Sigh*. Let us get this over with.~
IF ~~ DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Vcut02")~ EXIT 
END 

IF ~~ main.PID 
SAY  ~You'll prod anyway one way or another.~ 
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Ask away.~
+~PartyHasItem("X3ERing")Global("X3VieRomanceActive","GLOBAL",2)~+ ~Vienxay, I bought this ring for you. I want you to be my wife, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home, Evermeet?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)!Global("X3VieEvermeet","GLOBAL",1)~+ ~Can you tell me more about your family?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about the details of your exile.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ ~Can you tell me more about your mentor?~ DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ ~Do you often get in trouble with the law?~ DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~I can't stop you, so ask.~ 
+~PartyHasItem("X3ERing")Global("X3VieRomanceActive","GLOBAL",2)~+ ~Vienxay, I bought this ring for you. I want you to be my wife, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home, Evermeet?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)!Global("X3VieEvermeet","GLOBAL",1)~+ ~Can you tell me more about your family?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about the details of your exile.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ ~Can you tell me more about your mentor?~ DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ ~Do you often get in trouble with the law?~ DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ ~Let's talk about something else.~ + main.PID
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Evermeet 
SAY ~I suppose I cannot blame you for being hungry to know about my great home. There is nothing like it in the realms.~ 
= ~My homeland is an island far to the west, with nature untainted as it should be. We build around it, or with it for our homes, allowing the forests to remain splendrous with their trees and lakes. Buildings would rise into the sky, and the walk ways would wrap around trees and nests, leaving them undisturbed~
= ~Only elves could call this place home. No other were allowed to set foot there, and we maintained this with both force and magic. This kept our people safe, who were never poor nor never starving. All were taken care of and loved.~
++ ~Did anyone ever force their way?~ + PEvermeet.1 
++ ~No execeptions?~ + PEvermeet.2 
++ ~It sounds so different from the rest of the world.~ + PEvermeet.3
++ ~Let's talk about something else.~ + MoreQuestion.PID 
END 

IF ~~ PEvermeet.1 
SAY ~Some have tried. Pirates, Drow, orcs. All have failed. Not a single one of them stepped on the foot of our soil. Evermeet's navy is second to none.~
++ ~Were there no visiting exceptions?~ + PEvermeet.2 
++ ~It sounds so different from the rest of the world.~ + PEvermeet.3
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PEvermeet.2 
SAY ~None. So many of our empires to the east of Evermeet had fallen when trust was given to outsiders. Our people needed a sanctuary unsoiled. And this lesson has proven to work well under Queen Moonflower's guidance.~
++ ~Let's talk about something else.~ + main.PID
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PEvermeet.3 
SAY ~Perhaps in that some other cities have walls and are distrusting of outsiders? I have seen none do so to the success and extent of my people, while also respecting the world it lives in. But you are entitled to your misbeliefs.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Family 
SAY ~My father held the responsibility as the Treasurer of Evermeet, giving financial advice to both the Queen and her council. He was brilliant with money, but less with people. My mother thus was often beside him as she was better at the talking.~
= ~I have two younger sisters, the youngest a bit naive and airy, but sweet and good. And the other often finding trouble, but always managing to get out of it.~
= ~I miss them terribly. I have not heard from them since I was exiled.~
++ ~Have you not tried to contact them?~ + PFamily.1 
++ ~Perhaps they are ashamed of you.~ + PFamily.2 
++ ~That must be difficult.~ + PFamily.3
END 

IF ~~ PFamily.1 
SAY ~Why would I? I put them through public shame. I do not even know if my father is still entrusted with the job he had. Everytime I want to, that I begin to scrawl something...I tear it up.~
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY ~My sisters, no. They believe I am innocent. My father and mother, yes. They know the truth.~
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY ~It is, but it is part of the punishment. Often more suffer than just ourselves when we commit a crime. At least when I get in trouble with the law in these human lands, it is just myself that suffers.~
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.4 
SAY ~One day I will reach out to them. One day.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Exile 
SAY ~There is little to tell. I was involved with a Sharran, my mentor, and her methods of magic. I did not know this at first, she was mostly teaching me shadow magic, which I had an innate gift for.~
= ~I learned gradually that she was using our own people as experiments, and killing them. I planned to betray her with this knowledge, but while I was getting some..."stress relief" with an elf, my lover at the time barged in on us and I felt frightened.~
= ~I used one of the spells she taught me with no idea it was of Shar's weave and killed him on accident. His death, and later all of the others my mentor had caused, were pinned on me.~
= ~I have never used Shar's weave since.~
++ ~I am suprised they didn't execute you.~ + PExile.1 
++ ~Is there no way to appeal your sentence?~ + PExile.2 
++ ~How can you unknowingly use Shar's weave?~ + PExile.3
END 

IF ~~ PExile.1 
SAY ~As am I. Perhaps it was my father's high standing in society, or perhaps our people's reluctance to kill one another. But to live is the greater shame.~
= ~The public watched me get bound, watched my forehead get marked, watched me get thrust into a ship, and sent to this land with only my clothes and a bit of gold.~
++ ~Is there no way to appeal your sentence?~ + PExile.2 
++ ~How can you unknowingly use Shar's weave?~ + PExile.3
++ ~Let's talk about something else.~ + main.PID
END 

IF ~~ PExile.2 
SAY ~None that I know of.~
++ ~How can you unknowingly use Shar's weave?~ + PExile.3
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PExile.3 
SAY ~Using the Shadow Weave does not require devotion to Shar. But there is a cost of the self. Had I kept attempting to use the weave without devoting myself to her, I would have likely lost my sanity and my connection to Mystra's weave.~
= ~I had believed the magic was merely an extension of Shadow Magic. And when so little is known of the Shadow Weave, tricking is not too difficult for those who are hungry for knowledge.~
= ~My lesson is well learned, and I will never do it again. Not even if you begged me.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Mentor 
SAY ~I know little but that she was not born in Evermeet and believed that the trustingness of other elves would allow her to get away with the experiments she needed.~
= ~She was also a skilled Shadowdancer. Even if my people had known most of the murders done were her fault and not mine...she could have easily escaped if she so chose.~
= ~After seeking revenge for so long against her, I must admit it makes me feel...purposeless.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Law 
SAY ~Hrmph. Human civilizations have very strange laws and customs both. Whine or pay a guard enough and you can get anyone in trouble for anything you like.~
= ~The guards however, do enjoy bothering me more than most. I have yet to figure out why.~
++ ~Perhaps it is your hostility towards them.~ + PLaw.1 
++ ~Really? You can't even imagine in the slightest?~ + PLaw.2 
++ ~You're still probably adjusting to life away from Evermeet.~ + PLaw.3
END 

IF ~~ PLaw.1 
SAY ~Or it is their corruption and inability to be proper protectors of the people. I think that is a far more likely reason.~
IF ~~ + PLaw.3 
END 

IF ~~ PLaw.2 
SAY ~Well, clearly it is their corruption and inability to be proper protectors of the people. If they were anything like the guards in Evermeet I would not have this problem.~
IF ~~ + PLaw.3
END  

IF ~~ PLaw.3 
SAY ~Perhaps I am just still learning the ways of the people here. But do know I am a Shadowdancer. In time I can find a way out of anywhere, and then they would know who is truly in control.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 


IF ~~ PersonalGroup.PID 
SAY ~Well we don't have privacy. But you can ask.~
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest in a safe place.~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest in a safe place.~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I think we should end our relationship.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~Well we don't have privacy. But you can ask.~
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest in a safe place.~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest in a safe place.~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I think we should end this.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~Hrmph. If you really want to, I guess.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~Are there nights you are not planning to spend near me? I'll be expecting your presence.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmm. When we get a chance to rest, I will be giving you more of those in different places.~
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY ~I asusme you mean...our relationship.~
= ~Then it is done. Think nothing more of it, then! I won't...not at all.~
IF ~~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@509)~ EXIT 
END 

END 