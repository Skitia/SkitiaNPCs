BEGIN X3EBRO 
BEGIN X3EDAR 
BEGIN X3EFATH

CHAIN IF ~True()~ THEN X3EDAR one_liner 
~I and Thomas Castilla are to be married soon. And when he becomes head of House Castilla, it will be all the sweeter.~
EXIT 

// Happens after handling the merchant's quest, one way or another. 
CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO first_meeting 
~Emily. I almost expected you to take this heir contest for granted. Feeling nervous?~
== X3EmiJ ~If you are trying to goad me into an argument, I won't be so easily pushed.~
END 
++ ~Who is this man, Emily?~ EXTERN X3EmiJ brother 
++ ~What do you want with us, sir?~ EXTERN X3EmiJ brother
++ ~Get out of our way. We're headed to speak to Jurgenson.~ EXTERN X3EmiJ brother

CHAIN X3EmiJ brother
~That <CHARNAME>...is my brother, Thomas.~
END 
IF ~Gender(Player1,MALE)~ EXTERN X3EBRO male 
IF ~Gender(Player1,FEMALE)~ EXTERN X3EBRO female 

CHAIN X3EBRO male 
~Is this your new suitor you have found on your adventures? It suits you to choose from the lowly folk.~
== X3EmiJ ~I'm sure you have some mockery reserved no matter what my response is. At least I'm not with Yaris's eldest daughter, who fired all of her employed servants because some complained of poor behavior towards them.~
== X3EDAR ~My house has a standard of excellence and does not tolerate speaking back. There is a hierarchy, with excellence at the top for a reason. That is why I support your brother, because he understands how things work, and will help see to a new proper leader for House Castilla.~
END 
++ ~Are all of you so high and mighty about yourselves?~ + mighty 
++ ~And we are here to make sure that person is Emily.~ EXTERN X3EDAR make_sure 
++ ~If you've nothing productive to speak about, get out of our way.~ + exit_area 
++ ~We could settle this now, with blood if that is what you want.~ + violence  

CHAIN X3EBRO female 
~And here I thought Catherine was your best friend. Have you deserted her for a commoner you pity?~
== X3EmiJ ~You know nothing about <CHARNAME>. If you did, you'd treat them with more respect.~
== X3EBRO ~I know more than I would like. Their name circles about the north. Your company couldn't be worse. Darlene here is thus helping me to ensure there is a proper new leader for Castilla soon.~
END 
++ ~Are all of you so high and mighty about yourselves?~ + mighty 
++ ~And we are here to make sure that person is Emily.~ EXTERN X3EDAR make_sure 
++ ~If you've nothing productive to speak about, get out of our way.~ + exit_area 
++ ~We could settle this now, with blood if that is what you want.~ + violence  

CHAIN X3EBRO mighty 
~Might is an important trait for any noble, for we are looked upon as superior. While Emily has wandered, I have honed my craft to lead Castilla in any conflict or through any turmoil. My demeanor is earned.~
EXTERN X3EBRO exit_area 

CHAIN X3EDAR make_sure 
~It is a waste of time, common folk. You do not get a vote in the proceedings when Charles's choice is challenged. I do though, and I'll vote for my darling.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",7)~
EXTERN X3EBRO exit_area 

CHAIN X3EBRO exit_area 
~Let us depart, darling Darlene. Unlike Emily we do not have to play catchup. We'll have a second meeting with Lord Jurgenson later after he's had time to pity my sister.~
DO ~ActionOverride("X3EDAR",EscapeArea())EscapeArea()~
EXIT 

CHAIN X3EBRO violence 
~Only if I must. But not here, not now. And if my sister is lucky, not ever.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",5)~
== X3EmiJ ~Well, aren't you just the best little brother ever?~
== X3EBRO ~Half. Don't you *ever* suggest otherwise.~
EXTERN X3EBRO exit_area 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)!IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO first_meeting_no_Emily
~Excuse us. We have important work, and it does not include idly chatting with strangers.~
DO ~ActionOverride("X3EDAR",EscapeArea())EscapeArea()~
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)!IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO duel_wait 
~Has my sister cowardly back out or does she test my patience? Bring her to me. This has gone on long enough.~
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO duel 
~At last. Do you not know the rift your very existence has made to our family, Emily? How much I will delight in finally, finally getting to repair that?~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
== X3EmiJ ~What are you talking about? This is between us.~
== X3EBRO ~If father was not constricted to tradition and pressure, he would have married your mother. Before he left to Althkata, he said so himself to my mother. It is why he is retiring now. He sees himself a failure, but is unwilling to do the right thing: Disown you.~
== X3EBRO ~And so this battle shall do it. One way or another, you will be removed from this family.~
END 
++ ~She is still half of your blood, Thomas. Have reason. You do not need to fight!~ + fight 
++ ~Bring your best, but you will not be able to win, Thomas.~ + fight 
++ ~You sound like a whiny noble brat.~ + insult 

CHAIN X3EBRO insult 
~Your insults mean nothing to me. In a moment this will finally be brought to an end.~
EXTERN X3EBRO fight 

CHAIN X3EBRO fight 
~The time for words is over. Will you fight yourself Emily, or will you have this <PRO_MANWOMAN> here champion for you?~
END 
++ ~You can do this, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ EXTERN X3EmiJ stands_for_herself
++ ~Let me fight for you, Emily. The pit won't favor your skill in archery, and I don't want to risk losing you. Let me be your champion.~ EXTERN X3EmiJ champion
++ ~You are weak Emily. Let me might prevail against this fool.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ EXTERN X3EmiJ champion

CHAIN X3EmiJ stands_for_herself
~I know. I have to. I am ready to fight.~
== X3EBRO ~Then the battle begins, and ends when one of us yields...or dies.~ 
DO ~SetGlobal("X3EmiQuest","GLOBAL",7)SetGlobal("X3EmiDuel","GLOBAL",1)
FadeToColor([30.0],0)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
		Wait(1)
		ActionOverride("X3Emi",JumpToPoint([769.1728]))
		ActionOverride("X3EBRO",JumpToPoint([462.1673]))
		ActionOverride("X3Emi",FaceObject("X3EBRO"))
		ActionOverride("X3EBRO",FaceObject("X3Emi"))
		MoveViewPoint([608.1747],INSTANT)	
		StartCutScene("X3ECut02")~ EXIT // 1 = Emily


CHAIN X3EmiJ champion
~If you are sure, <CHARNAME>, then I will name you my champion.~
EXTERN X3EBRO cowardly 

CHAIN X3EBRO cowardly 
~Cowardly. You throw away their life for nothing. I will make it quick and merciful. The battle begins, and will end when one of us yields...or dies.~
DO ~SetGlobal("X3EmiQuest","GLOBAL",7)
FadeToColor([30.0],0)
		Wait(2)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
        Wait(1)
		ActionOverride(Player1,JumpToPoint([769.1728]))
		ActionOverride("X3EBRO",JumpToPoint([462.1673]))
		ActionOverride(Player1,FaceObject("X3EBRO"))
		ActionOverride("X3EBRO",FaceObject(Player1))
		MoveViewPoint([608.1747],INSTANT)	
		StartCutScene("X3ECut02")~ EXIT

// Post Duel, Thomas defeated - Emily fighting him. 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",7)Global("X3EmiDuel","GLOBAL",1)!Dead("X3Emi")~ THEN X3EBRO Thomas_defeated_Emily 
~My might...is not enough. I yield. Perhaps I underestimated your mother's blood Emily.~
== X3EmiJ ~This isn't about blood. Why won't you listen, brother? We are family. We grew up together. And you've let this...contest about heir and dispute of blood grow this horrible rift between us.~
== X3EBRO ~And now you can end it. Finish me...I don't have the strength to stop what you may do next.~
== X3EmiJ ~No. I won't kill you, Thomas. It's not who I am. Even now...I still want to save our relationship. I remember how we were when we were so much younger, playing together and talking about silly things. I want those days to come back again.~
== X3EBRO ~You are...terribly naive...so full of hopeful optimism. My very existence means you are at risk of being overthrown from your rulership of the Castilla estate, and you would spare me?~
== X3EmiJ ~It is only a risk brother, if you are truly set on being my enemy, even now. But I don't want you to do that. Despite everything, you are my family. I want you to support me, and help advice me when I return home. We can share responsibility, even if I am the face.~
== X3EBRO ~Then...then it will be that way. I...will not dispute your claim further.~
== X3EmiJ ~Thank you, Thomas. I'm glad that we finally worked everything out, even if we had to come to blows.~
== X3EBRO ~Yes. But now...I will find a temple to tend my wounds. Farewell...sister. Farewell.~
DO ~SetGlobal("X3EmiQuest","GLOBAL",8)FadeToColor([30.0],0)Wait(1)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
		DestroySelf()
		ActionOverride(Player1,JumpToPoint([1337.1969]))
		ActionOverride("X3Emi",JumpToPoint([1304.1945]))
		MoveViewObject("X3EFATH",INSTANT)	
		ActionOverride(Player1,Face(NW))
		ActionOverride("X3Emi",Face(SE))
		StartCutScene("X3ECut03")~
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",7)!Global("X3EmiDuel","GLOBAL",1)~ THEN X3EBRO Thomas_defeated_player 
~My might...is not enough. I yield. Perhaps I underestimated the strength of Emily's company. Finish me.~
END 
++ ~Emily would not want me to kill you, nor do I.~ + not_want_kill
++ ~Is that what you want?~ + you_want 
++ ~Gladly.~ + death_battle  // Battle resumes. 

CHAIN X3EBRO not_want_kill
~She is soft...you have that same kindness. For years I thought it was out of subtle mockery of me...but now, I believe I could have been wrong. But my standing in the Castilla family is gone. I do not want to live.~
EXTERN X3EBRO you_want 

CHAIN X3EBRO you_want
~There is no honor left for me. The best outcome for me is death.~
END 
++ ~I will not take your life. It may seem bleak now, but you can redeem your errors today.~ + redemption
++ ~Then I will take your life.~ + death_battle

CHAIN X3EBRO redemption
~Redemption? That assumes I was in error...and yet as I struggle to even stand...I find that perhaps I was.~
== X3EBRO ~I blamed her for so much. For the lies. For the fighting. Becoming heir became everything...even at the cost of all the family ties.~
== X3EBRO ~I cannot face my sister. I will leave the pit and not go to her or my father. But one day...I hope she will forgive me.~
DO ~SetGlobal("X3EmiQuest","GLOBAL",8)FadeToColor([30.0],0)Wait(2)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
		DestroySelf()
		ActionOverride(Player1,JumpToPoint([1337.1969]))
		ActionOverride("X3Emi",JumpToPoint([1304.1945]))
		MoveViewObject("X3EFATH",INSTANT)	
		ActionOverride(Player1,FaceObject("X3Emi"))
		ActionOverride("X3Emi",FaceObject(Player1))
		StartCutScene("X3ECut03")~  EXIT 

CHAIN X3EBRO death_battle 
~Bring it, then! I will die with a sword in my arm!~
DO ~ActionOverride("X3EBRO",DestroyItem("MINHP20"))~ EXIT


// Post Duel, Emily died 
//ChangeEnemyAlly(Myself,NEUTRAL)
CHAIN IF ~Global("X3EmiQuest","GLOBAL",7)Global("X3EmiDuel","GLOBAL",1)Dead("X3Emi")~ THEN X3EBRO Emily_Died // (For good)
~At last...all of the suffering, of the family fighting, of watching my mother make a fake smile. It ends. House Castilla is mine. We have much to speak of, father.~
DO ~AddJournalEntry(@16,QUEST_DONE)SetGlobal("X3EmiQuest","GLOBAL",10)AddexperienceParty(14875)~
== X3EFATH ~Now is not the time for such words. You may feel joy, but I feel only pain. It should not have happened this way. I have only failed you both.~
== X3EBRO ~Nonsense, father. You will understand this was necessary. Let us head to Tethyr immediately, there is much to discuss.~
END 
++ ~Did it really have to end like this? Did you have to kill her?~ + did_you_have_to 
++ ~Might prevails after all. I suppose you are worthy of ruling, then.~ + worthy_of_ruling
++ ~Go, though know if we meet again, that I will not be merciful.~ + not_merciful 
++ ~You aren't going anywhere, Thomas. You will die for what you did.~ + revenge 

CHAIN X3EBRO worthy_of_ruling
~Might is the most important of traits a Tethyrian noble must have...and Emily always lacked that. May the gods have mercy for her where I had none.~
DO ~ActionOverride("X3EFATH",EscapeArea())EscapeArea()~ EXIT 

CHAIN X3EBRO did_you_have_to
~She could have surrendered. But as always, she pushed beyond her limits, and was punished for it.~
EXTERN X3EBRO worthy_of_ruling 

CHAIN X3EBRO not_merciful 
~We will not meet again. And if we do, it will be at the strength of my estate and keep, forces that you could never hope to defeat.~
EXTERN X3EBRO worthy_of_ruling 

CHAIN X3EBRO revenge 
~Leave us, father. It appears that I will have to end the rest of her friends as well this day.~
DO ~ActionOverride("X3EFATH",EscapeArea())DestroyItem("MINHP20")Enemy()~
EXIT 