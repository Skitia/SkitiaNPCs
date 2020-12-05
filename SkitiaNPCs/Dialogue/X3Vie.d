/* Note: START.d initiates the Five's NPC dialogues, but no one else's. */



BEGIN X3VG
//Will probably never fire, as 1: The approval lower limit was set higher, and 2, they depart for good.
//Commenting out for historical reasons.
/*CHAIN IF ~GlobalLT("X3VieApp","GLOBAL",-89)~ THEN X3VieP nojoin2 
~Get away from me. You've been cruel enough.~ [X3Blank]
EXIT */

CHAIN IF ~Global("X3ViePreMet","GLOBAL",1)~ THEN X3VG meet
~In the name of the council, you are under arrest for the disruption of trade of Lady Yuth's business, unless you can pay the fine immediately of six hundred coins.~
EXTERN X3Vie m1 

CHAIN X3Vie m1
~What?! That amount is unacceptable! I won't pay. She was being resentful to my clear superiority. Besides, surely what she is selling is the greater crime.~
== X3VG ~You will not tarnish the good lady's name. You will come with me at once. Some time in prison will teach you.~
END 
	++ ~Vienxay? What have you done now?~ DO ~SetGlobal("X3ViePartyBG1","GLOBAL",1)~ EXTERN X3Vie m1a
	++ ~What is going on here?~ EXTERN X3Vie m3a
	++ ~Good to see the law is enforced here. Good work, guard.~ EXTERN X3VG m2
	
CHAIN X3Vie m1a
~<CHARNAME>? Your timing could not be better. Help me pay this ridiculous fine!~
END
IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ EXTERN X3HelJ m1.2a 
IF ~IsValidForPartyDialogue("X3Hel")!Global("X3HelPartyBG1","GLOBAL",1)~ EXTERN X3HelJ m1.2b
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3a
IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3b
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3Vie m3b 

CHAIN X3HelJ m1.2a 
~Hah! I am not surprised by this at all, this elf is good for nothing.~ 
EXTERN X3Vie m1.25 

CHAIN X3HelJ m1.2b
~Pah, who in the bloody hells causes such a disruption they get fined or imprisoned for it? This elf must be bloody crazy.~ 
EXTERN X3Vie m1.25 

CHAIN X3Vie m1.25
~Ugh, shut up dwarf!~
END 
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3a
IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ m1.3b
IF ~!IsValidForPartyDialogue("X3Emi")~ EXTERN X3Vie m3b 

CHAIN X3EmiJ m1.3a 
~Oh, look. It's Vienxay, in trouble again. I admit I feel a little bad for her though.~
EXTERN X3Vie m3b 

CHAIN X3EmiJ m1.3b 
~That isn't too much, is it? We could bail her out, I suppose.~
EXTERN X3Vie m3b

CHAIN X3Vie m3a
~That irksome Lady Yuth in the adventurer mart was being smart with me, so I got smart with her. How my actions are considered "Disruptive" and "Bad for trade" is beyond me.~
== X3VG ~That is enough out of you.~
EXTERN X3VG m2 

CHAIN X3Vie m3b 
~I just need six hundred coins to put this stupid misunderstanding behind us. Surely whatever just happened in the promenade or the lady's goods would be the greater issue, but no, this guard is focused on me.~
== X3VG ~Quiet yourself. I've heard enough out of you.~
EXTERN X3VG m2 

CHAIN X3VG m2 
~If you don't want to pay this elf's fine stranger, I'll be taking her away.~
END 
+~PartyGoldGT(599)~+  ~Here, I'll pay it. Here is six hundred gold.~ DO ~TakePartyGold(600)~ + m4 
++ ~That is too much for me.~ + m5 
++ ~I've no desire to pay her fine.~ + m5 

CHAIN X3VG m4 
~My work is done. Watch yourself, elf. Next time could be worse.~ 
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)EscapeArea()SetGlobal("X3VieMet","GLOBAL",-1)
Wait(3)
ActionOverride("X3Vie",StartDialogueNoSet(Player1))~ EXIT 

CHAIN X3VG m5 
~Then it's time to go, elf. Enjoy prison time.~
== X3Vie ~Ugh!~
DO ~SetGlobal("X3VieMet","GLOBAL",-2)ActionOverride("X3VG",MoveToPoint([692.3446]))ActionOverride("X3VG",DestroySelf())MoveToPoint([692.3446])MoveBetweenAreas("AR1005",[830.409],14)~ EXIT 

CHAIN IF ~Global("X3VieMet","GLOBAL",-2)~ THEN X3Vie debt 
~Ugh, I am stuck here for ages until someone pays my stupid fine. If you have any mercy, speak to the guard and pay it for me, I beg you!~ [X3Blank]
EXIT 

EXTEND_TOP PRISONK1 0 #2
+~Global("X3VieMet","GLOBAL",-2)~+ ~I'm here to see Vienxay.~ EXTERN PRISONK1 ViePrison
END 

CHAIN PRISONK1 ViePrison 
~Viper's tongue, that one. Her fine is six hundred gold.~
END 
+~PartyGoldGT(599)~+  ~Here, I'll pay it. Here is six hundred gold.~ DO ~TakePartyGold(600)~ + prison1  
++ ~That is too much for me.~ + prison2
++ ~I've no desire to pay her fine.~ + prison2

CHAIN PRISONK1 prison1 
~Looks like everything is in order then. You can go speak to her, then. in the cell to the right behind me.~ 
DO ~SetGlobal("X3VieMet","GLOBAL",-1)~ EXIT 

CHAIN PRISONK1 prison2 
~I'll have to bear that elf's moaning even longer then. She is one irritating lady.~ 
EXIT 

CHAIN IF ~Global("X3VieMet","GLOBAL",-1)~ THEN X3Vie meet2 
~Ugh, thank you for helping me with that "problem". I suppose I am in your debt once more.~ [VienBore]
DO ~SetGlobal("X3VieMet","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@513)~ // Finally, at 1.
END 
IF ~!Global("X3ViePartyBG1","GLOBAL",1)~ EXTERN X3Vie name 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ ~Perhaps you can do a favor for me, now. I need help, and I want you to join me.~ + joinagain
++ ~Enjoy your freedom.~ + free 

CHAIN X3Vie name 
~What is my savior's name?~ 
END 
++ ~I am <CHARNAME>. I was happy to help.~ + forme
++ ~I am <CHARNAME>. Now that I've helped you, you owe me a favor in turn. What can you do for me?~ + forme

CHAIN X3Vie forme 
~I am a Shadowmage. I wield the power of the traditional weave and shadow magic both. This allows me to strike with the art or from stealth unseen, a powerful combination that could serve you, if you desire.~
END 
++ ~That will do then, welcome aboard.~ + join 
++ ~I don't need your services right now.~ + reject 

CHAIN X3Vie free 
~Oh, I will. I'll just have to stay in the Copper Coronet for a while. The slums have less city guards to bother me, even if the place is low class.~
== X3Vie ~If you ever wish my powerful talents of shadows and magic, you can find me there.~
END 
++ ~I could use them now, actually. Join us.~ + join 
++  ~Very well then, farewell.~ DO ~EscapeAreaMove("AR0406",446,1515,NE)~ EXIT 

CHAIN X3Vie join 
~My powers then will be at your disposal. You'll not regret this.~ 
DO ~JoinParty()~ 
END 
++ ~Before you go, you should know I am trying to rescue Imoen from the Cowled Wizards. It could be dangerous.~ + v_reason
++ ~I should tell you that my goal is to find and track down a mage named Irenicus. There is no telling what we may face on the way.~ + v_reason
++ ~Let's go.~ EXIT 

CHAIN X3Vie joinagain
~I don't like that I seem to be constantly in your debt, <CHARNAME>, so I will agree, but fine. I suppose this is to your benefit. My power has grown since we've last met.~ 
DO ~JoinParty()~
END 
++ ~Before you go, you should know I am trying to rescue Imoen from the Cowled Wizards. It could be dangerous.~ + v_reason
++ ~I should tell you that my goal is to find and track down a mage named Irenicus. There is no telling what we may face on the way.~ + v_reason
++ ~Let's go.~ EXIT 

CHAIN X3Vie v_reason 
~I hardly care what the reason is. I am in your debt and for now, at least, I will follow along, until you either annoy me too much or I grow bored and have repaid you sufficiently.~
EXIT 

CHAIN X3Vie reject 
~Hrmph, suit yourself. I will be in the Copper Coronet then. The slums have less city guards, even if their is no class at all. Humiliating, but it will do.~
 DO ~EscapeAreaMove("AR0406",446,1515,NE)~ EXIT 
 
CHAIN IF ~Global("X3VieMet","GLOBAL",1)~ THEN X3Vie meet3 
~So, have you reconsidered my offer of aid? I grow restless in this filthy inn.~
END 
++ ~I have. Join me.~ + join 
++ ~No, I am still not interested.~ + rejectagain 

CHAIN X3Vie rejectagain 
~Hrmph. You make a foolish mistake, but suit yourself.~ 
EXIT 


//This very specific version of Vienxay's Post Party, presumably being removed for Imoen.
CHAIN IF ~Global("X3VieKickedOut","LOCALS",0)AreaCheck("AR1512")InParty("IMOEN2")~ THEN X3VieP ImoenDepart
~Hrmph. If you or this Imoen get killed without me, I will feel guilty. So don't. I hardly need more on my conscience.~
END 
++ ~We'll take care of ourselves. Stay safe, Vienxay.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1)PlaySound("ACT_07")MoveBetweenAreas("AR0406",[446.1515],W)~ EXIT 
++ ~Actually, stay with me. I don't want you to go.~ DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3VieKickedOut","LOCALS",0)!Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP p1
~What? Have you taken a blow to the head? Removing your best talent from the group? Do have some sense and reconsider.~ [X3Blank]
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~I mean it, Vienxay. Leave the party for now.~ + p2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~I mean it, Vienxay. Leave the party for now.~ + p2b
 	++ ~You're right. Stay.~ DO ~JoinParty()~ EXIT

 
CHAIN X3VieP p2a
~Hrmph. When you've some sense again, I'll be in that ugh, subpar Copper Coronet inn.~
 END 
++ ~Take care, Vienxay.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1) ActionOverride("X3Vie",EscapeAreaMove("AR0406",446,1515,NE))~ EXIT 
++ ~That isn't necessary. Just wait for me here.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT


CHAIN X3VieP p2b
~Do you know how inconvenient it will be to get back to Athkatla? I'll have to travel through the shadow plane. I will glare at you once you realize how much you needed me when we meet again.~
END
++ ~I'll be fine. Take care of yourself, Vienxay.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1)PlaySound("ACT_07")MoveBetweenAreas("AR0406",[446.1515],W)~ EXIT
++ ~That isn't necessary. Just wait for me here.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT

CHAIN IF ~Global("X3VieKickedOut","LOCALS",1)!Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP p4a
~So, you've come back. Are you ready to admit you need me again?~ [X3Blank]
 END 
++ ~I do need you. Please rejoin me.~ + p5
++ ~Not yet.~ + p6


CHAIN X3VieP p5
~Finally. Let's get out of this hell hole.~
DO ~SetGlobal("X3VieKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3VieP p6
~"Not yet", <PRO_HESHE> says. Hrmph!~
EXIT

CHAIN IF ~Global("X3VieKickedOut","LOCALS",0)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP rp1
~What? I thought you cared about me? Why are you asking me to leave?~  [X3Blank]
END  
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~It's just for now, Vienxay. I'll find you later, I promise.~ + rp2a
 	+ ~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~It's just for now, Vienxay. I'll find you later, I promise.~ + rp2b
++ ~I've had enough of you, Vienxay. You're not wanted or needed.~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieApp","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@509)~ + leave 
++ ~As you wish, you may stay.~ DO ~JoinParty()~ EXIT

CHAIN X3VieP leave 
~I was a fool, then. I should have never let myself open up to you. Goodbye and good riddance to you, and feel lucky if I consider coming back if you ask!~
DO ~ActionOverride("X3Vie",EscapeAreaMove("AR0406",446,1515,NE))~ EXIT  
 
CHAIN X3VieP rp2a
~Fine, I do believe you. Ugh. I guess I'll return to that awful inn, the Copper Coronet again. Don't make me admit it again, but I'll miss you.~
 END 
++ ~I'll miss you too. Take care of yourself.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1) ActionOverride("X3Vie",EscapeAreaMove("AR0406",446,1515,NE))~ EXIT 
++ ~No need for that. Just wait for me right here.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT


CHAIN X3VieP rp2b
~Hrmph, fine. Though getting back is going to be so inconvenient, I'll have to travel through the shadow plane. Ugh...don't make me admit this again, but I'll miss you.~
END
++ ~I'll miss you too. Take care of yourself.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1)PlaySound("ACT_07")MoveBetweenAreas("AR0406",[446.1515],W)~ EXIT
++ ~No need for that. Just wait for me right here.~ DO ~SetGlobal("X3VieKickedOut","LOCALS",1)~ EXIT

CHAIN IF ~Global("X3VieKickedOut","LOCALS",1)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3VieP p4a
~Do you know terribly I've been missing you, you cruel man? And now that ends. You are here, and we can be together on your travels once more.~  [X3Blank]
 END 
++ ~I've missed you terribly, Vienxay. Come with me again~ + rp5
++ ~Not yet, Vienxay, a little longer.~ + rp6


CHAIN X3VieP rp5
~Finally! Vienxay and <CHARNAME> together once more. The whole world better watch out.~
DO ~SetGlobal("X3VieKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3VieP rp6
~"A little longer". You just enjoy watching my anguish at your absence, don't you?~
EXIT
