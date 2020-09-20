BEGIN X3KF

CHAIN IF ~GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KF store_con_two 
~I'm glad you got to the bottom of what happened to Percy. Finally some justice in this city. Did you want any fresh brewed potions?~
END 
++ ~Certainly, let me see what you have for sale.~ + store_open
++ ~Not at the moment.~ EXIT 

CHAIN IF ~!GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KF store_con
~Hello! Looking for some potions? Freshly brewed and guaranteed to be safe to use.~
END 
+~Global("X3KFTalk","LOCALS",0)Global("X3KalQuest","GLOBAL",5)~+ ~Actually, I'd like to ask you some questions about Percy's murder.~ DO ~SetGlobal("X3KFTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q1
+~Global("X3KFTalk","LOCALS",1)Global("X3KalQuest","GLOBAL",5)!Global("X3KOffended","LOCALS",1)~+ ~I have some more questions about Percy's murder.~ + question_again
++ ~Certainly, let me see what you have for sale.~ + store_open
++ ~Not at the moment.~ EXIT 

CHAIN X3KF store_open
~Let me know if you see anything that you like.~
DO ~StartStore("X3KP",LastTalkedToBy())~ // Custom potion store, similar to Roger's but no cursed items.
EXIT 

CHAIN X3KF q1 
~Of course. I'm surprised there hasn't been anyone to come by sooner. Ask.~
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What do you know about the cheese Percy was obsessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese was poisoned by your potions. What do you have to say to this?~ + q5
++ ~What can you tell me of Chester?~ + q6
++ ~What can you tell me about Dallie?~ + q7 
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9


CHAIN X3KF question_again 
~Of course. Ask whatever you like.~
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What do you know about the cheese Percy was obsessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese Percy was obessed with was Spring Luiren Cheese, and was poisoned by your potions. What do you have to say to this?~ + q5
++ ~What can you tell me of Chester?~ + q6
++ ~What can you tell me about Dallie?~ + q7 
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9

CHAIN X3KF q2 
~I was tending to my store. I saw him by Chester's shop, but he didn't make his way to me at all. I had pushed him about breaking things off with Dallie and commiting with me the day before and thought he was still mad, so didn't think anything of it. I regret not checking up on him now.~
END 
++ ~Perhaps he had not chosen you, and you saw fit to get back at him.~ + q10 
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

CHAIN X3KF q3 
~Not much. I always thought it was rather foul, but he enjoyed it so much. Always bought some before or after talking to me, or even if he didn't speak to me at all. Chester probably enjoyed the business, the halfling people always seemed to be the ones who bought that particular type of cheese.~
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese is Spring Luiren Cheese, and was poisoned by your potions. What do you have to say to this?~ + q5
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

CHAIN X3KF q4 
~Percy and I were lovers. I know it was wrong, he was in a relationship with Dallie. But I was hoping he would break things off with her, if not for us, at least for her sake. She didn't deserve to get hurt. I gave him an ultimatum about it the day before he died. Maybe that was the wrong thing to do.~
DO ~SetGlobal("X3KnowledgeAffair","GLOBAL",1)~
END 
++ ~Perhaps he had not chosen you, and you saw fit to get back at him.~ + q10 
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

CHAIN X3KF q5 
~I...didn't know this. My products, truly? I can and have made poisons for custom orders, but they're just for rats that might get at food in storages or for people's homes, not to murder someone. Maybe they could, but I would'nt know. I'd never wanted to know.~
END 
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

CHAIN X3KF q6 
~I don't speak to him much, though he made a custom order of rat poison for a pest problem he's had. People sure like his products, I'm not suprised the animals do as well.~
END 
++ ~What were you doing at the time Percy died?~ + q2
++ ~What do you know about the cheese Percy was obsessed with?~ + q3 
++ ~What was your relationship with Percy like?~ + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese Percy was obsessed with was Spring Luiren Cheese, and was poisoned by your potions. What do you have to say to this?~ + q5
++ ~What can you tell me about Dallie?~ + q7 
++ ~What can you tell me about Martin?~ + q8 
++ ~I've no more questions.~ + q9

CHAIN X3KF q7 
~I pity Dallie. She's a nice enough woman, though she doesn't have a very pleasing job. Everytime she comes here buying a potion I feel so guilty that I'm with Percy. I guess now that he's gone it doesn't matter.~
END 
++ ~Would she have reason to kill Percy if she did find out?~ + q11
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

CHAIN X3KF q8 
~I feel sorry for him. I try to give him a few coins everyday so he has enough to get by. Maybe I should offer him a proper job, but he's rather mean to other people, especially Percy, and that might be bad for business.~
END 
++ ~Why was he so mean to Percy?~ + q12
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

CHAIN X3KF q9 
~I hope my answers have been helpful for you.~
EXIT 

CHAIN X3KF q10 
~That is a rather peculiar thing to say. I love Percy. But he was hurting Dallie. If he chose her over me, I could at least know that he would be devoted to only her and not be so tormented about it.~
== X3KF ~Please, I need to get back to my customers. I have little else to add if you're going to make assumptions of who I am like that.~
EXIT 

CHAIN X3KF q11 
~I don't know. I've never knew her like that, she always seemed sound and reasonable. But when someone gets really angry...really hurt, and really emotional, sometimes they could do something they don't intend to.~
END 
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

CHAIN X3KF q12 
~Percy couldn't stand his behavior, and Martin didn't like how he insulted his rags and lack of wealth. They got in a nasty fight once, it got Percy jailed for a while. They've rarely spoken since.~
END 
++ ~Let me ask you something else.~ + question_again
++ ~I've no more questions.~ + q9

