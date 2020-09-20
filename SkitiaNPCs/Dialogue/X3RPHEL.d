BEGIN X3RKID 
BEGIN X3RM
BEGIN X3RPHEL
BEGIN X3RPIR4

CHAIN IF ~OR(2)!IsValidForPartyDialogue("X3Reb")GlobalGT("X3RMSpell","GLOBAL",2)~ THEN X3RPHEL NoTalk 
~I am the personal guest of Desharik, and not a person you want to cross. Begone from my sight.~
EXIT 

CHAIN IF ~True()~ THEN X3RM OneLine 
~We have nothing to talk about. I suggest you leave me be.~
EXIT 

CHAIN IF ~True()~ THEN X3RPIR4 OneLine2 
~Har har, has Desharik gone soft? Anyone seems allowed in here now.~
EXIT 


CHAIN IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("X3RMSpell","GLOBAL",2)~ THEN X3RPHEL Confrontation 
~Well, well, well. Against all odds, against all *wisdom*, my wife shows her face to me again.~
== X3RebJ ~Raban? Raban!~
== X3RKID ~M-mother?~
== X3RPHEL ~Stay silent, boy. This woman tried to have you killed. She is here now to finish the job.~
== X3RebJ ~Don't lie to him, Phelgrim. The only murderer here is you. You destroyed my life. His life. And so many others.~
== X3RPHEL ~The term for you is *master*, Rebecca. How did my heart ever get so charmed by you, when you have completely forgotten your place, how much I have taken care of, how I saved you from a lesser life in the bordello.~
END 
++ ~We're just here for the kid, Phelgrim. Hand him over to his mother and we'll be out of your hair.~ + convince 
++ ~You sicken me, slaver pirate. It is no marriage at all if you insist your wife calls you "master".~ + convince
+~Global("AsylumPlot","GLOBAL",10)~+ ~Look, I'm sure you have a lot of marital problems to work out, but I personally just want to get into Spellhold.~ + Spellhold
++ ~I've had enough of you. Raise your blades and let's get this over with.~ + fight

CHAIN X3RPHEL Spellhold 
~Hrm, is that so? I cannot have Rebecca walking around here, not with my reputation. But if you were all taken into Spellhold that would be sufficient.~
END 
IF ~OR(2)Global("PirateRefused","GLOBAL",1)Dead("PPDESH")~ EXTERN X3RPHEL Spellhold_No
IF ~!Global("PirateRefused","GLOBAL",1)!Dead("PPDESH")~ EXTERN X3RPHEL Spellhold_Yes

CHAIN X3RPHEL Spellhold_Yes
~Agree to leave the child to me, and I will ask Desharik to get you into Spellhold.~
END 
++ ~Not a chance. The child comes with us as well.~ + convince
++ ~You have a deal, sir.~ EXTERN X3RebJ deal // This will shift to Desharik. Technically you can return to Phil later, although Recorder will be angry.
++ ~This sounds like trickery. I'll have none of it. Raise your blades.~ + fight
++ ~I'll have to think about this.~ EXTERN X3RebJ think_about

CHAIN X3RPHEL Spellhold_No 
~Unfortunately Desharik won't help you. You will get no entry into Spellhold here.~
END 
++ ~Be that as it may, we would still ask for the child.~ + convince
++ ~You are no help to us, and you are only in our way. We will fight you if we must!~ + fight
++ ~Then there is nothing further here for me to do.~ EXTERN X3RebJ nothing_further

CHAIN X3RebJ think_about 
~We can't just "think" about this, <CHARNAME>. This is my son. We need to do something now.~
END 
++ ~You're right. We won't leave without him, then.~ EXTERN X3RPHEL convince
++ ~If you're going to push it, I need to get into Spellhold above all else. I'm making a deal.~ + deal 
++ ~As you wish. We will fight him then.~ EXTERN X3RPHEL fight 

CHAIN X3RebJ deal 
~You are making a deal with this monster? I thought you were trustable, <CHARNAME>. But you make a deal with the devil to get into Spellhold instead.~
== X3RebJ ~Please reconsider. Please do not have my child linger with this monster.~
== X3RPHEL ~The only monster here is you, Rebecca. If you had understood your place and not tried to kill your own child, you would have known happiness.~
END 
++ ~I'm sorry Recorder. But we need to get into Spellhold, no matter what it takes.~ EXTERN X3RPHEL deal_confirmed
++ ~You're right, Recorder. We'll do it your way.~ EXTERN X3RPHEL convince 
++ ~Fine. Let's kill this bastard and find another way in.~ EXTERN X3RPHEL fight

CHAIN X3RebJ nothing_further 
~Nothing further? <CHARNAME>, that slaver has my child. I'm not leaving without him.~
END 
++ ~We cannot take him with us, Recorder. Where we go it is far too dangerous, even if we managed to best your husband here.~ + with_us
++ ~I said *no*, Recorder. We are here for Spellhold, and nothing else.~ EXTERN X3RPHEL nothing_else 
++ ~Very well then, what do you have in mind?~ EXTERN X3RPHEL convince
++ ~Fine. Let's kill him.~ EXTERN X3RPHEL fight

CHAIN X3RebJ with_us 
~I know someone who could help get him out. We just have to try, please!~
END 
++ ~I said *no*, Recorder. We are here for Spellhold, and nothing else.~ EXTERN X3RPHEL nothing_else 
++ ~Very well then, what do you have in mind?~ EXTERN X3RPHEL convince
++ ~Fine. Let's kill him.~ EXTERN X3RPHEL fight

CHAIN X3RPHEL deal_confirmed
~Desharik, these inmates need to be put into Spellhold. They are a bit...mad.~
== X3RebJ ~Furious. I *will* see my son again. You are not going to keep him from me. You won't, you won't, you won't...~
== X3RPHEL ~Very mad in fact. And they blight our company with their presence. I want to get back to enjoying that delicious tea.~
DO ~DisplayStringNoNameDlg(Player1,@409)IncrementGlobal("X3RebApp","GLOBAL",-27)AddJournalEntry(@11,QUEST)SetGlobal("X3RFAIL","GLOBAL",2)SetGlobal("X3RMSpell","GLOBAL",4)
ActionOverride("X3RPHEL",DestroySelf())
ActionOverride("X3RPIR4",DestroySelf())
ActionOverride("X3RKID",DestroySelf())
ActionOverride("X3RM",DestroySelf())~ 
EXTERN PPDESH 26


CHAIN X3RPHEL nothing_else 
~A wise <PRO_MANWOMAN>. What are you going to do, my *wife*. Are you going to try to take all of us on your own?~
== X3RebJ ~You have no idea how much I want to send a magic missile into you right now and try. You took away everything from me.~
== X3RPHEL ~I did not drag you from Lantan's shores to Brynnlaw. I rescued you from the Bordello and you repaid me with betrayal!~
== X3RebJ ~You were a hope when I had nothing. But you turned out to be no better. You were cruel and evil, and had I been less naive, I would have never let you "rescue" me.~
== X3RPHEL ~And yet my son wishes to stay with me, don't you boy?~
== X3RKID ~Y-yes, f-father.~
== X3RebJ ~Don't say that Raban, don't! You don't want this. If you only knew what was outside of this horrible place.~
== X3RPHEL ~Your lies end here, Recorder. You will not be leaving with him. You will leave with nothing but your life in tact. The punishment of you never seeing him again is good enough for me.~
== X3RebJ ~One day Phelgrim...one day I will have my son back.~
== X3RPHEL ~Take the boy away, Aerik. We wouldn't want her to think to try anything funny later.~
== X3RM ~Of course, Phelgrim.~
DO ~DisplayStringNoNameDlg(Player1,@409)IncrementGlobal("X3RebApp","GLOBAL",-27)SetGlobal("X3RMSpell","GLOBAL",3)~
EXIT 

CHAIN X3RPHEL fight 
~You see, Raban, your mother has not changed. When she is done with us, she will kill you as well.~
== X3RKID ~I don't want to see you fighting. I want us to get out of here.~
== X3RPHEL ~Aerik will see to your exit, child. I will join you as soon as our "argument" is over.~
== X3RM ~I am working on the spell now, Phelgrim. When it is done I shall help you incinerate these fools.~
== X3RebJ ~We need to disrupt his spell quickly, before it is too late!~
DO ~ActionOverride("X3RM",Enemy())ActionOverride("X3RPHEL",Enemy())ActionOverride("X3RPIR4",Enemy())ActionOverride("PPDESH",Enemy())SetGlobal("X3RMSpell","GLOBAL",1)~
EXIT

CHAIN X3RPHEL convince 
~I feel like there is a misunderstanding. Your son is my son, and is my property. As were you.~
== X3RebJ ~How can you even say that? He is a child, not some object for you to control.~
== X3RPHEL ~There is no difference. Children are docile and obedient. They are slaves to our will and when they do not obey they are punished.~
== X3RPHEL ~Raban is far more obedient than you ever have been. When he grows older he will be a perfect asset to my businesses and trades.~
== X3RebJ ~And...that is why I tried to do what I do. It is no life for a child. It is no life at all.~
== X3RPHEL ~Do you hear that Raban? She confesses. Is this really a woman you want to go to?~
END 
++ ~He calls you property child. You are nothing to him, and your mother only wants to protect you. She will not hurt you.~ + ignore
++ ~What is it you want? Coin? We can pay you for the boy if you insist.~ + coin
++ ~Enough of this. Your blood will spill now.~ + fight  

CHAIN X3RPHEL coin 
~Coin? No amount of coin will suffice! That slave embarrased me in front of my men and defied her own husband. She will never have him back, he would not exist without me.~
END 
++ ~Do you listen to this, Raban? He does not care for you.~ + ignore
++ ~So you will not even compromise? You admit in front of your own child all of your actions are out of spite.~ + ignore
++ ~Then you force us to fight you, Phelgrim.~ + fight

CHAIN X3RPHEL ignore
~Ignore the <PRO_MANWOMAN>, child. Go to the wizard. You will be leaving with him now.~
== X3RKID ~F-father, I want to speak with mother. To understand. I've not seen her since that day.~
== X3RPHEL ~You dare defy me, boy? It seems your mother's very presence is a toxin to your obedience. Go to the wizard now or you will feel my palm on your face!~
END 
++ ~You will not hurt the boy, Phelgrim!~ + fight_2
++ ~Even your own child is beginning to see things differently, Phelgrim. You have no control.~ + fight_2
++ ~There is only one way this ends, Phelgrim. With your body on the floor.~ + fight 

CHAIN X3RPHEL fight_2 
~Enough of this. Get the boy out of here now, Aerik!~
== X3RM ~The spell will not work unless the boy consents to my will to teleport him.~
== X3RPHEL ~Then focus your spells on killing them. Rebecca and her friends die today!~
DO ~DisplayStringNoNameDlg(Player1,@419)IncrementGlobal("X3RebApp","GLOBAL",9)ActionOverride("X3RM",Enemy())ActionOverride("X3RPHEL",Enemy())ActionOverride("X3RPIR4",Enemy())ActionOverride("PPDESH",Enemy())~
EXIT 

CHAIN IF ~Dead("X3RPHEL")GlobalLT("X3RebQuest","GLOBAL",13)~ THEN X3RKID Talk 
~F-father...~
== X3RebJ ~I am so, so sorry it came to this, Raban.~
== X3RKID ~Mother...what is going to happen now? Are you going to hurt me?~
== X3RebJ ~Never.~
END 
++ ~What is the plan, Recorder?~ EXTERN X3RebJ plan
++ ~Well...we can't bring him with us. How are we going to get him off this island?~ EXTERN X3RebJ plan 
++ ~I'm glad that everything is sorted out.~ EXTERN X3RebJ plan

CHAIN X3RebJ plan 
~There must be someone in Brynnlaw that we can trust to smuggle him out...we just need to ask around. Do you trust me, Raban?~
== X3RKID ~I do, mother.~
== X3RebJ ~I'll never, ever lose you again. We're going to find a way to help you. And then we'll be right back. I promise.~
== X3RKID ~You promise?~
== X3RebJ ~I do. Don't go anywhere, and don't go with anyone. We'll be right back for you.~
DO ~AddJournalEntry(@13,QUEST)SetGlobal("X3RebQuest","GLOBAL",13)~
EXIT 

EXTEND_TOP CALAHA 17
+~Global("X3RebQuest","GLOBAL",13)~+ ~Wait. Can you help us again? This time, we need you to smuggle out Recorder's son, Raban.~ + Raban1
END 

CHAIN CALAHA Raban1 
~The poor lad was never seen as anymore than labor by his father, I tell ye. I can be doing that, But it will cost the same as before, 100 coins ye payin'.~
END 
+~PartyGoldGT(99)~+ ~Here you go.~ + Raban3
++ ~I cannot pay that amount.~ EXTERN CALAHA 4

EXTEND_TOP CALAHA 0
+~Global("X3RebQuest","GLOBAL",13)~+ ~Would you be able to help us smuggle out a boy named Raban?~ + Raban2
END 

CHAIN CALAHA Raban2 
~The poor lad was n'ver seen as anymore than labor by the father, I tell ye. I can be doing that, but ye'll need to give me a hundred coins. I'd do it for free, but I can't when I have no money of me own.~
END 
+~PartyGoldGT(99)~+ ~Here you go.~ + Raban3
++ ~I cannot pay that amount.~ EXTERN CALAHA 4

CHAIN CALAHA Raban3 
~Tell the lad to come on over, then. I'll take care of him and get him to Ulgoth's Beard.~
DO ~SetGlobal("X3RebQuest","GLOBAL",14)AddJournalEntry(@14,QUEST)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Thank you, Mr. Calahan. You have no idea what this means to me.~
== CALAHA IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~No lad deserves to suffer as he did. Glad to do my part, lass.~
EXIT 

CHAIN IF ~GlobalGT("X3RebQuest","GLOBAL",12)~ THEN X3RKID End 
~What's happening now?~
END
+~Global("X3RebQuest","GLOBAL",14)~+ ~We've found passage for you by a man named Calahan. Go see him right away.~ DO ~SetGlobal("X3RebQuest","GLOBAL",15)AddJournalEntry(@15,QUEST_DONE)~ + Go 
++ ~Just wait here a little longer, we've not found passage for you yet.~ EXIT 

CHAIN X3RKID Go 
~I used to be so scared, but now I think there might be hope. I can finally leave!~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ Goodbye 
IF ~!IsValidForPartyDialogue("X3Reb")~ DO ~EscapeArea()~ EXIT 

CHAIN X3RebJ Goodbye 
~I'm sorry we didn't get a chance to bond or re-connect, Raban. I wish we had more time.~
== X3RKID ~You aren't coming with me, mother?~
== X3RebJ ~Not yet. But when I'm done helping <CHARNAME>, I am going to join you, and we'll never be seperated again.~
== X3RKID ~But...you promised.~
== X3RebJ ~And I meant it. But <CHARNAME> has lost something precious too...they need my help.~
== X3RKID ~I...I understand.~
== X3RebJ ~Go to him, Raban. I will see you again. I will.~
== X3RKID ~Goodbye, mother.~
DO ~AddJournalEntry(@15,QUEST_DONE)DisplayStringNoNameDlg(Player1,@419)IncrementGlobal("X3RebApp","GLOBAL",12)EscapeArea()~ EXIT 

CHAIN IF ~True()~ THEN X3RKID OneLine3 
~I'll gets in trouble if I chat with you. F-father is real strict.~
EXIT


