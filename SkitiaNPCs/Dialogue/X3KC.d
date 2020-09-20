BEGIN X3KC 
// Chester in the Docks 
CHAIN IF ~AreaCheck("AR0300")~ THEN X3KC docks_conversation
~Sorry, I'm all out of cheeses. Sold my last. Come back another time.~
END 
+~Global("X3KCTalk","LOCALS",0)Global("X3KalQuest","GLOBAL",5)~+ ~I have some questions about Percy's death.~ DO ~SetGlobal("X3KCTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q1
+~Global("X3KCTalk","LOCALS",1)Global("X3KalQuest","GLOBAL",5)~+ ~I have some more questions about Percy's death.~ + q1
+~Global("X3KCTalk","LOCALS",2)Global("X3KalQuest","GLOBAL",5)~+ ~I have some more questions about Percy's death.~ + q12
++ ~Farewell then.~ EXIT 

CHAIN X3KC q1 
~Well I don't got anything else to do.~
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What was this cheese that you were selling that Percy was obessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese you were selling is Spring Luiren Cheese, a drug to halflings. It was also poisoned.~ + q5
++ ~What can you tell me of Flora?~ + q6
++ ~What can you tell me about Dallie?~ + q7 
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9

CHAIN X3KC q2 
~Taking a day off. Closed my store for the day. Selling cheeses all day everyday is exhausting.~
END 
++ ~What was this cheese that you were selling that Percy was obessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese you were selling is Spring Luiren Cheese, a drug to halflings. It was also poisoned.~ + q5
++ ~What can you tell me of Flora?~ + q6
++ ~What can you tell me about Dallie?~ + q7 
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9

CHAIN X3KC q3 
~Secret recipe. The halflings love it, and I like selling it. Mutual benefit.~
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese you were selling is Spring Luiren Cheese, a drug to halflings. It was also poisoned.~ + q5
++ ~Let me ask you something else.~ + q1
++ ~I've no more questions.~ + q9

CHAIN X3KC q4 
~Well, he was my best customer. He loved cheese, I loved making coin. A good match.~
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What was this cheese that you were selling that Percy was obessed with?~ + q3 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese you were selling is Spring Luiren Cheese, a drug to halflings. It was also poisoned.~ + q5
++ ~What can you tell me of Flora?~ + q6
++ ~What can you tell me about Dallie?~ + q7 
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9

CHAIN X3KC q5 
~So? It's not illegal. The hafllings like it. And the only person who makes poison around here besides the thieves is Flora.~
== X3KC ~So if you're thinking I'm involved, go do a bit more searching. Plenty of thieves would gut for less.~
END 
++ ~Are you even remorseful for his death? That cheese made him weak enough for the poison to do its work.~ + q10
++ ~Let me ask you something else.~ + q1
++ ~I've no more questions.~ + q9

CHAIN X3KC q6 
~She has good rat poison, which helps with my cheeses. Otherwise? I don't talk to her at all.~
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What was this cheese that you were selling that Percy was obessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese you were selling is Spring Luiren Cheese, a drug to halflings. It was also poisoned.~ + q5
++ ~What can you tell me about Dallie?~ + q7 
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9

CHAIN X3KC q7 
~She's always giving me glares. I know she wants my cheeses though. She'll break down and buy it in a matter of time.~
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What was this cheese that you were selling that Percy was obessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese you were selling is Spring Luiren Cheese, a drug to halflings. It was also poisoned.~ + q5
++ ~What can you tell me of Flora?~ + q6
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9

CHAIN X3KC q8 
~He needs to be taken off the streets. I can tolerate a pitiful beggar, but a cursing, yelling, ass? No thanks.~ 
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What was this cheese that you were selling that Percy was obessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese you were selling is Spring Luiren Cheese, a drug to halflings. It was also poisoned.~ + q5
++ ~What can you tell me of Flora?~ + q6
++ ~What can you tell me about Dallie?~ + q7 
++ ~I've no more questions.~ + q9

CHAIN X3KC q9 
~Yeah, yeah. Bye then.~
EXIT

CHAIN X3KC q10 
~Guard ruled it a suicide from what I heard. Perhaps he poured something in it himself and did it. Or a thief. Or maybe that gnome had a grudge. Either way, the guard said it was taken care of.~
END 
++ ~Who told you it was taken care of?~ + q11 
++ ~Let me ask you something else.~ + q1
++ ~I've no more questions.~ + q9

CHAIN X3KC q11 
~Bryce. He was handling it. I'm not even sure why you're asking all these questions. And I think I'm done answering them.~
DO ~SetGlobal("X3KCTalk","LOCALS",2)~
EXIT 

CHAIN X3KC q12 
~I said I'm done playing your game of questions. And I meant it.~
EXIT 

// Chase down of Chester
CHAIN IF ~AreaCheck("AR0528")OR(2)Dead("X3KBRYCE")!See("X3KBRYCE")~ THEN X3KC house_conversation
~So Bryce is dead then. We had a good thing going for a while. I'd play the role of pleasant cheese vendor, weaken the halflings, get rid of the troublesome ones, and save Bryce the excuse to throw their rots in a cell.~
== X3KC ~Some of the halflings were clever enough to suspect what was going on, but that Percy wasn't the first victim. If he hadn't survived the first dosage of poison to get noticed walking around so sick I may have never gotten caught.~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ house_interject 
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KC hc_1 

CHAIN X3KalJ house_interject 
~...How many did you murder, mate? How many of my people have been poisoned and killed by you?~
== X3KC ~Six, maybe seven? It was about to be eight.~
EXTERN X3KC hc_1 

CHAIN X3KC hc_1 
~Alas, our cleaning the streets by this special cheese comes to an end. But how did you figure out it was me?~
END 
++ ~You said you weren't there the day he died, but you were seen giving the cheese to Percy, and you've bought the poison from miss Flora.~ + hc_2
++ ~You just seemed like an evil bastard to me, really.~ + hc_3 
++ ~A wild guess.~ + hc_4 
++ ~I'm not here to answer your questions. It's time for you to answer for what you've done.~ + hc_5

CHAIN X3KC hc_2 
~Hrmph. I had thought no one would pay attention, a pity I made such an error. So much more good could have been done.~
END
++ ~It is time for you to answer for what you've done.~ + hc_5
++ ~Why are you doing this to the halfling people?~ + hc_6 
++ ~What was Bryce's role in all of this?~ + hc_7


CHAIN X3KC hc_3 
~So a case of personal distaste. Dissapointing that it came down to that on why this comes to an end.~
END 
++ ~It is time for you to answer for what you've done.~ + hc_5
++ ~Why are you doing this to the halfling people?~ + hc_6 
++ ~What was Bryce's role in all of this?~ + hc_7

CHAIN X3KC hc_4 
~A...wild guess? You are either joking, or a complete moron. That I lose to a fool like you only makes me angry.~
END 
++ ~It is time for you to answer for what you've done.~ + hc_5
++ ~Why are you doing this to the halfling people?~ + hc_6 
++ ~What was Bryce's role in all of this?~ + hc_7


CHAIN X3KC hc_6 
~Because they are wicked. They have stolen from my store more times than I count, and with them comes crime. Once I stocked on my special cheese, I was able to break them like poison for rats... and then able to poison them, once they were completely weakened. Like. A. Rat.~
END 
++ ~It is time for you to answer for what you've done.~ + hc_5
++ ~What was Bryce's role in all of this?~ + hc_7

CHAIN X3KC hc_7 
~Bryce shared my hatred, and was able to ensure that any guard notices of my action were quickly taken care of. Amn often will support its merchants against such filthy criminals, especially when we have the coin.~
END 
++ ~It is time for you to answer for what you've done.~ + hc_5
++ ~Why are you doing this to the halfling people?~ + hc_6 


CHAIN X3KC hc_5 
~And what will be that answer? Death? Imprisonment? Or just angry, glowering stares?~
END 
IF ~IsValidForPartyDialogue("X3Kal")!Dead("X3KJIL")~ EXTERN X3KalJ kale_decision //No Kale route if Jillian dead, forced death route.
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KC player_decision

CHAIN X3KC player_decision 
~Well? Say it!~
END 
++ ~Death. The only suiting fate for a fiend like you.~ + death_route 
++ ~You've done too much to be imprisoned. Your life is forfeit.~ + death_route 
+~!Dead("X3KJIL")~+ ~Against my better judgement, you'll be spared death. Prison is your fate.~ + imprison_route 
+~!Dead("X3KJIL")~+ ~I'm taking you back to Jillian. You'll answer for your crimes in the way that is right.~ + imprison_route 
+~Dead("X3KJIL")~+ ~I would have spared you, but Jillian is dead and there is no guard to take you away. Your fate is sealed.~ + death_route

CHAIN X3KC death_route 
~So...death, then. I won't go down just taking it. Give it your best!~
DO ~Enemy()~ 
EXIT 

CHAIN X3KC imprison_route 
~A pity. Lead on then. But know that no bar can imprison me forever.~
DO ~SetGlobal("X3KalQuest","GLOBAL",9)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("AR0332","",[349.373],NW))
ActionOverride(Player2,LeaveAreaLUA("AR0332","",[308.404],NW))
ActionOverride(Player3,LeaveAreaLUA("AR0332","",[266.435],NW))
ActionOverride(Player4,LeaveAreaLUA("AR0332","",[297.467],NW))
ActionOverride(Player5,LeaveAreaLUA("AR0332","",[335.443],NW))
ActionOverride(Player6,LeaveAreaLUA("AR0332","",[376.396],NW))	
MoveBetweenAreas("AR0332",[241.396],NE)
Wait(1)
SetInterrupt(TRUE)~
EXIT 

CHAIN X3KalJ kale_decision 
~...He's got to die, mate. All of the kin he's murdered. You think prison is really enough? You think this guy won't slime his way out of it someday?~
== X3KalJ ~Death though. That's final. That's a justice we can be sure in.~
END 
IF ~IsValidForPartyDialogue("MAZZY")~ EXTERN MAZZYJ Finale_Kale.Mazzy
+~GlobalGT("X3KalApp","GLOBAL",29)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)RandomNum(3,1)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)!RandomNum(3,1)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)~ EXTERN X3KalJ no_trust
+~!GlobalGT("X3KalApp","GLOBAL",29)!CheckStatGT(Player1,15,CHR)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)~ EXTERN X3KalJ no_trust
++ ~If you want to kill him, then do it.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ Finale_Kale_C_1
++ ~You're right. He deserves death. Let's kill him.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ Finale_Kale_C_1 


CHAIN MAZZYJ Finale_Kale.Mazzy
~I know the rage that you feel, Kale. It was the same when I lost Patrick. Murdering him won't change the past. Let justice have hold of his fate, not your rage.~
== X3KalJ ~You trust the cells then, the prison, this "human" society? I want to believe you Mazzy. But damn, this isn't Gullykin.~
END 
+~GlobalGT("X3KalApp","GLOBAL",29)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)RandomNum(3,1)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)!RandomNum(3,1)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)~ EXTERN X3KalJ no_trust
+~!GlobalGT("X3KalApp","GLOBAL",29)!CheckStatGT(Player1,15,CHR)~+ ~This isn't the way, Kale. Trust in the system of justice. Trust Jillian. If we can't trust the people who protect us, then our will is no better than Chester's here, only arbitrating on his own wishes.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)~ EXTERN X3KalJ no_trust
++ ~If you want to kill him, then do it.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ Finale_Kale_C_1
++ ~You're right. He deserves death. Let's kill him.~ DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@316)~ EXTERN X3KalJ Finale_Kale_C_1 

CHAIN X3KalJ Finale_Kale_C_1 
~Gladly.~
EXTERN X3KC death_route 

CHAIN X3KalJ trust
~...All right, mate. For once, I'll believe in society and its systems of justice. But I hope I don't live to regret it.~
DO ~SetGlobal("X3KalLawful","GLOBAL",1)~ // Kale can become lawful if the PC encourages this shift in a talk later.
EXTERN X3KC imprison_route

CHAIN X3KalJ no_trust 
~I'm sorry mate. I don't trust you enough, and I trust the world out there even less. He dies, now.~
EXTERN X3KC death_route 



