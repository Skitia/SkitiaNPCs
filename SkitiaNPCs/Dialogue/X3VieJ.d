/*Non-Essential Interjections*/

//Chapter 6-7

I_C_T SUAVATAR 5 X3VieSUAVATAR5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~He will never succeed. We will make sure of this, for this city, and for our vengeance.~
END 

I_C_T SUDEMIN 40 X3VieSUDEMIN-40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I stand for my people first before all others. If this is your path, defend yourself!~
DO ~LeaveParty()Enemy()~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Pure evil! You are no better than Irenicus! I will protect her from you.~
DO ~LeaveParty()Enemy()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~I am sorry, but I stand with Emily. I can't let you do this.~
DO ~LeaveParty()Enemy()~
== SUDEMIN ~For my people, and my city!~
END 

I_C_T SUDEMIN 8 X3VieSUDEMIN-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It is the same reason why we do not allow outsiders in Evermeet, though Evermeet needs no one. But we are here now to help, priestess.~
END

I_C_T SUDEMIN 15 X3VieSUDEMIN-15
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Such ambition reminds me so much of my own when I was young. Never have I more appreciated my homeland's mercy than now.~
END

I_C_T SUDEMIN 9 X3VieSUDEMIN-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It is the same reason why we do not allow outsiders in Evermeet, though Evermeet needs no one. But we are here now to help, priestess.~
END

I_C_T C6CORAN 1 X3VieC6CORAN-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Yes, it's this mutt. Don't we have busines to get to?~
END 

I_C_T C6CORAN 13 X3VieC6CORAN-13
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Gentle, "caring", the mutt said? Is there any grey matter in his head?~
END 

I_C_T C6REGIS1 2 X3VieC6REGIS1-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, another drow. Be on your guard.~
END 

I_C_T C6DRIZZ1 55 X3VieC6DRIZZ1-55
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 48 X3VieC6DRIZZ1-48
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 41 X3VieC6DRIZZ1-41
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 18 X3VieC6DRIZZ1-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END


I_C_T C6DRIZZ1 9 X3VieC6DRIZZ1-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 5 X3VieC6DRIZZ1-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6BRUEN1 0 X3VieC6BRUEN1-0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Be very careful whose power you underestimate, dwarf.~
END

I_C_T C6ELHAN2 28 X3VieC6ELHAN2-28 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~No...another great elven city, destroyed?~
END

I_C_T C6ELHAN2 59 X3VieC6ELHAN2-59 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You heard him, dhaerrow. Swear an oath. We should have bound you to one from the start.~
END

I_C_T C6ELF1 2 X3VieC6Elf1-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. I am from Evermeet, the drow are a mutual enemy, kin.~
== C6ELF1 ~So you say, but you bear the mark of shame upon your forehead. You are no more trustable than the rest of your group!~
END 

I_C_T C6ELF1 1 X3VieC6Elf1-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!Race(Player1,ELF)~ THEN ~Please. I am from Evermeet, the drow are a mutual enemy, kin. Viconia just happens to be a useful exception.~
== C6ELF1 ~So you say, but you bear the mark of shame upon your forehead. You are no more trustable than the rest of your group!~
END 

I_C_T C6ELF1 1 X3VieC6Elf1-3
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. I am from Evermeet, the drow are a mutual enemy, kin. Viconia just happens to be a useful exception.~
== C6ELF1 ~So you say, but you bear the mark of shame upon your forehead. You are no more trustable than the rest of your group!~
END 

I_C_T SUELHAN 6 X3VieSUELHAN6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let us find them quickly. The less elven lives lost, the better.~
END

//Underdark


INTERJECT JARLAXLE 33 X3VieJARLAXLE33
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~And you think that you are safe after your game with us? <CHARNAME> has killed far stronger than you.~
EXTERN JARLAXLE 39

I_C_T DADUER1 12 X3KalDADUER1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN ~I sense a troubling power from that tank. Do as the duergar suggests...for the sake of our work here.~
END

I_C_T UDPHAE01 161 X3VieUDPHAE01-161
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh shut up. Die the death you deserve, drow.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDPHAE01 ~Noo-!~
END

I_C_T UDARDUL 34 X3VieUDARDUL-34
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Clever. This may prove quite fruitful, if you make your next moves worth the time.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T UDDEMON 8 X3VieUDDEMON-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Make your bargain worthwhile. Preferably a way out of here if you are going to be a fool and anger an ally of the elven people.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T UDDEMON 3 X3VieUDDEMON-3
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Your foolish decision damns us all, <CHARNAME>!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END

I_C_T UDDEMON 18 X3VieUDDEMON-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Your foolish decision damns us all, <CHARNAME>!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END

I_C_T UDPHAE01 61 X3VieUDPHAE01-61
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I sense an opportunity here, if we speak to the target first. Take my advice or not, but I hate him less than I hate her.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Vienxay has a point for once. And I really would rather not take another life for these people.~
END

I_C_T UDPHAE01 136 X3VieUDPHAE01-136
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. Surely we cannot let this come to pass. Walking the shadowed path can be...constraining sometimes.~
END

I_C_T UDDROW16 40 X3VieUDDROW16-40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Another mage willing duel? They truly are fools to challenge us.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T UDDROW16 44 X3VieUDDROW16-44
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~The mage duels were...a delight, I suppose. A worthy trial of our power.~
END

I_C_T UDDROW16 41 X3VieUDDROW16-41
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~One more victory out to extinguish any further desires of trying against us.~
END

I_C_T UDDROW16 25 X3VieUDDROW16-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~There are clearly more important things to do. But I would not mind proving my superiority if that is your request.~
END


I_C_T UDDROW16 40 X3VieUDDROW16-40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~There are clearly more important things to do. But I would not mind proving my superiority if that is your request.~
END


I_C_T UDDROW06 14 X3VieUDDROW06-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~If we were in a different place, how I would seek rightful revenge.~
== UDDROW06 ~Did your companion speak? I only heard a murmur.~
== X3VieJ ~I did not. Continue.~
END

I_C_T UDDROW10 17 X3VieUDDROW10-17
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Corellon. Not that he would know the father's name.~
== UDDROW10 ~What was that, female?~
== X3VieJ ~Nothing, carry on.~
END

I_C_T UDDOOR01 1 X3VieUDDOOR01-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Are you incapable of even remebering the word "subtlety?"~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T UDDOOR01 4 X3VieUDDOOR01-4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I do not think you could have made this any worse, <CHARNAME>.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T UDDOOR01 5 X3VieUDDOOR01-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. This is going swimmingly.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 


I_C_T UDSIMYAZ 5 X3VieUDSIMYAZ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I would love to get my revenge on these creatures, but I know a losing fight.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What tipped you off? The fact they have power over our minds? Not even fair! Damn creepy creatures.~
END

I_C_T UDDOOR02 14 X3VieUDDOOR02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Such guile. Your intelligence and trickery with them is quite remarkable.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T UDDOOR02 15 X3VieUDDOOR02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Well done. The subtle art of deception is not lost upon you. Let us be away from here.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T UDDOOR02 17 X3VieUDDOOR02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~We were better off not throwing away our coin to them, but whatever. Let us be off.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END 

I_C_T UDSILVER 18 X3VieUDSILVER-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This is a worthy cause for revenge. Silvers are friends of Evermeet, and she is also the enemy of our enemy.~
END 

I_C_T UDSILVER 45 X3VieUDSILVER-45
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A fitting course of action. May they all fall by your wrath, my lady.~
END 

I_C_T UDSILVER 49 X3VieUDSILVER-49
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~What did you expect, <CHARNAME>? Now we must fight for our lives!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@506)~
END 

I_C_T UDSILVER 25 X3EmiUDSILVER-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~To become...a drow? Ugh. The thought is revolting.~
END 

I_C_T UDSVIR05 2 X3VieUDSVIR05-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A nusiance, but a temporary one. I am sure our rightful reward awaits for this petty task once this spell has run its course.~
END

I_C_T UDSVIR05 13 X3VieUDSVIR05-13
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~He actually believes you? Even if it is the truth, an impressive feat.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END

I_C_T UDTRAP02 10 X3EmiUDTRAP02-10
== X3VieJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN ~I suppose I am...grateful my kin is alive. I truly thought death was his only hope.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDTRAP02 ~To the surface, I go.~
END

I_C_T UDTRAP02 11 X3EmiUDTRAP02-11
== X3VieJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN ~I suppose I am...grateful my kin is alive. I truly thought death was his only hope.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T UDTRAP02 2 X3RebUDTRAP02-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I know no way to help my kin beyond a merciful death. Let us make it quick.~
END

I_C_T UDVITH 47 X3VieUDVITH-47
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~'Tis better. But hardly our weight of the effort, I say.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@513)~
END


I_C_T UDVITH 49 X3VieUDVITH-49
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN ~You did not share enough fool, and so we battle.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDVITH ~You may try. I will end you quickly and mercifully.~
END

I_C_T UDDUER02 6 X3VieUDDUER02-6
== X3VieJ IF~IsValidForPartyDialogue("X3Vie")~ THEN ~We may both be outcasts, but I have no pity for how this creature treats you, dhaerrow.  Only pleasure.~
END 

I_C_T UDVITH 18 X3VieUDVITH-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Any chance to increase our power with magical of another dimension is a worthy opportunity. Do not discard this chance.~
END

I_C_T UDVITH 25 X3VieUDVITH-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~If we want what he promises, let us work with him. For now.~
END
//If the player ignores Vienxay, then if she is in the party, this will fire.
ADD_TRANS_ACTION UDVITH BEGIN 26 END BEGIN END ~SetGlobal("X3VieAppChange","GLOBAL",4)~


I_C_T UDDUER02 12 X3VieUDDUER02-12
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~An artificat? You have my full attention. Surely it belongs in our hands, after all.~
END 

I_C_T UDDUER01 20 X3VieUDDUER01-20
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Clever. We do of course, deserve the highest treatment.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END

I_C_T UDDUER03 9 X3VieUDUDER03-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. Keep your suspicions to yourself. I have my ways of forcing you if necessary.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What? You just can't d-~
== X3VieJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Do you have no sense of pretend, mutt? You will get us killed if you do not remember.~
END

I_C_T JAHEIRAJ 478 X3VieJAHEIRAJ-478 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vieb")~ THEN ~I have no desire to listen to any of your barking, mutt.~
== JAHEIRAJ IF ~IsValidForPartyDialogue("X3Vieb")~ THEN ~And yet I have a desire to give you a beating, if we were in a different place. Mind yourself most of all, Vienxay.~
END

//Chapter 4 



I_C_T SAHPR2 13 X3VieSAHPR2-13
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~The king seems idiotic, though I hardly care about these Sahuagin. But the cause of vengeance knows no boundaries, and that is appealing to me.~
END


I_C_T SAHPR4 4 X3VieJSAHPR4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Such fools. I enjoyed this little task, but these creatures are hopeless.~
END

INTERJECT SAHBEH01 38 X3VieSAHBEH01-38
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. There is hardly any point in guarding this empty thing. No wizard would desire such a task.~
EXTERN SAHBEH01 39

I_C_T SAHKNG01 76 X3VieSAHKNG0176 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Vengeance, even on the behalf of another, is very, very, sweet.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T SAHKNG01 76 X3VieSAHKNG0176 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Sometimes I wish you showed even an ounce of cleverness before you sought violent conflict out of boredom. Shadows guard us, the entire city will try to overwhelm us!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHKNG01 50 X3VieSAHKNG0150 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A wise choice to follow along with this for now, <CHARNAME>. We can get our bearings and form a plan, ultimately to our own benefit.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T SAHKNG01 36 X3VieSAHKNG0136 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let us play along. There could be opportunity here.~
END

I_C_T SAHKNG01 47 X3VieSAHKNG0147 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Sometimes I wish you showed even an ounce of cleverness before you sought violent conflict. Shadows guard us, the entire city will try to overwhelm us!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHKNG01 23 X3VieSAHKNG0123 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Sometimes I wish you showed even an ounce of cleverness before you sought violent conflict. Shadows guard us, the entire city will try to overwhelm us!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHPR1 30 X3VieSAHPR30 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Sometimes I wish you showed even an ounce of cleverness before you sought violent conflict. Shadows guard us, the entire city will try to overwhelm us!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHPR1 5 X3VieSAHPR5 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Perhaps this will make more sense if you bothered to explain why we are here at all.~
END

I_C_T JANJ 159 X3VieJANJ-159
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~By the Seldarine, shut up gnome! We'll never get off the island with you talking and talking like this.~
END

I_C_T PPSAEM3 1 X3ViePPSAEM3-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I am sure that he left out that convenient fact when he asked for us to come along.~
END

I_C_T PPSAEM2 23 X3ViePPSAEM2-23
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Some of Evermeet's people have come or gone to Suldanessellar. If that is where he is headed, my people are in grave danger.~
END


I_C_T PPSAEM2 8 X3ViePPSAEM2-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")~ THEN ~Our best chance is with numbers, and the mages would make good meat shields.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN ~Vienxay is right, though it isn't about sacrificing these other mages. But alone, we don't have as good of a chance.~
 END 
 
I_C_T PPSAEM2 19 X3ViePPSAEM2-19
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~An elf does not belong in the underdark. Let us take the ship, it is the wisest course of action.~
END

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Vie") Global("X3ViePartyBG1","GLOBAL",1)~ + ~You should remember Vienxay. Do you recognize her, Imoen?~ EXTERN X3VieJ X3ViePPIMOEN0
END

CHAIN X3VieJ X3ViePPIMOEN0
~Please, I do not know why you are bothering. Her mind has been addled. No hopeful words will change that.~
EXTERN PPIMOEN 1

I_C_T IMOEN2 22 X3VieIMOEN22
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Hrmph. I am capable of leaving this place, with shadows at my beckoning. 'Tis not my preference, but the offer is there.~
END 

I_C_T PPDRADEE 3 X3ViePPDRADEE-3
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I will pray for you kin. You do not deserve what has happened to you.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If he be a dwarf, ye would have said naught.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~What I say or do not say is not your concern. There is nothing to be done here, for now. Let us...carry on, or whatever.~
END 

I_C_T PPDRADEE 0 X3ViePPDRADEE-0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This is no place for my kind. He should have been brought to Evermeet if anything, but as if these humans would care.~
END

I_C_T PPAPHRIL 4 X3ViePPAPRHIL4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Her endless terror is of no suprise to me. To be pitied, I suppose.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Did I hear right? Vienxay showing a bit of pity?~
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Unless you are deaf. Why is it that it must be such a remarkable thing?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN ~He means it's nice. The poor girl. I wish there was something we could do.~
END

I_C_T PPAPHRIL 5 X3ViePPAPRHIL5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Her endless terror is of no suprise to me. To be pitied, I suppose.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Did I hear right? Vienxay showing a bit of pity?~
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Unless you are deaf. Why is it that it must be such a remarkable thing?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN ~He means it's nice. The poor girl. I wish there was something we could do.~
END

I_C_T PPAPHRIL 6 X3ViePPAPRHIL6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Her endless terror is of no suprise to me. To be pitied, I suppose.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Did I hear right? Vienxay showing a bit of pity?~
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Unless you are deaf. Why is it that it must be such a remarkable thing?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN ~He means it's nice. The poor girl. I wish there was something we could do.~
END


I_C_T PPAPHRIL 0 X3ViePPAPRHIL0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Even from what I have seen on the Shadow Plane, there are creatures to fear. From all planes at once? Her endless terror is no suprise.~
END

I_C_T PPIRENI1 14 X3ViePPIRENI1-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I know first hand about magical accidents. Something like this seems to hardly qualify.~
END

I_C_T PPDILI 5 X3ViePPDILI-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Get me away from this brat. What a disturbing child.~
END

I_C_T PIRMUR01 2 X3ViePIRMUR01-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")~ THEN ~You should be very afraid right now, human woman. Very.~
END 

I_C_T PPINN01 5 X3ViePPINN01-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Inconvenient. We were a moment away from learning what was needed.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Right, murders are inconvenient, I imagine. Have some sympathy for the fallen.~
END

I_C_T PPCOWLED 1 X3ViePPCOWLED
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~On your guard. Someone else is in control of this man.~
END

I_C_T PPSAEM 58 X3HelPPSAEM58
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I have no tolerance for traitors. I dare you to try to escape my shadowbolt.~
END

I_C_T PPSAEM 14 X3RebPPSAEM14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It could have been worse. I did make a few coins with my...talents.~
END 

I_C_T PPSAEM 32 X3RebPPSAEM32
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I was tiring of his company anyway. No doubt it would have only given us more problems.~
END

//Chapter 3

I_C_T BODHI2 10 X3VieBODHI2-10
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~She plays the same word game as my mentor. I hate such people.~
END 


I_C_T ARNMAN09 2 X3VieARNMAN09-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~What a fool. You speak your plan that anyone can hear you. Your fate is sealed.~
END 

I_C_T ARNMAN03 0 X3VieARNMAN03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Crawling? Quite unnecessary when the weave is at your fingertips.~
== ARNMAN03 ~You use magic to aid your thievery? You will have to tell me all about it sometime, perhaps over some tea?~
== X3VieJ ~No interest. Now go away.~
END 


I_C_T ARAN 53 X3VieARAN53 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Human greediness! He dares ask for more work after taking our coin.~
END 

I_C_T ARAN 40 X3VieARAN40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, a prison for magi? I would rather not go there at all, but if we must.~
END 

I_C_T ARAN 20 X3VieARAN20
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~What are we, watchers for children now? I hope these "errands" end soon.~
END 

I_C_T NALIAJ 311 X3VieNaliaJ311 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, none of us care. There are more important things than the slobs on the street.~
== NALIAJ ~You...you are an awful, awful elf, Vienxay.~
== X3VieJ ~Yes, you humans have said that before. It is getting old.~
END

I_C_T AERIEJ 183 X3VieAerieJ183
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~For the best. They are humans, after all. One risks a shorter life with over-association.~
== AERIEJ ~That isn't what I meant Vienxay, I- nevermind.~
END 




I_C_T ARNBOY01 0 X3VieARNBOY01-0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Evermeet would never allow such activities. Vengeance should be swift and clean, though I can see how a slow death can be pleasurable.~
END 

I_C_T FETCH 1 X3VieFETCH1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~There is something off with his mind. Though it is hardly our problem. Let us move along.~
END  



//Watcher's Keep 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN ~Are you truly a fool? He deserves everything that comes to him. Read the scroll and be done with it.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN ~I would have called you a fool in the past for doing this. Yet I trust in our combined power, though I would still advice the scroll over this.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN ~Are you truly a fool? He deserves everything that comes to him. Read the scroll and be done with it.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN ~I would have called you a fool in the past for doing this. Yet I trust in our combined power, though I would still advice the scroll over this.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T GORAPP1 6 X3VieGORAPP1-6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hrmph. Then their fate is quite deserved.~
END 

I_C_T GORDEMO 18 X3VieGORDEMO 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~They more than deserve what they have in mind. We are no one's pawns.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T GORDEMO 1 X3VieGORDEMO
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Such power! I can feel it...beware. Whatever is here is nothing that I have ever felt before.~
END  

I_C_T FSRIDD 0 X3VieFSRIDD0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~This lowly imp is our challenge? This will be boringly easy.~
END  

I_C_T GORAPR 11 X3VieGORAPR 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~One can hardly blame him. I would have done the same if it was my master.~
END 

I_C_T GORSUC01 7 X3VieGORSUC01 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Hrmph. If you ask why I am upset later, I will point to this precise moment.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Vie",LastTalkedToBy)~ EXTERN X3VieJ Yackman
END

CHAIN X3VieJ Yackman  
~Hrmph, I have no desire to hurt someone so w- what are you doing? Stand still and stop being a nuisance! I'll use a spell if I must.~
EXTERN GORMAD1 10

I_C_T GORODR1 35 X3VieGORODR1-35
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I have no appreciation of being used and manipulated. And yet you will try to wave this away with words, I am sure.~
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~And he acts as if it is our fault, when this was clearly his duty. Humans!~
END 

I_C_T GORIMP01 0 X3VieGORIMP01
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~As if this imp could do much of anything to deter us. Still, it may know something.~
END 

//Underdark 
I_C_T KORGANJ  151 X3VieKORGANJ-151 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I almost hate admitting this, but I'd rather be stuck alone with her in any realm than you in the most pleasant place, dwarf.~
END 

I_C_T UDSVIR03 12 X3VieUDSVIR03-12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Awakened? Ominous enough. Do provide more details.~
END 

//Planar Sphere 
I_C_T OBSSOL01 19 X3VieOBSSOL01-19 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Even if I do not care for these people, I am...happy for them. Jealous even.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. By Moradin, I feel bad for the elf. This be nay right at all.~
END 


// Trademeet 

I_C_T CEFALD04 3 X3VieCEFALD04
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You fool! This will earn nothing but the Seldarine's condemnation. I may have done horrible things, but you have done something even worse. Whatever consequences come, face them without me.~
DO ~LeaveParty()EscapeArea()~
END

I_C_T TREVIL01 33 X3VieTREVIL01-33
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~My people have a respect for nature that I will not abandon just because of my exile, <CHARNAME>.  So my advice is simple: Don't be a fool. Don't use the poison.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Vienxay isn't the only one who sees this as wrong. We can't poision the grove. We have to find another way.~
== TREVIL01 ~Hurry up now, hurry up!~
END 

I_C_T TREVIL01 34 X3VieTREVIL01-34
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~My people have a respect for nature that I will not abandon just because of my exile, <CHARNAME>.  So my advice is simple: Don't be a fool. Don't use the poison.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Vienxay isn't the only one who sees this as wrong. We can't poision the grove. We have to find another way.~
== TREVIL01 ~Hurry up now, hurry up!~
END 

INTERJECT TRRAK01 0 X3VieTRRAK01
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A practiced lie. I can sense shadows and illusions about her, <CHARNAME>, potent ones at that. What are you really, false human?~
EXTERN TRRAK01 3

I_C_T DRUSH 9 X3VieDRUSH9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I do not care. I am *not* going to carry that thing. Disgusting!~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I...feel bad for the instrument. Oh, the poor thing will probably never sound the same.~
== DRUSH ~Again, sorry for the smell.~
END 

I_C_T CELOGAN 86 X3VieCELOGAN86
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~He could easily be asking it for himself for future leverage. I distrust his motive.~
END 

I_C_T TRCUT07 4 X3VieTRCUT07-4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It is oddly nice to be appreciated. I even find myself looking for more opportunities to be heralded...it is almost strange.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T TRPLE01 16 X3VieTRPLE01-16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You've gotten rid of an annoying human and profited from it. A worthwhile moment of work for you.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
== TRPLE01 ~Remember, don't tell anyone!~
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN TRGYP03 X3Vie
~Oh, an elf! Huh, what is that tattoo on your head for?~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~It...it is just a marking child. To remember everything that I miss. Now, leave me be, if you would, please.~
EXIT 

I_C_T GPHIL02 4 X3VieGPHIL02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A senseless death. It is better to live than to die right...even if his philosophy was clearly flawed.~
== GPHIL02 ~Hurry up, Huntley!~
END 

I_C_T NEEBER 7 X3VieNEEBER7 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~If you must ask...yes. Please. Stop. Annoying. Us!~
END 

I_C_T TRHMER01 23 X3VieTRHMER01-23 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I am sure we could easily dispatch theese genies. But I am far more interested in pursuing this Rakshasa. Such a rare and interesting encounter it would be.~
END 

I_C_T TRHMER01 38 X3VieTRHMER01-38
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I was pleased we got to defeat a Rakshasa. I suppose the town is pleased too, but I hardly care.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

//Umar Hills 

I_C_T MAZZY 6 X3VieMAZZY6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I see no taint of shadow on this one. But the choice is ultimately yours.~
END 

I_C_T RNGWLF01 5 X3VieRNGWLF01-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This is certainly possibly within the realm of shadow magic, though 'tis a darker source than even my own.~ 
END 

I_C_T PLMETR01 25 X3ViePLMETR01-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Predictable, that a greedy human uses his wealth to fuel his claim and obession of ownership.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@503)~ 
END 

I_C_T VALYGAR 43 X3VieVALYGAR43 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I have suspected the cowled wizards are nothing but manipulators. The question is if we care: even I am curious of these magical secrets.~
END 

I_C_T VALYGAR 12 X3VieVALYGAR12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~And now the truth revealed. If you ask my opinion, I have no love of the cowled wizards and would be in glee if denied them this man.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~One day, one day, Vienxay you might just say: "Because it's the right thing to do" and not "I get to enjoy someone else's pain."~
END 

I_C_T VALYGAR 8 X3VieVALYGAR8 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~And now the truth revealed. If you ask my opinion, I have no love of the cowled wizards and would be in glee if denied them this man.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~One day, one day, Vienxay you might just say: "Because it's the right thing to do" and not "I get to enjoy someon else's pain."~
END 

I_C_T UHKID03 8 X3VieUHKID03-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Amusing. A well taught lesson, <CHARNAME>.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T UHKID02 9 X3VieUHKID02-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Amusing. A well taught lesson, <CHARNAME>.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T JUGJER01 12 X3VieJUGJER01-12
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~As if he could truly stop his daughter from doing what she wanted. I did all sorts of things with boys back in Evermeet under my father's nose.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And all sorts of images have now entered my head that I never wanted. Thank you, Vienxay.~
END 

I_C_T UHMAY01 18 X3VieUHMAY01-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ogres, wolves, and a witch. None of these sound like the truth. More likely it is a human gone mad, as it typically is.~
END 

//Windspear Hills 

I_C_T SAMIA 24 X3VieSAMIA24 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You dare betray us, human? It will be the last thing you do.~
END 

I_C_T GARREN 27 X3VieGARREN27 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I hope you have a plan. I have little desire for being endless hunted by a paladin order.~
END

// De-Arnise

I_C_T KPMAID01 14 X3VieKPMAID01-14 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~More like hard work. This is what they want, let them earn it. The best possible decision.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, it's nice to know you at least are a proponent for love, even if you aren't for a bit of charity, Vienxay.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T DELCIA 9 X3RebDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~She deserves death anyway. I have not met a more annoying human in my life.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@506)~ 
== DELCIA ~I tire of listening to you. Kill me already.~
END 

INTERJECT DELCIA 1 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN ~Please. I am as of noble blood as you are. Not that you would know a thing about my family.~
EXTERN DELCIA 48  

INTERJECT DELCIA 3 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN ~Please. I am as of noble blood as you are. Not that you would know a thing about my family.~
EXTERN DELCIA 48  

INTERJECT DELCIA 4 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. I am as of noble blood as you are. Not that you would know a thing about my family.~
EXTERN DELCIA 48 

INTERJECT DELCIA 7 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. I am as of noble blood as you are. Not that you would know a thing about my family.~
EXTERN DELCIA 48 


//Wild Mage Sanctuary
I_C_T NEERA 21 X3VieNEERA21
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Bringing her along would be a mistake. But I suppose I could be a good role model if necessary.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Ha, funny one, Vienxay. I'm all for another half-elf! Er, even if I'm not *quite* half-elf, anyway.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Ugh. Now I want her along even less.~ 
END 

I_C_T OHNQUAID 4 X3VieOHNQUAID 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN ~Please, is it not obvious? This is an illusion. Let us move on.~
END 

//Althkata 

I_C_T OHHFAK 34 X3EmiOHHFAK-34
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This human makes no sense. Why are we even here helping her? I see no profit in this.~
END 

I_C_T ISAEA 29 X3VieISAEA29
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This human tries my patience. Let us see him ruined!~
END 

I_C_T ANOMENJ 135 X3VieAnomenJ135
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~The cause of revenge is deliciously sweet indeed.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T ANOMENJ 176 X3VieAnomenJ176
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It is a fool to let this man walk. You will come to regret this decision.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@513)~ 
END 

I_C_T MARIA 5 X3VieMARIA-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph, good for her. Why do we care? Why are we even listening to this?~
END 

I_C_T EDWINJ 11 X3VieEDWINJ-11
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")~ THEN ~Let him cast it. I want to see him miserably fail.~
END 

I_C_T EDWINJ 7 X3VieEDWINJ-7
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~And why are we letting it have it when there is a better mage in this party? He is going to screw something up with it.~
== EDWINJ ~Cease your prattle. It is my idea and thus my work. If you even think about swiping it, there will be a fireball in your bedroll. Mine. (Yes, very much mine.)~
END 

I_C_T CRTHF03 1 X3VieCRTHF03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~His screeching is annoying. Can we move on? I have no care for human relationships.~
END 

I_C_T LUSETTE 15 X3VieLUSETTE15 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I despise being manipulated like this. Have your secrecy, elf kin, though I loath you for it.~
END 

I_C_T MESSEN 5 X3VieMESSEN5 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It could also be the work of a bored wizard. Commoners however, will hardly try to make due with actual research.~
END 

I_C_T PACE 3 X3ViePace3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~He speaks as if he is deserving of respect. I think not.~
END

I_C_T LYROS 11 X3VieLYROS11
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Ugh. It's the man who reeks of dead once again, and yet he dares calls us unwashed.~
== LYROS ~You haven't died yet, elf? Dissapointing.~
END

I_C_T EDWIN 26 X3VieEDWIN26
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Typical Humans betraying one another at the beck and call of their own personal pursuits. My people would never do this.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Huh. Now that you mention it, you are more loyal than this fellow is, Vienxay.~
END  

I_C_T BODHI 77 X3VieBODHI77 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This shall require all of our ability, might, and mind to prevail. Lead us well, <CHARNAME>. We will get no second chances.~
END 

I_C_T BODHI 45 X3VieBODHI45 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I have no scruples about doing what is necessary. If we aim to impres, we should take it.~
END 

I_C_T BODHI 20 X3VieBODHI20 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I hope you know what you are doing, throwing away such an opportunity.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~ 
END 


I_C_T BODHI 18 X3VieBodhi18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A good decision from the sounds of it. If this creature follows through on its promises.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T BODHI 6 X3VieBODHi6 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~The reduced gold is a bargain. And I am curious on what we will learn here.~
END 

I_C_T BODHI 31 X3VieBODHI31 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I sense an odd power coming from her. I can't describe it. There is more here than it seems.~
END 

I_C_T TIRDIR 11 X3VieTIRDIR11
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!Alignment("X3Vie",NEUTRAL)~ THEN ~This commoner should handle his own problems. There is no gain from helping him.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Not everyone has the capabilities like we do, Vienxay. Honestly, you could learn some compassion.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@113)~
== TIRDIR ~Bless you once again, and good luck!~
END 

I_C_T SPPAIN 23 X3VieSPPAIN23 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Disgusting vermin. Let us eradicate them and the drow both.~
END 

I_C_T SETHLE 10 X3VieSETHLE10
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Do as you wish with this fool. He deserves no sway to his judgement.~
END 

I_C_T GBEGG01 5 X3VieGBEGG01-5 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, I find myself pitying the beggar of all things. The guard could surely focus his efforts on something more important.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Huh. Vienxay actually caring about the poor? That's new.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~And hardly your concern. Let us...leave him to his fate, I suppose.~
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN LOUTM02 X3Vie
~I have no doubt that there are few mages of my equal here in this skill-poor city.~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~I would put your theory to the test. But you are a human whose knowledge is a fraction of mine. The outcome is already certain.~
EXIT 

INTERJECT RAELIS 2 X3VieRAELIS2 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You, tiefling are asking help from the best. You *will* concede to our leader's demands.~
EXTERN RAELIS 4

I_C_T RAELIS 79 X3VieRaelis79 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Tieflings deserve no less than this.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T RAELIS 76 X3VieRaelis76 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Tieflings deserve no less than this.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T DELNOB02 3 X3VieDELNOB02 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~At least she has fine taste in wine.~
END 

I_C_T BBEGG2 1 X3VieBBEGG2-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN ~Keep your coins to yourself, <CHARNAME>. I doubt he'll even buy bread with your offering, waste as it is.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T LOUTCAPT 24 X3VieLOUTCAPT24 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. Pointless. And we have to dirty ourselves in a sewer?~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't know, it could be fun. The quest for the gong!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@113)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Call me crazy, but I agree with Vienxay. Not much glory to be had here.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~
END 

I_C_T LOUTCAPT 18 X3VieLOUTCAPT18 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Do as you will, but I think this is a waste of time. His bad decision leads to consequences he must take on himself.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And here I thought elves were kind. Come on, let's look for it. How hard could it possibly be to find?~
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN BAMNG01 X3Vie
~You there. Watch yourself, or you might wind up behind bars again.~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~Worry about somebody else. I am determined to see that unrepeated.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN BAMNG02 X3Vie
~Ooh...come with me, elfie, or *hic* I'll arrest you.~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~Ugh, no. I am done with cells or anything this disgusting human has in mind.~
== X3HelJ ~Nay one more time? That sounds good to me.~
== X3VieJ ~I suggest you watch yourself, dwarf, before I suggest to the drunk that you might be a better target for his drunken advances.~
EXIT 

I_C_T NALIAJ 235 X3VieNALIAJ235
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Surely there must only be air in that naive head of yours, human.~
END 

I_C_T INSPECT 46 X3VieINSPECT46
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. The humans here really need to get this government together.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It isn't so easy as that, Vienxay. Maybe we can look into this, <CHARNAME>. This killer...no one should live around someone like that.~
END 

I_C_T INSPECT 2 X3VieInspect 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. Anyone who tries is asking for a quick end.~
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN PEHLLUS X3Vie
~You look beautiful, even for an elf. Would you stay a while? I tire waiting for Oriona, and here you are.~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~And here I depart. I've no interest in old men. Stare longingly at another, or keep waiting. Your heart is due to break either way.~
EXIT 

I_C_T TOLGER 75 X3EmiTolger75 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I would never make this sort of agreement with a human. And these cowled wizards are even less trustable.~
END 

I_C_T TOLGER 8 TOLGERX3Vie8 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~And now enticement with magical power...that makes it difficult to say no.~
END 

I_C_T CORNEIL 11 CORNEILX3VieJ11 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Finally. I hated the needless restrictions to use my own art. The cost is well worth it, <CHARNAME>.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@519)~
END 

I_C_T JANJ 136 JANX3VieJ136 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph, if I can just borrow gold on a whim, I will be keeping that in mind.~
END

I_C_T DELON 15 X3VieDELON15 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I approve of this decision. I tire of the city, and the forest sounds like a far better place.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Speak for yerself. But if there be forest creatures that be a worthy challenge, I be nay complaining.~
END 

I_C_T DELON 15 X3VieDELON16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I approve of this decision. I tire of the city, and the forest sounds like a far better place.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Speak for yerself. But if there be forest creatures that be a worthy challenge, I be nay complaining.~
END 

CHAIN IF WEIGHT #-1 
~See("X3Vie")  // X3Vie
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Vie")  // X3Vie
RandomNum(2,1)
Global("Prophet4X3Vie","LOCALS",0)~ THEN PROPHET4 Vienxay 
~Put out your eyes! Feel the holyness of true sight!~
DO ~SetGlobal("Prophet4X3Vie","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3VieJ ~Ugh! Get away from me.~
EXIT 

I_C_T VICONI 11 X3EmiVICONI11 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You made the right choice. My people have fought them for generations. They deserve nothing less.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T VICONI 2 X3VieVICONI2
 == X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, saving her was a mistake. Keeping her along, a bigger one. She should have burned.~
 == VICONI ~And what have I done to you? Despite your animosity, I have not harmed a darthiir.~
 == X3VieJ ~I doubt that.~
DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~
END 

I_C_T VICONI 4 X3VieVICONI4 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~And just when I thought my time on away from Evermeet couldn't get worse.~
DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~
== VICONI ~I would rather not be in your company either, darthiir, but we are not enemies.~
END 

I_C_T VICG1 2 X3VieVICG12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A burning of a drow? Delightful. Let's stay and watch.~
END 

I_C_T VICONI 10 X3VieVICONI10
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~If we save her, we can't watch her burn. I hardly see the fun in that.~
END 

I_C_T CTRAITOR 3 X3VieCTRAITOR3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, the pit stinks of rot and filth. I will have to pay this beholder back for the disgusting muck that will get on my robes.~
END 

I_C_T RIFTG03 26 X3VieRIFTG03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I was hoping for something magnificent, even if it is from a human god, but we get something rather useless. This plan better work.~
END 

I_C_T GAAL 13 X3VieGAAL13 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I am curious what gives the beholder the need to ask for help. It is certainly a curiousity worth our time, if we proceed cautiously.~
END 

I_C_T MEKRAT 12 X3VieMEKRAT12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph, I am sure he knows, and is merely not saying what it is.~
END 

I_C_T ACOLYTE1 1 X3VieACOLYTE1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It is a rare thing, but this priest is making some sense.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye're going to convert from yer precious elf gods, then, point ears?~
== X3VieJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~No, and don't call me point ears. I'll not tolerate that.~
END 

I_C_T BHOISIG 19 X3VieBHOISIG19
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. Who cares what humans worship? This is a waste of time.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T BHOISIG 21 X3VieBHOISIG21
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~A wise choice. We have so many things to do, and so little time. Humans and their issues with faith is the lowest of them to consider.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T ACOLYTE2 1 X3VieACOLYTE2-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~He isn't an elf god, for starters.~
END

I_C_T SCYARRYL 31 X3VieSCYARRYL31
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Do no humans have a sense of art and beauty?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, you just haven't been in the right temple, Vienxay. One day!~
END

I_C_T SCSAIN 30 X3VieSCSAIN30
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Do no humans have a sense of art and beauty?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, you just haven't been in the right temple, Vienxay. One day!~
END

I_C_T SCTELWYN 30 X3VieSCTELWYN30 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Do no humans have a sense of art and beauty?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, you just haven't been in the right temple, Vienxay. One day!~
END

I_C_T BMTHIEF 3 X3VieBMTHIEF 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. Passing on deals because they are stolen. As if supporting the price gouging of other merchants is the better road.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T DCLERIC 3 X3VieDCLERIC3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~What idiocy. This human is unworthy of life.~
== DCLERIC ~Rarrgh!~
END

I_C_T RENAL 47 X3VieRenal26 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, are you a fool? The man is worthy of death. It is but one more step!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah, I find meself agreeing with the elf, and I bloody hate that. We should see the bastard dead.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~
END 

I_C_T JANJ 116 X3VieJanJ116
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~For the love of the Seldarine. As you were saying, human?~
END

I_C_T RENAL 26 X3VieRenal26 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Work like this will suit my talents well. Lean on me if you must, <CHARNAME>, subterfuge is my specialty.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Too bad keeping yer mouth shut, ain't. Yer nose is up in the bloody skies.~
END 

I_C_T RENAL 26 X3VieRenal26 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You are turning down a profitable opportunity. I have no idea what you are thinking.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Supporting thieves on the Docks is not what Althkata needs. They've caused hardship on the temple of Oghma in the past.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~And who cares about a couple of books gnome? All your faith cares about as I understand is the spreading of knowledge. This is coin, and coin is far more versatile in its usefulness.~
END 

I_C_T RENAL 10 X3VieRenal10 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You are turning down a profitable opportunity. I have no idea what you are thinking.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Supporting thieves on the Docks is not what Althkata needs. They've caused hardship on the temple of Oghma in the past.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~And who cares about a couple of books gnome? All your faith cares about as I understand is the spreading of knowledge. This is coin, and coin is far more versatile in its usefulness.~
END 

I_C_T PRISS 1 X3ViePriss1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. *Giggle* this, *giggle* that. All her grey matter is full of air.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You're just jealous, Vienxay. Damn, I wish I was that guy.~
END 

INTERJECT TIANA 4 X3VieTiana4  
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("TalkedToRumar","GLOBAL",1)~ THEN ~Ugh, spare us the screeching. He's in the back rooms, fondling another human. Quite disgusting.~
EXTERN TIANA 5

INTERJECT TIANA 6 X3VieTiana6  
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("TalkedToRumar","GLOBAL",1)~ THEN ~Ugh, spare us the screeching. He's in the back rooms, fondling another human. Quite disgusting.~
EXTERN TIANA 5

I_C_T SEWERM1 13 X3VieSEWERM1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~This blade must be really special if it is guarded by riddles. 'Tis no magic tome however, and thus I have little interest.~
END 

 
I_C_T LEHTIN 9 X3EmiLEHTIN9 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I don't need to be a master of shadows to tell you how much better subtlety is in this sort of situation.~
END 
 
I_C_T NALIA 13 X3EmiNalia13 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. Another human who coddles the poor. Let's see how long she can even survive.~
END 

I_C_T BEGGAR1 6 X3VieBeggar1-6 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Even one coin is something you could be saving up for far better use.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END  

I_C_T RUFPAL2 5 X3RebRUFPAL2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~What an idiot. Show him true power, <CHARNAME>.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~
END  

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,1)
Global("X3Vie","LOCALS",0)~ THEN WAYLANE X3Vie
~Hey! Pretty elf with the tattoo on her head!~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~Pretty? You have my attention.~
== WAYLANE ~Yes, you! See this mighty fine sphere here? You can have it for your very own for a mere 500 gold pieces! What do you say?~
== X3VieJ ~I say you are wasting my time. Con somebody else.~
EXIT 

I_C_T BEGGAR1 1 X3VieBeggar1-1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~We have better things to do than waste gold on worthless commoners.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T BEGGAR3 1 X3VieBeggar3-1 
== X3VieJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN ~This is clearly a con. A waste of time.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T SLUMM1 2 X3VieSLUMM1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Fools fear what they do not understand, peasant. Achieve understanding and you will know magic is to be embraced.~
END 


I_C_T GAELAN 74 X3VieGaelan74 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I do not see much of a choice. We can play along and raise some gold, and if we change our minds, we can keep it for ourselves.~
END  

I_C_T GAELAN 66 X3VieGaelan74 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Finally, we get to meet the true power. No more games, and finally answers on what has this group so interested.~
END 

I_C_T KALAH2 6 X3VieKALAH2 
== X3VieJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN ~Please, enough with the sob story. Ask him for the secrets to his power.~
END 

I_C_T HAWKER01 0 X3VieHAWKER0 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~They do, I admit. Unfortunate that they also have that awful Madam Yuth.~
END 

I_C_T CIRCG1 8 X3VieCIRCG1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~There is certainly a power in the air here. I say we should see to this ourselves, if at least to sate my curiousity on what magic is involved here.~
END 

I_C_T NOBLEW3 6 X3VieNOBLEW3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Snub me? Please, I'll snub you.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Right, because that makes all the difference. Let's just move on and deal with more important things.~
END 

I_C_T AERIE 37 X3VieAerie37 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~The avariel. Regal, grand, and certainly deserving of some assistance.~
END  

I_C_T AERIE 1 X3VieAerie1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, do not torment my kin. Give it to her and let this be over with.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3ViePartyBG1","GLOBAL",1)Global("X3EmiPartyBG1","GLOBAL",1)~ THEN ~If even Vienxay is saying this is wrong, it's wrong.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END

I_C_T WCUST03 0 X3VieWCUST03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. This Count is hardly a catch as it is.~
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,1)
Global("X3Vie","LOCALS",0)~ THEN MURTLEN X3Vie
~You! Have you ever been cheated here? I bet ye have!~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~Yes, to my great irritation. But I *always*, make them pay.~
EXIT 


CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
Global("X3Vie","LOCALS",0)~ THEN BELMIN X3Vie
~You! Another of that horrible race! You dare approach me, elf?~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~Excuse me. But mind how you talk to your betters.~
== BELMIN ~Your betters?! Arrogant, evil! You will lead us all to the nine hells if you could.~
== X3VieJ ~There is hardly a reason to be jealous. We are older, more beautiful, and hardly evil. All things I am glad to take pride in.~
== BELMIN ~You admit to it! You admit to your hubris of arrogance!~
== X3VieJ ~Ugh, I tire of his shrieking. Let us be gone from this peasant.~
EXIT  

I_C_T GERETH 0 X3VieGERETH0
== X3VieJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN ~If we had seen some, why would we share something so useful with you?~
== GERETH ~Why y- wait, weren't you thrown out?~
== X3VieJ ~Temporarily. Money tends to change fortunes here, it seems.~
== GERETH ~Perhaps <PRO_HESHE> that is with you will be less awful. You, do you see any salamander dust?~
END 

I_C_T SCROLL01 0 X3VieScroll01 
== SCROLL01 IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~But if that elf that is with you causes anymore trouble, and I won't sell you a thing.~
== X3VieJ ~Ugh, I hate this human. I will be standing away from her. Shop with her if you must, I'm sure we can find the same wares elsewhere.~
== SCROLL01 ~No, I am sure you could not. Take a look and see for yourself.~
END 

I_C_T SENTINEL 0 X3VieSENTINEL 
== SENTINEL IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ask the arrogant elf. I have seen her taken care of myself.~
== X3VieJ ~Ugh, she deserved it. But I will be on better behavior this time, as long as Lady Yuth is in turn.~
== SENTINEL ~Good. Now move along.~
END 

/*Story Interjections*/ 
CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN CELVAN X3Vie
~"There once was an elf so awful,
That she received the boot from those who were lawful.
Wandered and wander did she went,
And angrier and angrier did she vent
But a chance to return may come from a role model."~
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ ~What utter nonsense. Explain yourself!~
EXTERN CELVAN 1

//Madam Nin
EXTEND_BOTTOM MADAM 0
IF ~Name("X3Vie",LastTalkedToBy)~ EXTERN X3VieJ X3VieMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Vie",LastTalkedToBy)~ EXTERN X3VieJ X3VieMadam
END


CHAIN X3VieJ X3VieMadam 
~Please. I doubt any of your humans could sufficiently please me. Ask someone else.~
EXIT 

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("X3Vie")
See("X3Vie")
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",2)~ THEN MADAM X3VieMadam
~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~
== X3VieJ ~Please, <CHARNAME> is completely uninterested in any of your simple pleasure workers. Bother somebody else.~
EXTERN MADAM 17
//Sylvanas
CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Vie",LastTalkedToBy)~ THEN SALVANAS X3VieSalvanas
~My sweet elf. I sense your intelligence is equaled only by your own beauty.~
== X3VieJ ~Is that it? You need to work on your lines.~
== SALVANAS ~The sheen of light on your skin, the shimmering color in your eyes mesmerizes me.~
== X3VieJ ~I suppose I am enjoying the attention...~
== SALVANAS ~You are? Perhaps we could find somewhere private, then?~
== X3VieJ ~Tempting, but I am going to save myself a subpar experience and say no. You would be a poor lover at best, too inexperienced and fumbling. Go away.~
EXIT

//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Vie",LastTalkedToBy)~ EXTERN TRGYP02 X3Vieg1
END

CHAIN TRGYP02 X3Vieg1
~Ah, you bear both the mark and the weight of an exile. You long for a second chance, always thinking of your homeland. Give up power, and you may find the way home again.~
== X3VieJ ~I will find my own way home, without giving up any of my hard earned power. But your...divinations are still somewhat appreciated.~
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3VieYOSHJ113
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Your time ticks, Yoshimo. We *will* have revenge.~
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie") Range("X3Vie",15)~ THEN
~You look as if you are about to fall down. Snap out of it. What's going on?~
END
++ ~There's nothing wrong with me.~ EXTERN X3VieJ spellhold.1
++ ~I'm fine. Just... a bit dizzy.~ EXTERN X3VieJ spellhold.1
++ ~Something's not right. I think Irenicus did something to me.~ EXTERN X3VieJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3VieJ spellhold.1
~I can tell you are hiding details. Just keep on your feet until we get out of here. Else we may never get out of this place.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~They'll be just fine, Vienxay! We are all here for <PRO_HIMHER>.~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If ye need healing, I'm here. And if ye need to give that bastard a beating, all the better.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, hate to be the pessimistic one, but...this is shaping out to be quite the misadventure. We need to right our fortunes.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We have to survive. No. We will survive, together.~ 
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3VieFirstSlayerChange1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")See("X3Vie")~ THEN ~By All the Seldarine! <CHARNAME>, what have you become?~
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3VieSecondSlayerChange0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie") OR(2) Global("X3VieRomanceActive","GLOBAL",1) Global("X3VieRomanceActive","GLOBAL",2)~ THEN ~What is going on now? <CHARNAME>? Answer me.~
END
++ ~Get away from me, I'm turning!~ EXTERN X3VieJ X3VieSecondSlayerChange1
++ ~It's coming again, Vienxay! Run while you can!~ EXTERN X3VieJ X3VieSecondSlayerChange1
++ ~I feel... strange...~ EXTERN X3VieJ X3VieSecondSlayerChange1

CHAIN X3VieJ X3VieSecondSlayerChange1
~Be more s- ...By Mystra!~
DO ~SetGlobal("X3VieSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3VieSlayerSurvived1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie") OR(2) Global("X3VieRomanceActive","GLOBAL",1) Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSecondSlayerChange","GLOBAL",1)~ THEN ~You need to stop doing that, <CHARNAME>. Grr, that human mage had to have done this! Infuriating!~
= ~Such power could be useful...but could also kill you if you can't control it. But if you cannot control it, then we must find a way to fix this, or we both shall die from your power.~
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Vie") Global("X3VieSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END


// Phaere

CHAIN IF ~Global("X3VieCheckMad1","GLOBAL",1)Global("X3VieMad1","LOCALS",0)~ THEN X3VieJ Phaere_Warning
~<CHARNAME>. Tell me, why are you being foolish and flirting with a drow?!~ 
DO ~SetGlobal("X3VieMad1","LOCALS",1)~
END 
++ ~Someone's green with envy.~ + PW.1 
++ ~It's part of my plan, Vienxay, to gain a bit of trust. Nothing more.~ + PW.2 
++ ~This isn't any of your business.~ + PW.3

CHAIN X3VieJ PW.1 
~Whatever. Just tell me why are you being so foolish?~
END 
++ ~It's part of my plan, Vienxay, to gain a bit of trust. Nothing more.~ + PW.2 
++ ~This isn't any of your business.~ + PW.3

CHAIN X3VieJ PW.2 
~Hrmph. I suppose such could work...though it could easily backfire. Take care of your game.~
EXIT 

CHAIN X3VieJ PW.3 
~If you wish to be a fool, then be a fool! I will not bring it up further, for now.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@506)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",2)~ + ~My companion, Vienxay.~ EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3VieCheckMad2","GLOBAL",1)Global("X3VieMad2","LOCALS",0)~ THEN X3VieJ X3ViePhaere
~Well, look who it is.~ [X3BLANK]
DO ~SetGlobal("X3VieMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3VieJ X3ViePhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3VieJ X3ViePhaere2

CHAIN X3VieJ X3ViePhaere1
~You slept with a drow. Please, you don't need to say it. You reek of the filth~
= ~I will say that it disgusted me. I do not think I will dare become close with a drow sleeper. Let us talk no more of this!~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@509)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3VieJ X3ViePhaere2
~Well, that was short. Good. Whatever. Not that I was concerned, or anything.~
= ~Let's return to our task here. The sooner we get out of this awful place, the better.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~ 
EXIT


//Bodhi 
EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3VieKidnap
END

CHAIN BODHIAMB X3VieKidnap
~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~
= ~Consider that...awful elf, Vienxay. I understand you have gotten close, somehow. I can't imagine what it will feel like when you are torn apart.~
== X3VieJ ~Oh, you bore me, vampire. <CHARNAME> has already proven <PRO_HISHER> strength is greater than yours.~
== BODHIAMB ~It is you who should be afraid, Vienxay!~
== X3VieJ ~I know what you intend! You underestimate my own power!~
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3VBodhi")~ 
EXIT

CHAIN IF WEIGHT #-1
~Global("X3VieVampire","GLOBAL",1)~ THEN BODHIAMB X3VieKidnap4
~What?! Forget about her. Deal with them.~
END
IF ~~ DO ~DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
ForceSpell(Myself,DRYAD_TELEPORT)
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)SetGlobal("X3VieVampire","GLOBAL",2)SetGlobalTimer("X3VieDelay","GLOBAL",TWO_ROUNDS)
DestroySelf()~ EXIT

CHAIN IF ~Global("X3VieVampire","GLOBAL",3)~ THEN X3VieJ BodhiEvade 
~That bitch! The Shadowplane here is horrid in a place like a graveyard. Did you already defeat her?~
DO ~SetGlobal("X3VieVampire","GLOBAL",4)~
END 
++ ~Vienxay, you are all right!~ + BE.1
++ ~Wait, what happened to you?~ + BE.3
++ ~No. She fled, likely into her hideout. Likely preparing for our arrival.~ + BE.2

CHAIN X3VieJ BE.1 
~Of course I am all right. I am not stupid. I know very well the dangerous charms of a vampire.~
EXTERN X3VieJ BE.2

CHAIN X3VieJ BE.3 
~I went into the Shadowplane, before she could take over my mind with her power. It worked splendidly, though the shadowplane often is very similiar to the place you left. Suffice to say, I am not keen to do that again.~
EXTERN X3VieJ BE.2

CHAIN X3VieJ BE.2 
~No matter. It is time for our revenge. No one dares to destroy this couple and lives! Let us see to this vampire's end.~
EXIT 

I_C_T C6BODHI 0 X3VieRomC6Bodhi0 
== X3VieJ IF ~Global("X3VieRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Vie")Global("X3VieVampire","GLOBAL",4)~ THEN ~Nobody tries to turn me! Consider this revenge.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, if anyone takes the bloody elf out of the group, it's me.~
END 

I_C_T C6BODHI 0 X3VieC6Bodhi0
== X3VieJ IF ~!Global("X3VieRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Vie")~ THEN ~We will have revenge. Your end is coming.~
END


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieTreeOfLife","GLOBAL",0) !Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 Epl2
END

CHAIN PLAYER1 Epl2
~Vienxay, the elf who you whisked away from a fate behind bars. Her debt is perhaps more than repaid, though here she is still.~
DO ~SetGlobal("X3VieTreeOfLife","GLOBAL",1)~
END
++ ~Vienxay, you don't owe me anything further. This is no longer your fight.~ EXTERN X3VieJ pl2.2
++ ~This is it. Are you sure you wish to go with me?~ EXTERN X3VieJ pl2.2
++ ~I need to know that you are ready, Vienxay.~ EXTERN X3VieJ pl2.2

CHAIN X3VieJ pl2.2 
~Please. After all this mage has done to my people? Vengeance shall be had, for us both.~
EXTERN X3VieJ pl2.1

CHAIN X3VieJ pl2.1
~Irenicus will have the punishment that he should have had all along: death. For you, and for all of those he has made suffer. This I swear.~
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieTreeOfLife","GLOBAL",0) Global("X3VieRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 Epl3
END

CHAIN PLAYER1 Epl3
~Vienxay, the arrogant elf who first traveled with you over a sense of debt, and then perhaps from the closeness you shared. You notice she gives you a roll of her eyes.~
DO ~SetGlobal("X3VieTreeOfLife","GLOBAL",1)~
END
++ ~Vienxay-~ EXTERN X3VieJ pl3.1

CHAIN X3VieJ pl3.1
~Please. Don't bother. This is not just about you anymore. This is about my people. And he will pay for everyone of them.~
= ~But this could also...be the end. I will do all in my power to see that not come to pass. I have come to...truly care about you, and...well, whatever! It is not the time for much mushiness.~
= ~It will be us or him, <CHARNAME>. But I swear I will give him a fight he will never recover from, one way or another.~
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3VieIrenicusIsDead1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Yes! Our magic is supreme! But are you normal? Things seem the same.~
END

// Hell

I_C_T PLAYER1 25 X3VieEnteringHell1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. I... died...but now I am here?! I do not care what lies ahead, let us fight through it all. This is not a fate either of us deserves.~ [X3EDID]
END

// Irenicus in hell

I_C_T HELLJON 7 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh, I have longed for this moment. No more running. This is it. This is the moment where I will have my vengeance, for <CHARNAME> and my people both! Prepare to be overwhelmed by my mastery of the art and shadows both!~
END

I_C_T HELLJON 8 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh, I have longed for this moment. No more running. This is it. This is the moment where I will have my vengeance, for <CHARNAME> and my people both! Prepare to be overwhelmed by my mastery of the art and shadows both!~
END

I_C_T HELLJON 9 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh, I have longed for this moment. No more running. This is it. This is the moment where I will have my vengeance, for <CHARNAME> and my people both! Prepare to be overwhelmed by my mastery of the art and shadows both!~
END

I_C_T HELLJON 10 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh, I have longed for this moment. No more running. This is it. This is the moment where I will have my vengeance, for <CHARNAME> and my people both! Prepare to be overwhelmed by my mastery of the art and shadows both!~
END

//Temple District Talk 

CHAIN IF ~Global("X3VTempleTalk","LOCALS",2)~ THEN X3VieJ TempleTalk
~Why does this human city not even have a temple dedicated to Mystra? I miss Evermeet's temples to the Seldarine, but I had hoped at the very least Mystra would have representation.~
DO ~IncrementGlobal("X3VTempleTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Considering their distaste for magic, I would be suprised if they did.~ + TT.2
++ ~We can look for one, if you like.~  DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + TT.1
++ ~I did not think you were religious, Vienxay.~ + TT.3
++ ~Come, stop whining.~ + TT.X

CHAIN X3VieJ TT.1
~Kind, but do not bother. I have seen much of the city and there is nothing, and few elven folk as it is, and I do not wish to knock on doors to use their personal shrines.~
EXTERN X3VieJ TT.4

CHAIN X3VieJ TT.2 
~Yes, a completely moronic point of view that they have. They are rather hopeless to me sometimes, humans.~
EXTERN X3VieJ TT.4

CHAIN X3VieJ TT.3
~Not terribly, no. I revere them, and I love them, but I am no priestess nor fanatic.~
EXTERN X3VieJ TT.4

CHAIN X3VieJ TT.X 
~Fine. I will.~ 
DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~
EXIT 

CHAIN X3VieJ TT.4
~It is just a way that would help me feel...connected to home. Surely you understand, being far away yourself.~
END 
++ ~I do. I think of home all the time.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + TT.5
++ ~I don't. I'm glad to be away from home.~ + TT.6
++ ~That is a bit...personal.~ + TT.7

CHAIN X3VieJ TT.5
~Home is where the heart is. A pity it also brings with it anguish.~
EXTERN X3VieJ TT.Exit 

CHAIN X3VieJ TT.6
~I see. I suppose each of us is different, then. You feel freedom, and I feel anguish.~
EXTERN X3VieJ TT.Exit 

CHAIN X3VieJ TT.7
~Have your privacy if that is your wish. I mean no intrusion.~
EXTERN X3VieJ TT.Exit 

CHAIN X3VieJ TT.Exit 
~We've spoken long enough, I think. Let us carry on.~
EXIT 


// Book of Myth Drannor Retrieved

CHAIN IF ~Global("X3VieQuest","GLOBAL",9)~ THEN X3VieJ QuestFound
~I can't believe it! Yes, yes, yes! I, Vienxay, have retrieved the Tome of Myth Drannor.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",15)
DisplayStringNoNameDlg(Player1,@519)~
END 
++ ~Don't forget about the rest of us.~ + QuestFound2
++ ~I'm glad you are happy.~ + QuestFound2
++ ~Shh, not so loud.~ + QuestFound2

CHAIN X3VieJ QuestFound2
~Allow me a moment to look through this. Perhaps something could be immediately useful.~
DO ~StartCutSceneMode()StartCutScene("X3VCut01")~ EXIT 

CHAIN IF ~Global("X3VieQuest","GLOBAL",10)~ THEN X3VieJ QuestFound3 
~There's a spell of absorption here. While it would only allow a portion of the contents to be immediately gathered, it could allow any one of us who reads elven to be immediately more knowledgeable of much within it save a few specific arts.~
DO ~SetGlobal("X3VieQuest","GLOBAL",11)~
== X3VieJ ~It would take years we may never have to learn the rest. It is my strongest recommendation that the tome be used this way, with obviously myself the highest recommended choice.~
== X3VieJ ~Of course...we could return it to the Sage Sules'terim. As much as I desire it for myself, I must admit there is the obvious choice of helping our people.~
END 
++ ~We should give it to the sage. It's only right it is returned to your people.~ + QuestSage
++ ~We should make use of it ourselves. Evermeet has done nothing for you, and doesn't deserve it.~ + QuestKeep
// If the player is Elf or Vienxay loves them, she will be more thoughtful. Otherwise, she will express keeping it for herself. Both raise approval.
+~OR(3)Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+ ~And what do you want to do, Vienxay?~ DO ~IncrementGlobal("X3VieApp","GLOBAL",1)~ + QuestChoice1
+~!Global("X3VieRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",2)!Race(Player1,ELF)~+ ~And what do you want to do, Vienxay?~ DO ~IncrementGlobal("X3VieApp","GLOBAL",1)~ + QuestChoice2

CHAIN X3VieJ QuestSage 
~Perhaps...perhaps you are right. Despite how I have been ostracized from Evermeet, my people should still have it.~
EXTERN X3VieJ QuestSageDecision

CHAIN X3VieJ QuestSageDecision
~Let us finish our tasks here. The sooner we get back to the surface, the better.~
DO ~AddJournalEntry(@6,QUEST)~ EXIT 

CHAIN X3VieJ QuestKeep
~We did get it ourselves. They had no part in it. They didn't even try. It was our power, our greatness, and so we deserve it.~
EXTERN X3VieJ QuestKeepDecision

CHAIN X3VieJ QuestKeepDecision
~I could not have done it without you, so I will let you decide which one of us absorbs its  knowledge. But as you should listen to my opinion, I am the best choice.~
DO ~AddJournalEntry(@7,QUEST_DONE)AddexperienceParty(30000)~ EXIT 

CHAIN X3VieJ QuestChoice1 
~I want to keep it for myself. But I can see hear what my sisters would think of that in my head. I suppose it would be nice to show my people I think of them, even if I am forced from them.~
END 
++ ~Then let us return it to the sage, as you desire.~ + QuestGiveDecision
++ ~I see. Despite your thoughts, I think we should use it for ourselves.~ + QuestKeepDecision
++ ~Let us think about it. We can decide later.~ + DecideLater

CHAIN X3VieJ QuestChoice2 
~Right now, in this dark place? It should be ours to use for our own goals. I went and did what they could not send anyone to do. Using it for ourselves may help keep us alive, and in your condition, we need everything we can get.~
END 
++ ~Then let's keep it for ourselves, as you desire.~ + QuestSage
++ ~Despite your thoughts, we should return it to the sage.~ + QuestGiveDecision
++ ~Let us think about it. We can decide later.~ + DecideLater

CHAIN X3VieJ QuestGiveDecision 
~Thank you, <CHARNAME>. For taking in my input. I think the sage will be very happy, maybe even be less displeased with me.~
EXTERN X3VieJ QuestSageDecision

CHAIN X3VieJ DecideLater 
~Yes, we can decide later. We need not use it now, and we are far from the sage for giving. Your decision is the final one, so do ensure it is a good choice you make for us.~
DO ~AddJournalEntry(@8,QUEST)~ EXIT

//Friendship Talk 1

CHAIN IF ~Global("X3VieTalk","LOCALS",2)~ THEN X3VieJ Talk1
~Thank you for your help earlier, <CHARNAME>. I can't understand why all the humans here trouble me.~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~It surely has nothing to do with your attitude.~ + T1.1 
++ ~The guard was just doing his job.~ + T1.2 
++ ~They don't like you, and will want any excuse to act on it.~ + T1.3 

CHAIN X3VieJ T1.1 
~I can see you're making fun of me, now. They were being mean to me first. I just responded accordingly.~
END 
++ ~It's not fair, but sometimes we have to keep our head up.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.4
++ ~You were in the right. A shame there is no justice around here.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.5
++ ~That response was what got you in trouble.~ + T1.6
++ ~I don't want to hear you whine about this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T1.X

CHAIN X3VieJ T1.2 
~If he was doing his job, he'd have arrested the shopkeeper, too. That's why I got snippy with him.~
END 
++ ~It's not fair, but sometimes we have to keep our head up.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.4
++ ~You were in the right. A shame there is no justice around here.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~+ T1.5
++ ~That response was what got you in trouble.~ + T1.6
++ ~I don't want to hear you whine about this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T1.X

CHAIN X3VieJ T1.3 
~Well that's hardly responsible. A guard shouldn't act on his dislike.~
END 
++ ~It's not fair, but sometimes we have to keep our head up.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.4
++ ~You were in the right. A shame there is no justice around here.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.5
++ ~He shouldn't, but some do.~ + T1.6
++ ~I don't want to hear you whine about this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T1.X

CHAIN X3VieJ T1.4 
~You remind me of my sisters when you say that. They would always reassure meand try to keep me from making mistakes. I...miss them. I wish I could see them one more time.~
EXTERN X3VieJ T1.7

CHAIN X3VieJ T1.5 
~Precisely. I am so glad someone agrees with me. Hrmph. If things were run by me, I assure you, the world would be perfect.~
= ~Unfortunately, they are not. Perhaps...someday. Some glorious day, that will be different.~
EXIT 

CHAIN X3VieJ T1.6 
~Corruption at its finest. In Evermeet things made sense, and I had family. But I suppose I've gotten used to having no more luxury. How I dreadfully miss it.~
EXTERN X3VieJ T1.7

CHAIN X3VieJ T1.7
~Perhaps someday...some glorious day, I can finally go home.~
EXIT 

CHAIN X3VieJ T1.X 
~That's what the guard said. "Stop whining". People here are so unable to want to listen.~
= ~Perhaps someday...some glorious day, I will achieve the respect I am due.~
EXIT 

// Vienxay's Second Talk is already done, and starts her quest.
CHAIN IF ~Global("X3VieTalk","LOCALS",4)~ THEN X3VieJ FriendshipTalk2 // This is basically her quest talk, but is slotted with the second talk.
~Did I tell you why I bothered coming to this filthy Althkata?~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieQuest","GLOBAL",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~No, you didn't.~ + t2.story 
++ ~I have a feeling you're about to share anyway.~ + t2.story
+~Race(Player1,ELF)~+ ~I think the city is a fine place, personally.~ + t2.elf_personally 
+~!Race(Player1,ELF)~+ ~I think the city is a fine place, personally.~  + t2.personally

CHAIN X3VieJ t2.story 
~Supposedly a group of my people from Evermeet came here carrying a old book from Myth Drannor. In it contained secrets and knowledge of our oldest elven magic, much of what had been lost when the place fell into ruin.~
== X3VieJ ~It never made it, however. They were supposed to arrive to Althkata, but it was lost in transit. It was never explained or elaborated what happened to it.~
== X3VieJ ~One of the sons of the original expedition, a scholar named Sules'terim, lives in the area. Unfortunately I was having little luck finding him, and asking storekeepers led to...problems you saw for yourself.~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ t2.Recorder_knows  
++ ~Any ideas where to ask around?~ + t2.ask_around
++ ~A scholar? Perhaps someone in the temple of Oghma might know.~ + t2.temple 
++ ~And why are you interested in this book?~ + t2.book

CHAIN X3VieJ t2.elf_personally
~What? If you had hailed from one of the elven cities, <CHARNAME>, you would quickly see how wrong these lesser places are, especially Althkata. Let me tell you why I bothered coming here at all.~
EXTERN X3VieJ t2.story

CHAIN X3VieJ t2.personally 
~Of course you think that. I'd expect such an opinion of your kind.~
EXTERN X3VieJ t2.story 

CHAIN X3RebJ t2.Recorder_knows 
~Sules'terim? He's quite the sage. My mother may know more about him, he's visited the temple a couple of times in the past.~
== X3VieJ ~Look <CHARNAME>, our gnome is useful after all. I would request a visit to the temple to see her mother, then. I want this book for myself, to further my own power.~
DO ~AddJournalEntry(@1,QUEST)~
END 
++ ~I suppose we can make the time.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ EXTERN X3VieJ t2.time  // 
++ ~There's no need to be rude to Recorder, especially when she's helping you here.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3VieAppChange","GLOBAL",1)~ EXTERN X3VieJ t2.rude // 
++ ~How does this item benefit me? It sounds like this is just for you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ EXTERN X3VieJ t2.you  // - Vienxay 
++ ~We don't have the time, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ EXTERN X3VieJ t2.no_time // - Vienxay 

CHAIN X3VieJ t2.ask_around 
~I was going to ask you. I suppose... I suppose the temple of Oghma would be a place to start. That is the human's deity of knowledge. If his subjects are as knowing as he wants them to be, perhaps they will be useful.~
EXTERN X3VieJ t2.book 

CHAIN X3VieJ t2.temple 
~The human god of knowledge? I suppose that would be a place to start, though humans tend to be dissapointing with their knowledge.~
EXTERN X3VieJ t2.book 

CHAIN X3VieJ t2.book 
~I want this book's power for myself. To know the secrets of our oldest arts...my people will be envious and regret ever banishing me.~
DO ~AddJournalEntry(@1,QUEST)~
END 
++ ~I suppose we can make the time.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + t2.time 
++ ~How does this item benefit me? It sounds like this is just for you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ +  t2.you  
++ ~We don't have the time, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + t2.no_time 

CHAIN X3VieJ t2.time 
~Good. I am already eager with anticipation. Let us hope they know where Sules'terim is, and that he hasn't well left the area.~
EXIT 

CHAIN X3VieJ t2.you 
~It benefits you by increasing my power, thus making me an even greater asset than I am already to your cause. A clear win-win scenario, I would think. You'll see soon enough.~
EXIT 

CHAIN X3VieJ t2.rude 
~Hrmph. I am merely remarking that she has not always been the best asset to you. There's no need to get all huffy at me.~
== X3VieJ ~Forget about it. When you find a moment do take us to her mother. If she is as helpful as Recorder says, I will consider apologizing. But only then.~
== X3RebJ ~You would have more friends, if you were not so quick to slap the giving hand.~
== X3VieJ ~You have given nothing yet. When we see your mother, we will see then.~
EXIT 

CHAIN X3VieJ t2.no_time 
~"Don't have the time.", <PRO_HESHE> says. Of course we have the time, if you would consider your priorities, getting strong enough to stop that mage you are after should be at the top, and thus helping me get more powerful is important.~
== X3VieJ ~But it is up to you to reconsider and make the sensible choice. You are our group leader, I will begrudgingly admit. At least for now.~
EXIT 

//Friendship Talk 3

CHAIN IF ~Global("X3VieTalk","LOCALS",6)~ THEN X3VieJ Talk3
~Do remind me what you are doing in this part of the world. All Amn has shown so far is...how uncultured it is.~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~I didn't come here by choice. When I escaped Irenicus, in Alhkata is where I found myself.~ + T3.1 
++ ~I am trying to get back Imoen, with whatever it takes.~ + T3.3
++ ~More grumbling about the land, Vienxay? Color me suprised.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T3.X 

CHAIN X3VieJ T3.X 
~I have every right to. I hate this land. It's not Evermeet...and it never will be. But if you don't want to hear about it, fine.~
EXIT 

CHAIN X3VieJ T3.XX 
~I can see it's painful for you to speak of. Have your privacy, as you wish.~
EXIT 

CHAIN X3VieJ T3.1 
~And what do you know of this Irenicus?~
END 
++ ~He wants something with me, but I am not yet sure.~ + T3.2 
++ ~I know he caused me to lose Imoen, and that he will pay for it.~ + T3.3
++ ~Nothing except that he is a powerful mage.~ + T3.2 

CHAIN X3VieJ T3.2 
~The way you speak of him reminds me of my mentor. After she caused me to get exiled from Evermeet, I hated her. She showed me the dark side of magic, and influenced me in a way I forever regret.~
EXTERN X3VieJ T3.4

CHAIN X3VieJ T3.3
~Imoen. Are you close with her?~
END 
++ ~We grew up together, and she's been by my side. She's saved me a couple of times too.~ + T3.4 
++ ~She's been a nuisance that's followed me around. I don't know how she's survived without me.~ + T3.4
++ ~I'd rather not talk about it, if I can, Vienxay.~ + T3.XX

CHAIN X3VieJ T3.4 
~That reminds me of my relationship with my sisters. They could be some annoying sometimes, always arguing with my greater intelligence and wisdom. But...they've helped me a time or two. I still remember when they lied for me after our parents found the neighbor's cat in our home I had conjured in practice. I would have never been allowed to further my magic education otherwise.~
EXTERN X3VieJ T3.5

CHAIN X3VieJ T3.5
~All the people we touch in our lives always leave an imprint in our spirits, they say. If it's true, it's been only bothersome. I can never stop thinking about my sisters, never stop hating my mentor. Have I touched you in such a way yet?~
END 
++ ~A beautiful elf like yourself? You're hard not to think about sometimes.~ + T3.6
++ ~Your nature has definitely been enjoyable to be around. I like you, Vienxay.~ + T3.7
++ ~I'm not sure yet. I still don't know you too well.~ + T3.8
++ ~Not at all.~ + T3.8

CHAIN X3VieJ T3.6 
~I'm not sure whether to be quite flattered or very careful about prodding on what these thoughts about me are. I'll do both for now, I think. I do like to be thought as beautiful.~
DO ~SetGlobal("X3VieInterest","LOCALS",1)IncrementGlobal("X3VieAppChange","GLOBAL",1)~
EXIT 

CHAIN X3VieJ T3.7
~I've not heard such a compliment in too long. I think it is about time I do get some recognition. Thank you, <CHARNAME>. I will admit you are an enjoyable companion, at least so far. You may make me miserable later.~
DO ~SetGlobal("X3VieInterest","LOCALS",1)IncrementGlobal("X3VieAppChange","GLOBAL",1)~
EXIT 

CHAIN X3VieJ T3.8
~Well, forget it, then. It may just be a bunch of philosophical non-sense I read back in Evermeet. Perhaps it means nothing now. Perhaps a lot of things mean nothing now.~
EXIT 

//Friendship Talk 4

CHAIN IF ~Global("X3VieTalk","LOCALS",8)~ THEN X3VieJ Talk4
~Do you ever regret leaving home, <CHARNAME>? I suppose your home, as I've understand it, is hardly luxurious, but it is a home.~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~If things could have been different, I would stay.~ + T4.2
++ ~There isn't much to regret. I had to leave Candlekeep. Often, I find I'm often forced to go away from any sort of place after a while.~ + T4.1 
++ ~I was never happy in Candlekeep. I'd much rather be adventuring.~ + T4.3

CHAIN X3VieJ T4.1
~I suppose we are both exiles, in a way.~
EXTERN X3VieJ T4.2 

CHAIN X3VIeJ T4.2 
~Sometimes I wish there was a spell to go back in time. To put yourself back in a moment where everything in your life just came apart.~
== X3VieJ ~I still remember being confronted by my former lover. He was yelling and I let my emotions take over and use a spell I should never have tried.~
END 
++ ~Tell me more.~ + T4.5 
++ ~We can't go back, Vienxay. We can only strive forward.~ + T4.4 
++ ~So you just murdered him? That's terrible.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T4.6

CHAIN X3VieJ T4.3 
~Hrmph, when not givne the choice of going to the elven homeland, I would much rather be on the road than any civilization away from Evermeet as well.~
EXTERN X3VieJ T4.2 

CHAIN X3VieJ T4.4
~Of course I know that. I hate that. Just one second chance spell. That is all I would want.~
EXTERN X3VieJ T4.5 

CHAIN X3VieJ T4.6 
~It is so easy to judge when you were not there! My secret was out and I was afraid of my reputation and...I suppose it is foolish now, given all that's passed.~
EXTERN X3VieJ T4.5 

CHAIN X3VieJ T4.5 
~I used the magic my mentor at the time was trying to teach me to kill him, the shadow weave, which I regret touching now. It tore him apart. It was beautiful and horrifying, its scintillating colors, its pure raw energy just devouring him.~ 
== X3VieJ ~Every now and again I get the temptation just to feel all that raw power but I've learned its best not to use it. I will not add another spell of its kind to my knowledge, only shadow magic and the standard weave~
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ ~You had a different tune, back when we were marching to Dragonspear.~ + T4.7
++ ~I'm glad you see that it wasn't a good idea now.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T4.8
++ ~It's not wrong to use power as you need it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.11
++ ~Isn't Shadow magic the same thing?~ + T4.12

CHAIN X3VieJ T4.7
~I did, though that was not even the shadow weave. Besides, I was a criminal practically forced to fight for the expedition if I wanted to be free. I wanted every asset available to survive, and keep you safe.~
END 
+~!Race(Player1,ELF)~+ ~So you care about me, do you?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.9
+~Race(Player1,ELF)~+ ~So you care about me, do you?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.10
++ ~I'm glad you see that it wasn't a good idea now.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.8
++ ~It's not wrong to use power as you need it.~ + T4.11

CHAIN X3VieJ T4.12
~It has a similiar feeling. Sometimes I am worried it might be, and that I have really fallen below the expectations my parents once had of me.~
= ~But no, it is different. It is very different. It is hard to explain, so you will just have to believe me.~
END 
++ ~If you say so.~ + T4.14
++ ~I'm not sure I like the idea of you using any kind of shadow magic.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~+ T4.13 
++ ~I trust you Vienxay. I am glad you can at least see what is right and wrong now.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.8

CHAIN X3VieJ T4.8 
~Now hardly means much, does it? I suppose however, I should stop moaning about the past and make sure you don't make any regretful decisions on our journey. Just listen to me and w'ell be all right.~
EXIT 

CHAIN X3VieJ T4.9 
~I am an elf, but I am not above liking others, if they prove themselves. And you have so far, at least. I do appreciate your effort.~
DO ~SetGlobal("X3VieInterest","LOCALS",1)~
EXIT 

CHAIN X3VieJ T4.10 
~You are bearable, but I am here because I feel indebted, not to be your best friend. We have matters to take care of, don't we?~
EXIT 

CHAIN X3VieJ T4.11 
~My people disagree. And everytime I exercise power that way, I get punished. It makes me wonder why society celebrates its powerful wizards but punishes those who exercise it. It is truly infuriating.~
EXIT 

CHAIN X3VieJ T4.14 
~There is hardly an if about it if I did, is there? People say such strange things outside of the Green Isle, I swear.~
EXIT 

CHAIN X3VieJ T4.13 
~Well, that is not up for debate. I use it and it keeps me alive. Be grateful that it will also keep you alive.~
EXIT 

//Friendship Talk 5

CHAIN IF ~Global("X3VieTalk","LOCALS",10)~ THEN X3VieJ FriendshipTalk5 
~After some time in human civilization, at least this civilization around Athkatla, I have come to appreciate some of their ways of life.~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~That's very surprising to hear from you.~ + T5.1 
++ ~Oh? Such as?~ + T5.2 
++ ~Good. You are finally coming around to the great civilization of the Sword Coast.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T5.3

CHAIN X3VieJ T5.3 
~Please. Don't get carried away in your head.~
EXTERN X3VieJ T5.2

CHAIN X3VieJ T5.1 
~Am I truly incapable in your mind to make any positive comment about anything? I simply just don't throw out words to please people pointlessly.~
EXTERN X3VieJ T5.2 

CHAIN X3VieJ T5.2 
~There is an appreciation and ability for one to truly work. Laws are not so restrictive to hold back and bring woe upon the succesful. Merchants can advance themselves without constant regard for others.~
= ~In Evermeet it was different. Laws were even less restrictive. But there was always an unspoken regard for charity towards your own people. I did not always enjoy it, though those habits have hardly left me.~
END 
++ ~It sounds like you are more at home here, then.~ + T5.4 
++ ~We should be charitable. If you have more gold than you need, it should not be wasted.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~  + T5.5 
++ ~I agree. I have enjoyed the ways of life here.~ + T5.6

CHAIN X3VieJ T5.4 
~Oh please. The restrictiveness of magic here is completely unacceptable. I would rather be at home, despite my people's hearts being too soft. Though not too soft. My own exile is a reminder of that.~
EXTERN X3VieJ T5.7

CHAIN X3VieJ T5.5 
~Wasted? It is simply preserved for one's own needs. I do not say one cannot give if that is what they want. They should simply not feel obligated. Thus my loathing of taxes. It is such a ridiculous human invention.~
EXTERN X3VieJ T5.7

CHAIN X3VieJ T5.6 
~It is not all perfect. The restrictiveness of magic here is completely unacceptable. I would rather be at home, despite my people's hearts being too soft. Though not too soft. My own exile is a reminder of that.~
EXTERN X3VieJ T5.7

CHAIN X3VieJ T5.7
~*Sigh*. And here I go off again. I long for my homeland, but I should stop burdening you with my woes. You have enough on your plate.~
END 
++ ~I'd rather you open up to me, Vienxay. I want you to trust me, to be close to me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)SetGlobal("X3VieInterest","LOCALS",1)~ + T5.8
++ ~Quite. I'd appreciate it if you stopped insulting everything and everyone every chance you get.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T5.9
++ ~Do as you wish. It doesn't bother me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T5.10

CHAIN X3VieJ T5.8
~That is...not a request I have ever heard from someone. I confess I also enjoy these chats of ours. But to hear it is warming. It's almost uncomfortable.~
EXTERN X3VieJ T5.10

CHAIN X3VieJ T5.9 
~Hrmph, it is hardly *every* chance, but whatever. I will try to heed your words...or ignore them as I see fit.~
EXTERN X3VieJ T5.10 

CHAIN X3VieJ T5.10
~In any case, we have other things to do, don't we? I suggest we get back to that.~
EXIT 


//Quest Talk
//Resume here 


CHAIN IF ~Global("X3VieQuestStart","LOCALS",1)~ THEN X3VieJ QuestBook
~How infuriating. My entire purpose for coming to Amn pointless. All I wanted was some more power to bear being away from home at all, and the Seldarine deny me even this!~
DO ~IncrementGlobal("X3VieQuestStart","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~There is much to life you can devote yourself. Power need not be the only goal.~   + QuestBook.1 
++ ~You can devote yourself to helping me and keeping quiet.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + QuestBook.2 
++ ~I don't know, Vienxay. That's a question only you can answer.~ + QuestBook.3 

CHAIN X3VieJ QuestBook.1 
~And what other worthy pursuit is out there?~
END 
++ ~Making the world safer, better, a place you would want others to live in.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + QuestBook.4 
++ ~Redemption, and salvaging your name. Making yourself better so that you might be accepted again.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.5 
++ ~Knowledge and understanding. Think of the opportunity to travel wherever you wish.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.6 
++ ~I don't know, Vienxay. That's a question only you can answer.~ + QuestBook.3 

CHAIN X3VieJ QuestBook.2 
~Ugh, you are quite uninspiring sometimes, <CHARNAME>. Fine, I'll stay quiet, then.~
EXIT 

CHAIN X3VieJ QuestBook.3 
~And I don't know how to answer it. But I suppose...I can think about it. Perhaps when my journey with you comes to an end, I may have my answer.~
EXIT 

CHAIN X3VieJ QuestBook.4 
~That is naivity at its finest. You cannot do those things. People in this world will always be in peril, will always be in trouble.~
== X3VieJ ~I'm sure in your thoughts of idealism it works...but it doesn't, <CHARNAME>. The world is awful, and we just have to deal with it and survive.~
END 
++ ~That is bleak, Vienxay. Surely you don't believe that.~ + QuestBook.7
++ ~And survive we shall, by working together.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.8
++ ~You're too narrow-minded to see it anyway else, Vienxay, so see it in your bleak fashion as you wish.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + QuestBook.7

CHAIN X3VieJ QuestBook.5 
~I want to do that, <CHARNAME>. More than anything else. I just wish I knew how.~
END 
++ ~It's a process that takes one day at a time.~ + QuestBook.8
++ ~I will help you. We can figure it out together.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.8 
++ ~I wish I knew, too, Vienxay.~ + QuestBook.3 

CHAIN X3VieJ QuestBook.6 
~That is something I would be interested in. There is so much knowledge of our people's history and forgotten elven nations hidden amongst forgotten shadows.~
EXTERN X3VieJ QuestBook.8

CHAIN X3VieJ QuestBook.7 
~Being forced from your home helps you see many things in a different light. Keep your  naivity <CHARNAME>, it suits you. But I won't be blinded.~
EXIT 

CHAIN X3VieJ QuestBook.8
~I don't know why you are nice to me. I must be quite...difficult at times, I admit.~
END 
++ ~I'm fond of you Vienxay. And none of us are perfect.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)SetGlobal("X3VieInterest","LOCALS",1)~ + QuestBook.9
++ ~I think everyone should be treated with some dignity.~ + QuestBook.10
++ ~You are very, very difficult.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + QuestBook.11 

CHAIN X3VieJ QuestBook.9
~I'm fond of you too, <CHARNAME>. You make my time in exile more bearable. Just don't start gloating about it.~
EXIT 

CHAIN X3VieJ QuestBook.10 
~I don't know about everyone. But I do appreciate how you treat me.~
EXIT 

CHAIN X3VieJ QuestBook.11 
~You don't have to agree with me! Hrmph, I should never have said anything.~
EXIT 


// Post Slayer Change Non-Romance 
CHAIN IF ~Global("X3VieTalk","LOCALS",12)~ THEN X3VieJ Talk6
~Your situation reminds me of my own not long ago, when my mentor betrayed me and I was ousted from Evermeet. I lost everything. But you...have truly, literally lost *everything*.~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Not yet. I am still standing.~ + T6.1 
++ ~I will get my soul back from Irenicus.~ + T6.2
++ ~Why do you care?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T6.3 

CHAIN X3VieJ T6.1
~Yes, thanks to... I don't know. You should be dead. I will begrudgingly admit that your power truly surpasses my own.~
== X3VieJ ~And yet Irenicus far surpasses any mage I have ever seen. You could consider taking that you live as a gift and call off this chase.~
END 
++ ~I can't, Vienxay. I feel hollow and...unwell. It's not a risk I can take.~ + T6.4
++ ~You, Vienxay, are suggesting I do not chase vengeneance? Isn't that a little hypocritical from an elf who has pursued revenge before?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T6.5
++ ~No. Irenicus will pay. He and Bodhi both.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T6.6

CHAIN X3VieJ T6.2 
~Irenicus far surpasses any mage I have ever seen. You are still alive now. You could...keep living in the state you are in. Surely it is possible?~
END 
++ ~I can't, Vienxay. I feel hollow and...unwell. It's not a risk I can take.~ + T6.4
++ ~You, Vienxay, are suggesting I do not chase vengeneance? Isn't that a little hypocritical from an elf who has pursued revenge before?~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)~ + T6.5
++ ~No. Irenicus will pay. He and Bodhi both.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T6.6

CHAIN X3VieJ T6.3
~Because I can relate and...I know your pain. But Irenicus far surpasses any mage I have ever known. Not even I can say it is the best interest in continual life to go after him. You should consider calling this pursuit off.~
END 
++ ~I can't, Vienxay. I feel hollow and...unwell. It's not a risk I can take.~ + T6.4
++ ~You, Vienxay, are suggesting I do not chase vengeneance? Isn't that a little hypocritical from an elf who has pursued revenge before?~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)~ + T6.5
++ ~No. Irenicus will pay. He and Bodhi both.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T6.6

CHAIN X3VieJ T6.4 
~I only say it because you are a friend, someone with value to me. But if you are insistent, things can't get any worse than as hellish as they are. We were making headway in Spellhold. Perhaps Irenicus can be defeated.~
END 
++ ~We won't make headway talking about it. Let's go.~ EXIT 
++ ~Thank you, Vienxay. Your friendship helps support me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T6.8
++ ~I am insistent. Don't question me on it again.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T6.7

CHAIN X3VieJ T6.5 
~If my mentor was like Irenicus, I w- no. I think I would have, even if it was to my death. I suppose I was letting friendship cloud my judgement. If you want the bastard dead and your soul back, let's chase him.~
END 
++ ~We won't make headway talking about it. Let's go.~ EXIT 
++ ~Thank you, Vienxay. Your friendship helps support me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T6.8
++ ~I am insistent. Don't question me on it again.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T6.7

CHAIN X3VieJ T6.6 
~Good, you are at least certain of the path ahead. Lesser people would balk in fear. If you are insistent on this pursuit, let us find him. With our power together, we can best him or you can die trying.~
END 
++ ~We won't make headway talking about it. Let's go.~ EXIT 
++ ~Thank you, Vienxay. Your friendship helps support me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T6.8
++ ~I am insistent. Don't question me on it again.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T6.7

CHAIN X3VieJ T6.7
~Fine, fine, whatever you wish.~
EXIT 

CHAIN X3VieJ T6.8 
~I would hope so. Do you know how hard it is for me to be nice to people? But for you...you are owed the respect.~
EXIT 

//Underdark Talk

CHAIN IF ~Global("X3VieUTalk","LOCALS",2)~ THEN X3VieJ UnderdarkTalk
~My people are not supposed to be here. I can barely see through this darkness as is. Were it not for my skills with shadows, I would be impaired in sight.~
DO ~IncrementGlobal("X3VieUTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~We do not have any other choice, Vienxay.~ + U.1 
++ ~Stay strong. We can do this.~ + U.2
+~Global("X3VieRomanceActive","GLOBAL",1)~+ ~I care about you too much to let you get hurt down here, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + U.3 
++ ~Quiet with your complaints. Let us keep moving.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + U.X

CHAIN X3VieJ U.1 
~Whatever. I suppose it is I who got myself into this situation.~
EXTERN X3VieJ U.4 

CHAIN X3VieJ U.X 
~Hrmph. Fine. Have it your way.~
EXIT 

CHAIN X3VieJ U.2 
~It is you who I am worried about. I am not the one missing my soul.~
EXTERN X3VieJ U.4 

CHAIN X3VieJ U.3 
~It is you who I am worried about. I am not the one missing my soul. But your concern is...appreciated.~
EXTERN X3VieJ U.4 

CHAIN X3VieJ U.4 
~All sort of my kinds enemies are down here that would be eager to strike me down, and you as well. Touch nothing unless you are certain it is safe, and I will hope our power is enough to see us through.~
END 
++ ~Thanks for your unwelcome advice.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + U.5 
++ ~Of course. Let's keep moving.~ EXIT
+~Global("X3VieQuest","GLOBAL",5)~+ ~You know, there is a chance we might learn something of that tome you were looking for.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + U.6

CHAIN X3VieJ U.5 
~Please, it will keep you alive. But if you wish to be ungrateful, act as you may.~
EXIT

CHAIN X3VieJ U.6 
~You remembered? I am suprised, even I have not given it much thought after the sage's words. Yes, there is a chance, but the underdark is a large place, we would have better luck finding a rabbit in a cornfield.~
= ~Regardless, let us travel carefully. And...thank you for remembering that.~
EXIT 



// After entering Ust Natha Non Romance 
CHAIN IF ~Global("X3VieTalk","LOCALS",14)~ THEN X3VieJ Talk7 
~So not only have you whisked us into the underdark, but now are are in one of their cities. Why is this a good idea?~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~If there was a better option, we wouldn't be here.~ + T7.1 
++ ~You already know the answer to that, Vienxay.~ + T7.2
++ ~I know this makes you uncomfortable. I'm sorry that you have to be here.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T7.3
++ ~Be quiet. You'll call attention to us.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T7.X

CHAIN X3VieJ T7.X
~Grrr. This is so irritating. If we were anywhere else I would...hrmph!~
EXIT 

CHAIN X3VieJ T7.1
~I can think of many better ideas.~
END
++ ~Like?~ + T7.5
++ ~Vienxay, you know that isn't true.~ + T7.2
++ ~I am the leader, however, so we are going with my plans.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T7.2

CHAIN X3VieJ T7.5
~...Ugh, I can't think of it on the spot like that. Don't you dare snicker at me.~
END 
++ ~You really are something sometimes, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T7.6
++ ~Well, at least you'll have no problem playing the part of the drow.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T7.7 
++ ~I think we can agree there aren't any better ideas.~ + T7.8

CHAIN X3VieJ T7.6
~Yes, you are probably so amused. Let us finish our business here quickly. Not even illusion can keep us safe forever.~
EXIT 

CHAIN X3VieJ T7.7
~Oooh. You make me *so* furious sometimes. Ugh!~
EXIT 

CHAIN X3VieJ T7.8
~...I will admit I cannot think of anything better. Yet. Hrmph, let us finish our business here quickly. Do not think evn an illusion will keep us safe forever.~
EXIT 



CHAIN X3VieJ T7.2 
~I still don't like it. I have no idea why I went along with this so foolishly.~
EXTERN X3VieJ 7.4

CHAIN X3VieJ T7.3
~Ugh, I don't have to be here. I could have ran or left. But I suppose even I am a fool.~
EXTERN X3VieJ T7.4

CHAIN X3VieJ T7.4
~Just promise me that we won't get killed down here. To die in the underdark as an exile of Evermeet...there could be no lower fate.~
END 
++ ~You are stronger than you think, Vienxay. I don't think you'd let that happen to yourself easily.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T7.9 
++ ~Of course not. I promise you'll be safe.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T7.10 
++ ~Keep talking like that and you may get us all caught and killed anyway.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T7.11

CHAIN X3VieJ T7.9
~I am not worried about my own power. But we are in their city. We could be swarmed upon with ease.~
= ~I will stop my protest, as it means nothing now. But be very careful. The drow have their reputation for a reason. Let us not be their next victims.~
EXIT  

CHAIN X3VieJ T7.10
~You better. To be forgotten and die down here...there is no worse fate for an elf.~
EXIT

CHAIN X3VieJ T7.11
~Hrmph, as if I was the one who put us in such a situation. But very well.~
EXIT  



//Elf City 
CHAIN IF ~Global("X3VieTalk","LOCALS",16)~ THEN X3VieJ Talk8
~My people...dead, everywhere. What has this man done?~
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Vienxay, are you all right?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T8.1
++ ~Irenicus will stop at nothing to get what he wants.~ + T8.2
++ ~We can't stop and stare, Vienxay. We need to keep moving.~ + T8.X

CHAIN X3VieJ T8.X 
~We need to do more than just move. Let us put down this man and make his death very, very painful.~
EXIT 

CHAIN X3VieJ T8.1 
~Of course not. Everywhere, good elven people are dead. This is injustice.~
EXTERN X3VieJ T8.3 

CHAIN X3VieJ T8.2 
~How could he even be one of us? I...have done things I have regret. But to this scale? It is truely unforgivable.~
EXTERN X3VieJ T8.3 

CHAIN X3VieJ T8.3
~Once I was hesitant of chasing this man, after seeing his power. Now I want him dead. Destroyed. Obliterated. We *will* get your soul back. We *will* avenge our people.~
END 
++ ~Then let us put your fury to action.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T8.4 
++ ~It's not about vengeance Vienxay, but justice.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T8.5
++ ~I'm glad you aren't afraid anymore.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T8.6

CHAIN X3VieJ T8.4 
~Yes. Time for him to die.~
EXIT 

CHAIN X3VieJ T8.5 
~They are hardly apart now, are they? Vengeance, justice, they are one and the same. The end goal of both is that man's death.~
EXIT 

CHAIN X3VieJ T8.6
~There is a little fear. He is still incredibly powerful. But my anger erases any hesitation I had. Let us see him buried.~
EXIT 


// Romance:
/* Requires: 15/60 Approval, Talk 5 to be completed from the Friendship Track. At least some Interest made apparent at some point. (If failed must be done through PID).
Vienxay has no conflicts with Kale, but will conflict with Recorder/ Emily, which must be concluded by LoveTalk6. */
CHAIN IF ~Global("X3VieLoveTalk","LOCALS",2)~ THEN X3VieJ LoveTalk1 
~Do you know much of Shadow magic? I find most either know nothing or have a foolish misunderstanding.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ ~I think you have told me a little of it before.~ + 1.1
++ ~That is Shar's weave, isn't it?~ + 1.2 
++ ~Not much.~ + 1.3
+~Kit(Player1,SHADOWDANCER)~+ ~Of course. I use it as well.~ + 1.4
++ ~This isn't the time to talk, Vienxay.~ + 1.X 

CHAIN X3VieJ 1.X 
~You are not for conversation, it seems. Have it your way.~
EXIT 

CHAIN X3VieJ 1.1
~Yes, I perhaps have talked of it a little back in our prior travels.~
EXTERN X3VIeJ 1.3 

CHAIN X3VieJ 1.2 
~Well, I know which of the two you fall under, then.~
EXTERN X3VieJ 1.3 

CHAIN X3VieJ 1.3 
~My people call it Talfirian magic, for it sources from the Talfir, old humans who supposedly combined our own magic with their own technique to it and natural connections to the shadow plane.~
= ~Most practicioners I suppose might descend from the elven texts that still tell about it, or humans who are lucky enough to grasp it.~
END 
++ ~So your magic is human tricks, then?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 1.5 
++ ~What happened to the Talfir?~ + 1.6 
++ ~How did you come to learn it?~ + 1.7

CHAIN X3VieJ 1.5 
~Hrmph. You are trying to mock me. It may have originated from them, but I am the one who is mastering it.~
EXTERN X3VieJ 1.7

CHAIN X3VieJ 1.6
~Dissapeared, died off. No one knows, and I certainly don't care. What matters is they left behind a useful contribution in their magic style.~
EXTERN X3VieJ 1.7

CHAIN X3VIeJ 1.7
~My mentor taught me, perhaps as a way to get me slowly to convert to Shar's own art. Shadow magic and the Shadow Weave are...close in ways, though Shadow Magic is still of Mystra's own art.~
= ~Many distrust Shadow magic all the same. All they see is darkness and magic of a foreign plane. It is why some civilizations make such rigid laws about magic, such as Amn. They are afraid of power.~
END 
++ ~They are just trying to protect people.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 1.8
++ ~I don't know why Amn is so afraid of magic. It has many boons.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.9
++ ~I do not know about fear. They perhaps just wish to restrict it to the responsible.~ + 1.10

CHAIN X3VieJ 1.8
~And how well has that gone? You were witness with what happened at the Promenade. Are they really protecting anyone?~
EXTERN X3VieJ 1.11

CHAIN X3VieJ 1.9
~It has many, many boons. And they already have their grim Cowled Wizards to enforce those who would abuse it. But not everyone can be as keen in their structure as elven civlization.~
EXTERN X3VieJ 1.11 

CHAIN X3VieJ 1.10
~The "responsible"? More for those with the right connections, or the right amount of money. Societies outside of Evermeet are nothing but unfair to the masses.~
EXTERN X3VieJ 1.11

CHAIN X3VieJ 1.11 
~Power rules above all in the realm we live in. The only way to contest power is with power. Even those who complain about power use power in their own way; we call it manipulation. Remember this well, for this is the heart of survival.~
EXIT 


CHAIN X3VieJ 1.4 
~You use it, I have seen. But do you *understand* it?~
EXTERN X3VieJ 1.3

// Lovetalk #2

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",4)~ THEN X3VieJ LoveTalk2
~I could tell you more, you know. The secrets of shadow magic and why people fear what they do not understand.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~What secrets, exactly?~ + 2.1 
++ ~I'll listen.~ + 2.1 
++ ~Now isn't a good time.~ + 2.X 

CHAIN X3VieJ 2.1 
~I have not touched much on Shadow Magic's link to the shadow plane. When you have achieved an understanding, you can go to an entirely different realm.~
= ~Often the realm is a mirror of our own. If I traveled to the plane, I would likely see a mirror of Amn, perhaps dated, perhaps ahead of its time. Such is the close relationship between the planes.~
END 
++ ~Have you ever plane traveled, Vienxay?~ + 2.2 
++ ~A mirror? So I would see a reflection of where we are now?~ + 2.3 
++ ~Is there anyway to travel to the shadow plane without shadow magic?~ + 2.4

CHAIN X3VieJ 2.2
~A few times. It is not always safe to linger. There are all sorts of monstrosities on such a plane that can quickly overwhelm a single traveler, creatures that are as capable with shadow magic as yourself.~
EXTERN X3VieJ 2.5 

CHAIN X3VieJ 2.3 
~Perhaps. It is not always so predictable what form the place will take in conjunction to where one traveled from.~
EXTERN X3VieJ 2.5 

CHAIN X3VieJ 2.4 
~Even if you could, it is not necessarily wise. There are all sorts of monstrosities on such a plane that can quickly overwhelm a single traveler, all the easier if they do not know shadow magic or the realm around them.~
EXTERN X3VieJ 2.5 

CHAIN X3VieJ 2.5
~Still I have sometimes wondered if I would ever stay there long-term one day. No land replaces my home. This exile grows more and more unbearable by the day. To not see your siblings, your parents...in the plane of shadow time runs differently. It could fade on by quickly.~
END 
++ ~By your own words that sounds like a terrible idea.~ + 2.6
++ ~Is your present company that bad?~ + 2.7 
++ ~An exile isn't a vacation, Vienxay.~ + 2.8
++ ~I am sorry. This must be hard for you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 2.9 

CHAIN X3VieJ 2.6 
~It is a terrible idea. Even if I managed to live, which I know I could, the shadow plane... it changes people when you are there for long periods of time. So would any plane to any foreigner.~
EXTERN X3VieJ 2.9 

CHAIN X3VieJ 2.7
~In the comparison to the grand forests of Evermeet, it's sprawling, beautiful cities, being surrounded by only your kind, and the absence of anyone you love...my present company is certainly not as satisfactory.~
EXTERN X3VieJ 2.11

CHAIN X3VieJ 2.8
~I know that. But I wish they had come up with any other punishment.~
EXTERN X3VieJ 2.9

CHAIN X3VieJ 2.9
~Being away from home is cruel. I long for the company I had, not for the company I have now.~
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ ~Hey now. Back in Dragonspear, I thought things were...well I thought we had grown close. You sound ungrateful.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.10 
++ ~Are we that horrible?~ + 2.7
++ ~Well, thanks.~ + 2.11
++ ~You do not have to be here, you know.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.12

CHAIN X3VieJ 2.11 
~I don't know why I veered into this talk. Talking of home only makes me sad and angry. Let's just keep moving.~
EXIT 

CHAIN X3VieJ 2.10
~What we shared in Dragonspear was a mistake. It was a weakness. And you would do well to forget about it. It is better for all parties.~
EXTERN X3VIeJ 2.11 

CHAIN X3VieJ 2.12
~There is nowhere else better for me. I would rather be here than the jail I was likely going to be confined to, but I would rather be at Evermeet than here.~
EXTERN X3VieJ 2.11

CHAIN X3VieJ 2.X 
~"Now isn't a good time." Hrmph. Fine. We can talk later.~
EXIT 

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",6)~ THEN X3VieJ LoveTalk3 
~I begin to find your company quite enjoyable, <CHARNAME>. There are few people who resonate with your strength.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
IF ~Race(Player1,ELF)~ EXTERN X3VIeJ 3.Elf 
IF ~!Race(Player1,ELF)~ EXTERN X3VieJ 3.NoElf 

CHAIN X3VIeJ 3.Elf 
~It is nice to see that in one of our people. Especially in someone who is attractive.~
END 
++ ~And what about me do you find attractive?~ + 3.1
++ ~Weren't you just saying earlier about how you'd rather not even be alongside me?~ + 3.2
++ ~Well, don't get your hopes up. I have no interest in you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.3
++ ~That's nice, but this isn't the time to talk.~ + 3.X 

CHAIN X3VieJ 3.NoElf 
~It is nice to see it, even if you are not an elf. Especially in someone who is attractive.~
END 
++ ~And what about me do you find attractive?~ + 3.1
++ ~Weren't you just saying earlier about how you'd rather not even be alongside me?~ + 3.2
++ ~Well, don't get your hopes up. I have no interest in you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.3
++ ~That's nice, but this isn't the time to talk.~ + 3.X 

CHAIN X3VieJ 3.X 
~No interest in chatting at all? Sometimes you are so dull.~
EXIT 

CHAIN X3VieJ 3.1
~Hungry for a compliment? Your eyes, the form of your face and cheeks, and perhaps your...back has a few interesting features.~
END 
++ ~You've ogled my hindquarters?~ + 3.4
++ ~I never thought you would be attracted to anyone but yourself.~ + 3.5
++ ~You are just as attractive yourself.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 3.6
++ ~I wish I could say the same, but...~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.3

CHAIN X3VieJ 3.2
~Things change in time, though your company is not unenjoyable, even if it isn't home.~
END 
++ ~Is this your way of apologizing, flirting with me?~ + 3.7
++ ~Well, I am glad that you have come around. Adventuring isn't so bad, isn't it?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.8
++ ~I invited you with us because I thought you would be useful. I'm not trying to give you the home you've lost.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.16

CHAIN X3VieJ 3.3 
~What? I wasn't implying interest. It was just a compliment. Truly. Seriously. Why minds away from Evermeet even think so ahead of themselves is beyond me.~
EXTERN X3VieJ 3.13

CHAIN X3VieJ 3.6
~Just as? I would certainly say quite a bit more than yourself.~
END 
++ ~Are you always so vain?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.9
++ ~Well, I can give you that.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.10
++ ~Can't you take a compliment without one-upping yourself?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.11

CHAIN X3VieJ 3.7
~Only if it is working. I would think a <PRO_MANWOMAN> would enjoy such words from myself.~
END 
++ ~I don't mind. Quite the opposite, even.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 3.12
++ ~It makes me uncomfortable actually.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.14
++ ~I think I'd need to hear it a bit more to know if it is working or not.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.12

CHAIN X3VieJ 3.8
~It isn't so bad? Oh I could get quite into dirty details on why it is far worse than my old life...but it is better than a jail, and better than with other company.~
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.9 
~If you know something of yourself, why not take pride in it? That is how my family was raised. We are beautiful, intelligent, and sophisticated elves of Evermeet. Everything to take pride in.~
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.10 
~Good <PRO_GIRLBOY>. You know when to agree.~
EXTERN X3VieJ 3.15

CHAIN X3VIeJ 3.11 
~I just wished to correct the statement. But I suppose it has offended you. Very well.~
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.12 
~Then I will certainly make sure you hear more of it.~
EXTERN X3VieJ 3.15 

CHAIN X3VieJ 3.14 
~Hrmph. Then I won't say such things to you again. And I was beginning to think you would be someone worthy of my interest.~
EXTERN X3VieJ 3.13 

CHAIN X3VieJ 3.13 
~We have things to do, don't we? Let us get back to the daily slog.~
EXIT 

CHAIN X3VieJ 3.15
~I suppose what I am trying to get comfortable to say is...sorry. I shouldn't have talked the way I did before.~
= ~You've been good to me, and I hope I can start showing that properly.~
END 
++ ~I can think of a few ways you can do that.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.17
++ ~Thank you, Vienxay. I accept your apology.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.18
++ ~You say that. But will you really mean it? Your words didn't feel like a lie.~ + 3.19
++ ~It's about time you give me proper respect.~ + 3.20
++ ~Forget it, Vienxay. Bother someone else with your forced apology.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 3.21

CHAIN X3VieJ 3.16
~I suppose that is a fair point. I do not mean to make you feel you have to make my accomodations perfect. This is a punishment I serve.~
EXTERN X3VieJ 3.15 

CHAIN X3VieJ 3.17
~Do slow down before you get far too excited. The journey is all the fun. But perhaps sometime I may certainly show you my thanks in such a way.~
EXTERN X3VieJ 3.18 

CHAIN X3VieJ 3.18 
~I do believe we have places to go now, don't we? We can talk more another time.~
EXIT 

CHAIN X3VieJ 3.19 
~They were not entirely, then. But I have had time to reflect. In a way, my predicament could be so much worse, and I am able to see a world I would have never dared venture out to see.~
= ~It is not home, it never will be. But it is an experience I should admittedly try to enjoy the most out of.~
EXTERN X3VieJ 3.18 

CHAIN X3VieJ 3.20 
~Yes, yes. As I have said many times, I do owe you much. I should perhaps whine less and appreciate that more.~
EXTERN X3VieJ 3.18 

CHAIN X3VieJ 3.21 
~Then fine. I won't bother you further if that is what you desire.~
EXIT 

CHAIN X3VieJ 3.4
~And more.~
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.5 
~Just because I am the most beautiful person I know, doesn't mean there are others that are worthy of admiration.~
EXTERN X3VieJ 3.15 

// Love Talk #4

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",8)~ THEN X3VieJ LoveTalk4 
~I wished to chat about something, if you have a moment. About our journey.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
+~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~What did you want to talk about?~ + 4C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~What did you want to talk about?~ + 2C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~What did you want to talk about?~ + 3C4.1 
+~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Go on. Speak.~ + 3C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Go on. Speak.~ + 2C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Go on. Speak.~ + 2C4.1
++ ~This isn't a good time.~ + 4.X 

CHAIN X3VieJ 3C4.1
~You have given our...patron, so to speak, a large amount of gold. But do you not think we are being manipulated?~
END 
+~Global("WorkingForAran","GLOBAL",1)~+ ~It was that or working with vampires. It would have turned out worse if we chose Bodhi.~ + 3C4.2
++ ~Maybe. But it has gotten us this far.~ + 3C4.2
+~Global("WorkingForBodhi","GLOBAL",1)~+ ~Bodhi provided the best opportunity. Maybe we are being pulled, but if it gets us to Irenicus, so be it.~ + 3C4.2
++ ~This is the only way to get to Irenicus. If there was anything else, I would have done it.~ + 3C4.2

CHAIN X3VieJ 4C4.1
~I...I just wished to see if you were okay. That is all.~
END 
++ ~What do you think, Vienxay?~ + 4C4.2
++ ~I am alive, aren't I? That is all that matters.~ + 4C4.3
++ ~I'd rather not talk about this.~ + 4.X 

CHAIN X3VieJ 2C4.1 
~You are trying to gather a large amount of gold for a patron who may not in the end help you. Aren't you worried about being manipulated?~
END 
++ ~There isn't any other choice, Vienxay. You know this.~ + 3C4.2
++ ~If they lie, the pay the price.~ + 2C4.3
++ ~This is the only way to find Imoen.~ + 3C4.2
++ ~I'll not likely find Irenicus without their help.~ + 3C4.2

CHAIN X3VieJ 4C4.2
~I suppose I shouldn't have asked that way.~
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 4C4.3 
~Sometimes. Sometimes that is not enough.~
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 3C4.2
~If that is what you wish to believe.~
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 2C4.3 
~And yet the enemy you chase doesn't get any closer if you do.~
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 4.2 
~I do not mean to be overly critical. I am just reminded of my mentor. You seem pulled into this path, but I am unsure how much of it is truly your choosing.~
= ~You seem strong, yet this makes me question your power. Do you understand what true power is, <CHARNAME>?~
END 
++ ~I do not care about power, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 4.3 
++ ~It means being able to be uncontested.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.4 
++ ~It means being able to dominate others.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.5
++ ~What do you think true power is?~ + 4.6

CHAIN X3VieJ 4.3
~So many say this. So few *mean* it.~
EXTERN X3VieJ 4.6

CHAIN X3VieJ 4.4 
~Perhaps. Though the test of one's power is always to challenge someone with more of it.~
EXTERN X3VieJ 4.6

CHAIN X3VieJ 4.5 
~Hrmph. In a way, yes. Predator finds prey to cement their reputation and legacy. Such is one way to display power.~
EXTERN X3VieJ 4.6

CHAIN X3VieJ 4.6
~True power is sought by oneself, and not given to them. True power always becomes stronger. The mage forever learning new magic, the warrior ever keeping ahead in their tactical genius.~
= ~True power is being able to choose your own path and carve it, damn anyone else's thoughts or actions. That is true power.~
END 
++ ~But what about helping others? Is that not the responsible of the powerful?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 4.7
++ ~I see. I don't know if I agree with your beliefs, Vienxay, but it is enlightening.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.8
++ ~I think I see what you mean. True power is to be sought and respected.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.9

CHAIN X3VIeJ 4.7
~By helping the weak you leave them unelightened. How can they become stronger or smarter if you hand hold them through every hardship? Such trials of life filter out the meaningless to the legacies that will carry on.~
EXTERN X3VieJ 4.10

CHAIN X3VieJ 4.8 
~I hope it will be more then that to you. I mean it when I say that you seem...almost pulled in the direction you are.~
EXTERN X3VieJ 4.10

CHAIN X3VieJ 4.9
~I am glad that you are beginning to see it my way.~
EXTERN X3VieJ 4.10

CHAIN X3VieJ 4.10
~Seek the end of this man, <CHARNAME> if you will, <CHARNAME>, if you insist, as foolhardy as it is to track down a powerful mage. But then live free. Live by your own will, your own volition, your own power. Do not let him be the one to drag and decide how you should react to what he has just done to you.~
END 
++ ~Irenicus doesn't define my life, Vienxay.~ + 4.13 
++ ~I will, Vienxay, and nothing less.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.12 
++ ~I don't want to. But he has forced my hand.~ + 4.11 

CHAIN X3VieJ 4.11
~And that is a testament to his power, and how yours has so much more to grow.~
EXIT 

CHAIN X3VieJ 4.13 
~Perhaps you may feel it. But everything you have done ultimately is to be closer to confronting him again, is it not? And that is a true testament of his power, for they draw everyone else to them like honey. Know this, and be wary, and then you may become stronger for it.~
EXIT 

CHAIN X3VieJ 4.12
~Good. Perhaps my forced time in these human lands may at least do you some good, even if I am unhappy in them.~
EXIT  


CHAIN X3VieJ 4.X 
~Then I will remain silent on the matter.~
EXIT 

//Love Talk #5
// Reputation comments. Vienxay actually prefers mid or low reputation IF the character is not too open about their malice.

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",10)~ THEN X3VieJ LoveTalk5 
~I have another question I wish to ask of you.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
+~ReputationLT(Player1,9)~+ ~Another one, then? What do you wish to know?~ + 5.1L 
+~ReputationGT(Player1,8)ReputationLT(Player1,13)~ + ~Another one, then? What do you wish to know?~ + 5.1M
+~ReputationGT(Player1,12)~+ ~Another one, then? What do you wish to know?~ + 5.1H
++ ~Ever curious about me, are you?~  DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~+ 5.2 
++ ~Not now, Vienxay.~ + 5.X

CHAIN X3VieJ 5.2 
~You are a curious person. Far more unique than most people outside of Evermeet.~
END 
IF ~ReputationGT(Player1,12)~ EXTERN X3VieJ 5.1H
IF ~ReputationGT(Player1,8)ReputationLT(Player1,13)~ EXTERN X3VieJ 5.1M
IF ~ReputationLT(Player1,9)~ EXTERN X3VieJ 5.1L

CHAIN X3VieJ 5.1L
~The way you act towards others, I have noted, borders on malice. While I respect acting for one's self interest, being overtly malicious does little good for anyone.~
END 
++ ~Really? I thought you of all people would approve of it.~ + 5.1L1
++ ~I do what I like. If I want your opinion, I will ask for it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 5.1L4 
++ ~I may have gotten carried away. I will try to be better.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1L2 

CHAIN X3VieJ 5.1L1
~When deserved. Otherwise, it gets you into trouble with the law. I have been in trouble with such far too often now.~
= ~I do not wish to discourage. I only wish to suggest you are less...overt when you do so.~
END 
++ ~I see. I will take your advice.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1L3
++ ~Why? I think I am doing fine just as is.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1L4
++ ~I will consider it. I promise nothing.~ + 5.1L5

CHAIN X3VieJ 5.1L2 
~I am not asking that you reform yourself. What you are doing is not necessarily wrong. Showing your power gives a message to others.~
= ~I am only suggesting that you are more subtle when you do it. The less trouble we get with guards, the better.~
END
++ ~I see. I will take your advice.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1L3
++ ~Why? I think I am doing fine just as is.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1L4
++ ~I will consider it. I promise nothing.~ + 5.1L5

CHAIN X3VieJ 5.1L3 
~You are ever the soul of reason, listening to an elf such as myself. Come then, let us carry on. That is all I wished to say.~
EXIT 



CHAIN X3VieJ 5.1L5 
~So be it. I have said my piece and that is all I wanted. Let us carry on.~
EXIT 

CHAIN X3VieJ 5.1M
~You seem to steer a course that focuses on your own wants. If something is mutually benefitial, you partake, if it is not. You move on. Is that correct?~
END 
++ ~I try to help others more then myself, to be honest.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1M1 
++ ~Yes. I need to focus on myself if I am going to survive.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M2
++ ~I could care less about others.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M3 

CHAIN X3VieJ 5.1M1 
~That is dissapointing, if it is true. I had thought you a soul of reason.~
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1M2 
~And with everything that I have observed going on with you, that is the best belief that will suit you.~
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1M3 
~That is often true with myself. If you are not apathetic enough, you grow concerned over every little thing.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ ~Wow. You are definitely ever the shrew, Vienxay.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ ~Aasimar, you of all people are not welcome to throw your opinion into this conversation. What does your celestial bloodline care? They are obessed only with fighting demons and devils and serving their god. They could not be more simple.~
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1M4 
~I say this because I do not wish for you to be distracted. I have seen how awful life is in Amn. You cannot help everyone. They must learn to stand up for themselves.~
END 
++ ~If they pay, then I do not mind offering my service.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M5
++ ~I won't. I am focused on my goals alone. Anyone who gets aid is only because they help further these goals.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M6
++ ~I will try to help who I can. Amn can be better for it, even if you do not like it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1M7

CHAIN X3VieJ 5.1M5 
~I suppose that is a fair argument. I have nothing more to say. I have said what I wished.~
EXIT 

CHAIN X3VieJ 5.1M6 
~Good. I have nothing to add. You seem to be wise and reasonable, and I am content with my curiousity.~
EXIT 

CHAIN X3VieJ 5.1M7
~You are a fool for it. I've nothing more to add, this conversation has been dissapointing, but sated my curiousity.~
EXIT 

CHAIN X3VieJ 5.1L4 
~Then fine. I will say nothing of it. Do as you wish, I only ask you be more subtle so you do not attract a contigent of guards.~
EXIT 

CHAIN X3VieJ 5.1H 
~I have seen how charitable you are to others. Do you not understand that you only spread weakness? That they will continue to be helpless in the face of further peril, always expecting a hand?~
END 
++ ~What is the alternative? Continue to let them suffer from lack of aid?~ + 5.1H1 
++ ~Helping them helps me with my own goals. It is the only reason I do this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1H2 
++ ~Did I not help you, Vienxay? You would be in prison without me.~ + 5.1H3

CHAIN X3VieJ 5.1H1
~They will not continue to suffer. They will learn how to stand or they will die because they were not capable of surviving the trials of life.~
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1H2 
~I see. If that is the truth, then I understand you more, though it has not seemed that way.~
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1H3 
~Perhaps. I am a Shadowmage, if you do not remember. If worst came to worst, I would have escaped to the Shadow Plane. But I admit, I would always be on the run in Amn. Not a desirable condition. Still, part of me regrets your help. It was a moment of...weakness.~
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.X 
~Hrmph. As you wish.~
EXIT 

// Love Talk #6

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",12)~ THEN X3VieJ LoveTalk6
~You are quite renown from Baldur's Gate. In the time since, surely you have had some lovers, as suits you?~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~I might have. Why?~ + 6.1 
++ ~You were with me at the beginning of my travels, Vienxay. You would know the answer to this.~ + 6.2
++ ~I've not really had the time for that, Vienxay.~ + 6.3
++ ~What makes you bring this up?~ + 6.1

CHAIN X3VieJ 6.1
~I am merely curious of your experience.~
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ ~I only remember my time with you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 6.6B
++ ~Oh I am *plenty* experienced.~ + 6.4 
++ ~That's private.~ + 6.5

CHAIN X3VieJ 6.4 
~Really? Somehow I think you are exaggerating.~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.6B 
~That was...we were not lovers. It was just a moment. Though an enjoyable one.~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.5 
~Foreigners are so prudish on these things, I have found. Hrmph.~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6


CHAIN X3VIeJ 6.2 
~I suppose I would, if it is as you suggest.~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6


CHAIN X3VieJ 6.3 
~Oh really?~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.Emily 
~What of Emily? That girl looks upon you as if she has never seen a man. A bit disturbing. You are not into her, are you?~
END 
++ ~I like Emily a lot, actually.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Emily1
++ ~No, she is not my type.~ + 6.Emily2
+ +~Why, are you jealous?~ + 6.Emily3

CHAIN X3VieJ 6.Emily3 
~Jealous? Of a mutt? You must be joking.~
= ~I do however, do not want to deal with her glares if our...bond with eachother escalates. So, what is she to you?~
END 
++ ~I am sorry Vienxay, but I like Emily a lot.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Emily1 
++ ~She is just a friend, Vienxay. Fear not.~ + 6.Emily2

CHAIN X3VieJ 6.Emily1 
~Then...ugh, I am glad we have discussed this. You have terrible taste...but I am glad I know this now before things escalated.~
EXTERN X3VieJ 6.RBreak 

CHAIN X3VieJ 6.Emily2 
~Good. You have fine taste after all.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6


CHAIN X3VieJ 6.RBreak 
~Let us carry on. I find I no longer have the desire for conversation.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VIeJ 6.Kale 
~I have seen you spend time with that halfling. You do know half of his stories are made up, merely trying to impress? His intent is obvious.~
= ~You do have better taste than Kale, I imagine. There are far more beautiful people out there worthy of your attention.~
END 
++ ~I care for Kale, Vienxay. I hope you understand.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Kale1
++ ~You are quite right, Vienxay. There isn't anything between me and Kale.~ + 6.Kale2 
++ ~What is wrong with liking you both?~ + 6.Kale3 

CHAIN X3VieJ 6.Kale3 
~I am not going to compete with him. I should not have to compete with him. If things escalate, someone's heart will be broken, and I will not share.~
END 
++ ~If that is how it is, then I am sorry. I prefer Kale.~ + 6.Kale1 
++ ~Fear not. I'm interested in seeing how things go with us.~ + 6.Kale2 

CHAIN X3VieJ 6.Kale1 
~Hrmph. I do not quite understand...but each has their preferences, however *odd* that they are.~
EXTERN X3VieJ 6.RBreak

CHAIN X3VieJ 6.Kale2
~Good choice.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.Recorder 
~What of the bard, Recorder? She seems obessed, concerningly so. Writing and writing about you. She looks up to you like you are on a pedestal.~
= X3VieJ ~You should stop giving her ideas. Easier to dissapoint her now.~
END 
++ ~I'm very fond of Recorder, Vienxay. I want to see how things go between us.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Recorder1
++ ~She's just my recorder to me, nothing more.~ + 6.Recorder2
++ ~What are you talking about?~ + 6.Recorder3 

CHAIN X3VieJ 6.Recorder3 
~I am saying she is clearly wanting your attention, and your affections. It is almost sickeningly desperate.~
= ~You may find it amusing, but I don't. Stop indulging her.~
END 
++ ~I'm very fond of Recorder, Vienxay. I want to see how things go between us.~ + 6.Recorder1
++ ~She's just my recorder to me, nothing more.~ + 6.Recorder2

CHAIN X3VieJ 6.Recorder1 
~An incredibly dissapointing response. But do as you wish.~
EXTERN X3VieJ 6.RBreak

CHAIN X3VieJ 6.Recorder2 
~Then I may hint to her it is as such. I'm sure she'll get the message clearer from me. Plus it will save you a bit of pain.~
EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.6 
~I suppose I brought this up to begin with because I remember such times when I had my admirers and those interested in intimacy with myself.~
= ~I had wealth to purchase what I desired, to pursue what knowledge I desired, the prestige to garner the attention I wanted from all save the royalty.~
= ~But you have never really known such luxury. Given your accomplishments, it is a shame.~
END 
++ ~There are just better things than luxury and hedonistic pursuits, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 6.7
++ ~I hope to have that one day.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 6.8
++ ~I've been on the road for so long. There hasn't been an opportunity to relax very often.~ + 6.8 

CHAIN X3VieJ 6.7
~Such is the pinnacle of life. You know you have achieved much when you are able to indulge in whatever pleasures you desire with little effort.~
= X3VieJ ~But I suppose that can be dull. The chase is half of the fun.~
EXTERN X3VieJ 6.8

CHAIN X3VieJ 6.8
~If you continue to take care of yourself and treat them well, I can think of someone who would certainly give you the chance.~
END 
++ ~Well, I will continue doing what I am then, in the hopes that I get that opportunity with "someone".~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 6.9
++ ~We will see. The future is not always certain.~ + 6.10
++ ~I'm flattered, but I'm not interested.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 6.11 
++ ~With you? Not a chance.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.11 

CHAIN X3VieJ 6.9
~We will just have to see about that, won't we?~
EXIT 

CHAIN X3VieJ 6.10 
~You are quite serious, aren't you? You will find the future is more certain when you take control of it. But as you wish.~
EXIT 

CHAIN X3VieJ 6.11 
~Disappointing. Something I think, you will even regret.~
EXTERN X3VieJ 6.RBreak

// Love Talk #7

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",14)~ THEN X3VieJ LoveTalk7
~It would be about that time in Evermeet. The Secrets of the Heart.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~The Secrets of the Heart?~ + 7.1
++ ~You are reminiscing about Evermeet again? You must miss home deeply.~ + 7.2
++ ~Stay focused Vienxay. This isn't the time to muse.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 7.X

CHAIN X3VieJ 7.1
~The Secrets of the Heart was a festival to revel when the moon was heightest. To engage in one's lust with a lover, show off their art, or pledge themselves to their passions.~
= ~It was one of Hanali's festivals, our goddess of love and beauty.~
END 
++ ~I thought that was Sune?~ + 7.3
++ ~And did you partake in this festival?~ + 7.4 
++ ~It sounds like a good time.~ + 7.4 

CHAIN X3VieJ 7.3 
~Hrmph. Sune is one of the human gods. Mystra is the only goddess I would pray to outside of the Seldarine.~
EXTERN X3VieJ 7.4 

CHAIN X3VieJ 7.4 
~I enjoyed myself quite much in past Secrets of the Heart. I have brought a couple of lovers to them, those who I felt closest to.~
END 
++ ~With all your talk of power and how helping others is a weakness, you don't seem like the lover type.~ + 7.7
++ ~Tell me about them.~ + 7.6
++ ~Only a couple? I am surprised.~ + 7.5 

CHAIN X3VieJ 7.5 
~I have had many, many dalliances in my life, but only a couple have truly moved my heart.~
EXTERN X3VieJ 7.6

CHAIN X3VieJ 7.7
~I engage in it for the passion, for the enjoyment of being pursued and doing a little chasing in return. But sometimes one does fall into love's trap and becomes weaker for it.~
EXTERN X3VieJ 7.6

CHAIN X3VieJ 7.6
~There was Erian'na, the first I brought, a friend who I was close with. She had asked me and I did not see she had romantic intentions.~
= ~I indulged her pursuit for the day, perhaps out of curiousity to see if I would feel the same, but ultimately I found I did not feel the same way, and ended things with her. She wanted permamency, but I did not.~
END 
++ ~I didn't know you had an interest in another female.~ + 7.8 
++ ~Who was the other?~ + 7.9
++ ~You break her heart? Poor Erian'na.~  + 7.10

CHAIN X3VieJ 7.8
~I have a slight preference in men. But I have been with my own sex before. Above all I simply enjoy pursuing and being pursued, that delights me above all other details.~
EXTERN X3VieJ 7.9

CHAIN X3VieJ 7.10
~Have no pity. I at least gave her a good time. Little heartbreaks are painful, but she will have the sweet memories.~
EXTERN X3VieJ 7.9

CHAIN X3VieJ 7.9
~The other was my last real lover, Leondolis. With him I truly felt the weakness of love. I think had I never met my mentor, I may have even married him.~
= ~Alas, I was foolish and got seduced by shadow magic and her gradual introduction of Shar's weave alike. And you know well how that ended.~
= ~In an accident, I killed him, and have been exiled ever since.~ 
END 
++ ~Do you regret murdering him?~ + 7.17
++ ~Love isn't a weakness, Vienxay. You can draw comfort from it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 7.11
++ ~You are lucky they didn't do worse.~ + 7.12

CHAIN X3VieJ 7.17 
~Every day.~
EXTERN X3VieJ 7.13

CHAIN X3VieJ 7.11 
~So you think. But it makes you...dependent. You begin to rely on someone else, begin to think for someone else. You lose focus on your own pursuits and become vulnerable for it. But still, I will admit I loved him deeply.~
EXTERN X3VieJ 7.13 

CHAIN X3VieJ 7.12 
~They would not have done worse. My people frown upon taking the life of another elf, no matter the crime. This is true for most elven civilizations, even outside of Evermeet.~
EXTERN X3VieJ 7.13 

CHAIN X3VIeJ 7.13 
~I miss most his ability to really ease my urges. They have grown quite considerable.~
END 
++ ~You really do share too much sometimes, Vienxay.~ + 7.14 
++ ~Well, if you ever need help with that...~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 7.15
++ ~Er...right.~ + 7.16

CHAIN X3VieJ 7.14 
~And as I have said many times in the past, the rest of the realms are so prudish. But enough of that. We should get back to the journey.~
EXIT 

CHAIN X3VIeJ 7.15
~Bold. I may actually consider it sometime. But not now.~
EXIT 

CHAIN X3VieJ 7.16
~But nevermind this. We ought to be getting back to our business.~
EXIT 

CHAIN X3VieJ 7.2
~More than you know.~
EXTERN X3VieJ 7.1 

CHAIN X3VieJ 7.X 
~Fine. We can talk later.~
EXIT 

//Love Talk #8

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",16)~ THEN X3VieJ LoveTalk8 
~We are resting now, then? I suppose it is the right time.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Yes. Did you want something?~ + 8.2 
++ ~We have been traveling without rest for a while.~ + 8.2 
++ ~We could use time to tend to ourselves.~ + 8.3 
++ ~I'm too tired to talk, Vienxay. Good <DAYNIGHT>~ + 8.X // Will skip the next talk.

CHAIN X3VieJ 8.X 
~Oh very well. See you when you awaken.~
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 8.3 
~A nagging injury? Perhaps you will allow me to assist?~
END 
++ ~You aren't a healer, Vienxay.~ + 8.5
++ ~Well I wouldn't mind the hand.~ + 8.5 
++ ~No thank you, Vienxay. I cam manage on my own.~ + 8.5 

CHAIN X3VieJ 8.2 
~I was going to ask if you wished to join me when we rest. It is a bit cold and it would be nice to have a body nearby.~
END 
++ ~Er, you just want someone to keep you warm?~ + 8.4 
++ ~Are you asking what I think you are asking?~ + 8.6
++ ~I'd rather stay in my own tent.~ + 8.5

CHAIN X3VieJ 8.4
~To start. There are of course, certain "necessary" techniques to get us to be warm.~
END 
++ ~Isn't this a little fast, Vienxay?~ + 8.7
++ ~Well, I can't say no to that.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 8.8
++ ~Whoa, whoa, slow down Vienxay. I am not interested.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VieJ 8.5
~I am told I give wonderful massages with my hands that will really relax you.~
= ~It certainly doesn't have to stop there. There are all sorts of things we can do to release built up tension.~
END 
++ ~Are you asking to sleep with me?~ + 8.6
++ ~Er, isn't this a little fast?~ + 8.7
++ ~I would rather be alone.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VieJ 8.6
~Well, you don't make it fun when you say it outright. But what do you say? My urges are considerable, and you are very attractive.~
END 
++ ~I say yes.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 8.8
++ ~This is too fast for me, Vienxay. I like you, but I don't think we are there yet.~ + 8.7
++ ~I'm not interested in doing that with you, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VIeJ 8.7
~A little, perhaps, but it is just a bit of fun. Nothing serious. We make eachother at ease and then go on with things. What is the harm?~
END 
++ ~Well, if that is the case, let's have some fun.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 8.8
++ ~I would rather it mean something, Vienxay. To be between two lovers.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 8.9
++ ~Sorry, I'm just not interested.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VieJ 8.8
~Excellent. I think you will find my talents make your sleep one to remember.~
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 

CHAIN X3VieJ 8.9
~I see. You are like Leondis and Erian'na, they too, wanted things to *mean* something. But that just makes things complicated.~
EXTERN X3VieJ 8.11

CHAIN X3VieJ 8.11
~All the better that we sleep apart, then. I am getting confused and it is frustrating me.~
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 8.10
~What? I have been denied? No one denies me I...ugh! Forget it. Rest on your own, then.~
DO ~RestParty()~
EXIT

//Love Talk #9 Denied version

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",18)~ THEN X3VieJ LoveTalk9
~I see you are awake.~ [X3VLS]
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
IF ~!Global("X3Slept","LOCALS",0)~ EXTERN X3VieJ 9.Slept
IF ~Global("X3Slept","LOCALS",0)~ EXTERN X3VieJ 9.Refused

CHAIN X3VieJ 9.Refused 
~No one has ever refused my advances. Is it because I am ugly? Do you hate me?~
END 
++ ~You are beautiful, Vienxay, and I don't hate you. I just want to take things slow.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 9.1R
++ ~I've just woken up, have you been thinking about this all night?~ + 9.2R 
++ ~I won't deny you are beautiful, Vienxay. But I don't like you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X
++ ~You're not as pretty as you think you are, you know.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.4R

CHAIN X3VieJ 9.1R 
~I don't entirely understand. Are you after something meaningful, a relationship?~
END 
++ ~Yes. That is what I want.~ + 9.3R
++ ~Ah, now you get it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.3R
++ ~Well now that you put it that way, no. I don't think I want anything from you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X

CHAIN X3VieJ 9.2R
~It has been bothering me. The people who I choose to pursue never say no to my charms. Why did you?~
END 
++ ~You are beautiful, Vienxay, and I don't hate you. I just want to take things slow.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.1R
++ ~I won't deny you are beautiful, Vienxay. But I don't like you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X
++ ~You're not as pretty as you think you are, you know.~DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.4R

CHAIN X3VieJ 9.X 
~I see. Then I will stop wasting our time for the both of us.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 9.3R
~I...do not know if I can give you that, if I should give you that.~
END 
IF ~Race(Player1,ELF)~ EXTERN X3VieJ 9.5RE
IF ~!Race(Player1,ELF)~ EXTERN X3VieJ 9.5RN

CHAIN X3VieJ 9.4R 
~So you dislike me then? Is that it?~
END 
++ ~No, I do like you. But you can be a bit vain.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.1R
++ ~Not everything is judged simply by looks, Vienxay.~ + 9.1R 
++ ~I don't like you, at least not in that way.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X

CHAIN X3VieJ 9.5RE 
~You are an elf, and so I would not be averse to it. But I am an *exile*. Beyond a bit of fun, to be involved with me...it would bring you down.~
END 
++ ~What? But you tout yourself as the greatest person ever, more or less.~ + 9.6RE 
++ ~Vienxay, you couldn't do that. I am a child of bhaal, you know.~ + 9.7RE
++ ~If you don't want that, then we shouldn't continue whatever this is.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 9.X 

CHAIN X3VieJ 9.6RE 
~But I am not.~ 
EXTERN X3VieJ 9.8RE 

CHAIN X3VieJ 9.7RE 
~In some ways, that only adds to your prestige.~
EXTERN X3VieJ 9.8RE 

CHAIN X3VieJ 9.8RE
~You are better than me, <CHARNAME>. You are better than me, and I hate it, and that is why I do not know if it is right to give you what you want.~
EXTERN X3VieJ 9.10R

CHAIN X3VieJ 9.10R
~The others are rising. This isn't the time to talk more about this.~
EXIT 

CHAIN X3VieJ 9.5RN 
~You are not an elf, <CHARNAME>. You would not live as long as I, nor is it proper. I have no interest in producing half-breeds, I have taught how abhorren such a thing is.~
= ~Even...if part of me is not averse to it, it would only hurt you. It would only hurt us.~
END 
++ ~That is what I want, Vienxay. Damn the consequences.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.6RN
++ ~This is bigger than just race, Vienxay. If two people care about eachother, that is the only thing that should matter.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.7RN 
++ ~If that is what you want, then we shouldn't continue whatever this is.~ + 9.X 

CHAIN X3VieJ 9.6RN 
~Your words move me. It is very tempting to give you what you want but...~
EXTERN X3VieJ 9.10R 

CHAIN X3VieJ 9.7RN 
~And yet everything I have been taught says otherwise. Even if...a small part of me wishes it was different. That it was okay.~
EXTERN X3VieJ 9.10R

//Slept Version

CHAIN X3VieJ 9.Slept 
~I trust that you were satisfied?~
DO ~SetGlobal("X3Slept","LOCALS",2)~
END 
++ ~Quite. You are more than just beautiful, it seems.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 9.S1
++ ~It was lovely, Vienxay. Does this mean we are together?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.3R
++ ~It was what I needed, though I don't think we should do this again.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.S3

CHAIN X3VieJ 9.S1 
~Is that a compliment? You could do better.~
END 
IF ~NumInPartyGT(2)~ EXTERN X3VieJ 9.S2 
IF ~!NumInPartyGT(2)~ EXTERN X3VieJ 9.S2N 

CHAIN X3VieJ 9.S2 
~We should get ready, before the others start to stir.~
END 
++ ~But they haven't stirred yet. Perhaps one more round?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.S5 
++ ~Why not snuggle against me for a while? We still have a few minutes.~ + 9.S3 
++ ~Ah, good idea. Let's get to it.~ + 9.S4

CHAIN X3VieJ 9.S5 
~Gods no. I don't want the others gossiping and getting crazy ideas. But perhaps if wake earlier next time, you can get such a second indulgence.~
EXIT 

CHAIN X3VieJ 9.S2N 
~We should get ready. We have many things to do, I imagine.~
END 
++ ~There is no hurry. One more round can't hurt.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.S5N 
++ ~Why not snuggle against me for a while? We can take our time.~ + 9.S3 
++ ~Ah, good idea. Let's get to it.~ + 9.S4

CHAIN X3VieJ 9.S5N 
~You are insatiable. But I don't have any complaints.~
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 9.S4 
~This was enjoyable. We should...indulge ourselves again sometime.~
EXIT 

CHAIN X3VieJ 9.S3 
~That is what people in a relationship do. This was just...a dalliance.~
END 
++ ~And what if I didn't want that?~ + 9.SR 
++ ~Oh. I see. Nevermind, then.~ + 9.S4 
++ ~I don't want to be someone who just pleases your silly urges. If that's all your after, you can find someone else.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.SXX 

CHAIN X3VieJ 9.SR
~What? Why is that?~
END 
++ ~I want a proper relationship, Vienxay. It was nice, but maybe it was too soon.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.3R
++ ~It wasn't that great of an experience.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.SXX 
++ ~I had you and that is all I wanted.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-4)~ + 9.SX 

CHAIN X3VieJ 9.SX 
~I see. Usually it is I who throw people away. I suppose now I know what it feels like.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 9.SXX 
~What? You...ugh. I am not interested in continuing this either, then.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

//Love Talk #10

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",20)~ THEN X3VieJ LoveTalk10 
~I should confess something to you. Something that I have been trying with my magic.~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~You haven't been casting a spell on me, have you?~ + 10.1 
++ ~What is it?~  + 10.2
++ ~Don't worry about it. This isn't the time to talk.~ + 10.X 

CHAIN X3VieJ 10.X 
~Then I won't worry about it. Lead on.~ 
EXIT 

CHAIN X3VieJ 10.1 
~Not precisely. Not all spells require casting on a person, after all.~
EXTERN X3VieJ 10.2 

CHAIN X3VieJ 10.2 
~I have been trying to improve my divination, and have been sort of using you to practice. A sort of spell to help divine your "aura", so to speak, and understand more of yourself.~
END 
++ ~That is not disturbing at all.~ + 10.3
++ ~And what are you seeing with your spell?~ + 10.4 
++ ~Please do not do that anymore without my consent.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 10.5

CHAIN X3VieJ 10.5
~Hrmph. As you wish, though you should still hear what I saw.~
EXTERN X3VieJ 10.4

CHAIN X3VieJ 10.3
~Magic learned must be practiced, and the world at large is suitable practice for divination. It's not like I am dominating your mind. There are far worse things.~
EXTERN X3VieJ 10.4 

CHAIN X3VieJ 10.4 
~In merchants, I saw the aura of the craftsmen and laborer, earth. In priests I often see the aura of the healer, bright white that is life. But in you I see only darkness and death.~
END 
++ ~Are you saying that I am going to die?~ + 10.15 
++ ~That is ominous. What does that mean?~ + 10.6 
++ ~That's nonsense. Do you really believe in this magic?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 10.7

CHAIN X3VieJ 10.15 
~It could mean that, though I think otherwise.~
EXTERN X3VieJ 10.6 

CHAIN X3VieJ 10.7
~Of course I do. Magic is real, it can be felt, it can be thrown, and it can predict. To think otherwise is to be foolish.~
EXTERN X3VieJ 10.6

CHAIN X3VieJ 10.6
~I believe it means that you will be facing a lot of violent troubles ahead, and there are many changes for you to die.~
= ~I am not a proper seer, and I could be wrong. It is troubling however. In Evermeet we have never faced death on such a scale except for the rare, rare invasion. But your entire path forward seems full of it.~
END 
++ ~I am fine with that. Whatever is thrown at me, I will triumph.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 10.8 
++ ~It is a bit discomforting. Is there anything I can do to change it?~ + 10.9
++ ~I don't really believe in this. I will make my own path.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 10.10

CHAIN X3VieJ 10.8
~A good attitude to have. And I will ensure that you will triumph, for your sake and mine.~
EXIT 

CHAIN X3VieJ 10.9
~I fear the path you have to walk is laid out before you. I have always felt you have little control of your destiny. My little bout of magic seems only to confirm it more.~
EXTERN X3VieJ 10.11 

CHAIN X3VieJ 10.11
~But fear not, I will see that you triumph, for your sake and mine.~
EXIT 

CHAIN X3VieJ 10.10
~If you can, that is what you should do. But I do not think you have that liberty yet.~
EXTERN X3VieJ 10.11 






 //Love Talk #11

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",22)~ THEN X3VieJ LoveTalk11 
~You have cut it close on some of our last battles. Can you be a little bit less careless? You don't have to look out for me at the expense of yourself.~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~I am trying to protect you, Vienxay. Keeping you and the others alive is important to me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.1 
++ ~It is not my fault. Sometimes the enemy is clever and the plan has to be adjusted.~ + 11.1
++ ~I don't want to listen to this critique, Vienxay. Be silent.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3VieJ 11.X 
~Fine. I will be silent, then.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 11.1 
~That doesn't mean you have to be concerned of me so much. I can handle myself.~
END 
++ ~Why are you so ungrateful?~ + 11.2
++ ~If you are going to be a shrew, then just leave me alone.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 11.2 
++ ~Fine, then I will leave you be.~ + 11.2

CHAIN X3VieJ 11.2
~It is just...it is causing me to think of things. To feel things. To want to do things that I shouldn't.~
END 
++ ~What things exactly, and what is wrong with that?~ + 11.3
++ ~Then let yourself. Why hide it?~ + 11.3
++ ~And I really don't care about any of that. Just stop criticizing me and stop bothering me.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3VieJ 11.3 
~Because it makes me *weak*. I am supposed to be strong. Not...Not desiring some <PRO_RACE> in ways that are not merely physical.~
= ~Just tell me that you do not feel this way about me. Tell that you want things to be simple.~
END 
++ ~I can't lie to you, Vienxay. I care about you a lot.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 11.4
++ ~Even if I said what you wanted, I could not act any differently.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.4
++ ~Of course I don't. I'm just protecting a friend.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.6

CHAIN X3VieJ 11.4 
~You are a *fool*!~
= ~(Suddenly, she grabs your face and pulls you into a brief, rough kiss.)~
END 
++ ~(Return her affections.)~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.5
++ ~Er, Vienxay?!~ + 11.5 
++ ~(Push her away). This isn't right. You were right, we shouldn't be doing this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 11.6

CHAIN X3VieJ 11.5
~I am a fool too. I shouldn't have done that...I am embarrased and...feeling even more confused.~
END 
++ ~We can figure it out together.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.7
++ ~Do not feel embarrased. This is normal. This is *good*.~ + 11.7
++ ~I can't handle someone who can't figure things out. We shouldn't do this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 11.8

CHAIN X3VieJ 11.6
~I...see. Well that is what I wanted to hear. I suppose my foolish predicament can come to an end then. Thank you.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 11.7
~Give me time to think. That is what I ask, <CHARNAME>. Perhaps it is just the stress of our journey making myself act...odd.~
EXIT 

CHAIN X3VieJ 11.8
~I...whatever! I should have never listened to my heart! Let us never speak of this again.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

// Romance conflict

CHAIN IF ~Global("X3VieRomanceConflict","GLOBAL",1)~ THEN X3VieJ X3VieRomanceConflict
~Tell me something, <CHARNAME>, and tell me nothing but the truth.~
== X3VieJ ~Are there others in our party who interest you? I will not share their attentions. It is me or them. I do not share. I do not want to share. Tell me now so we can get this annoyance over.~
END 
++ ~There isn't anyone else, Vienxay, fret not.~ + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + ~Then I won't waste your time. I have strong feelings for Aerie.~ + RC.2
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + ~Then I'm going to admit something...odd, but I care for Jaheria as more than just my guardian.~ + RC.3
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + ~I will tell you the truth then. I care very much for Anomen.~ + RC.2
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + ~Viconia has ensnared my heart.~ + RC.Viconia
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + ~I have grown close with Rasaad. I think he is good for me.~ + RC.2
+ ~Global("HexxatRomanceActive","GLOBAL",1)~ + ~It's odd, but I feel close with Hexxat.~ + RC.2
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + ~It's a little wild, but I'm beginning to see myself with Neera.~ + RC.3
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + ~I'm beginning to fall for Sirene. I hope you understand.~ + RC.Sirene
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + ~I find Petsy charming. I think she is right for me.~ + RC.2
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + ~It was all strange at first, but I think I am in love with Yvette.~ + RC.Yvette
+ ~Global("DornRomanceActive","GLOBAL",1)~ + ~I find myself deeply attracted to Dorn.~ + RC.2
++ ~I'm not interested in starting a relationship with anyone, nor talking about it.~ + RC.2
++ ~I'd rather be friends with you, Vienxay.~ + RC.2


CHAIN X3VieJ RC.2
~Disappointing. Well then I see we have nothing more to discuss. Your answer gives me everything I was seeking.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.Viconia
~The drow. Perhaps whatever I saw in you I was merely imagining. My interest has definitely waned.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.3
~You are chosing a half-blood over me? How irksome. You clearly are not someone I know, then. Hrmph.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.Yvette
~You are fawning over a woman. From a mere portrait? You are mad. Clearly I must be having bad taste. I'll rectify that immediately.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.Sirene
~You pick the devil over myself? You truly are a fool. I clearly was wrong about you.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.1
~Good. I would have it no other way.~
DO ~SetGlobal("X3VieAppChange","GLOBAL",9)SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)
SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("HexxatRomanceActive","GLOBAL",3)
SetGlobal("YvetteRomanceActive","GLOBAL",3)
SetGlobal("L3PetsyRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ 
EXIT



CHAIN IF ~Global("X3VieLoveTalk","LOCALS",24)~ THEN X3VieJ LoveTalk12 // Happens at rest.
~I know you are...tired, <CHARNAME>. But I thought to speak with you.~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Are you wanting to join me again?~ + 12.1 
++ ~I thought you wanted some time.~ + 12.2
++ ~Not now, Vienxay. I'm too tired to deal with whatever you want to talk about.~  + 12.X 

CHAIN X3VieJ 12.X 
~Then I will stop bothering you with anything. Hrmph.~
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 12.1 
~No, I think that is the problem.~
EXTERN X3VieJ 12.3

CHAIN X3VieJ 12.2 
~I did, and I think I have had the time I needed.~
EXTERN X3VieJ 12.3 

CHAIN X3VieJ 12.3 
~I regret my earlier advances to you. They have just complicated things, most likely during a time when you do not need complications.~
= ~I have told you how such feelings are weakness. I do not want to weaken you at a time where you need strength.~
END 
++ ~I don't have any regrets. And neither should you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 12.4 
++ ~I've told you before, Vienxay. I am not afraid. My strength comes from others, from you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 12.4
++ ~Maybe you are right.~ + 12.5 

CHAIN X3VieJ 12.4 
~Then...if you are not afraid, if you wish to damn all the risks, I would like to be with you.~
END 
+~!Race(Player1,ELF)~+ ~As long as you are okay with being with someone who isn't an elf.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 12.6 
++ ~I would like that, Vienxay. That is what I would want.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 12.7
++ ~No, you were right before. I should be focused.~ + 12.5 

CHAIN X3VieJ 12.5
~It is not an easy choice, but I think it is the best choice. There is much you are going to face in the path ahead, I am certain of that. It is better to do that distractionless.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 12.6
~I am. Evermeet is beyond my reach. I want to learn to tolerate the people here more. To be okay with getting close to other kinds of people. To you.~
EXTERN X3VieJ 12.7

CHAIN X3VieJ 12.7
~(She presses close to you, before moving her lips to yours. Soft. Yearning.)~
= ~Perhaps we should continue this somewhere more alone?~
END 
++ ~Let's, shall we?~  + 12.8
++ ~Maybe we can just start with holding eachother? Let's take this slow.~  + 12.9 
++ ~I am a bit tired. Maybe another time.~  + 12.10

CHAIN X3VieJ 12.8
~Then come with me. Let us join together properly this time.~
END 
IF ~Global("X3Slept","LOCALS",0)~ THEN DO ~SetGlobal("X3Slept","LOCALS",2)RestParty()~ EXIT 
IF ~!Global("X3Slept","LOCALS",0)~ THEN DO ~RestParty()~ EXIT 

CHAIN X3VieJ 12.9
~That...is suitable. As long as I am close to you, this is a satisfactory compromise.~
EXIT 

CHAIN X3VieJ 12.10 
~Then we can another time. I will just rest next to you. As long as I am close to you, I will be satisfied.~
EXIT

// Love Talk #13

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",26)~ THEN X3VieJ LoveTalk13 
~Good morning, <CHARNAME>. Some food before we hit the road?~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)SetGlobal("X3VieRomanceActive","GLOBAL",2)~
END 
++ ~What is that smell? And what is this?~ + 13.1
++ ~Sure, I am starved.~ + 13.1
++ ~Did you cook this?~ + 13.3 
++ ~No, we should get moving as soon as we can.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 13.X 

CHAIN X3VieJ 13.1 
~This is a classic breakfast cuisine from Evermeet. Crushed strawberries on bread glazed with maple sugar. Simple and sweet.~
EXTERN X3VieJ 13.4

CHAIN X3VieJ 13.X 
~Hrmph, you make excellent food go to waste, my love. But as you wish. Something for me to snack on later.~
EXIT 

CHAIN X3VieJ 13.3 
~Of course I did. No one else can make food that I like.~
== X3VieJ IF ~InParty("X3Hel")~ THEN ~I suppose I will admit however, that the dwarf priestess does do a decent job.~
EXTERN X3VieJ 13.4

CHAIN X3VieJ 13.4 
~Here, take a bite. What do you think?~
END 
++ ~Delicious, but don't let me have it all. Here, let me feed you a bite.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 13.5 
++ ~What is the occasion?~ + 13.6 
++ ~Er it's...good. Really.~ + 13.17 
++ ~I don't think I can stomach this.~ + 13.18

CHAIN X3VieJ 13.18
~What? What's wrong with it? Let me have a bite...~
EXTERN X3VieJ 13.5

CHAIN X3VieJ 13.6
~I want to show you affection in more ways than just my body, <CHARNAME>. Getting you a good start I thought would be one way to achieve this.~
END 
++ ~As long as still get some intimate time with you.~  + 13.8
++ ~I like this side of you, Vienxay. I hope to see more of it.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 13.7
++ ~We should get moving, no?~ + 13.9

CHAIN X3VieJ 13.7
~You will, <CHARNAME>. That I promise.~
EXIT 

CHAIN X3VieJ 13.8
~Of course you will. A few times with you is just not enough, is it?~
EXTERN X3VieJ 13.10

CHAIN X3VieJ 13.9
~I suppose we should, yes.~
EXTERN X3VieJ 13.10 

CHAIN X3VieJ 13.10
~Come <CHARNAME>, let us face the world together, <CHARNAME>.~
EXIT 

CHAIN X3VieJ 13.17
~You don't sound convinced. Let me see how it tastes.~
EXTERN X3VieJ 13.5

CHAIN X3VieJ 13.5 
~Ugh, this is way too sweet! I ruined it! How infuriating.~
END 
++ ~I've never been treated by you like this. I'm just happy with your attempt.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 13.6 
++ ~Don't be dissapointed, I thought it tasted fine.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 13.81
++ ~Maybe you shouldn't cook anymore.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 13.19

CHAIN X3VieJ 13.81
~Either you have a sweet soul or you have bad taste then.~
EXTERN X3VieJ 13.6 

CHAIN X3VieJ 13.19
~Hrmph, don't think one failed attempt is going to dissuade me.~
EXTERN X3VieJ 13.6


//Technically post slayer change.

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",28)~ THEN X3VieJ LoveTalk14 
~<CHARNAME>...what are you now?~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~What are you talking about?~ + 14.1 
++ ~I'm me, Vienxay. What else would I be?~ + 14.1 
++ ~I don't want to talk about this.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 14.X 

CHAIN X3VieJ 14.X 
~You want to ignore the obvious problem, then?~
EXTERN X3VieJ 14.1

CHAIN X3VieJ 14.1
~You transformed into...that creature. You don't even have a soul anymore.~
= ~You are lucky to be even alive.~
END 
++ ~I will get my soul back from Irenicus, Vienxay. Do not worry.~ + 14.2 
++ ~Are you afraid of me?~ + 14.3
++ ~It was a harrowing experience. I'm still not sure how I am here.~ + 14.4

CHAIN X3VieJ 14.2 
~I do worry, <CHARNAME>. What happened to you, what I saw, was nothing sort of horrific.~
EXTERN X3VieJ 14.4 

CHAIN X3VieJ 14.4 
~That mage kills people effortlessly. He took your soul. Whatever he is going to do next, it is not something we want to get in his way.~
= ~Please. You are alive still. We can stop this chase and just live as things are.~
END 
++ ~I can't, Vienxay. I don't know if I will live if I don't. I have to go after him.~ + 14.5 
++ ~This isn't like you at all. You are all about revenge and power.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 14.6
++ ~What is wrong with you? Snap out of whatever is overcoming you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 14.7

CHAIN X3VieJ 14.5 
~*Sigh*. I think it is foolish. Think it over carefully.~
EXTERN X3VieJ 14.8

CHAIN X3VieJ 14.7
~There is *nothing* overcoming me. I am trying to advise you for your own sake!~
EXTERN X3VieJ 14.8

CHAIN X3VieJ 14.8
~He is even worse than my former mentor. More manipulative, more cunning, doing things with magic I could probably never dream of. Are you sure you really want to go after such a man?~
END 
++ ~You have told me many times about seizing my own path. I *want* to stop Irenicus. I *will* get him.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 14.9 
++ ~We have our own strength too, Vienxay. I know we can beat him. We just cannot let fear stop us.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 14.9
++ ~Even if you were right, and I do nothing, I may *still* die. I don't know what will happen if I just let him go.~ + 14.9
++ ~You don't have to stop him with me. You've done more than enough to repay me helping you.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 14.10

CHAIN X3VieJ 14.9
~Ugh. I see there is no convincing you. You make a good argument, though I may still try to change your mind.~
EXTERN X3VieJ 14.11


CHAIN X3VieJ 14.10
~I don't, but I also have no where else to go or be. I'm staying. I told you I would be with you, that is even through the foolish, though I may still try to change your mind.~
EXTERN X3VieJ 14.11

CHAIN X3VieJ 14.11
~Just please limit the foolish, crazy decision-making you do after this man dies. I can only handle so much craziness in my life.~
EXIT 


CHAIN X3VieJ 14.6
~I have always supported acts of revenge, yes. But this may be futile.~
EXTERN X3VieJ 14.8

CHAIN X3VieJ 14.3 
~I am not afraid of you. I am afraid for you.~
EXTERN X3VieJ 14.4

// Love Talk #15

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",30)~ THEN X3VieJ LoveTalk15
~<CHARNAME>. Let me start by saying I care about you very, very much.~
= ~But why. Are. We. In the underdark?!~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~Vienxay, not so loud.~ + 15.12
++ ~You know as well as I do this is the only path we can take.~ + 15.1 
++ ~Not now, Vienxay. Quiet down. We have no idea what we will face down here.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 15.X 

CHAIN X3VieJ 15.X 
~Hrmph. "Quiet down", <PRO_HESHE> says. Don't expect me to be sweet later.~
EXIT 

CHAIN X3VieJ 15.1
~Traveling through the Shadowplane back to Amn sounds plenty better.~
END 
++ ~You can do that?~ + 15.2 
++ ~If you can't handle this Vienxay, why not just go?~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 15.3 
++ ~As desirable as an easier route would be, this is what we have to work with.~ + 15.4

CHAIN X3VieJ 15.2 
~No...only for myself. And I do not want to know what this is like in the shadow realm. Probably more horrifying.~
EXTERN X3VieJ 15.4 

CHAIN X3VieJ 15.3 
~The only way I could go is through the Shadowplane. And I do not know if the shadow realm's version of the underdark is safer. It may be quite worse.~
EXTERN X3VieJ 15.4 

CHAIN X3VieJ 15.4 
~Ignore me. I am just...my people do not belong here. An elf does not belong here.~
END 
++ ~(Squeeze her hand.)~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 15.5 
+~Race(Player1,ELF)~+ ~We can be two elves making it through here together. We'll survive.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 15.6 
++ ~Then we'll stay here for little time as possible.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 15.7
++ ~Well, get it together. We are here whether you like it or not.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 15.8

CHAIN X3VieJ 15.5
~(She doesn't squeeze back at first, before her fingers clinch yours with a stressed tightness.)~
= ~I suppose that...helps a bit. Let us just get out of here as quickly as we can. Correlon's gaze does not reach into places like this.~
EXIT 

CHAIN X3VieJ 15.6
~I hope we do, <CHARNAME>. I truly hope we do.~
EXIT 

CHAIN X3VIeJ 15.7
~Good. By Correlon, I pray we avoid as much drow as we can.~
EXIT 

CHAIN X3VieJ 15.8
~You are...ugh. "Get it together", <PRO_HESHE> says. Hrmph.~
EXIT 

CHAIN X3VieJ 15.12 
~Well forgive me for shouting. I am just horribly distressed about everything going on with you. With us. It is only getting worse.~
EXTERN X3VieJ 15.1 

// Love Talk #16

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",32)~ THEN X3VieJ LoveTalk16
~Great. We are now in one of their cities. If it weren't for this skin, I would be screaming and blasting my magic at everything.~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~You seem increasingly unhappy.~ + 16.1 
++ ~It is only temporary. Take it easy.~ + 16.1 
++ ~Shh. Don't get attention turned our way.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 16.1
++ ~This is *definitely* not the time, Vienxay.~ + 16.3

CHAIN X3VieJ 16.1 
~We are in a city. Full of drow. Not just the underdark now. Have we lost it? Has the father abandoned me?~
END 
++ ~Please, please, pull it together Vienxay. We cannot afford needless attention.~ + 16.2 
++ ~And I am here with you. And I will always be if you let me be your comfort.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 16.3
++ ~For the love of all, shut up. Shut up. Shut up!~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-4)~ + 16.4

CHAIN X3VieJ 16.4
~Ugh! Your path is intolerable sometimes. Fine, fine, fine!~ 16.4 
EXIT 

CHAIN X3VieJ 16.2 
~No, we really, really can't. Hrmph. I...will keep it down. For the sake of us all.~
EXIT 

CHAIN X3VieJ 16.3
~Then...stay close to me while we are down here. Remind me of your comfort, of your presence. I will truly, truly need it.~
EXIT 

//Love Talk #17
 
CHAIN IF ~Global("X3VieLoveTalk","LOCALS",34)~ THEN X3VieJ LoveTalk17
~It is such a relief to be free from that dreadful place...and to be greeted by good elven people.~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~They seem to be holding secrets from us. But at least they aren't hostile.~ + 17.1 
++ ~I am glad to be out of that place.~ + 17.2 
++ ~You seem to be doing much better now, Vienxay.~ + 17.3 

CHAIN X3VieJ 17.1
~They may not seem friendly to outsiders, but they wouldn't hurt us.~
EXTERN X3VieJ 17.4 

CHAIN X3VieJ 17.2 
~Thank Correlon. I hated that place.~
EXTERN X3VieJ 17.4

CHAIN X3VieJ 17.3
~Much better. The sun, the sky, the clouds. This is where I should be.~
EXTERN X3VieJ 17.4

CHAIN X3VieJ 17.4 
~(She pulls you closer suddenly to her lips to kiss you. Her hands reach around to hold you to her.)~
= ~We have somehow made it this far. Perhaps...perhaps we can really beat this mage, if you are still insistent.~
END 
++ ~I am. I must.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 17.5
++ ~It is the only way to get my soul back.~ + 17.5
++ ~I'm glad that you're coming around to this more.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 17.6

CHAIN X3VieJ 17.5 
~Let us continue the pursuit, to whatever damn end it brings us.~ 
EXIT 

CHAIN X3VieJ 17.6 
~After all that horror...we survived. We are strong. We *are* powerful. And that perhaps we are truly able to stop this Irenicus.~
EXTERN X3VieJ 17.5 

// Final
CHAIN IF ~Global("X3VieLoveTalk","LOCALS",36)~ THEN X3VieJ LoveTalk18 
~My people...my kin...so many bodies.~
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ ~We will stop him, Vienxay. Together. We will save who we can.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 18.1 
++ ~And there will be more, unless we do something about it.~ + 18.1
++ ~Come now, love. We have to keep moving.~ + 18.1 

CHAIN X3VieJ 18.X 
~Y-yes. Let us...let us obliterate that man and tear him asunder! Let us see him dead ten times over for what he has done.~
EXIT 

CHAIN X3VieJ 18.1 
~Kill him, <CHARNAME>.  No mercy, no second chances. Kill him and make him suffer.~
END 
++ ~I don't want to make him suffer. I just want my soul back.~  DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~+ 18.2
++ ~Gladly, Vienxay.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 18.3 
++ ~With all of the things he is done? There is no way I will be merciful.~ DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 18.3 

CHAIN X3VieJ 18.2 
~You do not feel vengeful? Perhaps you are more focused than I am. But so long as we stop him...I do not care.~
EXIT 

CHAIN X3VieJ 18.3 
~Good. I will give him a thousand stabs and shadow bolts, whatever it takes to put him down.~
EXIT 

CHAIN X3VieJ DSR
~You speak of Dragonspear? I am not the same person as I was then, not so weak and desiring to fill that hole the loss of my homeland created.~
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
= ~And yet you were sweet and treated me well. You still treat me well. I am...quite grateful for that.~
= ~But I cannot just give you what you desire. Time has passed. Circumstances are different...but if you are truly insistent, let us wait and see if we still even have chemistry.~
= ~I think it is foolish, love makes you weaker, more distracted. But you are quite stubborn.~
END 
++ ~That I am. I'd like to see what happens.~ + DSR.7
++ ~ I'll wait for now.~ + DSR.7
++ ~If you think it is foolish, don't bother. I'll not waste time.~ + DSR.8 

CHAIN X3VieJ DSR.7
~Hrmph. As stubborn as I said you were. I will admit I am flattered, and intrigued and e- ugh. I will admit nothing more!~
DO ~SetGlobal("X3VieInterest","LOCALS",1)IncrementGlobal("X3VieAppChange","GLOBAL",2)~ 
EXIT 

CHAIN X3VieJ DSR.8 
~Good. This is the best for us all, then.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieAppChange","GLOBAL",-2)~
EXIT 

// Group Kiss from PID 
CHAIN X3VieJ Group.Kiss 
~And do you really enjoy having an audience?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'll just...not look.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Don't we have battles to get to?~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What? I'm not staring at all.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Well...love is love.~
== X3VieJ ~Whatever. Get over here.~
== X3VieJ ~Mmm. Now that was deserved delight.~
EXIT 

APPEND X3VieJ 

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~Well. I am not going to make this flowery or step softly, so I am going to be quite blunt with you, <CHARNAME>.~
= ~I was desired by many in Evermeet. Lately, despite us being together, you have treated me horribly. I have better standards, and you have utterly failed them.~
= ~So you and I are no longer a we. I am through with you.~
++ ~Vienxay, I'm sorry. Forgive me.~ + LBreak.1
++ ~It's just a bad time for me to be close with anyone. Maybe this is for the best.~ + LBreak.2 
++ ~As you often say, "Whatever".~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~It is far, far, too late for that.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~You could have figured that out before you got yourself close to me.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~Ugh!~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~Well, I'll be leaving then. No reason to stay around after a proclamation like this.~
++ ~Agreed. Leave, please.~ + LBreak.5 
++ ~Leave. And give me your equipment.~ + LBreak.6 
++ ~I still need you, Vienxay, and want your company, even if it's just as friends.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~Hrmph. Goodbye... and goodluck.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~Whatever. Have it. I'm out of here.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~I...I will stay. For you. I...suppose I admit I still care. I will try to see this to the end.~
IF ~~ EXIT 
END 


// Break Approval 
IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~I'm done here. Be fools if you wish but you do so without me.~  [VieBreak]
= ~I have seen you blunder about long enough. And you have little regard for me, and I? Even far less for you.~
++ ~Blundering about, Vienxay? I saved you. Remember that.~ + Break.1 
++ ~What did I even do wrong?~ + Break.2 
++ ~If I did something to hurt you, I apologize.~ + Break.8
END 

IF ~~ Break.1
SAY ~And I think I have more than repaid you by now. Debts do not make me your slave.~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~If you even have to ask now, then you are sorely in need of clerical help. Help that I will not wait around to see it's progress of.~ 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY ~Please. You are apologizing now? Now?!~
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY ~It is time for us to seperate our paths.~
++ ~Then get out of my sight.~ + Break.4
++ ~Go ahead. But your equipment? That's mine.~ + Break.5
++ ~Vienxay, please. Just give me one more chance to make this up to you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~Gladly! Hrmph.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~ 
EXIT 
END 

IF ~~ Break.5 
SAY ~What?! Fine. But watch your pockets if we cross again. I will not forget this.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~Ugh, begging makes you so weak. *Sigh*. Fine. But only one. Don't ruin it.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3VieApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@516)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~I can stomach this no longer! You have had your chance and it is far wasted!~
= ~I'm done here. Done, done, done! And there is nothing more to be said on it. Goodbye!~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  ~Yes?~ [VienCom1]
++ ~Let me ask you a question.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to ask something private.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to ask something private.~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  ~Your desire?~ [VienCom3]
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END  

IF ~~ main.PID 
SAY  ~You'll prod anyway one way or another.~ 
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Ask away.~
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home, Evermeet?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your family?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about the details of your exile.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ ~Can you tell me more about your mentor?~ DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ ~Do you often get in trouble with the law?~ DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~I can't stop you, so ask.~ 
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home, Evermeet?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your family?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about the details of your exile.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ ~Can you tell me more about your mentor?~ DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ ~Do you often get in trouble with the law?~ DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ ~Let's talk about something else.~ + main.PID
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Evermeet 
SAY ~I suppose I cannot blame you for being hungry to know about my great home. There is nothing like it in the realms.~ 
= ~My homeland is an island far to the west, with nature untainted as it should be. We build around it, or with it for our homes, allowing the forests to remain splendrous with their trees and lakes. Buildings would rise into the sky, and the walk ways would wrap around trees and nests, leaving them undisturbed~
= ~Only elves could call this place home. No other were allowed to set foot there, and we maintained this with both force and magic. This kept our people safe, who were never poor nor never starving. All were taken care of and loved.~
++ ~Did anyone ever force their way?~ + PEvermeet.1 
++ ~No exceptions?~ + PEvermeet.2 
++ ~It sounds so different from the rest of the world.~ + PEvermeet.3
++ ~Let's talk about something else.~ + MoreQuestion.PID 
END 

IF ~~ PEvermeet.1 
SAY ~Some have tried. Pirates, Drow, orcs. All have failed. Not a single one of them stepped on the foot of our soil. Evermeet's navy is second to none.~
++ ~Were there no visiting exceptions?~ + PEvermeet.2 
++ ~It sounds so different from the rest of the world.~ + PEvermeet.3
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PEvermeet.2 
SAY ~None. So many of our empires to the east of Evermeet had fallen when trust was given to outsiders. Our people needed a sanctuary unsoiled. And this lesson has proven to work well under Queen Moonflower's guidance.~
++ ~Let's talk about something else.~ + main.PID
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PEvermeet.3 
SAY ~Perhaps in that some other cities have walls and are distrusting of outsiders? I have seen none do so to the success and extent of my people, while also respecting the world it lives in. But you are entitled to your misbeliefs.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Family 
SAY ~My father held the responsibility as the Treasurer of Evermeet, giving financial advice to both the Queen and her council. He was brilliant with money, but less with people. My mother thus was often beside him as she was better at the talking.~
= ~I have two younger sisters, the youngest a bit naive and airy, but sweet and good. And the other often finding trouble, but always managing to get out of it.~
= ~I miss them terribly. I have not heard from them since I was exiled.~
++ ~Have you not tried to contact them?~ + PFamily.1 
++ ~Perhaps they are ashamed of you.~ + PFamily.2 
++ ~That must be difficult.~ + PFamily.3
END 

IF ~~ PFamily.1 
SAY ~Why would I? I put them through public shame. I do not even know if my father is still entrusted with the job he had. Everytime I want to, that I begin to scrawl something...I tear it up.~
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY ~My sisters, no. They believe I am innocent. My father and mother, yes. They know the truth.~
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY ~It is, but it is part of the punishment. Often more suffer than just ourselves when we commit a crime. At least when I get in trouble with the law in these human lands, it is just myself that suffers.~
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.4 
SAY ~One day I will reach out to them. One day.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Exile 
SAY ~There is little to tell. I was involved with a Sharran, my mentor, and her methods of magic. I did not know this at first, she was mostly teaching me shadow magic, which I had an innate gift for.~
= ~I learned gradually that she was using our own people as experiments, and killing them. I planned to betray her with this knowledge, but while I was getting some..."stress relief" with an elf, my lover at the time barged in on us and I felt frightened.~
= ~I used one of the spells she taught me with no idea it was of Shar's weave and killed him on accident. His death, and later all of the others my mentor had caused, were pinned on me.~
= ~I have never used Shar's weave since.~
++ ~I am suprised they didn't execute you.~ + PExile.1 
++ ~Is there no way to appeal your sentence?~ + PExile.2 
++ ~How can you unknowingly use Shar's weave?~ + PExile.3
END 

IF ~~ PExile.1 
SAY ~As am I. Perhaps it was my father's high standing in society, or perhaps our people's reluctance to kill one another. But to live is the greater shame.~
= ~The public watched me get bound, watched my forehead get marked, watched me get thrust into a ship, and sent to this land with only my clothes and a bit of gold.~
++ ~Is there no way to appeal your sentence?~ + PExile.2 
++ ~How can you unknowingly use Shar's weave?~ + PExile.3
++ ~Let's talk about something else.~ + main.PID
END 

IF ~~ PExile.2 
SAY ~None that I know of.~
++ ~How can you unknowingly use Shar's weave?~ + PExile.3
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PExile.3 
SAY ~Using the Shadow Weave does not require devotion to Shar. But there is a cost of the self. Had I kept attempting to use the weave without devoting myself to her, I would have likely lost my sanity and my connection to Mystra's weave.~
= ~I had believed the magic was merely an extension of Shadow Magic. And when so little is known of the Shadow Weave, tricking is not too difficult for those who are hungry for knowledge.~
= ~My lesson is well learned, and I will never do it again. Not even if you begged me.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Mentor 
SAY ~I know little but that she was not born in Evermeet and believed that the trustingness of other elves would allow her to get away with the experiments she needed.~
= ~She was also a skilled Shadowdancer. Even if my people had known most of the murders done were her fault and not mine...she could have easily escaped if she so chose.~
= ~After seeking revenge for so long against her, I must admit it makes me feel...purposeless.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Law 
SAY ~Hrmph. Human civilizations have very strange laws and customs both. Whine or pay a guard enough and you can get anyone in trouble for anything you like.~
= ~The guards however, do enjoy bothering me more than most. I have yet to figure out why.~
++ ~Perhaps it is your hostility towards them.~ + PLaw.1 
++ ~Really? You can't even imagine in the slightest?~ + PLaw.2 
++ ~You're still probably adjusting to life away from Evermeet.~ + PLaw.3
END 

IF ~~ PLaw.1 
SAY ~Or it is their corruption and inability to be proper protectors of the people. I think that is a far more likely reason.~
IF ~~ + PLaw.3 
END 

IF ~~ PLaw.2 
SAY ~Well, clearly it is their corruption and inability to be proper protectors of the people. If they were anything like the guards in Evermeet I would not have this problem.~
IF ~~ + PLaw.3
END  

IF ~~ PLaw.3 
SAY ~Perhaps I am just still learning the ways of the people here. But do know I am a Shadowdancer. In time I can find a way out of anywhere, and then they would know who is truly in control.~
++ ~Let's talk about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 


IF ~~ PersonalGroup.PID 
SAY ~Well we don't have privacy. But you can ask.~
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3ViePartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + DSR
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next rest in a safe place~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next rest in a safe place~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3VieInterest","LOCALS",0)~+ ~Are all elves from Evermeet as attractive as you are?~ DO ~SetGlobal("X3VieInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I think we should end our relationship.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~Well it is just you and me. Speak.~
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3ViePartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + DSR
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next rest in a safe place.~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next rest in a safe place~ DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3VieInterest","LOCALS",0)~+ ~Are all elves from Evermeet as attractive as you are?~ DO ~SetGlobal("X3VieInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I think we should end this.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~Hrmph. If you really want to, I guess.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~Are there nights you are not planning to spend near me? I'll be expecting your presence.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmm. When we get a chance to rest, I will be giving you more of those in different places.~
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY ~What a very forward comment. Is this technique common with the local customs?~ 
= ~We who hail of Evermeet pride ourselves on our beauty, male or female, noble or commoner.~
= ~As for your question, I aim to be pleasing to the eyes, to be more beautiful than anyone else. But I will admit, you appear rather attractive yourself.~ 
++ ~Ah, two attractive people then. What should we do about that?~ DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~ + RI.1
++ ~You are certainly very pleasing.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ + RI.2
++ ~Are you always so full of yourself?~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@506)~ + RI.3
END 

IF ~~ RI.1 
SAY ~A good question. Perhaps we should think about it and come back with an answer later. I can think of some fun things...but we shall see.~
IF ~~ EXIT 
END 

IF ~~ RI.2 
SAY ~I could show you just how much. But now isn't the time for it. Perhaps...in time you may come to know of what I speak.~
IF ~~ EXIT 
END 

IF ~~ RI.3 
SAY ~You just gave me the compliment. If you are irriated with my reaction then you shouldn't say it.~
= ~If you said it only to test me, congratulations, you've learned that I value myself. Now let's not speak of this again.~
IF ~~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~ EXIT 
END 

IF ~~ BreakUp 
SAY ~I asusme you mean...our relationship.~
= ~Then it is done. Think nothing more of it, then! I won't...not at all.~
IF ~~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@509)~ EXIT 
END 

END 