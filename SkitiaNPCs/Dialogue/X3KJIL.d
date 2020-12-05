BEGIN X3KJIL

// In case the player killed any of the Suspect NPCs before an arrest was made.
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)OR(4)Dead("X3KC")Dead("X3KM")Dead("X3KD")Dead("X3KF")~ THEN X3KJIL quest_failed 
~<CHARNAME>, I'm afraid word has gotten around that someone has killed the suspects. I'm afraid looking into this is off the table now, but thanks for trying. We're going to handle this entirely in house. I was just staying to inform you of this, I need to run and report to my command.~
DO ~AddJournalEntry(@5,QUEST_DONE)EscapeArea()~
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalQuest","GLOBAL",3)~ THEN X3KJIL quest_start
~Kale. Not a place I expected to see you. You're not in trouble, are you?~
DO ~SetGlobal("X3KalQuest","GLOBAL",4)~
== X3KalJ ~Heh, not yet at least. Just traveling with my friend <CHARNAME> here. Look...I'll cut to the chase and all. Anyone here look into how my fathere died? In his journal, he mentions he knew you, and some other people down in the docks.~
== X3KJIL ~You always spoke so negatively of your father, Percy, so I didn't mention him, but I knew him. He could cause trouble himself, but yes, he was found dead in these docks from what I learned.~
== X3KJIL ~Still, there's little I can say or investigate. Sergeant Bryce closed the case and ruled it a suicide. That doesn't sound right to me, but he's equal to me in rank and I can't reopen it without cause.~
END 
++ ~Bryce? He was mentioned in Kale's father's journal. Supposedly he has a grudge against halflings.~ + grudge 
++ ~What if we looked into it, then?~ + can_say
++ ~Well if there's nothing to be learned, then...~ + to_learn 

CHAIN IF ~!IsValidForPartyDialogue("X3Kal")Global("X3KalQuest","GLOBAL",3)~ THEN X3KJIL quest_not_start
~Are you lost? Citizens don't usually wander into the garrison.~
END 
++ ~Are you Jillian? I am <CHARNAME>. You are mentioned in Kale's father's journal.~ + father_journal
++ ~Sorry, I think I am in the wrong place.~ EXIT 
++ ~I don't usually do what other people usually do.~ + usually_do 

CHAIN X3KJIL usually_do 
~Just don't cause trouble. We have enough of it in the docks. I hate to see foreigners bring even more of it here.~
EXIT 

CHAIN X3KJIL father_journal 
~You know about Kale's father, then? We spoke a few times but...I didn't return to the guard regiment here until after he died. Ruled a suicide by my fellow Bryce, but that just seems odd to me. He was happy, not miserable, the last time I talked to him. Even had a promise to handfast his lover, Dallie.~
== X3KJIL ~Sadly I can't reopen it however without cause or evidence, which is hard to get when you can't look into it.~
DO ~SetGlobal("X3KalQuest","GLOBAL",4)~
END 
++ ~Bryce? Percy mentioned in the journal he supposedly he has a grudge against halflings.~ + grudge 
++ ~What if we looked into it, then?~ + can_say
++ ~Well if there's nothing to be learned, then...~ + to_learn 

CHAIN X3KJIL to_learn 
~I'm sorry about your loss. May Yondalla guard him well in the Green Fields.~
EXIT 

CHAIN IF ~Global("X3KalQuest","GLOBAL",4)~  THEN X3KJIL second_talk_quest_not_started
~Hello again.~
END 
++ ~I'd like to help look more into what happened with Percy, Kale's father.~ + can_say 
++~Hello. Just seeing how you are doing.~ + how_are_you 
++ ~I was just leaving. Excuse me.~ EXIT 

CHAIN X3KJIL grudge 
~I cannot speak disrespectfully of a fellow guardsman...but, I can't deny it is true. It's possible he...didn't do his utmost in the investigation because of it.~
END 
++ ~Then we can't trust his verdict. Is there any way we can look into it ourselves?~ + can_say
++ ~There's nothing to be done, then. Thank you for your time.~ + to_learn

CHAIN X3KJIL how_are_you 
~Overworked. There's always issue with the docks. We have to be very careful about the shadow thieves, and on top of that slavers and your typical issues make a lot of hard work. But if it's to make the city better, it's worth every ounce of effort.~
EXIT 



CHAIN X3KJIL can_say
~If you want to help, I'll take it. Let me share what I can with you.~
DO ~SetGlobal("X3KalQuest","GLOBAL",5)~
== X3KJIL ~Percy was in trouble with a few individuals. I'll admit things weren't all sunny with Dallie, and there were rumors he was having an affair with the local alchemist, Flora. Days before he got put in a cell awhile as well for getting in a fight with a beggar named Martin, who curiously was the first to find his body.~
== X3KJIL ~Not the picture of a man who is good at making friends, I fear, but Percy could still be kind and caring, despite his occasional bouts.~
== X3KJIL ~I don't  know much about Chester, but he's the only cheese vendor in the docks, and Percy was found dead holding a bag of cheese. I managed to get a few samples of it, it smells awfully divine I'll say, but I know better than to eat evidence. Take it. Some of the suspects I named, or Siria, the local loremaster, could maybe get you information on this.~
DO ~CreateItem("X3KCHEES",0,0,0)GiveItem("X3KCHEES",Player1)~
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ ~Where can I find Dallie?~ DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ ~Where can I find the beggar, Martin?~ DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ ~Where can I find Chester the cheese vendor?~ DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ ~Where would the alchemist, Flora, be found?~ DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ ~Thanks. We'll take it from here.~ + con1_exit

CHAIN X3KJIL talk_temple
~Siria is usually in the temple of Oghma. She's helped the watch before with understanding details of evidence we bring to her. She doesn't charge too much for her services, either.~
END 
+~Global("X3Topic2","LOCALS",0)~+ ~Where can I find Dallie?~ DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ ~Where can I find the beggar, Martin?~ DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ ~Where can I find Chester the cheese vendor?~ DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ ~Where would the alchemist, Flora, be found?~ DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ ~Thanks. We'll take it from here.~ + con1_exit

CHAIN X3RebJ temple_talk
~Siria is my mother. She's in the temple of Oghma if you forgot. She's done this sort of service for the guards before, and she always charges a reasonable fare for her help. I'm not familiar with cheeses, but even if she isn't either, she's great at figuring it out quickly.~
EXTERN X3KJIL mother_talk

CHAIN X3KJIL mother_talk
~Siria is your mother? She has been a boon for us in the past. Give her my thanks.~
END 
+~Global("X3Topic2","LOCALS",0)~+ ~Where can I find Dallie?~ DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ ~Where can I find the beggar, Martin?~ DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ ~Where can I find Chester the cheese vendor?~ DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ ~Where would the alchemist, Flora, be found?~ DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ ~Thanks. We'll take it from here.~ + con1_exit

CHAIN X3KJIL chester_location
~He's one of the vendors that uses the stalls near the docks, just south of the Sea Bounty's Tavern.~
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ ~Where can I find Dallie?~ DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ ~Where can I find the beggar, Martin?~ DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic5","LOCALS",0)~+ ~Where would the alchemist, Flora, be found?~ DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ ~Thanks. We'll take it from here.~ + con1_exit

CHAIN X3KJIL dallie_location
~Dallie works the lighthouse, towards the southeast side of the Docks. You'll find her around there.~
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic3","LOCALS",0)~+ ~Where can I find the beggar, Martin?~ DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ ~Where can I find Chester the cheese vendor?~ DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ ~Where would the alchemist, Flora, be found?~ DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ ~Thanks. We'll take it from here.~ + con1_exit

CHAIN X3KJIL flora_location
~Flora usually operates a stand just south of the stairs leaving from the Sea Bounty's Tavern.~
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ ~Where can I find Dallie?~ DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ ~Where can I find the beggar, Martin?~ DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ ~Where can I find Chester the cheese vendor?~ DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
++ ~Thanks. We'll take it from here.~ + con1_exit


CHAIN X3KJIL beggar_location
~Martin is usually roaming around the market stands, towards the southwest side of the Docks. Just watch your pockets if you talk to him. He's been arrested for theft once before.~
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ ~Where can I find the loremaster, Siria?~ DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ ~Where can I find Dallie?~ DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic4","LOCALS",0)~+ ~Where can I find Chester the cheese vendor?~ DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ ~Where would the alchemist, Flora, be found?~ DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ ~Thanks. We'll take it from here.~ + con1_exit

CHAIN X3KJIL con1_exit
~Good luck finding answers. When you've talked to all the suspects, come here and let me know your findings.~
DO ~AddJournalEntry(@4,QUEST)~
EXIT



// Initial Return (First Conversation Had)
CHAIN IF ~Global("X3KalQuest","GLOBAL",5)Global("X3KalQuestAccuse","GLOBAL",0)~ THEN X3KJIL con2 
~You're back. Have you had a chance to speak to all of the suspects?~
END 
+~Global("X3KSuspectTalk","GLOBAL",4)~+ ~Yes, I've spoken to each of them.~ + suspect_talk_done
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ ~I've found out something about the cheese. It's apparently a dangerous drug, and it was laced with rat poison.~ + cheese_poison
++ ~Actually, can you remind me where I can find the suspects?~ + suspects_locations
++ ~Not yet.~ EXIT 

CHAIN X3KJIL suspects_locations
~Chester and Flora are merchants, and they're likely at the open market, to the southwest of the docks. Martin the beggar often hovers there, near the well. And Dallie works the lighthouse, to the southeast of the docks. Good luck.~
EXIT 

CHAIN X3KJIL cheese_poison 
~That is an interesting find. Many people use poison but fewer know how to make it. Flora is one of the locals who has the knowledge, but it is also Chester's cheese, and anyone could have gotten both materials for it.~
== X3KJIL ~It certainly narrows things down. Do you know who did it, or do you still need more time to investigate?~
END 
++ ~Yes, I am ready to accuse one of them.~ + con2_a
++ ~I'm not sure. What am I looking for to be certain?~ + con2_b 
++ ~No, I need more time.~ + con2_c 

CHAIN X3KJIL suspect_talk_done 
~Good. Do you have enough information or evidence for us to make an arrest on one of them?~
END 
++ ~Yes, I am ready to accuse one of them.~ + con2_a
++ ~I'm not sure. What am I looking for to be certain?~ + con2_b 
++ ~No, I need more time.~ + con2_c 

CHAIN X3KJIL con2_a 
~And which one of them are you going to accuse?~
END 
++ ~Flora. She wanted him to leave Dallie, and also created the poison, which she sold from her store. She found a way to poison the cheese and kill him.~ + flora_sure
++ ~Chester. He sold the cheese to Percy, but not before poisoning it. The cheese is a drug, so he likely got addicted to it to a point he wouldn't be able to tell it was poisoned with how strong his need for it was.~ + chester_sure 
++ ~Dallie. She suspected he was having an affair and was angry with him. She poisoned his cheese supply he was keeping and giving more attention to than herself.~ + dallie_sure 
++ ~Martin, the beggar. They had a fight days before and he still had a lingering grudge. He also was the first to see him die and took his coin afterwards.~ + beggar_sure

CHAIN X3KJIL flora_sure 
~Are you certain it was Flora? We absolutely do not want to get this wrong.~
END 
++ ~Yes I am sure.~ + flora_accuse 
++ ~I'm not sure. Let me think about this.~ + think_not_sure

CHAIN X3KJIL chester_sure 
~Are you certain it was Chester? We absolutely do not want to get this wrong.~
END 
++ ~Yes I am sure.~ + chester_accuse
++ ~I'm not sure. Let me think about this.~ + think_not_sure

CHAIN X3KJIL dallie_sure 
~Are you certain it was Dallie? We absolutely do not want to get this wrong.~
END 
++ ~Yes I am sure.~ + dallie_accuse
++ ~I'm not sure. Let me think about this.~ + think_not_sure

CHAIN X3KJIL beggar_sure 
~Are you certain it was the beggar? We absolutely do not want to get this wrong.~
END 
++ ~Yes I am sure.~ + beggar_accuse
++ ~I'm not sure. Let me think about this.~ + think_not_sure

CHAIN X3KJIL flora_accuse 
~That is a shame. She seemed like such a nice shopkeeper, too nice to be driven to murder. Let us head over to Flora, and I will make the arrest~
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",1)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
MoveBetweenAreas("AR0300",[2148.2532],4)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[2281.2571],4))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[2302.2561],4))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[2237.2601],4))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[2334.2525],4))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[2170.2631],4))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[2081.2627],4))	
Wait(1)
FadeFromColor([15.0],0)
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL chester_accuse 
~Very well. Let us head over to Chester, and I will make the arrest.~
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",2)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
ActionOverride("X3KBRYCE",MoveBetweenAreas("AR0527",[398.280],SW))
MoveBetweenAreas("AR0300",[1883.2739],4)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[1955.2716],4))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[1945.2794],4))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[1995.2846],4))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[1996.2783],4))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[2004.2745],4))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[2021.2662],4))	
Wait(1)
ActionOverride("X3KC",MoveBetweenAreas("AR0528",[488.276],1))
CreateCreature("X3KMERC",[1659.2676],SE)
CreateCreature("X3KMERC2",[1756.2641],SE)
CreateCreature("X3KMERC3",[1668.2774],SE)
FadeFromColor([15.0],0)
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL dallie_accuse 
~Very well. Let us head over to Dallie, and I will make the arrest.~
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",3)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
MoveBetweenAreas("AR0300",[3957.2909],0)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[4121.2844],0))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[4055.2813],0))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[3966.2811],0))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[3945.2821],0))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[3903.2831],0))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[3820.2855],0))	
Wait(1)
FadeFromColor([15.0],0)
ActionOverride("X3KD",FaceObject("X3KJIL"))
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL beggar_accuse 
~Very well. Let us head over to Martin, and I will make the arrest.~
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",4)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
MoveBetweenAreas("AR0300",[1940.2838],0)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[1925.2765],0))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[2060.2803],0))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[2014.2789],0))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[1972.2774],0))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[1897.2756],0))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[1832.2743],0))	
Wait(1)
FadeFromColor([15.0],0)
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL think_not_sure 
~Take your time in deciding this. We can't afford to get it wrong.~
EXIT 

CHAIN X3KJIL con2_b
~Remember their stories. See if there are clashing details, or evidence and information that gradually points everything towards one person.~
== X3KJIL ~If you forgot anything, you could always ask them again, though beware of one of them switching their story from the first time.~
EXIT 

CHAIN X3KJIL con2_c 
~Take all the time you need. It is important we get this right the first time. If we get it wrong, command will likely suspend our little second investigation altogether.~
EXIT 

// Accused Flora 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",1)~ THEN X3KJIL accused_flora 
~Miss Flora? I am sorry for this, but we are taking you in for the murder of Percy.~
== X3KF ~What? I would never. I *loved* Percy. Jillian, you have to believe me.~
== X3KJIL ~I have to be impartial. With the evidence presented to me, and the killing product being one of your poisons, it points to you, Flora.~
== X3KF ~I can't believe this. You are taking away an innocent. But I know it is futile to fight and scream and argue. Maybe that Bryce has gotten to you, I don't know.~
== X3KJIL ~Ma'am, it's time to go. <CHARNAME>, come see me in a day back at the garrison. I'll have an update from our investigation once she's taken in.~
DO ~ActionOverride("X3KF",EscapeArea())SetGlobal("X3KalQuest","GLOBAL",6)SetGlobalTimer("X3KaleQuestAccuseTimer","GLOBAL",ONE_DAY)EscapeAreaMove("AR0332",273,369,SW)AddJournalEntry(@10,QUEST)~
EXIT 

BEGIN X3KMERC 

// Accused Chester 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",2)~ THEN X3KJIL accused_chester
~Strange. Where is he? Did he close his shop for the day?~
== X3KMERC ~Miss Jillian. Chester sends his regards, and that he could not be here to take your request to speak.~
== X3KJIL ~Who are you? And where is Chester? There is an important matter that the guard needs to address with him.~
== X3KMERC ~We are well aware, Jillian. You unfortunately made the grave error of side-stepping out of your authority. We'll be taking care that problem permanently now.~
DO ~SetGlobal("X3KalQuest","GLOBAL",6)~
EXIT 

// Finished off the merc's  and Jillian lived.
CHAIN IF ~Global("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",2)~ THEN X3KJIL chester_ran
~I can't believe it. Chester is gone and he sent mercenaries to deal with us? Someone tipped him off.~
END 
++ ~Perhaps it was another guard. Think about it. They'd have had to know who we were going, and there were other guards in the barracks.~ + cr_1
++ ~It doesn't matter. We will find him one way or another.~  + cr_2
++ ~So that's it, then. Chester gets away.~ + cr_3 

CHAIN X3KJIL cr_1
~It could be, but that is another investigation for another time. Right now we need to find Chester.~
EXTERN X3KJIL cr_3 

CHAIN X3KJIL cr_2 
~I like your spirit. I can't imagine him just running away with nothing. If you can find him, perhaps justice will still have its way.~
EXTERN X3KJIL cr_4

CHAIN X3KJIL cr_3 
~Althkata is a big city. I can't imagine him just running away with nothing. He has to have a home somewhere. If you can find out where, maybe he can still be brought to justice.~
EXTERN X3KJIL cr_4

CHAIN X3KJIL cr_4 
~I need to keep command in the loop. I'll be in the garrison. Return to me if you find him, preferably with Chester in tow and alive.~
DO ~SetGlobal("X3KalQuest","GLOBAL",7)AddJournalEntry(@14,QUEST)EscapeAreaMove("AR0332",273,369,SW)~ 
EXIT 

// Accused Dallie 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",3)~ THEN X3KJIL accused_flora 
~Miss Dallie? I am sorry for this, but we are taking you in for the murder of Percy.~
== X3KD ~Percy? Jillian, you've got it all wrong. You know me. You know I'd never hurt him.~
== X3KJIL ~I have to be impartial. With the evidence presented to me, and with him getting sick from cheese you had access to, it stands that you are the only possible culprit, one who has a motive.~
== X3KD ~I can't believe this. Yes, I suspected his affair, but I wouldn't murder him for it. I would have sooner left him, or forced him to choose me or her, but not with blood.~
== X3KJIL ~Ma'am, it's time to go. <CHARNAME>, come see me in a day back at the garrison. I'll have an update from our investigation once she's taken in.~
DO ~ActionOverride("X3KD",EscapeArea())SetGlobal("X3KalQuest","GLOBAL",6)SetGlobalTimer("X3KaleQuestAccuseTimer","GLOBAL",ONE_DAY)EscapeAreaMove("AR0332",273,369,SW)AddJournalEntry(@8,QUEST)~
EXIT 

// Accused Martin 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",4)~ THEN X3KJIL accused_flora 
~Mr. Martin? I am sorry for this, but we are taking you in for the murder of Percy.~
== X3KM ~What? Percy was a git, but I would never! This is just an excuse to get rid of me, it is! Beggar-hating haters!~
== X3KJIL ~You were the first at the scene, and you took his coin. You are already guilty of crime.~
== X3KM ~Yeah? Well take me then. But know you're taking away only a man who stole because he was hungry, not because he killed a git.~
== X3KJIL ~Sir, it's time to go. <CHARNAME>, come see me in a day back at the garrison. I'll have an update from our investigation once he's taken in.~
DO ~ActionOverride("X3KM",EscapeArea())SetGlobal("X3KalQuest","GLOBAL",6)SetGlobalTimer("X3KaleQuestAccuseTimer","GLOBAL",ONE_DAY)EscapeAreaMove("AR0332",273,369,SW)AddJournalEntry(@9,QUEST)~
EXIT 

// Return from Flora/Maritn/Dallie accusation, quest not expired.
CHAIN IF ~!GlobalTimerExpired("X3KaleQuestAccuseTimer","GLOBAL")!Global("X3KalQuestAccuse","GLOBAL",2)Global("X3KalQuest","GLOBAL",6)~ THEN X3KJIL wrong_accusation
~I don't have any news yet. Come back later.~
EXIT 


// Return from Flora/Martin/Dallie accusation after a day.
CHAIN IF ~GlobalTimerExpired("X3KaleQuestAccuseTimer","GLOBAL")!Global("X3KalQuestAccuse","GLOBAL",2)Global("X3KalQuest","GLOBAL",6)~ THEN X3KJIL wrong_accusation
~You're back. I'm afraid I have bad news.~
END 
IF ~Global("X3KalQuestAccuse","GLOBAL",1)~ EXTERN X3KJIL Flora_innocent
IF ~Global("X3KalQuestAccuse","GLOBAL",3)~ EXTERN X3KJIL Dallie_innocent
// Exclude 1 and 3 for Martin case, just in case player tries some strange console changes to avoid breaking.
IF ~!Global("X3KalQuestAccuse","GLOBAL",1)!Global("X3KalQuestAccuse","GLOBAL",3)~ EXTERN X3KJIL Martin_innocent

CHAIN X3KJIL Flora_innocent
 ~We took a deeper look, and it appears Flora is innocent after all. There was a witness that put them away from the scene at the time of the murder, and away from any of the items that caused the death.~
DO ~AddJournalEntry(@13,QUEST_DONE)~
END 
++ ~I see. I'm sorry for my mistake, then.~ + wa_1 
++ ~Well that is at least one less suspect.~ + wa_2 
++ ~Did you figure out who actually did it?~ + wa_2

CHAIN X3KJIL Dallie_innocent
 ~We took a deeper look, and it appears Dallie is innocent after all. There were multiple witnesses that saw her working at the lighthouse, well away from Percy or anything that could have caused his death.~
DO ~AddJournalEntry(@11,QUEST_DONE)~
END 
++ ~I see. I'm sorry for my mistake, then.~ + wa_1 
++ ~Well that is at least one less suspect.~ + wa_2 
++ ~Did you figure out who actually did it?~ + wa_2

CHAIN X3KJIL Martin_innocent
 ~We took a deeper look, and it appears Martin is innocent after all. There was a few fellow beggars that confirmed he was well away from the scene until after Percy's death.~
DO ~AddJournalEntry(@10,QUEST_DONE)~
END 
++ ~I see. I'm sorry for my mistake, then.~ + wa_1 
++ ~Well that is at least one less suspect.~ + wa_2 
++ ~Did you figure out who actually did it?~ + wa_2

CHAIN X3KJIL wa_1 
~I am too. My superiors were very upset this was looked into despite Bryce closing it, and worse, wasting their time.~
EXTERN X3KJIL wa_3 

CHAIN X3KJIL wa_2 
~No. They're closing the case entirely, for good, and I'm forbidden from doing any digging with outside help or otherwise. Given how embarrassing this was, I'm lucky I still have my job.~
EXTERN X3KJIL wa_3 

CHAIN X3KJIL wa_3 
~Case is really closed, I'm afraid. I need to get out to my duty, but thanks for trying to help.~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KALJ wa_4
IF ~!IsValidForPartyDialogue("X3Kal")~ DO ~EscapeArea()AddexperienceParty(3750)~ EXIT

CHAIN X3KALJ wa_4
~Damn. All a waste of time. I'm sorry about this, Jillian. Not sure why I even cared this much.~
== X3KJIL ~He was your father. It's family. It's what we do, look out for them. Even if they aren't here anymore, physically.~
== X3KJIL ~Take care of yourself, Kale. And I'm sorry we couldn't find the answer to what happened to him.~
== X3KALJ ~Yeah...me too, mate.~
DO ~ActionOverride("X3KJIL",EscapeArea()AddexperienceParty(3750)~
EXIT 

// Return from Chester, Chester not turned in or dead yet. 
CHAIN IF ~GlobalGT("X3KalQuest","GLOBAL",6)GlobalLT("X3KalQuest","GLOBAL",9)Global("X3KalQuestAccuse","GLOBAL",2)~ THEN X3KJIL correct_accused 
~Did you manage to find Chester?~
END 
+~Dead("X3KC")~+ ~Yes. He's dead.~ + chester_dead
++ ~Not yet.~ + waiting 

CHAIN X3KJIL chester_dead 
~That was not what I was hoping to hear, but since he is not with you, I guess I should have expected as much.~
END 
++ ~Justice is done, Jillian. Isn't this what was wanted?~ + justice_wanted 
++ ~He's done too much. He may not have even murdered just Kale's father.~ + done_too_much
++ ~What happens now?~ + happens_now

CHAIN X3KJIL justice_wanted 
~No. I wanted him brought in, so he could answer to the city. Death...that is just the next great adventure, and in this situation, an easy way out.~
== X3KJIL ~To keep living and face your mistakes, and be punished for them, to have to re-earn the trust you lost, that is justice.~
EXTERN X3KJIL happens_now

CHAIN X3KJIL done_too_much 
~And we could have let that known, and gathered more evidence from what he may have revealed from that. Now? We can't do that. But I guess at least the case is resolved.~
EXTERN X3KJIL happens_now 

CHAIN X3KJIL happens_now 
~I'll be reporting the outcome to command, but at least this is resolved. Thank you for your help. I should at least reward you for this. Take these coins for your services and aid.~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL kale_final_interject
IF ~!IsValidForPartyDialogue("X3Kal")~ DO ~AddexperienceParty(7500)GiveGoldForce(1250)AddJournalEntry(@17,QUEST_DONE)EscapeArea()~ EXIT

CHAIN X3KJIL kale_final_interject 
~Before I go, how do you feel Kale? This must have been hard.~
== X3KalJ ~No. I wanted that man to die. People like him make it hard to be a halfling. Bad enough those of us who try to live the caravan life have to get mistreated, but now even the city-goers? Makes my blood boil in the way it used to, when I fought with my anger.~
== X3KJIL ~We have different beliefs and views. I can't teach you justice, Kale. But I do hope that you don't forget my teachings, of looking past yourself to protect those you care about.~
== X3KALJ ~Yeah. This was about that. Sometimes it just isn't done cleanly. Goodbye, Jillian.~
DO ~AddexperienceParty(7500)GiveGoldForce(1250)AddJournalEntry(@17,QUEST_DONE)ActionOverride("X3KJIL",EscapeArea())~
EXIT 


CHAIN X3KJIL waiting 
~This is urgent. If you take too long to track him down, he could make his way out of the city. Then Percy will never have justice.~
EXIT 

// Chester turned in.
CHAIN IF ~Global("X3KalQuest","GLOBAL",9)~ THEN X3KJIL chester_turn_in
~Good work, <CHARNAME>. For many of us, we have answers now and justice, and at last, we see this resolved.~
== X3KC ~They should have never let you into the guard, halfling. So much more cleaning could have been done.~
== X3KJIL ~If they hadn't, men like you would still be running around killing innocent people. Precisely as you would have wanted.~
== X3KJIL ~Thank you. We'd have never gotten to the bottom of this without you.~
END 
++ ~It was an honor to see justice seen to.~ EXTERN X3KJIL qd_1
++ ~Do I get paid?~ EXTERN X3KJIL qd_2
++ ~What will happen now?~ EXTERN X3KJIL qd_3
++ ~You should know that Bryce tried to stop me and was in league with Chester. He is dead.~ EXTERN X3KJIL qd_4

CHAIN X3KJIL qd_1
~I'm glad you get the same feeling I do out of making this city safer.~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_kale_banter
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_5

CHAIN X3KJIL qd_2
~I suppose it would be right. Here, take this. You've earned every bit of it.~
DO ~GiveGoldForce(300)~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_kale_banter
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_5

CHAIN X3KJIL qd_3 
~Now? Chester will be taken into the prisons. He'll be there for a long time.~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_kale_banter
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_5

CHAIN X3KJIL qd_4 
~I always suspected the reason he closed the investigation so quick was he had some dirty hand in everything. Still, I wish he didn't die. There was good things he did for the guard, even if he was cruel.~
END 
++ ~It was an honor to see justice seen to.~ + qd_1
++ ~Do I get paid?~ + qd_2
++ ~What will happen now?~ + qd_3

CHAIN X3KJIL qd_5
~I'm going to lead Chester away now. Gods willing, maybe this will be one step closer to having a better city.~
DO ~ActionOverride("X3KC",EscapeArea())EscapeArea()AddJournalEntry(@18,QUEST_DONE)AddexperienceParty(7500)GiveGoldForce(1250)~ 
EXIT 

CHAIN X3KJIL qd_kale_banter 
~We'll see it taken care of from here, Kale.~
== X3KalJ ~Yeah. I trust you, Jillian. Make sure that man doesn't get let out anytime soon. It will be nice to see justice for some of the suffering our people go through for a change.~
EXTERN X3KJIL qd_5 