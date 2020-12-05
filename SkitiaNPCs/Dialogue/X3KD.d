BEGIN X3KD

CHAIN IF ~Global("X3KDallieTopic","LOCALS",0)~ THEN X3KD first_encounter 
~Hello. Do you have a ship that is coming in that needs the fire lit?~
END 
+~Global("X3KalQuest","GLOBAL",5)~+~Are you Dallie? I have some questions for you about Percy's death that we are looking into.~ DO ~IncrementGlobal("X3KDallieTopic","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + fe.1
++~Never mind. Farewell.~ EXIT 

CHAIN X3KD fe.1 
~Percy...from what I understood, he died from an illness. I miss him. Ask what you will, if it will lead to answers.~
END 
++ ~What was your relationship with Percy like?~ + fe.2 
++ ~What were you doing on the day he died?~ + fe.3
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ ~Did you know he was having an affair with Flora?~ + fe.4
++ ~Do you know anything about the cheese he was eating that day?~ + fe.5
++ ~I don't have any other questions.~ + fe.6

CHAIN X3KD fe.2
~Percy was my lover. We were promised to be handfasted, but...well he died, though things were getting strain. He was often out, and unusually obsessed with that cheese.~
== X3KD ~I was considering call things off for a time.~
END 
++ ~What were you doing on the day he died?~ + fe.3
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ ~Did you know he was having an affair with Flora?~ + fe.4
++ ~Do you know anything about the cheese he was eating that day?~ + fe.5
++ ~I don't have any other questions.~ + fe.6

CHAIN X3KD fe.3 
~I was working the lighthouse, here. There was a ship expected to come in, and I had to prepare the fire to last all night.~
== X3KD ~I'm sure a lot of people could confirm it, though I admit none of them are nearby and just coming and going sailors.~
END 
++ ~What was your relationship with Percy like?~ + fe.2 
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ ~Did you know he was having an affair with Flora?~ + fe.4
++ ~Do you know anything about the cheese he was eating that day?~ + fe.5
++ ~I don't have any other questions.~ + fe.6

CHAIN X3KD fe.4 
~I...suspected it. It is true, then? There are terrible, mean words I want to say about Percy now. But because he is dead, I won't.~
END 
++ ~It is certainly a motive for killing him.~ + fe.7
++ ~I'm sorry. This must be painful for you.~ + fe.8
++ ~Let me ask you something else.~ + fe.9
++ ~I don't have any other questions.~ + fe.6

CHAIN X3KD fe.5 
~Only that he was crazy about it. It was like...a very fine wine to him. I admit it had an appealing aroma, but I never tried a bit after seeing what it did to him.~
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~It is Spring Luiren Cheese. It's a drug.~ + fe.11 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~The cheese was poisoned by someone who slipped it into the cheese.~ + fe.12
++ ~Let me ask you something else.~ + fe.9
++ ~I don't have any other questions.~ + fe.6

CHAIN X3KD fe.6
~Okay. I hope my answers were helpful at least.~
EXIT 

CHAIN X3KD fe.7
~For killing him? Percy was sometimes irritating, sometimes selfish, and sometimes just an ass. But I would never, ever kill him. You have to believe me.~
DO ~SetGlobal("X3KOffended","LOCALS",1)~
EXTERN X3KD fe.8

CHAIN X3KD fe.8 
~This is very, very hard for me. I don't want to think about it and just work, if you don't mind. It's just too much right now.~
EXIT 

CHAIN X3KD fe.9
~What else do you want to ask?~
END 
++ ~What was your relationship with Percy like?~ + fe.2 
++ ~What were you doing on the day he died?~ + fe.3
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ ~Did you know he was having an affair with Flora?~ + fe.4
++ ~Do you know anything about the cheese he was eating that day?~ + fe.5
++ ~I don't have any other questions.~ + fe.6

CHAIN X3KD fe.11 
~Oh my. That explains everything. If I had known...I would have gotten rid of it all, whether he liked it or not. Do you think that is what killed him?~
END 
++ ~The cheese was poisoned by someone who slipped it into the cheese.~ + fe.12
++ ~I'm not sure yet. Let me ask you something else.~ + fe.9
++ ~Perhaps. I don't have any other questions for you right now, though.~ + fe.6

CHAIN X3KD fe.12 
~Poisoned? Perhaps the vendor did it? Or...the only one who sells such things is Flora. Perhaps it was bought from her? I don't know what to think anymore.~
END 
++ ~Let me ask you something else.~ + fe.9
++ ~I don't have any other questions.~ + fe.6

CHAIN IF ~Global("X3KDallieTopic","LOCALS",1)~ THEN X3KD second_encounter 
~Hello. I'm a bit busy. I need to get back to work.~
END 
+~Global("X3KalQuest","GLOBAL",5)!Global("X3KOffended","LOCALS",1)~+ ~Wait, I have a few more questions to ask regarding Percy's murder.~ + fe.9
+~Global("X3KalQuest","GLOBAL",5)Global("X3KOffended","LOCALS",1)~+ ~Wait, I have a few more questions to ask regarding Percy's murder.~ + fe.13
++~Farewell.~ EXIT 

CHAIN X3KD fe.13 
~You seemed to have no problem insinuating that I was the one who did it last time we spoke. I'm sorry, but I would rather not continue answering your questions. I'm having a miserable enough time as it is.~
EXIT 