BEGIN X3VSAMIR 
BEGIN X3VDROW 
// Contains all underdark quest stuff for Vienxay
CHAIN IF ~!Global("PlayerLooksLikeDrow","GLOBAL",1)PartyHasItem("X3VTOME1")~ THEN X3VSAMIR beg 
~You...You have the book. I beg you, take it to the surface. Let it see the light, and then return it to the good elven people, my friends. Sules'terim, if you can find him, he will know what to do.~
EXIT 

CHAIN IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)PartyHasItem("X3VTOME1")~ THEN X3VSAMIR pass 
~It seems the tome passes from one dark hand to another. It will never find its way to the surface...only more doom and gloom to the end of my days.~
EXIT 


CHAIN IF ~Global("X3VieQuest","GLOBAL",6)~ THEN X3VSAMIR greeting 
~Pain. Doom. Gloom. It is all I have left.~
END 
++ ~What are you on about?~ DO ~IncrementGlobal("X3VieQuest","GLOBAL",1)AddJournalEntry(@5,QUEST)~ + about 
++ ~I could take your life, slave, if you are so miserable.~ + miserable
++ ~I've no time to speak to you.~ + duties

CHAIN X3VSAMIR about 
~My master has the tome I was charged to help guide back to the elven homeland. This gives me naught but despair. The chains of this life are not the worst punishment I could serve for the people of the city. It is a just fate.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This must be the human that was with Sules'terim's father. Of all the chances. <CHARNAME>, ask him where his master is.~
END 
++ ~And who is your master?~ + guild 
++ ~I could take your life, if you are so miserable.~ + miserable 
++ ~You should return to your duties, slave.~ + duties 

CHAIN X3VSAMIR guild 
~Master Xel'nu is a great warrior, of the male fighters' society. I clean his armor and weapons and sometimes take the brunt as his stand in dummy when he is angry. Nothing I don't deserve. We both know it.~
EXIT 

CHAIN X3VSAMIR miserable 
~You could. No one would care. But it would be more than I deserve. I deserve only chains for my failures. The doom and the gloom are my only friends.~
EXIT 

CHAIN X3VSAMIR duties 
~I will return to my duties.~
EXIT 

CHAIN IF ~!PartyHasItem("X3VTOME1")~ THEN X3VSAMIR doom 
~Doom and gloom this cycle. Doom and gloom for all the remaining cycles.~
EXIT 

CHAIN IF ~True()~ THEN X3VDROW Greeting
~I eagerly await my next battle. I should have the slave sharpen my blades.~
END 
++ ~Are you the master of that gloomy slave?~ + gloomy 
++ ~Would you happen to have a unique tome, perchance?~ + tome
++ ~Farewell.~ EXIT 

CHAIN X3VDROW gloomy 
~Has he offended you? I will punish him if he has been offensive.~
END 
++ ~Yes, his moaning of doom and gloom is unsettling.~ + unsettling 
++ ~Not at all, I am actually curious if you have a tome of his he was mumbling about.~ + tome
++ ~Nothing to be concerned with. Farewell.~ EXIT 

CHAIN X3VDROW unsettling 
~Then I will see him punished when I am done here.~
END 
++ ~Thank you. I will just be on my way.~ EXIT 
++ ~I am also curious if you have a tome of his he was mumbling about.~ + tome 

CHAIN X3VDROW tome 
~Yes, written in the filthy tongue of the surface elves. At first I had some translators of another house take a crack about it, but it is about their lesser magic, not any tactical plans.~
== X3VDROW ~I will probably offer it to one of the wizards, for a good price. They are into this sort of filth.~
END 
++ ~Actually, you will be giving it to me.~ + giving 
+~!Class(Player1,MAGE_ALL)~+ ~What if I buy it off of you?~ + not_mage 
+~Class(Player1,MAGE_ALL)~+ ~What if I buy it off of you?~ + price 
++ ~That they are. I will leave you to your business.~ EXIT 

CHAIN X3VDROW giving 
~By what authority?~
END 
+~CheckStatGT(Player1,16,CHR)!RandomNum(3,1)~+ ~By the will of house Despana.~ + house // Persuasion attempt. 66%, requires 17 or more charisma.
+~CheckStatGT(Player1,16,CHR)RandomNum(3,1)~+ ~By the will of house Despana.~ + house_fail // Persuasion attempt. 66%, requires 17 or more charisma.
+~CheckStatLT(Player1,17,CHR)~+ ~By the will of house Despana.~ + house_fail // Persuasion attempt with insufficient charisma. 
+~CheckStatGT(Player1,16,STR)!RandomNum(3,1)~+ ~By the threat of death by my hand.~ + strength // Will provoke a fight, unless with 17 or more strength, 66% chance.
+~CheckStatGT(Player1,16,STR)RandomNum(3,1)~+ ~By the threat of death by my hand.~ + strength_fail // Will provoke a fight, unless with 17 or more strength, 66% chance.
+~CheckStatLT(Player1,17,STR)~+ ~By the threat of death by my hand.~ + strength_fail // Intimidate attempt with insufficient strength. 
+~!Class(Player1,MAGE_ALL)~+ ~By the authority of coin.~ + not_mage 
+~Class(Player1,MAGE_ALL)~+ ~By the authority of coin.~ + price
++ ~Nevermind.~ + nevermind 

CHAIN X3VDROW nevermind 
~You are strange and wasting my time. Be off before my craving of battle turns to you.~ 
EXIT 

CHAIN X3VDROW house 
~Hrm, very well, but do not blame me if House Despana is dissapointed in its contents. Take it and leave me be, I am bored and will be finding something to kill.~
DO ~GiveItem("X3VTOME1",Player1)ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())EscapeArea()~ 
EXIT 

CHAIN X3VDROW house_fail 
~You lie. I can smell it on your lips. You will not get what you are looking for from me except a cold blade to the heart!~
DO ~ActionOverride("X3VDROW2",Enemy())ActionOverride("X3VDROW3",Enemy())Enemy()~ 
EXIT 

CHAIN X3VDROW strength 
~Bah, if you want it so much ,it is yours. It has yielded naught but dissapointment and you will find your threat only gives you filthy surface tongue dirt.~
DO ~ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())GiveItem("X3VTOME1",Player1)EscapeArea()~ EXIT 

CHAIN X3VDROW strength_fail 
~You do not threaten me, <PRO_MALEFEMALE>. You will eat your words when my blade tears through your heart!~
DO ~ActionOverride("X3VDROW2",Enemy())ActionOverride("X3VDROW3",Enemy())Enemy()~ 
EXIT 

CHAIN X3VDROW not_mage 
~And what use would you have for it? You are no mage.~
END 
+~OR(8)InParty("Imoen")InParty("Nalia")InParty("Jan")InParty("X3Vie")InParty("Edwin")InParty("NEERA")InParty("X3Reb")InParty("Aerie")~+ ~I am not, but one of my companions is.~ + price
+~CheckStatGT(Player1,13,CHR)!RandomNum(3,1)~+ ~Curiousity. I've always wanted a trinket from the surface.~ + price // Requires 13+ charisma and succesful roll
+~CheckStatGT(Player1,13,CHR)RandomNum(3,1)~+ ~Curiousity. I've always wanted a trinket from the surface.~ + house_fail 
+~CheckStatLT(Player1,14,CHR)~+ ~Curiousity. I've always wanted a trinket from the surface.~ + house_fail
+~CheckStatGT(Player1,13,STR)!RandomNum(3,1)~+ ~None of your business, and you'll find it best not to pry. I'm offering gold, and that should be good enough.~ + price // Will provoke a fight, unless with 16+ strength, 66% chance.
+~CheckStatGT(Player1,13,STR)RandomNum(3,1)~+ ~None of your business, and you'll find it best not to pry. I'm offering gold, and that should be good enough.~ + strength_fail 
+~CheckStatLT(Player1,14,STR)~+ ~None of your business, and you'll find it best not to pry. I'm offering gold, and that should be good enough.~ + strength_fail // Auto fail 
++ ~Nevermind.~ + nevermind 

CHAIN X3VDROW price 
~And what price do you offer?~
END 
+~PartyGoldGT(4999)~+ ~Five thousand coin.~ + pay // Auto success 
+~PartyGoldGT(2499)CheckStatGT(Player1,11,CHR)~+ ~Two thousand five hundred coins.~ + pay// Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(2499)CheckStatLT(Player1,12,CHR)~+ ~Two thousand five hundred coins.~ + pay_fail // Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(999)~+ ~One thousand coins.~ + auto_fail_1 // Auto fail. 
+~PartyGoldGT(499)~+ ~Five hundred coins.~ + auto_fail_2 // Also auto fail
++ ~Forget it. I don't want to pay.~ + nevermind 


CHAIN X3VDROW auto_fail_2 
~Your offer insults me.~
END 
+~PartyGoldGT(4999)~+ ~Five thousand coin.~ + pay // Auto success 
+~PartyGoldGT(2499)CheckStatGT(Player1,11,CHR)~+ ~Two thousand five hundred coins.~ + pay// Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(2499)CheckStatLT(Player1,12,CHR)~+ ~Two thousand five hundred coins.~ + pay_fail // Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(999)~+ ~One thousand coins.~ + auto_fail_1 // Auto fail. 
++ ~I'm afraid I can't afford it.~ + nevermind 

CHAIN X3VDROW auto_fail_1 
~For the effort of this acquisition, I think not.~
END 
+~PartyGoldGT(4999)~+ ~Five thousand coin.~ + pay // Auto success 
+~PartyGoldGT(2499)CheckStatGT(Player1,11,CHR)~+ ~Two thousand five hundred coins.~ + pay// Requires 12+ Charisma, but no randomness attached.
+~PartyGoldGT(2499)CheckStatLT(Player1,12,CHR)~+ ~Two thousand five hundred coins.~ + pay_fail // Requires 12+ Charisma, but no randomness attached.
++ ~I'm afraid I can't afford it.~ + nevermind 

CHAIN X3VDROW pay_fail 
~A good offer, but not high enough.~
END 
+~PartyGoldGT(4999)~+ ~Five thousand coin.~ + pay // Auto success 
++ ~I'm afraid I can't afford it.~ + nevermind 

CHAIN X3VDROW pay 
~Bah, I will accept. This surface trinket has no use for me as is. But you may find a bargain or two within.~
DO ~ActionOverride("X3VDROW2",EscapeArea())ActionOverride("X3VDROW3",EscapeArea())GiveItem("X3VTOME1",Player1)EscapeArea()~
EXIT 