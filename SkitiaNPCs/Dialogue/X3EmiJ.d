/*Non Essential Interjections*/

// Chapter 6 & 7

I_C_T SUAVATAR 5 X3EmiSUAVATAR5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~By all the gods. He is completely insane.~
END 

I_C_T SUDEMIN 40 X3EmiSUDEMIN-40
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~Pure evil! You are no better than Irenicus! I will protect her from you.~
DO ~LeaveParty()Enemy()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~I am sorry, but I stand with Emily. I can't let you do this.~
DO ~LeaveParty()Enemy()~
== SUDEMIN ~For my people, and my city!~
END


I_C_T SUDEMIN 32 X3EmiSUDEMIN-32
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't care how high the hurdle is. We will do all we can.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Yes, as the m-...half-elf says, priestess. The mage will be stopped, and the queen saved.~
END

I_C_T C6CORAN 24 X3EmiC6CORAN-24
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN ~Must we really, <CHARNAME>?!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@106)~
== C6CORAN ~I am sorry, Emily. It is what it is.~
END 


I_C_T C6CORAN 1 X3EmiC6CORAN-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN ~Oh, I remember you Coran. Nice to see you again.~
END 

I_C_T C6DRIZZ1 55 X3EmiC6DRIZZ1-55
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 48 X3EmiC6DRIZZ1-48
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 41 X3EmiC6DRIZZ1-41
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 18 X3EmiC6DRIZZ1-18
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END



I_C_T C6DRIZZ1 9 X3EmiC6DRIZZ1-9
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 5 X3EmiC6DRIZZ1-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6ELHAN2 45 X3EmiC6ELHAN2-45 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm proud to help. But the odds of success? They're a bit grim.~
END

//Underdark 

I_C_T UDSVIR08 13 X3EmiUDSVIR08-13 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This works out, in an odd way. Hopefully none of the drow come to hear of this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so glad we did not have to hurt my kin of the deep.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Eh, won't lie. Kind of glad we didn't have to hurt these fellows. Nice to see the little guy come out okay for once.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== UDSVIR08 ~Farewell, dark ones.~
END 


I_C_T UDSVIR08 1 X3EmiUDSVIR08-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("SolaufeinJob","GLOBAL",7)~ THEN ~<CHARNAME>! Must you spill more blood for petty reasons?! We didn't have to do this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so sorry kin. Please forgive me, Garl.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~
== UDSVIR08 ~Duth nada, duth nada!~
END 

//Once again, Recorder will also leave if Emily departs.

I_C_T UDDEMON 8 X3EmiUDDEMON-22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I stand against you, <CHARNAME>! This cannot be allowed!~
DO ~LeaveParty()Enemy()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am sorry, but I stand with Emily. May...may this be quick and merciful!~
DO ~LeaveParty()Enemy()~
== UDDEMON ~** BAH! **~
END

I_C_T UDDEMON 8 X3EmiUDDEMON-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You might party with such a creature, but *I* will not. Goodbye and good riddance!~
DO ~LeaveParty()EscapeArea()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am sorry. I have seen enough of you story that...I do not even want to record its ending. Between staying with you and leaving with Emily, I will leave with my friend.~
DO ~LeaveParty()EscapeArea()~
END

I_C_T UDPHAE01 61 X3EmiUDPHAE01-61
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~I really would rather not take another life for these people. Maybe we can talk to him and settle this another way.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I want to hope that, but it holds such risk...oh, but I would prefer to try.~
END

I_C_T UDPHAE01 136 X3EmiUDPHAE01-136
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~Gods, a demon? But why?~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~For battle, what else, girl? This mage we be chasing has an unusual plan in place.~
END


INTERJECT UDPHAE01 61 X3EmiUDPHAE01-61
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~They have done nothing wrong! Surely you... I mean uh...~
EXTERN UDPHAE01 62


I_C_T UDSOLA01 139 X3EmiUDSOLA01-139
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I think your trust is well placed, <CHARNAME>. At least, my heart thinks that. And its usually right.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T UDSOLA01 131 X3EmiUDSOLA01-131
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I think your trust is well placed, <CHARNAME>. At least, my heart thinks that. And its usually right.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
END 

A_T_T DADROW21 2 ~!Name("X3Emi",LastTalkedToBy)!Name("X3Reb",LastTalkedToBy)!Name("X3Vie",LastTalkedToBy)~ DO 1
A_T_T DADROW21 2 ~!Global("X3RebRomanceActive","GLOBAL",1)
!Global("X3RebRomanceActive","GLOBAL",2)
!Global("X3EmiRomanceActive","GLOBAL",1)
!Global("X3EmiRomanceActive","GLOBAL",2)
!Global("X3KalRomanceActive","GLOBAL",1)
!Global("X3KalRomanceActive","GLOBAL",2)
!Global("X3VieRomanceActive","GLOBAL",1)
!Global("X3VieRomanceActive","GLOBAL",2)~ DO 3
A_T_T DADROW21 2 ~!Global("X3RebRomanceActive","GLOBAL",1)
!Global("X3RebRomanceActive","GLOBAL",2)
!Global("X3KalRomanceActive","GLOBAL",1)
!Global("X3KalRomanceActive","GLOBAL",2)
!Global("X3VieRomanceActive","GLOBAL",1)
!Global("X3VieRomanceActive","GLOBAL",2)~ DO 4



CHAIN IF WEIGHT #-1
~InPartySlot(LastTalkedToBy,0)Gender(LastTalkedToBy,MALE)
OR(8)Global("X3RebRomanceActive","GLOBAL",1)
Global("X3RebRomanceActive","GLOBAL",2)
Global("X3EmiRomanceActive","GLOBAL",1)
Global("X3EmiRomanceActive","GLOBAL",2)
Global("X3KalRomanceActive","GLOBAL",1)
Global("X3KalRomanceActive","GLOBAL",2)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",2)~ THEN DADROW23 X3
~Hmm...no. I look for a male to please me, but you hold no interest to my eyes. Move along.~
EXIT 


I_C_T UDDROW26 4 X3RebUDDROW26
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~No! I- You know what? Never mind.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
END 

I_C_T DASLAVE1 6 X3EmiDASLAVE1-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Have you lost your mind? Or have you grown too accustomed to your form?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@109)~
END 

INTERJECT DASLAVE1 4 X3EmiDASLAVE1-4  
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~No. <CHARNAME> is just cruelly joking, as is the er, custom. Go to the gates, say you are doing an errand, and may the gods be with you.~
DO ~SetGlobal("X3EmiSlaveForce","GLOBAL",1)IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~ //Emily disapproves and prevents any approval shifts from other people.
END 
IF ~Global("DrowSlavesFree","GLOBAL",2)~ EXTERN DASLAVE1 7
IF ~Global("DrowSlavesFree","GLOBAL",2)~ EXTERN DASLAVE1 8

I_C_T DASLAVE1 7 X3EmiDASLAVE1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiSlaveForce","GLOBAL",0)~ THEN ~I wish I could help them. Gods. I hope they get through this.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@119)~
END 

I_C_T UDILSLA2 14 X3EmiUDILSLA2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm so glad we were able to help them. But also? Let's never get pulled into a mind flayer battle arena again.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END 

I_C_T UDSIMYAZ 16 X3EmiUDSIMYAZ16
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'd rather trust them than play along with the flayers. I much prefer my mind without their intrusion.~
END 

I_C_T UDSILVER 25 X3EmiUDSILVER-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That's...discomforting. But I guess this is the only way.~
END 

I_C_T UDSILVER 45 X3VieUDSILVER-45
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, looks like the good path triumphed this day. But I am definitely eager to get out of this place at last.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T UDSILVER 49 X3EmiUDSILVER-49
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Gods. What have we done?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T UDSILVER 9 X3EmiUDSILVER-9
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~By all that I have ever seen...nothing has been as beautiful as this silver.~
END 

I_C_T UDSVIR05 8 X3EmiUDSVIR05-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We aren't all the same. Usually, at least. I am glad we could help.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T UDSVIR05 6 X3EmiUDSVIR05-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We aren't all the same. I mean. Er. It doesn't matter.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T UDSVIR05 21 X3RebUDSVIR05-21
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~Well. This is going to go exactly as we think it will.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== UDSVIR05 ~Da willen, da willen!~
END

I_C_T UDSVIR05 23 X3RebUDSVIR05-23
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~Well. This is going to go exactly as we think it will.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== UDSVIR05 ~Da willen, da willen!~
END



I_C_T UDSVIR05 25 X3RebUDSVIR05
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm not fond of this lie, or what actually happened. But I will leave it be, for now.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
END

I_C_T UDSVIR01 8 X3EmiUDSVIR01-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~So, is this the murder everyone because it's fun plan? What are you thinking?!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
END


I_C_T UDTRAP02 13 X3EmiUDTRAP02-13
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Can you not think of your pockets for just once?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
END

I_C_T UDTRAP02 10 X3EmiUDTRAP02-10
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad that ended up this way, rather than him bleeding on the ground.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I suppose I am...equally grateful my kin is alive. I truly thought death was his only hope.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDTRAP02 ~To the surface, I go.~
END

I_C_T UDTRAP02 11 X3EmiUDTRAP02-11
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad that ended up this way, rather than him bleeding on the ground.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I suppose I am...equally grateful my kin is alive. I truly thought death was his only hope.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END


I_C_T UDVITH 49 X3EmiUDVITH-49
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This was this man's project. Must we be so greedy?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I disagree. He did not share enough, and so we battle.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDVITH ~You may try. I will end you quickly and mercifully.~
END

I_C_T UDVITH 25 X3EmiUDVITH-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It's not worth fighting over a book. Let him have it at the very least.~
END

//If the player ignores Emily, then if she is in the party, this will fire.
ADD_TRANS_ACTION UDVITH BEGIN 26 END BEGIN END ~SetGlobal("X3EmiAppChange","GLOBAL",4)~


I_C_T KORGANJ 146 X3EmiKORGANJ-146
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You can almost not tell he's pretending. A bit disturbing, actually.~
END

I_C_T UDDUER03 7 X3EmiUDUDER03-7
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~So, I guess that's his way of giving a warning. Let's hope our time here is nice and short.~
END

//Unlike Emily, Recorder won't do this sequence herself, but will join Emily and fight against the player if they're both in the party.
INTERJECT UDSVIR03 27 X3EmiUDSVIR03-27 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~If you do this, <CHARNAME>, I will stand with the Svirfneblin...despite everything we have been through together. Do not make me do this! I am sure I am not alone in my thoughts!~
END 
++ ~All right, all right! I won't kill him.~ EXTERN UDSVIR03 26
++ ~If that is how it must be, so be it!~ DO ~SetGlobal("SvirHostile","GLOBAL",1)
LeaveParty()
Enemy()
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
ActionOverride("X3Reb",LeaveParty())
ActionOverride("X3Reb",Enemy())~
EXIT 

//Chapter 4 

I_C_T SAHPR2 13 X3EmiSAHPR2-13
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Nice to know politics is a thing even outside of us nobles. Honestly? I don't think helping either side will change much, though the king does seem the worse prospect. But I'll follow your lead.~
END

INTERJECT SAHBEH01 27 X3EmiSAHBEH01-27
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, did he say the chest, or what was in it? That would be two different things.~
EXTERN SAHBEH01 33

I_C_T SAHKNG01 68 X3EmiSAHKNG01-68
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What is the point of this? To gleefully watch them butcher each other? She didn't even do anything to us.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END

I_C_T SAHBAR03 1 X3EmiSAHBAR03-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~They aren't very polite hosts, are they? Not that I expected anything less.~
END

I_C_T KELDORJ 198 X3EmiKELDORJ198
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You know, I thought these fish were the coldest things here, but that was cold even for you, Keldorn.~
END

I_C_T SAHPR1 12 X3EmiSAHPR12 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, that's interesting. In a strange way, I'm almost not surprised, considering this is you we are talking about, <CHARNAME>.~
END

I_C_T PPSAEM2 24 X3EmiPPSAEM2-24
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~More powerful than he is already? Gods. That is not good.~
END


I_C_T PPSAEM2 8 X3EmiPPSAEM2-8
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Emi")~ THEN ~Alone, we do not have as good of a chance. I hate to say it, but his advice might be sound.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, I hate to say it too, but we could just get the hell out of here.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I do not think that is an option yet, Kale. I fear...that we will have to see to him first. I just hope these mad mages will listen to us.~
== PPSAEM2 ~Good luck.~
END 

I_C_T PPSAEM2 19 X3EmiPPSAEM2-19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I have heard such stories...Gods, I want to say I will be strong, but I must say I would rather not be in the Underdark.~
END

I_C_T PPJOYE2 6 X3EmiPPJOYE2-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't see any reason to refuse. We end his torture and get out of here? Even if you're against the former, we aren't trying to stay here.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@103)~
END 


EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Emi") Global("X3EmiPartyBG1","GLOBAL",1)~ + ~You should remember Emily. Do you recognize her, Imoen?~ EXTERN X3EmiJ X3EmiPPIMOEN0
END

I_C_T IMOEN2 22 X3EmiIMOEN22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't think you should abandon her. If anything, I could go. I do have my looming heir contest to be concerned of, and I'm sure you can make do without me, if you must.~
END 

CHAIN X3EmiJ X3EmiPPIMOEN0
~Heya, it's me, Emily. Oh. I thought that might work, but her eyes are...so strange.~
EXTERN PPIMOEN 1

I_C_T PPAPHRIL 0 X3EmiPPAPRHIL0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It is all right, miss. You are safe, we'll make sure of i t.~
END

I_C_T PPDILI 6 X3EmiPPDILI6
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN ~And here I thought the Cowled Wizards were only almost monsters. They're definitely monsters. Taking away children!~
END 

I_C_T PPNALJ 3 X3EmiPPNALJ3
== X3EmiJ IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Emi")~ THEN ~Surely this is fixable by a healing spell. Can't you cast one to see, Helga?~
== X3HelJ ~For wounds, aye. The mind? Nay. And from what it sounds like he did? It be the right punishment.~
END 



I_C_T PIRMUR01 2 X3EmiPIRMUR01-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~Oh. We might have gotten past them. That's a shame for you.~
END 

I_C_T PIRCOR05 22 X3RebPIRCOR05-22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~A slaving cook is definitely not where an old woman should be! I'm glad that's rectified.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== PIRCOR05 ~Take care of yourselves, and get out of here as soon as you can.~
END 

I_C_T PPINN01 5 X3EmiPPINN01-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~Right, murders are inconvenient for business, I imagine.~
END

I_C_T PIRCOR02 4 X3EmiPIRCOR02-4 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Not even something, <CHARNAME>? I know we have priorities, but still.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@103)~
END 

I_C_T PIRCOR02 27 X3EmiPIRCOR02 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN ~I wish we could get all of these people out. Honestly? This island is a really terrible place.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== PIRCOR02 ~Take care of yourselves, please. Thank you.~
END 

I_C_T PPSAEM 58 X3HelPPSAEM58
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You are making a big mistake!~
END

I_C_T PIRCOR04 51 X3EmiPIRCOR04-51 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN ~No one deserves to be bound to such a place. We will see you all freed, I swear.~
END 

I_C_T PIRCOR03 51 X3EmiPIRCOR03-51 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN ~No one deserves to be bound to such a place. We will see you all freed, I swear.~
END 

//Chapter3 

I_C_T BODHI2 25 X3EmiBODHI2-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~As if we would let you just go.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I don't think we have a choice. She portaled in here, Emily. She can portal out.~
END

CHAIN IF WEIGHT #-1
~!NumberOfTimesTalkedTo(0)
!InPartySlot(LastTalkedToBy,0)
Name("X3Emi",LastTalkedToBy)  
Global("X3Emi","LOCALS",0)~ THEN ARNGRL01 X3Emi 
~Hey! Give your coat, lady, or do I have to slap you?~
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ ~Well, someone really likes coats. Unfortunately, I don't have any, although Oooh! This one is nice! How much?~
== ARNGRL01 ~How much! How much?! This isn't for sale! Get!~
== X3EmiJ ~Wow. And here I thought I had this whole room figured out.~
EXIT 


I_C_T ARAN 77 X3EmiARAN77 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, since he's not one of yours, that must make it all okay.~
END 

I_C_T ARAN 53 X3EmiARAN53 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What? We've already paid a hefty sum. This is becoming suspicious, <CHARNAME>...~
END 

I_C_T ARAN 3 X3EmiARAN3
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This isn't so bad. At least not as much as I worried.~
END  

I_C_T ARNBOY01 0 X3EmiARNBOY01-0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This sickens me as much as it sickens you, trust me.~
END 

I_C_T BOOTER 18 X3EmiBooter18 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I hardly believe he did not intend for him to eventually die. What a sick man.~
END 

I_C_T BOOTER 2 X3EmiBooter2-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Egh. Too much information for me.~
END

//Watcher's Keep

 

I_C_T GORAPP1 14 X3EmiGORAPP1-14
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Wow. Most...people would not have that level of compassion. If you're sure about this, I'm more than ready.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORAPP1 16 X3EmiGORAPP1-16
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Wow. Most...people would not have such courage. If you're sure about this, I'm more than ready.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 



I_C_T GORDEMO 18 X3EmiGORDEMO 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I am more than glad to get away from this...thing! But not to lie to the knights. Reconsider, and take the high road.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T GORDEMO 1 X3EmiGORDEMO
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I feel so...unwell. Like my blood is revolting is revolting against my body. Whatever is here...is very terrible.~
END  


I_C_T GORCAR 15 X3EmiGORCAR 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Despite all he did, perhaps we should spare him.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, don't fall for his pathetic demeanor. It is best that we end him now.~
END 

I_C_T GORSUC01 7 X3EmiGORSUC01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Is...this really necessary?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T GORCAMB 0 X3EmiGORCAMB0
== GORCAMB IF ~IsValidForPartyDialogue("X3Emi") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Except one of you...the foul stench of a Deva...or is it something else?~
== X3EmiJ ~I hope he isn't referring to me.~
== GORCAMB ~Ah, aasimar. Always a treat to meet one of you.~
END

I_C_T GORMAD1 39 X3EmiGormad1-39 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together, if his family is still around.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 40 X3EmiGormad1-40 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together, if his family is still around.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 41 X3EmiGormad1-41 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~You heal him just to do this? Maybe you're the mad one!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, please no!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~
== GORMAD1 ~I will get back to my family!~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Emi",LastTalkedToBy)~ EXTERN X3EmiJ Yackman
END

CHAIN X3EmiJ Yackman  
~Hey, don't worry, Yackman, or, whoever you are. I'm not a demon. The opposite, even. Except you know, generations of descendants later from whatever celestial started it all.~
EXTERN GORMAD1 11

I_C_T GORCHR 0 X3EmiGORCHR0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~A demon! No doubt we are about to be a part of trickery.~
END

I_C_T GORODR1 53 X3HelGORODR1-53
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~You practically tried to murder us. Do you think this can just be swept aside? I doubt Helm will ever forgive you.~
END 

I_C_T GORODR1 44 X3EmiGORODR1-44
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~You lied to us. If things had gone as you intended, we would not be here at all.~
END 

//Trademeet 

I_C_T TRSKIN02 14 X3EmiTRSKIN02-14
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I know time is precious but if we don't help him, who will? That woman's life could be on the line.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~
END 

I_C_T TRSKIN02 31 X3EmiTRSKIN02-31
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We can't just give up. This could be our only chance to stop that vile man.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~
END 

I_C_T CEFALD04 3 X3EmiCEFALD04
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~No! I will not stand with you for this. I am sorry, <CHARNAME>, but you leave me no choice.~
DO ~ActionOverride("X3Emi",LeaveParty())
ActionOverride("X3Emi",Enemy())~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am sorry, but I am with Emily. The records of history will end here for one of us.~
DO ~ActionOverride("X3Reb",LeaveParty())
ActionOverride("X3Reb",Enemy())~
END


I_C_T TREVIL01 33 X3EmiTREVIL01-33
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~We can't poison the grove. That would be terrible! We have to find another way.~
== TREVIL01 ~Hurry up now, hurry up!~
END 

I_C_T TREVIL01 34 X3EmiTREVIL01-34
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~We can't poison the grove. That would be terrible! We have to find another way.~
== TREVIL01 ~Hurry up now, hurry up!~
END 

I_C_T BJAHEIR 19 X3EmiBJAHEIR-19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~Jaheira, I loath his decision, but it is not worth his life!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
== BJAHEIR ~Stay out of this! This is between myself and <CHARNAME>!~
END 

I_C_T CERND 12 X3EmiCERND-12
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Think on this, <CHARNAME>. This town may very well be a ghost-town if someone like ourselves does not lend a hand.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
== CERND ~The location is marked. I hope you change your mind and make your way.~
END 

I_C_T CELOGAN 79 X3EmiCELOGAN79
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Pride is a silent killer. This was all very unnecessary, why couldn't the families have gotten along?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T CELOGAN 86 X3EmiCELOGAN86
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This does sound like a more peaceful solution. Something to think about!~
END 

I_C_T TRCUT07 4 X3RebTRCUT07-4
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad we could help get this town back on track. Wait...why is my bosom so large? The artist must be male.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~ 
END 

I_C_T TRPLE01 19 X3EmiTRPLE01-19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Do we have to act like bandits? The people here have had enough things to be on edge about.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~ 
== TRPLE01 ~Guards, where are you?!~
END 

I_C_T TRTAVP05 1 X3EmiTRTAVP05-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, I'll remember that if I happen to travel home early to pick my path carefully.~
END 

I_C_T GPHIL01 3 X3EmiGPHIL01
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a cute debate, but I'm not going to just let him get hurt. Back off or I will defend him!~
DO ~Attack("gphil03")~
END 

I_C_T TRGRD03 22 X3EmiTRGRD03-22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What are you doing? Fighting over our own pride?!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@109)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, this feels so unnecessary.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== TRGRD03 ~To arms, militia!~
END 

I_C_T TRHMER01 38 X3EmiTRHMER01-38
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You do good work, <CHARNAME>. She's right, your reputation is well earned.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~ 
END 

//Umar Hills 
/*In order of Interject preference: Emily < Helga < Kale*/
INTERJECT MAZZY 6 X3EmiMAZZY6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~Sorry, <CHARNAME>, but I can't just let her be stuck here. I will free her.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~ 
EXTERN MAZZY 13

I_C_T PLMETR01 25 X3EmiPLMETR01-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~The farmers may not be entirely innocent, but here is the greater wrong! For shame.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~ 
END 

I_C_T PLFARM06 2 X3EmiPLFARM06-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~To battle just like this? This is not right!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~ 
== PLFARM06 ~To me!~ 
END 

I_C_T VALYGAR 28 X3EmiVALYGAR28
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I...will fight with you, <CHARNAME>. Though I think I will regret it.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~ 
== VALYGAR ~Enough talk! Let our blades speak from here.~
END 

I_C_T VALYGAR 27 X3EmiVALYGAR27
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I...will fight with you, <CHARNAME>. But this is wrong!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~ 
== VALYGAR ~Enough talk! Let our blades speak from here.~
END 

I_C_T GEMFAR02 10 X3EmiGEMFAR02-10
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You are definitely good at being a brute, <CHARNAME>. And that, is not a compliment.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T UHKID03 8 X3EmiUHKID03-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I know you didn't mean it, but did we really have to scare them? Seems rather immature to me.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T UHKID02 9 X3EmiUHKID02-9
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I know you didn't mean it, but did we really have to scare them? Seems rather immature to me.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T JUGJER01 32 X3EmiJUGJER01-32 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad he came around. I think a lot of things were learned here.~
END 

I_C_T JUGJER01 5 X3EmiJUGJER01-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And we all thought the cowled wizards were the example of heroics. How wrong we are.~
END 

INTERJECT UHMAY01 141 X3EmiUHMAY01-141 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I think that's enough of that. We're not making this town broke. Mayor, ignore my very good friend. I'm just glad your town is safe now.~ 
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~ 
EXTERN UHMAY01 142 

I_C_T UHMAY01 138 X3EmiUHMAY01-138 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What are we, thugs? If this is your brand of acting, I'm not going to stick around long.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~ 
END 

I_C_T UHMAY01 88 X3EmiUHMAY01-88 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, that's one way to destroy your reputation.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~ 
END 

I_C_T UHMAY01 24 X3EmiUHMAY01-24 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And what exactly are we doing that is more important? Okay, there is something important but...surely, this would not be too exhaustive of our time?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

//Windspear Hills 

I_C_T SAMIA 10 X3EmiSAMIA10 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm ashamed to say this as Tethyrian, but I do not know who King Strohm the Third is.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Really? King Strohm the third was known as a giant king, not because he was born from giants, but he was so tall. From what I remember in the academic records, he is most famous for fighting against five thousand drow. His dynasty was a mix of half-elves, elves, and mostly humans.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Eh. Thanks Recorder.~
END



I_C_T FIRKRA02 25 X3EmiFIRKRA02-25 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~If not his divine blood, then my aasimar lineage with it!~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Now that's the spirit! This be the battle of me life!~
== FIRKRA02 ~You are but a boring pebble, aasimar. You will roast together under my fire quite well.~
END 

I_C_T FIRKRA02 21 X3EmiFIRKRA02-21 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It feels...wrong to turn tail from this thing. I know we could prevail if we tried.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@103)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Only with a plan, Emily. Anything less and we are all dragon food.~
END

I_C_T FIRKRA02 32 X3EmiFIRKRA02-32 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~If I could stop you, I would here and now.But I know I can't. But I can leave, and I will. Don't try to find me. I never want to be in your company again.~
DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()LeaveParty()
EscapeArea()~ 
END  

I_C_T FIRKRA02 29 X3EmiFIRKRA02-29 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What? Do *not* do this, <CHARNAME>. Do not do this!~
END  

I_C_T GARREN 49 X3EmiGarren49 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Dead("firkra02")~ THEN ~Yes! A grand day, this is!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@119)~ 
END 

I_C_T GARREN 51 X3EmiGarren51 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Dead("firkra02")~ THEN ~Yes! A grand day, this is!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@119)~ 
END 

I_C_T GARREN 27 X3EmiGARREN27 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We should have taken his help. Well, we *should* take his help. Else we are going to be killing good knights over pride.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~ 
END

//De'Arnise

I_C_T KPMAID01 14 X3EmiKPMAID01-14 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~Denying the dowry entirely? Well, at least she gets what she wants otherwise.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T KPMAID01 15 X3EmiKPMAID01-15 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad that everything works out for her! Not every lady or lord is so lucky.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~ 
END 

I_C_T KPMAID01 16 X3EmiKPMAID01-16 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You are a fine <PRO_LADYLORD>, <CHARNAME>. Quite charitable, too!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~ 
END 

I_C_T KPRANG01 9 X3EmiKPRANG01-9 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well. Talk about dishonorable. I don't agree with this all.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@106)~ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Eh, marriage is for suckers, anyway.~
== KPRANG01 ~What nonsense!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END 


I_C_T KPRANG02 5 X3EmiKPRANG02-5 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I guess that is...fair. I just wish she had more weight in her own wants.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T KPRANG02 6 X3EmiKPRANG02-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, it seems love goes to the highest bidder. Not even my family is that terrible.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~ 
END 

I_C_T DELCIA 9 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~<CHARNAME>, I know she is difficult, but murder?!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@109)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is wrong. We can't just kill her like this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. She deserves it anyway.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@506)~ 
== DELCIA ~Are you done bickering? I tire of listening. Kill me already.~
END 

INTERJECT DELCIA 1 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, even though we aren't all commoners, we may not be as worthy of being noble. Emily Castilla, or er, Emilia if you want to be fancy.~
EXTERN DELCIA 48  

INTERJECT DELCIA 3 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, even though we aren't all commoners, we may not be as worthy of being noble. Emily Castilla, or er, Emilia if you want to be fancy.~
EXTERN DELCIA 48  

INTERJECT DELCIA 4 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~Well, even though we aren't all commoners, we may not be as worthy of being noble. Emily Castilla, or er, Emilia if you want to be fancy.~
EXTERN DELCIA 48  

INTERJECT DELCIA 7 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN ~Well, even though we aren't all commoners, we may not be as worthy of being noble. Emily Castilla, or er, Emilia if you want to be fancy.~
EXTERN DELCIA 48 

I_C_T KPGRD01 13 X3EmiKPGRD01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You make an amazing lord, <CHARNAME>. So many should learn from your example.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",8)
DisplayStringNoNameDlg(Player1,@119)~ 
END 

I_C_T KPGRD01 0 X3EmiKPGRD01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This seems harsh. His life over a petty theft?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~ 
END 

I_C_T KPGRD01 12 X3EmiKPGRD01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This was a fair punishment you did while still helping him. Not many would have been so thoughtful.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@113)~ 
END 


INTERJECT DALESON 13 X3EmiDaleson13
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Honestly, <CHARNAME>, can you think of a more appropriate time for your cruel humor? My companion jokes, sir. Poorly so.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~ 
EXTERN DALESON 14

I_C_T KPCAPT01 42 X3EmiKPCAPT04 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Her safety was partly our responsibility. But like he says, heart of stone, it seems.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~ 
END 
//Wild Mage
I_C_T OHNQUAID 4 X3EmiOHNQUAID 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, don't be stubborn. We can help you.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Mutt, please don't be stupid. This is an obvious illusion. He cannot be helped, and should not be interacted with further.~
END 

//Althkata Interjects 

I_C_T CRTHF03 0 X3VieCRTHF03 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That's awful. Who would celebrate a break up? Besides a mother-in-law, maybe. Quite protective of their sons, according to a married friend or two.~
END 

I_C_T MESSEN 3 X3EmiMESSEN3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Do you have to turn people away so rudely?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@103)~ 
END 


I_C_T LYROS 19 X3EmiLYROS19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, what an odd task you have us on. As long as we don't wind up doing anything crazy, I'm game to see what exactly we will find.~
END

I_C_T EMBARL 6 X3EmiEMBARL6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm quite glad we avoided violence. Your mercy is admirable, you know that?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~ 
== EMBARL ~Farewell, my savior.~
END


I_C_T EDWIN 1 X3EmiEDWIN1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Well, this is a familiar face.~
== EDWIN ~As is yours, but I care not for it. Keep silent and let I and your leader speak.~
END

I_C_T ELGEA 6 X3EmiElgea4
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I am glad we got here in time. I can't imagine someone being buried alive in such fine clothes. Or well, any clothes. I'm just glad we got here in time.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You are the strangest mutt I have ever met, Emily.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And you, Vienxay, are the nicest elf, ever! Thank you.~
END 

INTERJECT ELGEA 6 X3EmiELGEA6 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well. I'm not just going to let her stand here for your games, <CHARNAME>. I'll undo your bonds, friend. My apologies for my friend's completely rude behavior.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@109)~ 
EXTERN Elgea Emily 

INTERJECT ELGEA 7 X3EmiELGEA7
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And I thought the answer was obvious. Forgive my friends, let me take care of your bonds.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@106)~ 
EXTERN Elgea Emily 

CHAIN Elgea Emily 
~Thank you, noble woman. Perhaps you should choose who you spend your time with more carefully.~
EXTERN Elgea 10

I_C_T BODHI 20 X3EmiBODHI20 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That's a relief. The Shadow Thieves may not be the greatest people, but they're better than this.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~ 
END 

I_C_T BODHI 18 X3EmiBodhi18
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I can tolerate a lot, <CHARNAME>. At least in my opinion. But this path? I cannot walk it with you. Goodbye. I don't think we'll meet again, where you are going.~
DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~ 
END 

I_C_T BODHI 6 X3EmiBODHi6 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't think I could follow if you wanted to work with her. I just feel...so much evil here.~
END

I_C_T BODHI 1 X3EmiBODHI1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Careful. Something is...really wrong. I can feel it in my blood. And I shouldn't feel things in my blood.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I disagree. There is power coming from her, and where there is power, there is opportunity.~
END 

I_C_T KAMIR 4 X3EmiKamir4 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That's a great way to talk to someone grieving. Be more considerate, will you?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@106)~ 
END 

I_C_T KAMIR 23 X3EmiKAMIR 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You know, we didn't have to take a single life to make this happen. And that makes it all the greater.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~ 
END 


CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,1)
Global("X3Emi","LOCALS",0)~ THEN FFCUST05 X3Emi
~Ah, are you Castilla's daughter, then? How is he, your father?~
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ ~It is hard to say. I haven't seen him recently...I miss him, even. Sadly though, I must get going. Adventure, and such!~
EXIT 

INTERJECT GGUARD01 1 X3EmiGGUARD01
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, you are mistaken sir! This man is just a messenger.~
== X3EmiJ IF ~Global("Gavegbegg","AR1000",0)~ THEN ~In fact, I was just paying him for his message he was delivering us. Five hard earned coins, good messenger!~
DO ~ActionOverride("Gbegg01",TakePartyGold(5))~
EXTERN GGUARD01 4

I_C_T VICONIJ 79 X3EmiViconiJ79
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Hrm, maybe I have Viconia all wrong. Or half-wrong. I knew some part had to be nice.~
END 

I_C_T PTAGGET 24 X3EmiPTAGGET24
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I know this situation is grim, but, come, reconsider this direction, <CHARNAME>. If we can help all of these slaves, that is a much better course.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T RAELIS 79 X3EmiRaelis79 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I hardly think whatever law they broke constitutes this treatment. Come on, <CHARNAME>. We are better than this!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~ 
END 

I_C_T RAELIS 76 X3EmiRaelis76 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I hardly think whatever law they broke constitutes this treatment. Come on, <CHARNAME>. We are better than this!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~ 
END 

I_C_T TANNER 18 X3EmiTanner18
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, that's one way to know the truth. We can't let him get away!~
== TANNER ~My work shall not be lost!~
END 

I_C_T BBEGG2 1 X3EmiBBEGG2-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Kal")~ THEN ~It's sad to think that these people go hungry without some charity. Life is really hard for the common man.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please.  They need to earn their own keep. Keep your coins to yourself, <CHARNAME>. I doubt he'll even buy bread with it.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END

INTERJECT LOUT 22 X3EmiLOUT22 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I can't believe you're just going to stand there! I won't allow this!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)Attack("Dennis")~  // Captain Dennis
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I'm with you, Emily!~ // Recorder only attacks in this version.
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)Attack("Dennis")~ 
EXIT 

I_C_T OHHFAK 33 X3EmiOHHFAK-33
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This woman is really mad. This whole thing is mad. I'm tempted to say we should just leave.~
END 

I_C_T HEXXAT 0 X3EmiHEXXAT-0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~So we're casually chatting after watching our crazy companion die? Or are we going to take her down? My arrows are ready to strike her evil heart.~
== HEXXAT ~I have no quarry with you.~
END 

I_C_T ISAEA 29 X3EmiISAEA29
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Such corruption. And I thought some of the families back in Tethyr were bad. We have to find a way to stop him.~
END 

I_C_T MARIA 5 X3EmiMARIA-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~If the law is as harsh here as it is in Tethyr about these things...this is not good.~
END 

I_C_T YUSUF 2 X3RebYUSUF2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is wrong! You have stepped too far, Anomen!~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Too far? It sets the scales equal. Such is what revenge demands.~
END 


I_C_T HIDDEN 13 X3EmiHidden13
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")Global("SawIllithid","LOCALS",1)~ THEN ~That...was definitely not an expected sight. This can't be anything good.~
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What the hell did I just see?~
== HIDDEN ~Remember, say a word, and I will kill you.~
END 

I_C_T GERHAR 17 X3EmiGERHAR17
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Interesting. Lady Jysstev is involved, somehow? Just when you think you know a family as only proud and arrogant.~
END 

I_C_T BBEGG2 4 X3EmiBBEGG2-4
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, okay. Anyone else see what the halfling did? Never mind, if he needs it let him have it.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, that's a classic trick in the halfling book, good work kin...wait a minute, that's our coin!~
== BBEGG2 ~Heehee.~
END 

I_C_T BBEGG1 1 X3EmiBBEGG1-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3TalkedToBeggar","GLOBAL",0)~ THEN ~I hope he doesn't spend it in one place.~
DO ~SetGlobal("X3TalkedToBeggar","GLOBAL",1)IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. The mutt is going to make us broke. Let us be away from the poor before she begs for more charity.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END


I_C_T SCSARLES 11 X3EmiSCSARLES11 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, that is the well loved, Sir Sarles. I'm sure you can tell why.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Your humor is unappreciated. I can't imagine why anyone can stand someone so snobbish and prideful about themselves.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh, Vienxay. You are one of a kind.~
END

I_C_T SCQAR 0 X3EmiSCQAR0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EGVJQuest","GLOBAL",0)~ THEN ~Oh, we're just here to see Mr. Jurgenson, no worries!~
== SCQAR ~Then head to the guest rooms, and stop bothering me.~
END 

I_C_T SCLJYSS 0 X3EmiSCLJYSS0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EGVJQuest","GLOBAL",0)~ THEN ~Actually, we're here on business with Mr. Jurgenson.~
== SCQAR ~Then why are you speaking to me? He is in the guest room.~
END 

INTERJECT TOLGER 80 X3EmiTOLGER80
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN
~We are not turning him over to you, wizard. I stand by him.~
EXTERN TOLGER 81

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN ORIONA X3Emi
~Emily Castilla, from the house in Tethyr, yes? Your brother has spoken much about you.~
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ ~That's great! I'm so glad I'm popular.~
== ORIONA ~Infamous more like it. Running from home and responsibility, it is no wonder why your spot was challenged. And, of mixed blood. Is it true?~
== X3EmiJ ~You're going to spread it anyway no matter what I say. So let's leave it at that.~ 
EXIT 

I_C_T TOLGER 36 X3EmiTolger36 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You are a sick person, <CHARNAME>. If this is how you treat comrades, don't expect me to keep sticking around.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@109)~
END 

I_C_T VICONI 11 X3EmiVICONI11 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We had the chance to do something. I can't believe we just stood and watched.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We would have had to likely fight these others, Emily. It would have been worse in the end.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)~
END 

I_C_T VICONI 2 X3VieVICONI2
 == X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad we saved her. Despite what she is...I am fine with her with us. She'd probably get hunted again if we went our separate ways.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T TOLGER 21 X3EmiTOLGER23
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't like being threatened to do something. This whole thing is a bit wrong, to me.~
END 

I_C_T VICG1 4 X3EmiVICG14
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I wouldn't use to think this, but...she shouldn't die just because she is a drow. We should do something.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~There are so many stories about the consequences of ignoring them as a threat, Emily. I don't know if we should interfere.~
END  

I_C_T MEKRAT 16 X3EmiMEKRAT16 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Sir Sarles? He is a highly desired artist in every noble circle on the Sword Coast. There is probably a work or two in my house estate made by him.~
END

I_C_T SASSAR 29 X3EmiJSASSAR29
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~On one hand? We are insane. On the other? I'm so glad we are doing this.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T SASSAR 30 X3EmiJSASSAR29
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, I know this is insane...but this man needs us. The entire city does. I hope we reconsider this.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T MEKRAT 16 X3EmiMEKRAT16 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~A slave. If you do take the reward, I hope it's to release him.~
END

I_C_T GAAL 22 X3EmiGaal
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oops. We killed his master and now he's desperate to cause more evil. A big mistake.~
END 

I_C_T GAAL 20 X3EmiGaal
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And after all we did for you, too. You asked for it.~
END 

I_C_T Garrick 2 GarrickX3Emi2 
== X3EmiJ IF ~See("X3Emi")IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN ~I'm surprised you don't remember me. I was staying in Feldepost's inn.~
== Garrick ~Oh? Who are you?~
== X3EmiJ ~Oh, I'm E- Never mind that! You seem distracted. Good luck with your lady. You're definitely going to need a lot of it.~
END

 
CHAIN IF WEIGHT #-1 
~See("X3Emi")  // X3Emi
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Emi")  // X3Emi
RandomNum(2,1)
Global("Prophet4X3Emi","LOCALS",0)~ THEN PROPHET4 Emily
~Put out your eyes! Release yourself from the lies!~
DO ~SetGlobal("Prophet4X3Emi","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3EmiJ ~Okay. These people, <CHARNAME>? Definitely need help.~
EXIT 

I_C_T MAEVAR 14 X3EmiMAEVAR14 //No penalty, since the player doesn't have much of a choice and she's already unhappy with assisting thieves.
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Right, stealing from the temple of Lathander. That will certainly make a good impression on the gods. I'm not quite comfortable with this but...if it's our only choice.~
END

I_C_T MAEVAR 31 X3EmiMAEVAR31 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Okay. We're bounty hunting now. Thankfully this is the last...but if there is a way to do this without killing? That would be highly preferred.~
END

I_C_T DCLERIC 1 X3EmiDCLERIC1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Wow, he has no plan at all. I guess a merciful death it is.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== DCLERIC ~Rarrgh!~
END

I_C_T DBEGGAR2 3 X3EmiDBEGGAR2-3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Do we have to be so inconsiderate? Come on, now.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~
END

I_C_T DBEGGAR 6 X3EmiDBEGGAR 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Threatening helpless beggars? A bit low, that. Even if he is a bit slimy.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@103)~
END

I_C_T DBEGGAR2 2 X3EmiDBEGGAR2-2 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It is just one coin, isn't it?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@103)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Which he will ask for tomorrow, and the next day. Let him earn it.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~
END

I_C_T DLOST 3 X3EmiDLOST3-3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That was harsh.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@103)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~It nay our job to mother her. Shame the mother, not <CHARNAME>, aasimar.~
== DLOST ~Waagh!~
END

I_C_T DBEGGAR2 2 X3EmiDBEGGAR2-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3TalkedToBeggar","GLOBAL",0)~ THEN ~I hope he doesn't spend it in one place.~
DO ~SetGlobal("X3TalkedToBeggar","GLOBAL",1)IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. The mutt is going to make us broke. Let us be away from the poor before she begs for more charity.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END


I_C_T RENAL 22 X3EmiRenal22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Right, this is exactly how the nobles back home think. Use mercenaries so you don't weaken yourselves. Ah, look, that makes us pawns now.~
END 

I_C_T DHARLOT2 2 X3EmiDHARLOT2-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Wow. You really just wanted to go off with her alone while we just waited around for you? I thought you were better than this.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~
END 

I_C_T GIRL2 5 X3EmiGIRL25 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I can't believe they put her in a troll pen. Such evil! At least they're dead idiots now. Justice well served.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~What a wonderful thing you have done, <CHARNAME>. They have a hopeful chance now.~
DO ~IncrementGlobal("X3Rebpp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Eh, if they wound up behind bars once...always a risk it could happen again.~
== GIRL2 ~Thank you, thank you!~
END 

I_C_T GIRL2 4 X3RebGIRL24 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I can't believe they put her in a troll pen. Such evil! At least they're dead idiots now. But without any coins...I'm a bit worried.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@113)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Me too. They'll just enter the streets now, poor, and starving. I am really worried.~
DO ~IncrementGlobal("X3Rebpp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@413)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Come on, be easy on <CHARNAME>, eh? Fact is, the girl is free. Rest is up to her, whether she was given money or not.~
== GIRL2 ~Thank you! Bye!~
END 

I_C_T HAEGAN 3 X3EmiHAEGAN
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, if you won't turn yourself in, you give us no choice!~
== HAEGAN ~Die, fools!~
END 

INTERJECT NALIA 109 X3EmiNalia109 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Right, I think that's enough gutting coins out of clearly desperate people. Miss, you have our aid, and <CHARNAME>'s hopefully! Just tell us more about the problem.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
EXTERN NALIA 50

I_C_T HENDAK 19 X3EmiHendak19 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Hrm, a chance to crush slavery after our little revolt? I'm definitely in.~
END 

I_C_T HENDAK 37 X3EmiHendak37 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This man is right. Everyone whispers about certain "activities" that happen here. I think we've seen enough to know it's true.~
END

I_C_T AEMERCH 4 X3EmiAEMERCH 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Not as good of a kind as I'd want others to be.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END

I_C_T HENDAK 30 X3EmiHendak30 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Now this, <CHARNAME>, is something to be proud of! We've done such good today.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",8)
DisplayStringNoNameDlg(Player1,@119)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN ~Pfft, the detail that matters is this gets more fame and glory for us, woohoo!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END 


I_C_T HENDAK 7 X3RebHendak7 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~Where is your compassion, your honor? We should not do nothing.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. He got himself into this cage, he can get himself out. <CHARNAME> has the right out of it.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Weren't you saved from a cage, elf? Still, I agree, he ought to fight his own bloody battles.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@213)~
END  

I_C_T KORGANJ 49 X3EmiKorganJ49 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~Wow. I hate to say it, but you Korgan, are completely disgusting.~
== KORGANJ ~If I asked for yer yapping, aasimar, I would have spoke up!~
END 

I_C_T KORGANJ 47 X3EmiKorganJ47 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Wow, and here I thought Korgan was a kindly dwarf. To hell with his opinion.~
END


I_C_T LEHTIN 26 X3EmiLEHTIN26 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~So we're helping slavers now. Great! Did we just drop all sense of decency?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
END 

I_C_T FIRKRA01 8 X3EmiFIRKRA01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, everyone deserves help, but House Firkraag has a very brutal reputation. And I mean *brutal*. Still, we should do this.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I second Emily's opinion...He once blocked needed funding for the Temple. But helping him could help change his mind about the bards and priests of Oghma.~
END 

I_C_T LEHTIN 9 X3EmiLEHTIN9 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I hope you weren't expecting a confession of "Wow, you're smart, I totally did it". We'll have to find another way, or you know, just start fighting. Probably better not to do that though.~
END 


I_C_T SCDUR 27 X3RebSCDUR
== X3EmiJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~That...is not good. Definitely not good.~
DO ~IncrementGlobal("X3X3miApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T ANOMEN 9 X3EmiAnomen9 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You must have had a *really* bad day, <CHARNAME>. I hope behavior like this does not continue.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END  

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN WAYLANE X3Emi
~Hey! Golden eyed and haired lady!~
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ ~And golden greetings to you, too!~
== WAYLANE ~Yes, you! See this mighty fine sphere here? You can have it for your very own for a mere 500 gold pieces! What do you say?~
== X3EmiJ ~Ooh, what does it do?~
== WAYLANE ~Uh...well, it's a sphere! And it's magic.~
== X3EmiJ ~Ha, well, Maybe you should think out all the details next time.~
EXIT 



I_C_T BEGGAR2 6 X3EmiBeggar1-6 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It's nice we can make their lives just a little bit easier for one day.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
END  

I_C_T BEGGAR2 8 X3EmiBeggar1-8 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Do we really have to be so cold and then stingy with our coins?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@106)~
END  

I_C_T BEGGAR1 2 X3EmiBeggar1-2 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Wow. That's exactly what a poor, struggling man wants to hear. Shameful, <CHARNAME>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END  

I_C_T BEGGAR1 1 X3EmiBeggar1-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It won't do much but...it is something for the pitiful man.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
END 

I_C_T BEGGAR3 1 X3EmiBeggar3-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I know this is a con but...I just feel terrible she is in a condition she had to do this.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please. If she wants coin, she should earn it. There are no beggars in Evermeet for a reason.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T GAELAN 74 X3EmiGaelan74 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Hrm, I don't know. It's a bit scary to raise money for someone you don't even know.~
END  

I_C_T GAELAN 66 X3VieGaelan74 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Normally I'd be terribly uncomfortable with this arrangement. But it's better than the alternative.~
END 

I_C_T CIRCG1 5 X3EmiCIRCG1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad we did this, truly. The promenade has already been damaged enough.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END

I_C_T BOY1 1 X3EmiBoy1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Not an ounce of compassion? We are perfectly capable of helping this child, if you showed a bit of care.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T AERIE 1 X3VieAerie1 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Emi")~ THEN ~Don't do that to her, <CHARNAME>. We shouldn't profit off of misfortune.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN MURTLEN X3Emi
~You! Have you ever been cheated here? I bet ye have!~
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ ~What? Er, not really, no. I tend to find the happy medium! Though that is probably not what you wanted to hear.~
EXIT 

I_C_T TOWNC01 36 X3EmiTOWNC036
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, they should know better than to mess with my queen.~
END 

I_C_T HAQUAT 0 X3EmiHAQUAT0 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~These are beautiful. A pity they aren't quite suitable for displaying in tents during travel, hmm?~
END 

I_C_T TOWNC01 1 X3EmiTOWNC01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Ah, so good to know that politics ever carries on in its endless debates. Though I confess, they would be better joining my home nation of Tethyr.~
END 

I_C_T TOWNC01 15 X3EmiTOWNC015 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'd...disagree, but having been in the Mithrest, sadly it's very true.~
END 

I_C_T TOWNC01 3 X3EmiTOWNC03 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Familial misdeeds...I don't even want to know what that means.~
END 

I_C_T TOWNC01 18 X3EmiTOWNC018
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm not surprised Amn and Tethyr are having issues like this. Quite a long history.~
END 

I_C_T SEVPAT01 5 X3EmiSevPat01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Well, I guess there's no asking for cooler tempers to prevail then. Maybe?~
== SEVPAT01 ~Die fool!~
END 

I_C_T WCUST02 5 X3EmiWCUST02
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Debutante just means she's eligible for marriage. Not as fancy as it sounds.~
== WCUST02 ~Get away from me! I'll not be in the company of one who lowers herself to common filth.~
== X3EmiJ ~And that's the quality of tongue every spouse wants, too. Your husband will be *so* lucky.~
END

I_C_T WCUST03 2 X3EmiWCUST03 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, they're not *all* giving the evil eye. Just half of them, look, that sir over there isn't even paying attention.~
== WCUST03 ~You, Lady Emily, are the only one to treat me with an ounce of respect. For that you have my gratitude and amusement.~
END 

I_C_T WCUST05 0 X3EmiWCUST05 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Exactly. It's like they're trying to take all the attention. Quite rude.~
== WCUST05 ~I have no interest in your humor today, Lady Emily.~
END 

I_C_T DEGARD 6 X3EmiDEGARD6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I was never a fan of Edwin, but that doesn't make what we have decided to do right.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Shut up and fight. The gold is worth the riddance of this mage!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
Global("X3Emi","LOCALS",0)~ THEN BELMIN X3Emi
~You! Another of that foul race of elves I see before me! You dare approach me?~
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ ~Well...technically half. And technically more so an aasim- wait. Should I say that? Probably not.~
== BELMIN ~Half?! Foul! Sickening!~
== X3EmiJ ~You're starting to sound like the people back home. I've had enough of that. Let's go.~
EXIT 


/*Story/Essential Interjections*/


//Celvan
CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN CELVAN X3Emi
~"There once was a aasimar so true,
Of eyes and hairlocks both golden hue.
Her path demands she fights to be heir,
Of which the outcome will declare
Who the responsibility of the house is due."~
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ ~What? I am sure I don't know you. Pretty sure! I hope. How do you know these things?~
EXTERN CELVAN 1


//Madam Nin
EXTEND_BOTTOM MADAM 0
IF ~Name("X3Emi",LastTalkedToBy)~ EXTERN X3EmiJ X3EmiMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Emi",LastTalkedToBy)~ EXTERN X3EmiJ X3EmiMadam
END


CHAIN X3EmiJ X3EmiMadam 
~Right. Definitely no thanks. Not only would my parents kill me, but I'd probably kill me, and we can't have that.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("X3EmiRomanceActive","GLOBAL",1)
Global("X3EmiRomanceActive","GLOBAL",2)~ THEN MADAM X3EmiMadam
~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~
== X3EmiJ ~<CHARNAME> is definitely not interested in any of your harlots or your ill-repute business. Sorry!~
EXTERN MADAM 17

//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Emi",LastTalkedToBy)~ EXTERN TRGYP02 X3Emig1
END

CHAIN TRGYP02 X3Emig1
~Ah, you are more than you are appear, yes. A clash between blood, and only one may emerge triumphant. But seek not his recognition, but the people's, and you may yet find victory.~
== X3EmiJ ~You can really see all of that? Thank you! Although, I am even more nervous now...~
EXIT

//Sylvanas 
CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Emi",LastTalkedToBy)~ THEN SALVANAS X3EmiSalvanas
~What is this? An angel stepping into the inn? Such beautiful golden locks...and golden eyes. I could be lost in them forever.~
== X3EmiJ ~Wow. Okay...~
== SALVANAS ~Your body is so delightful, my heart is burning in fire.~
== X3EmiJ ~Creepy. You are very good at that.~
== SALVANAS ~I only mean to express my desire of you, my lovely angel. Never have I seen such beauty.~
== X3EmiJ ~Well, this is uh, kind and all. But we wouldn't work out. At all. Excuse me...~
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3EmiYOSHJ113
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I pity you, Yoshimo. I hope the gods forgive you. I won't.~
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi") Range("X3Emi",15)~ THEN
~You look as pale as the moon. Paler, even. What's going on?~
END
++ ~There's nothing wrong with me.~ EXTERN X3EmiJ spellhold.1
++ ~I'm fine. Just... a bit dizzy.~ EXTERN X3EmiJ spellhold.1
++ ~Something's not right. I think Irenicus did something to me.~ EXTERN X3EmiJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3EmiJ spellhold.1
~Well, listen. Whatever Irenicus did? We're going to see it undone. Trust me.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If ye need healing, I'm here. And if ye need to give that bastard a beating, all the better.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, hate to be the pessimistic one, but...this is shaping out to be quite the misadventure. We need to right our fortunes.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We have to survive. No. We will survive, together.~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let us either achieve our revenge, or get out of this place, quickly.~
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3EmiFirstSlayerChange1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")See("X3Emi")~ THEN ~What...were you? Are you? You looked like something from my worst nightmare. Twice as worse, if that is a thing. Gods.~
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3EmiSecondSlayerChange0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi") OR(2) Global("X3EmiRomanceActive","GLOBAL",1) Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~<CHARNAME>, you're shaking. I'm here, just talk to me!~
END
++ ~Get away from me, I'm turning!~ EXTERN X3EmiJ X3EmiSecondSlayerChange1
++ ~It's coming again, Emily! Run while you can!~ EXTERN X3EmiJ X3EmiSecondSlayerChange1
++ ~I feel... strange...~ EXTERN X3EmiJ X3EmiSecondSlayerChange1

CHAIN X3EmiJ X3EmiSecondSlayerChange1
~What are y- oh gods!~
DO ~SetGlobal("X3EmiSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3EmiSlayerSurvived1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi") OR(2) Global("X3EmiRomanceActive","GLOBAL",1) Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSecondSlayerChange","GLOBAL",1)~ THEN ~Well. I really did not need a reminder that what I saw the first time wasn't in my head.~
= ~If that keeps happening...well. Gods, I hope you can find a way to control it.~
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Emi") Global("X3EmiSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END


// Phaere

CHAIN IF ~Global("X3EmiCheckMad1","GLOBAL",1)Global("X3EmiMad1","LOCALS",0)~ THEN X3EmiJ Phaere_Warning
~<CHARNAME>, what are you doing? You shouldn't toy around with an idea like that to her.~ 
DO ~SetGlobal("X3EmiMad1","LOCALS",1)~
END 
++ ~I didn't think you'd be so jealous, Emily.~ + PW.1 
++ ~It's just a game, Emily, to gain a bit of trust. Nothing more.~ + PW.2 
++ ~Stick your nose out of it, Emily.~ + PW.3

CHAIN X3EmiJ PW.1 
~Jealous? What does that have to do with you being foolish? What is the idea, here?~
END 
++ ~It's just a game, Emily, to gain a bit of trust. Nothing more.~ + PW.2 
++ ~Stick your nose out of it, Emily.~ + PW.3

CHAIN X3EmiJ PW.2 
~Well, don't. Not in this way. Playing with fire gets you on fire. Or something like that. Be more careful.~
EXIT 

CHAIN X3EmiJ PW.3 
~Well, fine. But when you have time, go over the consequences very carefully before you think this is a good idea.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-10)DisplayStringNoNameDlg(Player1,@109)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3EmiRomanceActive","GLOBAL",1)
Global("X3EmiRomanceActive","GLOBAL",2)~ + ~My companion, Emily.~ EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3EmiCheckMad2","GLOBAL",1)Global("X3EmiMad2","LOCALS",0)~ THEN X3EmiJ X3EmiPhaere
~Well, welcome back, <CHARNAME>.~ [X3BLANK]
DO ~SetGlobal("X3EmiMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3EmiJ X3EmiPhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3EmiJ X3EmiPhaere2

CHAIN X3EmiJ X3EmiPhaere1
~Don't even try to talk to me. I can tell by your face what happened.~
= ~I hope it was worth it. But you definitely aren't the person I thought you were. Let's just go.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@109)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3EmiJ X3EmiPhaere2
~From the looks of you...nothing happened. Thank the gods.~
= ~Let's finish up what we were doing here and get out of this city. And the Underdark too. I've had all I can handle.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@116)~ 
EXIT

//Bodhi 
EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3EmiKidnap
END

CHAIN BODHIAMB X3EmiKidnap
~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~
= ~Consider your aasimar, Emily. I understand you have gotten close. I can't imagine what it will feel like when something happens to one of you.~
== X3EmiJ ~Oh, don't worry, kindly monster! <CHARNAME> has a way of getting through things just fine.~
== BODHIAMB ~It is not the loss of him you should be afraid of. <CHARNAME>, follow me further and you will lose more than you can imagine. Beginning now!~
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3EBodhi")~ UNSOLVED_JOURNAL @31 
EXIT

//Emily Not Kidnapped 

I_C_T C6BODHI 0 X3EmiC6Bodhi0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I think you are far overdo your punishment, Bodhi. You've done far too much!~
END

//Emily Kidnapped 

A_T_T C6bodhi 21 ~!Global("X3EmiVampire","GLOBAL",1)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("X3EmiVampire","GLOBAL",1)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("X3EmiVampire","GLOBAL",1)~ + ~You have taken too much already! Return Imoen's soul, and Emily!~ EXTERN C6BODHI X3EmiAb
+ ~Global("X3EmiVampire","GLOBAL",1)~ + ~And you have delivered on that promise. Return Emily to me and perhaps I will be merciful.~ EXTERN C6BODHI X3EmiAb
+ ~Global("X3EmiVampire","GLOBAL",1)~ + ~I would have hunted you for your theft of Emily alone. I will not lose her!~ EXTERN C6BODHI X3EmiAb
+ ~Global("X3EmiVampire","GLOBAL",1)~ + ~You place too much confidence in sentiment. Taking Emily will not save you.~ EXTERN C6BODHI X3EmiAbConf
END


CHAIN C6BODHI X3EmiAbConf
~An interesting ploy, though I am sure her fate will still serve as an example, whether you wish her back or not.~
END
IF ~~ EXTERN C6BODHI X3EmiAb

CHAIN C6BODHI X3EmiAb
~Her aasimar's blood shielded her from the turning, else I would have delightfully used Emily against you. Still, her blood is delicious; she bleeds on my altar as we speak.~
= ~I am tempted to let you see her, just so I can take your life in front of her eyes, but your screams will have to do.~
END
IF ~~ EXTERN C6BODHI 22


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiTreeOfLife","GLOBAL",0) !Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 Epl2
END

CHAIN PLAYER1 Epl2
~Emily, the aasimar archer who was eager to set off with you to bring some good about. You wonder if she knows just how great the fight is compared to all of your travails before.~
DO ~SetGlobal("X3EmiTreeOfLife","GLOBAL",1)~
END
+~Global("X3EmiHeir","GLOBAL",1)~+ ~Emily, you have an estate to run. You should leave.~ EXTERN X3EmiJ pl2.2
+~!Global("X3EmiHeir","GLOBAL",1)~+ ~Emily, you've already lost so much for me. You don't need to lose anything else.~ EXTERN X3EmiJ pl2.2
++ ~This may be our last fight. Are you sure you wish to go with me?~ EXTERN X3EmiJ pl2.1
++ ~I need to know that you are ready, Emily.~ EXTERN X3EmiJ pl2.1

CHAIN X3EmiJ pl2.2 
~I know the risks. But I will not be going anywhere.~
EXTERN X3EmiJ pl2.1

CHAIN X3EmiJ pl2.1
~I am ready to take on Irenicus. I intend to make every shot count. And if I don't make it? There is no better <PRO_MANWOMAN> that I would say I could have died next to.~
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiTreeOfLife","GLOBAL",0) Global("X3EmiRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 Epl3
END

CHAIN PLAYER1 Epl3
~Emily, the quirky aasimar archer who has given you her quiver and her heart. She looks upon you, with a questioning glance.~
DO ~SetGlobal("X3EmiTreeOfLife","GLOBAL",1)~
END
++ ~Emily...I-~ EXTERN X3EmiJ pl3.1

CHAIN X3EmiJ pl3.1
~Oh, you don't have to say it. This is when we say something that amounts to a "I hope this isn't a goodbye." We could probably have given a lot of them by now.~
= ~But this is...really that situation. So I want to say: Thank you. Thank you for taking me with you, for doing all of you could for me, for being a man that I could be happy to love.~
= ~I don't have anything witty or sarcastic to add. So I'll end with this: Let's finish him.~
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3EmiIrenicusIsDead1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We did it, we won! I... think?~
END

// Hell

I_C_T PLAYER1 25 X3EmiEnteringHell1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~How did I... What happened? Did I die?! We were fighting and then...that pain. Worst. Pain. Ever. Still, there's nowhere else to go with you but forward, to whatever end there is.~ [X3EDID]
END

// Irenicus in hell

I_C_T HELLJON 7 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm almost out of ammunition for every creature that has been in our path to get to you. But I still have enough to put you down for good, Irenicus.~
END

I_C_T HELLJON 8 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm almost out of ammunition for every creature that has been in our path to get to you. But I still have enough to put you down for good, Irenicus.~
END

I_C_T HELLJON 9 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm almost out of ammunition for every creature that has been in our path to get to you. But I still have enough to put you down for good, Irenicus.~
END

I_C_T HELLJON 10 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm almost out of ammunition for every creature that has been in our path to get to you. But I still have enough to put you down for good, Irenicus.~
END



//Conflicts 

//Hexxat Conflict 
CHAIN IF ~Global("X3EmiHexxatConflict","LOCALS",1)~ THEN X3EmiJ DornConflict 
~Right, I can tolerate a lot, really. But a vampire?! I'll not shame my family name and be in the presence of a monster! Nor my heritage, if I can help it.~
== HEXXATJ ~Have I offended you, Emily?~
== X3EmiJ ~You are a vampire. Undead. Evil. Your very presence is offending. I...I should destroy you, but I won't. Only for <CHARNAME>.~
END 
++ ~Trust me, Emily. We could use Hexxat's talents.~ + TrustH 
++ ~Look, I need everyone I can get. Surely you understand?~ + UnderstandH
++ ~Then if that's the way it will be, goodbye Hexxat.~ EXTERN HEXXATJ Go_Hexxat
++ ~Fine. Go, Emily.~ + Go_EmilyH

CHAIN X3EmiJ TrustH 
~We don't, <CHARNAME>. Believe me.~
EXTERN X3EmiJ DismissH

CHAIN X3EmiJ DismissH
~Listen to me, <CHARNAME>. You don't need evil to fight evil.~
END 
++ ~Then if that's the way it will be, goodbye Hexxat.~ EXTERN HEXXATJ Go_Hexxat
++ ~Fine. Go, Emily.~ + Go_EmilyH

CHAIN X3EmiJ UnderstandH 
~Me? No. Not one bit. I have no understanding at all how you can be okay with this.~
EXTERN X3EmiJ DismissH

CHAIN HEXXATJ Go_Hexxat 
~I see I am unwanted. Goodbye.~
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",0)SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)~
EXIT 

CHAIN X3EmiJ Go_EmilyH 
~Fine... I will go.~
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)EscapeAreaMove("AR0704",531,622,SW)~
== X3EmiJ IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~I thought we had something...but if you are choosing a vampire over what we have? Then I guess I was wrong.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

// Dorn Conflict

CHAIN IF ~Global("X3EmiDornConflict","LOCALS",1)~ THEN X3EmiJ DornConflict 
~Right, I can tolerate a lot, really. But the half-orc? I'll not shame my family name and be in the presence of a murderer. Nor my heritage, if I can help it.~
== DORNJ ~If this aasimar does not dare to be in my presence, it is hardly a loss.~
== X3EmiJ ~It does not have to be my loss. Me, or him, <CHARNAME>.~
END 
++ ~Trust me, Emily. We could use his strength.~ + Trust 
++ ~Look, I need everyone I can get. Surely you understand?~ + Understand
++ ~Then if that's the way it will be, goodbye Dorn.~ EXTERN DORNJ Go_Dorn 
++ ~Fine. Go, Emily.~ + Go_Emily

CHAIN X3EmiJ Trust 
~No. I can't. And I am surprised you think we need it.~
EXTERN DORNJ Dismiss

CHAIN DORNJ Dismiss
~Dismiss her. Her whining is becoming dull to listen to.~
END 
++ ~Then if that's the way it will be, goodbye Dorn.~ + Go_Dorn
++ ~Fine. Go, Emily.~ EXTERN X3EmiJ Go_Emily

CHAIN X3EmiJ Understand 
~Me? No. Not one bit. I have no understanding at all how you can be okay with this.~
EXTERN DORNJ Dismiss

CHAIN DORNJ Go_Dorn 
~I have no use for weaklings or fools, and you appear to welcome both.~
DO ~SetGlobal("X3EmiDornConflict","LOCALS",0)SetGlobal("OHH_dornjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)EscapeAreaMove("AR0900",2556,3388,NE)~
EXIT 

CHAIN X3EmiJ Go_Emily 
~Fine. I will go.~
DO ~SetGlobal("X3EmiDornConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)EscapeAreaMove("AR0704",531,622,SW)~
== X3EmiJ IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~I thought we had something...but if you are choosing a murderer over me? Then I guess I was wrong.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

// Starts Emily's Quest. Fires after leaving the Mithrest Inn. 
// Note: We are cutting out the Marvin Yaris content, so revise in the future. 
// Will probably change this to talk 1, and thus, this will not fire after the inn but when the talk timer expires. 
CHAIN IF ~Global("X3miCraft","LOCALS",2)~ THEN X3EmiJ CraftingDone 
~And here you are. I hope it will serve us well.~
END 
IF ~Global("X3EmiBow","LOCALS",9)~ DO ~TakeItemReplace("X3Bow09","Bow09","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",10)~ DO ~TakeItemReplace("X3Bow10","Bow10","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",11)~ DO ~TakeItemReplace("X3Bow11","Bow11","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT
IF ~Global("X3EmiBow","LOCALS",12)~ DO ~TakeItemReplace("X3Bow12","Bow12","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",13)~ DO ~TakeItemReplace("X3Bow13","Bow13","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",14)~ DO ~TakeItemReplace("X3Bow14","Bow14","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",15)~ DO ~TakeItemReplace("X3Bow15","Bow15","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",3)~ DO ~TakeItemReplace("X3XBow03","XBow03","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",6)~ DO ~TakeItemReplace("X3XBow06","XBow06","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",8)~ DO ~TakeItemReplace("X3XBow08","XBow08","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",10)~ DO ~TakeItemReplace("X3XBow10","XBow10","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",13)~ DO ~TakeItemReplace("X3XBow13","XBow13","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",1)~ THEN X3EmiJ QuestStart 
~So...as I promised, Catherine, if we have time in-between somehow, I should speak to Charmaine Hornkeeper and Gregory Von Jurgenson for their support. They are both about the city for their personal business, and I guess she is right I should make use of the opportunity.~ [X3Blank]
DO ~SetGlobal("X3EmiQuest","GLOBAL",2)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ ~Where can I find each of them?~ + Q1.1 
++ ~What is this all for, anyway? I only understood a little bit.~ + Q1.2 
++ ~That's fine, but don't forget, my business takes priority.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Q1.3

CHAIN X3EmiJ Q1.1 
~Charmaine Hornkeeper as I understand is having her son introduced to the Radiant Heart's auxiliary. She may be in their halls.~
== X3EmiJ ~Gregory Von Jurgenson is a friend of the Jysstev Family and is staying with them. He's definitely older blood, and is big on tradition. So let's just say he doesn't like me much.~
DO ~AddJournalEntry(@2,QUEST)~
END 
++ ~Before we go, I wanted to ask you something.~ + Q1.5 
++ ~All right then, sounds simple enough. Let's get going.~ + Q1.Exit 

CHAIN X3EmiJ Q1.2 
~Well, it's sort of political? My father is due to pick a successor in a little while. Traditionally, it is the eldest that is chosen, but by house rules, the younger descendants can challenge for leadership if they are not selected.~
== X3EmiJ ~Then friends of the House are usually selected as voters. We have four of them, and Hornkeeper and Jurgenson happen to be two that are about here at the moment. There was a fifth family, but they didn't survive the civil war from years ago.~
== X3EmiJ ~They cast their vote of support, and the one with the most becomes the successor.~
END 
++ ~Where can I find the two nobles you need for support?~ + Q1.1 
++ ~What happens if there is a tie?~ + Q1.4 
++ ~This is fine, just don't forget my business takes priority.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Q1.3 

CHAIN X3EmiJ Q1.3
~Oh, perfectly understandable. Don't drop everything for me.~ 
EXTERN X3EmiJ Q1.1 

CHAIN X3EmiJ Q1.4 
~Well, I imagine it goes back to my father to make the decision, or maybe it's some older rite? I really should have paid attention to all of the chatter about this when I was back home.~
EXTERN X3EmiJ Q1.1  

CHAIN X3EmiJ Q1.5 
~Sure, ask away.~
END 
+~!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + Q1.6 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ ~What were you up to since we separated?~ + Q1.10 
++ ~Do you really want to be lead your house?~ + Q1.11
++ ~Never mind. Let's go.~ + Q1.Exit 

CHAIN X3EmiJ Q1.6 
~I was...dreading this question.~
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
== X3EmiJ ~I enjoyed everything that happened with us, but there's just so much going on and it's been a while. I don't feel comfortable just winding back the clock, not with this stress of succession.~
== X3EmiJ ~Maybe when everything is sorted and I can think again...and that just makes me think too much. I'm sorry, <CHARNAME>.~
END 
++ ~I understand, Emily. There's a lot of other things we should focus on, first.~ + Q1.7
++ ~If that's what you want.~ + Q1.8
++ ~Fine then. I wasn't interested in you anyway.~ + Q1.9 

CHAIN X3EmiJ Q1.7
~Gods, you are so understanding and kind. I don't deserve it. But...thank you. When things are all right in my head and in the world, maybe I can finally think about it and sort out what I want.~
DO ~SetGlobal("X3EmiInterest","LOCALS",1)IncrementGlobal("X3EmiAppChange","GLOBAL",5)~ // Once the PC gets 30 approval, the Romance line will start.
EXIT 

CHAIN X3EmiJ Q1.8 
~I don't know what I want. And I think that's the problem. And I need to figure that out, somehow. Can we...move now? I feel like if we do something, maybe things will be less confusing.~
DO ~SetGlobal("X3EmiInterest","LOCALS",1)~
EXIT 

CHAIN X3EmiJ Q1.9 
~Ooh, right, let's be hurtful to Emily. I'm going to be nice and assume you're angry. But at the same time, clearly you aren't ready or mature enough. This is certainly for the best, and I'll not revisit it now with that attitude of yours.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~
EXIT 

CHAIN X3EmiJ Q1.10 
~Well, that's a long story. Or short really. Er, yes...it's pretty short.~
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3EmiJ Q1.12 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3EmiJ Q1.13 

CHAIN X3EmiJ Q1.11 
~I don't know...there is the feeling of obligation, and then the consequences of if I don't. But if I could be anyone, without consequences? I don't think that would be it.~
== X3EmiJ ~But sometimes we have to do things we don't like, or have things we don't like get dropped on us. I know you know how that feels.~
END 
+~Gender(Player1,MALE)!Alignment(Player1,MASK_EVIL)Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + Q1.6 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ ~What were you up to since we separated?~ + Q1.10 
++ ~Let's get moving.~ + Q1.Exit 

CHAIN X3EmiJ Q1.Exit 
~You got it!~ 
EXIT 

CHAIN X3EmiJ Q1.12 
~I was guiding Recorder to Amn. We saw a few marvelous sights on the way and even helped save a caravan on its way here from a few bandits, it was quite thrilling.~
== X3RebJ ~You were amazing, Emily! I couldn't have done it by myself.~
EXTERN X3EmiJ Q1.14 

CHAIN X3EmiJ Q1.14 
 ~After that, I was considering what to do next when I met Catherine. I admit, I may have gotten distracted by a few beggars to help in-between but besides that, that's the story.~
END 
+~Gender(Player1,MALE)!Alignment(Player1,MASK_EVIL)Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + Q1.6 
++ ~Can you tell me more about Catherine?~ + Q1.15 
++ ~Let's get moving.~ + Q1.Exit 

CHAIN X3EmiJ Q1.13 
~I was guiding my friend Recorder, a gnome scholar, to the temple in Amn. She showed me a few marvelous sights on the way, and we even leaped to aid a caravan on its way here from a few bandits. It was thrilling.~
== X3EmiJ ~Recorder's knowledge of spells came in handy. There were admittedly quite numerous.~
EXTERN X3EmiJ Q1.14 

CHAIN X3EmiJ Q1.15 
~She was a good friend of mine when we were younger. To you she might be a total snob, but...she always looked out for the best me. She's also great with hair. Hers was marvelous, don't you think?~
== X3EmiJ ~I wish there was more time to catch up, but she's not much for this life, but I'm fine with that. We'll have a moment to catch up with our individual stories someday.~
END 
+~Gender(Player1,MALE)!Alignment(Player1,MASK_EVIL)Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + Q1.6 
++ ~Do you really want to be lead your house?~ +Q1.11
++ ~Let's get moving.~ + Q1.Exit 

// 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",3)AreaCheck("AR2600")~ THEN X3EmiJ Emily_quest_leave 
~I'm sorry, <CHARNAME>, but I can't delay any further for my father. I must head to the Mithrest inn immediately. If all goes well, you can find me there later if you still need me, but I must go now.~ [X3Blank]
END // If the party doesn't go with Emily, she'll only succeed if she has the support of both. Otherwise in our partyless simulation we assume an Emily defeat.
IF ~Global("X3EGVJVote","GLOBAL",1)Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@13,QUEST)SetGlobal("X3EmiKickedOut","LOCALS",1)LeaveParty()EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",1)~  EXIT 
IF ~OR(2)!Global("X3EGVJVote","GLOBAL",1)!Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@13,QUEST)SetGlobal("X3EmiKickedOut","LOCALS",1)LeaveParty()EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",-1)~ EXIT // 

CHAIN IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiQuest","GLOBAL",5)~ THEN X3EmiJ finale.1
~Father! We have arrived. It is so good to see you. Do we have time to catch up before things start? I've missed you.~ [X3Blank]
== X3EFATH ~Emily, it warms my heart to see you again, but I afraid there is no time for proper greetings after all this time. The others are anxious to begin, and this has been delayed too long. Come, have your friends find a place to stand.~
DO ~FadeToColor([30.0],0)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
		Wait(1)
		ActionOverride(Player1,JumpToPoint([543.534]))
		ActionOverride(Player2,JumpToPoint([482.633]))
		ActionOverride(Player3,JumpToPoint([529.600]))
		ActionOverride(Player4,JumpToPoint([571.576]))
		ActionOverride(Player5,JumpToPoint([613.561]))
		ActionOverride(Player6,JumpToPoint([648.532]))
		ActionOverride("X3Emi",JumpToPoint([323.478]))
		SmallWait(1)
		ActionOverride(Player1,FaceObject("X3EFATH"))
		ActionOverride(Player2,FaceObject("X3EFATH"))
		ActionOverride(Player3,FaceObject("X3EFATH"))
		ActionOverride(Player4,FaceObject("X3EFATH"))
		ActionOverride(Player5,FaceObject("X3EFATH"))
		ActionOverride(Player6,FaceObject("X3EFATH"))
			Wait(1)
		StartCutScene("X3ECut01")~ EXIT 

EXTEND_BOTTOM SCBUTLER 0 #4
+~Global("X3EGVJQuest","GLOBAL",0)Global("X3Butler","LOCALS",0)~+ ~We are here to see Mr. Jurgenson, actually. We heard he was here.~ DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN SCBUTLER Jurgenson_butler 
END 

CHAIN SCBUTLER Jurgenson_butler 
~LORD Jurgenson is in the guest rooms. Do not be surprised if he has as little desire to speak with you as I do.~
EXIT 
//Only fires post event, copper coronet not yet arrived to.
CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)Global("X3EmiQuestInterject","LOCALS",1)~ THEN X3EmiJ quest_6
~This...is not what I wanted to happen. Fighting for this? It makes me uneasy. Thomas probably wants me to withdraw out of fear...but I'm not going to let him prevail.~ [X3Blank]
DO ~SetGlobal("X3EmiQuestInterject","LOCALS",2)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ ~Is this really worth your life, Emily? Think this through very carefully.~ + q6.1 
++ ~If you are worried, let me fight for you. I won't hold back against him.~ + q6.2 
++ ~This shows who he really is. He'll spare nothing to get power. You need to be just as merciless.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + q6.3

CHAIN X3EmiJ q6.1 
~Honestly? It's not worth anyone's life. But I'm hoping I can defeat him and spare his life. Maybe then...he can see that I still care about him, despite how stupid he is being, and we can still fix things. Maybe.~
EXTERN X3EmiJ q6.4

CHAIN X3EmiJ q6.2 
~If you really want to, I'll not stop you from offering yourself as my champion. But Thomas is skilled with arms and it will be just you alone fighting him if that is what you seek to do. Just keep it in mind before you volunteer yourself.~
EXTERN X3EmiJ q6.4 

CHAIN X3EmiJ q6.3 
~I can't. I'm not like that. I'm going to try to spare him, as stupid as it sounds. But with how skilled he is...that may not be possible either.~
EXTERN X3EmiJ q6.4 

CHAIN X3EmiJ q6.4 
~I guess we'll see how this all ends shortly, one way or another.~
EXIT 

// Only fires if Emily was not Heir and quest concluded once they return to the Promenade.
CHAIN IF ~Global("X3EmiQuest","GLOBAL",11)~ THEN X3EmiJ bad_quest_end 
~I feel so...so terribly broken inside. I know I shouldn't be crying in a middle of a market place, but I just feel so...so hollow.~ [X3Blank]
DO ~SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Embrace her.)~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + bq.1 
++ ~You did your best. And perhaps if that is how you are treated in loss, then they never deserved your leadership in victory.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + bq.2
++ ~So what? You are so much better off as an adventurer than some noble off in their manor anyway.~ + bq.2 
++ ~Get a hold of yourself, woman. Life goes on. Deal with it.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + bq.3

CHAIN X3EmiJ bq.1 
~(She holds you tight for a while, head pushed into your shoulder as she sobs for a time.)~
EXTERN X3EmiJ bq.love


CHAIN X3VieJ bq.V.interject 
~I suppose we are almost kin in a way. Exiled from what we know...I can hardly believe I am saying this, but you deserved better than what happened, Emily..~
== X3EmiJ ~Gods, Vienxay, that is...somehow the nicest thing you've ever said to me, and it's actually making me feel a little less bitter right now.~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.love
IF ~!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.6

CHAIN X3EmiJ bq.3 
~What? Damn you! Damn you and damn my brother too! All this talk of might and strength is rubbish if we just...if we just...~
== X3EmiJ ~My life is changed forever now. Being with you has changed everything...maybe for the worse. I don't know.~
END 
++ ~Do not blame me for what transpired. Those choices were theirs, not mine.~ + bq.2 
++ ~For the worse? Are you that ungrateful?~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + bq.4 
++ ~Leave then if that is what you feel. I don't care.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + bq.5 

CHAIN X3EmiJ bq.5
~Of course you don't care. Sometimes...sometimes...*sigh*. No matter what choice I make, I'll still be on the road. And I guess that is what I feel in the end.~
EXIT 

CHAIN X3EmiJ bq.4
~I...no. I don't mean to put my anger on you. It's wrong. I'm sorry about that.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ bq.V.interject 
IF ~!IsValidForPartyDialogue("X3Vie")Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.love
IF ~!IsValidForPartyDialogue("X3Vie")!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.6

CHAIN X3EmiJ bq.2 
~You're probably right when you say that. I just wish it made it easier to bear.~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ bq.V.interject 
IF ~!IsValidForPartyDialogue("X3Vie")Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.love
IF ~!IsValidForPartyDialogue("X3Vie")!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.6

CHAIN X3EmiJ bq.love 
~What do I do now, love? You are my light. I could use...I could use your words right now.~
END 
++ ~Keep going. When everything is over, we'll have each other.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + bq.7
++ ~I know it will be hard, but you just have to keep moving.~ + bq.6 
++ ~I've nothing to say. You just need to figure it out yourself.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~  + bq.6 
++ ~We have Irenicus to stop. That's all that matters.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~  + bq.6

CHAIN X3EmiJ bq.6 
~I know we still have Irenicus to deal with. Despite my...personal failures, I'll see this through with you. And after...I'll just have to figure everything out then.~
EXIT 

CHAIN X3EmiJ bq.7
~The thought of that does make it easier to keep going. You've no idea just how important you are to me.~
EXTERN X3EmiJ bq.6


// Player killed Thomas 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",8)Dead("X3EBRO")!Global("X3EmiDuel","GLOBAL",1)~ THEN X3EmiJ Thomas_killed 
~Thank goodness you are okay, <CHARNAME>. Though seeing Thomas killed...I wish it could have ended differently.~ [X3Blank]
DO ~AddJournalEntry(@19,QUEST_DONE)SetGlobal("X3EmiHeir","GLOBAL",1)SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",6)AddexperienceParty(29750)~
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Embrace her)~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + embrace 
++ ~I took no joy in it, but it was necessary.~ + heir_now 
++ ~He brought it upon himself, making a challenge he had no chance against.~ + heir_now 
// Player spared Thomas 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",8)!Dead("X3EBRO")!Global("X3EmiDuel","GLOBAL",1)~ THEN X3EmiJ Thomas_spared 
~Thank goodness you are okay, <CHARNAME>. I'm glad you spared Thomas, even if he wouldn't speak to me afterwards.~ [X3Blank]
DO ~AddJournalEntry(@19,QUEST_DONE)SetGlobal("X3EmiHeir","GLOBAL",1)SetGlobal("X3EmiQuest","GLOBAL",10)AddexperienceParty(29750)SetGlobal("X3EmiAppChange","GLOBAL",7)~
END 
++ ~He needs time. Perhaps your relationship can mend when things are over.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + heir_now
++ ~He finally understood that he let his anger over-rule his reason.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + heir_now
++ ~This makes you heir now, doesn't it?~ + heir_now

CHAIN X3EmiJ heir_now 
~It doesn't feel very happy or grand, with how everything ultimately went down. It's still a lot to process even. But thank you, <CHARNAME>. I'll not forget this.~
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I love you. I would do anything to help you and keep you safe.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ EXTERN X3EFATH romance 
++ ~It was nothing, Emily. I was supporting my companion as you would have me.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ EXTERN X3EFATH do_now 
++ ~We should get going. There's still a lot to do.~ EXTERN X3EFATH do_now 


CHAIN X3EmiJ embrace
~(She squeezes you back, holding you for a long moment.)~
EXTERN X3EFATH romance 

CHAIN X3EFATH romance 
~*Hem hem*. This is your suitor, then, Emily?~
== X3EmiJ ~Er. Uh. sort of?~
END 
IF ~Race(Player1,HUMAN)~ EXTERN X3EFATH human
IF ~!Race(Player1,HUMAN)~ EXTERN X3EFATH not_human 

CHAIN X3EFATH not_human 
~They are not human, Emily. You risk making the same mistakes that I did, the same road that caused this conflict.~
== X3EmiJ ~Would it, father? I don't know where our relationship will end up. But I won't hide it, or end it out of fear for what others may think. I want them to see that we are good and can help regardless of who my heart belongs to.~
END 
IF ~Dead("X3EBRO")~ EXTERN X3EFATH perhaps_dead 
IF ~!Dead("X3EBRO")~ EXTERN X3EFATH perhaps_alive

CHAIN X3EFATH perhaps_dead 
~Perhaps...perhaps you are right. Even now, I feel like it was a failing that long ago I let fear decide the outcome of the relationship with your mother. I regret it as much as I regret hurting Thomas's mother because I never truly stopped loving her. And now... losing Thomas...is a bitter outcome.~
== X3EmiJ ~I am sorry father. I am dearly sorry this all happened.~
== X3EFATH ~It is not your doing, my dear. It is mine, and mine alone.~
EXTERN X3EFATH do_now 

CHAIN X3EFATH perhaps_alive 
~Perhaps...perhaps you are right. Even now, I feel like it was a failing that long ago I let fear decide the outcome of the relationship with your mother. I regret it hurting Thomas's mother and causing you and him to fight this day. I feel so much pain, but because he lives, perhaps there is hope you may reconcile some day.~
EXTERN X3EFATH do_now 


CHAIN X3EFATH human 
~They are human at least. You will avoid many of the errors that I did. I am happy for you, Emily.~
END 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ human_dead 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ human_alive 

CHAIN X3EmiJ human_dead 
~Thank you father. I just wish...we didn't have to lose Thomas.~
== X3EFATH ~That is my failing. For years I could have tried to help him understand...or not split my heart between two women and created two children for it and now I only have one.~
EXTERN X3EFATH do_now 

CHAIN X3EmiJ human_alive 
~Thank you father. I'm just glad that we didn't have to lose Thomas as well.~
== X3EFATH ~What happened here was my failing. For years I could have tried to help him understand...or have never been afraid of the judgment of being with your mother. But we cannot undo the past.~
EXTERN X3EFATH do_now 

CHAIN X3EFATH do_now 
~What will you do now, Emily? You are heir by right, and may assume your duties immediately.~
== X3EmiJ ~I'm going to stay with <CHARNAME> for a bit longer, father. I want to see their journey through. After...I'll return home, and I'll do right by our estate. I promise.~
== X3EFATH ~Then I will ask your friend, Catherine, to help oversee basic duties with me until you are home. The estate will be ready for you when you return.~
== X3EFATH ~Goodbye, my daughter. And good luck.~
DO ~EscapeArea()~
EXIT 

// The last version is Emily talking to the player after she wins. 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",8)Global("X3EmiDuel","GLOBAL",1)~ THEN X3EmiJ Emily_won
~It doesn't feel as grand as I thought it would, winning. But...it's done.~ [X3Blank]
DO ~SetGlobal("X3EmiDuel","GLOBAL",2)SetGlobal("X3EmiHeir","GLOBAL",1)SetGlobal("X3EmiAppChange","GLOBAL",6)AddJournalEntry(@19,QUEST_DONE)SetGlobal("X3EmiQuest","GLOBAL",10)AddexperienceParty(29750)~ // To turn off Emily's permanent death.
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Embrace her)~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + embrace 
++ ~You fought well, Emily. Congratulations.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + traveling_helped 
++ ~Is that it, then? Are you now the heir?~ + now_heir 

CHAIN X3EmiJ traveling_helped 
~Well, all my traveling with you certainly helped. I owe you for that. Thank you.~
EXTERN X3EFATH do_now 

CHAIN X3EmiJ now_heir
~I am. It's a lot to take in. It's almost overwhelming.~
EXTERN X3EFATH do_now                            

// Surly. If both Helga's and Emily's quest are finished, you can go back in and retrieve Thomas's lost sword or other items.
EXTEND_BOTTOM SURLY 4 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ ~Could we enter the pit a moment? There are some things laying on the ground we are interested in.~ DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost
END 

EXTEND_BOTTOM SURLY 6 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ ~Could we enter the pit a moment? There are some things laying on the ground we are interested in.~ DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost 
END 

EXTEND_BOTTOM SURLY 7 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ ~Could we enter the pit a moment? There are some things laying on the ground we are interested in.~ DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost  
END 

EXTEND_BOTTOM SURLY 14 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ ~Could we enter the pit a moment? There are some things laying on the ground we are interested in.~ DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost
END 

CHAIN SURLY enter_pit_cost 
~Ha, only if you pay. I'm not letting you wander in for free. Fifty gold will do.~
END 
+~PartyGoldGT(49)~+ ~All right, will this do?~ DO ~TakePartyGold(50)~ + enter_pit 
++ ~I'm not paying that much gold.~ + no_enter 
++ ~Never mind, I'm not interested.~ + no_enter 

CHAIN SURLY no_enter 
~Then you ain't going in. Get lost.~
EXIT 

CHAIN SURLY enter_pit
~Yeah, for a moment. Best you hurry it up.~
DO ~SetGlobalTimer("X3Pit","GLOBAL",TWO_ROUNDS)SetGlobal("X3PitMove","GLOBAL",1)ActionOverride(Player1,JumpToPoint([769.1728]))~ // The player has 12 seconds to collect whatever they need.
EXIT                                  

// Talk1 
 CHAIN IF ~Global("X3EmiTalk","LOCALS",2)~ THEN X3EmiJ Talk1
~So! Here we are on the road, on a merry adventure. But I wonder, is this what you want?~
DO ~IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ ~Of course this is what I want, Emily. Why would I be here otherwise?~ + T1.1 
++ ~Adventuring has been more out of necessity than desire, though I have no regrets.~ + T1.2 
++ ~What do you mean?~ + T1.1

CHAIN X3EmiJ T1.1
~Right. I should probably speak more clearly.~
EXTERN X3EmiJ T1.2 

CHAIN X3EmiJ T1.2 
~If you could be anyone, do anything, I mean...is adventuring something you would still choose?~
END 
++ ~With anything else as a choice? I think not.~ + T1.9 
++ ~Definitely. It is part of who I am. I can't imagine doing anything else.~ + T1.5
++ ~I don't know. That is not something I've thought about.~ + T1.4

CHAIN X3EmiJ T1.4 
~Well! It could be fun to think about it! Come on, if you could do something else...~
EXTERN X3EmiJ T1.3

CHAIN X3EmiJ T1.3 
~What would you do instead?~            
END 
++ ~I would be an artisan, perhaps, and hone a craft.~ + T1.5
++ ~A merchant. It would allow me to travel and profit.~ + T1.5
++ ~A soldier. I could not imagine a life that did not include battle.~ + T1.6
++ ~A noble, and a life of wealth and luxury.~ + T1.8
++ ~A mercenary, a <PRO_MANWOMAN> for hire.~ + T1.7
++ ~A farmer. I have always wanted to work with crops.~ + T1.5

CHAIN X3EmiJ T1.5 
~Interesting answer! Not one that I would have thought you would give.~          
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.6 
~I suppose that is more stable, closer to home, and not too different in the skills you already have.~
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.7
~That's...more or less what we are. You know that, right?~
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.8 
~It isn't all luxury and wealth. But...I admit it usually is.~ 
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.9 
~I would be a painter if I could. I could just sit at home and look out the window and be inspired and just reimagine what I saw into vivid colors, or bring my dreams to life.~
= ~A little dreamy, but that would be my choice.~
END 
++ ~A painter? Are you even any good?~ + T1.11
++ ~I like it. Emily the painter.~ + T1.12 
++ ~I imagine your work would be as lovely as yourself.~ DO ~SetGlobal("X3EmiInterest","LOCALS",1)~ + T1.10 

CHAIN X3EmiJ T1.10 
~You probably meant that as a flattering compliment but...I am actually not that good at it. One day though! One day!~
EXTERN X3EmiJ T1.13

CHAIN X3EmiJ T1.11 
~Someone saw one of my portraits once and they left the room screaming. Screaming! Not quite the impression you want to make.~
EXTERN X3EmiJ T1.13

CHAIN X3EmiJ T1.12
~Well...a painter, but not a good one like you think.~
EXTERN X3EmiJ T1.11  

CHAIN X3EmiJ T1.13 
~We can dream though. We can dream and wonder...and maybe someday, they can be a bit of reality. But if not, they can always be a sweet dream.~
EXIT 

// Talk 2
CHAIN IF ~Global("X3EmiTalk","LOCALS",4)~ THEN X3EmiJ Talk2
~Do you know much about my kind, <CHARNAME>?~ [X3Blank]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ ~About half-elves? I've seen a few about our travels.~ + T2.1
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ ~About aasimar? Besides Caelar back in Dragonspear, I've not met any others of your kind.~ + T2.2
+~!CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ ~I know very little about aasimar.~ + T2.3 
+~CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Aasimar descend from celestials, from what I know.~ + T2.4
++ ~I don't have time to discuss that right now, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.X 

CHAIN X3EmiJ T2.1 
~No, not about half-elves. About aasimar.~
END 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ ~About aasimar? Besides Caelar back in Dragonspear, I've not met any others of your kind.~ + T2.2
+~!CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ ~I know very little about aasimar.~ + T2.3 
+~CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Aasimar descend from celestials, from what I know.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.4 
++ ~I don't have time to discuss that right now, Emily.~ + T2.X 

CHAIN X3EmiJ T2.X 
~Oh, right, time. Never mind me, then.~
EXIT 

CHAIN X3EmiJ T2.XX 
~Right. Well then. Onward, fearless leader.~
EXIT 



CHAIN X3EmiJ T2.2 
~I don't know if Caelar was the best example,considering all she did. But like her, I feel this urge to right wrongs and do good things. Sometimes its a bit troubling, even.~
END 
++ ~Troubling? What do you mean?~ + T2.5 
++ ~I don't see what is bad about it at all.~ + T2.5 
++ ~Why are you even complaining? You are privileged.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T2.6

CHAIN X3EmiJ T2.3 
~We are descended from celestials, and are supposed to be beings of good. I confess I often feel the urge to right wrongs and try to help others. Sometimes its a bit troubling, even.~
EXTERN X3EmiJ T2.5

CHAIN X3EmiJ T2.4 
~Exactly! We are supposed to be good beings, at least try to be. I feel the urge all the time to right wrongs and help others. It can be a bit troubling, sometimes.~
EXTERN X3EmiJ T2.5

CHAIN X3EmiJ T2.5 
~Well...I also have a home and responsibility to our people in the family estate in Tethyr. I want to help people here in Amn, but I feel guilty for neglecting my life and duties at home. It's been some months now since I've last seen my father and stepmother.~
== X3EmiJ ~It was his idea for me to go and discover myself, and indulge in my urge to act, but I worry that I was selfish for doing that.~
END 
++ ~It might have been a little selfish.~ + T2.7
++ ~I think he understood what you wanted to do and was trying to let you seek that.~ + T2.8 
++ ~If you feel so bad about it, why not just return home?~ + T2.9

CHAIN X3EmiJ T2.6 
~Oooh, the aasimar is privileged. Hrm, I actually don't have a retort for that. You know what? I'll just drop this conversation, since you want to be so thoughtless.~
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ 
EXIT 

CHAIN X3EmiJ T2.7 
~That is what I was worried about. I feel like I am supposed to be perfect, just like all angels are supposed to be. Charming in decorum, flawless in decisions, always saying the right words. My father does that. Me? I just always say the wrong thing somehow.~
END 
++ ~You are charming, Emily, and more, even if not perfect. You shouldn't discredit yourself for trying to do your best.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EmiInterest","LOCALS",1)~ + T2.10 
++ ~Perfection is an ideal, dreamable, but not capturable. You may be aasimar, but you're still human like the rest of us in the end, no better, and no worse.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.11 
++ ~It sounds like you're just a burden, then.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.12 

CHAIN X3EmiJ T2.8 
~Was he? He always knows what to do, father. I feel like the family expectation is to be perfect: Charming in decorum, flawless in decision-making, and always saying the right words. My father does that. Me? I just always say the wrong thing somehow.~
END 
++ ~You are charming, Emily, and more, even if not perfect. You shouldn't discredit yourself for trying to do your best.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EmiInterest","LOCALS",1)~ + T2.10 
++ ~Perfection is an ideal, dreamable, but not capturable. You may be aasimar, but you're still human like the rest of us in the end, no better, and no worse.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.11 
++ ~It sounds like you're just a burden, then.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.12 

CHAIN X3EmiJ T2.9
~To be honest? I can't walk a small distance without seeing someone in need, in pain. An aasimar is supposed to be perfect, to be beautiful, and flawless, and saying the right things to inspire people. I can't do any of those things, but everytime I see someone in need I want to at least try to help. Is that bad?~
END 
++ ~You are charming, Emily, and more, even if not perfect. You shouldn't discredit yourself for trying to do your best.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EmiInterest","LOCALS",1)~ + T2.10 
++ ~Perfection is an ideal, dreamable, but not capturable. You may be aasimar, but you're still human like the rest of us in the end, no better, and no worse.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.11 
++ ~It sounds like you're just a burden, then.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.12 

CHAIN X3EmiJ T2.10 
~You're sweet to say. But you really should see my morning hair! It gets so...poofy. Not a charming display one bit.~
END 
++ ~Well, I got to see it now.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.14 
+~Gender(Player1,FEMALE)~+ ~No worse than my own hair, really.~  + T2.15 
+~Gender(Player1,MALE)~+ ~I don't have to worry about that, myself.~ + T2.16
++ ~All right, enough talking. We should get going.~ + T2.XX

CHAIN X3EmiJ T2.11 
~Am I? I feel like I'm supposed to be on some elevated class, and I'm just falling short. I wish I was a little better like my parents.~
END 
++ ~Believe in yourself. You'll be just fine.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.18 
++ ~Your parents might think the same thing. We all feel less than adequate sometimes.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.19 
++ ~I can't help you with this silly problem of yours.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T2.XX

CHAIN X3EmiJ T2.12 
~A burden? How am I a burden?~
END 
++ ~I was joking, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.20 
++ ~You can't control yourself, and focus on what is really important.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T2.21
++ ~You've not been a stellar contributor to my efforts so far, let alone your personal goals.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T2.13 

CHAIN X3EmiJ T2.13
~...I see. I don't know what to say to that. Look, thank you for the honesty. I'll stop bothering you then and be a bit more helpful with what you ask of me.~
EXIT 

CHAIN X3EmiJ T2.14 
~No no. My step-mother would kill me, from afar. "A lady must always look her best, especially on her first appearance", she'd quote. I've stepped out with it not fixed once and I got quite the scolding.~
== X3EmiJ ~But I guess we should get back to things. And I'm going to have to be extra careful in the mornings now with curious eyes.~
EXIT 

CHAIN X3EmiJ T2.15 
~Really? We should compare. We totally should compare. Ooh, maybe we can even help each other out? I've always wanted to do your hair in long braids. I think it'd look quite pretty.~
EXTERN X3EmiJ T2.17

CHAIN X3EmiJ T2.16 
~Ha, obviously. Although have you considered some styling? Some of the noble men had some really handsome appearances they did with their hair. Maybe if I see a portrait that reminds me of one, I'll point it out to you.~
EXTERN X3EmiJ T2.17 

CHAIN X3EmiJ T2.17 
~Later, at least. I shouldn't distract us from our task. But we should totally do this later.~
EXIT 

CHAIN X3EmiJ T2.18 
~I guess that is easy to say, hard to do? But I'll take your advice, <CHARNAME>. Thank you.~
EXIT 

CHAIN X3EmiJ T2.19 
~Hrm, you know, you have a good point. Thanks, <CHARNAME>. I guess I should not worry so much and just do my best.~
EXIT 

CHAIN X3EmiJ T2.20  
~Ahaha. Haha. I knew that...no, I didn't. It wasn't that funny, really. Never mind, never mind.~
EXIT 

CHAIN X3EmiJ T2.21 
~I didn't think choosing to do good was a matter of lack of control. But I guess I can sort of see what you are saying, even if I don't like or disagree with it. Let's just drop it for now.~
EXIT 

//Friendship Talk #3

CHAIN IF ~Global("X3EmiTalk","LOCALS",6)~ THEN X3EmiJ Talk3
~For the most part, I think you lead our group well.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ ~For the most part?~ + T3.1 
++ ~Thank you, Emily. But it's not just me that has us successful.~ + T3.2 
++ ~I didn't ask for your comment, but it is certainly true.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T3.3

CHAIN X3EmiJ T3.1 
~Well, I might disagree with a thing or two here and there, but honestly, you do a far better job than I could.~
EXTERN X3EmiJ T3.4

CHAIN X3EmiJ T3.2 
~Humble, too. If I said that to my brother he would swell with arrogance. He loves praise and hates criticism.~
EXTERN X3EmiJ T3.4 

CHAIN X3EmiJ T3.3 
~Hrm, well, people don't tend to give comments when asked. We'd be so mindless if we did. Though er, sorry if I offended you, in sincerity.~
EXTERN X3EmiJ T3.4 

CHAIN X3EmiJ T3.4
~Would you be able to give me advice? About leading people? I want to be a good leader for house Castilla.~
END 
++ ~You'll do fine, Emily. You're charismatic enough. The rest you just have to learn as you go.~ + T3.5 
++ ~Listen attentively, and consider all options. Once you commit on a decision, there's no going back.~ + T3.6 
++ ~Do as you see fit, and do not let advice over-rule what you think is best.~ + T3.7 
++ ~Don't act with a plan, follow your emotion and the flow.~ + T3.8
++ ~I don't have any advice for you, sorry.~ + T3.X 

CHAIN X3EmiJ T3.X 
~Hrm, all right. I figured it couldn't hurt to ask, at least.~
EXIT 

CHAIN X3EmiJ T3.XX 
~Hrm, all right. Another time, then.~
EXIT 

CHAIN X3EmiJ T3.5 
~That's nice of you, <CHARNAME>. I was looking for advice, but in the end you are probably right.~
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.6 
~That sounds almost scary. One wrong move, and everything falls apart, you serve the wrong dish, your family name is disgraced, and people are laughing at you because you put your brassierie on backwards.~
== X3EmiJ ~Maybe not that extreme, but it has happened once. Backwards clothing, that is.~
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.7 
~That sounds almost tyrannical. Is that really your philosophy, or are you joking? I can't see that going over well at home.~
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.8 
~That sounds like things will go wrong very quickly. If I went with the flow and emotion, I would wear clothes far more comfortable and not at all approved by the most haughty family friends.~
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.9 
~I guess I'm just worried about the what if, even if it may not even happen. There's so many rules to remember, etiquette, policies, names, history, action, how to speak to this Lady or Gentleman, listening to their needs, making decisions...~
== X3EmiJ ~Adventuring is so much simpler. I always struggled with remembering everything, and my brother Thomas was so quick to point it out.~
END 
++ ~Do you really want to lead your house, then?~ + T3.10 
++ ~Your relationship with Thomas sounds contentious.~ + T3.11 
++ ~It's not a concern now, is it? Right now we have other matters at hand.~ + T3.X

CHAIN X3EmiJ T3.10 
~I do, I think. Sometimes I am worried I just want to because I don't want Thomas to. I don't know if its because I'm as guilty as wanting power as he is, or I just truly think things will be worse if he runs things.~
EXTERN X3EmiJ T3.11 

CHAIN X3EmiJ T3.11 
~Our relationship wasn't always so...rough. I remember he danced with me once at an outing. It was cute to the others, but I was embarrassed when I stepped on his foot. But he was so kind and you know, assuring, young brotherly.~
== X3EMiJ ~But then hiding my heritage really created a divide in the family, especially in him. I'm not sure if he began to despite me because I kept it from him, or because I was not a full-blooded sister to him, with my mother being an elf.~
END 
++ ~Why didn't you tell him?~ + T3.12 
++ ~What does he think of you being an aasimar?~ + T3.13 
++ ~Is it too late to improve things?~ + T3.14 
++ ~We can talk more about this another time.~ + T3.XX

CHAIN X3EmiJ T3.12 
~Father was insistent even he was in the dark. Only he and step-mother knew, really. But my brother wasn't stupid, and it's not hard to see your sister is doing all she can to hide her ears, with hats or hair-styles.~
EXTERN X3EmiJ T3.15 

CHAIN X3EmiJ T3.13 
~He never knew. I didn't even until recently, and I don't even think my father does yet. Does it even matter though? To my family, I just want to be Emily.~
EXTERN X3EmiJ T3.15 

CHAIN X3EmiJ T3.14 
~I wish it wasn't. But with the leadership of the house on the line, our relationship is as tense as ever.~ 
EXTERN X3EmiJ T3.15 

CHAIN X3EmiJ T3.15 
~Maybe when the new heir is officially selected...we can try to patch things, my brother and I. But I have a feeling my relationship with my brother will never return to what it was.~
EXIT 

// Emily Talk 4 

CHAIN IF ~Global("X3EmiTalk","LOCALS",8)~ THEN X3EmiJ Talk4
~I miss home, but there's something I really like being out here with you. I can just be me.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ ~Why aren't you like this at home?~ + T4.1 
++ ~I like the you that I see.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)SetGlobal("X3EmiInterest","LOCALS",1)~ + T4.2 
++ ~I'm glad you're happy, but we should focus.~ + T4.X 

CHAIN X3EmiJ T4.2 
~Well, I'll keep showing it. Being it? You know what I mean! I just wish I could be like this at home.~
EXTERN X3EmiJ T4.1 

CHAIN X3EmiJ T4.1
~You can't just advise your family "Hey, those creatures causing troubles on the road, can I go out myself with a few arrows and shoot them? I'd never hear the end of how "The soldiers should do that", or "You're too valuable."~
= ~And I don't have to make sure my hair is over my ears, at least when I'm not around any big noble houses that may know my family. I hate lying.~
END 
++ ~Sometimes we have to lie, and the truth isn't good enough.~ + T4.3 
++ ~What would happen if you just told them?~ + T4.4 
++ ~You could have always snuck out. Who cares what they think?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + T4.5 



CHAIN X3EmiJ T4.3
~Sometimes. But I'd rather be open and trusting. The truth may be difficult to know, but it shouldn't be ignored because it's hard.~
EXTERN X3EmiJ T4.6

CHAIN X3EmiJ T4.4
~Chaos, likely. It is different to have it whispered, to have it thought but unconfirmed. Things in the estate were of the policy to not ask about it and to not tell about it.~
== X3EmiJ ~My father is respected enough not to be questioned about it. And we were wise enough not to say anything to confirm any rumors of a bastard child from a different woman.~
EXTERN X3EmiJ T4.6

CHAIN X3EmiJ T4.5 
~I care. The people care. Not that I didn't sneak out now and then...but it was never a good decision. I almost got killed once. When father saw the wound I suffered in the quarrel from trying to go after the creatures myself he was furious.~
== X3EmiJ ~But it's who I want to be. The sort of person that leads from the front, not sits and just waves her hand and gives people orders.~
EXTERN X3EmiJ T4.6 

CHAIN X3EmiJ T4.6
~I like to imagine that maybe, someday, I can tell them the truth, and unlike what we think, people will be okay with it, and not question my credentials.~
END 
++ ~If they think it but have not questioned your father, perhaps they mind less than you think.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + T4.7
++ ~I still don't see the big deal. Your father had a child with a different woman for his first. It's not like he had an affair, right?~ + T4.8
++ ~You can't risk it, Emily. Don't have naive faith in people.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + T4.9
++ ~We're a long way from your home, Emily. Let's focus on present matters.~ + T4.X 

CHAIN X3EmiJ T4.7 
~That is what I hope, <CHARNAME>. Maybe after all this heir business is over, I can finally tell them and see if you are right. But we've our own present problems to get to for now.~
EXIT 

CHAIN X3EmiJ T4.8 
~Ah, well, my mother was his first. When there was pressure for him to marry, he had to let her go. I think that was hard for him, especially when he found out she was with child.~
== X3EmiJ ~I sometimes wish they could have stayed together. But we can't go back to the past. We can only move forward.~
EXIT 

CHAIN X3EmiJ T4.9 
~You are awfully distrusting. I guess you have your reasons, but I just don't think I could be that way. But I will keep your advice in mind.~
EXIT 

CHAIN X3EmiJ T4.X 
~Right. Sorry. I don't know why my thoughts keep going back home. I guess you can take the noble out of her estate's affairs, but her estate's affairs still linger in her heart.~
EXIT 

// Talk 5: Emily asks if the PC ever thinks of home. 
CHAIN IF ~Global("X3EmiTalk","LOCALS",10)~ THEN X3EmiJ FriendshipTalk5
~I know I've talked about my home, but what of yours? Any longing or fond memories?~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ ~Candlekeep? Many. It was a quaint life while it lasted.~ + T5.1
++ ~Gorion mostly, but he is gone now.~ + T5.6 
++ ~None. I was never fond of Candlekeep.~ + T5.3
++ ~I'd rather not say, Emily.~ + T5.X 

CHAIN X3EmiJ T5.X 
~Well, if you want your privacy, I won't pry it out of you. Yet.~
EXIT 

CHAIN X3EmiJ T5.1 
~That is the keep near the coast, isn't it?~
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3B  
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3N 

CHAIN X3EmiJ T5.2 
~Really? And it sounds so exhilarating. Did it not have enough candles?~
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3B  
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3N

CHAIN X3EmiJ T5.5 
~You are from Candlekeep aren't you? That Oghma Sanctuary. Or book sanctuary, depending on how you look at it.~
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3B  
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3N

CHAIN X3EmiJ T5.3B
~From what I saw of it, it is a bit like the land around my keep at home. The estate in the center, a few residents on the outside. A few cattle kept, and a temple.~
EXTERN X3EmiJ T5.4 

CHAIN X3EmiJ T5.4
~Far less monks, though. About zero, actually. Were you trained as one of them?~
END 
++ ~Not at all.~ + T5.6
++ ~I learned a little from them, mostly from Gorion, but I'm no monk.~ + T5.7
++ ~Mostly their philosophies and way of life.~ + T5.8
+~Class(Player1,MONK)~+ ~I did, actually.~ + T5.9

CHAIN X3EmiJ T5.3N
~From what I have heard of it, it seems like a bit like the keep at my home. A large castle like structure in the center, a few residents on the outside, cattle kept about, and a temple.~
EXTERN X3EmiJ T5.4 

CHAIN X3EmiJ T5.3
~I am sorry about your loss. Sincerely.~
EXTERN X3EmiJ T5.5

CHAIN X3EmiJ T5.6
~That's like going into a bard school and not coming out as a bard. Which if you think about it, has probably happened.~
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.7
~It would make sense that you picked up a thing or two. Adults tend to not like children running around bored, not even in my estate.~
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.8
~That must be interesting. Is it a lot about reading and gathering of knowledge? Oghma is pretty big on it, but I didn't actually pay attention in my theology lessons.~
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.9
~And that is dumb Emily question number three. Don't ask about the first two.~
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.10
~Well, you seem to have come out of the place all right. You saved Baldur's Gate. Not everyone can claim that. Well...everyone can claim it. It just won't be true.~
END 
+~Gender(Player1,MALE)~+ ~You are cute, you know that?~ DO ~SetGlobal("X3EmiInterest","LOCALS",1)IncrementGlobal("X3EmiAppChange","LOCALS",3)~ + T5.11 
+~!Gender(Player1,MALE)~+ ~You are cute, you know that?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",3)~ + T5.11F 
++ ~Are you always this quirky?~ + T5.12 
++ ~Right.~ + T5.14 
++ ~Shouldn't we be moving on?~ + T5.14

CHAIN X3EmiJ T5.11 
~Cute. So are you. I mean, what did I say? Hrm, this is why Lady Cecilia always chastised me about mirroring compliments.~
EXTERN X3EmiJ T5.14

CHAIN X3EmiJ T5.11F 
~You sound like an older sister. And I don't even have an older sister. But you make me want one, ha!~
EXIT 

CHAIN X3EmiJ T5.12 
~Only every other tenday. I'll be perfectly normal soon.~
EXTERN X3EmiJ T5.14

CHAIN X3EmiJ T5.14 
~I guess we should be tarrying on. A pity there isn't more time for chitter chatter.~
EXIT 

// Talk 6: Noble One After Initial Talk 
CHAIN IF ~Global("X3EmiGregTalk","LOCALS",1)~ THEN X3EmiJ FriendshipTalk6
~So that was Lord Gregory Von Jurgenson. Very old blood.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiGregTalk","LOCALS",1)~
END 
++ ~He is rather elitist.~ + T6.1 
++ ~How is he a family friend?~ + T6.2
++ ~Let's just get his task over with.~ + T6.X 

CHAIN X3EmiJ T6.1 
~His family is very conservative, far more than mine. They trace back centuries, and even have a place on an advisory council of the monarch.~
EXTERN X3EmiJ T6.2

CHAIN X3EmiJ T6.2
~I believe my father's father and his father's father served as officers together on the crown and were close friends ever since. So were their sons, and thus why Gregory has a voice in this.~
END 
++ ~What do you think of him?~ + T6.3 
++ ~Are you friends with his child too?~ + T6.4
++ ~Well, let's go get his task over with.~ + T6.X 

CHAIN X3EmiJ T6.3
~Well...I think he is...too set in the past, though I admire his family. I don't think he understands how the world is now after the Tethyrian civil war. We *have* to care more.~
EXTERN X3EmiJ T6.5

CHAIN X3EmiJ T6.4
~Oh he does not have any. And trust me, if he did, a Castilla would certainly be in an arranged marriage with them, so I would hope it was a girl. It was always wanted but...you know, two boys in the last generation.~
EXTERN X3EmiJ T6.5

CHAIN X3EmiJ T6.5
~Well, may as well get this little test out of the way, hmm?~
EXIT 

CHAIN X3EmiJ T6.X 
~Fine with me.~
EXIT 

// Talk 7: Noble Two After Initial Talk 
CHAIN IF ~Global("X3EmiCharmTalk","LOCALS",1)~ THEN X3EmiJ FriendshipTalk7
~And that was Lady Charmaine. I've always liked her.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiCharmTalk","LOCALS",1)~
END 
++ ~How did she become a family friend?~ + T7.1 
++ ~It seemed as much.~ + T7.1
++ ~It was interesting to meet her, though we should keep moving.~ + T7.X 

CHAIN X3EmiJ T7.X 
~Right. Moving. Easily done.~
EXIT 

CHAIN X3EmiJ T7.1
~She and my father helped each other through some dangerous times in the Tethyrian civil war. She helped rescue him from a mob that would have probably killed him.~
= ~There was a time when my father was supposed to marry her, but instead he was introduced to her friend, who turned out to be my stepmother.~
= ~They've talked about Godfrey and I, but you know...with all of this heir stuff, that isn't going to go anywhere.~
END 
++ ~You would be okay with an arranged marriage?~ + T7.2
++ ~And do you like Godfrey?~ + T7.3 
++ ~For the best. You should find love for love.~ DO ~SetGlobal("X3EmiInterest","LOCALS",1)SetGlobal("X3EmiAppChange","LOCALS",3)~ + T7.6
++ ~We should get moving.~ + T7.X 

CHAIN X3EmiJ T7.2
~That is a good question. It wouldn't be you know, arranged and I had no say. I would have a say.~
EXTERN X3EmiJ T7.4 

CHAIN X3EmiJ T7.3
~Oh yes! Godfrey is a good man. Definitely raised well. Not the sort you would mind being stuck with if you had to.~
EXTERN X3EmiJ T7.4

CHAIN X3EmiJ T7.4
~But love should be for love, though...you never know with time.~
EXTERN X3EmiJ T7.5

CHAIN X3EmiJ T7.6
~Yes, I agree. Love should be for love, though the pressure can make that desire difficult.~
EXTERN X3EmiJ T7.5

CHAIN X3EmiJ T7.5
~Anyway! Onward, as they say. Somewhere, at least.~
EXIT 

// Talk 8: Post Slayer Change Romance and Non Romance 
CHAIN IF ~Global("X3EmiTalk","LOCALS",12)~ THEN X3EmiJ FriendshipTalk8
~That form you took...I have never seen anything like it. I've heard only stories about those things appearing in the Time of Troubles.~
= ~Are you okay, <CHARNAME>? You can tell me anything.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I am okay, Emily, you don't have to worry.~ + T8.1R
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I am okay, Emily, you don't have to worry.~ + T8.1 
++ ~I'm still trying to process it all.~ + T8.2 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Just stay away from me, Emily.~ + T8.3 
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Just stay away from me, Emily.~ + T8.X 

CHAIN X3EmiJ T8.X 
~I...if you want to be alone, then, you can be alone.~
EXIT 

CHAIN X3EmiJ T8.1R 
~People who love you tend to worry. It's one of the side-effects of being head over heels. So unfair, right?~
EXTERN X3EmiJ T8.4 

CHAIN X3EmiJ T8.1 
~If you weren't some horrifying monstrosity not long ago, that would be easy.~
EXTERN X3EmiJ T8.4

CHAIN X3EmiJ T8.2 
~I can understand. I mean, first, you were not pretty. But second? It was horrifying.~
EXTERN X3EmiJ T8.4 

CHAIN X3EmiJ T8.4
~This is all getting a bit too much. I'm trying to be witty, but, honestly? What are we going to do?~
END 
++ ~Honestly, was it so bad? That power could be useful.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T8.5 
++ ~We push forward. Together.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T8.6
++ ~I don't know, Emily.~ + T8.7

CHAIN X3EmiJ T8.5 
~Wow. You are either telling a horrible joke or are being a little crazy. Just...forget I asked.~
EXIT 

CHAIN X3EmiJ T8.6 
~I'm here for you all the way, <CHARNAME>. I'll help you keep the will, I promise.~
EXIT 

CHAIN X3EmiJ T8.7
~I guess we can believe.I mean, at the worst? You become a giant horrifying monster again. Lets...hope that doesn't happen.~
EXIT 

CHAIN X3EmiJ T8.3
~No. You cannot just push me away like that, <CHARNAME>. Talk to me.~
EXTERN X3EmiJ T8.4 

//Love Talk #1

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",2)~ THEN X3EmiJ LoveTalk1 
~You know, I kind of wish I hadn't neglected some of my combat lessons before I started traveling.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~What do you mean? Your archery is spectacular.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.1 
++ ~Is that why you are such a burden?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 1.2
++ ~You seem to be doing okay.~ + 1.3
++ ~You'll have to do with what you've been taught. Speaking of, let's keep going.~ + 1.X 

CHAIN X3EmiJ 1.X 
~All right, all right. After you.~
EXIT 

CHAIN X3EmiJ 1.1 
~Really? Thank you, though I was speaking more of my combat with a sword and the like in close quarters.~
EXTERN X3EmiJ 1.4

CHAIN X3EmiJ 1.2
~Ouch. You are a harsh critic, you know that? Now I might be crying myself to sleep.~
EXTERN X3EmiJ 1.4  

CHAIN X3EmiJ 1.3 
~With a bow maybe. But not with a sword or the like.~
EXTERN X3EmiJ 1.4 

CHAIN X3EmiJ 1.4
~I am just thinking that if we ever get into a situation where arrows aren't working, I may be a bit...useless.~
END 
++ ~I could show you some techniques sometime.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.5
++ ~You can't be good at everything, Emily. I think we can cover for that fault.~ + 1.6
++ ~Useless? That's no different than the norm.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~  + 1.7

CHAIN X3EmiJ 1.7
~Wow, you know what sounds like a good idea? To stop talking with you right now.~
EXIT 

CHAIN X3EmiJ 1.6
~You have a point, but...I should still try to get better. Maybe you or someone else can show me some things.~
EXTERN X3EmiJ 1.8

CHAIN X3EmiJ 1.5 
~That would be quite appreciative, really.~
EXTERN X3EmiJ 1.8

CHAIN X3EmiJ 1.8
~Ooh, I could show you some archery techniques in turn. And maybe, if you don't mind, some fashion changes. Maybe we could have our party be color coordinated.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Gods. Please. By all that is good. No.~
END 
++ ~Emily, we are not color coordinating our party.~ + 1.9
++ ~Honestly, both ideas sound fun.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.10 
++ ~I wouldn't mind getting better at ranged.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.11

CHAIN X3EmiJ 1.9
~Aww. There goes all of my fun ideas. We could have looked so lovely, too.~
EXIT 

CHAIN X3EmiJ 1.11
~So that is a deal, then? And does that include color coordinating? Because I think we would all look lovely in lilac colors. Or maybe orange...or maybe...~
EXIT 

CHAIN X3EmiJ 1.10
~Yes! I will totally get started. I can think of some definite changes to be made.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Someone kill me, please.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Hel")~ THEN ~Well, if you're asking...heh, don't glare at me like that elf. You said it.~
EXIT 

//Love Talk #2, two versions 

CHAIN IF ~!InParty("IMOEN")Global("X3EmiLoveTalk","LOCALS",4)~ THEN X3EmiJ LoveTalk2A 
~Do you ever think about her? Imoen, I mean.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~Of course I do. What kind of question is that?~ + 2.1 
++ ~All the time. I worry for her.~ + 2.2 
++ ~Not really. I'm sure she's fine.~ + 2.3 
++ ~I'd rather not talk about Imoen, Emily.~ + 2.X 

CHAIN IF ~InParty("IMOEN")Global("X3EmiLoveTalk","LOCALS",4)~ THEN X3EmiJ LoveTalk2B
~You and Imoen seem to get along. I think. Right?~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~I'm kind of confused about your question, Emily.~ + 2.1B 
++ ~We do, though I do worry for her.~ + 2.2 
++ ~Not really, she's annoying to me.~ + 2.3B 
++ ~I'd rather not talk about Imoen, Emily.~ + 2.X 

CHAIN X3EmiJ 2.X 
~I understand. I'll let you be.~
EXIT 

CHAIN X3EmiJ 2.1 
~Well, maybe I should have said this differently. You miss her, don't you?~
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.1B 
~Right, I should probably say this differently. Or just get to my point, I guess.~
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.2 
~She is like a sister to you, isn't she?~
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.3 
~You never worry, not once? I don't think I could be as...calm.~
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.3B 
~Annoying? Well, maybe I was wrong in my thoughts, then.~
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.4
~Thomas and I aren't like that. It's odd, because I do...miss him in a way, because he is family, but I also dread him, because our relationship is so poor.~
END 
++ ~How do you miss and dread him at the same time?~ + 2.5
++ ~I can understand. Imoen and I don't have a perfect relationship either.~ + 2.6
++ ~There isn't anything wrong with that, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.5

CHAIN X3EmiJ 2.4B 
~Thomas and I weren't like that. I wish we were. But I guess it is too late, now. I wish things had been different.~
END 
++ ~What's done is done. You can't change anything.~ + 2.6B
++ ~I can understand. Imoen and I don't have a perfect relationship either.~ + 2.6
++ ~It takes two, Emily. You can't fix it alone.~ + 2.6B

CHAIN X3EmiJ 2.5
~I don't know. Sometimes feelings don't make much sense. I guess you want something, think it will get better magically, but it doesn't. Not without work that you don't know will even pay off if you invest the time for it.~
END 
++ ~Maybe it will. You just need to find a way and not be afraid to try.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.7
++ ~He is your rival for leading your family, isn't he? There's no way you can be friends during this.~ + 2.8
++ ~I'm not sure why you care. He is in your way. Treat him as the foe he is. You can't let feelings get in the way.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~  + 2.9

CHAIN X3EmiJ 2.7
~It's nice to hear hopeful words that I think coming from your lips aloud. It's...like a pretty little light. Not that your mouth is an actual light. That would be strange.~
EXTERN X3EmiJ 2.10 

CHAIN X3EmiJ 2.10
~But enough of my rambling. We should keep moving, shouldn't we?~
EXIT 

CHAIN X3EmiJ 2.6B 
~I've thought sometimes, what if this was Thomas that was taken? Would I help him? And you know what? The crazy thing is I would. But I know he wouldn't for me. Does that make me foolish?~
END 
++ ~No. It makes you human.~ + 2.7
++ ~It's the right thing to do, regardless of what he would do.~ + 2.11
++ ~Completely. You shouldn't bother helping someone that would do nothing for you.~ + 2.9

CHAIN X3EmiJ 2.6
~It doesn't seem as poor, at least. I've thought sometimes, what if this was Thomas that was taken? Would I help him? And you know what? The crazy thing is I would. But I know he wouldn't for me. Does that make me foolish?~
END 
++ ~No. It makes you human.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.7
++ ~It's the right thing to do, regardless of what he would do.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.11
++ ~Completely. You shouldn't bother helping someone that would do nothing for you.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 2.9

CHAIN X3EmiJ 2.11 
~That is what I believe too. I know I spend so much time thinking of something I'll not be able to do anything about for some time but...it bothers me.~
EXTERN X3EmiJ 2.10 

CHAIN X3EmiJ 2.8
~That seems to be the truth. I just wish it was different.~
EXTERN X3EmiJ 2.10 

CHAIN X3EmiJ 2.9
~I've...never been able to think that way. Never been able to be so cold and focused only on my own ambition. Maybe that's a fault, and I should but...it doesn't always feel right.~
EXTERN X3EmiJ 2.10 

// Love Talk #3

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",6)~ THEN X3EmiJ LoveTalk3 
~You know, if you think about it, if the kings and queens and councilors had a bit more active hand in things, they could send knights and soldiers to do some of the work we have done.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~It seems more complicated than that to me.~ + 3.1 
++ ~Using adventurers seems to work well enough, doesn't it?~ + 3.2
++ ~If they did, we wouldn't be making the money we did.~ + 3.3

CHAIN X3EmiJ 3.X 
~Fair enough. I'll just talk to myself...or I'll just follow along in quiet, if that's less odd. Probably that.~
EXIT 

CHAIN X3EmiJ 3.1 
~It must be, or at least, there must be something that I am not seeing.~
EXTERN X3EmiJ 3.4

CHAIN X3EmiJ 3.2 
~It is a resolution of sorts, isn't it? But sometimes adventures cause their own problems. Not us, of course!~
EXTERN X3EmiJ 3.4

CHAIN X3EmiJ 3.3 
~There are safer ways to make money, but I guess if you were trying to make a quick fortune, the high risk does bring high reward.~
EXTERN X3EmiJ 3.4

CHAIN X3EmiJ 3.4
~I guess regents and councilors and other government leaders are more focused on looking across the border, or about themselves more than all of the people they govern.~
END 
++ ~Don't they have many other responsibilities too? They can't worry about every other issue that crops up.~ + 3.5
++ ~I didn't know you had such strong views on government.~ + 3.6
++ ~I'm not really interested in talking about such a dry subject.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~  + 3.X 

CHAIN X3EmiJ 3.5
~That must be the reason, because I just can't think of any other one.~
= ~It just gets you thinking, when you're out really seeing the world as an adventurer, how much people really could use a hand.~
END 
++ ~Some people just have to figure things out themselves. Else they'll never learn.~ + 3.7
++ ~If they do too much, they'll seem controlling and over-bearing.~ + 3.7
++ ~I agree, they should do more. But at least we can make a difference.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~  + 3.8

CHAIN X3EmiJ 3.6
~Well, you know, noble blood. I guess getting into politics is what we can't help to do.~
= ~I don't mean to suggest it's not for anyone else. But it gets you thinking when you're out in the front, just really seeing how people struggle.~
END 
++ ~Some people just have to figure things out themselves. Else they'll never learn.~ + 3.7
++ ~If they do too much, they'll seem controlling and over-bearing.~ + 3.7
++ ~I agree, they should do more. But at least we can make a difference.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 3.8

CHAIN X3EmiJ 3.7
~I know there is truth in that. But sometimes when you're really down, you just need that bit of hope, that help. It's why we nurture the sick and watch over the old. Sometimes people need help, and that's okay.~
= ~Stepmother, well I called her mother but...anyway, she was always believing strongly like that. Thomas, too, and sometimes father as well.~
EXTERN X3EmiJ 3.9

CHAIN X3EmiJ 3.9
~Maybe I'm the outlier of the family. I know I would lead that way. It makes me wonder though if it is the wrong way.~
END 
++ ~There is nothing wrong with leading your house the way you believe it.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 3.10  
++ ~You can't know until you've had a bit of experience.~ + 3.10 
++ ~I think you should heed the thoughts of the rest of your family.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 3.11

CHAIN X3EmiJ 3.10
~I hope I get the chance someday to lead that way, at least.~
~You know, <CHARNAME>, It's comforting talking to you. I could probably talk all day, but I shouldn't. Let's find time to chat later.~
EXIT

CHAIN X3EmiJ 3.11 
~Maybe...after I have gotten experience, I might reconsider. But I really hope I can keep to my beliefs. I want to find a way to help if at all possible, even if others are uncomfortable with it at first.~
EXTERN X3EmiJ 3.10 

CHAIN X3EmiJ 3.8
~That is what I think. Stepmother, well, I called her mother but...anyway, she believed differently, that people should figure things out on their own for most troubles. Thomas too, and sometimes father as well.~
EXTERN X3EmiJ 3.9

//Love Talk #4 

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",8)~ THEN X3EmiJ LoveTalk4
~You know, there are so many beautiful temples in Amn. I've always prayed in several different ones as I traveled this region, but, I've always wondered who I felt closest too.~ [X3ELS]
= ~Are you very religious yourself, <CHARNAME>?~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
+~Class(Player1,PALADIN_ALL)!Kit(Player1,Blackguard)~+ ~I certainly am as a paladin.~ + 4.1 
+~Class(Player1,CLERIC_ALL)~+ ~I am a cleric, Emily. I would hope I was.~ + 4.1
++ ~Deeply. I think it's important.~ + 4.2
++ ~Not really, just a few occasional prayers, that's it.~ + 4.3 
++ ~Not at all.~ + 4.4 
++ ~I'd rather not talk about this.~ + 4.X 

CHAIN X3EmiJ 4.1 
~Right, I asked another dumb question. I should stop doing that.~
EXTERN X3EmiJ 4.5

CHAIN X3EmiJ 4.2 
~You'd get along with quite a lot of people back at the estate. They were definitely religious. The Triad, Siamorphe, Red Knight, Tymora, but especially, and very much, Siamorphe.~
EXTERN X3EmiJ 4.5

CHAIN X3EmiJ 4.3 
~That is what I am like. I feel like I should be more devoted though. Well, depending on the god, at least.~
EXTERN X3EmiJ 4.5

CHAIN X3EmiJ 4.5
~I am not sure who would really fit me, as a favorite, so to speak. My family would say Siamorphe above all others...but I just don't know.~
END 
++ ~You're thinking of being a priest?~ + 4.6
++ ~You are a noble. Siamorphe seems fitting.~ + 4.7
++ ~Well, I can not recommend Bhaal enough.~ + 4.8
++ ~Think of their dogmas, and think of those that you could live by and respect.~ + 4.9

CHAIN X3EmiJ 4.6
~Oh no no. Emily, the priestess? That sounds like an accident waiting to happen. If I had to recite verses, I'd always get them mixed up, and I can already see the glares I would get.~
END 
++ ~Oh come now, you would not be that bad.~ + 4.11 
++ ~That sounds funny. We should see if that is true.~ + 4.12 
++ ~You are right, you would be a terrible priestess.~ + 4.13

CHAIN X3EmiJ 4.11
~Unfortunately I am not keen on ever finding out. So I'll save myself plenty of blushing.~
EXIT 

CHAIN X3EmiJ 4.12 
~Ooh, really. Well, let's not. I am not going to be a blushing red tomato when my reciting gets messy. Nope. At least not so easily.~
EXIT 

CHAIN X3EmiJ 4.13 
~See, I am glad we agree that Emily should never be a priestess. Together, we have avoided a great tragedy from occurring.~
EXIT 

CHAIN X3EmiJ 4.7
~That is what everyone in my family would say. It's just...I want to represent values greater than just classic, conservative nobility. And when I used the word "greater", I always offended someone.~
END 
++ ~Not surprising, if you were using it to other nobles.~ + 4.14
++ ~I am sure you'll think of someone that suits you.~ + 4.10
++ ~Those values are tried and true for a reason, don't you think?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 4.15

CHAIN X3EmiJ 4.8
~Haha, Emily, revering a dead god of murder. That sounds horribly blasphemous. No. Never happening.~
EXTERN X3EmiJ 4.10 

CHAIN X3EmiJ 4.9
~That's a good idea...if I remembered them. I didn't exactly pay the greatest attention when we had theology lessons.~
EXTERN X3EmiJ 4.10 

CHAIN X3EmiJ 4.10
~I am sure there is someone out there that suits me. I'll just have to keep thinking.~
EXIT 

CHAIN X3EmiJ 4.14 
~Yeah, I was saying it to other nobles. Never a good idea, not to those who are very religious, at least. I've learned my lesson well.~
EXIT 

CHAIN X3EmiJ 4.15 
~Honestly? They probably are. But times change, and so do the people. What Siamorphe advises should be taken to account. But I do not think I could live by everything that is suggested. I just think differently.~
EXTERN X3EmiJ 4.10

CHAIN X3EmiJ 4.4 
~You're...faithless? That's...scary. But I guess it's better to be that than say you revere them but not follow their guidance and wishes.~
EXTERN X3EmiJ 4.5 

CHAIN X3EmiJ 4.X 
~Ooh, wishing to remain mysterious? Very well, <CHARNAME>. You can have your privacy.~
EXIT 

// Love Talk #5

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",10)~ THEN X3EmiJ LoveTalk5 
~Sune. That's who.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~What are you talking about?~ + 5.1 
++ ~What about Sune?~ + 5.1 
++ ~Emily, you are talking to yourself.~ + 5.1 

CHAIN X3EmiJ 5.1 
~Sune, the goddess of love and beauty. She has a view of the world that I enjoy. And, have you seen how fashionable her priests are?~
= ~I think she would be a goddess I would devote more to. I love arts, and painting, and romantic stories, and as silly as it sounds, I wish more people just enjoyed those things.~
END 
++ ~I think this really suits you.~ + 5.2 
++ ~Is that fitting for a noble, though?~ + 5.3 
++ ~Well, good that you figured it out.~ + 5.4

CHAIN X3EmiJ 5.2 
~It does, doesn't it?~
EXTERN X3EmiJ 5.4

CHAIN X3EmiJ 5.4
~Now I just have to get you into it. There are definitely some traditions of the Sune faith we could do together.~
END  
++ ~What sort of things?~ + 5.5
++ ~Well, if it's kissing, I am game.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 5.6
++ ~Definitely not interested.~ + 5.7

CHAIN X3EmiJ 5.5
~There's poetry, and painting, and dressing, and listening to songs and dancing. There's so much fun to be had.~
= ~I know we're adventuring and we have a difficult task at hand, but I think levity is important.~
END 
++ ~You have a point. Maybe if there is ever a festival going on.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~   + 5.8
++ ~When our task is finished, we can enjoy all of those things.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 5.9
++ ~There just isn't time, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 5.9

CHAIN X3EmiJ 5.8
~That sounds great. Then again, given our luck, that may not be for a while. Still, it's something to hope for.~
EXIT 

CHAIN X3EmiJ 5.9
~As true as that is, we might just put it off so much it never happens. I hope there's an opportunity.~
EXIT 

CHAIN X3EmiJ 5.6
~What? I'm not averse t- wait, I mean, it's not just about kissing.~
EXTERN X3EmiJ 5.5 

CHAIN X3EmiJ 5.7
~But you are missing out on so much!~
EXTERN X3EmiJ 5.5

CHAIN X3EmiJ 5.3 
~Oh, definitely. There are other nobles in Tethyr that revere Sune as their house goddess. Just not mine. Or some of the other family friends.~
EXTERN X3EmiJ 5.4 

// Romance #6: Post Rest Talk 
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",12)~ THEN X3EmiJ LoveTalk6
~Aah! No, no no!~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
+~GlobalLT("X3EmiQuest","GLOBAL",10)~+ ~Emily, it's just a nightmare. Are you all right?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.1 
+~GlobalLT("X3EmiQuest","GLOBAL",10)~+ ~Emily? What's going on?~ + 6.1
+~GlobalGT("X3EmiQuest","GLOBAL",10)~+ ~Emily, it's just a nightmare. Are you all right?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.1B 
+~GlobalGT("X3EmiQuest","GLOBAL",10)~+ ~Emily? What's going on?~ + 6.1B
++ ~(Ignore her and go back to sleep.)~ + 6.X 

CHAIN X3EmiJ 6.X 
~(You notice her start up, before she takes a breath and settles back in to rest.)~
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 6.1 
~I was dreaming...dueling Thomas over contention for leadership. I was at a disadvantage and despite yielding, his sword went through me.~
= ~Thomas is a great swordsman. But gods, why were we fighting? I don't want to murder each other.~
END 
++ ~It's not real. Isn't this all decided by a vote anyway?~ + 6.2 
++ ~Sometimes you have to make hard decisions to achieve great power.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 6.3
++ ~Just go back to sleep. We'll be up in a few hours.~ + 6.4

CHAIN X3EmiJ 6.1B 
~I was dreaming...everyone was, dead <CHARNAME>. All by that...Irenicus. It didn't matter how many arrows I shot, you were down and gone. And he was just...invincible.~
= ~He pointed his finger at me, and I just felt such excruciating pain. It felt so terrifying real.~
END 
++ ~It's not real, Emily. We still have a few hours to rest, try to get some sleep.~ + 6.4
++ ~That will never happen, Emily. I promise. Is there anything I can do to comfort you?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.4
++ ~Just go back to sleep. We'll be up in a few hours.~ + 6.4

CHAIN X3EmiJ 6.2 
~Yes. And...I can't think of Thomas being the sort to want to fight over this.~
EXTERN X3EmiJ 6.5

CHAIN X3EmiJ 6.5
~Besides, everyone knows Thomas is the better of the two of us in combat, but leadership is more then that.~
END 
++ ~Well if everything is all right, go get some rest. We'll be going in a few hours.~ + 6.4
++ ~Then hopefully everything goes as planned for you.~ + 6.4
++ ~Strength can be effective leadership. Best you not neglect it.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 6.6

CHAIN X3EmiJ 6.6
~Sometimes. It's just not...how I would want to lead.~
END 
++ ~As you wish, then.~ + 6.4
++ ~Get some rest. We'll be going in a few hours.~ + 6.4
++ ~Unless you need anything else, I'll be going back to bed.~ + 6.4


CHAIN X3EmiJ 6.3 
~I would be brokenhearted if it came to that. I wouldn't push it to violence to get the position myself.~
EXTERN X3EmiJ 6.5

CHAIN X3EmiJ 6.4
~Wait. Can you...stay a little while? I still feel uneasy.~
END 
++ ~Of course. Anything for a lady.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.10
++ ~If that is what you desire.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.10
++ ~You're not a child, Emily. You'll be fine.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 6.12
++ ~No, I really just want to get some sleep.~ + 6.12

CHAIN X3EmiJ 6.12
~Then...have a good rest.~
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 6.10
~Thank you. You are too good to me, sometimes.~
= ~(She gradually begins to lean against you, fingers twitching on her lap.)~
END 
++ ~(Move to hold her hand.)~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 6.7
++ ~(Push her away.)~  + 6.11
++ ~(Pull her into a hug.)~DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 6.8

CHAIN X3EmiJ 6.11
~(At your push, her cheeks tint and she looks away.)~
EXTERN X3EmiJ 6.9

CHAIN X3EmiJ 6.9
~I'm sorry! I wasn't realizing I was...never mind, I'm just really tired. We should get some rest before we set out again. Thank you...<CHARNAME>.~
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 6.7
~(She squeezes your hand back, before suddenly jumping away.)~
EXTERN X3EmiJ 6.9

CHAIN X3EmiJ 6.8
~(She gasps slightly at your hug, squeezing back, before moving away, a deep blush on her cheeks.)~
= ~Let's...er...I should get rest. Yes. rest. Thank you. Thank you truly.~
 DO ~RestParty()~
EXIT 
// Love Talk 7

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",14)~ THEN X3EmiJ LoveTalk7
~We see so many dark things when we travel, but have you ever stopped to see some of the little beautiful things around, <CHARNAME>?~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~What do you mean?~ + 7.1 
++ ~If I can. There is a lot out there worth admiring.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 7.1
++ ~Why? We're here to adventure, not to smell the flowers.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 7.1
++ ~I'm not interested in talking right now, Emily.~ + 7.X 

CHAIN X3EmiJ 7.X 
~Oh? Well, then I will stop chattering. Chittering. Chitter chattering? Oh, never mind me.~
EXIT 

CHAIN X3EmiJ 7.1 
~Well, think about those small little things, like children playing in the streets of the city, or a priest helping a poor beggar make it through. A shopkeeper giving a small free present to a curious child, those sort of things.~
= ~We see all of this ugliness, and sometimes think the entire world can be a miserable place, but I think we forget about those tiny powerful gestures sometimes that come from people who aren't even adventurers, just common people.~
END 
++ ~But they owe it to us to be able to do those things at all.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 7.3
++ ~That's not really special at all.~  DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~+ 7.4
++ ~That is nice to think about it.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 7.2


CHAIN X3EmiJ 7.2 
~It is, isn't it?~
EXTERN X3EmiJ 7.5 

CHAIN X3EmiJ 7.3
~Can we really take credit for everything? There are more adventurers than just us. There are guards, and soldiers, all sorts of people devoted to the service of others.~
EXTERN X3EmiJ 7.5 

CHAIN X3EmiJ 7.5
~I think it's important to remember that no matter how dark things get, or how grim, or how hard, life is still going. Life is everywhere. And if even these people are able to bring a bit of light in other's lives, then we can keep standing up.~
END 
++ ~Is this one of your recently adopted religious views?~ + 7.6
++ ~It's a nice sentiment, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",11)~ + 7.7
++ ~Why are you bringing this up now?~ + 7.8

CHAIN X3EmiJ 7.6
~Oh no. I've always believed in this.~
EXTERN X3EmiJ 7.7 

CHAIN X3EmiJ 7.7
~It was in my mother's journal, my birth mother. It was one of the things she found beautiful about the world.~
EXTERN X3EmiJ 7.8

CHAIN X3EmiJ 7.8
~I guess I am just saying to keep looking up, <CHARNAME>. Keep staying strong.~
END 
++ ~I will, Emily. Thanks.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 7.9
++ ~Right. Great pep talk.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 7.10 
++ ~I don't need your words, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 7.11

CHAIN X3EmiJ 7.9
~Right, so back to the ritual battling and enduring of all of the adventuring elements. Hopefully it doesn't include getting a trap caught in our feet, that...was really painful when that happened.~
EXIT 

CHAIN X3EmiJ 7.10
~I'm so glad that you think I'm good at this. But...seriously, <CHARNAME>. Please don't lose your heart.~
EXIT 

CHAIN X3EmiJ 7.11
~Maybe you don't now, but if they help you later, that is a good thing. We don't want you sinking into despair. Definitely bad for group morale when the leader is groaning and moaning and slumped over. Not that you do that. At all. I'm going to stop now.~
EXIT 

CHAIN X3EmiJ 7.4 
~Really? You don't see anything bright or uplifting about these small gestures. I'm not sure I can understand that point of view unless I was always grim and cynical. But you aren't that. I think.~
EXTERN X3EmiJ 7.5

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",16)~ THEN X3EmiJ LoveTalk8
~So, endless walking, dry, plain tasting rations, getting shot at by bandits and monster spells, which will you miss the most when your adventures are over?~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~None of them are quite appealing when you say it like that.~ + 8.1
++ ~I think I would miss you above anything else.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 8.2
++ ~I don't think I would stop adventuring anytime soon.~ + 8.3 
++ ~I don't have time to answer your silly question.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~ + 8.X 

CHAIN X3EmiJ 8.X 
~Er, all right then. I didn't think a simple question would make you so touchy.~
EXIT 

CHAIN X3EmiJ 8.1 
~No? And I thought those were the most delightful parts.~
EXTERN X3EmiJ 8.4

CHAIN X3EmiJ 8.2 
~Me? I...I would miss you too, I think. I've enjoyed our time together very much.~
EXTERN X3EmiJ 8.4


CHAIN X3EmiJ 8.3 
~A life on the road forever? Honestly, that sounds exhilarating. But I know I couldn't shirk my responsibility to my home or my homeland forever.~
EXTERN X3EmiJ 8.4

CHAIN X3EmiJ 8.4 
~When you don't have plenty, like I did in the estate...you feel so alive. The thrill, the excitement, the satisfaction of making a difference. It's joyous, isn't it?~
END 
++ ~Honestly, I just do it for the fame and glory.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 8.9
++ ~Aye, it is.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 8.5
++ ~I only care if the pay is good.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 8.7

CHAIN X3EmiJ 8.5
~I'm glad this is alongside you, you know. There are so many adventurers who are...not as pleasant. Or friendly. Or just plain jerks. I'm glad this is you.~
END 
++ ~And I'm glad to travel with you. You're lovely company.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 8.6
++ ~Don't get the wrong idea. You are useful. That's why you are here.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~ + 8.10
++ ~I'm glad that I make you happy, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 8.8

CHAIN X3EmiJ 8.8
~Usually. Sometimes, you make me terrified with where you point us to go, haha. Can't get me killed that easily.~
EXIT 

CHAIN X3EmiJ 8.6
~Lovely? I could grow used to being called lovely. Oh, that sounded so vain. And now I'm being awkward. I'm going to step...to the back now.~
EXIT 

CHAIN X3EmiJ 8.10
~Right...useful. I guess I was thinking something else and wrong. Never mind me, then.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 8.9
~Well, you have certainly achieved fame and glory.~
EXTERN X3EmiJ 8.5 

CHAIN X3EmiJ 8.7
~Just the money? It just seems that money eventually becomes meaningless, once you earn so much of it. You could do so much more.~
EXTERN X3EmiJ 8.5

// Love Talk #9

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",18)~ THEN X3EmiJ LoveTalk9 
~You are...amazing, you know that?~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~What makes you say that?~ + 9.1 
++ ~I definitely know that.~ + 9.1 
++ ~And?~ + 9.1

CHAIN X3EmiJ 9.1 
~Through everything, no matter what dungeon, what crazy murderer, or what beast lies ahead, you face it all with such...calmness, such courage.~
= ~Half of the men I have ever known in my life would not dare those things. Well, more like all of the men. All of them except you.~
= ~I'm not sure why I'm blabbering on this. I guess I just want to say I...admire you.~
END 
++ ~Merely admiration?~ + 9.2
++ ~It's just part of what being an adventurer is.~ + 9.3
++ ~Well, thanks, but, shouldn't we be going?~ + 9.X

CHAIN X3EmiJ 9.X 
~Oh your...not interested I guess. Well, onward!~
END 
++ ~Wait, what do you mean by that?~ + 9.4
++ ~Onward.~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ EXIT 

CHAIN X3EmiJ 9.3 
~I think it is more then that. But I guess I'm just...going around what I really want to say.~
EXTERN X3EmiJ 9.4

CHAIN X3EmiJ 9.2 
~Something...more then that. Something perhaps inappropriate.~
EXTERN X3EmiJ 9.4

CHAIN X3EmiJ 9.4 
~I have...feelings for you. I thought you might notice me looking now and then, and I was wondering why I was so struck but...there's just something about you that draws me in.~
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ 9.Prior 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ 9.Current 

CHAIN X3EmiJ 9.Current 
~I thought I was just smitten by your looks. You are handsome and...a bit dreamy to look at. But it's more then that.~
EXTERN X3EmiJ 9.Join

CHAIN X3EmiJ 9.Prior 
~I thought they would go away after everything in Saradush. It's why I...wasn't wanting to leap, but they haven't. I'm beginning to be drawn in by the exact same things.~
EXTERN X3EmiJ 9.Join 

CHAIN X3EmiJ 9.Join 
~This is wrong though. Even if you felt the same way, which I doubt, we couldn't be together.~
END 
++ ~Nothing is stopping anything. I want this.~ + 9.Accept
++ ~I do feel the same way, Emily. But why can't we see where this goes?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 9.Accept
++ ~I just see you as a friend. There's no need to stress.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 9.RejectB 
++ ~Emily, there's someone else. I'm sorry.~  + 9.RejectB
++ ~Ha! I definitely am not interested in you.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-5)~ + 9.RejectA 

CHAIN X3EmiJ 9.Accept 
~You...you do? No...you should not have told me that. Why did you tell me that? Ugh now this hurts more.~
END 
++ ~What are you talking about? Just tell me.~ + 9.5
++ ~Because it is the truth.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 9.5 
++ ~It will be all right.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 9.5
++ ~I am suddenly changing my mind about this. Forget I mentioned it, I'm not interested.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 9.RejectB 

CHAIN X3EmiJ 9.5
~I'm sorry. I don't...even know how to put words together right now. Can we table this for later? I promise, I'll not let it drop. I just need to figure out how to say it without shivering like I'm in an ice storm.~
END 
++ ~There's no rush. Take your time.~ + 9.6
++ ~Why does it require waiting? Just spit it out.~ + 9.7
++ ~If you insist.~ + 9.6

CHAIN X3EmiJ 9.6
~Thank you. I promise, I'll talk more with you when I'm...not so blank headed.~
EXIT 

CHAIN X3EmiJ 9.7
~Because...I don't know how to say it properly with all the arguments in place. Your...admittance just...I just lost my thought process.~
= ~I promise, I'll talk about this when I'm not so...blank headed.~
EXIT 

CHAIN X3EmiJ 9.RejectA 
~Okay. Very. Awkward. I...am not sure why I am talking about this at all. Just...forget I said anything.~
EXIT 

CHAIN X3EmiJ 9.RejectB
~Well then. I will stop stressing. I don't even know why panicking about it mattered. I guess I am just quirky sometimes.~
= ~Let's just keep moving and...forget about this embarrassing moment.~
EXIT 

//Love Talk 10
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",20)~ THEN X3EmiJ LoveTalk10
~We're resting then? I thought...maybe I could explain myself now that I'm not so embarrassed and have had time to think.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~It's just words, Emily. They aren't difficult to speak.~  + 10.1
++ ~Sure, we have time now.~ + 10.2
++ ~I'd rather get some rest.~ + 10.X 

CHAIN X3EmiJ 10.1 
~Well, being around you makes it difficult to think straight sometimes. And it's not because I'm crazy. Usually.~
EXTERN X3EmiJ 10.2 

CHAIN X3EmiJ 10.2
~It's just...I'm a noble. You're an adventurer. I'm already a bastard, a half-elf, an aasimar, all sorts of things that make my family uncomfortable, even if most only know the first or second of those three things.~
END 
IF ~Race(Player1,HUMAN)~ EXTERN X3EmiJ 10.3H 
IF ~!Race(Player1,HUMAN)~ EXTERN X3EmiJ 10.3NH

CHAIN X3EmiJ 10.3H 
~You are human at least, so there wouldn't be concerns there, but...we still aren't the same class.~
END 
++ ~Is that really such a big deal?~ + 10.4
++ ~Why not just see where this goes? I'm sure such controversy has happened before.~ + 10.6
++ ~Those sound like excuses. If you aren't interested, just say so.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 10.5
++ ~Then we can just be friends, Emily. Simple enough.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 10.8

CHAIN X3EmiJ 10.3NH 
~You aren't human either, which I can already see the negative gossip coming from that. It makes this...a bad idea, so to speak.~
END 
++ ~So you're against being with other races? You're mixed yourself.~ + 10.3
++ ~None of that is a big deal, is it?~ + 10.4
++ ~Those sound like excuses. If you aren't interested, just say so.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 10.5
++ ~Then we can just be friends, Emily. Simple enough.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 10.8

CHAIN X3EmiJ 10.3
~No no! I have nothing against it. I think it's beautiful how people can come together. But my family has traditions and unwritten rules about this. I don't want to make the mistake my parents did and break your heart.~
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.4 
~To me? No, but to my family? I don't want to break your heart because I am pressured or forced to give it up. I don't want to make the mistake my mother did.~
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.5
~I am interested I just...am bound by those traditions. I don't want to make the mistake my parents did and make this painful for both of us.~
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.6
~It happened with my father and mother, though they kept it as secret as they could. It was reveal he had a bastard with a commoner or marry a noble woman, and my father decided to keep the family name pure.~
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.7
~They loved each other. They had me. But my father gave it all up for family and what tradition demanded.~
END 
++ ~Maybe that still happens, but isn't all of that worth the pain?~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.9
++ ~We're not at Tethyr now. We can enjoy this for the moment. Maybe it doesn't last, maybe it does.~ + 10.9
++ ~Well, if you think this is best, we can just be friends.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.8

CHAIN X3EmiJ 10.9
~Everything you are saying is right. Everything you mention I want to do! It's just...I guess I am afraid.~
END 
++ ~Don't be. Give this a chance.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.10
++ ~Then take your time and consider this. You don't have to leap today.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 10.10
++ ~If this is too much for you, then let's just stay friends.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.8

CHAIN X3EmiJ 10.10
~I'll think about this more. Thank you for being as patient as you've been. I appreciate it.~
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 10.8
~Yes...friends. That's...That's just what I want.~
= ~Er, well, I'll prepare to settle in for rest. Sleep well.~
DO ~RestParty()SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 10.X
~I guess it's not important anyway. Rest well.~
DO ~RestParty()SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

//Friendship Talk #11

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",22)~ THEN X3EmiJ LoveTalk11 
~I've been thinking. And rethinking. And thinking some more.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~And what have you come up with?~ + 11.1 
++ ~Are you still undecided?~ + 11.2
++ ~Look, no need to keep prattling on. I don't want to waste time with someone indecisive.~ DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~+ 11.X 

CHAIN X3EmiJ 11.X 
~R-right. I understand. Forget it, then.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 11.XK 
~T-then, I will be happy for you. Truly. And I feel a bit...sad. But I'll get over it.~
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~
EXTERN X3EmiJ 11.XX 

CHAIN X3EmiJ 11.XV 
~I...don't know why you choose her. She can be nothing but a bully and a...you know. Witch, but worse.~
= ~But if it makes you happy, I will be happy for you, even if I feel a bit sad.~
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~
EXTERN X3EmiJ 11.XX 

CHAIN X3EmiJ 11.XR 
~She is my best friend, you know. I'll be happy for her. Just please treat her well, she tries to hide it from me, but I can see her pain sometimes.~
EXTERN X3EmiJ 11.XX

CHAIN X3EmiJ 11.XX 
~Come let's...just get going.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 11.2 
~No, actually. I'm certain of what I want.~
EXTERN X3EmiJ 11.1

CHAIN X3EmiJ 11.1 
~I chose Sune as my favorite goddess because I thought our beliefs were most alike, and I know she would say damn to the consequences. She would say to leap and if it isn't meant to last, then it isn't.~
END 
IF ~OR(3)Global("X3KalRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3C
IF ~!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3

CHAIN X3EmiJ 11.3C 
~I just want to ask about...something that also had me hesitant.~
END 
IF ~Global("X3KalRomanceActive","GLOBAL",1)~ + 11.3K
IF ~!Global("X3KalRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ + 11.3V 
IF ~!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3R

CHAIN X3EmiJ 11.3K
~You and Kale. is there something between you? I understand if you like him. He can be...charming. Maybe. In a weird sort of way, but I can see how someone might like him.~
= ~It is just that if I'm going to be comfortable with this, it just has to be us. I know you understand.~
END 
++ ~Kale and I are just friends, nothing more.~ + 11.4K
++ ~If I have to choose, I choose you then.~ + 11.4K
++ ~There is. He is charming, and I wouldn't give him up.~ + 11.XK
++ ~Honestly Emily, I think it's best you forget about getting comfortable.~ + 11.X 

CHAIN X3EmiJ 11.4K
~I'm sorry to have to make you choose. I think this is easier for everyone, though.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3VieRomanceActive","GLOBAL",1)~ + 11.3V 
IF ~!Global("X3VieRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3R
IF ~!Global("X3VieRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3

CHAIN X3EmiJ 11.3V
~Vienxay. I've seen how she looks at you. She may deny it, but she is definitely interested.~
= ~Do you feel the same way? If we're going to do this, it has to just be us. I can't see her sharing anyway with a "mutt", and frankly I'm not the sharing type either.~
END 
++ ~I don't like Vienxay like that at all.~ + 11.4V 
++ ~I only have feelings for you, Emily.~ + 11.4V
++ ~Interested is she? I'm definitely equally interested.~ + 11.XV 
++ ~I don't want to be anything more than friends, Emily.~ + 11.X

CHAIN X3EmiJ 11.4V
~I'm glad. Vienxay's a bit of a...you know. I'm not going to say the word because it's not proper.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3R
IF ~!Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3

CHAIN X3EmiJ 11.3R 
~Recorder is so passionate about you. I thought it was just for her writing, but she carries on like she's in love.~
= ~I don't want to hurt my best friend if you feel the same for her and make this complicated. But if you don't, I'll tell her. We're friends and I know she'd prefer to hear it from me.~
END 
++ ~Recorder is just a friend to me, Emily.~ + 11.4R 
++ ~My interest is in you, Emily. No one else.~ + 11.4R
++ ~I was wondering if she felt that way. I'm glad to know it's requited.~ + 11.XR 
++ ~I'm not interested in being more than your friend, Emily.~ + 11.X

CHAIN X3EmiJ 11.4R 
~I'll tell her sometime when we make camp. She'll be understanding, I'm sure.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~
EXTERN X3EmiJ 11.3

CHAIN X3EmiJ 11.3
~If I haven't thrown away my chance with my anxiousness and concerns...I'd like to...well, you know.~
END 
++ ~Be together? I'd like that too.~ + 11.4 
++ ~Sleep together sometime?~ +  11.5 
++ ~Kiss me?~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.9 
++ ~Do I know what?~ + 11.11
++ ~I'd...rather just be friends.~ + 11.X 

CHAIN X3EmiJ 11.4 
~I'm so glad...although it's not really romantic, is it? I'm bringing this up in the middle of our travels. I should have thought of a better time.~
END 
++ ~(Kiss her.)~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.10
++ ~Well, you can say it again, sometime. I don't think I'll grow tired of listening.~ + 11.13 
++ ~We'll have plenty of time for romance, I assure you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.14
++ ~A shame our travels take priority. Duty most come first.~ + 11.15

CHAIN X3EmiJ 11.5
~W-what? You're not...seeing this just for that, are you? I'm not ready for such a big jump! I wasn't even sure a while ago.~
END 
++ ~Of course not. I'm joking, Emily.~ + 11.7
++ ~There is no rush. We can get there when you're ready. It will be fun.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.6 
++ ~Then I'm not interested.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 11.8

CHAIN X3EmiJ 11.6
~Maybe when I'm ready. I've...never done that before. Let's just definitely take it slow.~
EXTERN X3EmiJ 11.16

CHAIN X3EmiJ 11.7
~Oh. Wow. Why do I take everything so seriously? Haha.~
EXTERN X3EmiJ 11.16

CHAIN X3EmiJ 11.9
~No complaints about that idea.~
EXTERN X3EmiJ 11.10

CHAIN X3EmiJ 11.10
~(When your lips connect with Emily's, there is a gentle inexperience. Her teeth graze your bottom lip, and she pulls back with a slight blush.)~
= ~Maybe we can practice that some more later.~
END 
++ ~I'd like that.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.17
++ ~Ow, you bit me.~ + 11.18
++ ~You definitely need the practice.~ + 11.16

CHAIN X3EmiJ 11.17
~Me too. I'll definitely be looking forward to it.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT  

CHAIN X3EmiJ 11.18
~Oops! I'm so sorry! I'll not do that next time, promise. I knew I should have practiced properly on the pillows back at the estate.~
EXTERN X3EmiJ 11.16

CHAIN X3EmiJ 11.19
~Hey! Challenge accepted. Once I'm all better, you'll be giving me a perfect review.~
EXTERN X3EmiJ 11.16 

CHAIN X3EmiJ 11.11
~Oh, you're really making me spill my guts. Be together. A couple.~
END 
++ ~Of course I would.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.4 
++ ~Your cheeks are so flushed right now.~ + 11.12
++ ~I'd...rather just be friends.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3EmiJ 11.12 
~Don't leave your answer hanging, <CHARNAME>. The suspense is killing me.~
END 
++ ~Of course I would.~ + 11.4 
++ ~All right, all right. The answer is...yes.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.4
++ ~I'd...rather just be friends.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3EmiJ 11.13 
~Nope, just the one was difficult enough! But I'm sure we can find time to spend together later. A bit of walk before rest, or swapping some childhood stories.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3EmiJ 11.16
~We should probably get back to the task at hand. We'll have time to properly relax together later.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3EmiJ 11.14
~Plenty? I look forward to it. But I guess we should get back to the task at hand for now. I'm just glad you said yes.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3EmiJ 11.15
~You are a little stiff sometimes, <CHARNAME>. I'm definitely going to try to find a way to make you loosen up a bit, ha!~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 


CHAIN X3EmiJ 11.8
~I'm glad we never started anything then. I don't think we would have been as compatible as I thought.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

// Romance conflict

CHAIN IF ~Global("X3EmiRomanceConflict","GLOBAL",1)~ THEN X3EmiJ X3EmiRomanceConflict
~I need to ask you something, <CHARNAME>. Do you have... affections... for someone else?~
== X3EmiJ ~I just want to know where I stand. If...if I end up saying yes, I don't think I could do that while your affections are also directed at someone else.~
END 
++ ~If you want me to devote to yourself alone, then I choose to do this. Let us see how far this goes.~ + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + ~Then I won't waste your time. I have strong feelings for Aerie.~ + RC.Aerie
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + ~Then I'm going to admit something...odd, but I care for Jaheria as more than just my guardian.~ + RC.Jaheira
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + ~Viconia has ensnared my heart.~ + RC.Viconia
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + ~It's a little wild, but I'm beginning to see myself with Neera.~ + RC.Neera
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + ~I'm beginning to fall for Sirene. I hope you understand.~ + RC.Sirene
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + ~I find Petsy charming. I think she is right for me.~ + RC.Petsy
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + ~It was all strange at first, but I think I am in love with Yvette.~ + RC.Yvette
++ ~There is no one else but you, Emily, if you let me.~ + RC.1
++ ~After considering things, I would rather be friends, Emily.~ + RC.2


CHAIN X3EmiJ RC.Aerie
~She's cute and sweet. Honestly I think you would be happy together. I won't lie and say I'm not a bit hurt, but, I'm glad we got this over with.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT



CHAIN X3EmiJ RC.Jaheira
~Jaheira hmm? That's interesting. I...hope things work out. I can't say I'm not a bit hurt, but I'm glad this was said.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Viconia
~I can't say I approve, or that I'm not hurt. But...I'm just glad I know this now over waiting when this would have been very painful.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Neera
~I like Neera, and I hope things work out. I just...am a bit disappointed. But I understand.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Yvette
~She seems really special. A priestess of Sune. It's sad to...lose to her, as horrible as a word that is. But she is prettier. I guess I shouldn't have ever tried.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Petsy
~I guess it would be easier to be with someone closer to your size. I understand. I'm glad we had this talk.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Sirene
~I don't know what to think about that. She's a good person, but...the opposite of me in some er, physical ways. I won't say I'm disappointed but...I'm glad we had this talk.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.1
~Great! I'm glad we had this talk before things escalated and someone got their heart really hurt.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",9)SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)
SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("YvetteRomanceActive","GLOBAL",3)
SetGlobal("L3PetsyRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ 
EXIT


CHAIN X3EmiJ RC.2
~*Sigh*. Friends. If...that is what you want, then of course. We can be friends.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3) SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ 
EXIT
 
// Post Rest 
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",24)~ THEN X3EmiJ LoveTalk12 
~You're awake. Here, I got you something.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~Is it food? I'm starved.~ + 12.2 
++ ~Sure, show me.~ + 12.2 
++ ~Show me later. We need to get moving.~ + 12.X 

CHAIN X3EmiJ 12.X 
~I...okay. I understand, you want to set right out! Let's be on our way, then.~
EXIT 

CHAIN X3EmiJ 12.1 
~Well, some people might be able to eat it. I wouldn't recommend it.~
EXTERN X3EmiJ 12.2 

CHAIN X3EmiJ 12.2 
~I wrote you a poem. *Hem hem*.~
= ~Close, I feel you, presence warm like the hearth.
My heart skips, beat lost, air taken apart.
You the thief, and the holder of my love.
I never want it back. Keep it always, beloved.~
END 
++ ~That was...good, Emily!~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.3
++ ~That was lovely. What inspired you?~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.4
++ ~That's it? I'm quite hungry here.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 12.5

CHAIN X3EmiJ 12.3 
~I am glad you liked it. Did you? I can't tell now.~
EXTERN X3EmiJ 12.4

CHAIN X3EmiJ 12.4
~You were my inspiration. I wanted to find a more romantic way to make it clear...I love you.~
END 
++ ~I love you too, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.6
++ ~I don't know if I feel the same way, yet.~ + 12.8
++ ~Well, now that's over with, I need to eat something before we start off.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 12.5

CHAIN X3EmiJ 12.5
~<CHARNAME>! I am saying I love you. Doesn't that...mean something?~
END 
++ ~Sorry, I'm just really hungry.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 12.8
++ ~I love you too, Emily. It was sweet.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.6
++ ~I don't know if I feel the same way, yet.~ + 12.7

CHAIN X3EmiJ 12.6
~(She moves forward to give you a peck on the lip. Soft and too short.)~
= ~Adventure awaits, my beloved. And I'm so glad that we are sharing the experience together, even if it's not all sunshine and rainbows.~
EXIT 

CHAIN X3EmiJ 12.7
~That's okay. You don't have to say it.~
EXTERN X3EmiJ 12.6

CHAIN X3EmiJ 12.8
~I...well, here, I've got a bit of a sweet cake. You can have it. I'll let you prepare and just get out of your way for now.~
EXIT 

// Emily LoveTalk #13

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",26)~ THEN X3EmiJ LoveTalk13
~I can't wait to show you the estate someday. There are all sorts of friends I'd love for you to meet.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~The estate? You're talking about your home. That's a bit far from here.~ + 13.1 
++ ~What are you talking about?~ + 13.2 
++ ~Right now we have tasks ahead of us. We can think of the future when the future is here.~ + 13.X 

CHAIN X3EmiJ 13.X 
~Aww, but thinking is half the fun. All right. I'll stop day dreaming.~
EXIT 

CHAIN X3EmiJ 13.1 
~I know, but...I always think of the estate now and then.~
EXTERN X3EmiJ 13.2 

CHAIN X3EmiJ 13.2 
~I guess you've met one of them, Catherine. You would love our blacksmith too. He always entertained my curiosities about the trade. Ooh, and our stablemaster. We should ride horses together.~
= ~I guess that's all silly though. I mean we don't know how this adventure will go but...is it wrong for me to think ahead?~
END 
++ ~Are you sure they'll accept me?~ + 13.6
++ ~Not at all. I wouldn't mind taking a trip to your estate someday.~ + 13.7
++ ~Definitely. We could die any day now. Best we keep grounded.~ + 13.5

CHAIN X3EmiJ 13.5
~Right. I guess I shouldn't be thinking that way.~
= ~Well, let's carry on then, my love. We still have a lot to accomplish.~
EXIT 

CHAIN X3EmiJ 13.6
~Oh, many would absolutely not. But more and more I know that I want to fight for this. I want to believe in time, they would grow to like you.~
EXTERN X3EmiJ 13.8 

CHAIN X3EmiJ 13.8
~I really want to reassure you. I don't care about your class or anything else. I'm in love with you.~
END 
++ ~And I truly believe it.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 13.11
++ ~All this talk makes me nervous though. How do I know you won't change your mind later?~ + 13.10
++ ~Maybe you were right. I don't want to bring you down, Emily. I'm a bhaalspawn too.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 13.9

CHAIN X3EmiJ 13.9
~Don't say that. I don't care. I will fight. I know I was scared before. I'm not now.~
END 
++ ~Your confidence is really reassuring. Let's do this, then.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 13.11 
++ ~If you are certain. I just don't want to hurt you.~ + 13.13 
++ ~No. We really should stop this. I'm sorry.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 13.XX

CHAIN X3EmiJ 13.11 
~Good, though that won't stop me from showing it to you all the time.~
EXTERN X3EmiJ 13.12 

CHAIN X3EmiJ 13.12 
~(She squeezes your hand, and for a while, stays by your side, flashing you grins and smiles.)~
EXIT 

CHAIN X3EmiJ 13.13 
~You could never. At least not intentionally. I know you. And I have faith in us.~
EXTERN X3EmiJ 13.12

CHAIN X3EmiJ 13.XX 
~I...I guess I won't keep arguing with you. *sigh*. I'm not happy but...I will abide your wishes.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3EmiJ 13.10 
~Because I will never stop showing you otherwise.~
EXTERN X3EmiJ 13.12 

CHAIN X3EmiJ 13.7
~Good, because...I'd probably make you do it. Now I don't have to feel guilty about it!~
= ~I'm joking. Half. I would have really wanted you to go, even if people wouldn't be comfortable with your station or the like.~
EXTERN X3EmiJ 13.8

CHAIN IF ~Global("X3EmiLoveDrow","LOCALS",1)~ THEN X3EmiJ LoveTalk14 // Only happens if the dragon wasn't killed.
~Wow. So we survive spellhold, brave through the Underdark, enter a silver dragon's lair...and we are now drow. This is...crazy. Am I the only one?~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveDrow","LOCALS",1)~
END 
++ ~Easy love. You'll have to start acting more like a drow once we enter the city.~ + 14.1 
++ ~We've seen all sorts of wild things by this point, haven't we?~ + 14.2
++ ~You aren't the only one, no.~ + 14.3
++ ~Not now, Emily.~ + 14.X 

CHAIN X3EmiJ 14.1 
~Yeah, that's...going to be hard. I think I'll just say as little as possible.~
EXTERN X3EmiJ 14.4

CHAIN X3EmiJ 14.2 
~Oh, yes. I'm beginning to think this isn't the last of unimaginable things we'll see.~
EXTERN X3EmiJ 14.4

CHAIN X3EmiJ 14.3 
~Well, that's good. Else I'd be worried about my sanity.~
EXTERN X3EmiJ 14.4

CHAIN X3EmiJ 14.4
~I guess this might be the last chance I get to show you a bit of affection for a while so...(She moves to wrap her arms around you, leaning against your chest.)~
END 
++ ~It will be all right, Emily. We'll have more time once we get out of this place.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 14.5
++ ~(Kiss her.)~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 14.6
++ ~You should start practicing now. Keep your hands off for a bit.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 14.7

CHAIN X3EmiJ 14.7
~Right...I can do that.~
EXIT 

CHAIN X3EmiJ 14.5
~I hope so. Because while I am putting up a strong face I am...very, very terrified of the dark.~
EXIT 

CHAIN X3EmiJ 14.6
~Mmm. This is...a bit strange, doing it not as ourselves entirely. I think I'll wait to do that again once we have our forms.~
EXIT 

CHAIN X3EmiJ 14.X 
~All right. I'll keep my thoughts to myself, then.~
EXIT 

//Bodhi Defeated Talk
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",28)~ THEN X3EmiJ LoveTalk15
~So only Irenicus remains then, now that Bodhi has fallen.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~Indeed. And he will fall.~ + 15.2
++ ~Are you all right? You seem bothered.~ + 15.2 
++ ~Let's not waste any time.~ + 15.1 

CHAIN X3EmiJ 15.1 
~Wait...I wanted to say something. An idea I had.~
EXTERN X3EmiJ 15.2 

CHAIN X3EmiJ 15.2 
~I was thinking, maybe we could take one day, and enjoy a proper rest. A good sleep in an inn, proper time to think and prepare and not smell like muck.~
= ~I think it would be good for the group, to just have that night of rejuvenation before we set out.~
END 
++ ~That doesn't sound too bad. Let's do it.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 15.4
++ ~I'm fine with that. It might be good for morale.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 15.4 
++ ~I'm not sure if we'll have the time.~ + 15.3 
++ ~We can't risk delaying any further, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 15.3 

CHAIN X3EmiJ 15.3 
~Well...it is your choice in the end. Just an idea! Either way, I'm ready for anything. Or as ready as you can be for something like this.~
EXIT 

CHAIN X3EmiJ 15.4 
~Ooh, an idea of mine that gets approved. Well, I sure can't wait for this. Hopefully you pick a really nice an inn for us.~
EXIT 

// Final LoveTalk

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",30)~ THEN X3EmiJ LoveTalk16 
~(You're all settled in to an inn room for the night and about to darken the room when you hear a slight rap on your room door.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ ~It's unlocked. Come on in.~ + 16.2
++ ~Who is it?~ + 16.1 
++ ~Go away, please.~ + 16.1 
++ ~(Ignore it and turn in for the night.)~ DO ~RestParty()~ EXIT 

CHAIN X3EmiJ 16.1 
~It's me, Emily.~
END 
++ ~(Let her in.)~ + 16.3
++ ~Come on in.~ + 16.2 
++ ~I'm tired, can we talk in the morning?~  + 16.X

CHAIN X3EmiJ 16.X 
~Er...all right, sure! See you in the morning, I guess.~
DO ~RestParty()~ EXIT 

CHAIN X3EmiJ 16.3 
~(You open the door and she looks about your room in admiration.)~ 
EXTERN X3EmiJ 16.4 

CHAIN X3EmiJ 16.4
~Not too bad. Certainly not too bad when you compare it to camping out in the wilderness.~
END 
++ ~What did you need?~ + 16.6
++ ~Definitely an improvement for sure.~ + 16.5
++ ~It's not much. But at least it's a bed.~ + 16.5

CHAIN X3EmiJ 16.5 
~The beds aren't the most comfortable, but...I'm glad you took my idea.~
EXTERN X3EmiJ 16.6 

CHAIN X3EmiJ 16.6 
~I couldn't get to sleep. I tried counting the arrows in my quiver, writing in my journal, and humming to myself, but nothing is really helping.~
END 
++ ~I don't mind giving you company for a while.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.7
++ ~Emily, I don't think doing any of those things help you sleep.~ + 16.8 
++ ~Well you're going to need it. We can't beat Irenicus tired.~ + 16.9

CHAIN X3EmiJ 16.7
~That's why I'm here. Haha. Ha. Yeah.~
EXTERN X3EmiJ 16.10

CHAIN X3EmiJ 16.8
~I've done it before. Okay, self-humming, no. Writing in your journal or counting your arrows...well, no to that, too.~
EXTERN X3EmiJ 16.10

CHAIN X3EmiJ 16.9
~Right? Haha. Ha. Yeah...~
EXTERN X3EmiJ 16.10

CHAIN X3EmiJ 16.10
~Here's the thing, <CHARNAME>...I want more than just a few minutes. I want to spend the night with you.~
~I was just thinking of how to make this perfect, a few witty and probably terrible lines to get you to desire me, I'd hope... but the timing is so bad and imperfect. I thought an inn might be better, but you're still without your soul. And you may never even get it back if we fail.~
END 
++ ~Don't say that, Emily. We'll definitely get Irenicus.~ + 16.12
++ ~I agree. I'd like to do this with you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.13
++ ~We don't have to do this now, Emily. There will be time later.~ + 16.14
++ ~I don't want to do this. Not now.~ + 16.11 

CHAIN X3EmiJ 16.11
~I see...I'll respect your decision. Maybe I'm just not strong enough to believe there will be a better time, but if you're hopeful...then I will try to be.~
= ~Rest well, my love. I'll let you be.~
EXIT 

CHAIN X3EmiJ 16.12
~I know. I believe that. But I don't know if we'll all accomplish it in one piece. I don't want to have regrets, and...if I never feel this with you, I think I will have something I deeply regret.~
END 
++ ~Then if this is what you want, come here.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.13
++ ~Let's make the most of this night then.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 16.13
++ ~I don't want to do this. Not now.~ + 16.11

CHAIN X3EmiJ 16.14 
~We don't know that. We can't. We might succeed, I want to *know* that we will, but we may not all make it in one piece. I don't want to have regrets...and if I never do this with you, I think I will have something I deeply regret.~
END 
++ ~Then if this is what you want, come here.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.13
++ ~Let's make the most of this night then.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 16.13
++ ~I don't want to do this. Not now.~ + 16.11

CHAIN X3EmiJ 16.13 
~(She tentatively steps closer, moving with you to the bed. Her kisses are soft and nervous, quick peppers about your skin as she undresses you and herself.)~
END 
++ ~(Let her take the lead.)~ + 16.18 
++ ~(Take over.)~ + 16.15
++ ~Wait, I can't do this.~ + 16.17

CHAIN X3EmiJ 16.18
~(She moves to straddle you, admiring your form, a bashful grin forming on her face, before she lets a few words escape her lips.)~
EXTERN X3EmiJ 16.16

CHAIN X3EmiJ 16.16
~I love you.~
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~ EXIT 

CHAIN X3EmiJ 16.15
~(You roll her over as she gasps in surprise. As you hover over her to begin, a bashful grin forms on her face, before she lets a few words escape her lips..)~
EXTERN X3EmiJ 16.16

CHAIN X3EmiJ 16.2 
~(The door opens and you see Emily walk through. She looks about your room in admiration.~
EXTERN X3EmiJ 16.4

CHAIN X3EmiJ 16.17
~What? Er, why not? Am I...unattractive?~
END 
++ ~Never mind. I'm just nervous.~ + 16.21
++ ~Emily, you are beautiful. I just...want this to be perfect.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.20
++ ~I want to wait. I don't want to rush it because of that mad man.~ + 16.19
++ ~Yes. Your body just isn't exciting me.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ + 16.XX

CHAIN X3EmiJ 16.XX
~W-what? Y-You...We...Goodbye! Jerk!~
= ~(She re-dresses herself, refusing to look at you. She leaves with a slam of the door.)~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)RestParty()~ EXIT 

CHAIN X3EmiJ 16.19
~You sound sure...*Sigh*. I won't try to change your mind, then. I'll respect your decision. I just wish you said something earlier.~
= ~Rest well. (She gives you a peek on your cheek, before redressing herself and leaving the room.)~
EXIT 

CHAIN X3EmiJ 16.20 
~This...is perfect, in a way. Because there is no one else I'd rather share my first time with.~
EXTERN X3EmiJ 16.18

CHAIN X3EmiJ 16.21 
~So am I...but I think my wanting and my love are stronger. I will lead us. Trust me.~
EXTERN X3EmiJ 16.18

// Romance #17
CHAIN IF ~Global("X3Slept","LOCALS",1)~ THEN X3EmiJ LoveTalk17
~That...was some of the best rest I have had.~ [X3ELS]
DO ~SetGlobal("X3Slept","LOCALS",2)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ ~Well, I'm glad I could please.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 17.1 
++ ~You are awake, beautiful.~DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 17.2
++ ~Aye. A pity that Irenicus still is out there.~ + 17.3 
++ ~Mmm. We should prepare. We've some traveling to do.~ + 17.4

CHAIN X3EmiJ 17.1
~Ha, definitely. I don't know why I was so nervous...this was fun. A lot of fun. And you were the perfect choice to share the experience with.~
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.2 
~That I am. Although I could stay here forever if I wanted to.~
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.3 
~We'll have to take care of that, won't we? He's ruining our bonding time.~
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.4 
~Yeah. We should.~
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.9
~I'm glad we did this now. I...feel so much better. There's just one more thing I need from you.~
= ~Promise me that you'll make it. That when you get your soul back you won't suddenly...dissipate. into dust. Now that I've been with you...I don't ever want to lose you.~
END 
++ ~I promise, with all of my power.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 17.5
++ ~We'll see. You said yourself Emily that anything can happen.~ + 17.6
++ ~Only if you promise the same.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 17.7
++ ~You know I can't promise that.~ + 17.6

CHAIN X3EmiJ 17.5
~Good.~
EXTERN X3EmiJ 17.8

CHAIN X3EmiJ 17.7
~Turning it on me, hmm? I'll promise that with all of my power, I will fight to stay alive for you, and fight for you to stay alive for me.~
EXTERN X3EmiJ 17.8

CHAIN X3EmiJ 17.8
~(She moves to kiss you. There is no nervousness, just passionate pecks with a pause in between that laments ever interrupting from the kiss before them.)~
= ~Let's take that man down, shall we?~
EXIT 

CHAIN X3EmiJ 17.6
~I know.~
EXTERN X3EmiJ 17.8

// Group Kiss from PID 
CHAIN X3EmiJ Group.Kiss 
~Um, but what about the rest of the party?~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Kids these days...~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, don't mind me. I like to observe.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Hee. I think this is endearing.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. Mutt-snogging. I'm going to be sick.~
== X3EmiJ ~Oh, never mind that. Come here.~
== X3EmiJ ~Mmm. Now that is enough public display of affection for now.~
EXIT 

APPEND X3EmiJ 

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~I...oh gods, how do you even speak up about something like? I'm just going to...try to get this out clearly.~
= ~I care for you, <CHARNAME>. I love you, still, I think. But...things have been honestly, quite bad as of late.~
= ~I cherish love, I do! But I can't keep going like this with you. I'm sorry.~
++ ~You're breaking up with me?.~ + LBreak.1
++ ~If that's what you want, I won't argue.~ + LBreak.2 
++ ~Emily, give me more time. I can make this right.~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~Yes. That is sadly exactly what I am doing. In a very unskilled way, not that anyone wants to be skilled at this but...never mind that.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~Honestly, I'm kind of disappointed you aren't. I guess that is why I do want to end it. You just don't seem to care.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~I want to be so hopeful that you would do that. But I...don't trust that you would ~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~I'd like to stay still, but I know it will be awkward. I can leave if that's what you prefer..~
++ ~I wouldn't be comfortable with you around.~ + LBreak.5 
++ ~I don't want you here. Give me your equipment and go.~ + LBreak.6 
++ ~No, no. You can stay.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~I figured as much. Well. I guess this is...goodbye, then. I hope you succeed at your goals.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~I'll...give you what isn't absolutely mine. Goodbye, I guess.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~Good! Because as awkward as that was, I really do want to stay. Thank you.~
IF ~~ EXIT 
END 

// Break Approval 
IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~This...is hard for me to say, but I need to say it. Even if you aren't going to like it, <CHARNAME>.~  
= ~What you have been doing is terrible. Foul. Immoral. It goes against my very being. Literally. I am an aasimar, <CHARNAME>. And what you have been doing is absolutely...fiendish!~
++ ~The ends justify the means, Emily.~ + Break.1 
++ ~That's part of adventuring, Emily.~ + Break.1 
++ ~You have seen what we were up against. It has been...hard. And I am sorry if my decisions have been worse for it.~ + Break.2
END 

IF ~~ Break.1
SAY ~What?! How can you even say that? That is just an excuse to do awful things and not even consider the weight of them!~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~I know. And I gave you the benefit of the doubt for a while. But I can't do that anymore.~ 
IF ~~ + Break.3 
END


IF ~~ Break.3 
SAY ~Unless there's going to be a change of how you do things, I am afraid I am going to leave.~
++ ~If you don't like it, then go.~ + Break.4
++ ~I'm not going to change anything. Give me your equipment and go.~ + Break.5
++ ~I'll try, Emily. For you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~...Then I go. Goodbye, <CHARNAME>. We won't see each other again.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~Unbelievable. That is what you think about. Your own belongings. Not your morals. Wow. You know what? I wish I had never met you.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~Thank you. I will stay and give you a chance. For now. Gods, I am gullible, but I hope that you are genuine.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3EmiApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@516)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~Did what you say to me before, was that only words, <CHARNAME>? Nothing has really changed. It's just as...unbearable as before.~
= ~I have been such a fool for agreeing to stay. But that will change now. Goodbye, <CHARNAME>. I regret that we ever met.~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY ~Yes? Is there something you need?~ [Emila]  
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
// Requires the PC to have talked to Emily before about crafting. 
+~Global("X3miCraft","LOCALS",1)~+ ~Do you think you could improve one of our ranged weapons?~ + Craft.PID
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY ~Hello there, <CHARNAME>.~ [X3EHello] 
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ ~Do you think you could improve one of our ranged weapons?~ + Craft.PID
++ ~Never mind.~ EXIT 
END  

IF ~~ main.PID 
SAY ~What do you want to talk about?~
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ ~Do you think you could improve one of our ranged weapons?~ + Craft.PID
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Sure. Shoot your quivering question.~
+~Global("X3PIDCON1","LOCALS",0)~+ ~You are from Tethyr, aren't you? Can you tell me a bit about it?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ ~You've spoken about living on an estate. What was life like there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ ~Tell me more about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ ~Do you know much of your birth mother?~ DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ ~How did you learn archery?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~So. You are now officially heir. How does it feel?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~So. You are officially not recognized as the heir. Does it still bother you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ ~I know you can fletch arrows. Can you also make bows and crossbows?~ DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~Is there something else, then?~ [X3EITSE]
+~Global("X3PIDCON1","LOCALS",0)~+ ~You are from Tethyr, aren't you? Can you tell me a bit about it?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ ~You've spoken about living on an estate. What was life like there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ ~Tell me more about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ ~Do you know much of your birth mother?~ DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ ~How did you learn archery?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~So. You are now officially heir. How does it feel?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~So. You are officially not recognized as the heir. Does it still bother you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ ~I know you can fletch arrows. Can you also make bows and crossbows?~ DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ ~Let's talk about something else.~ + main.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Tethyr
SAY ~Ooh. I'd love to. Where to begin...~
= ~My homeland is south of Amn, and ruled by Queen Zaranda. There's large forests where the elves come their home, and rivers where we settle in some of our towns and cities, like Saradush. We have some rocky badlands and mountains and border the sea. There's a bit of everything in Tethyr, I like to say.~
= ~The estate I live in is southeast of Brost. We were a bit lucky, the civil war didn't hit the north as much as it hit the south.~
++ ~A civil war?~ + PTethyr.1
++ ~It sounds similar to Amn or the countryside around Baldur's Gate.~ + PTethyr.2 
++ ~Were you happy there?~ + PTethyr.3
++ ~Let's talk about something else.~ + main.PID 
END 

IF ~~ PTethyr.1
SAY ~Oh yes. There was a big civil war after the demise of the last royalty. I was but a baby when it started.~
= ~One of our family friends was lost. All killed and executed by mobs. We have a shrine to commemorate their memory, but nothing else of them survived, save stepmother, who was a member.~
= ~It ended once Queen Zaranda, not quite queen yet, helped restore order to the land. She was a legendary adventurer at the time. She kind of inspires me on my own travels.~
++ ~Were you happy in Tethyr?~ + PTethyr.3 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PTethyr.2 
SAY ~Oh, it's a bit distinct from the north. A thick forest takes up much of Tethyr. But I guess some of the other features I described you could find about the Sword Coast.~
++ ~You mentioned a civil war?~ + PTethyr.1 
++ ~Were you happy in Tethyr?~ + PTethyr.3 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PTethyr.3
SAY ~That's an interesting question. For the land, yes. For the stress of the dispute of heir? Less so.~
= ~I think I did need to get out and see the world. I don't regret it. But Tethyr will always be home to me. I can't imagine settling down anywhere else.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Estate 
SAY ~Oh the estate was lovely, if very privileged.~
= ~It overlooked the outskirts of Brost and several farms that helped feed the region. We had tradesmen from the town serve my family, and my family in turned helped protect Brost.~
= ~I wasn't allowed to do that though. Not without sneaking out.~
++ ~Which you did, I imagine.~ + PEstate.1
++ ~It sounds...boring.~ + PEstate.2 
++ ~That sounds peaceful. Why would you want to leave that?~ + PEstate.3
END 



IF ~~ PEstate.1
SAY ~On occasion. I wasn't defenseless. Sometimes I just wanted to see what the world was like outside the walls of home. Other times, I heard about a bit of trouble and wanted to see if I could help.~
= ~I failed miserably once and barely escaped from a highwayman I was looking out for on behalf of one of our robbed merchants. That's when father took more of an interest in actually allowing me to use a bow without having to lie about.~
++ ~I can't blame you. Life in your estate sounds boring.~ + PEstate.2 
++ ~You had a peaceful life. Why leave that for adventure?~ + PEstate.3 
END 

IF ~~ PEstate.2 
SAY ~Sometimes. But I did enjoy the celebrations and lectures and the visits of the other nobles that would come from all over. And it was safe. Too safe, sometimes.~
= ~If I didn't have to hide to the world that I wasn't human, and there wasn't this dispute of being heir, I think it would have been a childhood anyone would have wanted.~
= ~But I guess that sounds petty. There are so many others with worse lives than mine. I shouldn't gripe over the small things.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PEstate.3 
SAY ~I wanted to learn who I really was. And while I am a noble, I am human, I am also an elf, and someone compelled to help people beyond their walls.~
= ~But most of all I think I just wanted to discover myself and get away a bit from the stress of family tension and bickering. And I think that was a good choice for me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Family 
SAY ~Well, there's all the makings of a normal family. A protective father, an obnoxious brother, and a stern stepmother.~
= ~My stepmother, Elissa, is the last surviving member of House Crestwing, wiped out during the civil war. She's widely respected and loved by everyone, though she always spoke so little. We were never really close. I sometimes think it was because I was not hers.~
= ~Still, she...she took me as her own. Taught me about etiquette and how to behave properly. Her lessons were stern, but I remember them well, even if it wasn't the form of love I was hoping for.~
++ ~I wouldn't want to get too close to a stepchild either.~ + PFamily.1 
++ ~I can see how that might have been hard.~ + PFamily.2 
++ ~Maybe she just didn't know how to connect to you.~ + PFamily.3
++ ~What of your father?~ + PFamily.4
END 

IF ~~ PFamily.1 
SAY ~But we are a family. That should mean more than blood. Still, I can see it being hard for her, no matter how much time passed. I always called her mother all the same.~
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY ~Maybe. Or maybe I am just a little bit of an ungrateful brat, if I am being honest with myself. It could just be that she isn't the affectionate sort of person I am.~
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY ~She wasn't as touchy and affection like I was. I used to hug everyone, even Thomas when I was younger. She was never...for that kind of thing. Always more distant.~
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.4
SAY ~My father had gained some of his own fame from adventuring before he took on the responsibilities of the house. He has friends within the royal council, and I'd say we are just short of a major house. There are certainly names bigger than ours, however.~
= ~Still, he was always protective of me when I wanted to do the same thing. It took him a while to be supportive. I think more than anything, he was more afraid of how I might be hurt if people found out I was not fully human than of his own pain.~
= ~I love him, but I wish he never lied.~
++ ~How did you hide you were not fully human, exactly?~ + PFamily.5 
++ ~He sounds like the typical father.~ + PFamily.6
++ ~I can understand what you mean. Gorion kept me sheltered for quite some time, but he meant well.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.7
END 

IF ~~ PFamily.5
SAY ~Ha. It wasn't easy. Mostly tricks of the hair and using the family circlet to hide the tips with the edge. One of father's most loyal, trusted maids always made sure I never forgot.~
IF ~~ + PFamily.8
END 

IF ~~ PFamily.6
SAY ~I imagine parenting is still parenting, no matter what your race and class is. I'm glad he was vested in it, even if he was a bit too watchful for my tastes.~
IF ~~ + PFamily.8
END 

IF ~~ PFamily.7
SAY ~It sounds like you can put yourself right in my shoes. Fathers do mean well, don't they?~
IF ~~ + PFamily.8
END 

IF ~~ PFamily.8
SAY ~And...then there's Thomas.~
= ~My first memories of him are so sweet. We'd dance and play and tease and squabble. But then you get older...*Sigh*. Maybe he just started to figure it out that I wasn't stepmother's child, but he became more distant and cold and ambitious.~
= ~He put all of his time into learning and combat and tactics, more then I did. And if I ever snuck out, guess who was telling? Talk about snitching brothers.~
++ ~There could still be hope.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.9
++ ~Well if you were breaking the rules, isn't that your fault?~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + PFamily.10
++ ~I'm sorry about your fall out.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.11
END 

IF ~~ PFamily.9
SAY ~Maybe. But if there is a sign, I just have yet to see it.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.10
SAY ~Haha. Okay. That part, is probably all on me, I'll admit. Still...just another sign that we were definitely not the giggling, chasing, playing type of siblings anymore. And that still saddens me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ PFamily.11
SAY ~Don't be. It's not your fault. It's mine. I just hope to see a sign one day that things might get better in the family.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Mother 
SAY ~Far...less than I would like.~
= ~I know she came from the Forest of Tethir. My father had told stories of the elves there, and she was an elf. They traveled together for a time, and fell in love.~
= ~My mother's parents were wary of him, and his parents were wary of my father adventuring at all. They had no idea he was with an elf, and wouldn't have approved.~
++ ~Is that why they separated?~ + PMother.1 
++ ~Have you learned anything about her since?~ + PMother.2 
++ ~Do you know anything about her after you were born?~ + PMother.2
END



IF ~~ PMother.1  
SAY ~Father was pushed to lead House Castilla, as my grandfather was become unwell and sick, and the clerics could not cure it. And my family could not accept a non-human wife.~
= ~And so because she loved him, and wished him the best, she left without warning. She returned only to birth me in the castle, and leave me with him and his new wife, because she couldn't take me with her on the road.~
= ~My father was always bitter about that. I think he just wished a way where she would have fought for him to try to still be with her. I think he would have said yes.~
++ ~Why isn't your family okay with an elf?~ + PMother.3 
++ ~It sounds so unnecessary. Couldn't he have married her anyway?~ + PMother.4 
++ ~Why didn't he just leave and travel the roads with her?~ + PMother.4
END 

IF ~~ PMother.2
SAY ~Most of what I know comes from father, and almost all of what he told me was what happened before I was born.~
IF ~~ + PMother.1
END 

IF ~~ PMother.3 
SAY ~Oh, old purist traditions. Even if I don't like them, my family believes in them. It's kind of hypocritical when it comes up for another family, knowing what we were trying to hide for so many years.~
IF ~~ + PMother.5
END 

IF ~~ PMother.4 
SAY ~I think he would have if she would have said something that told him she was willing to fight. But she just left. Her actions just told him that she didn't want that.~
= ~I think she was in her own way protecting him.~
= ~I didn't meet her myself until my trip to Baldur's Gate. That's when I learned she was also an aasimar. Sadly, I will probably never meet her again.~
++ ~Where her parents celestials?~ + PMother.5
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PMother.5 
SAY ~No. It would have been generations ago.  The how or why was never told, and maybe she doesn't even know. It doesn't matter. It was love.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Archery 
SAY ~Oh, just a complete natural talent. Ha, it was actually mostly observing other archers, and convincing them for a few lessons, then "borrowing" a bow to shoot on my own whenever I could get away from prying eyes, which wasn't as often as I like.~
= ~After I got caught sneaking out a few times to do foolish things like track down highwayman hurting our people, father got me properly taught. Eventually an elf who I believe was a friend of my mother's taught me some techniques that involved some old elven traditions.~
= ~I'm not allowed to share what they involved. But they are central to how I fight.~
++ ~Why can't you share more about what your archery lessons involved?~ + PID.Archery1 
++ ~Did you learn to fight with any other weapons?~ + PID.Archery2
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Archery1 
SAY ~Because these are sacred elven secrets. And I would be adverse to betraying him for all he did for me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Archery2 
SAY ~Well, there was a little bit with the sword and rapier, but I was always awful. People just laughed at my form and I tried to avoid instruction on the blade when I could out of embarrassment.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ Heir.AftermathWon
SAY ~It's starting to settle in. I'll have so much responsibility soon. I'm forming some ideas and plans I'd like to try to enact when I return, and people to talk to for advice and assistance. I want to lead right and well.~
= ~But right now my devotion is to your goals and cause. House Castilla will wait.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ Heir.AftermathLost
SAY ~I'm still depressed about it. But now in a way it allows me to do what I want to do. My future is no longer set to be some face of a noble house. It's now anything I want it to be.~
= ~But right now my devotion is to your goals and cause. My own decisions of my path in life can wait.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Crafting
SAY ~Well, fletchers don't usually make bows and crossbows while on the move. Even if I could do that, I don't have the materials.~
= ~But I do have just enough to improve on a single bow or crossbow. If you want me to do that, just show me a bow or crossbow you'd like me to modify with my materials. Just be sure that's the one you want me to work.~
= ~I would strongly suggest it's not just some generic bow or crossbow. Else it wouldn't be a great use of material.~
++ ~I might have a weapon for you to look at, then.~ + Craft.PID 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY ~Well, we aren't alone but...what did you want to ask?~
+~Global("X3EmiRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + Q1.6 
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3EmiRomanceActive","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiInterest","LOCALS",0)~+ ~Has anyone told you how beautiful you are?~ DO ~SetGlobal("X3EmiInterest","LOCALS",1)SetGlobal("X3AppChange","GLOBAL",6)~ + RomanceInt.Talk
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I don't think this is going to work between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~Well, it's just the two of us. What did you want to ask?~
+~Global("X3EmiRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + Q1.6 
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Alone.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3EmiRomanceActive","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiInterest","LOCALS",0)~+ ~Has anyone told you how beautiful you are?~ DO ~SetGlobal("X3EmiInterest","LOCALS",1)SetGlobal("X3AppChange","GLOBAL",6)~ + RomanceInt.Talk
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I don't think this is going to work between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~That sounds fine to me. I look forward to it.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~I would have it no other way but us spending that time together. I look forward to it.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmph. I could...definitely enjoy a few more of those, later. I hope you'll indulge.~
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY ~Not until now. What has inspired you to such words?~
++ ~Your eyes. I've never seen such gorgeous golden flecks.~ + RI.eyes 
++ ~Your hair is a beautiful blonde hue.~ + RI.hair 
++ ~Your face is serene.~ + RI.face 
++ ~Well, it's really your bosom.~ + RI.bosom 
++ ~Nothing. I just wanted to see your reaction.~ + RI.reaction
END 

IF ~~ RI.eyes 
SAY ~My eyes, hmm? I...am actually flattered. I always worried that my eyes made me unnatural.~
= ~They're not exactly a normal human feature, though neither are they an elven one or a trait of anyone but my birth mother. It definitely brought out some questions at the dinner table.~
++ ~I am sure that must have been fun.~ + RI.E1
++ ~They were probably just jealous, wanting those eyes for themselves.~ + RI.E2
++ ~They do look a little unnatural.~ + RI.E3
END

IF ~~ RI.E1 
SAY ~Plenty, if you think glances trying to read into a possible scandal are "fun".~
IF ~~ + RI.exit 
END 

IF ~~ RI.E2 
SAY ~Haha. Jealous. Maybe one of them. I'd prefer blue eyes if I had a choice. Ooh no. Green. Green eyes are gorgeous.~
IF ~~ + RI.exit 
END 

IF ~~ RI.E3 
SAY ~Oooh. You said that on purpose. I'm going to remember that.~
IF ~~ + RI.exit 
END 

IF ~~ RI.exit 
SAY ~But enough of that, my friend. Don't we have something we should be doing?~
IF ~~ EXIT 
END 

IF ~~ RI.hair 
SAY ~Thank you. I wish I had more time to really take care of it, but adventuring really ruins hair.~
= ~For a man though, yours isn't....well it's actually kind of nice, even if I can tell you don't put much effort in it.~
++ ~Hey. I use the finest hair products on this beauty.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.h1 
++ ~I don't bother. It will just get messed up again.~ + RI.h2 
++ ~What can I say? I'm naturally handsome.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.h3 
END 

IF ~~ RI.h1 
SAY ~Well. Then apologies from me. And...totally let me know what you use. It's hard to get fine ingredients out on the road.~
IF ~~ + RI.exit 
END 

IF ~~ RI.h2 
SAY ~Ha, I imagine that's true with most men. It's a bit unfair I think.~
IF ~~ + RI.exit 
END 

IF ~~ RI.h3 
SAY ~I'll agree, I guess. You do look rather handsome for a <PRO_RACE>.~
IF ~~ + RI.exit 
END 

IF ~~ RI.face 
SAY ~Well, that's rather sweet of you. I think your face is not so bad yourself.~
= ~I could...nope, not saying it. That would be a bit awkward.~
++ ~Oh, no, go ahead and finish the thought.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.f1 
++ ~Heh, right, we probably should keep moving.~ + RI.f2 
++ ~Caught you speechless, did I?~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.f3 
END 

IF ~~ RI.f1 
SAY ~Nope. Quitting while ahead. Most wise advice I know when I say something nearly awkward.~
IF ~~ EXIT 
END 

IF ~~ RI.f2 
SAY ~Definitely before I say something really awkward.~
IF ~~ EXIT 
END 

IF ~~ RI.f3 
SAY ~Er. Uh....well...you know, we should probably get going. Or something like that. Definitely. Going. Sounds good.~
IF ~~ EXIT 
END 



IF ~~ RI.bosom 
SAY ~That is...a bit coarse?~
= ~I'm not sure whether to be flattered or a bit creeped out.~
++ ~My apologies, I don't mean to be so forward.~ + RI.b1 
++ ~If you showed a bit more skin, you'd flatter a lot more people.~ + RI.b2 
++ ~Take it as a compliment. I don't say it of everyone.~ + RI.b3
END 

IF ~~ RI.b1 
SAY ~Well, I'll accept it. Even if I kind of do like knowing I am beautiful. Ooh, so vain of me. Don't think that way, Emily, sheesh.~
IF ~~ + RI.exit 
END 

IF ~~ RI.b2 
SAY ~And officially creeped out. Let's not...talk about this anymore. Or ever again.~
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ EXIT 
END 

IF ~~ RI.b3 
SAY ~I can tell. It didn't really come out smooth. Still, thank you, I guess.~
IF ~~ + RI.exit 
END 



IF ~~ RI.reaction 
SAY ~Well, haha. You got me all stirred over something nice, and now I am annoyed.~
= ~Just leave me alone.~
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ EXIT 
END 

IF ~~ BreakUp
SAY ~But...why? What's wrong?~
++ ~I don't want you to be hurt.~ + BU.1 
++ ~Things are crazy right now. It's not a good time.~ + BU.2 
++ ~I'm sorry. I just don't want to be with you anymore.~ + BU.3 
END 

IF ~~ BU.1 
SAY ~It is sweet that you are trying to protect me, but please, think this through, <CHARNAME>.~
= ~Even if I were to leave and go back to Tethyr do you not think they still know of what we had?~
IF ~~ + BU.5
END 

IF ~~ BU.5
SAY ~Love makes us stronger, it gives us warmth and light and love. And I am not a fragile doll playing archer. I can protect you. Please, don't throw our love away.~
++ ~Okay. You've changed my mind.~ + BU.4 
++ ~Maybe you are right.~ + BU.4
++ ~I am sorry. My mind is made up.~ + BU.3 
END 

IF ~~ BU.2 
SAY ~When will it? Life *is* crazy. Life's arrows curve all over the place. The only thing that is certain is love.~
= ~We can find stability and comfort in that love, in each other.~
IF ~~ + BU.5
END 

IF ~~ BU.3 
SAY ~I...I see. Well if you don't want to talk about it, then that's it. I won't be with someone that doesn't want me.~
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiApp","GLOBAL",-10)
DisplayStringNoNameDlg(Player1,@109)~ EXIT 
END 

IF ~~ BU.4 
SAY ~Good. I know I think crazy things sometimes. I don't want you to start thinking the same way.~
IF ~~ EXIT 
END 


IF ~~ Craft.PID 
SAY ~I could certainly try and see if it's something I could work with. Show me which bow or crossbow you're interested in improving on. Just remember I can only improve one of them.~
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ ~What about Mazzy's Bow?~ DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ ~Take a look at the Ripper.~ + RipperBow
+~PartyHasItem("BOW10")~+ ~Would this Heartseeker be improvable?~ + HeartseekerBow
+~PartyHasItem("BOW11")~+ ~Check out Strong Arm, please.~ + StrongArmBow
+~PartyHasItem("BOW12")~+ ~Can you take a look and see if you can improve this Elven Court Bow?~ + ElvenCourtBow
+~PartyHasItem("BOW13")~+ ~See if this Mana Bow could be improved on.~ + ManaBow
+~PartyHasItem("BOW14")~+ ~How about this Tuigan Bow?~ + TuiganBow
+~PartyHasItem("BOW15")~+ ~Could you improve on Tansheron's Bow?~ + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("XBOW03")~+ ~What about The Guide?~ + TheGuideXBow
+~PartyHasItem("XBOW06")~+ ~The Army Scythe, could you work on that?~ + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ ~I think this Giant Hair Crossbow might be modifiable.~ + GiantHairXBow
+~PartyHasItem("XBOW10")~+ ~Give me an eye on this Necaradan's Crossbow.~ + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ ~Is Jan's Flasher Launcher improvable?~ DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ ~Try and see if this Crossbow of Affliction can be improved.~ + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind actually. Let's keep moving.~ EXIT 
END 

IF ~~ Craft.PID2 
SAY ~Perhaps there is another bow or crossbow you want me to look at?~
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ ~What about Mazzy's Bow?~ DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ ~Take a look at the Ripper.~ + RipperBow
+~PartyHasItem("BOW10")~+ ~Would this Heartseeker be improvable?~ + HeartseekerBow
+~PartyHasItem("BOW11")~+ ~Check out Strong Arm, please.~ + StrongArmBow
+~PartyHasItem("BOW12")~+ ~Can you take a look and see if you can improve this Elven Court Bow?~ + ElvenCourtBow
+~PartyHasItem("BOW13")~+ ~See if this Mana Bow could be improved on.~ + ManaBow
+~PartyHasItem("BOW14")~+ ~How about this Tuigan Bow?~ + TuiganBow
+~PartyHasItem("BOW15")~+ ~Could you improve on Tansheron's Bow?~ + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("XBOW03")~+ ~What about The Guide?~ + TheGuideXBow
+~PartyHasItem("XBOW06")~+ ~The Army Scythe, could you work on that?~ + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ ~I think this Giant Hair Crossbow might be modifiable.~ + GiantHairXBow
+~PartyHasItem("XBOW10")~+ ~Give me an eye on this Necaradan's Crossbow.~ + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ ~Is Jan's Flasher Launcher improvable?~ DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ ~Try and see if this Crossbow of Affliction can be improved.~ + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind actually. Let's keep moving.~ EXIT 
END 

IF ~~ Craft.Think  
SAY ~Well, take your time. It's best you pick wisely, after all. I only have enough materials to improve a single bow or crossbow. Just let me know when you have decided.~
IF ~~ EXIT 
END 

IF ~~ MazzyBow 
SAY ~Even if Mazzy was okay with it, I wouldn't be comfortable working with this bow. From what I understand it was a gift from her god. Such a wondrous thing shouldn't be altered or modified in anyway.~
IF ~~ + Craft.PID2 
END 

IF ~~ RipperBow
SAY ~They don't make these bows anymore. I love the material. I think I can definitely make a slight improvement, if you are sure you want me to.~
++ ~Yes. Improve the Ripper.~ DO ~TakePartyItem("BOW09")SetGlobal("X3EmiBow","LOCALS",9)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ HeartseekerBow
SAY ~This bow is definitely aptly named. The wood of the bow makes all the difference in its pull and power. I think I could make it a bit easier to use, though you'll still need the same amount of strength to pull its string. Is this the bow you want me to improve?~
++ ~Yes. Improve the Heartseeker Bow.~ DO ~TakePartyItem("BOW10")SetGlobal("X3EmiBow","LOCALS",10)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ StrongArmBow
SAY ~Interesting! I can't even pull this back half-way. I can make the enhancement if you are sure, just make sure whoever you give this to has the power to handle the string.~
++ ~Yes. Improve Strong Arm.~ DO ~TakePartyItem("BOW11")SetGlobal("X3EmiBow","LOCALS",11)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ ElvenCourtBow 
SAY ~This bow has a beautiful history of being passed from legendary archer to the next generational legend. I think I can modify it without harming its beauty or art, if you are sure this is the bow you want me to improve?~
++ ~Yes. Improve the Elven Court Bow.~ DO ~TakePartyItem("BOW12")SetGlobal("X3EmiBow","LOCALS",12)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ ManaBow
SAY ~The Mana Bow. I can feel it's warding against magic. It would be a good choice, if you are certain this is the one you wish me to use my resources on to improve it.~
++ ~Yes. Improve the Mana Bow.~ DO ~TakePartyItem("BOW13")SetGlobal("X3EmiBow","LOCALS",13)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ TuiganBow 
SAY ~Ooh, this could work. I think I can alter it just slightly to not take away from its quick firing, but also make it a bit easier to get the desired shot. Is this the bow you wish me to improve?~
++ ~Yes. Improve the Tuigan Bow.~ DO ~TakePartyItem("BOW14")SetGlobal("X3EmiBow","LOCALS",14)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ TansheronBow 
SAY ~I love these bows. They knowledge of phantom arrows originate from the same elven archer orders that taught me my own skills, though this bow's enchantment came from a lich sadly. At least so it is said. I can alter it slightly without taking away its magic, if you like. Do you want me to do that?~
++ ~Yes. Improve Tansheron's Bow.~ DO ~TakePartyItem("BOW15")SetGlobal("X3EmiBow","LOCALS",15)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ DarkFireBow
SAY ~I don't think what I have is really compatible with this bow's build. Maybe Cespenar could help, though.~
IF ~~ + Craft.PID2 
END 

IF ~~ CespenarBow 
SAY ~I wouldn't dream of altering this further. Cespenar's work is far better than mine.~
IF ~~ + Craft.PID2 
END 

IF ~~ TaralashBow
SAY ~I don't even know how you would improve near-perfection. Maybe Cespenar could do it, but not I.~
IF ~~ + Craft.PID2 
END 

IF ~~ JanXBow
SAY ~I have no knowledge of how Jan made that thing. Even if I did, I wouldn't want to modify his things. I'm sure he could improve it far better than I could.~
IF ~~ + Craft.PID2 
END 

IF ~~ FiretoothXBow
SAY ~There is no way I could do that. This Crossbow's structure is beyond my capabilities to do anything with. Maybe Cespenar could try, if you asked.~
IF ~~ + Craft.PID2 
END 

IF ~~ TheGuideXBow
SAY ~Hrm, this crossbow is very sturdy, and fires very accurately. I think I can improve on that idea on its parts further, if you like?~
++ ~Yes. Improve The Guide.~ DO ~TakePartyItem("XBOW03")SetGlobal("X3EmiXBow","LOCALS",3)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ ArmyScytheXBow
SAY ~The speed of this crossbow earned it its name. I think I can improve on it without taking away any of that special velocity it has. Would you like me to try?~
++ ~Yes. Improve The Army Scythe.~ DO ~TakePartyItem("XBOW06")SetGlobal("X3EmiXBow","LOCALS",6)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ GiantHairXBow
SAY ~This crossbow can definitely penetrate, though it's heavy. I can definitely modify it, if you like?~
++ ~Yes. Improve the Giant Hair Crossbow.~ DO ~TakePartyItem("XBOW08")SetGlobal("X3EmiXBow","LOCALS",8)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ NecaradanXBow
SAY ~This is a high quality crossbow. Good choice. I can definitely improve on it if you like?~
++ ~Yes. Improve Necaradan's Crossbow.~ DO ~TakePartyItem("XBOW10")SetGlobal("X3EmiXBow","LOCALS",10)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~  AfflictionXBow
SAY ~I could, though I would still recommend caution if you must have one of us use it. The strength it draws can be dangerous despite the power the crossbow has in turn.~
++ ~That's fine. Improve the Crossbow of Affliction, please.~ DO ~TakePartyItem("XBOW13")SetGlobal("X3EmiXBow","LOCALS",13)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ BowSelected 
SAY ~Great. It won't take long. And I promise I won't break it. Hopefully.~
IF ~~ DO ~SetGlobal("X3miCraft","LOCALS",2)StartCutSceneMode()StartCutScene("X3ECut05")~ EXIT // Launch Cutscene 
END 

END 