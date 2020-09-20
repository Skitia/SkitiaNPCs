/* Note: START.d initiates the Five's NPC dialogues, but no one elses. */

//This very specific version of Recorder's Post Party leaves for good, presumably seeking out Raban or rejoining him.
CHAIN IF ~Global("X3RebKickedOut","LOCALS",0)AreaCheck("AR1512")InParty("IMOEN2")~ THEN X3RebP ImoenDepart
~I understand, <CHARNAME>, and I approve even. Imoen shouldn't be left here. Don't worry, I can manage to leave safely.~
END 
++ ~Take care, Recorder.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1)EscapeArea()~ EXIT 
++ ~Actually, stay with me. I don't want you to go.~ DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3RebVampire","GLOBAL",2)~ THEN X3RebP VampireSave 
~<CHARNAME>! I...I am so sorry. I can't believe you actually did all of this just to free me from my own imprisoning.~ 
DO ~SetGlobal("X3RebVampire","GLOBAL",3)~
== X3RFER ~*Hiss!*~
== X3RebP ~I'm so sorry, Gustav. I hope our time together wasn't unpleasant.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~He's not the only one who is upset! I'm so glad you are okay now, friend.~
END 
++ ~Why didn't you tell me what your plan was?~ + VS.1 
++ ~I'm so glad you are alive again.~ + VS.6
++ ~(Embrace her.)~ + VS.2

CHAIN X3RebP VS.1 
~There wasn't time and...I so dreaded the thought of being a slave, and worse, your enemy.~
= ~My mind is strong, but not so strong against someone like Bodhi. But this should be a happy moment. I hope...you can forgive me.~
END 
++ ~Of course. All that matters is that we are together.~ + VS.7
++ ~As long as you promise to never do that ever again.~ + VS.4 
++ ~Forget it. We need to keep moving~ + VS.3

CHAIN X3RebP VS.7
~I am so glad that you say that. My heart sings with love for you.~
EXTERN X3RebP VS.3

CHAIN X3RebP VS.3 
~Let us walk together and face what still lies ahead. Whatever trials lay ahead, I know we can prevail.~
END 
IF ~~ DO ~ActionOverride("X3RFER",DestroySelf())JoinParty()
SetGlobal("X3RebKickedOut","LOCALS",0)~ SOLVED_JOURNAL @35
EXIT 

CHAIN X3RebP VS.4 
~I do. I promise. Never, ever, will I let myself be seperated from you, my love. I thought I was protecting you, but now I see I was only hurting you.~
EXTERN X3RebP VS.3

CHAIN X3RebP VS.2 
~(You hold eachother tight, arms seeming to never let go. She wipes tears from her eyes and looks up to you.)~
EXTERN X3RebP VS.1 



CHAIN X3RebP VS.6 
~I...I am too. Oh, what I did was so foolish!~
EXTERN X3RebP VS.1


CHAIN IF ~Global("X3RMSpell","GLOBAL",4)Global("X3RebKickedOut","LOCALS",1)~ THEN X3RebP nojoinRaban
~If you are here to ask me to follow you, I am afraid I won't. I have all I could of you after what you did to Raban.~
EXIT 
//Only would fire if the PC somehow found a way to get rid of Recorder at -90 approval or less.
CHAIN IF ~GlobalLT("X3RebApp","GLOBAL",-89)~ THEN X3RebP nojoin2 
~Please, leave me alone. I'd rather not join with you again.~ [X3Blank]
EXIT 

CHAIN IF ~ReputationLT(Player1,6)~ THEN X3Reb rep-low 
~I'm sorry. I have work I must get to.~ [X3Blank]
EXIT 

CHAIN IF ~ReputationLT(Player1,6)~ THEN X3RebP rep-low2 
~I'm sorry. I don't want to be around you, not with your reputation the way it is.~ [X3Blank]
EXIT 
// Unlike other NPCs, Recorder will repeat her first conversation until do you remember me or what do you do here are selected.
CHAIN IF ~Global("X3RebMet","GLOBAL",0)~ THEN X3Reb m1 
~Oh! You startled me. Sorry, I think I dozed off.~ [X3Blank]
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ m2a
IF ~!IsValidForPartyDialogue("X3Emi")~ EXTERN X3Reb m2b

CHAIN X3EmiJ m2a 
~Someone is overworking themselves. Cute and diligent as ever.~
== X3Reb ~Emily? It is so nice to see you are well, even if you're teasing me as soon as we meet.~
== X3EmiJ ~Me? I'd never!~ 
EXTERN X3Reb m2b 

CHAIN X3Reb m2b 
~I am sorry for looking less than presentable at the moment. We just had a lot of organization to do that I just finished.~
== X3RMOM ~No, no, no. We still have one more crate of tomes to get sorted later, once the shipment arrives tomorrow. Shipments never arrive on time anymore.~
== X3Reb ~I haven't forgotten mother. I'll be sure to help.~
END 
++ ~You barely look awake, but do you remember me?~ DO ~SetGlobal("X3RebMet","GLOBAL",1)SetGlobal("X3RebPartyBG1","GLOBAL",1)~ + m3a 
++ ~Who are you, and what do you do here?~ EXTERN X3RMom m3b 
++ ~I'll leave you to your work, then, or rest, whichever it will be.~ + m0a

CHAIN X3Reb m0a
~Likely rest. May the Lord of Knowledge illuminate your path.~
EXIT 

CHAIN X3Reb m0b 
~I understand. Please, if you ever change your mind, just come visit. I'll be working here.~
EXIT 

CHAIN X3Reb m3a 
~I d- <CHARNAME>? I am sorry, I was so tired, I didn't notice you at first.~
EXTERN X3RMOM m4 

CHAIN X3RMom m3b 
~Who is asking?~
== X3Reb ~Mother, it is okay. I can feel they aren't here to cause trouble. I don't feel malice.~
== X3RMom ~But you cannot know. We have no knowledge of these strangers, and they are in his temple.~
END 
++ ~If it will put you at ease, I will introduce myself first. I am <CHARNAME>.~ DO ~SetGlobal("X3RebMet","GLOBAL",1)~ + m4
++ ~I am known as <CHARNAME>, hero of Baldur's Gate.~ DO ~SetGlobal("X3RebMet","GLOBAL",1)~ + m4
++ ~I'd rather not say.~ + m3c

CHAIN X3RMom m3c
~Then I am sorry,but we have nothing to say to you. Strange things have been afoot the docks these days and at the foot of the temple. Those who deign not to share knowledge cannot be trusted with it. I trust you can show yourself the door when you're done here in our temple.~
EXIT 

CHAIN X3RMOM m4 
~This is the hero of Baldur's Gate your texts have been all about? I thought <PRO_HESHE> would be shorter.~
END 
IF ~Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3Reb m5a 
IF ~!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3Reb m5b 

CHAIN X3Reb m5a 
~I didn't think I would see you again after everything that happened up north. But I am glad.~
EXTERN X3Reb m6 

CHAIN X3Reb m5b 
~I can't believe it. You. In person...if I weren't so tired I would have recognized you the moment you entered.~
== X3Reb ~I am Recorder. It is what I play, what I do, and my title. I've been writing your history and tales about your adventures in Baldur's Gate. I had to do quite the number of interviews.~
END 
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m5c 
IF ~OR(2)!IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",0)~ EXTERN X3Reb m6 

CHAIN X3EmiJ m5c 
~I was one of them. Sorry about the height mix-up! I thought it would be more believable if I took off a few inches. Everyone just wants to make themselves so tall.~
EXTERN X3Reb m6 

CHAIN X3Reb m6 
~What brings you down to Athkalta?~ 
END 
++ ~I am not here by choice. My childhood friend Imoen, was taken by the Cowled Wizards. I am trying to get her back.~ + m7a 
++ ~A wizard named Irenicus kidnapped and tortured me. I am going to track him down for what he did.~ + m7b 
++ ~I'm trying to raise a large sum of coin. You wouldn't happen to have any ideas?~ + m7c 

CHAIN X3Reb m7a
~If your friend was taken by the cowled wizards, they would have probably taken her to spellhold. I have heard a few tales of people who have entered, and none about those who were released.~
EXTERN X3Reb m8 

CHAIN X3Reb m7b 
~Irenicus? Somehow the name is familiar...~
== X3RMom ~It's an old word, Recorder, "to break". I would doubt it is this mage's birth name.~
EXTERN X3Reb m8

CHAIN X3Reb m7c 
~You are in the city of coin. There is probably no better place to do it. I've heard the playhouse in the Bridge District has had some troubles. I've been wanting to listen to the play they've been putting on recently.~
EXTERN X3Reb m8 

CHAIN X3Reb m8 
~I want to ask you something. I would like the opportunity to travel with you. I can just feel your story that I've wrote so much about isn't over, and as a minstrel, I would want to see what becomes of it. I can also be of great help, I know many spells and know a lot about the area.~
== X3RMOM ~We have spoken at length on this feeling versus knowledge, daughter. If it is not illuminated, it should not be assumed.~
== X3Reb ~I know, mother. And maybe I am wrong. But I am a minstrel, and of more use perceiving the world outside so I can share it with you and the others.~
END 
++ ~I would like that, Recorder. Welcome aboard.~ + m9
++ ~Your mother is right. You should stay here in the temple.~ + m0b 
++ ~I don't need your help right now. Maybe later.~ + m0b 

CHAIN X3Reb m9
~Thank you! I'll do my best to be of service.~ DO ~JoinParty()~ 
== X3RMOM ~If you are going to leave so soon Recorder...be safe. We did not get the time together that I wanted, but I know how important this is for you.~
== X3RebJ ~I know mother. But I'll be nearby, and I'll be hopeful that I get a chance to pop in and say hi every now and then. Please, take care of yourself.~
END 
IF ~IsValidForPartyDialogue("X3Kal")Global("X3RebPartyBG1","GLOBAL",1)Global("X3KalPartyBG1","GLOBAL",1)~ EXTERN X3KalJ m10a  
IF ~IsValidForPartyDialogue("X3Kal")OR(2)!Global("X3RebPartyBG1","GLOBAL",1)!Global("X3KalPartyBG1","GLOBAL",1)~ EXTERN X3KalJ m10b
IF ~!IsValidForPartyDialogue("X3Kal")~ EXIT 

CHAIN X3KalJ m10a 
~Soo. Welcome back to the group, Recorder. You wouldn't have happened to record my stories as well while you were working here?~
== X3RebJ ~Um...I think you have your story retelling in good hands with your own capable voice, Kale.~
== X3KalJ ~Heh. Yeah, I so do.~
EXIT 

CHAIN X3KalJ m10b 
~Soooo. Pretty face, I get you recorded our leader <CHARNAME> here, but what about me? I'm pretty famous myself.~
== X3RebJ ~Um...I'm sorry, I'm not familliar with you at all.~
== X3KalJ ~Damn it! You really ought to make sure I get more credit on things, <CHARNAME>. People keep giving me doubting looks without the support.~
EXIT 

CHAIN IF ~Global("X3RebMet","GLOBAL",1)~ THEN X3Reb remeet
~Have you changed your mind, <CHARNAME>? It would be an honor to travel and record your tale, if you would let me.~
END 
++ ~I have. Join me.~ + m9
++ ~Not at this time. Farewell for now.~ EXIT 




CHAIN IF ~Global("X3RebKickedOut","LOCALS",0)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3RebP p1
~Am I leaving the group? I will depart if you wish, but I would prefer to stay if allowed.~ [X3Blank]
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, depart our party for now.~ + p2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, depart our party for now.~ + p2b
 	++ ~No. I've changed my mind.~ DO ~JoinParty()~ EXIT

 
CHAIN X3RebP p2a
~I understand. I will take what I have recorded and prepare my writings back in the temple. May Oghma illuminate your path with knowledge.~
 END 
+~!IsValidForPartyDialogue("X3Emi")~+ ~See you later, Recorder.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT 
+~IsValidForPartyDialogue("X3Emi")~+ ~See you later, Recorder.~ EXTERN X3EmiJ p2d 
++ ~Actually, go to the Copper Coronet instead, and I'll meet you there later.~ + p2c
++ ~Actually, just wait for me right here. I'll be back.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP p2b
~Be careful here, <CHARNAME>. I am going to take a precaution myself and recall back to the temple of Oghma. May he illuminate your path with knowledge.~
END
++ ~To you as well.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR0319",[504.290],W)~ EXIT
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP p2c 
~Um, that place is rather seedy, and doesn't have the best reputation. But I will do as you ask.~
DO ~SetGlobal("X3RebKickedOut","LOCALS",1) EscapeAreaMove("AR0406",1606,1710,SW)~ EXIT

CHAIN X3EmiJ p2d 
~Take care of yourself, my little bestie. Try not to let your mother run you tired too much.~
== X3Reb ~Thank you, Emily!.~
DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT

CHAIN IF ~Global("X3RebKickedOut","LOCALS",1)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3RMSpell","GLOBAL",4)~ THEN X3RebP p4a
~I've spent a lot of time putting your work into word. It's not always easy to find the best way to express things. I'm ready to see more, if you will have me.~ [X3Blank]
 END 
++ ~I will. Please rejoin me.~ + p5
++ ~Another time.~ + p6


CHAIN X3RebP p5
~Thank you! May Oghma protect us with the foresight to find victory.~
DO ~SetGlobal("X3RebKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3RebP p6
~Take care, then.~
EXIT

CHAIN IF ~Global("X3RebKickedOut","LOCALS",0)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3RebP rp1
~I know every decision you make is well thought out. But if I could have a choice, I would always choose to stay near you, if you will reconsider.~ [X3Blank]
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Depart for now, dear Recorder. I will find you later.~ + rp2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Depart for now, dear Recorder. I will find you later.~ + rp2b
 	++ ~As you wish, you may stay.~ DO ~JoinParty()~ EXIT

 
CHAIN X3RebP rp2a
~I will be back at the temple of Oghma. I will pray that he takes care of you in my absence, so that I can see and hold you close once more someday.~
 END 
+~!IsValidForPartyDialogue("X3Emi")~+ ~Be well, Recorder.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT 
+~IsValidForPartyDialogue("X3Emi")~+ ~Be well, Recorder.~ EXTERN X3EmiJ rp2d 
++ ~Actually, go to the Copper Coronet instead, and I'll meet you there when I am ready.~ + rp2c
++ ~Actually, just wait for me right here. I'll be back soon.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP rp2b
~I am going to take a precaution myself and recall back to the temple of Oghma. I will pray that the Lord of Knowledge takes care of you in my absence, so that I can see and hold you close once more someday.~
END
++ ~Be well, Recorder.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1)CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR0319",[504.290],W)~ EXIT
++ ~Actually, just wait for me right here. I'll be back soon.~ DO ~SetGlobal("X3RebKickedOut","LOCALS",1)~ EXIT


CHAIN X3RebP rp2c 
~As you wish, <CHARNAME>. I will wait there and yearn for your return.~
DO ~SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0406",1606,1710,SW)~ EXIT

CHAIN X3EmiJ rp2d 
~Don't worry, my friend. I'll make sure your dear <CHARNAME> comes back to you in one piece.~
== X3Reb ~Thank you, Emily. I will pray for you as well.~
DO ~SetGlobal("X3RebKickedOut","LOCALS",1) ActionOverride("X3Reb",EscapeAreaMove("AR0319",504,290,SW))~ EXIT

CHAIN IF ~Global("X3RebKickedOut","LOCALS",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3RebP p4a
~I've yearned so much for your return, and I am so happy to see you well. Will you have me with you once more, <CHARNAME>?~ [X3Blank]
 END 
++ ~Yes, please rejoin me.~ + rp5
++ ~Perhaps later.~ + rp6


CHAIN X3RebP rp5
~Thank you. We walk together, in harmony.~
DO ~SetGlobal("X3RebKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3RebP rp6
~Come back for me soon then, my love.~
EXIT
