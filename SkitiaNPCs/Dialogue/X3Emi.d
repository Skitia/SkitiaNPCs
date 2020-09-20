/* Note: START.d iniiates the Five's NPC dialogues, but no one elses. */


BEGIN X3ECath 

//This very specific version of Emily's Post Party, presumably being removed for Imoen.
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",0)AreaCheck("AR1512")InParty("IMOEN2")~ THEN X3EmiP ImoenDepart
~I'm glad you and Imoen are together again. I'll be fine, don't worry. Somehow! Hopefully.~
END 
++ ~Take care of yourself, Emily.~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",531,622,SW)~ EXIT 
++ ~Actually, stay with me. I don't want you to go.~ DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3EmiVampire","GLOBAL",2)~ THEN X3EmiP VampireSave 
~You...saved me. Glorious! I'd hug you if I wasn't bleeding all over the place.~ [X3Blank]
DO ~TakePartyItem("X3EBody")DestroyItem("X3EBody")~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ ~She's okay!~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ ~The lass needs healing, and soon.~
DO ~SetGlobal("X3EmiVampire","GLOBAL",3)~
END 
++ ~I'll get you some healing right away.~ + VS.6 
++ ~I'm so glad you are all right.~ + VS.1
++ ~(Embrace her.)~ + VS.2

CHAIN X3EmiP VS.1 
~I guess my blood made it difficult for her to turn me. I've never heard of angels becoming vampires, for that matter...but I'm glad. If I had to hurt you, I would have lost it.~
= ~So...one more then, right? Just one more and we're all there.~
END 
++ ~And then we have all the time together.~ + VS.7
++ ~Just one more.~ + VS.4 
++ ~Can you stand? We should get moving.~ + VS.3

CHAIN X3EmiP VS.7
~Yes. Probably doing more of the same, knowing us, hmm?~
EXTERN X3EmiP VS.3

CHAIN X3EmiP VS.3 
~I can stand, I think. Next to you, I can always stand. Well, after a potion or curative spell. Then, Emily and <CHARNAME> are back in business!~
END 
IF ~~ DO ~JoinParty()SetGlobal("X3EmiKickedOut","LOCALS",0)~ SOLVED_JOURNAL @32
EXIT 

CHAIN X3EmiP VS.4 
~Good. Because your adventures are getting more and more dangerous. But the people we take down make it all worth it.~
EXTERN X3EmiP VS.3

CHAIN X3EmiP VS.2 
~Ow! Maybe some healing first? I'm in a lot of pain.~
EXTERN X3EmiP VS.1 



CHAIN X3EmiP VS.6 
~That would definitely be appreciated.~
EXTERN X3EmiP VS.1

CHAIN IF ~Global("X3EmiMet","GLOBAL",0)~ THEN X3Emi meeta
~Oh, hello there! Hrm, I don't know about this, but you seem slightly familiar.~ [X3Blank]
EXTERN X3ECath meetb
 
CHAIN IF ~Global("X3EmiMet","GLOBAL",0)~ THEN X3ECath meetb
~Did you want something? We are having a personal conversation. Leave us be, if you would be so polite.~ 
DO ~SetGlobal("X3EmiMet","GLOBAL",1)~
EXTERN X3Emi meetc

CHAIN X3Emi meetc
~Catherine, wait! That is them! They were there at the commotion! In person! I have *so* many questions for you.~
END 
	++ ~Is that you Emily? It's been some time.~ DO ~SetGlobal("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m1
	++ ~Who are you?~ EXTERN X3Emi m2
	++ ~And I have *so* much to do. No time for chatting.~ EXTERN X3ECath m0 
	
CHAIN X3Emi m1
~<CHARNAME>! I can't believe I didn't recognize you. There is just so much going on. We have to catch up sometime. Preferably now. Now would be great, even!~
END
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ m1.1 
IF ~IsValidForPartyDialogue("X3Kale")Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2a 
IF ~IsValidForPartyDialogue("X3Kale")!Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2b
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Kale")!IsValidForPartyDialogue("X3Reb")~ EXTERN X3Emi m3 

CHAIN X3VieJ m1.1 
~It is *much* preferable that we do not engage in idle "catch-up" with this mutt.~ 
== X3Emi IF ~Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Wow. You're just pleasant as always, Vienxay.~
== X3Emi IF ~!Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Mutt? I don't see any dogs here. Ooh, I would like a dog, though.~
END
IF ~IsValidForPartyDialogue("X3Kale")Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2a 
IF ~IsValidForPartyDialogue("X3Kale")!Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2b
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Kale")~ EXTERN X3Emi m3 

CHAIN X3KalJ m1.2a 
~Well now. Emily seems a bit different now, with that pretty company of hers.~ 
EXTERN X3ECath m1.25 

CHAIN X3KalJ m1.2b
~I don't know much about this over eager lady, but her friend? I could talk to her for a while...~ 
EXTERN X3ECath m1.25 

CHAIN X3ECath m1.25
~Ew. Why is the halfling looking at me like that?~
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3Emi m3 

CHAIN X3RebJ m1.3a 
~We've barely had time away from eachother, Emily. I think we're mostly caught up.~
EXTERN X3Emi m1.3c 

CHAIN X3RebJ m1.3b 
~I recognize you, Emily. It's good to see you again.~
EXTERN X3Emi m1.3c 

CHAIN X3Emi m1.3c 
~Recorder? I didn't think you'd be away from your work so fast. Not that I mind. I am happy to see you!~
EXTERN X3Emi m3

CHAIN X3Emi m2 
~I am Emily, from House Castilla all the way in Tethyr. I’ve been trying to get an understanding of that commotion in the promenade, and here you are, an eye-witness.~
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3Emi m3 

CHAIN X3Emi m3
~So, what was going on at the promenade earlier? It had everyone in a frenzy.~
END 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Imoen and a dangerous mage named Inrenicus were taken by the Cowled Wizards. I need to rescue her.~ + m4a 
+~!Global("X3EmiPartyBG1","GLOBAL",1)~+ ~My companion, Imoen and a dangerous mage named Inrenicus were taken by the Cowled Wizards. I need to rescue her.~ + m4b 
++ ~I escaped the capture of a wizard named Irenicus. That same wizard caused your chaos in the Promenade.~ + m5 
++ ~It was done by Irenicus, who took much from me and the city. But I will have my revenge.~ +m6

CHAIN X3ECath m0
~See, <PRO_HESHE> has no time, Emily. Nor do you. Thomas, remember? Focus.~ 
== X3Emi ~Okay, Catherine. I got it. No engaging in idle gossip, only dreadful family affairs. Farewell to you then.~
EXIT  

CHAIN X3Emi m4a 
~Imoen?! Oh gods, the poor girl. I am so sorry I was not closer to help. I would have just become dust against that mage from the little I have heard so far.~
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b 

CHAIN X3Emi m4b 
~A friend I assume? By the gods, I am so sorry this happened to you. but from the little I have heard I would have just become dust if Itried to help.~
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b

CHAIN X3Emi m5 
~You were captured? By the same mage that took down much of the Promenade. Quite terrifying.~
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b

CHAIN X3Emi m6 
~I admire your courage wanting to find him. I can't imagine he'll be easy to find.~
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b

CHAIN X3ECath m7a 
~*Hem hem!* Just by looking at your eyes Emily. I can already see what you are thinking and I do not like it.~
== X3Emi ~I know, I know...but I want to help. If you will let me.~
END 
++ ~Your friend seems rather against it.~ EXTERN X3ECath m8 
++ ~I could use every hand. Welcome to the group.~ EXTERN X3ECath m12  
++ ~I'm not interested in your help right now.~ EXTERN X3ECath m10 

CHAIN X3ECath m7b 
~*Hem hem!*. I know you wish to help, but there are some people we are better off not assisting. Commoners, the ill-repute, and people in general when you have a serious task on your shoulders. Especially the ill-repute.~
== X3Emi ~I...you're right, of course, Catherine. Perhaps another time we may speak.~
EXIT 

CHAIN X3Emi m9
~I am a skilled archer. I can shoot as well as any of them. Just give me a crossbow or a bow and I'm able to defend myself just fine.~
END 
++ ~I'll take any hand I can get. As long as you understand that getting Imoen is first priority.~ EXTERN X3ECath m12 
++ ~I'll have you if you are willing, Emily. But achieving revenge on Irenicus won't be easy, your safety is not assured.~ EXTERN X3ECath m12 
++ ~I'm afraid I'm not interested in your aid. You should heed your friend's advice instead.~ EXTERN X3ECath m10 

CHAIN X3ECath m10 
~Thank you stranger. She has her own affairs she needs to prioritize.~
== X3Emi ~If you change your mind though, I'll be around!~
EXIT 

CHAIN X3ECath m8 
~For good reason. Time spent away on distracting affairs is time wasted on a decisive, important moment in her family, the choosing of the next heir of House Castilla.~
== X3ECath ~Why it is a question of all would take too long to explain to a common <PRO_MANWOMAN>, nor is it my place.~
== X3Emi ~I can invest time. Just a few talks to the important voters. There will be time!~
== X3ECath ~Not if helping <PRO_HIMHER> kills you.~
END 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ ~I'm familiar with Emily's situation and her parentage issues.~ + m11 
+~!Global("X3EmiPartyBG1","GLOBAL",1)~+ ~And what skill do you possess? You seem to be privileged, not refined for the hard path.~ EXTERN X3Emi m9
++ ~I'll take any hand I can get. As long as she understands the risk and that getting Imoen is first priority.~ + m12 
++ ~I'll hear the story on the road then, if you are willing, Emily. But achieving revenge on Irenicus won't be easy or safe.~ + m12 
++ ~I'll not take Emily along. There is a lot of risk and it seems she has enough on her plate already.~ + m10 

CHAIN X3ECath m11 
~You told <PRO_HIMHER> about your blood? If that gets out Emily...~
== X3Emi ~We were all the way around Baldur's Gate. I trusted them and wasn't thinking, okay? No need for the lecture!~
== X3ECath ~Hrmph. If you know stranger, then you know the importance of what she needs to do. She may be willing to help, but consider that it may not be in her interest.~
END 
++ ~Emily is a grown woman, and can decide for herself. As long as she understands that getting Imoen is my first priority, she can come along.~ DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)~ + m12 
++ ~Yet she wants to join and she will.  I can perhaps help her a little. But tracking down Irenicus is my main concern over all others.~ + m12 
++ ~You are right. I am sorry Emily, but it is best you stay.~ + m10 

CHAIN X3ECath m12 
~So be it. I know I can't change your mind Emily, but the first chance you get, please, speak with Lady Hornkeeper and Lord Jurgenson and win their support. You'll need more than just my family's to win. Be safe.~
DO ~EscapeArea()~
== X3Emi ~I will, I will. I won't let you down Catherine.~
END 
IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3HelJ m12.1
IF ~IsValidForPartyDialogue("X3Hel")!Global("X3HelPartyBG1","GLOBAL",1)!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m13
IF ~IsValidForPartyDialogue("X3Hel")!Global("X3HelPartyBG1","GLOBAL",1)Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m14  
IF ~!IsValidForPartyDialogue("X3Hel")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m13 
IF ~!IsValidForPartyDialogue("X3Hel")!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m14 

CHAIN X3HelJ m12.1
~Bah. Settle down with ye concerns. Nothing wrong with a bit of battle lust.~ 
== X3Emi ~Battle lust. Right. You've not changed Helga, but it's nice to see you.~
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m13 
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m14

CHAIN X3Emi m13
~Well then, shall we? It's good to be back with you, <CHARNAME>!~
DO ~JoinParty()~
EXIT 

CHAIN X3Emi m14 
~Well then, shall we? Wait, I didn't even ask your name. What is it?~
END
++ ~I am <CHARNAME>.~ + m15 
++ ~My name is <CHARNAME>, my lady.~ + m16 
++ ~<CHARNAME>. Let's get going.~ + m17 

CHAIN X3Emi m15 
~<CHARNAME>. A pleasure! Well, I'm sure you want to be off, and so do I, so onwards then, hmm?~
DO ~JoinParty()~
EXIT 

CHAIN X3Emi m16 
~Oh you don't have to do the my lady stuff. It won't mean much where you take us, I reckon. Or if I don't make it and other likely outcomes. Oh nevermind. Let's hope this goes well, hmm?~
DO ~JoinParty()~
EXIT 

CHAIN X3Emi m17 
~Yes! After you, then.~
DO ~JoinParty()~
EXIT 

CHAIN IF ~Global("X3EmiMet","GLOBAL",1)~ THEN X3Emi remeetb
~Hey, welcome back. I hope you aren't too bothered by the others here in the inn. They tend to look down on others like you.~ [X3Blank]
== X3ECath ~For good reason, my friend. A reason you too, should consider in that head of yours.~
END
+~ReputationGT(Player1,7)~+ ~I was here to see if you would consider traveling with me.~ EXTERN X3ECath m7a 
+~ReputationLT(Player1,8)~+ ~I was here to see if you would consider traveling with me.~ EXTERN X3Emi r1
++ ~I think this establishment is below my class actually. Excuse me.~ EXIT 
++ ~Don't worry. Good day to you both.~ EXIT 

CHAIN IF ~Global("X3EmiMet","GLOBAL",1)~ THEN X3ECath remeeta
~The commoner is here again, Emily. I'm pretty sure this establishment is well above their class.~ [X3Blank]
== X3Emi ~Oh Catherine. She doesn't mean anything by it. I think.~
END 
+~ReputationGT(Player1,7)~+ ~I was here to see if you would consider traveling with me.~ EXTERN X3ECath m7a 
+~ReputationLT(Player1,8)~+ ~I was here to see if you would consider traveling with me.~ EXTERN X3Emi r1
++ ~I think this establishment is below my class actually. Excuse me.~ EXIT 
++ ~Don't worry. Good day to you both.~ EXIT 

CHAIN X3Emi r1 
~I am sorry. I know whatever you need help with is important...but I am not sure if I can trust you, not with what I have heard from your reputation.~
== X3Emi ~If word improves though, I promise I'll help.~
== X3ECath ~For your sake, my friend, I hope it doesn't. You need to focus on what is important. Now do depart and stop distracting her. You don't fit in the class of this establishment as is.~
EXIT  

// Quest - Good End 
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",1)Global("X3EmiHeir","GLOBAL",1)!Global("X3EmiQuest","GLOBAL",10)~ THEN X3EmiP quest_good_end // And Quest Global to X Parameter. 
~<CHARNAME>! You won't believe it...I...I am really my family's heir now. I've got so many responsiblities now. It's a bit exciting, but overwhelming.~
DO ~SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",10)~
END 
++ ~Congratulations! I knew you could do it.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + good_do_it
++ ~That is great, though we came here to see if you would rejoin us.~ + good_rejoin 
++ ~I see. You must be busy, so we won't take anymore of your time.~ + good_more_time 

CHAIN X3EmiP good_more_time 
~Oh, worry not. I don't have to start my duties for a while, so if you ever need me, just ask. I will always be there to help.~
EXIT 

CHAIN X3EmiP good_rejoin 
~Oh, absolutely! I've plenty of time before I have to return home and do my duties. I'd like to see things through with you as is.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN X3EmiP good_do_it 
~Thanks, <CHARNAME>. I won't forget how you've helped me succeed either. If you need a hand, I still have time to help see you through your own goals.~
END 
++ ~Of course. Come with me.~ + rj1
++ ~Not for the moment.~ + rj2

// Quest - Bad End 
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",1)Global("X3EmiHeir","GLOBAL",-1)!Global("X3EmiQuest","GLOBAL",10)~ THEN X3Emip quest_bad_end // And Quest Global to X Parameter. 
~...Hey <CHARNAME>..~
DO ~SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ ~You sound terrible. I take it things did not go according to plan?~ + bad_fail 
++ ~Why so down? I was coming here to see if you would rejoin us.~ + bad_prerejoin 
++ ~I'm guessing you weren't named heir, as you seem pretty depressed. I'll let you be alone.~ + bad_depressed


CHAIN X3EmiP bad_depressed
~I actually don't want to be alone. I don't even know if I really wanted to be heir but worse...I'm not even a Castilla anymore, <CHARNAME>. The first thing my brother did upon being bestowed all the family responsiblities was disown me from my family due to being impure.~
EXTERN X3EmiP bad_deserve 

CHAIN X3EmiP bad_deserve 
~Maybe I deserved it, I could have treated him better, or...tried to reason with him, but I only got angry when he said.~
END 
++ ~It's not your fault, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + not_your_fault 
++ ~Perhaps some time with my party will help.~ + bad_rejoin
++ ~I'm not sure what to say, Emily. I'm sorry about what happened.~ + bad_sorry
++ ~There's nothing you can do now. Just take some time for yourself. You're not tied to anyone anymore and can do as you please.~ + bad_yourself


CHAIN X3EmiP not_your_fault 
~It is...in a way. Had I tried harder, this wouldn't have happened.~
END 
++ ~Perhaps some time with my party will help.~ + bad_rejoin
++ ~I'm not sure what to say, Emily. I'm sorry  about what happened.~ + bad_sorry
++ ~There's nothing you can do now. Just take some time for yourself. You're not tied to anyone anymore and can do as you please.~ + bad_yourself


CHAIN X3EmiP bad_rejoin 
~I was hoping you would ask...I think some time traveling is what I need. Its the only thing I seem to know and do well, I fear.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN X3EmiP bad_sorry 
~It's not your fault. I...was just too neglectful of myself and worried so much about the rest of the world.~
== X3EmiP ~I'm sure you're busy but...I'd love to come along. I think traveling with you is the sort of thing I need right now.~
END
++ ~Of course. Come with me.~ + rj1
++ ~Not for the moment.~ + rj2

CHAIN X3EmiP bad_yourself 
~Maybe...maybe you are right. But if you need help, I'll be around here for a while. Just ask.~
EXIT 

CHAIN X3EmiP bad_fail 
~Not at all, I fear. Quite the opposite. Thomas gained the support of heir and the first thing he did was strip me of my family. I'm not a Castilla anymore, <CHARNAME>.~
EXTERN X3EmiP bad_deserve 

CHAIN X3EmiP bad_prerejoin 
~That sounds really nice. Things have been..terrible. Thomas gained the support of being heir and the first thing he did once he was given the position was remove me from being a Castilla because...because I was not purely human.~
EXTERN X3EmiP bad_deserve 

// Normal.
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
!Global("X3EmiRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP p1
~Is it time for me to go, then? I'm not fond of the idea but...if that is what you want.~ [X3Blank]
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, for now.~ + p2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~Yes, for now.~ + p2b 
++ ~No, I've changed my mind.~ + p3

CHAIN X3EmiP p2a 
~Okay then. I guess there is a bright spot to this. All that other responsibility I've been delaying getting to. Yay.~
== X3EmiP ~I'll be in the Mithrest inn, if you change your mind. I hope you do.~
END 
+~!IsValidForPartyDialogue("X3Reb")~+ ~See you around, Emily.~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
+~IsValidForPartyDialogue("X3Reb")~+ ~See you around, Emily.~ EXTERN X3RebJ p2c
++ ~This is only for a while. Why not meet me in the Copper Coronet instead, and I'll stop by later?~ + p2d 
++ ~Just wait for me right here. I'll be back.~ + p2e

CHAIN X3EmiP p2b 
~Okay then. I guess I'll just find someway to get out of here. That will be so...not easy. But I'll manage. Be safe.~
END
++ ~And you too.~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
++ ~No need for that. Just wait for me here. I'll be back.~ + p2e

CHAIN X3RebJ p2c 
~Thank you for being by my side for a time, Emily. I hope I see you again.~
== X3EmiP ~You can count on it! Unless I get eaten by something on the way. Or lost. Yes... let's hope that doesn't happen.~  
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3EmiP p2d 
~You know how ill-reputed that place is, right? Father would kill me if he knew. I'll wait there for a while though. Just don't keep me waiting too long now.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0406",1670,1745,W))~ EXIT

CHAIN X3EmiP p2e
~Oh. Waiting. I can do that. Just...don't keep me waiting here forever.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)~ EXIT 

CHAIN X3EmiP p3 
~Phew. I am quite glad of that!~
DO ~JoinParty()~ EXIT 

// Underdark 
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
!Global("X3EmiRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP u1
~You're kidding. You're parting with me *here*? How in the world am I going to get out of here by myself?!~ [X3Blank]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",5)~
END 
++ ~Don't worry. I just need you to wait in this spot for a moment. I'll be back for you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + u2 
++ ~You can manage.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + u3 
++ ~Beat it, Emily. You're no longer useful to me.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ + u3 
++ ~I didn't think about that, sorry. Stay with the group.~ + p3 

CHAIN X3EmiP u2 
~This is...going to be so terrifying. Please, don't make me wait here long.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)~
EXIT 

CHAIN X3EmiP u3 
~I...this hurts. I don't even know what to think.~
END 
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ u5 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3EmiP u6 


CHAIN X3RebJ u5 
~She shouldn't be left to wander on her own. I will go with her.~
END
++ ~If that is what you wish, Recorder. Farewell.~ + u7 
+~GlobalGT("X3RebApp","GLOBALS",44)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + u8
+~GlobalLT("X3RebApp","GLOBALS",45)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + u9
++ ~Nevermind. Both of you, stay.~ EXTERN X3EmiP p3

CHAIN X3RebJ u7
~Farewell, <CHARNAME>. May Oghma give us both the knowledge to survive this place.~
DO ~LeaveParty()SetGlobal("X3EmiKickedOut","LOCALS",1)SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0319",516,330,S)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))IncrementGlobal("X3EmiApp","GLOBALS",-6)~ EXIT

CHAIN X3RebJ u8 
~I um...as you wish, <CHARNAME>. I am sorry Emily, but please, please, take care of yourself.~
== X3EmiP ~And just when I thought I at least had a friend... But I can't be mad at you Recorder, I understand your reasoning. I hope I see you again at least...and don't end up some chow of some creature down here.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))IncrementGlobal("X3EmiApp","GLOBALS",-9)~ EXIT 

CHAIN X3RebJ u9 
~I am sorry, <CHARNAME>. I know what you are doing is important, but she could die alone. I don't think it's right for her to not have at least someone to be with her.~
END 
++ ~If that is how it must be. Goodbye, Recorder.~ + u7 
++ ~Nevermind. Both of you, stay.~ EXTERN X3EmiP p3

CHAIN X3EmiP u6
~If this is how it must be...Gods I...I'll figure something out. Goodbye!~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",531,622,SW)IncrementGlobal("X3EmiApp","GLOBALS",-9)~ EXIT

// Romance
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
Global("X3EmiRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP rp1
~<CHARNAME>? Are you sure? I want to be with you. I want to walk next to you. Please, let me stay.~ [X3Blank]
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~It is only for a while. I won't let you escape me that easily.~ + rp2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~It is only for a while. I won't let you escape me that easily.~ + rp2b 
++ ~Beat it, Emily. Our paths are apart, and so are our hearts.~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",2)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + rp2c 
++ ~If that is your wish, then you may stay.~ + rp3

CHAIN X3EmiP rp2a 
~You better keep your word. I'll be in the Mithrest inn, dreaming of your return.~
END 
++ ~See you soon, Emily.~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
++ ~Meet me in the Copper Coronet instead, and I'll catch you there.~ + rp4
++ ~Just wait for me right here. I'll be back.~ + rp5

CHAIN X3EmiP rp2b 
~You better. I'll find a way out of here, and don't worry, I'll be safe, and dreaming of your return.~
END
++ ~I'm counting on it.~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
++ ~No need for that. Just wait for me here. I'll be back very soon.~ + rp5

CHAIN X3EmiP rp2c 
~I...I was wrong on things then. I think some time away is best. I'll be in the Mithrest inn, if you still need me. No matter what, I'll always want to help.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT


CHAIN X3EmiP rp4 
~I'll be waiting. I promise.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0406",1670,1745,W))~ EXIT

CHAIN X3EmiP rp5
~No problem then. Just don't forget about me.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)~ EXIT 

CHAIN X3EmiP rp3 
~I am glad. We're meant to walk next to eachother. I just feel it.~
DO ~JoinParty()~ EXIT 

// Underdark Romance
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
Global("X3EmiRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP ru1
~I didn't say anything bad, did I, to get kicked out of our group here, in the underdark? I thought we were...~ [X3Blank]
END 
++ ~Don't worry. I just need you to wait in this spot for a moment. I'll be back for you.~ + ru2 
++ ~We still are. I'll come find you soon. I promise.~ + ru3 
++ ~Beat it, Emily. You're no longer useful to me.~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)SetGlobal("X3EmiAppChange","GLOBAL",2)~ + ru4
++ ~You're right. I can't risk you getting hurt.~ + rp3a 

CHAIN X3EmiP ru2 
~I'll be strong and wait here. For you.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)~
EXIT 

CHAIN X3EmiP ru3 
~I'll hold you to it. Please, take care of yourself. I'm counting on you to come back to me.~
== X3EmiP ~But I admit I'm a bit averse trying to get out of here alone, but... I'll figure it out. Hopefully.~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5
IF ~!IsValidForPartyDialogue("X3Reb")~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3EmiP ru4 
~Beat it? *Beat it*? Clearly I...have no idea who the person is that I fell for.~
== X3EmiP ~Fine. I'll leave. Don't expect me to be happy to see you again.~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5
IF ~!IsValidForPartyDialogue("X3Reb")~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3RebJ ru5
~She shouldn't be left to wander on her own. I will go with her.~
END
++ ~If that is what you wish, Recorder. Farewell.~ + ru7 
+~GlobalGT("X3RebApp","GLOBALS",44)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + ru8.1
+~GlobalGT("X3RebApp","GLOBALS",44)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + u8 
+~GlobalLT("X3RebApp","GLOBALS",45)~+ ~I can't afford to lose both of you. Stay, Recorder.~ + ru9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind. Both of you, stay.~ EXTERN X3EmiP rp3a
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind. Both of you, stay.~ EXTERN X3EmiP rp3b

CHAIN X3RebJ ru7
~Farewell, <CHARNAME>. May Oghma give us both the knowledge to survive this place.~
DO ~LeaveParty()SetGlobal("X3EmiKickedOut","LOCALS",1)SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0319",516,330,S)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3RebJ ru8.1 
~I um...as you wish, <CHARNAME>. I am sorry Emily, but please, please, take care of yourself.~
== X3EmiP ~Don't worry Recorder. I will be okay, and strong, because I want to get out of here and see <CHARNAME> and you again. And an aasimar doesn't fall that easily! Hopefully, at least.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT 

CHAIN X3RebJ ru9 
~I am sorry, <CHARNAME>. I know what you are doing is important, but she could die alone. I don't think it's right for her to not have at least someone to be with her.~
END 
++ ~If that is how it must be. Goodbye, Recorder.~ + ru7 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind. Both of you, stay.~ EXTERN X3EmiP rp3a
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind. Both of you, stay.~ EXTERN X3EmiP rp3b

CHAIN x3EmiP rp3a 
~Thank you. We're meant to be by each other's side. I just know it.~ 
DO ~JoinParty()~ EXIT 

CHAIN x3EmiP rp3b 
~I do want to stay. But I'm not forgetting the things just said, either. Let's just go.~ 
DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3EmiDornConflict","LOCALS",2)InPartyAllowDead("DORN")~ THEN X3EmiP Dorn_No 
~I told you before, I'll not join you while you walk with that Blackguard. Maybe...if he wasn't there. But not now.~
EXIT 

CHAIN IF ~Global("X3EmiHexxatConflict","LOCALS",2)InPartyAllowDead("Hexxat")~ THEN X3EmiP Hexxat_No 
~I told you before, I'll not join you while you walk with that Vampire. Maybe...if she wasn't there. But not now.~
EXIT 

// Must be in THIS order
CHAIN IF ~ReputationGT(Player1,7)Global("X3EmiKickedOut","LOCALS",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3EmiP rj
~Oh, you are here! Am I going with you now? I am quite eager to help again.~ [X3Blank]
END 
++ ~It is. Please rejoin me.~ + rj1
++ ~Not yet.~ + rj2

// Romance is a lot more forgiving with reputation, though she still won't join a 1 point party.
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",1)ReputationGT(Player1,1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3EmiP rr
~<CHARNAME>! Come here! Oh, you feel so real. And warm. Are we...going to walk side by side again?~  [X3Blank]
END 
	++ ~Of course. I've missed you.~ + rj3
	++ ~Not yet.~ + rj2


CHAIN X3EmiP rj1
~All right! Here we go!~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3EmiP rj2
~Oh...well, maybe later!~
EXIT


CHAIN X3EmiP rj3
~Together then, as we should be.~
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN IF ~GlobalLT("X3EmiApp","GLOBAL",-89)~ THEN X3EmiP nothinga
~There is real no purpose in us speaking to one another, is there?~ [X3ELApp] EXIT 

CHAIN IF ~ReputationLT(Player1,8)~ THEN X3EmiP nothingb
~Sorry, <CHARNAME>. If you're here for my help, I'm afraid I'm not comfortable with your reputation around here. Perhaps when you've done more to improve yourself, I may reconsider.~ [X3Blank]
EXIT 