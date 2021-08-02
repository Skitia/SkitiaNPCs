/*Non-Essential Interjections*/

//Chapter 6 & 7

I_C_T SUDEMIN 22 X3RebSUDEMIN-22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @0
END

I_C_T SUELF5 2 X3RebSUELF5-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1
END


I_C_T C6CORAN 1 X3RebC6CORAN-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN @2
END 

I_C_T C6REGIS1 2 X3RebC6REGIS1-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @3
END 

I_C_T C6DRIZZ1 37 X3RebC6DRIZZ1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @4
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @5
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~
== C6DRIZZ1 @6
END

I_C_T C6DRIZZ1 55 X3RebC6DRIZZ1-55
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @7
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @9
== C6DRIZZ1 @10
END 

I_C_T C6DRIZZ1 48 X3RebC6DRIZZ1-48
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @7
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @9
== C6DRIZZ1 @10
END

I_C_T C6DRIZZ1 41 X3RebC6DRIZZ1-41
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @7
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @9
== C6DRIZZ1 @10
END

I_C_T C6DRIZZ1 18 X3RebC6DRIZZ1-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @7
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @9
== C6DRIZZ1 @10
END

I_C_T C6DRIZZ1 9 X3RebC6DRIZZ1-9
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @7
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @9
== C6DRIZZ1 @10
END

I_C_T C6DRIZZ1 5 X3RebC6DRIZZ1-5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @7
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @9
== C6DRIZZ1 @10
END

I_C_T C6DRIZZ1 1 X3RebC6DRIZZ1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @11
END


I_C_T C6ELHAN2 60 X3VieC6ELHAN2-60 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
END

I_C_T C6ELHAN2 28 X3RebC6ELHAN2-28 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @13
END

//Underdark 

I_C_T UDSVIR08 13 X3RebUDSVIR08-13 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @14
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @15
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== UDSVIR08 @16
END 

I_C_T UDSVIR08 1 X3RebUDSVIR08-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")Global("SolaufeinJob","GLOBAL",7)~ THEN @17
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~
== UDSVIR08 @18
END 

I_C_T DADUER1 12 X3RebDADUER1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @19
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @20
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @21
END

I_C_T UDDEMON 8 X3RebUDDEMON-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @22
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
END

I_C_T UDPHAE01 136 X3RebUDPHAE01-136
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @23
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @24
END


I_C_T UDPHAE01 61 X3RebUDPHAE01-61
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Kal")~ THEN @25
END

INTERJECT UDPHAE01 61 X3RebUDPHAE01-61
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @26
EXTERN UDPHAE01 62

I_C_T UDSOLA01 139 X3RebUDSOLA01-139
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @27
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSOLA01 131 X3RebUDSOLA01-131
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @27
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 


I_C_T UDSOLA01 9 X3RebUDSOLA01-9
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @28
END 

I_C_T DADROW18 1 X3RebDADROW18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @29
END 

I_C_T UDDROW26 4 X3RebUDDROW26
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @30
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~
END 

I_C_T DASLAVE1 11 X3RebDASLAVE1-11
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @31
DO ~IncrementGlobal("X3RebApp","GLOBAL",-15)
DisplayStringNoNameDlg(Player1,@409)~
END 


I_C_T DASLAVE1 6 X3RebDASLAVE1-6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @32
DO ~IncrementGlobal("X3RebApp","GLOBAL",-15)
DisplayStringNoNameDlg(Player1,@409)~
END 

I_C_T DASLAVE1 7 X3RebDASLAVE1-7
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3EmiSlaveForce","GLOBAL",0)~ THEN @33
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~
END 

I_C_T DASLAVE1 8 X3RebDASLAVE1-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3EmiSlaveForce","GLOBAL",0)~ THEN @34
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T DADROW12 1 X3RebDADROW12
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @35
DO ~IncrementGlobal("X3RebApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@413)~
END 

I_C_T UDSIMYAZ 53 X3RebUDSIMYAZ-53
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @36
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSIMYAZ 12 X3RebUDSIMYAZ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @37
END 

I_C_T UDSILVER 27 X3RebUDSILVER-27
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @38
END 

I_C_T UDSILVER 45 X3VieUDSILVER-45
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @39
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSILVER 49 X3RebUDSILVER-49
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @40
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T UDSVIR05 8 X3RebUDSVIR05-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @41
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~
END 

I_C_T UDSVIR05 6 X3RebUDSVIR05-6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @42
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~
END 

I_C_T UDSVIR05 21 X3RebUDSVIR05-21
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @43
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @44
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== UDSVIR05 @45
END

I_C_T UDSVIR05 23 X3RebUDSVIR05-23
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @43
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @44
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== UDSVIR05 @45
END


I_C_T UDSVIR05 25 X3RebUDSVIR05-25
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @46
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END


I_C_T UDSVIR01 4 X3RebUDSVIR01-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @47
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @48
END

I_C_T UDSVIR01 8 X3RebUDSVIR01-8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @49
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~
END

I_C_T UDTRAP02 2 X3RebUDTRAP02-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @50
END

I_C_T UDVITH 18 X3RebUDVITH-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @51
END

I_C_T UDDUER01 25 X3RebUDDUER01-25
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @52
END

I_C_T JAHEIRAJ 478 X3RebJAHEIRAJ-478 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @53
END

I_C_T HAERDAJ 120 X3RebHAERDAJ120
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @54
END

I_C_T UDDUER03 5 X3RebUDDUER03-5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @55
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Nalia")~ THEN @56
END 

//Chapter 4

INTERJECT SAHBEH01 34 X3RebSAHBEH01-34
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @57
EXTERN SAHBEH01 35

I_C_T SAHPR1 1 X3RebSAHPR1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @58
END

I_C_T SAHPR1 5 X3RebSAHPR5 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @59
END

INTERJECT PPLDR01 0 X3RebPPLDR01-0
== PPLDR01 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)!Dead("X3RPHEL")~ THEN @60
DO ~Enemy()~
EXIT 

INTERJECT PPLDR01 0 X3RebPPLDR01-0
== PPLDR01 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)Dead("X3RPHEL")~ THEN @61
DO ~Enemy()~
EXIT 

I_C_T PPSAEM3 1 X3RebPPSAEM3-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @62
END

I_C_T PPSAEM2 23 X3RebPPSAEM2-23
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @63
END


I_C_T PPSAEM2 8 X3RebPPSAEM2-8
== X3RebJ IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("X3Reb")~ THEN @64
== PPSAEM2 @65
END 

I_C_T PPSAEM2 19 X3RebPPSAEM2-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @66
END

I_C_T IMOEN2 22 X3RebIMOEN22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebQuest","GLOBAL",15)~ THEN @67
END 

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Reb") Global("X3RebPartyBG1","GLOBAL",1)~ + @68 EXTERN X3RebJ X3RebPPIMOEN0
END

CHAIN X3RebJ X3RebPPIMOEN0
@69
EXTERN PPIMOEN 1

I_C_T PPNALJ 0 X3RebPPNALJ-0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @70
END 

I_C_T PPTIAX 1 X3RebPPTIAX-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN @71
END 

I_C_T PPTIAX 6 X3RebPPTIAX-6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN @72
END 

I_C_T PPDILI 6 X3RebPPDILI6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @73
END 


INTERJECT PPDESH 0 X3RebPDESH0
== PPDESH IF ~IsValidForPartyDialogue("X3Reb")!Dead("X3RPHEL")InMyArea("X3RPHEL")~ THEN @74
== PPDESH @75
END 
++ @76 EXTERN PPDESH X3RebPDESH1
+~Global("PirateOpen","GLOBAL",1)~+ @77 EXTERN PPDESH 1
+~Global("PirateOpen","GLOBAL",2)~+ @78 EXTERN PPDESH 2
+~Global("PirateOpen","GLOBAL",3)~+ @79 EXTERN PPDESH 4

CHAIN PPDESH X3RebPDESH1 
@80
EXIT 

INTERJECT PIRMUR09 17 X3RebPIRMUR09
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @81
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
EXTERN PIRMUR09 0

//Recorder gets quite a few things around Brynnlaw/the Festhall
I_C_T PIRMUR10 2 X3RebPIRMUR10-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @82
== PIRMUR10 @83
END 

INTERJECT PIRCOR05 2 X3RebPIRCOR05-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @84
== PIRCOR05 @85
== PIRCOR06 @86
== PIRCOR05 @87
== X3RebJ @88
EXTERN PIRCOR05 9

INTERJECT PIRCOR05 0 X3RebPIRCOR05-0
== PIRCOR05 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @89
== PIRCOR06 @86
== PIRCOR05 @90
== X3RebJ @88
EXTERN PIRCOR05 9

INTERJECT PIRMUR01 2 X3RebPIRMUR01-2
== PIRMUR01 IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @91
== X3RebJ @92
EXTERN PIRMUR01 4



CHAIN IF WEIGHT #-1
~See("X3Reb")
InParty("X3Reb")
GlobalGT("X3RebQuest","GLOBAL",9)~
THEN PIRPIR05 X3RebCon1
@93
DO ~Enemy()~
EXIT


CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
GlobalGT("X3RebQuest","GLOBAL",9)
Global("TalkedToGinia","GLOBAL",0)
Global("X3Reb","LOCALS",0)~
THEN PIRCOR02 X3RebCon1
@94
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ @95
== PIRCOR02 @96
== X3RebJ @97
== PIRCOR02 @98
EXTERN PIRCOR02 5

I_C_T PIRCOR02 4 X3EmiPIRCOR02-4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @99
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T PIRCOR02 27 X3RebPIRCOR02 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @100
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@419)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @101
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== PIRCOR02 @102
END 

I_C_T PIRCOR05 22 X3RebPIRCOR05-22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @103
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @104
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== PIRCOR05 @105
END 



I_C_T PPSAEM 53 X3RebPPSAEM53
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @106
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @107
END 

I_C_T PIRCOR04 51 X3RebPIRCOR04-51 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @108
END 

I_C_T PIRCOR03 51 X3RebPIRCOR03-51 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @108
END 

I_C_T PIRCOR04 15 X3RebPIRCOR04-15 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("pirpir05")~ THEN @109
END 

I_C_T PIRCOR03 32 X3RebPIRCOR03-32 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("pirpir05")~ THEN @109
END 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",0)~
THEN PIRCOR04 X3RebCon1
@110
DO ~SetGlobal("X3Reb","AR1600",1)~
== X3RebJ @111
== PIRCOR04 @112
== X3RebJ @113
== PIRCOR04 @114
EXIT

CHAIN IF WEIGHT #-1
~IsGabber("X3Reb")
IsValidForPartyDialogue("X3Reb")
Global("SanikPlot","GLOBAL",1)
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",1)~
THEN PIRCOR04 X3RebCon1
@115
DO ~SetGlobal("X3Reb","AR1600",2)~
== X3RebJ @116
== PIRCOR04 @117
== X3RebJ @118
== PIRCOR04 @119
EXTERN PIRCOR04 9

INTERJECT PIRCOR04 6 X3RebPIRCOR04 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @120
== PIRCOR04 @121
EXTERN PIRCOR04 9

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
!Global("SanikPlot","GLOBAL",1)
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",0)~
THEN PIRCOR03 X3RebCon1
@122
DO ~SetGlobal("X3Reb","AR1600",1)~
== X3RebJ @123
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @124
== PIRCOR03 @125
EXIT

CHAIN IF WEIGHT #-1
~IsGabber("X3Reb")
IsValidForPartyDialogue("X3Reb")
Global("SanikPlot","GLOBAL",1)
GlobalGT("X3RebQuest","GLOBAL",9)
Global("X3Reb","AR1600",1)~
THEN PIRCOR03 X3RebCon1
@126
DO ~SetGlobal("X3Reb","AR1600",2)~
== X3RebJ @116
== PIRCOR03 @127
== X3RebJ @118
== PIRCOR03 @128
EXTERN PIRCOR03 11

INTERJECT PIRCOR03 6 X3RebPIRCOR03 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebQuest","GLOBAL",9)~ THEN @120
== PIRCOR03 @128
EXTERN PIRCOR03 11

//Emily can't be in this version, as this is the Bodhi Join side.
I_C_T PPSAEM 14 X3RebPPSAEM14
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @106
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @129
END 


//Chapter 3 

I_C_T BODHI2 13 X3RebBODHI2-13
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @130
END

I_C_T BODHI2 14 X3KalBODHI2-14
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @131
END

I_C_T ARNMAN04 6 X3RebARNMAN06
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @132
== ARNMAN04 @133
== X3RebJ  @134
END 

I_C_T BODHI 104 X3RebBODHI104
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @135
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @136
== X3RebJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @137
END 

I_C_T ARAN 39 X3RebARAN39 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @135
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @138
== X3RebJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @137
END 

I_C_T ARAN 0 X3RebARAN0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @139
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @140
END 

I_C_T ARNBOY01 3 X3RebARNBOY01-3
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @141
END 

I_C_T BOOTER 3 X3RebBOOTER-3 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @142
END 

//Watcher's Keep 

I_C_T GORAPP1 14 X3RebGORAPP1-14
== X3RebJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @143
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORAPP1 16 X3RebGORAPP1-16
== X3RebJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @143
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORDEMO 24 X3RebGORDEMO 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @144
END 

I_C_T GORAPR 3 X3RebGORAPR 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @145
== GORAPR @146
END  

I_C_T GORSUC01 7 X3RebGORSUC01 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebRomanceActive","GLOBAL",2)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @147
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
END 


I_C_T GORMAD1 39 X3RebGormad1-39 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @148
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @149
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 @150
END 

I_C_T GORMAD1 40 X3RebGormad1-40 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @148
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @149
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 @150
END 

I_C_T GORMAD1 41 X3RebGormad1-41 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @151
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~
== GORMAD1 @152
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Reb",LastTalkedToBy)~ EXTERN X3RebJ Yackman
END

CHAIN X3RebJ Yackman  
@153
EXTERN GORMAD1 11

I_C_T GORPOL1 1 X3RebGORPOL1-1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @154
END 

I_C_T GORODR1 19 X3RebGORODR1-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @155
END 


//Underdark 

I_C_T UDSVIR03 27 X3RebUDSVIR03-27 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @156
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T UDSVIR03 7 X3RebUDSVIR03-7 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @157
END 

//Planar Sphere 

I_C_T LAVOK 59 X3RebLAVOK59
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @158
DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @159
END 

I_C_T OBSSOL03 4 X3KalOBSSOL03-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @160
END 

//Trademeet 

I_C_T TRSKIN02 16 X3RebTRSKIN02 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @161
END  

//Recorder will become an enemy if Emily is in the party, else a large amount of approval is lost instead.
I_C_T CEFALD04 3 X3RebCEFALD04
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @162
DO ~IncrementGlobal("X3RebApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@409)~
END

I_C_T DRUSH 9 X3RebDRUSH9
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ THEN @163
== DRUSH @164
END 

I_C_T BJAHEIR 19 X3RebBJAHEIR-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @165
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @166
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
== BJAHEIR @167
END 

I_C_T TRCUT07 4 X3RebTRCUT07-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @168
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T TRGENI01 7 X3RebTRGENI017
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @169
END 

I_C_T TRPLE01 2 X3RebTRPLE01-2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @170
END 

I_C_T TRTAVP05 4 X3RebTRTAVP05-4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @171
END 

I_C_T NEEBER 12 X3RebNEEBER12 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @172
END 

I_C_T TRGRD03 22 X3RebTRGRD03-22
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @173
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== TRGRD03 @174
END 

INTERJECT UHMER02 3 X3RebUHMER02-3 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @175
EXTERN UHMER02 4

I_C_T TRHMER01 23 X3RebTRHMER01-23 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @176
END 

I_C_T TRHMER01 38 X3RebTRHMER01-38
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @177
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

//Umar Hills 

I_C_T MAZZY 6 X3RebMAZZY6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @178
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T RNGWLF01 11 X3RebRNGWLF01-11 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @179
END  

I_C_T VALYGAR 12 X3RebVALYGAR12 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @180
END 

I_C_T VALYGAR 8 X3RebVALYGAR8 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @180
END 

I_C_T GEMFAR02 10 X3RebGEMFAR02-10
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @181
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T GEMFAR02 10 X3RebGEMFAR02-10
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @182
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
== GEMFAR02 @183
END 

I_C_T UHKID01 18 X3RebUHKID01-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @184
DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @185
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ 
END 

I_C_T UHMAY01 101 X3RebUHMAY01-101
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @186
END 

I_C_T UHMAY01 18 X3RebUHMAY01-18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @187
END 

//Windspear Hills 



I_C_T SAMIA 14 X3RebSAMIA14
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @188
END 

I_C_T FIRKRA02 32 X3RebFIRKRA02-32 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @189
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~ 
END  

I_C_T GARREN 44 X3RebGarren44 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @190
DO ~IncrementGlobal("X3RebApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @191
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~ 
== GARREN @192
END 

I_C_T GARREN 43 X3RebGarren43 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @190
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== GARREN @193
END 

I_C_T GARREN 49 X3RebGarren49A 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Dead("firkra02")~ THEN @194
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

I_C_T GARREN 49 X3RebGarren49B 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("firkra02")~ THEN @195
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 


I_C_T GARREN 51 X3RebGarren51 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Dead("firkra02")~ THEN @194
DO ~IncrementGlobal("X3RebApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

I_C_T GARREN 51 X3RebGarren51B 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Dead("firkra02")~ THEN @195
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 



I_C_T GARREN 35 X3RebGARREN35 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @196
END 

I_C_T GARREN 36 X3RebGARREN36 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @196
END 

I_C_T GARREN 37 X3RebGARREN37 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @196
END 
//De'Arnise
I_C_T DELCIA 9 X3RebDELCIA 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @197
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @198
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@506)~ 
== DELCIA @199
END 

I_C_T DALESON 15 X3RebDaleson15
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @200
DO ~IncrementGlobal("X3RebApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@406)~ 
== DALESON @201
END
//Althkata
I_C_T MESSEN 5 X3RebMESSEN5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @202
END

I_C_T PACE 4 X3RebPACE4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @203
END 

I_C_T RYLOCK 38 X3RebRYLOCK38 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @204
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @205
END 

I_C_T LYROS 19 X3RebLYROS19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN @206
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~ 
END

I_C_T LYROS 19 X3RebLYROS19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ THEN @207
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~ 
END

I_C_T LYROS 24 X3RebLYROS24
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @208
END

I_C_T EDWIN 8 X3RebEDWIN
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @209
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @210
END 

I_C_T EDWIN 1 X3VieEDWIN1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @211
== EDWIN @212
END

I_C_T SCYARRYL 31 X3RebSCYARRYL31
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @213
END

I_C_T SCSAIN 30 X3RebSCSAIN30 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @213
END

I_C_T ELGEA 6 X3RebElga6
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @214
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T ELGEA 7 X3RebElga7
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @215
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T MARIA 5 X3RebMARIA-5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @216
END 

I_C_T MARIA 11 X3RebMARIA-11
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @217
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T DORNJ 4 X3RebDORNJ
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @218
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T DORNJ 357 X3RebDORNJ
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @219
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~ 
END

I_C_T DORNJ 369 X3RebDORNJ
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @220
DO ~IncrementGlobal("X3RebApp","GLOBAL",-24)
DisplayStringNoNameDlg(Player1,@409)~ 
END  

I_C_T YUSUF 2 X3RebYUSUF2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @221
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN @222
END 

I_C_T OHHFAK 31 X3EmiOHHFAK-31
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @223
END 

I_C_T HEXXAT 0 X3RebHEXXAT-0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @224
END

I_C_T JANP 19 X3RebJANP-19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @225
END 

I_C_T JANGIT01 1 X3RebJANGIT01
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @226
== JANGIT01 @227
END  

I_C_T HIDDEN 13 X3RebHidden13
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")Global("SawIllithid","LOCALS",1)~ THEN @228
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @229
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @230
== HIDDEN @231
END 

I_C_T LISSA 4 X3RebLISSA4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @232
END 

I_C_T JANJ 13 X3RebJANJ13 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @233
END 

I_C_T WELLYN 10 X3RebWELLYN10
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Kal")~ THEN @234
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~ 
== WELLYN @235
END 

I_C_T WELLYN 8 X3RebWELLYN8
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @236
END 

I_C_T WELLYN 5 X3RebWELLYN5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @237
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T BODHI 72 X3RebBODHI72 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @238
END 

I_C_T WELLYN 16 X3RebWELLYN16
 == X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Kal")~ @239
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== WELLYN @240
END  

I_C_T BODHI 45 X3RebBODHI45 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @241
END 

I_C_T BODHI 56 X3RebBODHI56
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @242
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)~ 
END 

I_C_T BODHI 50 X3RebBODHI50
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @243
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @244
END 

I_C_T BODHI 18 X3RebBodhi18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @245
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
END 

I_C_T BODHI 6 X3RebBODHi6 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @246
END



I_C_T BODHI 1 X3RebBODHI1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @247
END

I_C_T BODHI 31 X3RebBODHI31 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @248
END

I_C_T TIRDIR 2 X3RebTIRDIR2 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @249
END 

I_C_T KAMIR 8 X3RebKamir8 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("X3RebTalk","LOCALS",10)~ THEN @250
END 

I_C_T ARENTHIS 4 X3RebARENTHIS 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @251
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
== X3HelJ IF ~IsValidForpartyDialogue("X3Hel")~ THEN @252
END 

I_C_T KAMIR 23 X3RebKAMIR 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @253
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~ 
END 

I_C_T SCSARLES 32 X3RebSCSARLES32
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @254
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @255
END 

I_C_T MOURNER5 4 X3RebMOURNER5 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @256
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T VICONIJ 79 X3RebViconiJ79
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @257
END 

I_C_T TANNER 19 X3HelTanner19
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @258
== TANNER @259
END 

I_C_T HABREGA 26 X3RebHabrega26
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @260
DO ~IncrementGlobal("X3RebApp","GLOBAL",8)
DisplayStringNoNameDlg(Player1,@419)~ 
END

I_C_T RAELIS 79 X3RebRaelis79 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @261
DO ~IncrementGlobal("X3RebApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T RAELIS 76 X3RebRaelis76 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @261
DO ~IncrementGlobal("X3RebApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@409)~ 
END 

I_C_T RAELIS 33 X3RebRaelis33 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @262
END 

I_C_T RAELIS 53 X3RebRaelis53 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @263
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~ 
END 

I_C_T BDBART01 10 X3RebBDBART0110 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @264
END 

I_C_T LOUT 22 X3RebLOUT22 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN @265
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~ 
END

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN BPROST2 X3Reb
@266
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ @267
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN BERTRAND X3Reb
@268
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ @269
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN CIVIL01 X3Reb
@270
DO ~SetGlobal("X3Rebl","LOCALS",1)~
== X3RebJ @271
== CIVIL01 @272
== X3RebJ @273
EXIT 

I_C_T NEB 5 X3RebNEB5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @274
== NEB @275
END 

I_C_T INSPECT 13 X3RebINSPECT13
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @276
END 

I_C_T TOLGER 84 X3RebTolger84 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @277
DO ~IncrementGlobal("X3RebApp","GLOBAL",-10)
DisplayStringNoNameDlg(Player1,@409)~
END 

I_C_T TOLGER 18 X3RebTOLGER18
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @278
END 

I_C_T BYLANNA 20 X3RebBYLANNA20
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @279
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @280
END 

I_C_T TRAX 13 X3RebTrax13 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @281
END 

I_C_T TRAX 10 X3RebTrax10 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @282
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)~
END 

I_C_T VICONI 4 X3RebViconi4
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @283
DO ~IncrementGlobal("X3RebApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@403)~
== VICONI @284
END 

I_C_T DELON 5 X3RebDELON5
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @285
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @286
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @287
END  


I_C_T DELON 15 X3RebDELON15 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @288
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @289
END 

I_C_T DELON 16 X3VieDELON16 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @288
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @289
END 

I_C_T RIFTM01 9 X3RebRIFTM019
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @290
END 

I_C_T JANJ 132 X3RebJANJ132 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @291
END 

I_C_T JANJ 133 X3RebJANJ133 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @292
END

I_C_T RIFTG03 7 X3RebRIFTG03 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @293
END  

I_C_T RIFTC02 4 X3RebRIFTC024
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @294
END 

I_C_T HLSHADE 0 X3RebHLSHADE0 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @295
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @296
END 

I_C_T GAAL 4 X3RebGAAL4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @297
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @298
END 

I_C_T EDWINJ 11 X3RebEDWINJ-11
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @299
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @300
END 

I_C_T CERNDJ 56 X3RebCERNDJ-56
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @301
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== CERNDJ @302
END 

CHAIN IF WEIGHT #-1 
~!NumberOfTimesTalkedTo(0)See("X3Reb")  // X3Reb
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Reb")  // X3Reb
RandomNum(2,1)
Global("Prophet4X3Reb","LOCALS",0)~ THEN PROPHET4 Recorder 
@303
DO ~SetGlobal("Prophet4X3Reb","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3RebJ @304
EXIT 

I_C_T Garrick 0 GarrickX3Reb0 
== GARRICK IF ~See("X3Reb") IsValidForPartyDialogue("X3Reb")~ THEN @305
== X3RebJ @306
== Garrick @307
END

I_C_T TCYRANDO 0 TCYRANDOX3Reb0 
== X3RebJ IF ~See("X3Reb") IsValidForPartyDialogue("X3Reb")~ THEN @308
== TCYRANDO @309
END

I_C_T SCTELWYN 30 X3RebSCTELWYN30 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @213
END

I_C_T MAEVAR 15 X3EmiMAEVAR15 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @310
END

I_C_T MAEGUY01 5 X3EmiMAEGUY01-5 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @311
DO ~IncrementGlobal("X3RebApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@413)~
== MAEGUY01 @312
END

I_C_T DLOST 3 X3EmiDLOST3-3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @313
DO ~IncrementGlobal("X3RebApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@413)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @314
== DLOST @315
END

I_C_T HLSKULL 10 X3RebHLSKULL10 
== X3RebJ IF ~ISValidForPartyDialogue("X3Reb")~ THEN @316
END 

I_C_T DCLERIC 4 X3EmiDCLERIC4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @317
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@103)~
== DCLERIC @318
END

I_C_T BMTHIEF 3 X3VieBMTHIEF 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @319
DO ~IncrementGlobal("X3RebApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@413)~
END 

I_C_T RENAL 47 X3VieRenal26 
== X3RebJ IF ~!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Reb")~ THEN 
@320
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~
END 

I_C_T RENAL 26 X3VieRenal26 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @321
DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@403)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @322
END 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN OGHMONK1 X3Reb
@323
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ @324
== OGHMONK1 @325
== X3RebJ @326
== OGHMONK1 @327
EXIT 

I_C_T HERVO 12 X3RebHERVO12 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @328
END 

I_C_T DOGHMA 0 X3RebDOGHMA0 
== DOGHMA IF ~IsValidForPartyDialogue("X3Reb")~ THEN @329
== X3RebJ @330
END  

I_C_T GIRL2 5 X3RebGIRL25 
== X3RebJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN @331
DO ~IncrementGlobal("X3Rebpp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @332
== GIRL2 @235
END 

I_C_T AEEXTORT 3 X3RebAEEXTORT
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @333
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)~
END

I_C_T SEWERM1 21 X3RebSewerM1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @334
END 

I_C_T SEWSW 4 X3RebSEWSW4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @335
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @336
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Vie")~ THEN @337
END 

I_C_T GIRL2 4 X3RebGIRL24 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @338
DO ~IncrementGlobal("X3Rebpp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@413)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @339
== GIRL2 @340
END 

I_C_T HAEGAN 1 X3RebHAEGAN
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @341
== HAEGAN @342
END 

I_C_T ANNO1 2 X3RebAnno1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @343
END 

I_C_T ANOMENJ 164 X3RebAnomenJ164 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @344
END

I_C_T HENDAK 19 X3RebHendak19 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @345
END 

I_C_T HENDAK 30 X3EmiHendak30 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @346
DO ~IncrementGlobal("X3Rebpp","GLOBAL",10)
DisplayStringNoNameDlg(Player1,@419)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @347
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END 

I_C_T HENDAK 7 X3RebHendak7 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @348
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @349
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @350
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END  

I_C_T HENDAK 4 X3RebHENDAK4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @351
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @352
END 

I_C_T COPGREET 1 X3RebCOPGREET 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @353
END 

I_C_T RUFPAL2 5 X3RebRUFPAL2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @354
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @355
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@403)~
END  

I_C_T KORGANJ 49 X3RebKorganJ49 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @356
== KORGANJ @357
== X3RebJ @358
END

I_C_T LEHTIN 26 X3RebLEHTIN26 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @359
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~
END 

INTERJECT NALIA 109 X3EmiNalia109 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @360
DO ~IncrementGlobal("X3RebApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@403)~
EXTERN NALIA 50

I_C_T SCDUR 27 X3RebSCDUR
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @361
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T SCDUR 21 X3RebSCDUR
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @362
END 

I_C_T HIST1 2 X3RebHIST1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @363
END 

I_C_T GAELAN 66 X3VieGaelan74 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @364
END 

I_C_T KALAH2 6 X3RebKALAH2 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @365
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @366
END 

I_C_T BOY1 1 X3RebBoy1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @367
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T BOY1 4 X3RebBoy4 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @368
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== BOY1 @369
END 

I_C_T AERIE 49 X3RebAerie1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @370
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~
END 

I_C_T GERETH 0 X3RebGERETH0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @371
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @372
== GERETH @373
END 

/*Story/Essential Interjections*/ 
//Celvan 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Reb")
RandomNum(2,1)
Global("X3Reb","LOCALS",0)~ THEN CELVAN X3Reb
@374
DO ~SetGlobal("X3Reb","LOCALS",1)~
== X3RebJ @375
EXTERN CELVAN 1

//Gypsy

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Reb",LastTalkedToBy)~ EXTERN TRGYP02 X3Rebg1
END

CHAIN TRGYP02 X3Rebg1
@376
== X3RebJ @377
EXIT

// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Reb",LastTalkedToBy)~ THEN SALVANAS X3RebSalvanas
@378
== X3RebJ @379
== SALVANAS @380
== X3RebJ @381
== SALVANAS @382
== X3RebJ @383
== SALVANAS @384
== X3RebJ @385
== SALVANAS @386
EXIT

// Madam Nin

EXTEND_BOTTOM MADAM 0
IF ~Name("X3Reb",LastTalkedToBy)~ EXTERN X3RebJ X3RebMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Reb",LastTalkedToBy)~ EXTERN X3RebJ X3RebMadam
END


CHAIN X3RebJ X3RebMadam 
@387
EXIT 

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("X3Reb")
See("X3Reb")
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("X3RebRomanceActive","GLOBAL",1)
Global("X3RebRomanceActive","GLOBAL",2)~ THEN MADAM X3RebMadam
@388
== X3RebJ @389
EXTERN MADAM 17

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3RebYOSHJ113
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @390
END

// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb") Range("X3Reb",15)~ THEN
@391
END
++ @392 EXTERN X3RebJ spellhold.1
++ @393 EXTERN X3RebJ spellhold.1
++ @394 EXTERN X3RebJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3RebJ spellhold.1
@395
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @396 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @397
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @398
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @399
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3RebFirstSlayerChange1 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")See("X3Reb")~ THEN @400
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3RebSecondSlayerChange0
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb") OR(2) Global("X3RebRomanceActive","GLOBAL",1) Global("X3RebRomanceActive","GLOBAL",2)~ THEN @401
END
++ @402 EXTERN X3RebJ X3RebSecondSlayerChange1
++ @403 EXTERN X3RebJ X3RebSecondSlayerChange1
++ @404 EXTERN X3RebJ X3RebSecondSlayerChange1

CHAIN X3RebJ X3RebSecondSlayerChange1
@405
DO ~SetGlobal("X3RebSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3RebSlayerSurvived1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb") OR(2) Global("X3RebRomanceActive","GLOBAL",1) Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSecondSlayerChange","GLOBAL",1)~ THEN @406
= @407
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Reb") Global("X3RebSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END


// Phaere

CHAIN IF ~Global("X3RebCheckMad1","GLOBAL",1)Global("X3RebMad1","LOCALS",0)~ THEN X3RebJ Phaere_Warning
@408 
DO ~SetGlobal("X3RebMad1","LOCALS",1)~
END 
++ @409 + PW.1 
++ @410 + PW.2 
++ @411 + PW.3

CHAIN X3RebJ PW.1 
@412
END 
++ @410 + PW.2 
++ @411 + PW.3

CHAIN X3RebJ PW.2 
@413
EXIT 

CHAIN X3RebJ PW.3 
@414
DO ~IncrementGlobal("X3RebApp","GLOBAL",-10)DisplayStringNoNameDlg(Player1,@409)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3RebRomanceActive","GLOBAL",1)
Global("X3RebRomanceActive","GLOBAL",2)~ + @415 EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3RebCheckMad2","GLOBAL",1)Global("X3RebMad2","LOCALS",0)~ THEN X3RebJ X3RebPhaere
@416
DO ~SetGlobal("X3RebMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3RebJ X3RebPhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3RebJ X3RebPhaere2

CHAIN X3RebJ X3RebPhaere1
@417
= @418
DO ~IncrementGlobal("X3RebApp","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@409)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3RebJ X3RebPhaere2
@419
= @420
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@416)~ 
EXIT


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebTreeOfLife","GLOBAL",0) !Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
@421
DO ~SetGlobal("X3RebTreeOfLife","GLOBAL",1)~
END
++ @422 EXTERN X3RebJ pl2.2
++ @423 EXTERN X3RebJ pl2.1
++ @424 EXTERN X3RebJ pl2.1

CHAIN X3RebJ pl2.2 
@425
EXTERN X3RebJ pl2.1

CHAIN X3RebJ pl2.1
@426
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebTreeOfLife","GLOBAL",0) Global("X3RebRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
@427
DO ~SetGlobal("X3RebTreeOfLife","GLOBAL",1)~
END
++ @428 EXTERN X3RebJ pl3.1

CHAIN X3RebJ pl3.1
@429
= @430
= @431
= @432
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3RebIrenicusIsDead1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @433
END

// Hell

I_C_T PLAYER1 25 X3RebEnteringHell1
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @434
END

// Irenicus in hell

I_C_T HELLJON 7 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @435
END

I_C_T HELLJON 8 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @435
END

I_C_T HELLJON 9 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @435
END

I_C_T HELLJON 10 X3RebThirdBattleWithIrenicus
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @435
END




// Friendship Talk 1 

CHAIN IF ~Global("X3RebTalk","LOCALS",2)~ THEN X3RebJ First_Talk // Make sure this variable is a locals.
@436
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ @437 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T1.1 
++ @438 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T1.1
++ @439 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~  + T1.1 

CHAIN X3RebJ T1.1
@440
== X3RebJ @441
END 
++ @442 + T1.2 
++ @443 + T1.3 
++ @444 + T1.X

CHAIN X3RebJ T1.2 
@445
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ @446 + T1.6 
+~!Global("X3RebPartyBG1","GLOBAL",1)~+ @447 + T1.6 
++ @444 + T1.X
++ @448 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T1.5

CHAIN X3RebJ T1.3 
@449
END 
++ @450 + T1.2
++ @451 + T1.2
++ @452 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T1.X 

CHAIN X3RebJ T1.X 
@453
EXIT 

CHAIN X3RebJ T1.6 
@454
= @455
EXIT 

CHAIN X3RebJ T1.5 
@456
EXIT 



CHAIN IF ~Global("X3RebTalk","LOCALS",4)~ THEN X3RebJ Second_Talk // Make sure this variable is a locals. This also triggers ambush 1.
@457
DO ~SetGlobal("X3RebQuest","GLOBAL",1)IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ @458 + T2.1
++ @459 DO ~IncrementGlobal("X3RebApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@413)SetGlobal("X3RebInterest","LOCALS",1)~ + T2.10
++ @460 + T2.2 
++ @461 + T2.3 
++ @462 DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@403)~ + T2.5

CHAIN X3RebJ T2.1 
@463
END 
++ @464 + T2.6
++ @465 + T2.7
++ @466 + T2.8

CHAIN X3RebJ T2.2 
@467
END 
++ @464 + T2.6
++ @465 + T2.7
++ @466 + T2.8

CHAIN X3RebJ T2.3 
@468
EXTERN X3RebJ T2.4 

CHAIN X3RebJ T2.4 
@469
END 
++ @470 + T2.7
++ @471 + T2.7
++ @472 + T2.8

CHAIN X3RebJ T2.5 
@473
EXIT 

CHAIN X3RebJ T2.6 
@474
EXTERN X3RebJ T2.9

CHAIN X3RebJ T2.7 
@475
EXTERN X3RebJ T2.9

CHAIN X3RebJ T2.8 
@476
EXIT 

CHAIN X3RebJ T2.9 
@477
EXIT 

CHAIN X3RebJ T2.10 
@478
END 
++ @470 + T2.7
++ @471 + T2.7
++ @472 + T2.8



// This talk happens between the two ambushes. 

CHAIN IF ~Global("X3RebTalk","LOCALS",6)~ THEN X3RebJ Talk3
@479
DO ~IncrementGlobal("X3RebQuest","GLOBAL",1)IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ @480 + T3.2 
++ @481 + T3.2 
++ @482 DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@403)~ + T3.X 

CHAIN X3RebJ T3.X 
@483
EXIT 

CHAIN X3RebJ T3.2 
@484
END 
++ @485 + T3.3 
++ @486 + T3.4 
++ @487 + T3.5 
++ @488 DO ~IncrementGlobal("X3RebApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@413)SetGlobal("X3RebInterest","LOCALS",1)~ + T3.6

CHAIN X3RebJ T3.3 
@489
EXIT 

CHAIN X3RebJ T3.4 
@490
EXIT 

CHAIN X3RebJ T3.5 
@491
EXIT 

CHAIN X3RebJ T3.6 
@492
EXIT 

// After second encounter, doesn't need the bounty notice in inventory. 
CHAIN IF ~Global("X3RebQuest","GLOBAL",7)~ THEN X3RebJ quest_start
@493 
END 
++ @494 + really 
+~PartyHasItem("X3RBOUNT")~+ @495 + look_now 
++ @496 + not_know

CHAIN X3RebJ look_now 
@497
EXTERN X3RebJ I_was

CHAIN X3RebJ really 
@498
END 
++ @499 + not_know 
++ @500 + not_know
++ @501 + no_one 

CHAIN X3RebJ not_know
@502
EXTERN X3RebJ I_was 

CHAIN X3RebJ I_was 
@503
== X3RebJ @504
== X3RebJ @505
END 
++ @506 + clear 
++ @507 + clear 
++ @508 + sorry 

CHAIN X3RebJ clear 
@509
EXTERN X3RebJ only_way

CHAIN X3RebJ sorry 
@510
EXTERN X3RebJ only_way

CHAIN X3RebJ no_one 
@511
EXTERN X3RebJ I_was

CHAIN X3RebJ only_way 
@512
DO ~IncrementGlobal("X3RebQuest","GLOBAL",1)AddJournalEntry(@5,QUEST)~ 
EXIT 

// This talk happens after talking to the Remover (Or Killing him)

CHAIN IF ~Global("X3RebTalk","LOCALS",8)~ THEN X3RebJ Talk4
@513
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~ // Brynnlaw content requires this talk to be done.
END 
++ @514 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T4.1 
++ @515 DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + T4.2
++ @516 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T4.1 
++ @517 DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@406)~ + T4.X 

CHAIN X3RebJ T4.X 
@518
EXIT 

CHAIN X3RebJ T4.2 
@519
EXTERN X3RebJ T4.1

CHAIN X3RebJ T4.1 
@520
== X3RebJ @521
== X3RebJ @522
== X3RebJ @523
END 
++ @524 + T4.25 
++ @525 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T4.3 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ @526 + T4.4 
++ @527 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.5
++ @528 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~  + T4.XX // This might skip the ENTIRE story. Hit at your own risk.

CHAIN X3RebJ T4.XX
@529
EXIT 

CHAIN X3RebJ T4.25 
@530
EXTERN X3RebJ T4.3 

CHAIN X3RebJ T4.4 
@531
EXTERN X3RebJ T4.3 

CHAIN X3RebJ T4.5 
@532
EXTERN X3RebJ T4.3 

CHAIN X3RebJ T4.3 
@533
== x3RebJ @534
== X3RebJ @535
END 
++ @536 + T4.6
++ @537 + T4.7
++ @538 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.8

CHAIN X3RebJ T4.6 
@539
== X3RebJ @540
EXTERN X3RebJ T4.9.5 

CHAIN X3RebJ T4.9.5
@541
END 
++ @542 + T4.9 
++ @543 + T4.9
++ @544 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.9 

CHAIN X3RebJ T4.7
@545
== X3RebJ @546
EXTERN X3RebJ T4.9.5

CHAIN X3RebJ T4.8 
@547
EXTERN X3RebJ T4.6

CHAIN X3RebJ T4.9 
@548
END 
++ @549 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T4.10 
++ @550 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.11
++ @551 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T4.10 
++ @552 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T4.11

CHAIN X3RebJ T4.10 
@553
EXIT 

CHAIN X3RebJ T4.11 
@554
EXIT 

//Friendship Talk5
CHAIN IF ~Global("X3RebTalk","LOCALS",10)~ THEN X3RebJ Talk5
@555
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ @556 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T5.1 
++ @557 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T5.2
++ @558 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T5.2
++ @559 DO ~SetGlobal("X3RebAppChange","GLOBAL",4)~ + T5.X 

CHAIN X3RebJ T5.X
@560
EXIT 

CHAIN X3RebJ T5.1 
@561
EXTERN X3RebJ T5.2 

CHAIN X3RebJ T5.2 
@562
== X3RebJ @563
== X3RebJ @564
== X3RebJ @565
END 
++ @566 + T5.3 
++ @567 + T5.4 
++ @568 + T5.4 

CHAIN X3RebJ T5.3 
@569
EXTERN X3RebJ T5.4 

CHAIN X3RebJ T5.4 
@570
== X3RebJ @571
== X3RebJ @572
== X3RebJ @573
END 
++ @574 + T5.5
++ @575 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T5.6
++ @576 + T5.7

CHAIN X3RebJ T5.5 
@577
EXTERN X3RebJ T5.8

CHAIN X3RebJ T5.6 
@578
EXTERN X3RebJ T5.8 

CHAIN X3RebJ T5.7 
@579
EXTERN X3RebJ T5.8 

CHAIN X3RebJ T5.8 
@580
== X3RebJ @581
== X3RebJ @582
END 
++ @583 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T5.9
++ @584 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T5.9 
++ @585 + T5.11 
++ @586 + T5.10

CHAIN X3RebJ T5.9 
@587
EXTERN X3RebJ T5.11 

CHAIN X3RebJ T5.10 
@588
EXIT 

CHAIN X3RebJ T5.11 
@589
== X3RebJ @590
== X3RebJ @591
== X3RebJ @592
END 
++ @593 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T5.12 
++ @594 + T5.14 
++ @595 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T5.13

CHAIN X3RebJ T5.12 
@596
EXIT  

CHAIN X3RebJ T5.14
@597
EXIT 

CHAIN X3RebJ T5.13 
@598
EXIT

// Talk 6
CHAIN IF ~Global("X3RebTalk","LOCALS",12)~ THEN X3RebJ FriendshipTalk6 
@599
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)~
END 
++ @600 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T6.1 
++ @601 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + T6.2
++ @602 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + T6.1

CHAIN X3RebJ T6.1 
@603
= @604
END 
++ @605 + T6.3 
++ @606 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T6.4
++ @607 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T6.5

CHAIN X3RebJ T6.2 
@608
EXTERN X3RebJ T6.1 

CHAIN X3RebJ T6.3 
@609
= @610
= @611
END 
++ @612 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T6.6
++ @613 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T6.8
++ @614 + T6.9

CHAIN X3RebJ T6.4 
@615
= @616
END
++ @617 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T6.6
++ @618 + T6.8
++ @614 + T6.9

CHAIN X3RebJ T6.5
@619
= @620
END 
++ @621 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)SetGlobal("X3RebInterest","LOCALS",1)~ + T6.6
++ @622 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + T6.7
++ @623 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + T6.8

CHAIN X3RebJ T6.6 
@624
EXTERN X3RebJ T6.9

CHAIN X3RebJ T6.7
@625
EXIT 

CHAIN X3RebJ T6.8
@626
EXIT 

CHAIN X3RebJ T6.9
@627
EXIT 


// Talk 6 is Recorder's return to Brynnlaw. The Romance track has its own version. (Already Written)
// When arriving to Brynnlaw 
CHAIN IF ~Global("X3RebBrynnTalk","LOCALS",1)~ THEN X3RebJ Brynnlaw 
@628
DO ~IncrementGlobal("X3RebBrynnTalk","LOCALS",1)~
END 
++ @629 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + Brynn.1 
++ @630 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + Brynn.2  
++ @631 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + Brynn.2 
++ @632 DO ~SetGlobal("X3RebAppChange","GLOBAL",4)~ + Brynn.7

CHAIN X3RebJ Brynn.1
@633
EXTERN X3RebJ Brynn.4

CHAIN X3RebJ Brynn.2 
@634
EXTERN X3RebJ Brynn.4

CHAIN X3RebJ Brynn.4 
@635
END 
++ @636 + Brynn.5
++ @637 + Brynn.6
++ @638 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + Brynn.3

CHAIN X3RebJ Brynn.7
@639
EXTERN X3RebJ Brynn.2


CHAIN X3RebJ Brynn.5 
@640
DO ~SetGlobal("X3RebQuest","GLOBAL",10)AddJournalEntry(@9,QUEST)~
EXIT 

CHAIN X3RebJ Brynn.6 
@641
DO ~SetGlobal("X3RebQuest","GLOBAL",10)AddJournalEntry(@9,QUEST)~
EXIT

CHAIN X3RebJ Brynn.3
@642
DO ~SetGlobal("X3RebQuest","GLOBAL",10)AddJournalEntry(@9,QUEST)~
EXIT  
// Talk 7 is the quest outcome. It has two versions, a FAIL track and a Success track. Copy Grab this from X3RebJ.
CHAIN IF ~Global("X3RebBrynnTalk","LOCALS",3)Global("X3RFAIL","GLOBAL",2)~ THEN X3RebJ Quest_Fail
@643
DO ~IncrementGlobal("X3RebBrynnTalk","LOCALS",1)~
END 
+~Global("X3RMSpell","GLOBAL",4)OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ @644 + Sorry3
+~!Global("X3RMSpell","GLOBAL",4)OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ @644 + Sorry4
+~Global("X3RMSpell","GLOBAL",4)~+ @645 + Sorry1
+~!Global("X3RMSpell","GLOBAL",4)~+ @645 + Sorry2
+~Global("X3RMSpell","GLOBAL",4)~+ @646 + Tried
+~!Global("X3RMSpell","GLOBAL",4)~+ @646 + Sorry2
+~Global("X3RMSpell","GLOBAL",4)~+ @647 + moving
+~!Global("X3RMSpell","GLOBAL",4)~+ @647 + bad_quest_ending1
+~Global("X3RMSpell","GLOBAL",4)~+ @648 + give_up1 
+~!Global("X3RMSpell","GLOBAL",4)~+ @648 + give_up2

CHAIN X3RebJ Sorry1 
@649
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ Sorry2 
@650
EXTERN X3RebJ bad_quest_ending1 

CHAIN X3RebJ Sorry3 
@651
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ Sorry4 
@652
EXTERN X3RebJ bad_quest_ending1 


CHAIN X3RebJ Tried 
@653
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ moving 
@654
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ give_up1
@655
EXTERN X3RebJ bad_quest_ending2

CHAIN X3RebJ give_up2 
@656
EXTERN X3RebJ bad_quest_ending1 
 
CHAIN X3RebJ bad_quest_ending2 
@657
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~ 
EXIT 


CHAIN X3RebJ bad_quest_ending1 
@658
EXIT // No points are lost for this one.
 
 // The success branch happens AFTER the PC has lost their soul. (Use a TRANS if necessary to add a global to check this.)
CHAIN IF ~Global("X3RebBrynnTalk","LOCALS",3)!Global("X3RFAIL","GLOBAL",2)~ THEN X3RebJ Quest_Pass
@659
DO ~IncrementGlobal("X3RebBrynnTalk","LOCALS",1)~
END 
++ @660 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + QP.1
++ @661 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + QP.2 
++ @662 DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + QP.X

CHAIN X3RebJ QP.X 
@663
EXIT 

CHAIN X3RebJ QP.2
@664
== X3RebJ @665
END 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ @666 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @666 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3R 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ @667 + QP.4 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @667 + QP.4R
++ @668 EXIT 


CHAIN X3RebJ QP.1
@669
== X3RebJ @670
END 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ @666 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @666 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + QP.3R 
+~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~+ @667 + QP.4 
+~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @667 + QP.4R++ @668 EXIT 

CHAIN X3RebJ QP.3
@671
EXIT 

CHAIN X3RebJ QP.3R
@672
EXIT 

CHAIN X3RebJ QP.4
@673
EXIT 

CHAIN X3RebJ QP.4R
@674
EXIT 

//Final Talk. This is the only actual friendship only talk romances don't get.
CHAIN IF ~Global("X3RebTalk","LOCALS",14)~ THEN X3RebJ FinalFriendshipTalk
@675
DO ~IncrementGlobal("X3RebTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
+~!Global("X3RFAIL","GLOBAL",2)~+ @676 + FT.1
+~!Global("X3RFAIL","GLOBAL",2)~+ @677 + FT.1 
+~Global("X3RFAIL","GLOBAL",2)~+ @676 + FT.2
+~Global("X3RFAIL","GLOBAL",2)~+ @677 + FT.2
++ @678 + FT.X 

CHAIN X3RebJ FT.X 
@679
EXIT 

CHAIN X3RebJ FT.1
@680
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",45)~ EXTERN X3RebJ FT.3 
IF ~GlobalGT("X3RebApp","GLOBAL",45)~ EXTERN X3RebJ FT.4 

CHAIN X3RebJ FT.3 
@681
END 
++ @682 + FT.5
++ @683  + FT.6
++ @684 + FT.7

CHAIN X3RebJ FT.4 
@685
END 
++ @682  + FT.5
++ @683 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.6
++ @684 + FT.7

CHAIN X3RebJ FT.5
@686
EXIT 

CHAIN X3RebJ FT.6
@687
EXIT 

CHAIN X3RebJ FT.7
@688
EXIT 

CHAIN X3RebJ FT.2 
@689
END 
IF ~Global("X3RMSpell","GLOBAL",4)~ + FT.QuestBad
IF ~!Global("X3RMSpell","GLOBAL",4)!GlobalGT("X3RebApp","GLOBAL",45)~ + FT.QuestGoodLowApp
IF ~!Global("X3RMSpell","GLOBAL",4)GlobalGT("X3RebApp","GLOBAL",44)~ + FT.QuestGoodHighApp

CHAIN X3RebJ FT.QuestBad 
@690
END 
++ @691 + FT.QB1
++ @692 + FT.QB2
++ @693 + FT.QB3

CHAIN X3RebJ FT.QB1
@694
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBWarning 
IF ~GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBPetty

CHAIN X3RebJ FT.QB2 
@695
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBWarning 
IF ~GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBPetty

CHAIN X3RebJ FT.QB3 
@696
END 
IF ~!GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBWarning 
IF ~GlobalGT("X3RebApp","GLOBAL",0)~ EXTERN X3RebJ FT.QBPetty

CHAIN X3RebJ FT.QBPetty 
@697
END 
++ @698 + FT.QBW1
++ @699 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-3)~ + FT.QBW2
++ @700 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~  + FT.QBW3 

CHAIN X3RebJ FT.QBWarning 
@701
END 
++ @698 + FT.QBW1
++ @699 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-3)~ + FT.QBW2
++ @702 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.QBW3 

CHAIN X3RebJ FT.QBW1
@703
EXIT 

CHAIN X3RebJ FT.QBW2
@704
EXIT 

CHAIN X3RebJ FT.QBW3
@705
EXIT 

CHAIN X3RebJ FT.QuestGoodLowApp
@706
END 
++ @707 + FT.QGLA1
++ @708 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FT.QGLA2
++ @709 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.QGLA3

CHAIN X3RebJ FT.QuestGoodHighApp
@710
END 
++ @711 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FT.QGHA1
++ @712 + FT.QGHA1
++ @713 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FT.QGHA2


CHAIN X3RebJ FT.QGLA1
@714
EXTERN X3RebJ FT.QGLA4

CHAIN X3RebJ FT.QGLA2
@715
EXTERN X3RebJ FT.QGLA4

CHAIN X3RebJ FT.QGLA3
@716
EXTERN X3RebJ FT.QGLA4

CHAIN X3RebJ FT.QGLA4 
@717
EXIT 

CHAIN X3RebJ FT.QGHA1 
@718
EXTERN X3RebJ FT.QGHA3 

CHAIN X3RebJ FT.QGHA2
@719
EXTERN X3RebJ FT.QGHA3 


CHAIN X3RebJ FT.QGHA3 
@720
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
@721
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @722 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 1.1 
++ @723 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 1.1 
++ @724 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~  + 1.2
++ @725 + 1.X 


CHAIN X3RebJ 1.X
@726
EXIT 

CHAIN X3RebJ 1.1 
@727
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @728
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @729
END 
++ @730 + 1.4 
++ @731 + 1.2 
++ @732 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 1.5
++ @733 + 1.6

CHAIN X3RebJ 1.2 
@734
END 
++ @735 EXIT 
++ @736 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 1.3 
++ @737 + 1.4 

CHAIN X3RebJ 1.3 
@738 
EXIT 

CHAIN X3RebJ 1.4 
@739
== X3RebJ @740
END 
++ @741 + 1.7 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ @742 + 1.8
++ @743 + 1.9
++ @744 + 1.10 

CHAIN X3RebJ 1.5 
@745
EXIT 

CHAIN X3RebJ 1.6 
@746
END 
++ @730 + 1.4
++ @731 + 1.2 
++ @732 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 1.5

CHAIN X3RebJ 1.7
@747
END 
++ @748  + 1.13
++ @749 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 1.11 
++ @750 + 1.12 




CHAIN X3RebJ 1.8 
@751
END 
++ @748  + 1.13
++ @749 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 1.11 
++ @750 + 1.12 

CHAIN X3RebJ 1.9 
@752
EXIT 

CHAIN X3RebJ 1.10 
@753
EXTERN X3RebJ 1.7 

CHAIN X3RebJ 1.11 
@754
EXIT 

CHAIN X3RebJ 1.12 
@755 
EXIT 

CHAIN X3RebJ 1.13 
@756
EXIT 


//LoveTalk #2

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",4)~ THEN X3RebJ LoveTalk2
@757
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @758 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 2.1 
++ @759 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 2.1 
++ @760 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 2.3 
++ @761 + 2.X 

CHAIN X3RebJ 2.X 
@762
EXIT 

CHAIN X3RebJ 2.1
@763
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ 2.Vienxay1 
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3RebJ 2.4 

CHAIN X3VieJ 2.Vienxay1 
@764
== X3RebJ @765
END 
++ @766 + 2.Vienxay2 
++ @767 EXTERN X3RebJ 2.Vienxay3  
++ @768 + 2.Vienxay4 

CHAIN X3VieJ 2.Vienxay2 
@769
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@503)~ 
EXTERN X3RebJ 2.4 

CHAIN X3RebJ 2.Vienxay3 
@770
EXTERN X3RebJ 2.4 

CHAIN X3VieJ 2.Vienxay4 
@771
EXTERN X3RebJ 2.4

CHAIN X3RebJ 2.3 
@772
EXIT 

CHAIN X3RebJ 2.4 
@773
END 
++ @774 + 2.5 
++ @775 + 2.5 
++ @776 + 2.5

CHAIN X3RebJ 2.5 
@777
END 
++ @778 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 2.6 
++ @779 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 2.7
++ @780 + 2.8

CHAIN X3RebJ 2.6
@781
EXIT 

CHAIN X3RebJ 2.7 
@782
EXIT 

CHAIN X3RebJ 2.8
@783
EXIT 

//Love Talk#3 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",6)~ THEN X3RebJ LoveTalk3
@784
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @785 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 3.1 
++ @786 + 3.2
++  @787 + 3.3 
++ @788 DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 3.X

CHAIN X3RebJ 3.X 
@789
EXIT 

CHAIN X3RebJ 3.1 
@790
EXTERN X3RebJ 3.4 

CHAIN X3RebJ 3.2 
@791
EXTERN X3RebJ 3.4

CHAIN X3RebJ 3.3 
@792
EXTERN X3RebJ 3.4 


CHAIN X3RebJ 3.4 
@793
== X3RebJ @794
END 
++ @795 + 3.5 
++ @796 + 3.6
++ @797 + 3.7

CHAIN X3RebJ 3.5 
@798
EXTERN X3RebJ 3.8 

CHAIN X3RebJ 3.8
@799
EXIT 

CHAIN X3RebJ 3.6
@800
EXTERN X3RebJ 3.8

CHAIN X3RebJ 3.7 
@801
EXTERN X3RebJ 3.8

// Love Talk #4

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",8)~ THEN X3RebJ LoveTalk4 
@802
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @803 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~ + 4.1
++ @804 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 4.2 
++ @805 + 4.X

CHAIN X3RebJ 4.X 
@806
EXIT 

CHAIN X3RebJ 4.1 
@807
EXTERN X3RebJ 4.3 

CHAIN X3RebJ 4.2 
@808
EXTERN X3RebJ 4.3 

CHAIN X3RebJ 4.3 
@809
== X3RebJ @810
END 
++ @811 + 4.4
++ @812 + 4.4 
++ @813 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 4.6 

CHAIN X3RebJ 4.4 
@814
== X3RebJ @815
END 
++ @816 + 4.7 
++ @817 + 4.8 
++ @818 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 4.9

CHAIN X3RebJ 4.6 
@819
EXIT 

CHAIN X3RebJ 4.7
@820
EXTERN X3RebJ 4.10

CHAIN X3RebJ 4.8
@821
EXTERN X3RebJ 4.10

CHAIN X3RebJ 4.9
@822
EXIT 

CHAIN X3RebJ 4.10
@823
EXIT 

// Love Talk#5 
//Note: No Approval Changes here

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",10)~ THEN X3RebJ LoveTalk5
@824
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @825 + 5.4
++ @826 + 5.2 
++ @827 + 5.1

CHAIN X3RebJ 5.2 
@828
END 
+~Gender(Player1,MALE)~+ @829 + 5.3M
+~!Gender(Player1,MALE)~+ @829 + 5.3F
++ @830 + 5.4 
++ @831 + 5.4

CHAIN X3RebJ 5.3M 
@832
EXTERN X3RebJ 5.4

CHAIN X3RebJ 5.3F 
@833
EXTERN X3RebJ 5.4

CHAIN X3RebJ 5.4 
@834
END 
++ @835 + 5.5 
++ @836 + 5.6 
++ @837 + 5.5

CHAIN X3RebJ 5.5 
@838
END 
++ @839 + 5.7
++ @840 + 5.8 
++ @841 + 5.11

CHAIN X3RebJ 5.6 
@842
END 
++ @839 + 5.7
++ @840 + 5.8 
++ @841 + 5.11

CHAIN X3RebJ 5.1 
@843
DO ~SetGlobal("TalkSkipped","LOCALS",1)~
EXIT 


CHAIN X3RebJ 5.7
@844
EXTERN X3RebJ 5.8 

CHAIN X3RebJ 5.8
@845
END 
++ @846 + 5.9 
++ @847 + 5.9
++ @848 + 5.9

CHAIN X3RebJ 5.9
@849
EXTERN X3RebJ 5.10

CHAIN X3RebJ 5.10 
@850
EXIT 

CHAIN X3RebJ 5.11 
@851
EXTERN X3RebJ 5.8

//Love Talk#6
//Note: Two variations of six. One if five was skipped, the other if it was not. 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",12)Global("TalkSkipped","LOCALS",1)~ THEN X3RebJ LoveTalk6Alt 
@852
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Vienxay4 
++ @853 + 6.1
++ @854 + 6.1
++ @855 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.Vienxay3 // Breaks romance. 
++ @856 + 6.X  

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",12)!Global("TalkSkipped","LOCALS",1)~ THEN X3RebJ LoveTalk6
@857
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Vienxay1 
++ @858 + 6.1
++ @854 + 6.1
++ @855 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.Vienxay3 // Breaks romance. 
++ @859 + 6.X  

CHAIN X3VieJ 6.Vienxay4 
@860
EXTERN X3RebJ 6.Vienxay5

CHAIN X3VieJ 6.Vienxay1 
@861
EXTERN X3RebJ 6.Vienxay5

CHAIN X3RebJ 6.Vienxay5 
@862
== X3VieJ @863
END 
++ @864 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@506)~ EXTERN X3VieJ 6.Vienxay2 
++ @865 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~ + 6.Vienxay3 
++ @866 DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@506)~ EXTERN X3VieJ 6.Vienxay2 
++ @855 + 6.Vienxay3 

CHAIN X3RebJ 6.1 
@867
== X3RebJ @868
END 
++ @869 + 6.2 
+~!Global("X3RebPartyBG1","GLOBAL",1)~+ @870 + 6.3
+~Global("X3RebPartyBG1","GLOBAL",1)~+ @871 + 6.4
++ @872 + 6.X 

CHAIN X3VieJ 6.Vienxay2 
@873 
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXTERN X3RebJ 6.1

CHAIN X3RebJ 6.X 
@874
EXIT 

CHAIN X3RebJ 6.Vienxay3 
@875
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3RebJ 6.2
@876
== X3RebJ @877
END 
++ @602 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 6.3 
++ @878 + 6.4
++ @879 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.5

CHAIN X3RebJ 6.3 
@880
EXIT 

CHAIN X3RebJ 6.5 
@881
EXIT 

CHAIN X3RebJ 6.4 
@882
EXIT 

// LoveTalk #7


CHAIN IF ~Global("X3RebLoveTalk","LOCALS",14)~ THEN X3RebJ 7
@883
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @884 + 7.1
++ @885 + 7.1
++ @886 DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~  + 7.X

CHAIN X3RebJ 7.1
@887
== X3RebJ @888
== X3RebJ @889
END 
++ @890  DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 7.3 
++ @891 DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 7.2
++ @892 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 7.3

CHAIN X3RebJ 7.2 
@893
 EXTERN X3RebJ 7.3 
 
CHAIN X3RebJ 7.3 
@894
== X3RebJ @895
END 
++ @896 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 7.4 
++ @897 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 7.5 
++ @898 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 7.6

CHAIN X3RebJ 7.4 
@899
== X3RebJ @900
EXIT 

CHAIN X3RebJ 7.5 
@901
EXTERN X3RebJ 7.4 

CHAIN X3RebJ 7.6 
@902
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~
EXIT 
 
CHAIN X3RebJ 7.X 
@903
EXIT 




CHAIN IF ~Global("X3RebLoveTalk","LOCALS",16)~ THEN X3RebJ LoveTalk8
@904
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
IF ~Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 8.Kale
++ @905 + 8.2 
++ @906 + 8.2 
++ @907 + 8.2 
++ @908 + 8.2 


CHAIN X3RebJ 8.1 
@909
END 
++ @905 + 8.2 
++ @906 + 8.2 
++ @907 + 8.2 
++ @908 + 8.2 

CHAIN X3RebJ 8.2 
@910
== X3RebJ @911
END 
++ @912 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 8.3 
++ @913 DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 8.4 
++ @914 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~ + 8.4 
++ @915 + 8.X 

CHAIN X3RebJ 8.X 
@916
EXIT

CHAIN X3RebJ 8.3 
@917
EXTERN X3RebJ 8.5 

CHAIN X3RebJ 8.4 
@918
EXTERN X3RebJ 8.5 

CHAIN X3RebJ 8.5 
@919
EXIT 

 



CHAIN X3KalJ 8.Kale
@920
== X3RebJ @921
== X3KalJ @922
END 
++ @923  + 8.Kale1
++ @924 EXTERN X3RebJ 8.Kale3
++ @925 + 8.Kale2
++ @926 EXTERN X3RebJ 8.Kale3

CHAIN X3KalJ 8.Kale2 
@927
DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXTERN X3RebJ 8.1


CHAIN X3KalJ 8.Kale1 
@928
END 
++ @925 + 8.Kale2
++ @926 EXTERN X3RebJ 8.Kale3

CHAIN X3RebJ 8.Kale3
@929
== X3KalJ @930
== X3RebJ @931
DO ~SetGlobal("X3RebAppChange","GLOBAL",5)SetGlobal("X3RebRomanceActive","GLOBAL",3)~
EXIT

// LoveTalk 9

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",18)~ THEN X3RebJ LoveTalk9
@932
DO ~SetGlobal("X3RebAppChange","GLOBAL",6)IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)InParty("X3Emi")~ EXTERN X3EmiJ 9.Emily1 // Emily Conflict. 
++ @933 + 9.1 
++ @934 + 9.1 
++ @935 + 9.X 

CHAIN X3RebJ 9.X 
@936
DO ~RestParty()~
EXIT 



CHAIN X3EmiJ 9.Emily1 
@937
== X3RebJ @938
== X3EmiJ @939
END
++ @940 EXTERN X3RebJ 9.Emily2 
++ @941 + 9.Emily3
++ @942 + 9.Emily3 
++ @943 EXTERN X3RebJ 9.Emily2 

CHAIN X3RebJ 9.Emily2 
@944
== X3EmiJ @945
== X3RebJ @946
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)SetGlobal("X3RebAppChange","GLOBAL",5)RestParty()~
EXIT 

CHAIN X3EmiJ 9.Emily3 
@947
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@103)~
== X3RebJ @948
END 
++ @949 EXTERN X3RebJ 9.1
++ @950 EXTERN X3RebJ 9.Emily5 
++ @951 EXTERN X3RebJ 9.Emily4 

CHAIN X3RebJ 9.Emily4 
@952
EXTERN X3RebJ 9.1 

CHAIN X3RebJ 9.Emily5 
@953
EXTERN X3RebJ 9.1

CHAIN X3RebJ 9.1 
@954
END 
++ @955 + 9.2
++ @956 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 9.3
++ @957 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 9.4 

CHAIN X3RebJ 9.2 
@958
EXTERN X3RebJ 9.5 

CHAIN X3RebJ 9.4
@959
EXTERN X3RebJ 9.5 

CHAIN X3RebJ 9.3 
@960
EXTERN X3RebJ 9.5

CHAIN X3RebJ 9.5 
@961
== X3RebJ @962
== X3RebJ @963
== X3RebJ @964
END 
++ @965 + 9.6 
++ @966 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 9.7
++ @967 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 9.8

CHAIN X3RebJ 9.6 
@968
EXTERN X3RebJ 9.9

CHAIN X3RebJ 9.7 
@969
EXTERN X3RebJ 9.9

CHAIN X3RebJ 9.8
@970
EXTERN X3RebJ 9.9 

CHAIN X3RebJ 9.9
@971
END 
++ @972 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 9.10
++ @973 + 9.10 
++ @974 + 9.11 
++ @975 + 9.11 

CHAIN X3RebJ 9.10 
@976
DO ~RestParty()~
EXIT 

CHAIN X3RebJ 9.11 
@977
DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

//Love Talk #10

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",20)~ THEN X3RebJ LoveTalk10 
@978
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @979 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.1 
++ @980 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.2 
++ @981 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 10.3
++ @982 + 10.X 

CHAIN X3RebJ 10.X 
@983
EXIT 

CHAIN X3RebJ 10.1 
@984
== X3RebJ @985
END 
++ @986 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.4 
++ @987  + 10.5 
++ @988 + 10.9

CHAIN X3RebJ 10.2 
@989
== X3RebJ @990
END 
++ @986 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.4 
++ @987 + 10.5 
++ @988 + 10.9

CHAIN X3RebJ 10.3 
@991
== X3RebJ @992
END 
++ @993 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.4
++ @987 + 10.5 
++ @988 + 10.9 

CHAIN X3RebJ 10.9
@994
EXTERN X3RebJ 10.4

CHAIN X3RebJ 10.5 
@995
EXTERN X3RebJ 10.4

CHAIN X3RebJ 10.4 
@996
== X3RebJ @997
END 
++ @998 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 10.6 
++ @999 + 10.7
++ @1000 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 10.8

CHAIN X3RebJ 10.6
@1001
EXIT 

CHAIN X3RebJ 10.7
@1002
EXIT 

CHAIN X3RebJ 10.8
@1003
EXIT 

//Love Talk #11 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",22)~ THEN X3RebJ LoveTalk11
@1004
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @1005 + 11.1 
++ @1006 + 11.1
++ @1007 + 11.12 
++ @1008 + 11.X

CHAIN X3RebJ 11.12 
@1009
DO ~SetGlobal("X3RebAppChange","GLOBAL",5)SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

CHAIN X3RebJ 11.X 
@1010
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",-2)RestParty()~
EXIT 

CHAIN X3RebJ 11.1 
@1011
DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @1012 DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.2 
++ @1013 + 11.3 
++ @1014 + 11.4

CHAIN X3RebJ 11.2 
@1015
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ @1016 + 11.8
++ @1017 + 11.5
++ @1018 + 11.6 
++ @1019 + 11.8

CHAIN X3RebJ 11.3 
@1020
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ @1016 + 11.8
++ @1018 + 11.6
++ @1019 + 11.8

CHAIN X3RebJ 11.4 
@1021
END 
+~Global("X3RebPartyBG1","GLOBAL",1)~+ @1016 + 11.8
++ @1017 + 11.5
++ @1022 DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.6
++ @1023 DO ~IncrementGlobal("X3RebAppChange","LOCALS",-2)~ + 11.7

CHAIN X3RebJ 11.5
@1024
EXTERN X3RebJ 11.9

CHAIN X3RebJ 11.6
@1025
EXTERN X3RebJ 11.9

CHAIN X3RebJ 11.7
@1026
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

CHAIN X3RebJ 11.8
@1027
END 
++ @1028 + 11.10 
++ @1029 + 11.10 
++ @1030 + 11.10 

CHAIN X3RebJ 11.9
@1031
== X3RebJ @1032
END 
++ @1033 DO ~IncrementGlobal("X3RebAppChange","LOCALS",2)~ + 11.18
++ @1034 DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.10
++ @1035 DO ~IncrementGlobal("X3RebAppChange","LOCALS",-2)~ + 11.17

CHAIN X3RebJ 11.10 
@1036
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~ EXTERN X3RebJ 11.11S  // Short
IF ~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~ EXTERN X3RebJ 11.11T // Tall

CHAIN X3RebJ 11.11S 
@1037
END 
++ @1038 DO ~IncrementGlobal("X3RebAppChange","LOCALS",2)~ + 11.14
++ @1039 DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.13
++ @1040 DO ~IncrementGlobal("X3RebAppChange","LOCALS",-1)~ + 11.15 

CHAIN X3RebJ 11.11T 
@1041
END 
++ @1038 DO ~IncrementGlobal("X3RebAppChange","LOCALS",2)~ + 11.14
++ @1039 DO ~IncrementGlobal("X3RebAppChange","LOCALS",1)~ + 11.13
++ @1040 DO ~IncrementGlobal("X3RebAppChange","LOCALS",-1)~ + 11.15 

CHAIN X3RebJ 11.15 
@1042
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT  

CHAIN X3RebJ 11.14 
@1043
EXTERN X3RebJ 11.16 

CHAIN X3RebJ 11.13 
@1044
EXTERN X3RebJ 11.16 

CHAIN X3RebJ 11.16
@1045
DO ~RestParty()~
EXIT 

CHAIN X3RebJ 11.17
@1046
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)RestParty()~
EXIT 

CHAIN X3RebJ 11.18
@1047
END 
++ @1038 + 11.14
++ @1039 + 11.13
++ @1048 + 11.19

CHAIN X3RebJ 11.19
@1049
EXTERN X3RebJ 11.16 


// Romance conflict

CHAIN IF ~Global("X3RebRomanceConflict","GLOBAL",1)~ THEN X3RebJ X3RebRomanceConflict
@1050
== X3RebJ @1051 
END 
++ @1052 + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + @1053 + RC.Aerie
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + @1054 + RC.Jaheira
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @1055 + RC.Anomen
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + @1056 + RC.Viconia
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + @1057 + RC.Rasaad
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + @1058 + RC.Neera
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + @1059 + RC.Sirene
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + @1060 + RC.Petsy
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + @1061 + RC.Yvette
+ ~Global("DornRomanceActive","GLOBAL",1)~ + @1062 + RC.Dorn
+ ~Global("HexxatRomanceActive","GLOBAL",1)~ + @1063 + RC.Hexxat
++ @1064 + RC.1
++ @1065 + RC.2
++ @1066 + RC.2


CHAIN X3RebJ RC.Aerie
@1067
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Anomen
@1068
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Jaheira
@1069
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Viconia
@1070
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Rasaad
@1071
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Neera
@1072
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Dorn
@1073
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Hexxat
@1074
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Yvette
@1075
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Petsy
@1076
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.Sirene
@1077
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)
SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3RebJ RC.1
@1078
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
@1079
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3) SetGlobal("X3RebRomanceConflict","GLOBAL",2)~ 
EXIT
 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",24)~ THEN X3RebJ LoveTalk12
@1080
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",7)~
END 
++ @1081  + 12.1 
++ @1082 + 12.2 
++ @1083 + 12.3

CHAIN X3RebJ 12.1 
@1084
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.2 
@1085
END 
++ @1086 + 12.4 
+~Gender(Player1,FEMALE)~+ @1087 + 12.5F 
+~Gender(Player1,MALE)~+ @1088 + 12.5M 
++ @1089 + 12.6

CHAIN X3RebJ 12.6 
@1090
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.4 
@1091
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.5F 
@1092
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.5M
@1093
EXTERN X3RebJ 12.7

CHAIN X3RebJ 12.7
@1094
== X3RebJ @1095
END 
++ @1096 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 12.8
++ @1097 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 12.9
++ @1098 + 12.10

CHAIN X3RebJ 12.8
@1099
== X3RebJ @1100
EXIT 

CHAIN X3RebJ 12.9
@1101
== X3RebJ @1102
EXIT 

CHAIN X3RebJ 12.10
@1103
== X3RebJ @1104
EXIT 


CHAIN X3RebJ 12.3 
@1105
EXTERN X3RebJ 12.7


// This talk will set the love trigger to 2. 
CHAIN IF ~Global("X3RebLoveTalk","LOCALS",26)~ THEN X3RebJ LoveTalk13
@1106
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @1107 + 13.1
++ @1108 + 13.3
++ @1109 + 13.3 

CHAIN X3RebJ 13.1
@1110
END 
+~OR(3)Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ @1111 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 13.4S
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ @1111 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 13.4T
++ @1112 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~  + 13.5 
++ @1113 + 13.6

CHAIN X3RebJ 13.3 
@1114
END 
+~OR(3)Race(Player1,HALFLING)Race(Player1,DWARF)Race(Player1,GNOME)~+ @1111 + 13.4S
+~!Race(Player1,HALFLING)!Race(Player1,DWARF)!Race(Player1,GNOME)~+ @1111 + 13.4T
++ @1112 + 13.5
++ @1113 + 13.6

CHAIN X3RebJ 13.4T
@1115
== X3VieJ IF  ~IsValidForPartyDialogue("X3VieJ")~ THEN @1116
== X3KalJ IF ~IsValidForPartyDialogue("X3KalJ")~ THEN @1117 
== X3HelJ IF  ~IsValidForPartyDialogue("X3HelJ")~ THEN @1118
== X3EmiJ IF ~IsValidForPartyDialogue("X3EmiJ")~ THEN @1119
EXTERN X3RebJ 13.7

CHAIN X3RebJ 13.4S 
@1120
== X3VieJ IF  ~IsValidForPartyDialogue("X3VieJ")~ THEN @1116
== X3KalJ IF ~IsValidForPartyDialogue("X3KalJ")~ THEN @1117 
== X3HelJ IF  ~IsValidForPartyDialogue("X3HelJ")~ THEN @1118
== X3EmiJ IF ~IsValidForPartyDialogue("X3EmiJ")~ THEN @1119
EXTERN X3RebJ 13.7

CHAIN X3RebJ 13.7
@1121
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3RebJ 13.5
@1122
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~ 
EXIT

CHAIN X3RebJ 13.6
@1123
== X3RebJ @1124
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",2)~
EXIT 

//Love Talk #14

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",28)~ THEN X3RebJ LoveTalk14 
@1125
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)~
END 
++ @1126 +  14.1
++ @1127 + 14.2 
++ @1128 + 14.X

CHAIN X3RebJ 14.2
@1129
EXTERN X3RebJ 14.1

CHAIN X3RebJ 14.1
@1130
END 
IF ~Global("X3RFAIL","GLOBAL",2)~ EXTERN X3RebJ 14.3 
IF ~!Global("X3RFAIL","GLOBAL",2)~ EXTERN X3RebJ 14.4

CHAIN X3RebJ 14.3 
@1131
EXTERN X3RebJ 14.4 

CHAIN X3RebJ 14.4 
@1132
END 
IF ~!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ 14.5
IF ~Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ 14.6

CHAIN X3RebJ 14.5
@1133
END 
++ @1134 +14.9
++ @1135 + 14.8
++ @1136 + 14.7

CHAIN X3RebJ 14.6
@1137
END 
++ @1134 +14.9
++ @1135 + 14.8
++ @1136 + 14.7

CHAIN X3RebJ 14.7
@1138
== X3RebJ @1139
DO ~RestParty()~
EXIT 

CHAIN X3RebJ 14.8
@1140
== X3RebJ @1141
END 
++ @1142 + 14.9
++ @1143 + 14.9 
++ @1144 + 14.7
++ @1145 + 14.X 

CHAIN X3RebJ 14.9
@1146
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 


CHAIN X3RebJ 14.X 
@1147
DO ~RestParty()~
EXIT 
// Fires only after Recorder's offer is taken.
CHAIN IF ~Global("X3Slept","LOCALS",1)~ THEN X3RebJ LoveTalk15
@1148
DO ~SetGlobal("X3Slept","LOCALS",2)SetGlobal("X3RebAppChange","GLOBAL",9)~
END 
++ @1149 + 15.1 
++ @1150 + 15.2
++ @1151 + 15.2

CHAIN X3RebJ 15.X
@1152
EXIT 

CHAIN X3RebJ 15.1
@1153 
EXTERN X3RebJ 15.3

CHAIN X3RebJ 15.2
@1154
EXTERN X3RebJ 15.3

CHAIN X3RebJ 15.3
@1155
== X3RebJ @1156
END 
++ @1157 EXIT
++ @1158 + 15.4
++ @1159 + 15.5


CHAIN X3RebJ 15.4
@1160
DO ~FadeToColor([30.0],0)Wait(1)FadeFromColor([30.0],0)~
EXIT 

CHAIN X3RebJ 15.5
@1161
EXIT 

// Lovetalk at Ust Natha

CHAIN IF ~Global("X3RebUstNathaLovetalk","GLOBAL",1)~ THEN X3RebJ LoveTalk16
@1162
DO ~SetGlobal("X3RebUstNathaLovetalk","GLOBAL",2)~
END
+ ~Gender(Player1,MALE)~ + @1163 + 16.1 
+ ~Gender(Player1,FEMALE)~ + @481 + 16.1 
++ @1164 + 16.2
++ @1165 + 16.3
++ @1166 + 16.X

CHAIN X3RebJ 16.X
@1167
EXIT

CHAIN X3RebJ 16.1 
@1168
EXTERN X3RebJ 16.4 

CHAIN X3RebJ 16.4
@1169
END 
++ @1170 DO ~SetGlobal("X3RebAppChange","GLOBAL",6)~  + 16.5 
++ @1171 DO ~SetGlobal("X3RebAppChange","GLOBAL",7)~  + 16.5
++ @1172 DO ~SetGlobal("X3RebAppChange","GLOBAL",5)~ + 16.X

CHAIN X3RebJ 16.5
@1173
END 
++ @1174 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 16.6
++ @1175 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 16.7
++ @1176 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 16.8

CHAIN X3RebJ 16.6
@1177
EXIT 

CHAIN X3RebJ 16.7
@1178
EXIT 

CHAIN X3RebJ 16.8
@1179
EXIT 

CHAIN X3RebJ 16.2 
@1180
EXTERN X3RebJ 16.4

CHAIN X3RebJ 16.3
@1181
EXTERN X3RebJ 16.4

// Final Love Talk 

CHAIN IF ~Global("X3RebLoveTalk","LOCALS",30)~ THEN X3RebJ LoveTalk17
@1182
DO ~IncrementGlobal("X3RebLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @1183 + 17.1
++ @1184 + 17.2
++ @1185 + 17.X 

CHAIN X3RebJ 17.X 
@1186
== X3RebJ @1187
END 

CHAIN X3RebJ 17.2
@1188
EXTERN X3RebJ 17.3

CHAIN X3RebJ 17.1
@1189
EXTERN X3RebJ 17.3

CHAIN X3RebJ 17.3
@1190
== X3RebJ @1191
END 
++ @1192 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 17.4
++ @1193 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 17.4
++ @1194 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 17.5
++ @1195 + 17.6

CHAIN X3RebJ 17.4
@1196
END 
IF ~Global("X3Slept","LOCALS",0)~ DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~ EXIT 
IF ~!Global("X3Slept","LOCALS",0)~ DO ~RestParty()~ EXIT 


CHAIN X3RebJ 17.5
@1197
EXTERN X3RebJ 17.7

CHAIN X3RebJ 17.6
@1198
EXTERN X3RebJ 17.7

CHAIN X3RebJ 17.7
@1199
EXIT 

// Bodhi abduction

EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3RebKidnap
END

CHAIN BODHIAMB X3RebKidnap
@1200
== BODHIAMB @1201
== X3RebJ @1202
== BODHIAMB @1203
== X3RebJ @1204
END
++ @1205 EXTERN X3RebJ X3RebKidnap2 
++ @1206 EXTERN X3RebJ X3RebJKidnap3 
++ @1207 EXTERN X3RebJ X3RebJKidnap3 

CHAIN X3RebJ X3RebKidnap2 
@1208
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3Rbodhi")~ EXIT

CHAIN X3RebJ X3RebJKidnap3 
@1209
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3Rbodhi")~ EXIT

CHAIN IF WEIGHT #-1
~Global("X3RebVampire","GLOBAL",1)~ THEN BODHIAMB X3RebKidnap4
@1210
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
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1211
END 

//Recorder Taken 
EXTEND_BOTTOM C6BODHI 21
IF ~Global("X3RebVampire","GLOBAL",1)~ + 23
END

A_T_T C6bodhi 21 ~!Global("X3RebVampire","GLOBAL",1)~ DO 0

EXTEND_BOTTOM C6BODHI 23
+ ~Global("X3RebVampire","GLOBAL",1)~ + @1212 EXTERN C6BODHI X3RebAb
+ ~Global("X3RebVampire","GLOBAL",1)~ + @1213 EXTERN C6BODHI X3RebAb
+ ~Global("X3RebVampire","GLOBAL",1)~ + @1214 EXTERN C6BODHI X3RebAb
+ ~Global("X3RebVampire","GLOBAL",1)~ + @1215 EXTERN C6BODHI X3RebAbConf
END



CHAIN C6BODHI X3RebAbConf
@1216
END
IF ~~ EXTERN C6BODHI X3RebAb

CHAIN C6BODHI X3RebAb
@1217
= @1218
END
IF ~~ EXTERN C6BODHI 22

// Recorder's Body Bodhi's Crypt
CHAIN IF WEIGHT #-1
~Global("X3RebVampire","GLOBAL",1)
Global("X3RebBody","AR0809",2)~ THEN PLAYER1 body
@1219
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
@1220
EXTERN X3RFER body.10

CHAIN IMOEN2J body.1
@1221
EXTERN X3RFER body.10

CHAIN AERIEJ body.2
@1222
EXTERN X3RFER body.10

CHAIN JAHEIRAJ body.3
@1223
EXTERN X3RFER body.10

CHAIN MAZZYJ body.4
@1224
EXTERN X3RFER body.10

CHAIN X3HelJ body.5
@1225
EXTERN X3RFER body.10

CHAIN ANOMENJ body.6
@1226
EXTERN X3RFER body.10

CHAIN VICONIJ body.7
@1227 
EXTERN X3RFER body.10

CHAIN X3KalJ body.8
@1228
EXTERN X3RFER body.10

CHAIN HAERDAJ body.9 
@1229
EXTERN X3RFER body.10

CHAIN X3RFER body.10
@1230
END
++ @1231 + body.11 
++ @1232 + body.11 
++ @1233 + body.11

CHAIN X3RFER body.11
@1234
END 
IF ~~ DO ~GiveItemCreate("X3RFER",Player1,0,0,0)DestroySelf()~ UNSOLVED_JOURNAL @32
EXIT

CHAIN X3RebJ DSR
@1235
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
= @1236
= @1237
END 
++ @1238 + DSR.7
++ @1239 + DSR.7
++ @1240 + DSR.8 

CHAIN X3RebJ DSR.7
@1241
DO ~SetGlobal("X3RebInterest","LOCALS",1)IncrementGlobal("X3RebAppChange","GLOBAL",4)~ 
EXIT 

CHAIN X3RebJ DSR.8 
@1242
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebAppChange","GLOBAL",-4)~
EXIT 


// Group Kiss from PID 
CHAIN X3RebJ Group.Kiss 
@1243
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @1244
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1245
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1246
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1247
== X3RebJ @1248
== X3RebJ @1249
EXIT 

APPEND X3RebJ 
// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @1250
= @1251
= @1252
++ @1253 + LBreak.1
++ @1254 + LBreak.2 
++ @1255 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @1256
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @1257
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @1258
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @1259
++ @1260 + LBreak.5 
++ @1261 + LBreak.6 
++ @1262 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @1263
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @1264
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @1265
IF ~~ EXIT 
END 

// Break Approval

IF ~Global("X3Break","LOCALS",1)~ Break
SAY @1266
= @1267
++ @1268 + Break.1 
++ @1269 + Break.2 
++ @1270 + Break.2
END 

IF ~~ Break.1
SAY @1271
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @1272 
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @1273
++ @1274 + Break.4
++ @1275 + Break.5
++ @1276 + Break.6 
END 

IF ~~ Break.4 
SAY @1277
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @1278
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @1279
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3RebApp","GLOBAL",-25)SetGlobal("X3Break","LOCALS",2)DisplayStringNoNameDlg(Player1,@416)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @1280
= @1281
// Recorder leaves the game. 
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  @1282
++ @1283 + Question.PID 
+~NumInPartyGT(2)~+ @1284 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1284 + PersonalAlone.PID
++ @1285 + PID.Music 
++ @1390 + FixString
++ @1286 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  @1287
++ @1288 + Question.PID 
+~NumInPartyGT(2)~+ @1284 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1284 + PersonalAlone.PID
++ @1285 + PID.Music 
++ @1390 + FixString
++ @1286 EXIT 
END  

IF ~~ main.PID 
SAY  @1289
++ @1288 + Question.PID 
+~NumInPartyGT(2)~+ @1284 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1284 + PersonalAlone.PID
++ @1285 + PID.Music 
++ @1390 + FixString
++ @1286 EXIT 
END  

IF ~~ Question.PID
SAY @1290

+~Global("X3PIDCON1","LOCALS",0)~+ @1291 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)Global("X3PIDCON5","LOCALS",0)~+ @1292 DO ~SetGlobal("X3PIDCON5","LOCALS",1)~ + PID.City
+~Global("X3PIDCON2","LOCALS",0)GlobalGT("X3RebQuest","GLOBAL",7)~+ @1293 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON3","LOCALS",0)GlobalGT("X3RebTalk","LOCALS",10)~+ @1294 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Son
+~Global("X3PIDCON4","LOCALS",0)~+ @1295 DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ @1296 + main.PID 
++ @1297 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @1298
+~Global("X3PIDCON1","LOCALS",0)~+ @1291 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)Global("X3PIDCON5","LOCALS",0)~+ @1292 DO ~SetGlobal("X3PIDCON5","LOCALS",1)~ + PID.City
+~Global("X3PIDCON2","LOCALS",0)GlobalGT("X3RebQuest","GLOBAL",7)~+ @1293 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON3","LOCALS",0)GlobalGT("X3RebTalk","LOCALS",10)~+ @1294 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Son
+~Global("X3PIDCON4","LOCALS",0)~+ @1295 DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ @1296 + main.PID
++ @1299 EXIT 
END 

IF ~~ PID.Lantan 
SAY @1300
= @1301
= @1302
++ @1303  + PLantan.1
++ @1304 + PLantan.2
++ @1305 + PLantan.3
++ @1306 + MoreQuestion.PID 
END 

IF ~~ PLantan.1
SAY @1307
++ @1308 + PLantan.2
++ @1305 + PLantan.3
++ @1306 + MoreQuestion.PID 
END 

IF ~~ PLantan.2 
SAY @1309
= @1310
++ @1311 + PLantan.3
++ @1306 + MoreQuestion.PID 
END 

IF ~~ PLantan.3 
SAY @1312
= @1313
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PID.City
SAY @1315
+~Global("X3PIDCity1","LOCALS",0)~+ @1316 DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ @1317 DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ @1318 DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ @1319 DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ @1320 DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ @1321 DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PC.Slums 
SAY @1322
= @1323
+~Global("X3PIDCity2","LOCALS",0)~+ @1317 DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ @1318 DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ @1319 DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ @1320 DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ @1321 DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PC.Bridge 
SAY @1324
= @1325
+~Global("X3PIDCity1","LOCALS",0)~+ @1316 DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity3","LOCALS",0)~+ @1318 DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ @1319 DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ @1320 DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ @1321 DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PC.Temple 
SAY @1326
= @1327
+~Global("X3PIDCity1","LOCALS",0)~+ @1316 DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ @1317 DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity4","LOCALS",0)~+ @1319 DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ @1320 DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ @1321 DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PC.Gov 
SAY @1328
= @1329
+~Global("X3PIDCity1","LOCALS",0)~+ @1316 DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ @1317 DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ @1318 DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity5","LOCALS",0)~+ @1320 DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
+~Global("X3PIDCity6","LOCALS",0)~+ @1321 DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PC.Gates 
SAY @1330
+~Global("X3PIDCity1","LOCALS",0)~+ @1316 DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ @1317 DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ @1318 DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ @1319 DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity6","LOCALS",0)~+ @1321 DO ~SetGlobal("X3PIDCity6","LOCALS",1)~ + PC.Prom
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PC.Prom 
SAY @1331
= @1332
+~Global("X3PIDCity1","LOCALS",0)~+ @1316 DO ~SetGlobal("X3PIDCity1","LOCALS",1)~ + PC.Slums 
+~Global("X3PIDCity2","LOCALS",0)~+ @1317 DO ~SetGlobal("X3PIDCity2","LOCALS",1)~ + PC.Bridge 
+~Global("X3PIDCity3","LOCALS",0)~+ @1318 DO ~SetGlobal("X3PIDCity3","LOCALS",1)~ + PC.Temple 
+~Global("X3PIDCity4","LOCALS",0)~+ @1319 DO ~SetGlobal("X3PIDCity4","LOCALS",1)~ + PC.Gov 
+~Global("X3PIDCity5","LOCALS",0)~+ @1320 DO ~SetGlobal("X3PIDCity5","LOCALS",1)~ + PC.Gates
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PID.Name 
SAY @1333
++ @1334 + PName.1 
++ @1335 + PName.1
++ @1336 + PName.1
++ @1337 + PName.1
END 

IF ~~ PName.1 
SAY @1338
= @1339
++ @1340 + PName.2 
++ @1341 DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@403)~ + PName.3 
++ @1143 + PName.2 
END 

IF ~~ PName.2 
SAY @1342
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PName.3 
SAY @1343
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PID.Son 
SAY @1344
= @1345
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END 

IF ~~ PID.Lore
SAY @1346
= @1347
= @1348
++ @1349 + PLore.1 
++ @1350 + PLore.2
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END

IF ~~ PLore.1 
SAY @1351
= @1352
IF ~~ + PLore.3 
END 

IF ~~ PLore.2 
SAY @1353
= @1354
IF ~~ + PLore.3 
END 


IF ~~ PLore.3 
SAY @1355
++ @1306 + MoreQuestion.PID
++ @1314 EXIT 
END


IF ~~ PersonalGroup.PID 
SAY @1356
+~Global("X3RebRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Global("X3RebPartyBG1","GLOBAL",1)~+ @1357 + DSR
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @1358 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1358 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1359 + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3RebRomanceActive","GLOBAL",0)Global("X3RebInterest","LOCALS",0)~+ @1360 DO ~SetGlobal("X3RebInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1361 + BreakUp
++ @1362 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @1363
+~Global("X3RebRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Global("X3RebPartyBG1","GLOBAL",1)~+ @1357 + DSR
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @1358 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1358 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1359 + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3RebRomanceActive","GLOBAL",0)Global("X3RebInterest","LOCALS",0)~+ @1360 DO ~SetGlobal("X3RebInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1361 + BreakUp
++ @1362 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @1364
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @1365
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @1366
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY @1367
++ @1368 + RI.1
++ @1369 + RI.2
++ @1370 + RI.3
END 

IF ~~ RI.1 
SAY @1371
IF ~~ EXIT 
END 

IF ~~ RI.2 
SAY @1372
= @1373
IF ~~ EXIT 
END 

IF ~~ RI.3 
SAY @1374
= @1375
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY @1376
++ @1377 + BU.1 
++ @1378 + BU.2
++ @1379 + BU.3 
++ @1380 + BU.1 
END 

IF ~~ BU.1 
SAY @1381
= @1382
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@409)~  EXIT 
END 

IF ~~ BU.2 
SAY @1383
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-18)
DisplayStringNoNameDlg(Player1,@409)~ EXIT 
END 

IF ~~ BU.3 
SAY @1384
= @1385
++ @1386 + BU.4 
++ @1387 + BU.1
END 

IF ~~ BU.4 
SAY @1388
IF ~~ EXIT 
END 

IF ~~ PID.Music 
SAY @1389
IF ~RandomNum(5,1)~ DO ~PlaySound("X3RFL1")~ EXIT 
IF ~RandomNum(5,2)~ DO ~PlaySound("X3RFL2")~ EXIT 
IF ~RandomNum(5,3)~ DO ~PlaySound("X3RFL3")~ EXIT 
IF ~RandomNum(5,4)~ DO ~PlaySound("X3RFL4")~ EXIT 
IF ~RandomNum(5,5)~ DO ~PlaySound("X3RFL5")~ EXIT 
END 

IF ~~ FixString 
SAY @1391
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3RReset")~ EXIT 
END 


END 