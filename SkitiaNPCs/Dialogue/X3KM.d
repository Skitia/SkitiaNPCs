BEGIN X3KM

CHAIN IF ~GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KM chester_caught 
~Now that the cheese merchant has been caught, maybe I ought to see if he left anything at his stall, he won't need them anymore, and I'm damn hungry...~
EXIT 

CHAIN IF ~Global("X3KMTalk","LOCALS",0)!GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KM first_talk 
~Spare a coin, ye git? I'm sure you've enough to share.~
END 
++ ~Why so rude?~ + nq.1
+~Global("X3KalQuest","GLOBAL",5)~+ ~I actually have some questions to ask you about Percy's murder.~ DO ~SetGlobal("X3KMTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q.1
+~PartyGoldGT(0)~+ ~Certainly, here is a coin.~ DO ~TakePartyGold(1)~ + nq.4
++ ~I don't have any coins for you, leave me be.~ + nq.3

CHAIN IF ~Global("X3KMTalk","LOCALS",1)!GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KM second_talk 
~Spare a coin, already. Have pity on us, damn you!~
END 
+~Global("X3KalQuest","GLOBAL",5)!Global("X3KOffended","LOCALS",1)~+ ~I have some more questions to ask you about Percy's murder.~ + q.11
+~Global("X3KalQuest","GLOBAL",5)Global("X3KOffended","LOCALS",1)~+ ~I have some more questions to ask you about Percy's murder.~ + q.14
+~PartyGoldGT(0)~+ ~Certainly, here is a coin.~ DO ~TakePartyGold(1)~ + nq.2 
++ ~I don't have any coins for you, leave me be.~ + nq.3 

CHAIN X3KM nq.1
~It's the only way to get your bloody attention. Now give me a coin.~
END 
+~Global("X3KalQuest","GLOBAL",5)~+ ~I actually have some questions to ask you about Percy's murder.~ DO ~SetGlobal("X3KMTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q.1
+~PartyGoldGT(0)~+ ~Certainly, here is a coin.~ DO ~TakePartyGold(1)~ + nq.4
++ ~I don't have any coins for you, leave me be.~ + nq.3

CHAIN X3KM nq.2 
~Damn right you should give me that coin. About time someone respects the poor.~
EXIT 

CHAIN X3KM nq.3 
~Damn you. You're all the same uncaring gits.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'd say we could have given him something. Maybe. If he was less bristling.~
EXIT 

CHAIN X3KM nq.4
~Damn right you should give me that coin. About time someone respects the poor.~
END 
++ ~I actually have some questions to ask you about Percy's murder.~ DO ~SetGlobal("X3KMTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q.1


CHAIN X3KM q.1
~Never liked him. Good that he died. Was never nice to me and I didn't care for it one bit.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Sheesh, pal. That's....something to say.~
END 
++ ~I imagine your relationship was a poor one?~ + q.2
++ ~You were the first to find his body. What can you tell me of what you saw?~ + q.3
++ ~Can you tell me anything about the cheese he was always buying?~ + q.4 
++ ~What can you tell me about Flora?~ + q.5
++ ~What can you tell me about Dallie?~ + q.6
++ ~What can you tell me about Chester?~ + q.7
++ ~What were you doing before Percy died?~ + q.8
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.2
~Poor? I got him put in a cell once when we got in a fight. and that was the best moment of our "friendship". Don't care for him one bit. Not sure why I didn't get thrown in to, but that made it even more worth the hassle.~
END 
++ ~You were the first to find his body. What can you tell me of what you saw?~ + q.3
++ ~Can you tell me anything about the cheese he was always buying?~ + q.4 
++ ~What can you tell me about Flora?~ + q.5
++ ~What can you tell me about Dallie?~ + q.6
++ ~What can you tell me about Chester?~ + q.7
++ ~What were you doing before Percy died?~ + q.8
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.3 
~Not much. He had a few coins, which I took as debts owed for the injuries he gave me, and old cheese. Didn't see any blood seeping from him. That's how people usualyl die, ain't it?~
END 
++ ~You wanted him dead. You don't need to make someone bleed to kill him.~ + q.10 
++ ~Let me ask you something else.~ + q.11
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.4 
~The cheese? It stunk. I don't know why he liked that rubbish so much.~
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese is Spring Luiren Cheese, and it was poisoned by a potion you could get in the market.~ + q.12
++ ~Let me ask you something else.~ + q.11
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.5
~Nice enough lady gnome, actually gives me a coin at the end of her shop work every day. Percy stopped by and spent a lot of time with her. Confusing really, I thought he was with a halfling named Dallie. She was tending her shop when he died though. Looked mighty grief stricken when I was shouting for the guards when I saw him.~
END 
++ ~Would she have any reason to kill Percy?~ + q.13
++ ~Let me ask you something else.~ + q.11
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.6 
~She lights the lighthouse fire when a ship comes in. I don't know anything else about her except she pretends not to hear me when I ask for a coin, and she's Percy's girl, so that's probably why.~
END 
++ ~I imagine your relationship was a poor one?~ + q.2
++ ~You were the first to find his body. What can you tell me of what you saw?~ + q.3
++ ~Can you tell me anything about the cheese he was always buying?~ + q.4 
++ ~What can you tell me about Flora?~ + q.5
++ ~What can you tell me about Chester?~ + q.7
++ ~What were you doing before Percy died?~ + q.8
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.7
~Runs the cheese shop. Saw him selling his last of that cheese Percy always gets before he died, then he closed up shop for the day. Not many people buy cheese, I spend my begging coins elsewhere.~
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese he may have sold is Spring Luiren Cheese, and it was poisoned by a potion you could get in the market.~ + q.12
++ ~Let me ask you something else.~ + q.11
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.8
~Trying to get some damn coins to earn some food. A beggar's got tomake his living.~
END 
++ ~I imagine your relationship was a poor one?~ + q.2
++ ~You were the first to find his body. What can you tell me of what you saw?~ + q.3
++ ~Can you tell me anything about the cheese he was always buying?~ + q.4 
++ ~What can you tell me about Flora?~ + q.5
++ ~What can you tell me about Dallie?~ + q.6
++ ~What can you tell me about Chester?~ + q.7
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.9
~Well, bugger off, then. Beggar's got to make his coins, and he can't make them talking to you all day.~
EXIT 

CHAIN X3KM q.10 
~You insinuating something? Listen, if I wanted him dead, I'd be in a cell and laughing about it. That git deserves what he got, but I'm not stupid enough to do it myself.~
DO ~SetGlobal("X3KOffended","LOCALS",1)~
== X3KM ~Bugger off. I've got to make my coins, and yer little comments got me even grumpier now.~
EXIT 

CHAIN X3KM q.11 
~Make it quick.~
END 
++ ~I imagine your relationship was a poor one?~ + q.2
++ ~You were the first to find his body. What can you tell me of what you saw?~ + q.3
++ ~Can you tell me anything about the cheese he was always buying?~ + q.4 
++ ~What can you tell me about Flora?~ + q.5
++ ~What can you tell me about Dallie?~ + q.6
++ ~What can you tell me about Chester?~ + q.7
++ ~What were you doing before Percy died?~ + q.8

CHAIN X3KM q.12 
~I don't know what that is supposed to mean. Cheese is cheese. But the only one who sells potions or poisons around here is Miss Flora. Maybe he angered the little gnome lady to stop being so nice, eh?~
END 
++ ~Let me ask you something else.~ + q.11
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.13
~Maybe he said something she really didn't like. Beats me. She's the nicest gnome lady I know.~
END 
++ ~Let me ask you something else.~ + q.11
++ ~I've no more questions.~ + q.9

CHAIN X3KM q.14 
~Ha, I'm done answering you. I've got begging to do and you be disturbing my work.~
EXIT 