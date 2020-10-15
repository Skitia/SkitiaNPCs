/*Non-Essential Interjections*/

//Chapter 6 & 7

I_C_T SUDEMIN 22 X3RebSUDEMIN-22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I can understand why she would wish to try the route of mercy. It must feel crushing that it did not work out.~
END

I_C_T SUELF5 2 X3RebSUELF5-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Poor children. But they shouldn't be here. This is a dangerous position for them.~
END


I_C_T C6CORAN 1 X3RebC6CORAN-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN ~It is wonderful to see you again, Coran. I recall your time with us fondly.~
END 

I_C_T C6REGIS1 2 X3RebC6REGIS1-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Is this really Drizzt? Where is my quill, I need to make sure I remember everything that happens next!~
END 

I_C_T C6DRIZZ1 37 X3RebC6DRIZZ1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is so exciting. I need to make space in my book for this. I don't think anyone will believe it when they hear we fought alongside Drizzt.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Exciting? This is going to dampen our glory. I bet he'll take all the credit when this is over.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~
== C6DRIZZ1 ~Come friends! Let us be off.~
END

I_C_T C6DRIZZ1 55 X3RebC6DRIZZ1-55
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END 

I_C_T C6DRIZZ1 48 X3RebC6DRIZZ1-48
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 41 X3RebC6DRIZZ1-41
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 18 X3RebC6DRIZZ1-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 9 X3RebC6DRIZZ1-9
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 5 X3RebC6DRIZZ1-5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 1 X3RebC6DRIZZ1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Did you not know who this was at the time, <CHARNAME>? Maybe we can talk this out.~
END


I_C_T C6ELHAN2 60 X3VieC6ELHAN2-60 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A geas is so forceful. The idea of being so heavily bound even by magic would make myself uncomfortable if this was asked of me.~
END

I_C_T C6ELHAN2 28 X3RebC6ELHAN2-28 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~How is that possible? I know he is a powerful mage, but...~
END

//Underdark 

I_C_T UDSVIR08 13 X3RebUDSVIR08-13 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~I am so glad we did not have to hurt my kin of the deep.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Eh, won't lie. Kind of glad we didn't have to hurt these fellows. Nice to see the little guy come out okay for once.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== UDSVIR08 ~Farewell, dark ones.~
END 

I_C_T UDSVIR08 1 X3RebUDSVIR08-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")Global("SolaufeinJob","GLOBAL",7)~ THEN ~I am so sorry kin. Please forgive me, Garl.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~
== UDSVIR08 ~Duth nada, duth nada!~
END 

I_C_T DADUER1 12 X3RebDADUER1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~From all that he describes...he may be describing the aboleth. Such a terrifying thing...I don't think we should risk keeping it waiting.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfeh. The thing in the tank? Up to <CHARNAME>, but the dwarf is probably off his rocker if you ask me.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~That would be a foolish. I sense a troubling power from that tank. Do as the duergar suggests...for the sake of our work here.~
END

I_C_T UDDEMON 8 X3RebUDDEMON-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~No, no, no. This is such a horrible thing to do. No matter the price, no gain could be worth it.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
END

I_C_T UDPHAE01 136 X3RebUDPHAE01-136
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A demon from the lower planes? I wonder what the plan is with him.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~For battle, what else, girl? This mage we be chasing has an unusual plan in place.~
END


I_C_T UDPHAE01 61 X3RebUDPHAE01-61
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Kal")~ THEN ~I want to hope we can just talk to him without hurting him. I know it holds such risk, but I would prefer to try.~
END

INTERJECT UDPHAE01 61 X3RebUDPHAE01-61
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh my. I am not comfortable with this at all.~
EXTERN UDPHAE01 62

I_C_T UDSOLA01 139 X3RebUDSOLA01-139
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A hopeful dream. But I hope it is one that comes true.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSOLA01 131 X3RebUDSOLA01-131
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A hopeful dream. But I hope it is one that comes true.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 


I_C_T UDSOLA01 9 X3RebUDSOLA01-9
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, I do not like this. But if we must play their game and their rules to survive, so we must.~
END 

I_C_T DADROW18 1 X3RebDADROW18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I would admire his ship, if I was not so afraid for Lantan. I wonder if the schemantics to build this were stolen from my home.~
END 

I_C_T UDDROW26 4 X3RebUDDROW26
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I...have no desire to watch this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~
END 

I_C_T DASLAVE1 11 X3RebDASLAVE1-11
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~What a cruel fate to bring upon them. Please, do not let these traits of the drow become a part of you.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-15)
DisplayStringNoNameDlg(Player1,@409)~
END 


I_C_T DASLAVE1 6 X3RebDASLAVE1-6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>?!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-15)
DisplayStringNoNameDlg(Player1,@409)~
END 

I_C_T DASLAVE1 7 X3RebDASLAVE1-7
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3EmiSlaveForce","GLOBAL",0)~ THEN ~I hope they make it. I will pray for them.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~
END 

I_C_T DASLAVE1 8 X3RebDASLAVE1-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3EmiSlaveForce","GLOBAL",0)~ THEN ~I hope they make it, slim as it may be. I will pray for them.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T DADROW12 1 X3RebDADROW12
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, I'm glad its free, but I hope you can us out of her wrath.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@413)~
END 

I_C_T UDSIMYAZ 53 X3RebUDSIMYAZ-53
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Most people I think would have kept such a thing. I am suprised you were willing to give this up, too.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSIMYAZ 12 X3RebUDSIMYAZ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so sorry. I do not want to fight you. But I do not know how to stop these.~
END 

I_C_T UDSILVER 27 X3RebUDSILVER-27
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, I need to write all of this down for reference later. It is so odd to see my writing hand so much...bigger than normal.~
END 

I_C_T UDSILVER 45 X3VieUDSILVER-45
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so amazed we were able to do this for this beautiful silver. I had feared our quest was impossible.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSILVER 49 X3RebUDSILVER-49
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I fear no apology will stop her wrath. The consequences of our actions await.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T UDSVIR05 8 X3RebUDSVIR05-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Even down here, you are still my kin. And no one should know the grief from losing their child.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~
END 

I_C_T UDSVIR05 6 X3RebUDSVIR05-6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am glad we found his child. I just wish I could properly tell him that, being a drow feels so...awful.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~
END 

I_C_T UDSVIR05 21 X3RebUDSVIR05-21
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~*Sigh*. And the passage that follows is sure to run with innocent, angry blood of kin.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well. This is going to go exactly as we think it will.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== UDSVIR05 ~Da willen, da willen!~
END

I_C_T UDSVIR05 23 X3RebUDSVIR05-23
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~*Sigh*. And the passage that follows is sure to run with innocent, angry blood of kin.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well. This is going to go exactly as we think it will.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== UDSVIR05 ~Da willen, da willen!~
END


I_C_T UDSVIR05 25 X3RebUDSVIR05-25
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~What you did was cruel. But at least...he knows he passed. Better to know than to wonder.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END


I_C_T UDSVIR01 4 X3RebUDSVIR01-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~To see the home of my own deep kin. It is so rare for us to encounter one another. I should get my book ready.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It is a bunch of rocks, gnome. Hardly record-worthy material, but I suppose you would have interest in the most mundane of things.~
END

I_C_T UDSVIR01 8 X3RebUDSVIR01-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, please. These are my deep kin! They did nothing to us.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
END

I_C_T UDTRAP02 2 X3RebUDTRAP02-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~His mind is gone. Unless we restore it somehow, he is bound to his unpredictability insanity. Be careful, this could become violent.~
END

I_C_T UDVITH 18 X3RebUDVITH-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am a bit curious on what lies beyond these dimensions. There is so much out there beyond our own world.~
END

I_C_T UDDUER01 25 X3RebUDDUER01-25
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I know it is difficult, but we have to pretend. Even if I hate it as well.~
END

I_C_T JAHEIRAJ 478 X3RebJAHEIRAJ-478 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I wish it were so easy. Being like this is harder than I thought.~
END

I_C_T HAERDAJ 120 X3RebHAERDAJ120
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I know you are trying to keep up appearances but...oh, nevermind.~
END

I_C_T UDDUER03 5 X3RebUDDUER03-5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We are not here to cause trouble with you. I promise.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Nalia")~ THEN ~With what we get into? That's not a promise you should be making, Recorder.~
END 

//Chapter 4

INTERJECT SAHBEH01 34 X3RebSAHBEH01-34
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~What if you opened the chest first, good creature? By that method, you would not be violating your command.~
EXTERN SAHBEH01 35

I_C_T SAHPR1 1 X3RebSAHPR1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Sahuagin speech is so different than I imagined. The linguistics are completely unfamiliar to me.~
END

I_C_T SAHPR1 5 X3RebSAHPR5 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh no, I do not wish to be collared. I *will* not be collared.~
END

INTERJECT PPLDR01 0 X3RebPPLDR01-0
== PPLDR01 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)!Dead("X3RPHEL")~ THEN ~Oh, if it isn't Phelgrim's wife. She's wanted dead. Kill her and her friends for the reward!~
DO ~Enemy()~
EXIT 

INTERJECT PPLDR01 0 X3RebPPLDR01-0
== PPLDR01 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)Dead("X3RPHEL")~ THEN ~Wait, you're with Phelgrim's wife! You murdered him! Kill them all!~
DO ~Enemy()~
EXIT 

I_C_T PPSAEM3 1 X3RebPPSAEM3-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh no. Are we stuck going through the underdark after all?~
END

I_C_T PPSAEM2 23 X3RebPPSAEM2-23
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Some of the elves there have come into conflict with greedy locals of Amn who push too far in their grabbing of land. But else I know nothing else of them.~
END


I_C_T PPSAEM2 8 X3RebPPSAEM2-8
== X3RebJ IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("X3Reb")~ THEN ~I just hope these mad mages will listen to us. It just seems too likely that they would just harm us.~
== PPSAEM2 ~Good luck.~
END 

I_C_T PPSAEM2 19 X3RebPPSAEM2-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh dear. I will follow whatever path you take, <CHARNAME>. But I cannot deny that my preference is on the surface.~
END

I_C_T IMOEN2 22 X3RebIMOEN22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebQuest","GLOBAL",15)~ THEN ~I would be willing to leave on my own, for Imoen's sake. I could rejoin with my son and leave with him. I know I would miss recording the rest of your tale, but for Imoen's and Raban's sake, I am willing.~
END 

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Reb") Global("X3RebPartyBG1","GLOBAL",1)~ + ~You should remember Recorder. Do you recognize her, Imoen?~ EXTERN X3RebJ X3RebPPIMOEN0
END

CHAIN X3RebJ X3RebPPIMOEN0
~I do not think she understands. Look at her eyes. She seems so distant, as if peering at something else entirely.~
EXTERN PPIMOEN 1

I_C_T PPNALJ 0 X3RebPPNALJ-0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This poor ministrel. The weave is to dangerous if you are too ambitious, but to lose all of your wits, I could not imagine it.~
END 

I_C_T PPTIAX 1 X3RebPPTIAX-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN ~Oh, what happened to you, Tiax? Though I suppose this fate was inevitable for you.~
END 

I_C_T PPTIAX 6 X3RebPPTIAX-6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN ~Tiax? Oh the poor gnome must have been really ruined by Urdlen to end up like this.~
END 

I_C_T PPDILI 6 X3RebPPDILI6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~She is just a child. She shouldn't be in here, no matter her gift or curse.~
END 


INTERJECT PPDESH 0 X3RebPDESH0
== PPDESH IF ~IsValidForPartyDialogue("X3Reb")!Dead("X3RPHEL")InMyArea("X3RPHEL")~ THEN ~You are Rebecca, aren't you? Phelgrim's girl. If you are as foolish as you seem, he is in the room behind me.~
== PPDESH ~Or are you here for some other damnable reason?~
END 
++ ~We are here for Phelgrim.~ EXTERN PPDESH X3RebPDESH1
+~Global("PirateOpen","GLOBAL",1)~+ ~I am <CHARNAME>. I paid your door guard for a meeting with you.~ EXTERN PPDESH 1
+~Global("PirateOpen","GLOBAL",2)~+ ~I am <CHARNAME>. Saemon Havarian suggested I speak with you.~ EXTERN PPDESH 2
+~Global("PirateOpen","GLOBAL",3)~+ ~<CHARNAME> is my name. I was referred by Captain Golin.~ EXTERN PPDESH 4

CHAIN PPDESH X3RebPDESH1 
~Then go on ahead. But I would not do it if I were you.~
EXIT 

INTERJECT PIRMUR09 17 X3RebPIRMUR09
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~We're happy to see everyone free from that place. But...if there is one thing, <CHARNAME> is trying to find a way into spellhold.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
EXTERN PIRMUR09 0

//Recorder gets quite a few things around Brynnlaw/the Festhall
I_C_T PIRMUR10 2 X3RebPIRMUR10-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~I'm so glad you are okay, Claire. I thought we would be too late.~
== PIRMUR10 ~Rebecca? What are you doing here? Do you know what happened to my husband? Please, I need to find him.~
END 

INTERJECT PIRCOR05 2 X3RebPIRCOR05-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~Wait! Ellie, it is me, Rebecca.~
== PIRCOR05 ~Rebecca? I thought you were dead, girl, after that incident with Phelgrim. I...Sorry, FALSE ALARM. JUST THE SHADOWS!~
== PIRCOR06 ~You know this person, Ellie?~
== PIRCOR05 ~Of course I do! What are you doing here, girl? Galvena will torture you, kill you, or turn you in to Phelgrim.~
== X3RebJ ~<CHARNAME> can explain better, but we are trying to help Claire.~
EXTERN PIRCOR05 9

INTERJECT PIRCOR05 0 X3RebPIRCOR05-0
== PIRCOR05 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~Wait, is that you, Rebecca? I thought you were dead, girl, after that incident with Phelgrim.~
== PIRCOR06 ~You know this person, Ellie?~
== PIRCOR05 ~Of course I do! What are you doing here, girl? Galvena will torture you, kill you, or turn you in to Phelgrim~
== X3RebJ ~<CHARNAME> can explain better, but we are trying to help Claire.~
EXTERN PIRCOR05 9

INTERJECT PIRMUR01 2 X3RebPIRMUR01-2
== PIRMUR01 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~Well, if it isn't my performer. I know very well what happened with Phelgrim. We'll have two examples to make now.~
== X3RebJ ~You will not touch me, or Claire! <CHARNAME> will see that your slaving days come to an end.~
EXTERN PIRMUR01 4



CHAIN IF WEIGHT #-1
~See("X3Reb")
InParty("X3Reb")
GlobalGT("X3RebQuest","GLOBAL",9)~
THEN PIRPIR05 X3RebCon1
~If it isn't Phelgrim's little wife, soon former wife. He wishes to see you dead and I will deliver your head as a trophy, gnome!~
DO ~Enemy()~
EXIT


CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
GlobalGT("X3RebQuest","GLOBAL",9)
Global("TalkedToGinia","GLOBAL",0)
Global("X3Reb","LOCALS",0)~
THEN PIRCOR02 X3RebCon1
~Rebecca, what are you doing here? I thought you were gone from this place?~
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ ~I was, but...it is a long story, Ginia. Why are you crying?~
== PIRCOR02 ~I've not met my quota for the guild, Rebecca. You know how it is if you come up empty handed.~
== X3RebJ ~Oh dear. Is there someway we can help?~
== PIRCOR02 ~Chremy is threatening me, Rebecca. But maybe I should start from the beginning, for your friends.~
EXTERN PIRCOR02 5

I_C_T PIRCOR02 4 X3EmiPIRCOR02-4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~I...hate that we are doing nothing for her. She was a friend to me in the past. This makes me feel horrible.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T PIRCOR02 27 X3RebPIRCOR02 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~It is moments like this that remind me how incredible you are to people, <CHARNAME>. Thank you for doing this to her.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@419)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I wish we could get all of these people out. Honestly? This island is a really terrible place.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== PIRCOR02 ~Farewell Rebecca. Take care of yourself.~
END 

I_C_T PIRCOR05 22 X3RebPIRCOR05-22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~I'm so glad you're finally free of this place, Ellie.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~A slaving cook is definitely not where an old woman should be!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== PIRCOR05 ~Thank you, girl. Take care of yourself, and get out of here as soon as you can.~
END 



I_C_T PPSAEM 53 X3RebPPSAEM53
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, I think being on this land is more terrifying than the boat.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I told you that you could talk to me about it. You're too withdrawn for your own good sometimes, Recorder.~
END 

I_C_T PIRCOR04 51 X3RebPIRCOR04-51 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I promise we will. Everyone will finally be free from this horrible place.~
END 

I_C_T PIRCOR03 51 X3RebPIRCOR03-51 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I promise we will. Everyone will finally be free from this horrible place.~
END 

I_C_T PIRCOR04 15 X3RebPIRCOR04-15 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("pirpir05")~ THEN ~Oh dear. Chremy is still here? He is...a terrible man.~
END 

I_C_T PIRCOR03 32 X3RebPIRCOR03-32 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("pirpir05")~ THEN ~Oh dear. Chremy is still here? He is...a terrible man.~
END 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",0)~
THEN PIRCOR04 X3RebCon1
~Well, bless my eyes. Aren't you the music girl that used to work here?~
DO ~SetGlobal("X3Reb","AR1600",1)~
== X3RebJ ~No, I think you are mistaken. I'm sorry.~
== PIRCOR04 ~Oh, you are! You flinch away just like I remember. Rebecca, yes?~
== X3RebJ ~*Sigh*. Yes...I didn't mean to lie. I am just...being cautious.~
== PIRCOR04 ~I do not know why you are back here. Unless you seek to somehow appease Phelgrim, little gnome, I would flee as far as you can.~
EXIT

CHAIN IF WEIGHT #-1
~IsGabber("X3Reb")
IsValidForPartyDialogue("X3Reb")
Global("SanikPlot","GLOBAL",1)
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",1)~
THEN PIRCOR04 X3RebCon1
~Rebecca, you aren't here to ask for your job, back are you? You ought to keep your freedom.~
DO ~SetGlobal("X3Reb","AR1600",2)~
== X3RebJ ~No. We are here about Claire. Can you help us?~
== PIRCOR04 ~Oh, I don't know if I should talk about that. Especially to you dear, you ought not to be looking for trouble as a free gnome.~
== X3RebJ ~I know as well as you do how cruel the life is. Please, tell us about Claire.~
== PIRCOR04 ~Well...all right dear. I do owe you for your kindness when I was first set to work in this place.~
EXTERN PIRCOR04 9

INTERJECT PIRCOR04 6 X3RebPIRCOR04 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~My friend truly needs Claire's help. And...I do know how cruel Galvena is. Please, tell me if what I fear is true.~
== PIRCOR04 ~Oh, you were once one of us. I...well all right.~
EXTERN PIRCOR04 9

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
!Global("SanikPlot","GLOBAL",1)
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",0)~
THEN PIRCOR03 X3RebCon1
~I think I've heard of you. You were the performer that was bought by Phelgrim right before I came here.~
DO ~SetGlobal("X3Reb","AR1600",1)~
== X3RebJ ~Er, um...maybe I am?~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You are horrible at bluffing, gnome.~
== PIRCOR03 ~Phelgrim has his men looking for you. Best you find somewhere on this island to hide. In fact, I don't think I should be seen with you, as he is still good friends with Galvena. I could be punished if we're caught like this.~
EXIT

CHAIN IF WEIGHT #-1
~IsGabber("X3Reb")
IsValidForPartyDialogue("X3Reb")
Global("SanikPlot","GLOBAL",1)
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",1)~
THEN PIRCOR03 X3RebCon1
~Rebecca, what are you doing here? Don't let Galvena see you, she'll drag you right back to work here.~
DO ~SetGlobal("X3Reb","AR1600",2)~
== X3RebJ ~No. We are here about Claire. Can you help us?~
== PIRCOR03 ~And lose my tongue? You ought not to be looking for trouble as a free lady, you'll just be put right back to work here.~
== X3RebJ ~I know as well as you do how cruel the life is. Please, tell us about Claire.~
== PIRCOR03 ~Well, all right, good lady. I'll talk.~
EXTERN PIRCOR03 11

INTERJECT PIRCOR03 6 X3RebPIRCOR03 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN ~My friend truly needs Claire's help. And...I do know how cruel Galvena is. Please, tell me if what I fear is true.~
== PIRCOR03 ~Well, all right, good lady. I'll talk.~
EXTERN PIRCOR03 11

//Emily can't be in this version, as this is the Bodhi Join side.
I_C_T PPSAEM 14 X3RebPPSAEM14
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, I think being on this land is more terrifying than the boat.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, it's just a few pirates. Nothing that can get in our way of our destination.~
END 


//Chapter 3 

I_C_T BODHI2 13 X3RebBODHI2-13
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~What does she mean by awakened? I don't like this...~
END

I_C_T BODHI2 14 X3KalBODHI2-14
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Damn I don't like this lady. What is she playing at?~
END

I_C_T ARNMAN04 6 X3RebARNMAN06
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~That just seems cruel. You would only discourage them from giving others kindness.~
== ARNMAN04 ~So? Not my problem. You could probably pull it off yourself. Your nose is a little big, but I think you're teachable.~
== X3RebJ  ~I'm sorry, but I have no interest in that. Please, just leave me alone.~
END 

I_C_T BODHI 104 X3RebBODHI104
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Spellhold? But that is on...no, not there.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Excuse me gnome, but we are trying to listen to the woman here.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Sorry, nevermind me.~
END 

I_C_T ARAN 39 X3RebARAN39 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Spellhold? But that is on...no, not there.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Hey, are you okay, Recorder?~
== X3RebJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Sorry, nevermind me.~
END 

I_C_T ARAN 0 X3RebARAN0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh. The Shadowmaster is so different from what I expected. Even a little handsome.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft. You have better even in your own party.~
END 

I_C_T ARNBOY01 3 X3RebARNBOY01-3
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~You poor child. This is not a life for you.~
END 

I_C_T BOOTER 3 X3RebBOOTER-3 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh this room makes me feel so ill. Can we...move on, please?~
END 

//Watcher's Keep 

I_C_T GORAPP1 14 X3RebGORAPP1-14
== X3RebJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I'm going to leave my journal near the exit, just in case. But I will stand with you.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORAPP1 16 X3RebGORAPP1-16
== X3RebJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I'm going to leave my journal near the exit, just in case. But I will stand with you.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORDEMO 24 X3RebGORDEMO 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Oh dear. I have a horrible feeling about this...~
END 

I_C_T GORAPR 3 X3RebGORAPR 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Surely there is something? Some spell or another, to at least buy you time for proper healing?~
== GORAPR ~There is nothing. Ask your questions quickly, my time is short.~
END  

I_C_T GORSUC01 7 X3RebGORSUC01 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebRomanceActive","GLOBAL",2)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~I wish you wouldn't do that. But if you think it will help...~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
END 


I_C_T GORMAD1 39 X3RebGormad1-39 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I hope his family is still alive...or that it hasn't been too long. The poor man.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 40 X3RebGormad1-40 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I hope his family is still alive...or that it hasn't been too long. The poor man.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 41 X3RebGormad1-41 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~<CHARNAME>, please no!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~
== GORMAD1 ~I will get back to my family!~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Reb",LastTalkedToBy)~ EXTERN X3RebJ Yackman
END

CHAIN X3RebJ Yackman  
~Please, we mean no harm. We aren't even demons. We just are curious about a few things.~
EXTERN GORMAD1 11

I_C_T GORPOL1 1 X3RebGORPOL1-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Unable? It must be truly grevious then, if you call for aid for a duty you cannot fulfill.~
END 

I_C_T GORODR1 19 X3RebGORODR1-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~The imprisoned one...I can't recall any mention of this in the records we had in our temple. I'm afraid I can't offer any insight of my own.~
END 


//Underdark 

I_C_T UDSVIR03 27 X3RebUDSVIR03-27 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, please, don't do this!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T UDSVIR03 7 X3RebUDSVIR03-7 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I would be happy to help my underdark kin. I am sure we can be of assistance.~
END 

//Planar Sphere 

I_C_T LAVOK 59 X3RebLAVOK59
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I feel somewhat guilty that we deprived him of what he wanted. He...could do nothing. He changed, even.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~After all he supposedly did, Recorder? I think he did not deserve much of anything.~
END 

I_C_T OBSSOL03 4 X3KalOBSSOL03-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Fish men? Perhaps he speaks of the Kuo-toa? What could they be doing in such a place?~
END 

//Trademeet 

I_C_T TRSKIN02 16 X3RebTRSKIN02 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We have to stop that man this time. I don't think I can stand another murder in the detail he does them.~
END  

//Recorder will become an enemy if Emily is in the party, else a large amount of approval is lost instead.
I_C_T CEFALD04 3 X3RebCEFALD04
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~Oh <CHARNAME>, this is such evil that you have done. I can't believe it.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@409)~
END

I_C_T DRUSH 9 X3RebDRUSH9
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ THEN ~I...feel bad for the instrument. Oh, the poor thing will probably never sound the same.~
== DRUSH ~Again, sorry for the smell.~
END 

I_C_T BJAHEIR 19 X3RebBJAHEIR-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Do we have to fight like this? I disagree with <CHARNAME>'s decision, but...~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Jaheira, I loath his decision, but it is not worth his life!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
== BJAHEIR ~Stay out of this! This is between myself and <CHARNAME>!~
END 

I_C_T TRCUT07 4 X3RebTRCUT07-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I feel a bit embarrased with all of this recognition. This was really all thanks to <CHARNAME>...~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T TRGENI01 7 X3RebTRGENI017
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I did not know the Djinn were so...selfish. But I suppose many creatures think of themselves first with little empathy.~
END 

I_C_T TRPLE01 2 X3RebTRPLE01-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I'll make a note of what he says, maybe it will make a fine song.~
END 

I_C_T TRTAVP05 4 X3RebTRTAVP05-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~If there was more time, I would offer to help. I have so many note I could share with you.~
END 

I_C_T NEEBER 12 X3RebNEEBER12 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~They are just normal streets like this and um...<CHARNAME>, how much longer is he going to talk like this?~
END 

I_C_T TRGRD03 22 X3RebTRGRD03-22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~<CHARNAME>, this feels so unecessary.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== TRGRD03 ~To arms, militia!~
END 

INTERJECT UHMER02 3 X3RebUHMER02-3 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Surely there is no need to be so rude, kin? We are j-~
EXTERN UHMER02 4

I_C_T TRHMER01 23 X3RebTRHMER01-23 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Djinn holding the town hostage over a Rakshasa? I hope we can do something about that.~
END 

I_C_T TRHMER01 38 X3RebTRHMER01-38
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so glad we could help them. People can rest easy here now.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

//Umar Hills 

I_C_T MAZZY 6 X3RebMAZZY6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We...can we really just leave her here? It seems cruel...and she seems so trustable.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T RNGWLF01 11 X3RebRNGWLF01-11 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A corrupted temple of Amanuator? How troubling. The god's faithful has truly waned.~
END  

I_C_T VALYGAR 12 X3RebVALYGAR12 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This makes sense now. Blood itself can be the key to many things. The cowled wizards are truly corrupt.~
END 

I_C_T VALYGAR 8 X3RebVALYGAR8 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This makes sense now. Blood itself can be the key to many things. The cowled wizards are truly corrupt.~
END 

I_C_T GEMFAR02 10 X3RebGEMFAR02-10
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~That...was all they had left from her, and you demanded it for free? *Sigh*. Sometimes...I wish you were more considerate.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T GEMFAR02 10 X3RebGEMFAR02-10
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~That was mutually beneficial for everyone. Except for the poor chicken.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
== GEMFAR02 ~Thank you once again, kindly folk.~
END 

I_C_T UHKID01 18 X3RebUHKID01-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I don't know if that was very responsible.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah, nonsense. Let them have their fun. Good for a child to fight and drink, I say.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ 
END 

I_C_T UHMAY01 101 X3RebUHMAY01-101
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I hope we are not too late to save this boy. Please, let us hurry.~
END 

I_C_T UHMAY01 18 X3RebUHMAY01-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Myths have a way of always mixing in with the truth. I believe we will have to look beyond these first guesses to find the true source.~
END 

//Windspear Hills 



I_C_T SAMIA 14 X3RebSAMIA14
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I do not mind helping a fellow academic, her work could be very enlightening. But we should not forget why we are here, too.~
END 

I_C_T FIRKRA02 32 X3RebFIRKRA02-32 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~To know that I will have to write about this...oh <CHARNAME>, do you even know what you do?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~ 
END  

I_C_T GARREN 44 X3RebGarren44 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We...we should have tried harder. To see another child lost, it just breaks my heart all over again.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~We killed a bloody dragon! It was costly, but worth it. The child will be remembered when we retell the tale in all the glory!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~ 
== GARREN ~Thank you for your sympathies gnome but...excuse me.~
END 

I_C_T GARREN 43 X3RebGarren43 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We...we should have tried harder. To see another child lost, it just breaks my heart all over again.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== GARREN ~Your sympathies mean nothing! Out!~
END 

I_C_T GARREN 49 X3RebGarren49A 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Dead("firkra02")~ THEN ~This will make a great big place in the records. I am so proud of us!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

I_C_T GARREN 49 X3RebGarren49B 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("firkra02")~ THEN ~I am glad we could reunite him with his child. I just hope they will stay that way.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 


I_C_T GARREN 51 X3RebGarren51 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Dead("firkra02")~ THEN ~This will make a great big place in the records. I am so proud of us!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

I_C_T GARREN 51 X3RebGarren51B 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("firkra02")~ THEN ~I am glad we could reunite him with his child. I just hope they will stay that way.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 



I_C_T GARREN 35 X3RebGARREN35 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Let us hurry. The longer the child is not back with their father, the more I worry it will be too late.~
END 

I_C_T GARREN 36 X3RebGARREN36 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Let us hurry. The longer the child is not back with their father, the more I worry it will be too late.~
END 

I_C_T GARREN 37 X3RebGARREN37 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Let us hurry. The longer the child is not back with their father, the more I worry it will be too late.~
END 
//De'Arnise
I_C_T DELCIA 9 X3RebDELCIA 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~This is wrong. We can't just kill her like this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. She deserves it anyway.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@506)~ 
== DELCIA ~Are you done bickering? I tire of listening. Kill me already.~
END 

I_C_T DALESON 15 X3RebDaleson15
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Why are we treating these poor people like this? I hope this was just a severe mistake in judgement, <CHARNAME>.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@406)~ 
== DALESON ~You will pay for this, I swear.~
END
//Althkata
I_C_T MESSEN 5 X3RebMESSEN5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~It is odd to hear of a town beset by creatures like this, even by druids. It is just not normal.~
END

I_C_T PACE 4 X3RebPACE4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Can you give an example or two? I would love to know more for my records.~
END 

I_C_T RYLOCK 38 X3RebRYLOCK38 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh this will be very intriguing. I have my book ready to quill everything down as we see it. So few get the opportunity...~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I definitely don't think you should do that, Recorder. By how reluctant they were in the first place, we are not quite trusted here. A pity really, we're quite behaved people!~
END 

I_C_T LYROS 19 X3RebLYROS19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN ~I still remember how awful that halfling was to me sometimes. I don't know why we are helping him, but I admit I am curious.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~ 
END

I_C_T LYROS 19 X3RebLYROS19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ THEN ~I don't approve of us helping this man, but I admit I am curious.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~ 
END

I_C_T LYROS 24 X3RebLYROS24
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~The Harpers, as mysterious and...sometimes distrusted they are, do good things. I don't think we should help this man.~
END

I_C_T EDWIN 8 X3RebEDWIN
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I think angering the Cowled Wizards is a terrible idea. What have we gotten ourselves into?~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Only if you use magic. Good old blade warriors like us? Less to worry about. Let's take care of this fellow, should be simple enough, eh?~
END 

I_C_T EDWIN 1 X3VieEDWIN1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Ugh. I thought I was done with this human for good.~
== EDWIN ~I see you still have that miserable elf around, <CHARNAME>. Have your ears burst from her shrilling complaining? I assume as much.~
END

I_C_T SCYARRYL 31 X3RebSCYARRYL31
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Heehee, I guess it all worked out. Beauty truly is in the eye of the perciever.~
END

I_C_T SCSAIN 30 X3RebSCSAIN30 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Heehee, I guess it all worked out. Beauty truly is in the eye of the perciever.~
END

I_C_T ELGEA 6 X3RebElga6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I do not like this. We should free her. We can get money in better ways.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T ELGEA 7 X3RebElga7
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We should free her. We shouldn't even be thinking about engage in ransoming like this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T MARIA 5 X3RebMARIA-5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~The law is harsh here on such things...oh this is such a private matter, I don't feel comfortable listening. I'll not put this in the records.~
END 

I_C_T MARIA 11 X3RebMARIA-11
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I know he would have been helpful for your cause. But allowing their family to regain the strength is a far greater thing.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T DORNJ 4 X3RebDORNJ
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Why did we have to help him with this? This feels so wrong.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T DORNJ 357 X3RebDORNJ
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~But h- *sigh*. Nevermind me.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~ 
END

I_C_T DORNJ 369 X3RebDORNJ
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~More senseless murder. It is harder and harder to record this...~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-24)
DisplayStringNoNameDlg(Player1,@409)~ 
END  

I_C_T YUSUF 2 X3RebYUSUF2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Anomen! She...she was innocent!~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN ~Please. This sets the scales equal. Such is what revenge demands.~
END 

I_C_T OHHFAK 31 X3EmiOHHFAK-31
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Her mind is so addled. I cannot make any sense out of anything she has said so far on our journey.~
END 

I_C_T HEXXAT 0 X3RebHEXXAT-0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh dear, oh dear. I don't like this at all.~
END

I_C_T JANP 19 X3RebJANP-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh I worry for her too, Jan.~
END 

I_C_T JANGIT01 1 X3RebJANGIT01
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Githyanki? What do you want with the Hidden? Maybe we could talk this out still?~
== JANGIT01 ~No words! Fight!~
END  

I_C_T HIDDEN 13 X3RebHidden13
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("SawIllithid","LOCALS",1)~ THEN ~A mindflayer? What are its plans? I suppose we will never know.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That...was definitely not an expected sight. This can't be anything good.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What the hell did I just see?~
== HIDDEN ~Remember, say a word, and I will kill you.~
END 

I_C_T LISSA 4 X3RebLISSA4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Such a monster. I would never let anyone do that to my child.~
END 

I_C_T JANJ 13 X3RebJANJ13 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~That name makes me shiver. Vaelag gives a very bad name to gnome-kind.~
END 

I_C_T WELLYN 10 X3RebWELLYN10
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Kal")~ THEN ~Finally. He can know peace. I will make a record about this. This poor child won't be forgotten.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~ 
== WELLYN ~Thank you, thank you!~
END 

I_C_T WELLYN 8 X3RebWELLYN8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Why would anyone do this to a child? That thief should be sent to the garrison.~
END 

I_C_T WELLYN 5 X3RebWELLYN5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, this child isn't able to pass on. Please...please show a bit of sympathy.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T BODHI 72 X3RebBODHI72 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh no. No no no no.~
END 

I_C_T WELLYN 16 X3RebWELLYN16
 == X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Kal")~ ~Oh dear, he's transforming. <CHARNAME>, why?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== WELLYN ~Give me little man!~
END  

I_C_T BODHI 45 X3RebBODHI45 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I much prefer the brighter path, <CHARNAME>. I do not think I could bear to walk a darker path.~
END 

I_C_T BODHI 56 X3RebBODHI56
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~That isn't so bad at all. I hope we can get to him in time.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)~ 
END 

I_C_T BODHI 50 X3RebBODHI50
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This feels awful. I don't know if I can stomach doing such a thing.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~He ain't all innocent, Recorder. Be like taking down any monster. Long as he somewhat deserves what is coming...I be fine with this path.~
END 

I_C_T BODHI 18 X3RebBodhi18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh dear. I can't shake off the feeling that we are going to regret this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T BODHI 6 X3RebBODHi6 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Please, think this through. Doing this...I think it would be the wrong choice.~
END



I_C_T BODHI 1 X3RebBODHI1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I can't put it together...but the night, and her here...I just wish I could give a name to why this is all so very worrying.~
END

I_C_T BODHI 31 X3RebBODHI31 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is confusing. But I am also glad we aren't doing this.~
END

I_C_T TIRDIR 2 X3RebTIRDIR2 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Troubling. I am glad we were able to prevent your death.~
END 

I_C_T KAMIR 8 X3RebKamir8 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebTalk","LOCALS",10)~ THEN ~I know what it is like to...lose a child. I'm so sorry. I wish the world was not so cruel.~
END 

I_C_T ARENTHIS 4 X3RebARENTHIS 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I wish you weren't so rude in front of children like that. They are very impressionable. It's important we are kind.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
== X3HelJ IF ~IsValidForpartyDialogue("X3Hel")~ THEN ~Nay, best they are toughened. The brat won't survive a minute without knowing how hard the world is.~
END 

I_C_T KAMIR 23 X3RebKAMIR 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so glad we could do this for the paladin and the girl. They will be good for eachother.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

I_C_T SCSARLES 32 X3RebSCSARLES32
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Maybe we should have worked harder to try to get him the real thing. We've truly insulted him.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, it doesn't matter. He was asking for an arm and a leg, practically.~
END 

I_C_T MOURNER5 4 X3RebMOURNER5 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Losing a child is...so hard. I'm glad that we at least got to help the poor boy find rest.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T VICONIJ 79 X3RebViconiJ79
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Whatever your reason, Viconia, I will definitely make sure to record this little kindness of yours.~
END 

I_C_T TANNER 19 X3HelTanner19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~No. We won't let you get away!~
== TANNER ~My work shall not be lost!~
END 

I_C_T HABREGA 26 X3RebHabrega26
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I'm so glad we stopped him. I just wish he wasn't... maddened by Urdlen, as we say in our culture.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",8)
DisplayStringNoNameDlg(Player1,@419)~ 
END

I_C_T RAELIS 79 X3RebRaelis79 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, please. Please do not stand by in their time of need. Please do not be greedy.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T RAELIS 76 X3RebRaelis76 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, please. Please do not stand by in their time of need. Please do not be greedy.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T RAELIS 33 X3RebRaelis33 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I was worried the arts had fallen in the quality and passion being put forth. It's a relief to know it's a cause of something else.~
END 

I_C_T RAELIS 53 X3RebRaelis53 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Thank you for trying to help them. Anything that we can do to assist the arts here is a very good thing for the city.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T BDBART01 10 X3RebBDBART0110 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This could be a wonderful opportunity. Maybe you could even get the playhouse's reputation turned around.~
END 

I_C_T LOUT 22 X3RebLOUT22 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN ~I can't look...oh, I wish we weren't letting him just die.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN BPROST2 X3Reb
~What a pretty little gnome you are. You could make quite the business with the little folk, if you know what I mean.~
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ ~Um, thank you...but I am happy as I am.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN BERTRAND X3Reb
~Such a beauty. Sure you desire a bit of companionship this lonely <DAYNIGHT>?~
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ ~Um, no thank you. I should be going.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN CIVIL01 X3Reb
~You are from the Oghma temple in the docks, yes? Siria, was it?~
DO ~SetGlobal("X3Rebl","LOCALS",1)~
== X3RebJ ~No, I am sorry, that is my mother.~
== CIVIL01 ~Well, tell her I am waiting for her, have a form for her to finish regarding the building.~
== X3RebJ ~I'll remind her when I get the chance. Thank you.~
EXIT 

I_C_T NEB 5 X3RebNEB5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is...the foul kin who murders children. We can't let him get away.~
== NEB ~Kill them, heehee, die!~
END 

I_C_T INSPECT 13 X3RebINSPECT13
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh dear. Who would...I don't even want to picture it.~
END 

I_C_T TOLGER 84 X3RebTolger84 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This...this was practically murder. What have you done, <CHARNAME>?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-10)
DisplayStringNoNameDlg(Player1,@409)~
END 

I_C_T TOLGER 18 X3RebTOLGER18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I do not like this. He says to us to not murder, and yet to kill him would be just that. Who would not resist this?~
END 

I_C_T BYLANNA 20 X3RebBYLANNA20
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Their rehabiliation work, as I have understood from others and reports could take years. There have been very few who have ever left their confines and are known even to the Oghma faithful.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~This nay be someone needing rehabilitation, bard. Guiltless. Am nay suprised the government will do naught.~
END 

I_C_T TRAX 13 X3RebTrax13 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We shouldn't get ourselves killed...but maybe there is a way to talk this through and not get my fellow gnome arrested as well.~
END 

I_C_T TRAX 10 X3RebTrax10 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Despite his dangerous enemy threat, I think we will be okay.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)~
END 

I_C_T VICONI 4 X3RebViconi4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I...um, don't know if this is wise. People are going to think less of us now.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@403)~
== VICONI ~Let the rivvil think as they will, gnome. There is no need to shiver in fear.~
END 

I_C_T DELON 5 X3RebDELON5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, there is no reason to be so cruel to the child.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, children's tears are just manipulative. I'm suprised you don't know that, being child-size.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I'll not speak up, then...and let <CHARNAME> emulate your example then, Vienxay.~
END  


I_C_T DELON 15 X3RebDELON15 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Thank you for agreeing to help him. I've never been out to the Umar Hills, I wonder if there is any rich history of the place to be learned?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~History? You put your interest in some dull things there, Recorder.~
END 

I_C_T DELON 16 X3VieDELON16 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Thank you for agreeing to help him. I've never been out to the Umar Hills, I wonder if there is any rich history of the place to be learned?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~History? You put your interest in some dull things there, Recorder.~
END 

I_C_T RIFTM01 9 X3RebRIFTM019
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I have never heard of anything described like this before. These poor creatures...they must be decades, maybe even centuries old, and yet they are not undead.~
END 

I_C_T JANJ 132 X3RebJANJ132 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Jan Jansen! Oh dear, why do you say such ridiculous things?~
END 

I_C_T JANJ 133 X3RebJANJ133 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I suppose Garl might find your antics funny enough that Oghma shall not pass any angry judgement, but...*sigh*. Just be careful with what you say, Jan.~
END

I_C_T RIFTG03 7 X3RebRIFTG03 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Unbelievable. An avatar of some god...weakened by its lack of faith. I can't believe I am seeing this, I need to write this down. It explains so much.~
END  

I_C_T RIFTC02 4 X3RebRIFTC024
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A wound in faith...Healing. Hope. These poor people, or creatures, or whatever name could be labeled upon them...they truly do not have any such thing in their being.~
END 

I_C_T HLSHADE 0 X3RebHLSHADE0 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Kangaxx...Kangaxx...it rings like a name that should be in our records, but I can't remember. What are you talking of, creature?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Recorder? Not a creature to have conversation with! Prepare to defend yourself!~
END 

I_C_T GAAL 4 X3RebGAAL4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Beholders are incredibly powerful, <CHARNAME>. Some of them have such power that their eyes can even turn creatures into stone. But a blind one? That is entirely unheard of. It's almost fascinating to think how that is even possible.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft, fascinating? I don't think we're thinking of the same word here, Recorder.~
END 

I_C_T EDWINJ 11 X3RebEDWINJ-11
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Are you sure, Edwin? Netherese magic is very serious. I don't think you should do this.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let him cast it. I want to see him miserably fail.~
END 

I_C_T CERNDJ 56 X3RebCERNDJ-56
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so happy for you, Cernd. But shouldn't you...raise him yourself?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== CERNDJ ~My calls and responsiblities ask too much of me, Recorder. If you desire my company again, visit me once I have things settled at the grove with my child.~
END 

CHAIN IF WEIGHT #-1 
~!NumberOfTimesTalkedTo(0)See("X3Reb")  // X3Reb
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Reb")  // X3Reb
RandomNum(2,1)
Global("Prophet4X3Reb","LOCALS",0)~ THEN PROPHET4 Recorder 
~Become unseeing! Become one with the true god!~
DO ~SetGlobal("Prophet4X3Reb","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3RebJ ~How troubling. His eyes are just...gone.~
EXIT 

I_C_T Garrick 0 GarrickX3Reb0 
== GARRICK IF ~See("X3Reb") IsValidForPartyDialogue("X3Reb")~ THEN ~I wish...I wish I could truly get her to understand the depths of my love.~
== X3RebJ ~Um, I do not know if you want advice, mister, but...perhaps a song? Pour your feelings into poetry and let it come out from your own heart in music.~
== Garrick ~Yes...yes I should write that down. What an idea...~
END

I_C_T TCYRANDO 0 TCYRANDOX3Reb0 
== X3RebJ IF ~See("X3Reb") IsValidForPartyDialogue("X3Reb")~ THEN ~You are not ugly, kin. Beauty comes from confidence and your own heart. Believe in yourself, and a little bit in Garl, for his humor has its way, and I think he would love to see such a coupling occur.~
== TCYRANDO ~You are kind, milady. Thank you!~
END

I_C_T SCTELWYN 30 X3RebSCTELWYN30 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Heehee, I guess it all worked out. Beauty truly is in the eye of the perciever.~
END

I_C_T MAEVAR 15 X3EmiMAEVAR15 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We should be very careful, <CHARNAME>. I'd prefer we didn't do this at all but...I guess it could be worse.~
END

I_C_T MAEGUY01 5 X3EmiMAEGUY01-5 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am glad he is free. Maybe he'll um, not take up the life of a thief anymore...~
DO ~IncrementGlobal("X3RebApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@413)~
== MAEGUY01 ~Free! Free at last.~
END

I_C_T DLOST 3 X3EmiDLOST3-3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Her smile is so bright. I just hope she can find her mother.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@413)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah, she ought to leave her if she's that useless. I'd never leave my kids roofless.~
== DLOST ~Thank you kind one!~
END

I_C_T HLSKULL 10 X3RebHLSKULL10 
== X3RebJ IF ~ISValidForPartyDialogue("X3Reb")~ THEN ~I am not averse to assisting, but the dead keep many secrets. He may not be telling us everything.~
END 

I_C_T DCLERIC 4 X3EmiDCLERIC4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I know you said that to avoid confrontation...but the darker gods are watching, and its not the attention I'd like.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@103)~
== DCLERIC ~Perhaps I'll find some others...~
END

I_C_T BMTHIEF 3 X3VieBMTHIEF 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~The less we support thieves, the better off the docks will be.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@413)~
END 

I_C_T RENAL 47 X3VieRenal26 
== X3RebJ IF ~!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Reb")~ THEN 
~Oh dear.  Forgive me if I will have no part in this guild's running, even if am mildly curious how its operations work. We have very few texts about thieves in the temple, they're always the ones that get stolen.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~
END 

I_C_T RENAL 26 X3VieRenal26 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I don't like this, <CHARNAME>. Helping criminals like this makes me really uncomfortable.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@403)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Hrm, well, it's not ideal...but as long as we don't end up murdering people. That would be bad.~
END 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN OGHMONK1 X3Reb
~I see you are traveling with company, miss Recorder.~
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ ~I am, yes. I am recording more of <CHARNAME>'s journeys, as I did before.~
== OGHMONK1 ~Be careful, for in your very own records, you have illuminated the dangers of such a person.~
== X3RebJ ~I know. But with the knowledge I can bring, I know I can be of help.~
== OGHMONK1 ~Perhaps, perhaps not. Fate will tell if you have learned well from the lessons we have taught you.~
EXIT 

I_C_T HERVO 12 X3RebHERVO12 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~The Cowled Wizards are proud, and will most likely keep chasing this man. They are cold and unmerciful, even to the innocent.~
END 

I_C_T DOGHMA 0 X3RebDOGHMA0 
== DOGHMA IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Ah, Recorder. I trust the knowledge that you have gained on your journeys has been worth the experience?~
== X3RebJ ~Yes. I cannot wait to contribute everything that I have learned to the church when I can.~
END  

I_C_T GIRL2 5 X3RebGIRL25 
== X3RebJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN ~What a wonderful thing you have do, <CHARNAME>. They have a hopeful chance now.~
DO ~IncrementGlobal("X3Rebpp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Eh, if they wound up behind bars once...always a risk it could happen again.~
== GIRL2 ~Thank you, thank you!~
END 

I_C_T AEEXTORT 3 X3RebAEEXTORT
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Then go away. Althkata has enough bullies.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)~
END

I_C_T SEWERM1 21 X3RebSewerM1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~An enchanter...or some creature well capable of such? I have so many more questions, but he has been here far too long.~
END 

I_C_T SEWSW 4 X3RebSEWSW4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~How interesting. A magical puzzle. I wonder how they set this up...and why?~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Who cares? Let us either solve it quickly or get out of this slime. This place is not for me.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Vie")~ THEN ~Heh, I thought the sewers were perfect for one of yer station, elf.~
END 

I_C_T GIRL2 4 X3RebGIRL24 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad we helped her, but without any coins given to her, I'm really worried. They'll just enter the streets now, poor, and starving..~
DO ~IncrementGlobal("X3Rebpp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@413)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Come on, be easy on <CHARNAME>, eh? Fact is, the girl is free. Rest is up to her, whether she was given money or not.~
== GIRL2 ~Thank you! Bye!~
END 

I_C_T HAEGAN 1 X3RebHAEGAN
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~What a horrible view! We won't let any of you escape, you cruel slavers.~
== HAEGAN ~Die, fools!~
END 

I_C_T ANNO1 2 X3RebAnno1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This reminds me of...no, I can't watch this! I can't.~
END 

I_C_T ANOMENJ 164 X3RebAnomenJ164 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I feel as if we can trust him, Anomen. At the very least, he does not deserve this cage.~
END

I_C_T HENDAK 19 X3RebHendak19 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is a chance to really weaken the slave trade, <CHARNAME>. We should take this opportunity if we can~
END 

I_C_T HENDAK 30 X3EmiHendak30 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so happy with what we did. Altkata will be a better place.~
DO ~IncrementGlobal("X3Rebpp","GLOBAL",10)
DisplayStringNoNameDlg(Player1,@419)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft, the detail that matters is this gets more fame and glory for us, woohoo!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END 

I_C_T HENDAK 7 X3RebHendak7 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We...we are doing nothing? Please, I hope you reconsider.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~They must help themselves. He got himself into this cage, he can get himself out.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Weren't you saved from a cage, Vienxay? I think you could use some compassion.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END  

I_C_T HENDAK 4 X3RebHENDAK4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I hope we can do this. No one deserves a life in the cage.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Can is a definite. Will? Well, that's up to our leader, and I hope <PRO_HESHE> does!~
END 

I_C_T COPGREET 1 X3RebCOPGREET 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is...so wrong. There must be something we can do to end this.~
END 

I_C_T RUFPAL2 5 X3RebRUFPAL2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I don't think I like this. We should take the high ground.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'd normally agree, Recorder, but he was really begging for a fight. I'd even lose my patience.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~
END  

I_C_T KORGANJ 49 X3RebKorganJ49 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Do you have to say something so...crude and awful?~
== KORGANJ ~I can be showing you my sweet side, in one of the back rooms, lass.~
== X3RebJ ~No. I do not want that at all, ever.~
END

I_C_T LEHTIN 26 X3RebLEHTIN26 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I can't believe I was...party to such a terrible thing. I didn't speak up loud enough before but...this was a poor decision we made.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~
END 

INTERJECT NALIA 109 X3EmiNalia109 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~If it helps to persuade her, I won't use any of the coins. I hate to um, pipe up like this, but this sounds serious. Can you tell us more about your issue, miss?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@403)~
EXTERN NALIA 50

I_C_T SCDUR 27 X3RebSCDUR
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~No...No, no, no. Gods forgive us. We should have stopped him.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T SCDUR 21 X3RebSCDUR
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A rock gnome? One of my own people? Oh dear.~
END 

I_C_T HIST1 2 X3RebHIST1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~A planar traveling device? I've heard of attempts to recreate this in Lantan, but actual planar travel? This is very intriguing.~
END 

I_C_T GAELAN 66 X3VieGaelan74 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Um, I don't like this <CHARNAME>. We should step with an abundance of caution.~
END 

I_C_T KALAH2 6 X3RebKALAH2 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I feel sorry for him, despite the horrible thing he did. I can understand his pain, it is not easy to be a gnome here.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, who cares? Ask him for the secrets to his power.~
END 

I_C_T BOY1 1 X3RebBoy1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, truly? This child needs help. Please, will you reconsider? It can't hurt to check and see what we can do.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T BOY1 4 X3RebBoy4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I'm so happy for the boy. Something good came out of this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== BOY1 ~I can't wait to tell papa everything!~
END 

I_C_T AERIE 49 X3RebAerie1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I trust in your leadership, <CHARNAME>, but I do not see the point of this. I hope you change your mind and give the key to her.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T GERETH 0 X3RebGERETH0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Salamander Dust is a reagent with some regenerative properties. Even if salamanders aren't uncommon, it's quite difficult to gather.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It's nice to have our own resource of knowledge with Recorder. A walking teacher, ha!~
== GERETH ~Have you seen any or not?~
END 

/*Story/Essential Interjections*/ 
//Celvan 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN CELVAN X3Reb
~"There once was a gnome so smart,
With an invisible mask but an open heart.
The lies unknown will become told,
And the secrets will turn her world cold
and threaten to keep what was lost apart."~
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ ~Why...why are you saying that? What do you know?~
EXTERN CELVAN 1

//Gypsy

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Reb",LastTalkedToBy)~ EXTERN TRGYP02 X3Rebg1
END

CHAIN TRGYP02 X3Rebg1
~Sweet child, your kind heart and devotion to your work give you hope...but I see a child, and a confrontation with a man. The result of this will change your future forever. Be sure you are with friends.~
== X3RebJ ~This...sounds really terrifying. I'll k-keep it in mind, though.~
EXIT

// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Reb",LastTalkedToBy)~ THEN SALVANAS X3RebSalvanas
~A fairer gnome than any I have been blessed the sight of.~
== X3RebJ ~Um...thank you?~
== SALVANAS ~No, it is I who should be thankful. My heart beats for you, true beauty.~
== X3RebJ ~Are you an aspiring bard? I've never been the recipient of something like this. I'm not sure what to say.~
== SALVANAS ~Speak not, but sing. Your voice is like the angels, and your music like harmony engulfing me like buffets of wind from a strong wing.~
== X3RebJ ~Are you asking for a perfomance?~
== SALVANAS ~I would be blessed, no delighted, no enchanted to a- ow!~
== X3RebJ ~Gustav! Why did you bite him?! I'm so sorry...I'm just going to leave you alone now.~
== SALVANAS ~Alas! Blocked by a ferret. The pains of passion.~
EXIT

// Madam Nin

EXTEND_BOTTOM MADAM 0
IF ~Name("X3Reb",LastTalkedToBy)~ EXTERN X3RebJ X3RebMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Reb",LastTalkedToBy)~ EXTERN X3RebJ X3RebMadam
END


CHAIN X3RebJ X3RebMadam 
~Um...no thank you.~
EXIT 

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("X3Reb")
See("X3Reb")
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("X3RebRomanceActive","GLOBAL",1)
Global("X3RebRomanceActive","GLOBAL",2)~ THEN MADAM X3RebMadam
~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~
== X3RebJ ~Um, I don't think <PRO_HESHE> is interested in any thing so base and...immoral. Sorry!~
EXTERN MADAM 17

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3RebYOSHJ113
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Yoshimo...how could you?~
END

// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb") Range("X3Reb",15)~ THEN
~Are you all right, <CHARNAME>? You seem almost ill.~
END
++ ~There's nothing wrong with me.~ EXTERN X3RebJ spellhold.1
++ ~I'm fine. Just... a bit dizzy.~ EXTERN X3RebJ spellhold.1
++ ~Something's not right. I think Irenicus did something to me.~ EXTERN X3RebJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3RebJ spellhold.1
~What did that wizard do? I do hope you are okay.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~They'll be just fine, Recorder! We are all here for <PRO_HIMHER>.~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If ye need healing, I'm here. And if ye need to give that bastard a beating, all the better.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, hate to be the pessimistic one, but...this is shaping out to be quite the misadventure. We need to right our fortunes.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let us either achieve our revenge, or get out of this place, quickly.~
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3RebFirstSlayerChange1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")See("X3Reb")~ THEN ~I have only heard stories of such creatures, appearing decades ago. To see something so terrible with my own eyes...how troubling.~
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3RebSecondSlayerChange0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb") OR(2) Global("X3RebRomanceActive","GLOBAL",1) Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~<CHARNAME>, what's wrong? You look so pale...please, let me get a cloth for you.~
END
++ ~Get away from me, I'm turning!~ EXTERN X3RebJ X3RebSecondSlayerChange1
++ ~It's coming again, Recorder! Run while you can!~ EXTERN X3RebJ X3RebSecondSlayerChange1
++ ~I feel... strange...~ EXTERN X3RebJ X3RebSecondSlayerChange1

CHAIN X3RebJ X3RebSecondSlayerChange1
~What are you saying, <CHARNAME>? I- no, not again!~
DO ~SetGlobal("X3RebSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3RebSlayerSurvived1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb") OR(2) Global("X3RebRomanceActive","GLOBAL",1) Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSecondSlayerChange","GLOBAL",1)~ THEN ~This was...more terrifying than even before.~
= ~If we do not find a way to restore you...I fear that this will not only end us, but you as well.~
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Reb") Global("X3RebSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END


// Phaere

CHAIN IF ~Global("X3RebCheckMad1","GLOBAL",1)Global("X3RebMad1","LOCALS",0)~ THEN X3RebJ Phaere_Warning
~<CHARNAME>, what are you intending with her? Are you um, interested in her? She is beautiful, but the tales of drow should be heeded, they are evil and dangerous.~ 
DO ~SetGlobal("X3RebMad1","LOCALS",1)~
END 
++ ~Sounds like someone is jealous.~ + PW.1 
++ ~It's just a game, a way to gain a bit of trust. Nothing more.~ + PW.2 
++ ~I might be. I don't think it's your business.~ + PW.3

CHAIN X3RebJ PW.1 
~I may sound that way, but I am also concerned, <CHARNAME>. Please, ease my worries.~
END 
++ ~It's just a game, a way to gain a bit of trust. Nothing more.~ + PW.2 
++ ~I might be. I don't think it's your business.~ + PW.3

CHAIN X3RebJ PW.2 
~I do not know if that is a wise way to do that. I hope you do not push this too far, it could be very lethal.~
EXIT 

CHAIN X3RebJ PW.3 
~Truly? With...with someone like her, who just revels in such evil and despicable activities? *sigh* I truly hope you don't push this too far.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-10)DisplayStringNoNameDlg(Player1,@409)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3RebRomanceActive","GLOBAL",1)
Global("X3RebRomanceActive","GLOBAL",2)~ + ~My companion, Recorder.~ EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3RebCheckMad2","GLOBAL",1)Global("X3RebMad2","LOCALS",0)~ THEN X3RebJ X3RebPhaere
~<CHARNAME>! You are back...~ [X3BLANK]
DO ~SetGlobal("X3RebMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3RebJ X3RebPhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3RebJ X3RebPhaere2

CHAIN X3RebJ X3RebPhaere1
~*Sigh* I can tell by your very expression what you did. Despite all the tales and their warnings, you let her touch you.~
= ~I can't even look at you right now. My heart just wants to scream in frustration. Can we please, please, just go?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@409)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3RebJ X3RebPhaere2
~That was short. I am so relieved. I was so worried.~
= ~I am so happy. But this isn't a good place to be happy. Come, we should go.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@416)~ 
EXIT


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebTreeOfLife","GLOBAL",0) !Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
~Recorder, the lorekeeper who has chronicled your tale while staying loyally by your side. She has given you the aid of her magical arts and music time and time again.~
DO ~SetGlobal("X3RebTreeOfLife","GLOBAL",1)~
END
++ ~Recorder, please, get out of here. I don't want to see you hurt.~ EXTERN X3RebJ pl2.2
++ ~We may not come out of here for you to finish the tale of my adventure, Recorder.~ EXTERN X3RebJ pl2.1
++ ~Irenicus awaits. Are you ready?~ EXTERN X3RebJ pl2.1

CHAIN X3RebJ pl2.2 
~You are kind. But I'm not leaving you.~
EXTERN X3RebJ pl2.1

CHAIN X3RebJ pl2.1
~I am ready to face him. Besides, as silly as it is, all my writing would be in vain if I turned away and left you now. And I want to see this through.~
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebTreeOfLife","GLOBAL",0) Global("X3RebRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
~Recorder, the lorekeeper who has chronicled your tale while staying loyally by your side. She has given you her magic, her music, and then her undying love. She matches your gaze with a gentle one of her own.~
DO ~SetGlobal("X3RebTreeOfLife","GLOBAL",1)~
END
++ ~Recorder...~ EXTERN X3RebJ pl3.1

CHAIN X3RebJ pl3.1
~I know. This may be the end. And it is possible that we may not all make it.~
= ~But no matter what, Irenicus has to be stopped. And if that means my life, after all you have done for me, I am willing to give it.~
= ~You have brought so much light into my life, hope, and happiness. I still remember when I was a slave, looking across Brynnlaw's shore and hoping for a savior. I want to believe I was looking across at you, then.~
= ~And so I will stay by your side, my love. No matter what gets written, or if I am even the one to write the last passages of this tale, I am proud for what we are about to do.~
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3RebIrenicusIsDead1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~It is almost another lesson of Karsus, of the dangerous ambition that magic can inspire.~
END

// Hell

I_C_T PLAYER1 25 X3RebEnteringHell1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I was in this beautiful library...so many books and tomes and musical harmonies I could not ever realize myself. But I had to come. I felt your need, <CHARNAME>. And so here I am.~
END

// Irenicus in hell

I_C_T HELLJON 7 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Every story ends one way or another. But your ending I wrote before we even came here, and I will see it realized.~
END

I_C_T HELLJON 8 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Every story ends one way or another. But your ending I wrote before we even came here, and I will see it realized.~
END

I_C_T HELLJON 9 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Every story ends one way or another. But your ending I wrote before we even came here, and I will see it realized.~
END

I_C_T HELLJON 10 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Every story ends one way or another. But your ending I wrote before we even came here, and I will see it realized.~
END




// Friendship Talk 1 

CHAIN IF ~Global("X3RebTalk","LOCALS",2)~ THEN X3RebJ First_Talk // Make sure this variable is a locals.
~Have you read your own story, <CHARNAME>? I've recorded much of your time around Baldur's Gate, and am curious if you've ever seen the text for yourself.~ [X3Blank]
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ ~I've never seen it anywhere to read it, Recorder.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T1.1 
++ ~Too many things have been happening to even think about that.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T1.1
++ ~No, but I would like to if I had the chance.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~  + T1.1 

CHAIN X3RebJ T1.1
~I captured as much as I could. The journey into Nashkel's mines fighting kobolds, sneaking into a bandit camp, delving and stopping the Iron Throne's operations in the Cloakwood and Baldur's Gate, and then bringing down Sarevok himself. That you managed to do all of this...it was an honor to put it to paper.~
== X3RebJ ~Still, after all of that, there are not many people that recognize you. I guess the city is so large it can make even you become a stranger to it at first.~
END 
++ ~An advantage, perhaps, but not one that will be likely to last.~ + T1.2 
++ ~In time my deeds here will carry weight. Then they will begin to see me.~ + T1.3 
++ ~I'm not much interested in idle talk. Not when there's much to do.~ + T1.X

CHAIN X3RebJ T1.2 
~I guess that makes sense. If it were brighter times, I would give you a proper tour. There is so much beauty in the city. You'll find it's not at all like Baldur's Gate.~
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ ~I thought you were from Lantan?~ + T1.6 
+~!Global("X3RebPartyBG1","GLOBAL",1)~+ ~You are from Athkatla then Recorder?~ + T1.6 
++ ~I'm not much interested in idle talk. Not when there's much to do.~ + T1.X
++ ~I would like that sometime.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T1.5

CHAIN X3RebJ T1.3 
~In time, maybe. It would be nice for more people to know about some of the great things you did in Baldur's Gate and the Sword Coast. It would give people more hope.~
END 
++ ~In truth, I am not sure I would want the attention.~ + T1.2
++ ~That could bring me danger. I've already had my taste of those who have less than good intentions with me.~ + T1.2
++ ~Enough with the babbling, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T1.X 

CHAIN X3RebJ T1.X 
~Sorry. I will just stop talking, then.~
EXIT 

CHAIN X3RebJ T1.6 
~I was born in Lantan, but after my parents seperated, Amn became my new, second home. The city is always bustling and crowded, but I've grown to love all that it has to offer, especially the theater.~
= ~The shows there are always so wonderful. I know our priority is our adventures but if there is time, I would say we should even go see one. I think everyone would like it.~
EXIT 

CHAIN X3RebJ T1.5 
~You would? I would show you some of the best sights. The theater is my favorite place. Mother always said I spent a little too much time, but I love the performances. I think you would too.~
EXIT 



CHAIN IF ~Global("X3RebTalk","LOCALS",4)~ THEN X3RebJ Second_Talk // Make sure this variable is a locals. This also triggers ambush 1.
~Oh, stop giving me those eyes, Gustav, you aren't getting dinner. Sometimes taking care of is is just like taking care of a baby.~ [X3Blank]
DO ~SetGlobal("X3RebQuest","GLOBAL",1)IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ ~You have experience with children, Recorder?~ + T2.1
++ ~He is as cute as his owner.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@413)SetGlobal("X3RebInterest","LOCALS",1)~ + T2.10
++ ~I don't think Ferrets and babies are the same thing.~ + T2.2 
++ ~I'm sure the Ferret won't mind a snack.~ + T2.3 
++ ~Can you not talk to your animal like a crazy gnome?~ DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@403)~ + T2.5

CHAIN X3RebJ T2.1 
~Uh, no of course not, no, not at all!~
END 
++ ~You seem a little defensive.~ + T2.6
++ ~Is everything all right? I was just making a joke.~ + T2.7
++ ~Well, we have things to get on to.~ + T2.8

CHAIN X3RebJ T2.2 
~Oh, I know that, <CHARNAME>. I know that perfectly well.~
END 
++ ~You seem a little defensive.~ + T2.6
++ ~Is everything all right? I was just making a joke.~ + T2.7
++ ~Well, we have things to get on to.~ + T2.8

CHAIN X3RebJ T2.3 
~Okay, okay. One. And you can thank nice <CHARNAME> for that. One small piece of meat here, but no more.~
EXTERN X3RebJ T2.4 

CHAIN X3RebJ T2.4 
~He is so cute. Sometimes it reminds me of...well....~
END 
++ ~Of...?~ + T2.7
++ ~You seem distant suddenly. Is everything alright?~ + T2.7
++ ~We can muse another time. We should move on.~ + T2.8

CHAIN X3RebJ T2.5 
~*Sigh*. Sorry, <CHARNAME>. I'll try to mind myself better.~
EXIT 

CHAIN X3RebJ T2.6 
~I'm not being defensive. I am just...~
EXTERN X3RebJ T2.9

CHAIN X3RebJ T2.7 
~Nothing. It's nothing. I was just...~
EXTERN X3RebJ T2.9

CHAIN X3RebJ T2.8 
~I understand, I will j- Gustav! How did you get into the food bag when I wasn't paying attention? You are such a handful sometimes.~
EXIT 

CHAIN X3RebJ T2.9 
~Gustav! How did you get into the food bag when I wasn't paying attention? *Sigh*, let me talk later, <CHARNAME>. I have a formerly hungry now quite fed Ferret to take care of.~
EXIT 

CHAIN X3RebJ T2.10 
~Are you flirting with me to convince me to feed my ferret snacks he ought not to have? Fine, Gustav, just because we are apparently cute. But just one! Sometimes my ferret you remind me of...well...~
END 
++ ~Of...?~ + T2.7
++ ~You seem distant suddenly. Is everything alright?~ + T2.7
++ ~We can muse another time. We should move on.~ + T2.8



// This talk happens between the two ambushes. 

CHAIN IF ~Global("X3RebTalk","LOCALS",6)~ THEN X3RebJ Talk3
~It's nothing, it's nothing. We're fine...we're fine.~ [X3Blank]
DO ~IncrementGlobal("X3RebQuest","GLOBAL",1)IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ ~You seem a bit on edge, Recorder.~ + T3.2 
++ ~What is it?~ + T3.2 
++ ~Can you focus, Recorder? You're gazing off.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@403)~ + T3.X 

CHAIN X3RebJ T3.X 
~I am sorry, I don't mean to cause concern. I'll be more focused as you wish, <CHARNAME>.~
EXIT 

CHAIN X3RebJ T3.2 
~I am looking out for danger, in the corners and shadows. We've been ambushed before, I do not want to be caught unaware if I can avoid it.~
END 
++ ~You seem almost paranoid about it though. You keep looking about every few minutes. Take it easy.~ + T3.3 
++ ~I suppose that is fine, though we've handled everything fine so far.~ + T3.4 
++ ~Well, keep it up, then. Give a signal if you see anything suspicious.~ + T3.5 
++ ~Do not worry. I will keep you safe.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@413)SetGlobal("X3RebInterest","LOCALS",1)~ + T3.6

CHAIN X3RebJ T3.3 
~Do I? I'm just trying to be careful, that's all. Do not worry about it, okay?~
EXIT 

CHAIN X3RebJ T3.4 
~I know, I just...I just have this feeling in my heart that is making me uneasy. I'm probably being paranoid. Just ignore silly me.~
EXIT 

CHAIN X3RebJ T3.5 
~Okay, <CHARNAME>. I just hope this is all nothing and it's just nerves.~
EXIT 

CHAIN X3RebJ T3.6 
~I know you will do your best, <CHARNAME>. I just wish that was enough to get these nerves to go away. Thank you, though, for trying to reassure me.~
EXIT 

// After second encounter, doesn't need the bounty notice in inventory. 
CHAIN IF ~Global("X3RebQuest","GLOBAL",7)~ THEN X3RebJ quest_start
~This is all so very confusing.~ 
END 
++ ~Is your name really Rebecca?~ + really 
+~PartyHasItem("X3RBOUNT")~+ ~Whoever has been sending these men, we know where to look for them now.~ + look_now 
++ ~What have you not been telling us, Recorder? This is the second time we've been attacked.~ + not_know

CHAIN X3RebJ look_now 
~We do. Maybe there, we will find some answers. But you do deserve to know the truth, or what I remember of it.~
EXTERN X3RebJ I_was

CHAIN X3RebJ really 
~...Yes. Once it was. But I don't remember her. I don't know why these people are after her.~
END 
++ ~Why would you not know why these people are after you? You're still her.~ + not_know 
++ ~Please, explain if you would. I'm in the dark over here.~ + not_know
++ ~It doesn't matter. No one messes with us.~ + no_one 

CHAIN X3RebJ not_know
~...I guess I have no choice now. I didn't want anyone to get hurt, or endangered.~
EXTERN X3RebJ I_was 

CHAIN X3RebJ I_was 
~I was Rebecca. A different gnome, with a different story...one I have long left behind.~
== X3RebJ ~I just want to be Recorder now. I didn't think they would still try to go after me and hurt us, I thought the last incident was it, but...~
== X3RebJ ~I guess not even a scholar can just rewrite history to conveniently forget parts of herself.~
END 
++ ~What did you do to make them so angry?~ + clear 
++ ~Not at all. These men are persistent in getting you killed.~ + clear 
++ ~You should have said something earlier. We could have gotten killed for it.~ + sorry 

CHAIN X3RebJ clear 
~All I did was want to be free. I was a slave, do you understand? Chained and starving, wanting to escape with the sole thing that mattered...~
EXTERN X3RebJ only_way

CHAIN X3RebJ sorry 
~I am sorry, very sorry, <CHARNAME>. But please understand I couldn't have seen this happening like this.~
EXTERN X3RebJ only_way

CHAIN X3RebJ no_one 
~I still feel guilty. I shouldn't have kept you in the dark. I didn't think it mattered, but I guess it does now.~
EXTERN X3RebJ I_was

CHAIN X3RebJ only_way 
~I don't want to talk about it more, not right now. Just...we need to stop whoever is sending the assassins. I fear that is the only way these attacks might stop.~
DO ~IncrementGlobal("X3RebQuest","GLOBAL",1)AddJournalEntry(@5,QUEST)~ 
EXIT 

// This talk happens after talking to the Remover (Or Killing him)

CHAIN IF ~Global("X3RebTalk","LOCALS",8)~ THEN X3RebJ Talk4
~Can we talk now, <CHARNAME>? I've been eating myself alive on the inside on how to say this.~ [X3Blank]
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~ // Brynnlaw content requires this talk to be done.
END 
++ ~Whatever answers you can provide on Phelgrim and these hunters, it would make things a lot more clearer.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T4.1 
++ ~How can I know you will tell the truth? If things went your way we wouldn't know a thing about your past.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + T4.2
++ ~Take a breath and speak when you are ready. I'll listen attentively.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T4.1 
++ ~Forget it, Recorder, Rebecca, or whoever you are. I don't want to hear it.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@406)~ + T4.X 

CHAIN X3RebJ T4.X 
~I was hoping you would be supportive. I need someone right now, and you deserved some answers. But...if you want to be cold and cruel, then I will just console myself.~
EXIT 

CHAIN X3RebJ T4.2 
~I don't know. At least, I don't know how to convince you that I am not making things up. But I hope you will at least listen.~
EXTERN X3RebJ T4.1

CHAIN X3RebJ T4.1 
~Years ago, when I had just become a young adult gnome, several of us were celebrating making our next steps in life, be it going to a bard's college, like myself, or apprenticing with the recluse mages of Orlil like my best friend at the time, Lizzie.~
== X3RebJ ~It was a small celebration near the coastal waters. Away from parents and responsibility, a real party. There were about a dozen of us. It was a sweet moment.~
== X3RebJ ~But then something odd was in the air. An illusion of sorts, that became foggier, and foggier, until suddenly all I saw was grey and heard a scream. When I tried to turn around, something hit me hard in the back of the head.~
== X3RebJ ~These were pirates, the worst type of pirates, slavers. They weren't interested in ransom, only in using our skills and talents for free. Lantan periodically had issues with pirates at sea, but we've never heard of them docking and actually taking people from the beach, none of us were prepared.~
END 
++ ~What does this have to do with Phelgrim?~ + T4.25 
++ ~I'm sorry that happened to you. What happened next?~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T4.3 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ ~Why didn't you tell me you were a slave when we first journeyed together back in Baldur's Gate?~ + T4.4 
++ ~Gnomes, masters of illusions, got bested by illusionary magic? That's rather amusing.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.5
++ ~Enough. I don't want to listen to the rest of this. There's no time.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~  + T4.XX // This might skip the ENTIRE story. Hit at your own risk.

CHAIN X3RebJ T4.XX
~I understand. Maybe it won't even matter. It's...easier for me not to talk about it anyway. It just brings back pain.~
EXIT 

CHAIN X3RebJ T4.25 
~I'll get to his part soon. I just...I just need to start before. Talking about him is...difficult for me.~
EXTERN X3RebJ T4.3 

CHAIN X3RebJ T4.4 
~I couldn't have broken my appearance of Recorder, not to be the pitiful gnome girl, not after already losing my friend. Talking about this....it would have been too much.~
EXTERN X3RebJ T4.3 

CHAIN X3RebJ T4.5 
~I don't know why you find it funny. Some of my friends tried to defend us and see through the illusion and fight back. We were twelve on the beach, but eight on the ship. Those who had tried to fight back... died.~
EXTERN X3RebJ T4.3 

CHAIN X3RebJ T4.3 
~They took us out to an island called Brynnlaw. When we arrived, some of us were assigned as cooks, or to ships to build them devices, or cut gems, or work in their bordello. Sometimes it was just a rotation based on who had bought you.~
== x3RebJ ~I was the musician sold to a bordello owned by a woman named Galvena to perform for waiting guests. They let me keep my flute to play it and I twirled and danced for pirates and thieves and murderers. I hated it and just wanted to go home, but there was no way off I could figure out yet, not without risking death or torture.~
== X3RebJ ~But it was there a few weeks later that I met Phelgrim. He saw my dancing and playing and he was smitten. I didn't know about his history, he seemed like a nicer pirate, so seducing him brought me hope, just by looking his way, and conversing with him when he wanted, and going on walks with the oversight of the Bordello's guard, and for him, it made him want to keep me, to buy me for himself.~
END 
++ ~What happened next?~ + T4.6
++ ~So you led him on?~ + T4.7
++ ~It sounds like you put yourself in this predicament, then.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.8

CHAIN X3RebJ T4.6 
~Phelgrim asked me if I would be happy with him, and I said yes. He bought me from the Bordello, and I became his slave and wife. I grew to understand what he did, that he was a pirate and slaver...~
== X3RebJ ~But he was strong and offered protection, and I prayed maybe one day, he might offer me freedom.~
EXTERN X3RebJ T4.9.5 

CHAIN X3RebJ T4.9.5
~But...that never happened.~
END 
++ ~So I understand how your relationship began. But how did things fall apart?~ + T4.9 
++ ~If he cared for you, why did you hurt him?~ + T4.9
++ ~Honestly, from the sounds of it, Phelgrim did nothing wrong. There is more to this, isn't there? Tell me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.9 

CHAIN X3RebJ T4.7
~It was that or know a life in the Bordello forever, a place I knew I could not escape on my own. None of my other friends had been put in there with me, and I wasn't as magically talented at the time.~
== X3RebJ ~So I entertained Phelgrim's advances...I probably would have risked getting hurt if I refused them anyway. I didn't see any other choice. Even after understanding he was a pirate or slaver, when he mentioned his desire to purchase me, there was at least some hope in being his slave-wife he might let me be free someday.~
EXTERN X3RebJ T4.9.5

CHAIN X3RebJ T4.8 
~How can you say that? Nevermind. Just...let me finish.~
EXTERN X3RebJ T4.6

CHAIN X3RebJ T4.9 
~That...is...hard to talk about. Can I...talk to you later about it? I'm not trying to avoid it...I just need more time.~
END 
++ ~I understand Recorder. Take all the time you need.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T4.10 
++ ~You can't keep avoiding this, Recorder. People have tried to kill us.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.11
++ ~If that is what you want, so be it.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T4.10 
++ ~No, I want to hear it now.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.11

CHAIN X3RebJ T4.10 
~Thank you, <CHARNAME>. I promise, I will tell you the rest later. I just...I just need some time to gather my courage.~
EXIT 

CHAIN X3RebJ T4.11 
~I know you badly want details. And I want to tell you it's just...so hard. So really, really hard. Just give me time. I promise, I will tell you the rest later.~
EXIT 

//Friendship Talk5
CHAIN IF ~Global("X3RebTalk","LOCALS",10)~ THEN X3RebJ Talk5
~I'm sorry for not being able to finish before. If you'll let me...I will tell you the rest now.~ [X3Blank]
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ ~You don't have to Recorder, if it bothers you.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T5.1 
++ ~Please. I would be glad to hear it.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T5.2
++ ~Finally. Tell me the rest of this tale.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T5.2
++ ~Forget it. I'd rather not have another half of a half-story.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",4)~ + T5.X 

CHAIN X3RebJ T5.X
~I...I see. Then forget I said anything.~
EXIT 

CHAIN X3RebJ T5.1 
~It does bother me. But... I am a bard. We share stories of the past, no matter what happened, so their history can be remembered and learned from. My past shouldn't be any different.~
EXTERN X3RebJ T5.2 

CHAIN X3RebJ T5.2 
~I told you that I was Phelgrim's slave and wife after he bought me from being a performer at the bordello. When he was in a good mood, he was a... good master, almost a husband, if that makes sense. Even if never released, maybe it would be okay to love him, I felt.~
== X3RebJ ~He was quite busy for many months after, and I was in the midst of learning I was with his child. I hid it for as long as I could, because I was afraid of what he would say. I was afraid of what I would think too, if I acknowledged it. I never really knew how to process it all.~
== X3RebJ ~He wasn't happy about it once I did tell him, but I tried my best to keep doing the housekeeping tasks he always had me do to keep his mood. I didn't want to lose the child from his rage.~
== X3RebJ ~I named him Raban when he was born. Despite all the circumstances, he was a gift in a dark world for me.~
END 
++ ~You were happy about him, even if Phelgrim was the father?~ + T5.3 
++ ~What happened to the child, Raban?~ + T5.4 
++ ~I'm guessing this light of hope didn't last long for you.~ + T5.4 

CHAIN X3RebJ T5.3 
~Phelgrim is a monster. But Raban wasn't Phelgrim. Raban was purely precious.~
EXTERN X3RebJ T5.4 

CHAIN X3RebJ T5.4 
~Not a few more years after he was born, Phelgrim's mood about him existing came to an explosion. He believed the child ruined his reputation, and that there was profit in selling him off to another slaver who was interested in him.~
== X3RebJ ~There was some mining operation were his small size would allow im to get into small spaces to retrieve shiny ores and gems. And children were easy for them to get obedience out of and intimidate. It is not a good place.~
== X3RebJ ~He was...kind in his own way tough, and let me have one last night with Raban before he gave him away. I was distraught, and knew no matter how impossible, I had to try to get him away from this life. To not be free...to have no one around him to be loved by, I couldn't let it happen.~
== X3RebJ ~I snuck out that night. I had never tried to run before, but the talk had made me feel so defiant...that it was okay to die if he could be free. We were going to board this small skiff just a short aways from the house, and row anywher else.~
END 
++ ~I take it that didn't go according to plan.~ + T5.5
++ ~That was brave of you.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T5.6
++ ~This is getting awfully winded.~ + T5.7

CHAIN X3RebJ T5.5 
~No...very, very far from it.~
EXTERN X3RebJ T5.8

CHAIN X3RebJ T5.6 
~I didn't consider myself brave. I still don't. Just so desperate, maybe even selfish. The only light I had in that unwanted world was about to be gone from me.~
EXTERN X3RebJ T5.8 

CHAIN X3RebJ T5.7 
~I'm sorry. I just don't know how to tell it any other way except by...rambling it all out.~
EXTERN X3RebJ T5.8 

CHAIN X3RebJ T5.8 
~Phelgrim caught us. He threw flaming powder at the Skiff that caused it to burst into flame, and his men approached us both. I remember the look in his eye. It was the same one he gave to others who crossed him, and that my fate was sealed.~
== X3RebJ ~I drew a small knife. It was all I had to defend myself, but it wasn't to protect me. There was no surviving. The only hope was freedom. And I wanted to set Raban and myself free.~
== X3RebJ ~I...I freed Raban. But before I could free myself, I was grabbed and bound and forced back into Phelgrim's captivity.~
END 
++ ~That must have been a horrible choice you were forced to make.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T5.9
++ ~Why would you do that to your own son? Are you insane? Kiling him isn't freeing him.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T5.9 
++ ~How did you finally get away from him?~ + T5.11 
++ ~I think I've enough of an understanding now. I don't want to hear the rest of this.~ + T5.10

CHAIN X3RebJ T5.9 
~It was the worst choice I ever made. I ... I hated myself so much for it afterwards. But I couldn't...I couldn't let Raban suffer such a life I was forced to have.~
EXTERN X3RebJ T5.11 

CHAIN X3RebJ T5.10 
~I do not know if I want to tell the rest either...but thank you for listening to what I could manage. It makes the pain a little easier to carry.~
EXIT 

CHAIN X3RebJ T5.11 
~Phelgrim was furious over everything, but I refused to speak with him. My sentence was to be killed in front of all the other slaves the following morning.~
== X3RebJ ~But Phelgrim got careless. Most of those in his employee were slaves. My cell guard was a solemn old man, and he sacrificed himself to get me into a barrel to pretend to be a ship's merchandise and into a ship that was headed into Amn.~
== X3RebJ ~That is how I got to Althkata. The church of Oghma helped me get into contact with my mother...and saw us reunited.~
== X3RebJ ~It took years for the nightmares to stop. I had forged a new identity and tried so hard to forget...you must think so poorly of me.~
END 
++ ~Of course not, Recorder. Far from it.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T5.12 
++ ~I don't know. Only the gods can really say.~ + T5.14 
++ ~What you did was terrible. There had to be another way rather than taking your son's life.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T5.13

CHAIN X3RebJ T5.12 
~I was so worried you would judge me so poorly. I've...never shared that. But it felt good to get it off my chest. Thank you for listening.~
EXIT  

CHAIN X3RebJ T5.14
~Maybe. When it is my time, and I go to our Golden Hills and Garl judges me, maybe then, I will know if I did the best decision. I just wish I saw a way where Raban could have lived and still been happy.~
EXIT 

CHAIN X3RebJ T5.13 
~I have pondered what would have happened if I did nothing...and I only see death or more years of abuse and slavery. No ending could have been a happy one for me. No such ending do I even deserve.~
EXIT

// Talk 6
CHAIN IF ~Global("X3RebTalk","LOCALS",12)~ THEN X3RebJ FriendshipTalk6 
~I am sorry if I have seemed quiet lately, <CHARNAME>. I have never shared such personal knowledge before.~ [X3Blank]
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ ~I understand why you didn't before.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T6.1 
++ ~I still think what you did was horrible.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T6.2
++ ~Are you all right?~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T6.1

CHAIN X3RebJ T6.1 
~It is just...for all of this knowledge we have, I feel even worse for being hypocritical. I am a Lorekeeper, meant to hold such history close for sharing.~
= ~And I didn't do that. I tried to forget something. I always speak of history, of remembering both the ill and good because we cannot forget who we are, or where we came from. But I was doing just that.~
END 
++ ~Is that always the truth? There is some knowledge that is dangerous in the wrong hands.~ + T6.3 
++ ~It is hypocritical of you. But now you can stop hiding.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T6.4
++ ~I would have done the same in your shoes, Recorder. You were only protecting yourself.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T6.5

CHAIN X3RebJ T6.2 
~I think you are justified for believing that. I think what I did was unforgivable, too.~
EXTERN X3RebJ T6.1 

CHAIN X3RebJ T6.3 
~It can be, yes. Very dangerous. And yet if we do not know it is dangerous, how can we understand that it must even be shielded?~
= ~Knowledge and history are key to our own advancement. The temple of Oghma advocates its access to everyone, and encourages bards to share their stories with the world, especially when they carry information that can help with life or a bit of wisdom.~
= ~Here I am just going on about knowledge and philosophy. I hope I'm not boring you.~
END 
++ ~No, I'm glad to listen to you, Recorder. I feel closer when we talk like this.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T6.6
++ ~A little. We have things we could be doing.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T6.8
++ ~Think nothing of it.~ + T6.9

CHAIN X3RebJ T6.4 
~I do not know if I can. Not because...I am afraid, but I have become so married to my own identity, I would feel uncomfortable breaking away from it. It is me now.~
= ~I don't know if that makes any sense, but...that is how I feel.~
END
++ ~No, it is all right. I want you to open up to me, Recorder. I want to be close.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T6.6
++ ~I see, though there are things we should get to.~ + T6.8
++ ~Think nothing of it.~ + T6.9

CHAIN X3RebJ T6.5
~Would you? Maybe I just have this image in my head of your heroics...but I do not think you would have. I think you would have faced everything head on. And I think you would have never put the knife at your own child like I did.~
= ~Maybe I am just lifting you up on too high. I'm sorry if I sound like I am glorifying you so much.~
END 
++ ~No, it is all right. I enjoy your fondness of me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T6.6
++ ~I am just a <PRO_RACE>, Recorder. Nothing else.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T6.7
++ ~You're right. I would have handled it much better.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T6.8

CHAIN X3RebJ T6.6 
~Really? I do like you, <CHARNAME>. I hope that's not too odd sounding, heehee.~
EXTERN X3RebJ T6.9

CHAIN X3RebJ T6.7
~You say that. But I know that you are far greater then that. If you do not know that yet, I think you will find out for yourself soon.~
EXIT 

CHAIN X3RebJ T6.8
~I'm sorry, I won't trouble you with such silliness. We should keep moving as it is. I've distracted you with idle chatter long enough.~
EXIT 

CHAIN X3RebJ T6.9
~You are kind. I am glad we are friends, and I am glad I opened up to you. It is odd, but sometimes I believe that I needed your companionship more than you need mine. But nevermind that. We should continue on.~
EXIT 


// Talk 6 is Recorder's return to Brynnlaw. The Romance track has its own version. (Already Written)
// When arriving to Brynnlaw 
CHAIN IF ~Global("X3RebBrynnTalk","LOCALS",1)~ THEN X3RebJ Brynnlaw 
~The smell of the sea salt. All the ships moored at the harbor with pirates at every corner...This is definitely Brynnlaw, or a horrible nightmare.~ [X3Blank]
DO ~IncrementGlobal("X3RebBrynnTalk","LOCALS",1)~
END 
++ ~This was the place you were a slave?~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + Brynn.1 
++ ~What are you talking about?~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + Brynn.2  
++ ~You have been here before?~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + Brynn.2 
++ ~I don't have time for your concerns. We are here for Irenicus and Imoen.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",4)~ + Brynn.7

CHAIN X3RebJ Brynn.1
~Yes. This was the place where I was taken to from Lantan.~
EXTERN X3RebJ Brynn.4

CHAIN X3RebJ Brynn.2 
~I was a slave here. I told you about it a little bit. I-I was hoping I was somehow mistaken, that were I was taken was not the same place, but now that I see it, th-this is it. This is "home".~
EXTERN X3RebJ Brynn.4

CHAIN X3RebJ Brynn.4 
~Please, have us make our way as soon as possible. I really don't want to run into Phelgrim or his slavers if we can avoid it.~
END 
++ ~That is what I intend to do anyway.~ + Brynn.5
++ ~Why not have us just kill this Phelgrim? I'm sure he is no threat to our entire group.~ + Brynn.6
++ ~Your past better not disrupt my task here, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + Brynn.3

CHAIN X3RebJ Brynn.7
~I know you care for Imoen and are eager to track down Irenicus, but...*sigh*~
EXTERN X3RebJ Brynn.2


CHAIN X3RebJ Brynn.5 
~Maybe things will be just fine for once. We're so close to finding your friend and Irenicus, I don't want to be the cause of anything going wrong.~
DO ~SetGlobal("X3RebQuest","GLOBAL",10)AddJournalEntry(@9,QUEST)~
EXIT 

CHAIN X3RebJ Brynn.6 
~I don't know where he is, and even if I did, he has dangerous henchman who serve beneath him. We're better off saving your friend than going after my husband.~
DO ~SetGlobal("X3RebQuest","GLOBAL",10)AddJournalEntry(@9,QUEST)~
EXIT

CHAIN X3RebJ Brynn.3
~As- as if I would want that either, <CHARNAME>. Just...let us keep moving and hope as much for both our sakes.~
DO ~SetGlobal("X3RebQuest","GLOBAL",10)AddJournalEntry(@9,QUEST)~
EXIT  
// Talk 7 is the quest outcome. It has two versions, a FAIL track and a Success track. Copy Grab this from X3RebJ.
CHAIN IF ~Global("X3RebBrynnTalk","LOCALS",3)Global("X3RFAIL","GLOBAL",2)~ THEN X3RebJ Quest_Fail
~No! No no no no. J-Just as soon...as soon as I discovered that Raban was back in my life, I...I....~ [X3Blank]
DO ~IncrementGlobal("X3RebBrynnTalk","LOCALS",1)~
END 
+~Global("X3RMSpell","GLOBAL",4)OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~(Hold her).~ + Sorry3
+~!Global("X3RMSpell","GLOBAL",4)OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~(Hold her).~ + Sorry4
+~Global("X3RMSpell","GLOBAL",4)~+ ~I'm sorry.~ + Sorry1
+~!Global("X3RMSpell","GLOBAL",4)~+ ~I'm sorry.~ + Sorry2
+~Global("X3RMSpell","GLOBAL",4)~+ ~We tried everything we could.~ + Tried
+~!Global("X3RMSpell","GLOBAL",4)~+ ~We tried everything we could.~ + Sorry2
+~Global("X3RMSpell","GLOBAL",4)~+ ~There's no time to mourn. Let's keep moving.~ + moving
+~!Global("X3RMSpell","GLOBAL",4)~+ ~There's no time to mourn. Let's keep moving.~ + bad_quest_ending1
+~Global("X3RMSpell","GLOBAL",4)~+ ~Don't give up. There may still be a way to get him.~ + give_up1 
+~!Global("X3RMSpell","GLOBAL",4)~+ ~Don't give up. There may still be a way to get him.~ + give_up2

CHAIN X3RebJ Sorry1 
~Sorry? Sorry?! You...you let that *monster* keep him...and you think an apology is enough?!~
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ Sorry2 
~You don't have to apologize. I- I wish so many things could have been different.~
EXTERN X3RebJ bad_quest_ending1 

CHAIN X3RebJ Sorry3 
~(She pushes your arms away) Don't touch me! Don't ever touch me again. You are a liar...you don't care for me at all.~
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ Sorry4 
~(She sobs in your arms for a while, pressing her face into your side.)~
EXTERN X3RebJ bad_quest_ending1 


CHAIN X3RebJ Tried 
~You *tried*? You just practically handed him over. I trusted you!~
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ moving 
~Just...keep moving? After what you did? You think it is so *easy* to just do that? I feel like Urdlen put his claws in my heart and pierced them with all the fury of his horrible hatred.~
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ give_up1
~Are you kidding me? Are you mocking me? You practically gave him to that *monster*. With you next to me there is no hope of doing something good for anyone else but yourself!~
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ give_up2 
~I know you are trying to cheer me up, but I don't need that right now. I need to cry. I need...to let go. I let this happen, and I hate myself for it.~
EXTERN X3RebJ bad_quest_ending1 
 
CHAIN X3RebJ bad_quest_ending2 
~I don't know if I'll be sticking around much longer. You aren't the person I thought you were, or maybe I was lying to myself. Just...just leave me alone.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~ 
EXIT 


CHAIN X3RebJ bad_quest_ending1 
~I know you have your own matters at stake that are incredibly dire. I just hope things end for you less horribly than they have for me.~
EXIT // No points are lost for this one.
 
 // The success branch happens AFTER the PC has lost their soul. (Use a TRANS if necessary to add a global to check this.)
CHAIN IF ~Global("X3RebBrynnTalk","LOCALS",3)!Global("X3RFAIL","GLOBAL",2)~ THEN X3RebJ Quest_Pass
~I feel like I have failed you. You saved my son, but in your moment of plight, I couldn't stop Irenicus from doing what he did to you.~ [X3Blank]
DO ~IncrementGlobal("X3RebBrynnTalk","LOCALS",1)~
END 
++ ~It's not your fault. There was nothing you could do.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + QP.1
++ ~He will pay! I will destroy him for what he has done!~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + QP.2 
++ ~I don't want to talk about it, Recorder.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + QP.X

CHAIN X3RebJ QP.X 
~Please don't push me away, <CHARNAME>. I'll...drop it, but I'll be here, whenever you need someone to listen.~
EXIT 

CHAIN X3RebJ QP.2
~I would caution letting that anger overwhelm you. Revenge is a dangerous endless cycle. We can find a way to stop him without compromising principles.~
== X3RebJ ~He believes himself unstoppable. We can show him that he can be defeated.~
END 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~Thank you for your support, Recorder. I don't know how I would do this without you.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Thank you for your support, Recorder. I don't know how I would do this without you.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3R 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~Then let us get through this place and find him.~ + QP.4 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Then let us get through this place and find him.~ + QP.4R
++ ~Enough talking, then. Let us track him down.~ EXIT 


CHAIN X3RebJ QP.1
~You are right, there was nothing. I have never seen or heard of such...such power before. Perhaps not since Karsus.~
== X3RebJ ~But there is a comfort in that. Karsus grasped too much that was not just for himself. It is a lesson of arrogance of magic and power. I know we can found a way to stop him.~
END 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~Thank you for your support, Recorder. I don't know how I would do this without you.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Thank you for your support, Recorder. I don't know how I would do this without you.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3R 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~Then let us get through this place and find him.~ + QP.4 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Then let us get through this place and find him.~ + QP.4R++ ~Enough talking, then. Let us track him down.~ EXIT 

CHAIN X3RebJ QP.3
~It is the same support you gave me. As long as we hold eachother up, we can do this.~
EXIT 

CHAIN X3RebJ QP.3R
~(She squeezes your hand.) It is the same support you gave me. Because we hold eachother up, we can make it through this. I know we will.~
EXIT 

CHAIN X3RebJ QP.4
~Let's make him regret ever trying to hurt us or our friends.~
EXIT 

CHAIN X3RebJ QP.4R
~(She squeezes your hand.) I'm with you. Let's make him regret ever trying to hurt us or our friends.~
EXIT 

//Final Talk. This is the only actual friendship only talk romances don't get.
CHAIN IF ~Global("X3RebTalk","LOCALS",14)~ THEN X3RebJ FinalFriendshipTalk
~That was the most terrifying experience, going through the Underdark like that. I do not think I ever want to do it again.~ [X3Blank]
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
+~!Global("X3RFAIL","GLOBAL",2)~+ ~Nor I, if I can help it.~ + FT.1
+~!Global("X3RFAIL","GLOBAL",2)~+ ~We still can't relax. We have more chasing to do.~ + FT.1 
+~Global("X3RFAIL","GLOBAL",2)~+ ~Nor I, if I can help it.~ + FT.2
+~Global("X3RFAIL","GLOBAL",2)~+ ~We still can't relax. We have more chasing to do.~ + FT.2
++ ~I know you're glad to be out, but this isn't the time for a chat.~ + FT.X 

CHAIN X3RebJ FT.X 
~Let us see this finished first, then.~
EXIT 

CHAIN X3RebJ FT.1
~I still haven't quite recovered from all of that. To go from finding my son, to a magical prison, and then into one of the most dangerous places in the realm...and into a drow city itself!~
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",45)~ EXTERN X3RebJ FT.3 
IF ~GlobalGT("X3RebApp","GLOBAL",45)~ EXTERN X3RebJ FT.4 

CHAIN X3RebJ FT.3 
~We can't fail now. Not after all of that. But if something happens...for all that you've done for me, even as we haven't always got along...I want to show the world how much you have done for them, with you well and alive.~
END 
++ ~Nothing will happen. I'll prevail against Irenicus.~ + FT.5
++ ~That may not happen if you don't make it through either.~  + FT.6
++ ~The winner will write the history, Recorder. We must win against him.~ + FT.7

CHAIN X3RebJ FT.4 
~We can't fail now. Not after all of that. But if something happens...for all that you've done for me, I will make sure the world remembers how much good you have done. How much you have touched me with your aid.~
END 
++ ~Nothing will happen. I'll prevail against Irenicus.~  + FT.5
++ ~That may not happen if you don't make it through either.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.6
++ ~The winner will write the history, Recorder. We must win against him.~ + FT.7

CHAIN X3RebJ FT.5
~That is the confidence we will need. He is admittedly terrifying, but I believe you can do this.~
EXIT 

CHAIN X3RebJ FT.6
~Then I will make sure that I am standing next to you. I've made it through the underdark, the underdark! I know I can be there to the end.~
EXIT 

CHAIN X3RebJ FT.7
~Yes, we must. Else the writing of history will take a very different, darker turn.~
EXIT 

CHAIN X3RebJ FT.2 
~I still haven't quite recovered from all of that. To go from losing my son again to a magical prison, and then into one of the most dangerous places in the realm...and into a drow city, no less.~
END 
IF ~Global("X3RMSpell","GLOBAL",4)~ + FT.QuestBad
IF ~!Global("X3RMSpell","GLOBAL",4)!GlobalGT("X3RebApp","GLOBAL",45)~ + FT.QuestGoodLowApp
IF ~!Global("X3RMSpell","GLOBAL",4)GlobalGT("X3RebApp","GLOBAL",44)~ + FT.QuestGoodHighApp

CHAIN X3RebJ FT.QuestBad 
~I have not forgiven you for your part in it. And I do not think I ever will. Sometimes I felt guilty for hoping we would both die down there.~
END 
++ ~You wished me to die?~ + FT.QB1
++ ~Why are you even traveling with me, then?~ + FT.QB2
++ ~Like anything could stop me.~ + FT.QB3

CHAIN X3RebJ FT.QB1
~Such was my loathing for you and myself, yes.~
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBWarning 
IF ~GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBPetty

CHAIN X3RebJ FT.QB2 
~I thought it was because where else would I reasonably go to? What would I do beyond find a corner to be gloomy in the temple? But it is out of duty I think, to the story, to seeing it to the end.~
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBWarning 
IF ~GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBPetty

CHAIN X3RebJ FT.QB3 
~You are powerful, <CHARNAME>. I think it is why you are still surviving despite what happened. But I do not know if you are responsible, and that is terrifying.~
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBWarning 
IF ~GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBPetty

CHAIN X3RebJ FT.QBPetty 
~It was petty to have those thoughts in the end. To hate you that way. Hatred doesn't do anyone any good..and you've tried to do well for me despite that day.~
END 
++ ~One day you will understand that every decision I make is necessary, even the unpopular ones.~ + FT.QBW1
++ ~I do not care if you loath me. Only that you follow.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-3)~ + FT.QBW2
++ ~I hope someday you can forgive me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~  + FT.QBW3 

CHAIN X3RebJ FT.QBWarning 
~I do not know if you will listen, or care. But in some ways you aren't much different than this man we are pursuing. Even if we best him, your story may very well just end up as a warning to others, or worse, that few "heroes" are truly heroic.~
END 
++ ~One day you will understand that every decision I make is necessary, even the unpopular ones.~ + FT.QBW1
++ ~I do not care if you loath me. Only that you follow.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-3)~ + FT.QBW2
++ ~I know you hate me. But I hope someday you can forgive me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.QBW3 

CHAIN X3RebJ FT.QBW1
~I hope I do not. I will never understand why you thought Raban was a negotiatible piece, or forgive you for it. But I will follow you until this is over or you dismiss me.~
EXIT 

CHAIN X3RebJ FT.QBW2
~I will follow you until this is over, or you dismiss me. Once that happens...I will never be in your presence again.~
EXIT 

CHAIN X3RebJ FT.QBW3
~I don't think I can. But that doesn't mean I won't see this through, nor that at the end of this all, that I won't come around to it. But I would not have any hope that it will happen.~
EXIT 

CHAIN X3RebJ FT.QuestGoodLowApp
~When Raban dissapeared in front of me forever, I hated you for it for a time, even if that wasn't fair to you. I too, failed him. And it is up to me to be strong enough to be of aid to see us through, to see Irenicus stopped, and not make another costly failure. We can't put all of that weight on you.~
END 
++ ~Perhaps, though the weight of burden is still the greatest on myself. He has my soul, the consequences are greatest to me.~ + FT.QGLA1
++ ~Well, that's rather ungrateful of you. I tried my best to help Raban.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FT.QGLA2
++ ~Good. I am counting on you, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.QGLA3

CHAIN X3RebJ FT.QuestGoodHighApp
~Maybe it is silly to hope for this, or even think this far...but when this is all done, when Irenicus is stopped and you are done traveling, maybe you could help me find Raban.~
END 
++ ~I could try. I still am sad that you lost him.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.QGHA1
++ ~It would be difficult, Recorder. We don't even know where to look.~ + FT.QGHA1
++ ~I do not think I would be interested in that, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FT.QGHA2


CHAIN X3RebJ FT.QGLA1
~This is true. But even if we aren't very close, or haven't known eachother very long...I want to do my best. I am tired of seeing people suffer because of what he has done, you included.~
EXTERN X3RebJ FT.QGLA4

CHAIN X3RebJ FT.QGLA2
~It is petty of me, wrong even. Yet I still felt that way for a time. I am sorry for that, though I think I did my best in not letting you see just how angry I was.~
EXTERN X3RebJ FT.QGLA4

CHAIN X3RebJ FT.QGLA3
~We'll support eachother. As we always have, even through failure.~
EXTERN X3RebJ FT.QGLA4

CHAIN X3RebJ FT.QGLA4 
~Come, we can talk much, but there is only one way to see this through, and that is to keep going.~
EXIT 

CHAIN X3RebJ FT.QGHA1 
~I know we wouldn't even know the first place to look but...I just can't rest easy knowing he is out there somewhere.~
EXTERN X3RebJ FT.QGHA3 

CHAIN X3RebJ FT.QGHA2
~I...understand. It would be a goose chase at best, but...I can't rest easy knowing he is out there somewhere.~
EXTERN X3RebJ FT.QGHA3 


CHAIN X3RebJ FT.QGHA3 
~Come, let us resume your journey. We still need to see this current travail with Irenicus through to the end.~
EXIT 


// Romance General 
/*
Requirements:
-Non Evil 
-Friendship Talk 5
-Must be initiated in some fashion.

*/
// Romance Talk 1
CHAIN IF ~Global("X3RebLoveTalk","LOCALS",2)~ THEN X3RebJ LoveTalk1
~*Yawn*. It's time to go already? I feel so tired still.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~Did you not get any sleep?~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 1.1 
++ ~Are you ill? You do seem sluggish.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 1.1 
++ ~We can rest a little more, if you need it.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~  + 1.2
++ ~I'm afraid it's time to go, Recorder.~ + 1.X 


CHAIN X3RebJ 1.X
~Eugh. I'm exhausted, but I will try to manage.~
EXIT 

CHAIN X3RebJ 1.1 
~I couldn't stop having nightmares. Maybe it was just a curse of the creative mind, perhaps. I gave up after I woke up the second time and just joined the watch.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That would explain why you joined me on watch. I thought you were just being nice.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You know, I could help you sleep if you're tired next time. Damn, don't look at me like that! T'was just a joke.~
END 
++ ~What was it about? Maybe talking about it will help.~ + 1.4 
++ ~We can delay a little longer if you like. Adventuring tired won't help the others.~ + 1.2 
++ ~It inconveniences us when you can't take care of yourself. Push through the dreams and get more rest next time.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 1.5
++ ~A "curse of the creative mind"?~ + 1.6

CHAIN X3RebJ 1.2 
~That is kind of you. But if we could just rest a little sooner, I think I will be fine for now.~
END 
++ ~If you are sure, then the road awaits.~ EXIT 
++ ~I'll keep that in mind, then, a shorter march could do us all well.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 1.3 
++ ~What were your nightmares about? Maybe talking about it will help.~ + 1.4 

CHAIN X3RebJ 1.3 
~Thank you, <CHARNAME>. I hope the creatures out there are as considerate as you with my state, as unlikely as that will be.~ 
EXIT 

CHAIN X3RebJ 1.4 
~I saw old companions back in the Sword Coast, Sir Mark and the Oghma scholars...just lying about, in a river of blood, all from the stabs of a knife. And then I saw Raban, and he was looking at me with eyes as fear.~
== X3RebJ ~And then when I looked at my own hand, I saw the weapon. I do not know if I want to wield a dagger anymore.~
END 
++ ~It sounds like you are still blaming yourself, in your head, at least.~ + 1.7 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ ~I remember your old companions, at least Sir Mark. You weren't responsible for their deaths, either.~ + 1.8
++ ~It's just a nightmare. Don't let it bother you.~ + 1.9
++ ~There's no point in disregarding a weapon because of one nightmare.~ + 1.10 

CHAIN X3RebJ 1.5 
~Of...of course. I'll ensure I'm not inconveniencing anyone anymore.~
EXIT 

CHAIN X3RebJ 1.6 
~It just means I tend to wander, thinking of music, or the days events, or the past. It's calming, but sometimes it can stir demons I'd rather not remember.~
END 
++ ~What was it about? Maybe talking about it will help.~ + 1.4
++ ~We can delay a little longer if you like. Adventuring tired won't help the others.~ + 1.2 
++ ~It inconveniences us when you can't take care of yourself. Push through the dreams and get more rest next time.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 1.5

CHAIN X3RebJ 1.7
~Even after recreating my identity, I still feel so much guilt when I think of them. Do you not with friends and loved ones you've lost~
END 
++ ~I'd rather not think about them right now.~  + 1.13
++ ~I do, admittedly. Even now I wish I could have saved their lives.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 1.11 
++ ~I don't. Ultimately survival is their own responsibility.~ + 1.12 




CHAIN X3RebJ 1.8 
~I was responsible for their lives. We were a company meant to take care of each other. It isn't so easy to let go of the guilt. Isn't it difficult for you, for past friends or loved ones you've lost?~
END 
++ ~I'd rather not think about them right now.~  + 1.13
++ ~I do, admittedly. Even now I wish I could have saved their lives.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 1.11 
++ ~I don't. Ultimately survival is their own responsibility.~ + 1.12 

CHAIN X3RebJ 1.9 
~You are probably right. I'll probably not even remember it by tomorrow. I'll just stop letting it sting me so much.~
EXIT 

CHAIN X3RebJ 1.10 
~That is sensible. But my heart just dreads the idea of holding one for the moment.~
EXTERN X3RebJ 1.7 

CHAIN X3RebJ 1.11 
~That is the pain I feel. But I guess we can take solace, that they won't be forgotten, and we will always remember them. I can find a little bit of comfort in that.~
EXIT 

CHAIN X3RebJ 1.12 
~Not always...sometimes things are out of your power, or...you are just a child, and the world is just very, very cruel. In those situations, I believe survival is not in your hands alone.~ 
EXIT 

CHAIN X3RebJ 1.13 
~I understand. We probably should get traveling. This talk has been enough to wake me up.~
EXIT 


//LoveTalk #2

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",4)~ THEN X3RebJ LoveTalk2
~Recorder. I don't remember what I was thinking when I picked that name. I could have picked Lily, or Olivia, or Peony, I've always liked flowers.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~Why not your real name, Rebecca? I like it well enough.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 2.1 
++ ~I've wondered myself. It seems a fine enough stage name, but we're adventuring. You could just use your name.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 2.1 
++ ~Recorder, are you talking to yourself?~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 2.3 
++ ~Stay focused. This isn't the time for idle thoughts.~ + 2.X 

CHAIN X3RebJ 2.X 
~O-of course, <CHARNAME>. Sorry.~
EXIT 

CHAIN X3RebJ 2.1
~I dropped Rebecca to protect myself, though it hasn't done myself much good. I also dropped it because I wanted to feel different, but that hasn't worked well either.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ 2.Vienxay1 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3RebJ 2.4 

CHAIN X3VieJ 2.Vienxay1 
~None of your names have any flourish to them at all. I could think of a thousand far better things, though I suppose your choice works for a gnome.~
== X3RebJ ~If I wanted your vile opinion on it, Vienxay, I would have asked for it.~
END 
++ ~There's no need to be snooty, Vienxay.~ + 2.Vienxay2 
++ ~Vienxay has a point, Recorder. You could perhaps consider something more fanciful.~ EXTERN X3RebJ 2.Vienxay3  
++ ~Come on now, stop the needless bickering.~ + 2.Vienxay4 

CHAIN X3VieJ 2.Vienxay2 
~Hrmph, I would say there is no need to overly pitiful of her either, but do as you will.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@503)~ 
EXTERN X3RebJ 2.4 

CHAIN X3RebJ 2.Vienxay3 
~That isn't me, though. I wouldn't want to pretend to be some noble.~
EXTERN X3RebJ 2.4 

CHAIN X3VieJ 2.Vienxay4 
~It is mere advice. It can't be bickering if there is no dispute who is right.~
EXTERN X3RebJ 2.4

CHAIN X3RebJ 2.3 
~Uh, maybe. Just thinking aloud, I guess. Now I feel a bit embarrased. Forget I said anything.~
EXIT 

CHAIN X3RebJ 2.4 
~This makes me think, if you could choose a different life for yourself, would you still want to be where you are now?~
END 
++ ~I've never thought of that, really.~ + 2.5 
++ ~If circumstances were different, perhaps.~ + 2.5 
++ ~Not really, no. I can't imagine myself doing anything else.~ + 2.5

CHAIN X3RebJ 2.5 
~I think I would have been a performer. If I didn't feel the need to please my mother's wishes, I would want to be going to tavern to tavern, playing for crowds and seeing all sorts of cities, from the sprawling schools of Waterdeep to Althkata's splenderous markets.~
END 
++ ~You would make a fine performer, Recorder. Your music is wonderful.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 2.6 
++ ~What about the call of adventure? That life sounds dull.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 2.7
++ ~Unfortunately rarely is it so easy to choose. Often we are set with the choices before us.~ + 2.8

CHAIN X3RebJ 2.6
~Thank you, that is what I would want others to feel. I do love the adventuring life, though, and for now I can be satisfied with just being able to play a while when we make camp.~
EXIT 

CHAIN X3RebJ 2.7 
~Oh, the adventuring life is wonderful, if a bit stressful at times. I'm not going to stop anytime soon, but it's not the best long-term career if you want to have a long life!~
EXIT 

CHAIN X3RebJ 2.8
~That is rather insightful. It is true that often our lives are not as full of choice as we would like. But we can still hope and dream for a future of our own desire.~
EXIT 

//Love Talk#3 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",6)~ THEN X3RebJ LoveTalk3
~We've faced a multitude of dangers so far, yet you always seem...so focused and certain. Are you afraid of anything?~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~I'm afraid of losing my companions. They are precious to me.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 3.1 
++ ~I do not fear anything. My power sees me through.~ + 3.2
++  ~Aye, sometimes. But if I let it take over, then I offer an exploitable weakness.~ + 3.3 
++ ~I would rather not discuss that with you, Recorder.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 3.X

CHAIN X3RebJ 3.X 
~Erm, as you wish, then. Forget my question.~
EXIT 

CHAIN X3RebJ 3.1 
~I understand dearly. I think that would be hard for anyone, even if we all know the risks.~
EXTERN X3RebJ 3.4 

CHAIN X3RebJ 3.2 
~I can't imagine what that is like. Being so self-confident in your own power to see you through. It seems dangerous as it would be comforting.~
EXTERN X3RebJ 3.4

CHAIN X3RebJ 3.3 
~I think there is truth in that. I remember a strategist from a war college in Amn mentioning to some scholars in the church how others can sense fear and weakness and sieze on it, pronting them to push an aggressive front.~
EXTERN X3RebJ 3.4 


CHAIN X3RebJ 3.4 
~I am terrified of lightning. From the clouds, or when it bounces around in magic. It is so fast you can't even predict it, or make very little logical conclusions of where it may hit. The only knowledge I have on it is it really hurts.~
== X3RebJ ~It makes me dislike sleeping alone on a stormy night.~
END 
++ ~Just lightning? I thought you would be afraid of more then that.~ + 3.5 
++ ~I'm not much a fan of storms, myself.~ + 3.6
++ ~You can always put your bedroll next to mine.~ + 3.7

CHAIN X3RebJ 3.5 
~What are you trying to say? I'm *not* a scaredy-gnome.~
EXTERN X3RebJ 3.8 

CHAIN X3RebJ 3.8
~Forget I said anything. Now I just feel embarrased about myself.~
EXIT 

CHAIN X3RebJ 3.6
~I'm not sure I believe that, to be honest. In all of my records of you and observations...you seem almost...~
EXTERN X3RebJ 3.8

CHAIN X3RebJ 3.7 
~W-what? *Blush*, no, that's not necessary at all! ~
EXTERN X3RebJ 3.8

// Love Talk #4

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",8)~ THEN X3RebJ LoveTalk4 
~I'm sorry for my words earlier. I shouldn't have felt so slighted when we discussed our fears.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~You aren't usually so easily offended.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 4.1
++ ~Don't worry about it, Recorder. It's nothing to be ashamed about.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 4.2 
++ ~Forget it, Recorder. Let's just move on.~ + 4.X

CHAIN X3RebJ 4.X 
~A-as you wish, then.~
EXIT 

CHAIN X3RebJ 4.1 
~Not usually. I consider myself rather composed and hard to anger.~
EXTERN X3RebJ 4.3 

CHAIN X3RebJ 4.2 
~It is something to be ashamed about. I shouldn't let something small frustrate me.~
EXTERN X3RebJ 4.3 

CHAIN X3RebJ 4.3 
~When I gave myself the name Recorder years ago, I wanted to shed those silly fears. I wanted to see the world, partially to be safe from Phelgrim, but also to feel the sense of wonder.~
== X3RebJ ~I thought I was good at being brave and...maybe even a little heroic. But after being found by Phelgrim, I don't think I've ever been more afraid.~
END 
++ ~Afraid of what, exactly? Storms, death?~ + 4.4
++ ~He isn't here. He can't hurt you.~ + 4.4 
++ ~If you were stronger, then you wouldn't feel this way.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 4.6 

CHAIN X3RebJ 4.4 
~I am afraid of losing my freedom. Dying is easier, I think, and I learned that when I tried to escape with Raban. You can fight or you can succumb to your fate. But when you are chained, you can't do that anymore.~
== X3RebJ ~Lightning is like that. It can paralyze you...hence my fear. Slavery is just like that.~
END 
++ ~You're afraid of things circling back to the past, then.~ + 4.7 
++ ~From what it seems like, you're more likely to be killed than enslaved.~ + 4.8 
++ ~I won't let that happen Recorder. You don't need to worry about that.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 4.9

CHAIN X3RebJ 4.6 
~If. And I can try. But I don't know if that is the sort of strength I can come to possess.~
EXIT 

CHAIN X3RebJ 4.7
~I am. History often repeats itself, not just for nations, but for people. I've heard of many tales of free slaves becoming repossesed, or worse, under the capture of another person.~
EXTERN X3RebJ 4.10

CHAIN X3RebJ 4.8
~That is...oddly comforting, and probably true. What a horrible thing for me to take relief from.~
EXTERN X3RebJ 4.10

CHAIN X3RebJ 4.9
~I sometimes wonder if you realize just how protective you come off others, <CHARNAME>. It's...attractive- I mean- erm... oh nevermind.~
EXIT 

CHAIN X3RebJ 4.10
~Fate has shown its cruel hand before. And if we aren't careful, its grasp will come to us as well.~
EXIT 

// Love Talk#5 
//Note: No Approval Changes here

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",10)~ THEN X3RebJ LoveTalk5
~(You catch Recorder eying you for a long while she has her flute in her fingers, piping a few soft, low-pitched notes.)~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~Uh, what is it Recorder? You're staring.~ + 5.4
++ ~Thinking of me while you are playing?~ + 5.2 
++ ~Look ahead at the path, Recorder. This isn't the time to risk getting caught unaware.~ + 5.1

CHAIN X3RebJ 5.2 
~Ah, no no! *blush*. I was just dazing off.~
END 
+~Gender(Player1,MALE)~+ ~I have you that mesmerized, then?~ + 5.3M
+~!Gender(Player1,MALE)~+ ~I have you that mesmerized, then?~ + 5.3F
++ ~What were you thinking about?~ + 5.4 
++ ~Ha, just stay focused. I wouldn't want you to get hurt from being unaware.~ + 5.4

CHAIN X3RebJ 5.3M 
~You are a relentless teaser, <CHARNAME>. You are handsome, I'll admit.~
EXTERN X3RebJ 5.4

CHAIN X3RebJ 5.3F 
~You are a relentless teaser, <CHARNAME>. You are gorgeous, I'll admit.~
EXTERN X3RebJ 5.4

CHAIN X3RebJ 5.4 
~I am thinking about my father. Your smile reminded me of him. I haven't seen him since my escape from Phelgrim. All I have of him is my flute. I was describing one I found in my travels, and he sent me this. It's precious, but I wish I could have seen him in person.~
END 
++ ~Couldn't he have come and seen you, before you started traveling with me?~ + 5.5 
++ ~Did you never get the chance to visit him in Lantan?~ + 5.6 
++ ~Perhaps you'll get to see him someday.~ + 5.5

CHAIN X3RebJ 5.5 
~I don't know. Father was always...deep into his work. While I'll never know for certain, I think that was one reason my parents eventually believed their marraige was just one of Garl's pranks, he loved his duties more than my mother.~
END 
++ ~What do you mean by one of Garl's pranks?~ + 5.7
++ ~I can admire someone who has a passion for their work, though not at the expense of family.~ + 5.8 
++ ~Do you have any other family?~ + 5.11

CHAIN X3RebJ 5.6 
~No, I never did. I was working on biographing everything going on in Baldur's Gate. I'm like him in a way, always prioritizing my work. I think that was one of the reasons my parents believed their marriage was just one of Garl's pranks, he loved his duties more than my mother.~
END 
++ ~What do you mean by one of Garl's pranks?~ + 5.7
++ ~I can admire someone who has a passion for their work, though not at the expense of family.~ + 5.8 
++ ~Do you have any other family?~ + 5.11

CHAIN X3RebJ 5.1 
~Oh! Sorry...I was just dazing off. I'm putting away my flute now.~
DO ~SetGlobal("TalkSkipped","LOCALS",1)~
EXIT 


CHAIN X3RebJ 5.7
~It's a phrase  we use in Lantan. There's a bit of humor based in how we engage in these sort of things. If you can't have a good laugh, even at your own expense, it's hard to be a good spouse to someone.~
EXTERN X3RebJ 5.8 

CHAIN X3RebJ 5.8
~I do wish my father did make more time for other things. Even I took a break now and then for bonding with mother and the other scholars, but if he's happy, I'm happy.~
END 
++ ~You don't *sound* happy. You sound more resigned.~ + 5.9 
++ ~You don't have to accept that. You can demand more of him.~ + 5.9
++ ~It sounds as if you aren't as important to him as you think.~ + 5.9

CHAIN X3RebJ 5.9
~I guess. At least your father isn't alive to dissapoint you.~
EXTERN X3RebJ 5.10

CHAIN X3RebJ 5.10 
~Erm, what am I even saying? *Sigh*. I'm just going to be quiet before I say something else that is rude.~
EXIT 

CHAIN X3RebJ 5.11 
~No, actually. I wish I had siblings, or even much extended family to talk about, but it was really just us. It could make it lonely sometimes growing up, even if I did enjoy reading all of the books my father was binding and repairing.~
EXTERN X3RebJ 5.8

//Love Talk#6
//Note: Two variations of six. One if five was skipped, the other if it was not. 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",12)Global("TalkSkipped","LOCALS",1)~ THEN X3RebJ LoveTalk6Alt 
~Do...do you think me annoying? I try not to ramble, but you didn't seem interested in conversation last time I tried to speak.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Vienxay4 
++ ~Do not stress yourself over it. It just wasn't the time.~ + 6.1
++ ~Why do you think that of yourself?~ + 6.1
++ ~You're right, Recorder. I do find you annoying.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.Vienxay3 // Breaks romance. 
++ ~I'm just not in the mood to chat. Nor am I in the mood now.~ + 6.X  

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",12)!Global("TalkSkipped","LOCALS",1)~ THEN X3RebJ LoveTalk6
~I keep feeling the need to apologize. I shouldn't have said what I did about your father. I must seem so annoying to you.~
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Vienxay1 
++ ~It was an honest mistake. Do not stress yourself over it.~ + 6.1
++ ~Why do you think that of yourself?~ + 6.1
++ ~You're right, Recorder. I do find you annoying.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.Vienxay3 // Breaks romance. 
++ ~Forget it and move on Recorder. Bringing it up now isn't the right time.~ + 6.X  

CHAIN X3VieJ 6.Vienxay4 
~Are you that insecure you must constantly seek their reassurance for everything? It's quite pathetic.~
EXTERN X3RebJ 6.Vienxay5

CHAIN X3VieJ 6.Vienxay1 
~Quite annoying. Must you always seek their validation? I find it quite pathetic.~
EXTERN X3RebJ 6.Vienxay5

CHAIN X3RebJ 6.Vienxay5 
~Why do you feel the need to butt in, Vienxay? All you ever do with your tongue is spew insults left and right.~
== X3VieJ ~Tsk tsk. Jealousy looks so hideous on you. There's no need to string her along, <CHARNAME>. Tell her.~
END 
++ ~I'm not stringing her along, Vienxay. I care about Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@506)~ EXTERN X3VieJ 6.Vienxay2 
++ ~Vienxay has a point. Have a spine, Recorder. Stop constantly seeking my reassurance.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~ + 6.Vienxay3 
++ ~Leave her alone, Vienxay. She's certainly not as frustrating as you are.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@506)~ EXTERN X3VieJ 6.Vienxay2 
++ ~You're right, Recorder. I do find you annoying.~ + 6.Vienxay3 

CHAIN X3RebJ 6.1 
~Maybe it is just the times, or how long I have been on the road, but I always try to be careful with how I speak. Lately I feel...less than my usual self, I guess.~
== X3RebJ ~I could repay your patience by sharing an encounter I had with Gorion if you like? It was actually how I first learned of you.~
END 
++ ~I would like to hear it.~ + 6.2 
+~!Global("X3RebPartyBG1","GLOBAL",1)~+ ~You knew Gorion?~ + 6.3
+~Global("X3RebPartyBG1","GLOBAL",1)~+ ~I remember you telling me a little about your time with him.~ + 6.4
++ ~Maybe another time, Recorder.~ + 6.X 

CHAIN X3VieJ 6.Vienxay2 
~Hrmph. Fools will be fools, then.~ 
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXTERN X3RebJ 6.1

CHAIN X3RebJ 6.X 
~Oh. I-I understand, then. Another time.~
EXIT 

CHAIN X3RebJ 6.Vienxay3 
~I'll...I'll just shut up then. You won't have to worry about me being annoying anymore.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3RebJ 6.2
~We were in the library, going over some abjurative wards. He was quite fond of shields against magical energies and was intent on learning a way to project it onto another.~
== X3RebJ ~He spoke so gushingly of you, and Imoen too. I could feel in him the love, but also of some protective instinct. You were his everything. The way he talked reminded me so much of how I felt when I had Raban just so...so...~
END 
++ ~Are you all right?~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 6.3 
++ ~So...?~ + 6.4
++ ~Not again. You need to get past this.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.5

CHAIN X3RebJ 6.3 
~I will be. I just need some more time it seems. But it is nice to try to push past the pain a little more each time with you.~
EXIT 

CHAIN X3RebJ 6.5 
~I know, and I will. I just need more time. But it is nice to try to push past the pain a little more each time with you.~
EXIT 

CHAIN X3RebJ 6.4 
~I...I don't think I can continue. I just need some more time it seems. But it is nice to try to push past the pain a little more each time with you.~
EXIT 

// LoveTalk #7


CHAIN IF ~Global("X3RebLoveTalk","LOCALS",14)~ THEN X3RebJ 7
~I remember something I learned from one of the monks in Candlekeep. About the meaning of the sharing of knowledge and experiences with one another, and how they help us connect with people.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~And what was this about?~ + 7.1
++ ~Go on.~ + 7.1
++ ~This isn't the time for one of your stories.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~  + 7.X

CHAIN X3RebJ 7.1
~The knowledge we gain from tomes and manuals helps us achieve greater understanding. But the experiences we gain from the lessons of life help us achieve greater empathy and love.~
== X3RebJ ~I'll never forgive myself about Raban. I know that now. But I am not alone. With the people we've come across in our own journeys, and all around the world, everyone has suffered. Everyone has felt pain. But they all keep on living. And that's the beauty in living, even through hardship.~
== X3RebJ ~And as a bard, I have the power to have their experiences be added to the weave of history. I have the ability to help people remember those who were not fortunate, and keep their lessons preserved, even my own failures.~
END 
++ ~It sounds like you've come to terms with your pain. I'm glad.~  DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 7.3 
++ ~It took you long enough.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 7.2
++ ~That is a beautiful belief. I find myself liking your thoughts.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 7.3

CHAIN X3RebJ 7.2 
~I'm sorry for...languishing on things so much. But now I think I have the strength to really look forward.~
 EXTERN X3RebJ 7.3 
 
CHAIN X3RebJ 7.3 
~I have you to thank really. Your patience and listening has made it a lot easier to come to this place.~
== X3RebJ ~I guess when I finish with the record of  your journey, you'll be more than just a hero for others, but for me, too.~
END 
++ ~Heh. You look up too fondly at me, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 7.4 
++ ~What can I say? I can't let a beautiful gnome suffer.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 7.5 
++ ~Only to those who are useful to me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 7.6

CHAIN X3RebJ 7.4 
~It is easy to be charmed by you, though. Strong, heroic, and just this aura about you that makes things seem okay, even as we trek into dangerous places.~
== X3RebJ ~Just don't let all of that get into your head now that I said it or tease me about it later. But...I am quite glad that I met you.~
EXIT 

CHAIN X3RebJ 7.5 
~Oh. You're making me blush. You really are like the heroes they write about in legend.~
EXTERN X3RebJ 7.4 

CHAIN X3RebJ 7.6 
~I...it is just about use then? Maybe I had things wrong in my head. I thought you were different. I guess I was overthinking everything.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~
EXIT 
 
CHAIN X3RebJ 7.X 
~If that is how you feel, I'll save it for another time, perhaps.~
EXIT 




CHAIN IF ~Global("X3RebLoveTalk","LOCALS",16)~ THEN X3RebJ LoveTalk8
~I was never really well trained in combat, but what do you think about my skills in weapons?~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
IF ~Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 8.Kale
++ ~You're a sharp eye at ranged. It's proven its value more than once.~ + 8.2 
++ ~To be honest your skills with weapons is rather lacking, even for a bard.~ + 8.2 
++ ~I've never valued your combat skills, but instead your music and magic.~ + 8.2 
++ ~Why do you ask?~ + 8.2 


CHAIN X3RebJ 8.1 
~That was...well nevermind that. I think I was asking your thoughts on my skills with weapons.~
END 
++ ~You're a sharp eye at ranged. It's proven its value more than once.~ + 8.2 
++ ~To be honest your skills with weapons is rather lacking, even for a bard.~ + 8.2 
++ ~I've never valued your combat skills, but instead your music and magic.~ + 8.2 
++ ~Why do you ask?~ + 8.2 

CHAIN X3RebJ 8.2 
~All this time, I've really only tried to improve my mind and knowledge, that I feel like I've neglected other skills.~
== X3RebJ ~Even in the art of weapons, there are different styles, and schools of thought, and strategies. I want to learn those things, <CHARNAME>. I want to be the best version of me I can.~
END 
++ ~Rounding yourself out? I think that is a fine pursuit.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 8.3 
++ ~Try as you might, I don't think you're ever going to be a good warrior.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 8.4 
++ ~I like the version of you that you are now, Recorder. You don't have to be perfect.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 8.4 
++ ~We best keep moving.~ + 8.X 

CHAIN X3RebJ 8.X 
~Oh...I'll stop rambling on, then.~
EXIT

CHAIN X3RebJ 8.3 
~It will be difficult. I'm...not very physically strong, or quick. But I have the will to try as hard it takes, to be the best me.~
EXTERN X3RebJ 8.5 

CHAIN X3RebJ 8.4 
~I know you are probably right. But that doesn't mean I should settle, or try. If I rely only on my magic, there could come a day where that is not a tool I can use, and I want to always be able to help you.~
EXTERN X3RebJ 8.5 

CHAIN X3RebJ 8.5 
~Evil comes in many forms. And I want to be prepared for all of them, so they can be stopped, your foes, or any others.~
EXIT 

 



CHAIN X3KalJ 8.Kale
~Oh come on now, Recorder. That's the lamest come on I've ever heard.~
== X3RebJ ~What are you talking about? Why are you being so crass?~
== X3KalJ ~Don't try to deny it. You get all bothered thinking about it, eh? Too bad it's one-sided. I can think of someone else <CHARNAME> is more interested in.~
END 
++ ~Do you mind Kale? She was asking me a question.~  + 8.Kale1
++ ~Kale's right. There is uh, someone else.~ EXTERN X3RebJ 8.Kale3
++ ~I think you assume too much of yourself, Kale.~ + 8.Kale2
++ ~Recorder and I are just friends, Kale. I never assumed this was anything else.~ EXTERN X3RebJ 8.Kale3

CHAIN X3KalJ 8.Kale2 
~Damn. I guess I got overconfident for once. Well, I know when to butt out, I'll just watch our back. Cheers!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXTERN X3RebJ 8.1


CHAIN X3KalJ 8.Kale1 
~Because she likes you. But I can think of someone strong, and handsome to boot that you prefer. Let her down gently, eh?~
END 
++ ~I think you assume too much of yourself, Kale.~ + 8.Kale2
++ ~Recorder and I are just friends, Kale. I never assumed this was anything else.~ EXTERN X3RebJ 8.Kale3

CHAIN X3RebJ 8.Kale3
~R-right. We're just friends. I understand~
== X3KalJ ~Ha, I was right! Hear that tone of dissapointment. You sure know how to let them down.~
== X3RebJ ~Just leave me alone, Kale. You've had your fun.~
DO ~SetGlobal("X3RebAppChange","GLOBAL",5)SetGlobal("X3RebRomanceActive","GLOBAL",3)~
EXIT

// LoveTalk 9

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",18)~ THEN X3RebJ LoveTalk9
~My feet are so sore. I am glad we are stopping. Do you mind...sitting with me for a while?~ [X3RLS]
DO ~SetGlobal("X3RebAppChange","GLOBAL",6)IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)InParty("X3Emi")~ EXTERN X3EmiJ 9.Emily1 // Emily Conflict. 
++ ~Certainly. Let me make myself comfortable.~ + 9.1 
++ ~What did you want to talk about?~ + 9.1 
++ ~Not right now. I just want to get some rest.~ + 9.X 

CHAIN X3RebJ 9.X 
~Sleep well then, <CHARNAME>.~
DO ~RestParty()~
EXIT 



CHAIN X3EmiJ 9.Emily1 
~Is there something going on between you two? Oops. That was rather blunt of me.~
== X3RebJ ~Erm...I'm not sure how to answer that.~
== X3EmiJ ~You've gotten rather close is all. I admit it's...well, I just thought...~
END
++ ~There's no need to over-react, Emily. We're just friends.~ EXTERN X3RebJ 9.Emily2 
++ ~I apologize for misleading you, Emily.~ + 9.Emily3
++ ~I'm fond of Recorder, Emily, though don't pressure me to label anything.~ + 9.Emily3 
++ ~No need to be jealous, Emily. You are the special one to me.~ EXTERN X3RebJ 9.Emily2 

CHAIN X3RebJ 9.Emily2 
~I...didn't know you felt that way Emily. I'm glad we got this over with now before things got awkward.~
== X3EmiJ ~Right. I'm er, sorry for interrupting. I'll leave you alone.~
== X3RebJ ~I'm actually more tired than I thought. I think I'll get some rest.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)SetGlobal("X3RebAppChange","GLOBAL",5)RestParty()~
EXIT 

CHAIN X3EmiJ 9.Emily3 
~Well, I'm happy for my friend then. I'll not be in the way of whatever this is. I'm going to shoot a few arrows before I get some rest.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@103)~
== X3RebJ ~*sigh*. I hope she isn't upset with me.~
END 
++ ~She seems understanding, actually. But what did you want to talk about?~ EXTERN X3RebJ 9.1
++ ~She'll live. I don't think it would have worked out anyway, considering her station.~ EXTERN X3RebJ 9.Emily5 
++ ~If she is as good as a friend as it seems, she'll come around.~ EXTERN X3RebJ 9.Emily4 

CHAIN X3RebJ 9.Emily4 
~I hope so. I owe her so much.~
EXTERN X3RebJ 9.1 

CHAIN X3RebJ 9.Emily5 
~I can understand your decision. But let us talk about something else.~
EXTERN X3RebJ 9.1

CHAIN X3RebJ 9.1 
~I remember when I first started adventuring. I was terrified of everything. Sir Marc Harmon had always kept me in check and reminded me of how important it was to keep a cool head.~
END 
++ ~You've not told me much of your first adventures.~ + 9.2
++ ~You are quite different now. Stronger and braver.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 9.3
++ ~You still are terrified of many things.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 9.4 

CHAIN X3RebJ 9.2 
~I would be glad to share it to you. I don't count...anything before my freedom as an adventure, so this is after I left Amn to go north.~
EXTERN X3RebJ 9.5 

CHAIN X3RebJ 9.4
~You don't have to be mean, <CHARNAME>. But maybe you are just giving your view. I should respect it.~
EXTERN X3RebJ 9.5 

CHAIN X3RebJ 9.3 
~I had to learn that. I can remember the first time I saw just how dangerous traveling can be.~
EXTERN X3RebJ 9.5

CHAIN X3RebJ 9.5 
~I remember I was traveling from Baldur's Gate to Candlekeep. I traveled with a caravan to Baldur's Gate from Amn but that was rather uneventful.~
== X3RebJ ~Iron had started to be contaminated and the bandits beginning to form around the land. I met my first hobgoblin on that journey. They were using a cliff for high ground and fired arrows down at us when we got too close unawares.~
== X3RebJ ~I fired my crossbow back at them as Marc pushed forward with his shield out. One of them pierced my arm with an arrow and I lost the grip on my weapon and it dropped to the ground. I thought that was it for a moment, but Marc covered me with his shield before charging up the hill.~
== X3RebJ ~It was my first sight of courage. Before then I only saw his poor attempts of womanizing in taverns...it made me realize just how deep people can be.~
END 
++ ~What happened after that?~ + 9.6 
++ ~He sounds like he was a good man.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 9.7
++ ~Heh. Had he traveled with me, he'd have seen some true heroics.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 9.8

CHAIN X3RebJ 9.6 
~He helped nurse my arm and we made our way to Candlekeep. I thanked him by being a little less harsh on his flirting distractions. I wish he was still here.~
EXTERN X3RebJ 9.9

CHAIN X3RebJ 9.7 
~A very good man. Sometimes silly...but I think that just made him even more wonderful. I wish he was still here.~
EXTERN X3RebJ 9.9

CHAIN X3RebJ 9.8
~It isn't a competition. But...I think he would have definitely loved traveling with you. I wish he was still here.~
EXTERN X3RebJ 9.9 

CHAIN X3RebJ 9.9
~I should get some rest, but thanks for listening. Talking with you is always so soothing. (She moves to squeeze your hand.)~
END 
++ ~(Squeeze back.)~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 9.10
++ ~Goodnight, Recorder.~ + 9.10 
++ ~(Move your hands away from her reach.)~ + 9.11 
++ ~I'm sorry Recorder, but I don't like you that way.~ + 9.11 

CHAIN X3RebJ 9.10 
~(She smiles at you, blushing slightly, before turning to move to her bedroll.)~
DO ~RestParty()~
EXIT 

CHAIN X3RebJ 9.11 
~Oh erm, sorry. I don't know what I was thinking. Sleep well.~
DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

//Love Talk #10

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",20)~ THEN X3RebJ LoveTalk10 
~(You notice Gustav, Recorder's ferret, escaping his bag and moving around your feet.)~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~(Give him a treat.)~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.1 
++ ~(Pick him up and pet him.)~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.2 
++ ~(Bat him away.)~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 10.3
++ ~(Ignore him.)~ + 10.X 

CHAIN X3RebJ 10.X 
~(After a few dissapointed noises, the ferret eventually darts about and back into his owner bag, Recorder oblivious all the while.)~
EXIT 

CHAIN X3RebJ 10.1 
~(The creature purrs as you feed it, making several content noises.~
== X3RebJ ~Gustav? How did you get over to <CHARNAME>? Heehee, convincing others to give you food, I see.~
END 
++ ~He's quite the loveable ferret.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.4 
++ ~I don't know how you can stand his behavior all the time. He'd drive me crazy.~  + 10.5 
++ ~Just try not to lose him. It's not necessarily safe.~ + 10.9

CHAIN X3RebJ 10.2 
~(The creature purrs at the attention, rubbing its head against you.~
== X3RebJ ~Gustav? Heehee, it seems he really likes you.~
END 
++ ~He's quite the loveable ferret.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.4 
++ ~I don't know how you can stand his behavior all the time. He'd drive me crazy.~ + 10.5 
++ ~Just try not to lose him. It's not necessarily safe.~ + 10.9

CHAIN X3RebJ 10.3 
~(The ferret makes a hissing noise at you, followed by a couple of loud cries.)~
== X3RebJ ~Gustav? What are you doing outside of my pack? I'm sorry if he annoyed you.~
END 
++ ~Oh don't worry, he just startled me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.4
++ ~I don't know how you can stand his behavior all the time. He'd drive me crazy.~ + 10.5 
++ ~Just try not to lose him. It's not necessarily safe.~ + 10.9 

CHAIN X3RebJ 10.9
~Right. I'll be more careful, though Gustav is a very brave ferret. Sometimes I think he looks out for me more than I do to him.~
EXTERN X3RebJ 10.4

CHAIN X3RebJ 10.5 
~(Laughs) Oh, you assume he doesn't? He's the worst when he gets dirty and there's nowhere to bathe him nearby, and he gets the dirt all over me when I sleep. But I love him.~
EXTERN X3RebJ 10.4

CHAIN X3RebJ 10.4 
~I like to believe that he reminds me about the little joys in life. In our journeys we've seen so much sadness and death and sometimes I think that grimness gets to us.~
== X3RebJ ~But if we can remember the little joys...the little furballs and why we are doing what we are doing, I think it gives us such important levity.~
END 
++ ~That is quite true, Recorder. I wouldn't mind having Gustav come to me more if that's his secret magic.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.6 
++ ~It is hard to remember that out here. What we do is a heavy task.~ + 10.7
++ ~That's a rather silly belief. A little naive, don't you think?~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 10.8

CHAIN X3RebJ 10.6
~Oh, you'll have to try harder then that to win Gustav away from me. (Winks) But, I'll let you borrow my baby from time to time.~
EXIT 

CHAIN X3RebJ 10.7
~It is. But if all we focus on is the road ahead, then we can't find the needed levity to make the load a little lighter. That is the power in small things, a power that shouldn't be underestimated, if one can remember it.~
EXIT 

CHAIN X3RebJ 10.8
~I don't. Even the poorest person can find a moment of joy in just watching a dog dart by and greet in its excited way, or a little child playing from out their window. Any joy and motiviation is better than pure grimness and more self-weight. This I learned recently...and I think it would do us all well to remember it.~
EXIT 

//Love Talk #11 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",22)~ THEN X3RebJ LoveTalk11
~Can I play something for you, before you rest? I've been practicing it for a while when on watch, but I want to play this. It's a song, for you.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~Certainly.~ + 11.1 
++ ~I wouldn't mind listening.~ + 11.1
++ ~I'd rather not hear more of your music.~ + 11.12 
++ ~Another time. I am very weary.~ + 11.X

CHAIN X3RebJ 11.12 
~If...if you are sure. I'll leave you alone, then.~
DO ~SetGlobal("X3RebAppChange","GLOBAL",5)SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

CHAIN X3RebJ 11.X 
~I will ask you another night, then. Rest well.~
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",-2)RestParty()~
EXIT 

CHAIN X3RebJ 11.1 
~(You recognize the tune's motif from her playing several days back. She keeps your gaze as she plays, swaying a bit in a little dance. When she's done, she gives a timid bow.)~
DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~That was beautiful.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.2 
++ ~That was what you were playing when you were looking at me several days ago.~ + 11.3 
++ ~I'm afraid that's not your best performance, to be honest.~ + 11.4

CHAIN X3RebJ 11.2 
~Oh I am glad you liked it. I was so worried...I've never serenaded someone before, but I thought it could help lighten your mood.~
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ ~Recorder, I've delayed bringing this up, but I wanted to bring up how things ended in Dragonspear between us.~ + 11.8
++ ~This was for me?~ + 11.5
++ ~I feel quite honored. No one's ever serenaded me before.~ + 11.6 
++ ~Recorder, I need to ask you something.~ + 11.8

CHAIN X3RebJ 11.3 
~Y-yes. I can't lie. I was playing this song for you.~
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ ~Recorder, I've delayed bringing this up, but I wanted to bring up how things ended in Dragonspear between us.~ + 11.8
++ ~I feel quite honored. No one's ever serenaded me before.~ + 11.6
++ ~Recorder, I need to ask you something.~ + 11.8

CHAIN X3RebJ 11.4 
~Oh, I was worried it would be a disaster. I should have gone with a different theme, I should have thought of a better serenade for you.~
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ ~Recorder, I've delayed bringing this up, but I wanted to bring up how things ended in Dragonspear between us.~ + 11.8
++ ~This was for me?~ + 11.5
++ ~No, don't stress, Recorder. I'm honestly quite honored.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.6
++ ~Yes, you should have, though don't bother trying again. You've ruined my night.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",-2)~ + 11.7

CHAIN X3RebJ 11.5
~It was. You were the muse for this piece, and also its recipient.~
EXTERN X3RebJ 11.9

CHAIN X3RebJ 11.6
~I am quite suprised. You are attractive, <CHARNAME>. Certainly the type of person a bard would be compelled to play a piece for.~
EXTERN X3RebJ 11.9

CHAIN X3RebJ 11.7
~Those words are...cruel, and not how I wanted it to go. I'll just leave  you alone, then.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

CHAIN X3RebJ 11.8
~Y-yes?~
END 
++ ~I'm beginning to become very fond of you. I want to know if you return my feelings...if this is something we can proceed with.~ + 11.10 
++ ~Back in Dragonspear, you said there couldn't be a future between us. Is that still true?~ + 11.10 
++ ~Nevermind. I've lost my courage. This is a bad idea.~ + 11.10 

CHAIN X3RebJ 11.9
~I need to say this while I have my courage...but I really like you, <CHARNAME>. I've grown enamored, and with all the time we've spent together, I don't know if I want to keep stepping so lightly around this.~
== X3RebJ ~Am I crazy? Is there some chance that...you might feel the same?~
END 
++ ~(Kiss her.)~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",2)~ + 11.18
++ ~I do.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.10
++ ~You are crazy, I don't feel that way at all.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",-2)~ + 11.17

CHAIN X3RebJ 11.10 
~(She doesn't respond, but moves her hand towards your face.)~
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~ EXTERN X3RebJ 11.11S  // Short
IF ~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~ EXTERN X3RebJ 11.11T // Tall

CHAIN X3RebJ 11.11S 
~(She pulls you to herself, and presses her lips to yours. Her breathe feels slightly warm, before she pulls away abruptly.)~
END 
++ ~(Pull her back in for another kiss.)~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",2)~ + 11.14
++ ~That was...nice.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.13
++ ~You call that a kiss? That was as bad as smooching a gibberling.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",-1)~ + 11.15 

CHAIN X3RebJ 11.11T 
~(She tip-toes on her feet, and pulls you down to her, lips meeting yours. Her breathe feels slightly warm when you connect for the briefest moment, before she pulls away abruptly.)~
END 
++ ~(Pull her back in for another kiss.)~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",2)~ + 11.14
++ ~That was...nice.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.13
++ ~You call that a kiss? That was as bad as smooching a gibberling.~ DO ~IncrementGlobal("X3RebAppChange","LOCALS",-1)~ + 11.15 

CHAIN X3RebJ 11.15 
~What? How could y- I feel so embarrased. I'm just going to get some sleep. Forget this happened, it won't happen again.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT  

CHAIN X3RebJ 11.14 
~(She reciprocates your advance, her hands wrapping around your neck. A moment too soon you feel her withdraw, ever smiling.)~
EXTERN X3RebJ 11.16 

CHAIN X3RebJ 11.13 
~Yes...it was.~
EXTERN X3RebJ 11.16 

CHAIN X3RebJ 11.16
~I have a ferret to feed before he grows rebellious but...I hope we can do this again soon. Rest well, <CHARNAME>.~
DO ~RestParty()~
EXIT 

CHAIN X3RebJ 11.17
~Thank you for being honest with me before I did something stupid. I-I...wish you a good rest, <CHARNAME>.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

CHAIN X3RebJ 11.18
~She looks only slightly startled, before she reciprocates. You feel her warm breath briefly from her soft lips, before she pulls away).~
END 
++ ~(Pull her back in for another kiss.)~ + 11.14
++ ~That was...nice.~ + 11.13
++ ~I wish we did this a lot sooner.~ + 11.19

CHAIN X3RebJ 11.19
~Yes...so do I.~
EXTERN X3RebJ 11.16 


// Romance conflict

CHAIN IF ~Global("X3RebRomanceConflict","GLOBAL",1)~ THEN X3RebJ X3RebRomanceConflict
~I need to ask you something, <CHARNAME>. Do you have affections for someone else in our party?~ [X3RLS]
== X3RebJ ~We had a sweet moment. But I don't want to share, and I don't want to hurt someone else. If you have strong feelings for another, I understand, and won't get in the way.~ 
END 
++ ~If you want me to devote to yourself alone, then I choose to do this. Let us see how far this goes.~ + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + ~Then I won't waste your time. I have strong feelings for Aerie.~ + RC.Aerie
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + ~Then I'm going to admit something...odd, but I care for Jaheria as more than just my guardian.~ + RC.Jaheira
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + ~I will tell you the truth then. I care very much for Anomen.~ + RC.Anomen
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + ~Viconia has ensnared my heart.~ + RC.Viconia
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + ~I have grown close with Rasaad. I think he is good for me.~ + RC.Rasaad
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + ~It's a little wild, but I'm beginning to see myself with Neera.~ + RC.Neera
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + ~I'm beginning to fall for Sirene. I hope you understand.~ + RC.Sirene
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + ~I find Petsy charming. I think she is right for me.~ + RC.Petsy
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + ~It was all strange at first, but I think I am in love with Yvette.~ + RC.Yvette
+ ~Global("DornRomanceActive","GLOBAL",1)~ + ~I find myself deeply attracted to Dorn.~ + RC.Dorn
+ ~Global("HexxatRomanceActive","GLOBAL",1)~ + ~I am fond of Hexxat, Recorder.~ + RC.Hexxat
++ ~There is no one else but you, Recorder.~ + RC.1
++ ~I'm not interested in starting a relationship with anyone, nor talking about it.~ + RC.2
++ ~My feelings for you Recorder don't run as deep as you think. I'd rather be friends.~ + RC.2


CHAIN X3RebJ RC.Aerie
~I...see. Just take care of her. I see a little of myself in her. I think you'll do well together if you watch over her well.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Anomen
~I understand. I think you will do well together, even if I wonder about Anomen sometimes.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Jaheira
~Erm...well, it can't be as odd as your own biographer starting to do the same with you. But I'm glad you told me. I hope it works for you and her.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Viconia
~I...don't agree with your decision. But maybe you can bring out the best of Viconia. Maybe you will do well and show her how wonderful love can be.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Rasaad
~Rasaad is a good man, and a good choice. I can't be mad...instead I will hope the best for you both.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Neera
~Erm, well...as long as you know what you are getting into. At the very least, no day will be normal if it goes well for you.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Dorn
~I don't know what you see in that blackguard. But if that's what you want...then there is nothing further I have to say.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Hexxat
~I...was not expecting that you would feel that way about Hexxat. But if that is what your heart wants, I have nothing more to say.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Yvette
~I must admit...maybe it was fate for you two, how she came out of the portrait. I won't stand in the way of that. I hope it works out.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Petsy
~Petsy is lovely. Just watch over her well, and I think your bond will last a long time.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Sirene
~I do understand. Thank you for telling me. I hope things go well between you two.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.1
~That makes me happy. I want to see where this goes between us. I'm glad you do too.~
DO ~SetGlobal("X3RebAppChange","GLOBAL",9)SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)
SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("YvetteRomanceActive","GLOBAL",3)
SetGlobal("L3PetsyRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ 
EXIT


CHAIN X3RebJ RC.2
~Well...thank you for telling me this now. Before I-...well that doesn't matter anymore.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3) SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ 
EXIT
 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",24)~ THEN X3RebJ LoveTalk12
~There is something I find difficult when I am taking the time to write down our travels. And it's how to describe you, physically that is.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",7)~
END 
++ ~Is it so hard? I could give you a closer preview if you need to find the words.~  + 12.1 
++ ~I could give you a few suggestions, if you like.~ + 12.2 
++ ~I do not think that is important. I would rather let my deeds speak for me.~ + 12.3

CHAIN X3RebJ 12.1 
~*Blush*. Must you say things like that? Not that I would mind...~
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.2 
~Like what?~
END 
++ ~Clever and intelligent.~ + 12.4 
+~Gender(Player1,FEMALE)~+ ~Gorgeous and striking.~ + 12.5F 
+~Gender(Player1,MALE)~+ ~Handsome and dashing.~ + 12.5M 
++ ~Just an average person.~ + 12.6

CHAIN X3RebJ 12.6 
~Average? I think we can agree you are far from that.~
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.4 
~Clever and intelligent, hmm? I do not think those are "physical" traits, <CHARNAME>, heehee.~
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.5F 
~I know you are gorgeous. There is no question about that.~
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.5M
~I know you are handsome. There is no question about that.~
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.7
~It is just that everyone will wonder just who you were. Tall, short, straight hair, curly hair, blue eyes, green eyes. And history has shown to get those details wrong.~
== X3RebJ ~Heehee, I suppose there is nothing wrong with someone using their imagination to feel the gaps.~
END 
++ ~Then do just that. Let them imagine it.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 12.8
++ ~Well we can't have that, can we? Give me the best details. And don't mention any skin flaws.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 12.9
++ ~I don't know if I'm comfortable being seen that way.~ + 12.10

CHAIN X3RebJ 12.8
~I like that idea. Where words can't describe it, maybe imagination is the real answer.~
== X3RebJ ~(She takes your hand and squeezes it.) Maybe in their imagination, they'll find the words that I can't to describe just how great you are.~
EXIT 

CHAIN X3RebJ 12.9
~Skin flaws? Erm, I will confess, those make you even more attractive. And really bring you to life, I think that is what I will do.~
== X3RebJ ~I am kidding <CHARNAME>, do not worry. Your request is heard...but I was honest when I meant they do make you more attractive.~
EXIT 

CHAIN X3RebJ 12.10
~As a hero? I can understand your point I think, and respect it. Maybe I will leave it be and not stress over that too much.~
== X3RebJ ~But you are a good <PRO_MANWOMAN>. People look up to you. I look up to you. And that isn't a bad thing at all.~
EXIT 


CHAIN X3RebJ 12.3 
~I am not sure if you are being modest, or humbly bragging. (She laughs).~
EXTERN X3RebJ 12.7


// This talk will set the love trigger to 2. 
CHAIN IF ~Global("X3RebLoveTalk","LOCALS",26)~ THEN X3RebJ LoveTalk13
~Your life has been constant adventure since you left home, hasn't it? Do you see...something peaceful down the road? Settling down, with a partner, maybe?~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~Like with you?~ + 13.1
++ ~I've been on the road so long, I can't imagine anything else.~ + 13.3
++ ~It's hard to think about that right now, given everything that is going on.~ + 13.3 

CHAIN X3RebJ 13.1
~Yes... I think I would still even be happy with adventuring, or anywhere with you...if I am in any future of yours.~
END 
+~OR(3)Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ ~If you let me, aye.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 13.4S
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ ~If you let me, aye.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 13.4T
++ ~I don't think we're on the same page of things, Recorder. You're not in my plans.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~  + 13.5 
++ ~I don't know, Recorder. Anything could happen to end this abruptly.~ + 13.6

CHAIN X3RebJ 13.3 
~I understand but...I am guess I am wondering if I am in any future of yours.~
END 
+~OR(3)Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ ~If you let me, aye.~ + 13.4S
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ ~If you let me, aye.~ + 13.4T
++ ~I don't think we're on the same page of things, Recorder. You're not in my plans.~ + 13.5
++ ~I don't know, Recorder. Anything could happen to end this abruptly.~ + 13.6

CHAIN X3RebJ 13.4T
~(She beams, tip-toeing to close the distance. A kiss. A sweet stolen moment.)~
== X3VieJ IF  ~IsValidForPartyDialogue("X3VieJ")~ THEN ~Ugh, disgusting. I'm going to be sick.~
== X3KalJ IF ~IsValidForPartyDialogue("X3KalJ")~ THEN ~Damn. I don't have a good angle.~ 
== X3HelJ IF  ~IsValidForPartyDialogue("X3HelJ")~ THEN ~Bah, there are battles to be fought here.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3EmiJ")~ THEN ~Aww, how sweet.~
EXTERN X3RebJ 13.7

CHAIN X3RebJ 13.4S 
~(She moves closer, lips puckering. A kiss. A sweet stolen moment.)~
== X3VieJ IF  ~IsValidForPartyDialogue("X3VieJ")~ THEN ~Ugh, disgusting. I'm going to be sick.~
== X3KalJ IF ~IsValidForPartyDialogue("X3KalJ")~ THEN ~Damn. I don't have a good angle.~ 
== X3HelJ IF  ~IsValidForPartyDialogue("X3HelJ")~ THEN ~Bah, there are battles to be fought here.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3EmiJ")~ THEN ~Aww, how sweet.~
EXTERN X3RebJ 13.7

CHAIN X3RebJ 13.7
~I'm truly glad you said that, <CHARNAME>. Maybe we can find some more time later for eachother.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3RebJ 13.5
~I...see. I am glad you told me this now, at least, before it would be more painful to hear. Let's...just keep moving.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~ 
EXIT

CHAIN X3RebJ 13.6
~Anything could happen. And if you don't want to make a decision now, I understand. I'll take the joy I can get.~
== X3RebJ ~Just do not be afraid to embrace the life you know you have now, if you are afraid of the life you may not get a chance to have tomorrow.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",2)~
EXIT 

//Love Talk #14

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",28)~ THEN X3RebJ LoveTalk14 
~<CHARNAME>, I know you must be eager to get some rest, but...I was wondering if I could say something to you.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ ~I am listening, Recorder.~ +  14.1
++ ~Is something wrong?~ + 14.2 
++ ~I am quite exhausted, Recorder. Another time.~ + 14.X

CHAIN X3RebJ 14.2
~Nothing is wrong, actually. As strange as it is, this is the happiest I've been in a while, but that's just the thing.~
EXTERN X3RebJ 14.1

CHAIN X3RebJ 14.1
~I don't know what will happen next. When people die...resurrection doesn't always work. Sometimes when something bad happens, it's irreversible.~
END 
IF ~Global("X3RFAIL","GLOBAL",2)~ EXTERN X3RebJ 14.3 
IF ~!Global("X3RFAIL","GLOBAL",2)~ EXTERN X3RebJ 14.4

CHAIN X3RebJ 14.3 
~I lost my son. And in this journey, I know I might lose you too.~
EXTERN X3RebJ 14.4 

CHAIN X3RebJ 14.4 
~I have never spent a night with someone who...who I actually love. And if I wait, I may never get the chance to.~
END 
IF ~!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ 14.5
IF ~Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ 14.6

CHAIN X3RebJ 14.5
~I know we have not known eachother for very long...but that is how I feel. I...well...what do you think?~
END 
++ ~I love you too, Recorder. I would like to share this night with you.~ +14.9
++ ~This is a bit sudden. I am not sure what to think.~ + 14.8
++ ~I would rather wait, Recorder, until it is right.~ + 14.7

CHAIN X3RebJ 14.6
~I've known you since we first met back around Baldur's Gate. And I think I have felt this way for a long time. I just......well...what do you think?~
END 
++ ~I love you too, Recorder. I would like to share this night with you.~ +14.9
++ ~This is a bit sudden. I am not sure what to think.~ + 14.8
++ ~I would rather wait, Recorder, until it is right.~ + 14.7

CHAIN X3RebJ 14.7
~You seem so confident we will make it to that time. I will try to share your enthusiasm and be patient. It gives us something to look forward to.~
== X3RebJ ~I won't take more of your time. Get some rest, my love.~
DO ~RestParty()~
EXIT 

CHAIN X3RebJ 14.8
~Maybe you don't need to think. We spend so much time thinking and plotting and planning and wondering, we can't see what is right there.~
== X3RebJ ~Stay with me. Let us not think for a moment and just let it go for a while.~
END 
++ ~Very well, Recorder. Let us share this night together.~ + 14.9
++ ~If that is what you want.~ + 14.9 
++ ~I think I want to wait, Recorder, until it is right.~ + 14.7
++ ~I'd rather be alone right now, Recorder.~ + 14.X 

CHAIN X3RebJ 14.9
~Let us find somewhere away from the others then...and see where the night takes us.~
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 


CHAIN X3RebJ 14.X 
~Another time, then. Rest well.~
DO ~RestParty()~
EXIT 
// Fires only after Recorder's offer is taken.
CHAIN IF ~Global("X3Slept","LOCALS",1)~ THEN X3RebJ LoveTalk15
~(You wake up with Recorder leaning against your arm. As you stir, she lifts herself up to look at you.)~
DO ~SetGlobal("X3Slept","LOCALS",2)SetGlobal("X3RebAppChange","GLOBAL",9)~
END 
++ ~Good <DAYNIGHTALL>, beautiful.~ + 15.1 
++ ~Last night was...something.~ + 15.2
++ ~It's time to get up, Recorder. We have much to accomplish.~ + 15.2

CHAIN X3RebJ 15.X
~So soon? I was so comfortable. Mmm. We will have to find more time later, just you and I, when this is all over.~
EXIT 

CHAIN X3RebJ 15.1
~Good <DAYNIGHTALL>, my love.~ 
EXTERN X3RebJ 15.3

CHAIN X3RebJ 15.2
~Wasn't it? It was...wonderful. How it should feel between two people.~
EXTERN X3RebJ 15.3

CHAIN X3RebJ 15.3
~I felt loved, truly loved. And safe. Protected. Like I know everything will stay okay.~
== X3RebJ ~I hate to leave this space with you, but we should get ready to set out again.~
END 
++ ~Aye, let's. The road awaits us.~ EXIT
++ ~Why so soon? The others haven't stirred yet, and I can think of a few things we can do to pass the time...~ + 15.4
++ ~I hate to go, too. This was nice.~ + 15.5


CHAIN X3RebJ 15.4
~What are yo- ooh. You are no innocent <PRO_MANWOMAN>, <CHARNAME>.~
DO ~FadeToColor([30.0],0)Wait(1)FadeFromColor([30.0],0)~
EXIT 

CHAIN X3RebJ 15.5
~It was. But when we've accomplished everything we've set out to do, we can look forward to more days like this, just the two of us.~
EXIT 

// Lovetalk at Ust Natha

CHAIN IF ~Global("X3RebUstNathaLovetalk","GLOBAL",1)~ THEN X3RebJ LoveTalk16
~Erm, Veldrin? Do you have a moment?~ [X3RLS]
DO ~SetGlobal("X3RebUstNathaLovetalk","GLOBAL",2)~
END
+ ~Gender(Player1,MALE)~ + ~What is it, my mistress?~ + 16.1 
+ ~Gender(Player1,FEMALE)~ + ~What is it?~ + 16.1 
++ ~Be more firm, Recorder.~ + 16.2
++ ~How about we find a room? We'll have a bit of privacy, then.~ + 16.3
++ ~Not here. This is a bad time to speak.~ + 16.X

CHAIN X3RebJ 16.X
~As you wish, then.~
EXIT

CHAIN X3RebJ 16.1 
~Just come here.~
EXTERN X3RebJ 16.4 

CHAIN X3RebJ 16.4
~There are...slaves. Slaves everywhere. So much evil and darkness and drow and...horrible monsters. This is somehow *worse* than Brynnlaw.~
END 
++ ~You need to keep it together, Recorder. We can't afford to reveal ourselves.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~  + 16.5 
++ ~Take a breath. I am here. But you must be strong. You must appear as drow.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~  + 16.5
++ ~I don't have time to deal with this, Recorder.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 16.X

CHAIN X3RebJ 16.5
~I am a bard but this...this is probably the most difficult thing you have asked of me. How can I do this?~
END 
++ ~Think of our love. Think of the warmth when we are able to be together when we finally get out of here.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 16.6
++ ~We've made it through Brynnlaw, through Spellhold, and got into the city. Think of your own strength. Know you are stronger than you believe yourself to be.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 16.7
++ ~You will do this because I am telling you to. And you do not want to fail me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 16.8

CHAIN X3RebJ 16.6
~That does warm me a little. Still, let us be gone from this place as soon as we have done what we need to.~
EXIT 

CHAIN X3RebJ 16.7
~You really know how to flatter and cheer someone up, <CHARNAME>. I can do this. But, let's be gone from this place as soon as we have done what we need to.~
EXIT 

CHAIN X3RebJ 16.8
~That...yes. As you say. Let's just be gone from here as soon as we can.~
EXIT 

CHAIN X3RebJ 16.2 
~J-just...come over here.~
EXTERN X3RebJ 16.4

CHAIN X3RebJ 16.3
~That would be too distracting...and your form is distracting enough as is.~
EXTERN X3RebJ 16.4

// Final Love Talk 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",30)~ THEN X3RebJ LoveTalk17
~It's kind of funny thinking back of my experience being in a ferret's body. I feel so much closer to Gustav.~ [X3RLS]
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~I think I would rather you not get that close to Gustav ever again.~ + 17.1
++ ~I am just glad to have you back.~ + 17.2
++ ~We're so close. We can talk more once this is over.~ + 17.X 

CHAIN X3RebJ 17.X 
~We are. Can we actually...make camp? Not just to strategize and get our supplies in order but...~
== X3RebJ ~I was nearly torn from you once. And I want to spend a moment close to you. The risk of it happening again isn't going to be any less.~
END 

CHAIN X3RebJ 17.2
~And I am glad you helped me get back to my body. I truly thought if I didn't, I might be forced to fight against you, and I couldn't bear the thought. I would rather be joined with Gustav for life. Without you, I would have been, too.~
EXTERN X3RebJ 17.3

CHAIN X3RebJ 17.1
~Heehee, I don't think Gustav was altogether a fan of the experience. He'd prefer physical over spiritual cuddling, I think.~
EXTERN X3RebJ 17.3

CHAIN X3RebJ 17.3
~This might be the last chance we get to truly rest and relax together, before things become uncertain and...perhaps even more difficult.~
== X3RebJ ~Can we...set up camp? Not just to strategize and get our supplies in order...but just to spend the only bit of time we know we will get to have.~
END 
++ ~As my love wishes, as my love gets.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 17.4
++ ~I would like that, Recorder. It seems a fine idea.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 17.4
++ ~I would rather wait. To have something to push me and look forward to.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 17.5
++ ~Delaying won't us do any good. I want to finish this now.~ + 17.6

CHAIN X3RebJ 17.4
~(She eagerly waves you over to help set up your tent as your party sets up camp. As soon as you finish she pulls you inside, being sure to close the flap.)~
END 
IF ~Global("X3Slept","LOCALS",0)~ DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~ EXIT 
IF ~!Global("X3Slept","LOCALS",0)~ DO ~RestParty()~ EXIT 


CHAIN X3RebJ 17.5
~You are patient, <CHARNAME>. If waiting is what you wish, then I look forward to our time when Irenicus is stopped.~
EXTERN X3RebJ 17.7

CHAIN X3RebJ 17.6
~Then...then let us not delay. I want to see him finished, too.~
EXTERN X3RebJ 17.7

CHAIN X3RebJ 17.7
~I will pray to Oghma and the Lords of the Golden Hills that they see us all through this in one piece.~
EXIT 

// Bodhi abduction

EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3RebKidnap
END

CHAIN BODHIAMB X3RebKidnap
~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~
== BODHIAMB ~Such as this sweet little gnome. How terrible it will be to suffer such a loss.~
== X3RebJ ~I...I am a Lorekeeper. I know what you mean and intend, and I can't let you do that.~
== BODHIAMB ~If you are so knowledgeable, girl, you know very well you cannot resist the charms and lull of the darkness.~
== X3RebJ ~No! I *won't* be a slave to anyone, ever again!~
END
++ ~Recorder, what are you doing?~ EXTERN X3RebJ X3RebKidnap2 
++ ~Recorder, wait!~ EXTERN X3RebJ X3RebJKidnap3 
++ ~Follow my orders, Recorder!~ EXTERN X3RebJ X3RebJKidnap3 

CHAIN X3RebJ X3RebKidnap2 
~Taking my freedom.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3Rbodhi")~ EXIT

CHAIN X3RebJ X3RebJKidnap3 
~Forgive me, <CHARNAME>, but this is the only choice.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3Rbodhi")~ EXIT

CHAIN IF WEIGHT #-1
~Global("X3RebVampire","GLOBAL",1)~ THEN BODHIAMB X3RebKidnap4
~Impressive. Taking her own life with some spell before I could claim her. Her cold body will do regardless. Follow me further and you will lose more than you can imagine... beginning now!~
END
IF ~~ DO ~DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
ForceSpell(Myself,DRYAD_TELEPORT)
ForceSpell("X3Reb",DRYAD_TELEPORT)
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)
DestroySelf()~ UNSOLVED_JOURNAL @31 EXIT

//Recorder untaken
I_C_T C6BODHI 0 X3RebC6Bodhi0 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We can do this. We won't lose.~
END 

//Recorder Taken 
EXTEND_BOTTOM C6BODHI 21
IF ~Global("X3RebVampire","GLOBAL",1)~ + 23
END

A_T_T C6bodhi 21 ~!Global("X3RebVampire","GLOBAL",1)~ DO 0

EXTEND_BOTTOM C6BODHI 23
+ ~Global("X3RebVampire","GLOBAL",1)~ + ~You have taken too much already! Return Imoen's soul, and Recorder!~ EXTERN C6BODHI X3RebAb
+ ~Global("X3RebVampire","GLOBAL",1)~ + ~And you have delivered on that promise. Return Recorder's body and perhaps I will be merciful.~ EXTERN C6BODHI X3RebAb
+ ~Global("X3RebVampire","GLOBAL",1)~ + ~I would have hunted you for your theft of Recorder alone. I will not lose her!~ EXTERN C6BODHI X3RebAb
+ ~Global("X3RebVampire","GLOBAL",1)~ + ~You place too much confidence in sentiment. The theft of Recorder's body will not save you.~ EXTERN C6BODHI X3RebAbConf
END



CHAIN C6BODHI X3RebAbConf
~An interesting ploy, though I am sure her fate will still serve as an example, whether you wish her back or not.~
END
IF ~~ EXTERN C6BODHI X3RebAb

CHAIN C6BODHI X3RebAb
~Your little gnome love is dead, <CHARNAME>. Even with my attempts to give her undeath she remains cold. When I am done with you, I will figure out her spell and make her one of my own all the same.~
= ~I would pity you and let you join her, but it would be far more delightful to keep you forever apart.~
END
IF ~~ EXTERN C6BODHI 22

// Recorder's Body Bohdi's Crypt
CHAIN IF WEIGHT #-1
~Global("X3RebVampire","GLOBAL",1)
Global("X3RebBody","AR0809",2)~ THEN PLAYER1 body
~(Recorder's body is cold and lifeless in your arms. Despite Bodhi's taunts, she did not lie to you - Recorder remains dead.)~ [C0BLANK]
DO ~SetGlobal("X3RebBody","AR0809",3)
SetGlobal("X3RebVampire","GLOBAL",2)~
END
IF ~InParty("X3Emi")~ EXTERN X3EmiJ body.0
IF ~!InParty("X3Emi")   InParty("Imoen2")~ EXTERN IMOEN2J body.1
IF ~!InParty("X3Emi")   !InParty("Imoen2") InParty("Aerie")~ EXTERN AERIEJ body.2
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") InParty("Jaheira")~ EXTERN JAHEIRAJ body.3
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") InParty("Mazzy")~ EXTERN MAZZYJ body.4
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") InParty("X3Hel")~ EXTERN X3HelJ body.5
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("X3Hel") InParty("Anomen")~ EXTERN ANOMENJ body.6
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("X3Hel") !InParty("Anomen") InParty("Viconia")~ EXTERN VICONIJ body.7
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("X3Hel") !InParty("Anomen") !InParty("Viconia") InParty("X3Kal")~ EXTERN X3KalJ body.8
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("X3Hel") !InParty("Anomen") !InParty("Viconia") InParty("X3Kal")   InParty("HAERDALIS")~ EXTERN HAERDAJ body.9
IF ~!InParty("X3Emi")   !InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("X3Hel") !InParty("Anomen") !InParty("Viconia") !InParty("X3Kal")  !InParty("HAERDALIS")~ EXTERN X3RFER body.10


CHAIN X3EmiJ body.0 
~This...this is not right. It shouldn't end like this, not for Recorder. Maybe her mother or another priest in the temple of Oghma can think of someway to reverse this fate.~
EXTERN X3RFER body.10

CHAIN IMOEN2J body.1
~I'm so sorry, little <PRO_BROTHERSISTER>. I can't believe she's gone... but maybe there's still a way we can bring her back.~
EXTERN X3RFER body.10

CHAIN AERIEJ body.2
~M-my spells...they won't work when she's like this. But...m-maybe the priests of Ohgma can help us.~
EXTERN X3RFER body.10

CHAIN JAHEIRAJ body.3
~So foolish the girl, she did not need to take her life. Forgive my words, this must be difficult on you, <CHARNAME>. And yet, there could still be hope. Perhaps the church of Oghma may be of assistance.~
EXTERN X3RFER body.10

CHAIN MAZZYJ body.4
~Recorder does not deserve such an unjust end, <CHARNAME>. I do not wish to give you false hope, but I would suggest that perhaps the priests of Oghma could give us assistance.~
EXTERN X3RFER body.10

CHAIN X3HelJ body.5
~Hrngh. Nay a warrior's death ,nor a fitting death. But Haela cannot give me the power to undo what she had done to let her walk again. I say we speak to the temple of Oghma, and see what can be done.~
EXTERN X3RFER body.10

CHAIN ANOMENJ body.6
~This... was not what she deserved. I would draw upon Helm's power to bring her back, but I fear no magic could reverse such a sacrificial death. I am truly sorry, <CHARNAME>. We should bring her body to her fellow clergymen.~
EXTERN X3RFER body.10

CHAIN VICONIJ body.7
~So, the elg'caress's foolishness became the death of her, as I expected. Do not look at me, <CHARNAME>, I have no power to restore her in that condition. She has fellows in this wretched city, does she not? Beg them for aid if you must.~ 
EXTERN X3RFER body.10

CHAIN X3KalJ body.8
~Death is a necessary part of the natural cycle, but perhaps in this case, there can be an exception. Regardless, I fear Sirene's ritual has prevented her from returning by normal means. Perhaps the local Ilmatari priests can assist us.~
EXTERN X3RFER body.10

CHAIN HAERDAJ body.9 
~The goldfinch is silent in her final cadence and yet I can still hear the echos of her last song in my head. Death never returns what it takes, but perhaps the temple of the seekers of knowledge may know a way to steal life back.~
EXTERN X3RFER body.10

CHAIN X3RFER body.10
~(Out from one of Recorder's inner pocket squirms free Gustav. The animal moves its way to you and brushes against your foot, giving a low cry.)~
END
++ ~I am sorry, Gustav. But I will do my utmost to help her.~ + body.11 
++ ~Your wails can do nothing for her, ferret. Jump in my pack and lets go.~ + body.11 
++ ~Your master is gone, Gustav. She cannot hear you.~ + body.11

CHAIN X3RFER body.11
~(The animal seems to acknowledge you with a brief nod, before leaping towards you and finding a home in your pack.)~
END 
IF ~~ DO ~GiveItemCreate("X3RFER",Player1,0,0,0)DestroySelf()~ UNSOLVED_JOURNAL @32
EXIT

CHAIN X3RebJ DSR
~I...thought my words in Dragonspear were the end of it. Maybe I was too harsh with my words then.~
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
= ~I like you, <CHARNAME>. I do. But last time we got close things happened and...I don't know if I am ready.~
= ~I hope you understand. It's not...a never. But it's not a now. Let's see what happens?~
END 
++ ~I understand, Recorder. Let's see what happens.~ + DSR.7
++ ~As you wish.~ + DSR.7
++ ~No, actually. I have no interest in waiting around for you.~ + DSR.8 

CHAIN X3RebJ DSR.7
~Thank you, <CHARNAME>. I do like you. Do know that, please, despite all of this, I do like you a lot.~
DO ~SetGlobal("X3RebInterest","LOCALS",1)IncrementGlobal("X3RebAppChange","GLOBAL",4)~ 
EXIT 

CHAIN X3RebJ DSR.8 
~I am sorry for making you angry. Let's just...not talk about this again.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebAppChange","GLOBAL",-4)~
EXIT 


// Group Kiss from PID 
CHAIN X3RebJ Group.Kiss 
~B-but...it's not just us! I m-mean...~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Awwww!~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Pah. Stop your stuttering and get it done so we can get back to fighting something.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I can kiss Recorder first if she needs to get comfortable. What? I'm kidding!~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Great. Now I have to watch you slobber over each other.~
== X3RebJ ~Okay. But just a quick one.~
== X3RebJ ~Mmm. That was nice. I love you so much.~
EXIT 

APPEND X3RebJ 
// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~This...is hard for me to say, <CHARNAME>. I don't know if you see things the same way as of late, but I think we should talk about it.~
= ~When we first started our relationship, things were sweet and I was the happiest I have known. But lately you have been so different. You aren't the same person I fell in love with.~
= ~You even...scare me a little, sometimes. And so, as much as it hurts to say, I want to end things between us.~
++ ~But I don't want to end things, Recorder.~ + LBreak.1
++ ~I think you are right. Things haven't been the same as of late.~ + LBreak.2 
++ ~So you are just giving up, then?~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~I know it hurts. But...I don't want to wait for the impossible. Keep hoping for the impossible. Many duets come to an end. Our song is just at its conclusion.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~Oh, that makes this...less difficult then. I'm glad we are on the same page.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~I'm sorry. I just...let go. I have waited before and only known pain. I can't do that again.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~If it's easier...I can just leave the party. I leave the choice to you.~
++ ~I think that is best. Goodbye, Recorder.~ + LBreak.5 
++ ~Do so. But your equipment stays with me.~ + LBreak.6 
++ ~No. Please. Stay. I would still have you with me, even if we aren't lovers.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~Goodbye, <CHARNAME>. I will remember you.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~...As you wish. Goodbye.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~Then I will. It will be nice to see your story through, even if things are different.~
IF ~~ EXIT 
END 

// Break Approval

IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~Unbelievable. I...usually stay quiet, and I have trusted your leadership and recorded your story this far, but I can't go on without speaking.~ [X3RAnn]
= ~Your treatment to others has been terrible. You sing like your song is the only one that matters, but we live in a world where there are many singers, and harmonies to form together. Not just your own.~
++ ~Speak clearly or stay silent, Recorder.~ + Break.1 
++ ~And what would you have me do differently?~ + Break.2 
++ ~I am sorry. It has been difficult to make those kind of decisions.~ + Break.2
END 

IF ~~ Break.1
SAY ~Then I hope this is clear: I am saying leaving, unless you are willing to try to improve, to change.~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~I want you to try to be more considerate. What you have done I despise with every part of my being.~ 
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY ~If you are not willing to change, then we should separate.~
++ ~Then go. Not as if you are useful anyway.~ + Break.4
++ ~Fine. Give me your equipment and go.~ + Break.5
++ ~I'm not a wicked person, Recorder. Give me a chance to show you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~You...you are...such an ass! Goodbye!~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~If that is what you want...have it. Goodbye, <CHARNAME>.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~I...I can stay and see. Oghma forgive me if I am gullible, but I will give you a chance.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3RebApp","GLOBAL",-25)SetGlobal("X3Break","LOCALS",2)DisplayStringNoNameDlg(Player1,@416)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~You lied to me. Lied to me! You're just using me. And I hate that. I have been used enough in my life, and I won't take more of it!~
= ~I am sorry, <CHARNAME>. But our time together is over.~
// Recorder leaves the game. 
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  ~Hey.~ [X3RCON1]
++ ~Let me ask you a question.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalAlone.PID
++ ~May I ask you to play something for me?~ + PID.Music 
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  ~I'm with you.~ [X3RCom2]
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalAlone.PID
++ ~May I ask you to play something for me?~ + PID.Music 
++ ~Never mind.~ EXIT 
END  

IF ~~ main.PID 
SAY  ~Go on.~ [X3RCom4]
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalAlone.PID
++ ~May I ask you to play something for me?~ + PID.Music 
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Very well.~ [X3RCon6]

+~Global("X3PIDCON1","LOCALS",0)~+ ~You are originally from Lantan, yes? Do you remember much of your time there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)Global("X3PIDCON5","LOCALS",0)~+ ~Do you know much about Athkatla?~ DO ~SetGlobal("X3PIDCON5","LOCALS",1)~ + PID.City
+~Global("X3PIDCON2","LOCALS",0)GlobalGT("X3RebQuest","GLOBAL",7)~+ ~Could I call you Rebecca instead?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON3","LOCALS",0)GlobalGT("X3RebTalk","LOCALS",10)~+ ~Do you regret giving birth to your son?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Son
+~Global("X3PIDCON4","LOCALS",0)~+ ~So what does a Lorekeeper like yourself usually do?~ DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~Please, take your time.~ [X3RCom3]
+~Global("X3PIDCON1","LOCALS",0)~+ ~You are originally from Lantan, yes? Do you remember much of your time there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)Global("X3PIDCON5","LOCALS",0)~+ ~Do you know much about Athkatla?~ DO ~SetGlobal("X3PIDCON5","LOCALS",1)~ + PID.City
+~Global("X3PIDCON2","LOCALS",0)GlobalGT("X3RebQuest","GLOBAL",7)~+ ~Could I call you Rebecca instead?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON3","LOCALS",0)GlobalGT("X3RebTalk","LOCALS",10)~+ ~Do you regret giving birth to your son?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Son
+~Global("X3PIDCON4","LOCALS",0)~+ ~So what does a Lorekeeper like yourself usually do?~ DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ ~Let's talk about something else.~ + main.PID
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Lantan 
SAY ~I spent almost my entire childhood there, so yes. It is...different than the rest of the world. There is such an emphasis on working hard and pushing to the next great discovery, the next great technological achievement.~
= ~Many of my people have a reputation for being eccentric, but I think it is because of that beautiful devotion to an art or work. Lantan was all about that.~
= ~There are colleges and artisan guilds and inventors of flying machines and printing presses and even attempts at non-magic portals. You would be marveled at some of the things created in my homeland.~
++ ~It sounds truly wonderful.~  + PLantan.1
++ ~Did your people not make room for leisure?~ + PLantan.2
++ ~All of these things sound so useful. Why aren't they anywhere else?~ + PLantan.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PLantan.1
SAY ~It wasn't perfect. Sometimes there were rifts with the humans that came over, and...pirates, too. But if you looked past it, it is truly a great place.~
++ ~Did your people make room for leisurely activities?~ + PLantan.2
++ ~All of these things sound so useful. Why aren't they anywhere else?~ + PLantan.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PLantan.2 
SAY ~Oh definitely, though often they centered around the very work we valued. For my people, working is leisure. Technology is an art, something to be valued and prized.~
= ~Even if I was never as good at the sciences and inventions of my people, I always had a large respect for my people who were great at it.~
++ ~A lot of the inventions you've mentioned sound interesting or useful Why aren't they anywhere else?~ + PLantan.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PLantan.3 
SAY ~Some of these are just at their beginning stages. I think for others, it is a matter of trust. We have an invention called the gonne for example, which shoots a sort of object with gunpowder that shatters on content. If mass produced, it could be devestating in the wrong hands. A few have already landed in less than savory arms.~
= ~Still, I hope one day the world is in a better place where we can trust them to take the things we trade them and use them for good purposes.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.City
SAY ~Yes. I could tell you about any of the districts. Is there one in particular you are interested in?~
+~Global("X3PIDCity1","LOCALS",0)~+ ~Tell me about the slums.~ DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ ~Tell me about the Bridge District.~ DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ ~Tell me about the Temple District.~ DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ ~Tell me about the Government District.~ DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ ~Anything interesting of the area around the city gates?~ DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ ~Can you tell me about the Promenade?~ DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PC.Slums 
SAY ~They are where most of the poor squeeze into. Buildings on top of buildings, some people can't even afford the housing alloted there.~
= ~It is also a place frequented by the criminal oriented. I would watch our backs if you have us go through there.~
+~Global("X3PIDCity2","LOCALS",0)~+ ~Tell me about the Bridge District.~ DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ ~Tell me about the Temple District.~ DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ ~Tell me about the Government District.~ DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ ~Anything interesting of the area around the city gates?~ DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ ~Can you tell me about the Promenade?~ DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PC.Bridge 
SAY ~The Bridge district is the middle of Althkata. You can almost see the transition from wealth to poor in how some of the housing is split.~
= ~My favorite place in the Bridge District is the playhouse. I know your purpose here isn't one for relaxation, but...it is certainl worth a visit. The performers always put on a great show.~
+~Global("X3PIDCity1","LOCALS",0)~+ ~Tell me about the slums.~ DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity3","LOCALS",0)~+ ~Tell me about the Temple District.~ DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ ~Tell me about the Government District.~ DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ ~Anything interesting of the area around the city gates?~ DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ ~Can you tell me about the Promenade?~ DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PC.Temple 
SAY ~The Temple district is where most of the well financed faiths make their temples. You'll find Helm, Talos, and Lathander with their priests there. They don't always get along, but the guards keep any squabbles off the streets.~
= ~The wondrous Radiant Heart is here too. I...wish Sir Harmon had a chance to see it. It's an impressive building full of some of the best paladin warriors in the realms, though I don't think he would have fit in very well.~
+~Global("X3PIDCity1","LOCALS",0)~+ ~Tell me about the slums.~ DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ ~Tell me about the Bridge District.~ DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity4","LOCALS",0)~+ ~Tell me about the Government District.~ DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ ~Anything interesting of the area around the city gates?~ DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ ~Can you tell me about the Promenade?~ DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PC.Gov 
SAY ~The government district is where most of the government of the city is quartered. It is the richest district, and many noble houses make their homes around it.~
= ~It is also the strictest on crime, and the prison is in this district.~
+~Global("X3PIDCity1","LOCALS",0)~+ ~Tell me about the slums.~ DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ ~Tell me about the Bridge District.~ DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ ~Tell me about the Temple District.~ DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity5","LOCALS",0)~+ ~Anything interesting of the area around the city gates?~ DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ ~Can you tell me about the Promenade?~ DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PC.Gates 
SAY ~No, not really. Just an inn and the gate itself to go to and from the city. We aren't merchants, so we shouldn't be bothered.~
+~Global("X3PIDCity1","LOCALS",0)~+ ~Tell me about the slums.~ DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ ~Tell me about the Bridge District.~ DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ ~Tell me about the Temple District.~ DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ ~Tell me about the Government District.~ DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity6","LOCALS",0)~+ ~Can you tell me about the Promenade?~ DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PC.Prom 
SAY ~People come from all over to see the Promenade. It is *the* sight of Althkata. Visitors will stay at the inn, tour the markets, see the circus, view the exotic animals, maybe even make a few purchases.~
= ~No visitor's stay is complete without visiting the Promenade. Even nobles just here on business almost always stop by there.~
+~Global("X3PIDCity1","LOCALS",0)~+ ~Tell me about the slums.~ DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ ~Tell me about the Bridge District.~ DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ ~Tell me about the Temple District.~ DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ ~Tell me about the Government District.~ DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ ~Anything interesting of the area around the city gates?~ DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Name 
SAY ~I am sorry, but I would not be comfortable with that.~
++ ~I understand.~ + PName.1 
++ ~Why not?~ + PName.1
++ ~But I like it better than Recorder.~ + PName.1
++ ~Your parents gave you that name. Why would you forego it?~ + PName.1
END 

IF ~~ PName.1 
SAY ~ It is just that...I am not "Rebecca" anymore. I have worked so hard to be a different person that...I am more or less the image I have adopted for myself.~
= ~It has not stopped me from remembering my past. It will always haunt me. And that is why I do not want to be called Rebecca.~
++ ~You don't have to say anymore. I understand your reasons.~ + PName.2 
++ ~That sounds cowardly to me. It's just a name.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@403)~ + PName.3 
++ ~If that is what you want.~ + PName.2 
END 

IF ~~ PName.2 
SAY ~Thank you. I appreciate that very much.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PName.3 
SAY ~Call me a coward if you wish. But I refuse...I *cannot* acknowledge it. I am sorry.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Son 
SAY ~That is a very...difficult question. I don't regret the tender moments I held him in my arms. I just wish it was a different place, and a different father.~
= ~I am sorry. I...can't talk more about that. It is a very...hard conversation for me.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Lore
SAY ~We are what we are, truly: Lorekeepers. We gather the stories and the history of what is going on now or what happened into parchment and tomes for the church's records.~
= ~Some of us focus solely on the past, being reciters and advisors when called upon for the temple or the city or nation we are from.~
= ~I focus on the present. Many of those who are more like me follow adventurers in their travels to pick up stories, or record a story of someone who may make an impact of the realm.~
++ ~You believe I am a force of change, then?~ + PLore.1 
++ ~Do you have any other works you have done besides myself?~ + PLore.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END

IF ~~ PLore.1 
SAY ~Yes. Very much so. You saved Baldur's Gate. If you were not there, the entire Swordcoast would be going through a much different time.~
= ~And if you were not in Amn right now, I cannot help but feel the history that is to come would be following a different course.~
IF ~~ + PLore.3 
END 

IF ~~ PLore.2 
SAY ~Erm, no, I am afraid. I had something attempted on the old Ulcaster School but...that ended poorly. I have only recorded your travels so far. You have made quite the impact.~
= ~If you were not at Baldur's Gate all that time ago, the entire Swordcoast would be going through a much different time. And if you were not in Amn right now, I cannot help but feel the history that is to come would be following a different course.~
IF ~~ + PLore.3 
END 


IF ~~ PLore.3 
SAY ~More and more I feel that your path isn't fully by chance, that you are carrying something great. I just cannot yet see what it is.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END


IF ~~ PersonalGroup.PID 
SAY ~It is not just the two of us, but please, ask.~
+~Global("X3RebRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Global("X3RebPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + DSR
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3RebRomanceActive","GLOBAL",0)Global("X3RebInterest","LOCALS",0)~+ ~I just wanted to say how enchanting your voice is.~ DO ~SetGlobal("X3RebInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'm sorry Recorder, but I don't think we are going to work out.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~It is just the two of us. Please, ask.~
+~Global("X3RebRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Global("X3RebPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + DSR
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3RebRomanceActive","GLOBAL",0)Global("X3RebInterest","LOCALS",0)~+ ~I just wanted to say how enchanting your voice is.~ DO ~SetGlobal("X3RebInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'm sorry Recorder, but I don't think we are going to work out.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~I would love the company, <CHARNAME>, as long as it's an inn, or the outdoors. I look forward to it.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~My love, I would cherish that. We can do this when we rest in an inn or the outdoors. A dungeon wouldn't be as safe.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmm. Your kisses always make my heart sing.~
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY ~That is kind of you. I am not the perfect performer, even if I have always been interested in the singing arts.~
++ ~There's no need to be modest. You have the voice of an angel.~ + RI.1
++ ~I imagine you studied as a bard?~ + RI.2
++ ~Do you have other musical talents besides singing and play the flute?~ + RI.3
END 

IF ~~ RI.1 
SAY ~You are making me blush. I...am grateful for your compliment. Ah, let me cover my cheeks, I feel so red.~
IF ~~ EXIT 
END 

IF ~~ RI.2 
SAY ~I did. I had a private tutor. It was mainly the flute, though I learned the harp and lute as well.~
= ~I don't have the latter two instruments with me to show you how I play on them, but someday, I would love to show you.~
IF ~~ EXIT 
END 

IF ~~ RI.3 
SAY ~I can play the harp and the lute, although I don't have them with me to show you.~
= ~One day though, I would love to play them, at least for you, since you are such an admirer. One day.~
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY ~I...*sigh*. Can I ask what I did wrong?~
++ ~We're just not compatible like I thought.~ + BU.1 
++ ~You're a bit annoying to be honest.~ + BU.2
++ ~It's not you. It's me.~ + BU.3 
++ ~I'd rather not say.~ + BU.1 
END 

IF ~~ BU.1 
SAY ~I...I understand. I will treasure the memory, even if I am in pain right now.~
= ~I am going to give you privacy. Excuse me.~
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@409)~  EXIT 
END 

IF ~~ BU.2 
SAY ~I...guess I don't know what to say that. I am just going to leave you alone, then. I'm sorry I was...annoying.~
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-18)
DisplayStringNoNameDlg(Player1,@409)~ EXIT 
END 

IF ~~ BU.3 
SAY ~But I am not unhappy with you. I don't care if you feel imperfect or a burden. I will support you always, if you let me.~
= ~No matter how hard things get, or hopeless, I don't want you to pull away. Pull closer to me.~
++ ~Very well. I will take your advice.~ + BU.4 
++ ~I'm sorry Recorder. I'm decided.~ + BU.1
END 

IF ~~ BU.4 
SAY ~I am glad you see reason. I'm not ready for this to end. We still have so many stories together.~
IF ~~ EXIT 
END 

IF ~~ PID.Music 
SAY ~I would be happy to. I hope my performance is to your liking.~
IF ~RandomNum(5,1)~ DO ~PlaySound("X3RFL1")~ EXIT 
IF ~RandomNum(5,2)~ DO ~PlaySound("X3RFL2")~ EXIT 
IF ~RandomNum(5,3)~ DO ~PlaySound("X3RFL3")~ EXIT 
IF ~RandomNum(5,4)~ DO ~PlaySound("X3RFL4")~ EXIT 
IF ~RandomNum(5,5)~ DO ~PlaySound("X3RFL5")~ EXIT 
END 

END 