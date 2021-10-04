/*Non Essential Interjections*/

// Chapter 6 & 7

I_C_T SUAVATAR 5 X3EmiSUAVATAR5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @0
END 

I_C_T SUDEMIN 40 X3EmiSUDEMIN-40
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @1
DO ~LeaveParty()Enemy()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @2
DO ~LeaveParty()Enemy()~
== SUDEMIN @3
END


I_C_T SUDEMIN 32 X3EmiSUDEMIN-32
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @5
END

I_C_T C6CORAN 24 X3EmiC6CORAN-24
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN @6
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@100106)~
== C6CORAN @7
END 


I_C_T C6CORAN 1 X3EmiC6CORAN-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN @8
END 

I_C_T C6DRIZZ1 55 X3EmiC6DRIZZ1-55
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 48 X3EmiC6DRIZZ1-48
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 41 X3EmiC6DRIZZ1-41
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 18 X3EmiC6DRIZZ1-18
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @10
== C6DRIZZ1 @11
END



I_C_T C6DRIZZ1 9 X3EmiC6DRIZZ1-9
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 5 X3EmiC6DRIZZ1-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6ELHAN2 45 X3EmiC6ELHAN2-45 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @12
END

//Underdark 

I_C_T UDSVIR08 13 X3EmiUDSVIR08-13 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @13
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @14
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@400416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @15
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@300316)~
== UDSVIR08 @16
END 


I_C_T UDSVIR08 1 X3EmiUDSVIR08-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("SolaufeinJob","GLOBAL",7)~ THEN @17
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @18
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@400409)~
== UDSVIR08 @19
END 

//Once again, Recorder will also leave if Emily departs.

I_C_T UDDEMON 8 X3EmiUDDEMON-22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @20
DO ~LeaveParty()Enemy()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @21
DO ~LeaveParty()Enemy()~
== UDDEMON @22
END

I_C_T UDDEMON 8 X3EmiUDDEMON-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @23
DO ~LeaveParty()EscapeArea()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @24
DO ~LeaveParty()EscapeArea()~
END

I_C_T UDPHAE01 61 X3EmiUDPHAE01-61
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @25
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @26
END

I_C_T UDPHAE01 136 X3EmiUDPHAE01-136
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @27
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @28
END


INTERJECT UDPHAE01 61 X3EmiUDPHAE01-61
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @29
EXTERN UDPHAE01 62


I_C_T UDSOLA01 139 X3EmiUDSOLA01-139
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @30
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
END 

I_C_T UDSOLA01 131 X3EmiUDSOLA01-131
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @30
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
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
@31
EXIT 


I_C_T UDDROW26 4 X3RebUDDROW26
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @32
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
END 

I_C_T DASLAVE1 6 X3EmiDASLAVE1-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @33
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@100109)~
END 

INTERJECT DASLAVE1 4 X3EmiDASLAVE1-4  
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @34
DO ~SetGlobal("X3EmiSlaveForce","GLOBAL",1)IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~ //Emily disapproves and prevents any approval shifts from other people.
END 
IF ~Global("DrowSlavesFree","GLOBAL",2)~ EXTERN DASLAVE1 7
IF ~Global("DrowSlavesFree","GLOBAL",2)~ EXTERN DASLAVE1 8

I_C_T DASLAVE1 7 X3EmiDASLAVE1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiSlaveForce","GLOBAL",0)~ THEN @35
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@100119)~
END 

I_C_T UDILSLA2 14 X3EmiUDILSLA2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @36
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
END 

I_C_T UDSIMYAZ 16 X3EmiUDSIMYAZ16
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @37
END 

I_C_T UDSILVER 25 X3EmiUDSILVER-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @38
END 

I_C_T UDSILVER 45 X3VieUDSILVER-45
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @39
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~
END 

I_C_T UDSILVER 49 X3EmiUDSILVER-49
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @40
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T UDSILVER 9 X3EmiUDSILVER-9
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @41
END 

I_C_T UDSVIR05 8 X3EmiUDSVIR05-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @42
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END 

I_C_T UDSVIR05 6 X3EmiUDSVIR05-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @43
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END 

I_C_T UDSVIR05 21 X3RebUDSVIR05-21
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @44
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== UDSVIR05 @45
END

I_C_T UDSVIR05 23 X3RebUDSVIR05-23
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @44
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== UDSVIR05 @45
END



I_C_T UDSVIR05 25 X3RebUDSVIR05
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @46
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
END

I_C_T UDSVIR01 8 X3EmiUDSVIR01-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @47
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
END


I_C_T UDTRAP02 13 X3EmiUDTRAP02-13
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @48
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
END

I_C_T UDTRAP02 10 X3EmiUDTRAP02-10
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @49
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @50
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@500516)~
== UDTRAP02 @51
END

I_C_T UDTRAP02 11 X3EmiUDTRAP02-11
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @49
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @50
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@500516)~
END


I_C_T UDVITH 49 X3EmiUDVITH-49
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @52
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @53
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@500516)~
== UDVITH @54
END

I_C_T UDVITH 25 X3EmiUDVITH-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @55
END

//If the player ignores Emily, then if she is in the party, this will fire.
ADD_TRANS_ACTION UDVITH BEGIN 26 END BEGIN END ~SetGlobal("X3EmiAppChange","GLOBAL",4)~


I_C_T KORGANJ 146 X3EmiKORGANJ-146
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @56
END

I_C_T UDDUER03 7 X3EmiUDUDER03-7
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @57
END

//Unlike Emily, Recorder won't do this sequence herself, but will join Emily and fight against the player if they're both in the party.
INTERJECT UDSVIR03 27 X3EmiUDSVIR03-27 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @58
END 
++ @59 EXTERN UDSVIR03 26
++ @60 DO ~SetGlobal("SvirHostile","GLOBAL",1)
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
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @61
END

INTERJECT SAHBEH01 27 X3EmiSAHBEH01-27
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @62
EXTERN SAHBEH01 33

I_C_T SAHKNG01 68 X3EmiSAHKNG01-68
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @63
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END

I_C_T SAHBAR03 1 X3EmiSAHBAR03-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @64
END

I_C_T KELDORJ 198 X3EmiKELDORJ198
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @65
END

I_C_T SAHPR1 12 X3EmiSAHPR12 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @66
END

I_C_T PPSAEM2 24 X3EmiPPSAEM2-24
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @67
END


I_C_T PPSAEM2 8 X3EmiPPSAEM2-8
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Emi")~ THEN @68
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @69
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @70
== PPSAEM2 @71
END 

I_C_T PPSAEM2 19 X3EmiPPSAEM2-19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @72
END

I_C_T PPJOYE2 6 X3EmiPPJOYE2-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @73
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@100103)~
END 


EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Emi") Global("X3EmiPartyBG1","GLOBAL",1)~ + @74 EXTERN X3EmiJ X3EmiPPIMOEN0
END

I_C_T IMOEN2 22 X3EmiIMOEN22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @75
END 

CHAIN X3EmiJ X3EmiPPIMOEN0
@76
EXTERN PPIMOEN 1

I_C_T PPAPHRIL 0 X3EmiPPAPRHIL0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @77
END

I_C_T PPDILI 6 X3EmiPPDILI6
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN @78
END 

I_C_T PPNALJ 3 X3EmiPPNALJ3
== X3EmiJ IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Emi")~ THEN @79
== X3HelJ @80
END 



I_C_T PIRMUR01 2 X3EmiPIRMUR01-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @81
END 

I_C_T PIRCOR05 22 X3RebPIRCOR05-22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @82
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
== PIRCOR05 @83
END 

I_C_T PPINN01 5 X3EmiPPINN01-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @84
END

I_C_T PIRCOR02 4 X3EmiPIRCOR02-4 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @85
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@100103)~
END 

I_C_T PIRCOR02 27 X3EmiPIRCOR02 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN @86
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
== PIRCOR02 @87
END 

I_C_T PPSAEM 58 X3HelPPSAEM58
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @88
END

I_C_T PIRCOR04 51 X3EmiPIRCOR04-51 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN @89
END 

I_C_T PIRCOR03 51 X3EmiPIRCOR03-51 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN @89
END 

//Chapter3 

I_C_T BODHI2 25 X3EmiBODHI2-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @90
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @91
== BODHI2 @1600
END

CHAIN IF WEIGHT #-1
~!NumberOfTimesTalkedTo(0)
!InPartySlot(LastTalkedToBy,0)
Name("X3Emi",LastTalkedToBy)  
Global("X3Emi","LOCALS",0)~ THEN ARNGRL01 X3Emi 
@92
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ @93
== ARNGRL01 @94
== X3EmiJ @95
EXIT 


I_C_T ARAN 77 X3EmiARAN77 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @96
END 

I_C_T ARAN 53 X3EmiARAN53 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @97
END 

I_C_T ARAN 3 X3EmiARAN3
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @98
END  

I_C_T ARNBOY01 0 X3EmiARNBOY01-0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @99
END 

I_C_T BOOTER 18 X3EmiBooter18 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @100
END 

I_C_T BOOTER 2 X3EmiBooter2-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @101
END

//Watcher's Keep

 

I_C_T GORAPP1 14 X3EmiGORAPP1-14
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @102
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END 


I_C_T GORAPP1 16 X3EmiGORAPP1-16
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @103
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END 



I_C_T GORDEMO 18 X3EmiGORDEMO 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @104
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T GORDEMO 1 X3EmiGORDEMO
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @105
END  


I_C_T GORCAR 15 X3EmiGORCAR 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @106
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @107
END 

I_C_T GORSUC01 7 X3EmiGORSUC01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @108
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T GORCAMB 0 X3EmiGORCAMB0
== GORCAMB IF ~IsValidForPartyDialogue("X3Emi") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @109
== X3EmiJ @110
== GORCAMB @111
END

I_C_T GORMAD1 39 X3EmiGormad1-39 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @112
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~
== GORMAD1 @113
END 

I_C_T GORMAD1 40 X3EmiGormad1-40 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @112
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~
== GORMAD1 @113
END 

I_C_T GORMAD1 41 X3EmiGormad1-41 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @114
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @115
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@400406)~
== GORMAD1 @116
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Emi",LastTalkedToBy)~ EXTERN X3EmiJ Yackman
END

CHAIN X3EmiJ Yackman  
@117
EXTERN GORMAD1 11

I_C_T GORCHR 0 X3EmiGORCHR0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @118
END

I_C_T GORODR1 53 X3HelGORODR1-53
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @119
END 

I_C_T GORODR1 44 X3EmiGORODR1-44
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @120
END 

//Trademeet 

I_C_T TRSKIN02 14 X3EmiTRSKIN02-14
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @121
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~
END 

I_C_T TRSKIN02 31 X3EmiTRSKIN02-31
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @122
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~
END 

I_C_T CEFALD04 3 X3EmiCEFALD04
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @123
DO ~ActionOverride("X3Emi",LeaveParty())
ActionOverride("X3Emi",Enemy())~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @124
DO ~ActionOverride("X3Reb",LeaveParty())
ActionOverride("X3Reb",Enemy())~
END


I_C_T TREVIL01 33 X3EmiTREVIL01-33
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @125
== TREVIL01 @126
END 

I_C_T TREVIL01 34 X3EmiTREVIL01-34
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @125
== TREVIL01 @126
END 

I_C_T BJAHEIR 19 X3EmiBJAHEIR-19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @127
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
== BJAHEIR @128
END 

I_C_T CERND 12 X3EmiCERND-12
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @129
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
== CERND @130
END 

I_C_T CELOGAN 79 X3EmiCELOGAN79
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @131
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 

I_C_T CELOGAN 86 X3EmiCELOGAN86
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @132
END 

I_C_T TRCUT07 4 X3RebTRCUT07-4
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @133
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~ 
END 

I_C_T TRPLE01 19 X3EmiTRPLE01-19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @134
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~ 
== TRPLE01 @135
END 

I_C_T TRTAVP05 1 X3EmiTRTAVP05-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @136
END 

I_C_T GPHIL01 3 X3EmiGPHIL01
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @137
DO ~Attack("gphil03")~
END 

I_C_T TRGRD03 22 X3EmiTRGRD03-22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @138
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@100109)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @139
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@400406)~ 
== TRGRD03 @140
END 

I_C_T TRHMER01 38 X3EmiTRHMER01-38
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @141
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~ 
END 

//Umar Hills 
/*In order of Interject preference: Emily < Helga < Kale*/
INTERJECT MAZZY 6 X3EmiMAZZY6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @142
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~ 
EXTERN MAZZY 13

I_C_T PLMETR01 25 X3EmiPLMETR01-25
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @143
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~ 
END 

I_C_T PLFARM06 2 X3EmiPLFARM06-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @144
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~ 
== PLFARM06 @145 
END 

I_C_T VALYGAR 28 X3EmiVALYGAR28
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @146
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@400409)~ 
== VALYGAR @147
END 

I_C_T VALYGAR 27 X3EmiVALYGAR27
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @148
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@400409)~ 
== VALYGAR @147
END 

I_C_T GEMFAR02 10 X3EmiGEMFAR02-10
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @149
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@400406)~ 
END 

I_C_T UHKID03 8 X3EmiUHKID03-8
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @150
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 

I_C_T UHKID02 9 X3EmiUHKID02-9
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @150
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 

I_C_T JUGJER01 32 X3EmiJUGJER01-32 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @151
END 

I_C_T JUGJER01 5 X3EmiJUGJER01-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @152
END 

INTERJECT UHMAY01 141 X3EmiUHMAY01-141 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @153 
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~ 
EXTERN UHMAY01 142 

I_C_T UHMAY01 138 X3EmiUHMAY01-138 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @154
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 

I_C_T UHMAY01 88 X3EmiUHMAY01-88 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @155
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 

I_C_T UHMAY01 24 X3EmiUHMAY01-24 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @156
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 

//Windspear Hills 

I_C_T SAMIA 10 X3EmiSAMIA10 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @157
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @158
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN @159
END



I_C_T FIRKRA02 25 X3EmiFIRKRA02-25 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @160
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @161
== FIRKRA02 @162
END 

I_C_T FIRKRA02 21 X3EmiFIRKRA02-21 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @163
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@100103)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @164
END

I_C_T FIRKRA02 32 X3EmiFIRKRA02-32 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @165
DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()LeaveParty()
EscapeArea()~ 
END  

I_C_T FIRKRA02 29 X3EmiFIRKRA02-29 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @166
END  

I_C_T GARREN 49 X3EmiGarren49 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Dead("firkra02")~ THEN @167
DO ~IncrementGlobal("X3EmiApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@100119)~ 
END 

I_C_T GARREN 51 X3EmiGarren51 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Dead("firkra02")~ THEN @167
DO ~IncrementGlobal("X3EmiApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@100119)~ 
END 

I_C_T GARREN 27 X3EmiGARREN27 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @168
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~ 
END

//De'Arnise

I_C_T KPMAID01 14 X3EmiKPMAID01-14 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @169
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 

I_C_T KPMAID01 15 X3EmiKPMAID01-15 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @170
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~ 
END 

I_C_T KPMAID01 16 X3EmiKPMAID01-16 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @171
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~ 
END 

I_C_T KPRANG01 9 X3EmiKPRANG01-9 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @172
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@100106)~ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @173
== KPRANG01 @174
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@400413)~ 
END 


I_C_T KPRANG02 5 X3EmiKPRANG02-5 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @175
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 

I_C_T KPRANG02 6 X3EmiKPRANG02-6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @176
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 

I_C_T DELCIA 9 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @177
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-8)
DisplayStringNoNameDlg(Player1,@100109)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @178
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@400406)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @179
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@500506)~ 
== DELCIA @180
END 

INTERJECT DELCIA 1 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @181
EXTERN DELCIA 48  

INTERJECT DELCIA 3 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @181
EXTERN DELCIA 48  

INTERJECT DELCIA 4 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @181
EXTERN DELCIA 48  

INTERJECT DELCIA 7 X3EmiDELCIA 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Vie")~ THEN @181
EXTERN DELCIA 48 

I_C_T KPGRD01 13 X3EmiKPGRD01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @182
DO ~IncrementGlobal("X3EmiApp","GLOBAL",8)
DisplayStringNoNameDlg(Player1,@100119)~ 
END 

I_C_T KPGRD01 0 X3EmiKPGRD01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @183
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 

I_C_T KPGRD01 12 X3EmiKPGRD01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @184
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100113)~ 
END 


INTERJECT DALESON 13 X3EmiDaleson13
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @185
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~ 
EXTERN DALESON 14

I_C_T KPCAPT01 42 X3EmiKPCAPT04 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @186
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 
//Wild Mage
I_C_T OHNQUAID 4 X3EmiOHNQUAID 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @187
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @188
END 

//Althkata Interjects 

I_C_T CRTHF03 0 X3VieCRTHF03 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @189
END 

I_C_T MESSEN 3 X3EmiMESSEN3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @190
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 


I_C_T LYROS 19 X3EmiLYROS19
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @191
END

I_C_T EMBARL 6 X3EmiEMBARL6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @192
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~ 
== EMBARL @193
END


I_C_T EDWIN 1 X3EmiEDWIN1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @194
== EDWIN @195
END

I_C_T ELGEA 6 X3EmiElgea4
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @196
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @197
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @198
END 

INTERJECT ELGEA 6 X3EmiELGEA6 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @199
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@100109)~ 
EXTERN Elgea Emily 

INTERJECT ELGEA 7 X3EmiELGEA7
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @200
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@100106)~ 
EXTERN Elgea Emily 

CHAIN Elgea Emily 
@201
EXTERN Elgea 10

I_C_T BODHI 20 X3EmiBODHI20 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @202
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~ 
END 

I_C_T BODHI 18 X3EmiBodhi18
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @203
DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~ 
END 

I_C_T BODHI 6 X3EmiBODHi6 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @204
END

I_C_T BODHI 1 X3EmiBODHI1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @205
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @206
END 

I_C_T KAMIR 4 X3EmiKamir4 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @207
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 

I_C_T KAMIR 23 X3EmiKAMIR 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @208
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~ 
END 


CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,1)
Global("X3Emi","LOCALS",0)~ THEN FFCUST05 X3Emi
@209
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ @210
EXIT 

INTERJECT GGUARD01 1 X3EmiGGUARD01
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @211
== X3EmiJ IF ~Global("Gavegbegg","AR1000",0)~ THEN @212
DO ~ActionOverride("Gbegg01",TakePartyGold(5))~
EXTERN GGUARD01 4

I_C_T VICONIJ 79 X3EmiViconiJ79
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @213
END 

I_C_T PTAGGET 24 X3EmiPTAGGET24
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @214
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~ 
END 

I_C_T RAELIS 79 X3EmiRaelis79 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @215
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 

I_C_T RAELIS 76 X3EmiRaelis76 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @215
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~ 
END 

I_C_T TANNER 18 X3EmiTanner18
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @216
== TANNER @217
END 

I_C_T BBEGG2 1 X3EmiBBEGG2-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Kal")~ THEN @218
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@100113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @219
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@500503)~
END

INTERJECT LOUT 22 X3EmiLOUT22 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @220
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)Attack("Dennis")~  // Captain Dennis
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @221 // Recorder only attacks in this version.
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)Attack("Dennis")~ 
EXIT 

I_C_T OHHFAK 33 X3EmiOHHFAK-33
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @222
END 

I_C_T HEXXAT 0 X3EmiHEXXAT-0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @223
== HEXXAT @224
END 

I_C_T ISAEA 29 X3EmiISAEA29
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @225
END 

I_C_T MARIA 5 X3EmiMARIA-5
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @226
END 

I_C_T YUSUF 2 X3RebYUSUF2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @227
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @228
END 


I_C_T HIDDEN 13 X3EmiHidden13
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")Global("SawIllithid","LOCALS",1)~ THEN @229
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @230
== HIDDEN @231
END 

I_C_T GERHAR 17 X3EmiGERHAR17
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @232
END 

I_C_T BBEGG2 4 X3EmiBBEGG2-4
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @233
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @234
== BBEGG2 @235
END 

I_C_T BBEGG1 1 X3EmiBBEGG1-1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3TalkedToBeggar","GLOBAL",0)~ THEN @236
DO ~SetGlobal("X3TalkedToBeggar","GLOBAL",1)IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@100113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @237
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@500503)~
END


I_C_T SCSARLES 11 X3EmiSCSARLES11 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @238
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @239
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @240
END

I_C_T SCQAR 0 X3EmiSCQAR0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EGVJQuest","GLOBAL",0)~ THEN @241
== SCQAR @242
END 

I_C_T SCLJYSS 0 X3EmiSCLJYSS0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3EGVJQuest","GLOBAL",0)~ THEN @243
== SCQAR @244
END 

INTERJECT TOLGER 80 X3EmiTOLGER80
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN
@245
EXTERN TOLGER 81

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN ORIONA X3Emi
@246
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ @247
== ORIONA @248
== X3EmiJ @249 
EXIT 

I_C_T TOLGER 36 X3EmiTolger36 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @250
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@100109)~
END 

I_C_T VICONI 11 X3EmiVICONI11 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @251
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @252
DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@400413)~
END 

I_C_T VICONI 2 X3VieVICONI2
 == X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @253
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
END 

I_C_T TOLGER 21 X3EmiTOLGER23
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @254
END 

I_C_T VICG1 4 X3EmiVICG14
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @255
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @256
END  

I_C_T MEKRAT 16 X3EmiMEKRAT16 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @257
END

I_C_T SASSAR 29 X3EmiJSASSAR29
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @258
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END 

I_C_T SASSAR 30 X3EmiJSASSAR29
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @259
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T MEKRAT 16 X3EmiMEKRAT16 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @260
END

I_C_T GAAL 22 X3EmiGaal
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @261
END 

I_C_T GAAL 20 X3EmiGaal
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @262
END 

I_C_T Garrick 2 GarrickX3Emi2 
== X3EmiJ IF ~See("X3Emi")IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN @263
== Garrick @264
== X3EmiJ @265
END

 
CHAIN IF WEIGHT #-1 
~See("X3Emi")  // X3Emi
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Emi")  // X3Emi
RandomNum(2,1)
Global("Prophet4X3Emi","LOCALS",0)~ THEN PROPHET4 Emily
@266
DO ~SetGlobal("Prophet4X3Emi","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3EmiJ @267
EXIT 

I_C_T MAEVAR 14 X3EmiMAEVAR14 //No penalty, since the player doesn't have much of a choice and she's already unhappy with assisting thieves.
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @268
END

I_C_T MAEVAR 31 X3EmiMAEVAR31 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @269
END

I_C_T DCLERIC 1 X3EmiDCLERIC1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @270
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
== DCLERIC @271
END

I_C_T DBEGGAR2 3 X3EmiDBEGGAR2-3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @272
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~
END

I_C_T DBEGGAR 6 X3EmiDBEGGAR 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @273
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@100103)~
END

I_C_T DBEGGAR2 2 X3EmiDBEGGAR2-2 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @274
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@100103)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @275
DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@500513)~
END

I_C_T DLOST 3 X3EmiDLOST3-3 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @276
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@100103)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @277
== DLOST @278
END

I_C_T DBEGGAR2 2 X3EmiDBEGGAR2-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3TalkedToBeggar","GLOBAL",0)~ THEN @236
DO ~SetGlobal("X3TalkedToBeggar","GLOBAL",1)IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@100113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @237
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@500503)~
END


I_C_T RENAL 22 X3EmiRenal22
== X3EmiJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @279
END 

I_C_T DHARLOT2 2 X3EmiDHARLOT2-2
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @280
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@100103)~
END 

I_C_T GIRL2 5 X3EmiGIRL25 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @281
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@100116)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @282
DO ~IncrementGlobal("X3Rebpp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@400416)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @283
== GIRL2 @284
END 

I_C_T GIRL2 4 X3RebGIRL24 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @285
DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@100113)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @286
DO ~IncrementGlobal("X3Rebpp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@400413)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @287
== GIRL2 @288
END 

I_C_T HAEGAN 3 X3EmiHAEGAN
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @289
== HAEGAN @290
END 

INTERJECT NALIA 109 X3EmiNalia109 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @291
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
EXTERN NALIA 50

I_C_T HENDAK 19 X3EmiHendak19 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @292
END 

I_C_T HENDAK 37 X3EmiHendak37 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @293
END

I_C_T AEMERCH 4 X3EmiAEMERCH 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @294
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END

I_C_T HENDAK 30 X3EmiHendak30 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @295
DO ~IncrementGlobal("X3EmiApp","GLOBAL",8)
DisplayStringNoNameDlg(Player1,@100119)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN @296
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@400416)~
END 


I_C_T HENDAK 7 X3RebHendak7 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @297
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @298
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@500513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @299
DO ~IncrementGlobal("X3HelApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@200213)~
END  

I_C_T KORGANJ 49 X3EmiKorganJ49 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @300
== KORGANJ @301
END 

I_C_T KORGANJ 47 X3EmiKorganJ47 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @302
END


I_C_T LEHTIN 26 X3EmiLEHTIN26 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @303
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
END 

I_C_T FIRKRA01 8 X3EmiFIRKRA01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @304
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @305
END 

I_C_T LEHTIN 9 X3EmiLEHTIN9 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @306
END 


I_C_T SCDUR 27 X3RebSCDUR
== X3EmiJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @307
DO ~IncrementGlobal("X3X3miApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T ANOMEN 9 X3EmiAnomen9 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @308
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END  

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN WAYLANE X3Emi
@309
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ @310
== WAYLANE @311
== X3EmiJ @312
== WAYLANE @313
== X3EmiJ @314
EXIT 



I_C_T BEGGAR2 6 X3EmiBeggar1-6 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @315
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@100113)~
END  

I_C_T BEGGAR2 8 X3EmiBeggar1-8 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @316
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@100106)~
END  

I_C_T BEGGAR1 2 X3EmiBeggar1-2 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @317
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END  

I_C_T BEGGAR1 1 X3EmiBeggar1-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @318
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@100113)~
END 

I_C_T BEGGAR3 1 X3EmiBeggar3-1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @319
DO ~IncrementGlobal("X3EmiApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@100113)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @320
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@500503)~
END 

I_C_T GAELAN 74 X3EmiGaelan74 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @321
END  

I_C_T GAELAN 66 X3VieGaelan74 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @322
END 

I_C_T CIRCG1 5 X3EmiCIRCG1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @323
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END

I_C_T BOY1 1 X3EmiBoy1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @324
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T AERIE 1 X3VieAerie1 
== X3EmiJ IF ~!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Emi")~ THEN @325
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN MURTLEN X3Emi
@326
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ @327
EXIT 

I_C_T TOWNC01 36 X3EmiTOWNC036
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @328
END 

I_C_T HAQUAT 0 X3EmiHAQUAT0 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @329
END 

I_C_T TOWNC01 1 X3EmiTOWNC01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @330
END 

I_C_T TOWNC01 15 X3EmiTOWNC015 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @331
END 

I_C_T TOWNC01 3 X3EmiTOWNC03 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @332
END 

I_C_T TOWNC01 18 X3EmiTOWNC018
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @333
END 

I_C_T SEVPAT01 5 X3EmiSevPat01 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @334
== SEVPAT01 @335
END 

I_C_T WCUST02 5 X3EmiWCUST02
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @336
== WCUST02 @337
== X3EmiJ @338
END

I_C_T WCUST03 2 X3EmiWCUST03 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @339
== WCUST03 @340
END 

I_C_T WCUST05 0 X3EmiWCUST05 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @341
== WCUST05 @342
END 

I_C_T DEGARD 6 X3EmiDEGARD6
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @343
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @344
DO ~IncrementGlobal("X3HelApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@200216)~
END

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
Global("X3Emi","LOCALS",0)~ THEN BELMIN X3Emi
@345
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ @346
== BELMIN @347
== X3EmiJ @348
EXIT 


/*Story/Essential Interjections*/


//Celvan
CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
RandomNum(2,2)
Global("X3Emi","LOCALS",0)~ THEN CELVAN X3Emi
@349
DO ~SetGlobal("X3Emi","LOCALS",1)~
== X3EmiJ @350
EXTERN CELVAN 1


//Madam Nin
EXTEND_BOTTOM MADAM 0
IF ~Name("X3Emi",LastTalkedToBy)~ EXTERN X3EmiJ X3EmiMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Emi",LastTalkedToBy)~ EXTERN X3EmiJ X3EmiMadam
END


CHAIN X3EmiJ X3EmiMadam 
@351
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Emi")
IsValidForPartyDialogue("X3Emi")
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("X3EmiRomanceActive","GLOBAL",1)
Global("X3EmiRomanceActive","GLOBAL",2)~ THEN MADAM X3EmiMadam
@352
== X3EmiJ @353
EXTERN MADAM 17

//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Emi",LastTalkedToBy)~ EXTERN TRGYP02 X3Emig1
END

CHAIN TRGYP02 X3Emig1
@354
== X3EmiJ @355
EXIT

//Sylvanas 
CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Emi",LastTalkedToBy)~ THEN SALVANAS X3EmiSalvanas
@356
== X3EmiJ @357
== SALVANAS @358
== X3EmiJ @359
== SALVANAS @360
== X3EmiJ @361
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3EmiYOSHJ113
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @362
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi") Range("X3Emi",15)~ THEN
@363
END
++ @364 EXTERN X3EmiJ spellhold.1
++ @365 EXTERN X3EmiJ spellhold.1
++ @366 EXTERN X3EmiJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3EmiJ spellhold.1
@367
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @368
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @369
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @370 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @371
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3EmiFirstSlayerChange1 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")See("X3Emi")~ THEN @372
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3EmiSecondSlayerChange0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi") OR(2) Global("X3EmiRomanceActive","GLOBAL",1) Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @373
END
++ @374 EXTERN X3EmiJ X3EmiSecondSlayerChange1
++ @375 EXTERN X3EmiJ X3EmiSecondSlayerChange1
++ @376 EXTERN X3EmiJ X3EmiSecondSlayerChange1

CHAIN X3EmiJ X3EmiSecondSlayerChange1
@377
DO ~SetGlobal("X3EmiSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3EmiSlayerSurvived1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi") OR(2) Global("X3EmiRomanceActive","GLOBAL",1) Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSecondSlayerChange","GLOBAL",1)~ THEN @378
= @379
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Emi") Global("X3EmiSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END


// Phaere

CHAIN IF ~Global("X3EmiCheckMad1","GLOBAL",1)Global("X3EmiMad1","LOCALS",0)~ THEN X3EmiJ Phaere_Warning
@380 
DO ~SetGlobal("X3EmiMad1","LOCALS",1)~
END 
++ @381 + PW.1 
++ @382 + PW.2 
++ @383 + PW.3

CHAIN X3EmiJ PW.1 
@384
END 
++ @382 + PW.2 
++ @383 + PW.3

CHAIN X3EmiJ PW.2 
@385
EXIT 

CHAIN X3EmiJ PW.3 
@386
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-10)DisplayStringNoNameDlg(Player1,@100109)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3EmiRomanceActive","GLOBAL",1)
Global("X3EmiRomanceActive","GLOBAL",2)~ + @387 EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3EmiCheckMad2","GLOBAL",1)Global("X3EmiMad2","LOCALS",0)~ THEN X3EmiJ X3EmiPhaere
@388
DO ~SetGlobal("X3EmiMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3EmiJ X3EmiPhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3EmiJ X3EmiPhaere2

CHAIN X3EmiJ X3EmiPhaere1
@389
= @390
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@100109)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3EmiJ X3EmiPhaere2
@391
= @392
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@100116)~ 
EXIT

//Bodhi 
EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3EmiKidnap
END

CHAIN BODHIAMB X3EmiKidnap
@393
= @394
== X3EmiJ @395
== BODHIAMB @396
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3EBodhi")~ UNSOLVED_JOURNAL @10031 
EXIT

//Emily Not Kidnapped 

I_C_T C6BODHI 0 X3EmiC6Bodhi0
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @397
END

//Emily Kidnapped 

A_T_T C6bodhi 21 ~!Global("X3EmiVampire","GLOBAL",1)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("X3EmiVampire","GLOBAL",1)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("X3EmiVampire","GLOBAL",1)~ + @398 EXTERN C6BODHI X3EmiAb
+ ~Global("X3EmiVampire","GLOBAL",1)~ + @399 EXTERN C6BODHI X3EmiAb
+ ~Global("X3EmiVampire","GLOBAL",1)~ + @400 EXTERN C6BODHI X3EmiAb
+ ~Global("X3EmiVampire","GLOBAL",1)~ + @401 EXTERN C6BODHI X3EmiAbConf
END


CHAIN C6BODHI X3EmiAbConf
@402
END
IF ~~ EXTERN C6BODHI X3EmiAb

CHAIN C6BODHI X3EmiAb
@403
= @404
END
IF ~~ EXTERN C6BODHI 22


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiTreeOfLife","GLOBAL",0) !Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 Epl2
END

CHAIN PLAYER1 Epl2
@405
DO ~SetGlobal("X3EmiTreeOfLife","GLOBAL",1)~
END
+~Global("X3EmiHeir","GLOBAL",1)~+ @406 EXTERN X3EmiJ pl2.2
+~!Global("X3EmiHeir","GLOBAL",1)~+ @407 EXTERN X3EmiJ pl2.2
++ @408 EXTERN X3EmiJ pl2.1
++ @409 EXTERN X3EmiJ pl2.1

CHAIN X3EmiJ pl2.2 
@410
EXTERN X3EmiJ pl2.1

CHAIN X3EmiJ pl2.1
@411
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiTreeOfLife","GLOBAL",0) Global("X3EmiRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 Epl3
END

CHAIN PLAYER1 Epl3
@412
DO ~SetGlobal("X3EmiTreeOfLife","GLOBAL",1)~
END
++ @413 EXTERN X3EmiJ pl3.1

CHAIN X3EmiJ pl3.1
@414
= @415
= @416
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3EmiIrenicusIsDead1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @417
END

// Hell

I_C_T PLAYER1 25 X3EmiEnteringHell1
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @418
END

// Irenicus in hell

I_C_T HELLJON 7 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @419
END

I_C_T HELLJON 8 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @419
END

I_C_T HELLJON 9 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @419
END

I_C_T HELLJON 10 X3EmiThirdBattleWithIrenicus
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @419
END



//Conflicts 

//Hexxat Conflict 
CHAIN IF ~Global("X3EmiHexxatConflict","LOCALS",1)~ THEN X3EmiJ DornConflict 
@420
== HEXXATJ @421
== X3EmiJ @422
END 
++ @423 + TrustH 
++ @424 + UnderstandH
++ @425 EXTERN HEXXATJ Go_Hexxat
++ @426 + Go_EmilyH

CHAIN X3EmiJ TrustH 
@427
EXTERN X3EmiJ DismissH

CHAIN X3EmiJ DismissH
@428
END 
++ @425 EXTERN HEXXATJ Go_Hexxat
++ @426 + Go_EmilyH

CHAIN X3EmiJ UnderstandH 
@429
EXTERN X3EmiJ DismissH

CHAIN HEXXATJ Go_Hexxat 
@430
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",0)SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)~
EXIT 

CHAIN X3EmiJ Go_EmilyH 
@431
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)EscapeAreaMove("AR0704",531,622,SW)~
== X3EmiJ IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @432
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

// Dorn Conflict

CHAIN IF ~Global("X3EmiDornConflict","LOCALS",1)~ THEN X3EmiJ DornConflict 
@433
== DORNJ @434
== X3EmiJ @435
END 
++ @436 + Trust 
++ @424 + Understand
++ @437 EXTERN DORNJ Go_Dorn 
++ @426 + Go_Emily

CHAIN X3EmiJ Trust 
@438
EXTERN DORNJ Dismiss

CHAIN DORNJ Dismiss
@439
END 
++ @437 + Go_Dorn
++ @426 EXTERN X3EmiJ Go_Emily

CHAIN X3EmiJ Understand 
@429
EXTERN DORNJ Dismiss

CHAIN DORNJ Go_Dorn 
@440
DO ~SetGlobal("X3EmiDornConflict","LOCALS",0)SetGlobal("OHH_dornjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)EscapeAreaMove("AR0900",2556,3388,NE)~
EXIT 

CHAIN X3EmiJ Go_Emily 
@441
DO ~SetGlobal("X3EmiDornConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)EscapeAreaMove("AR0704",531,622,SW)~
== X3EmiJ IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @442
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

// Starts Emily's Quest. Fires after leaving the Mithrest Inn. 
// Note: We are cutting out the Marvin Yaris content, so revise in the future. 
// Will probably change this to talk 1, and thus, this will not fire after the inn but when the talk timer expires. 
CHAIN IF ~Global("X3miCraft","LOCALS",2)~ THEN X3EmiJ CraftingDone 
@443
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
@444
DO ~SetGlobal("X3EmiQuest","GLOBAL",2)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ @445 + Q1.1 
++ @446 + Q1.2 
++ @447 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Q1.3

CHAIN X3EmiJ Q1.1 
@448
== X3EmiJ @449
DO ~AddJournalEntry(@10002,QUEST)~
END 
++ @450 + Q1.5 
++ @451 + Q1.Exit 

CHAIN X3EmiJ Q1.2 
@452
== X3EmiJ @453
== X3EmiJ @454
END 
++ @455 + Q1.1 
++ @456 + Q1.4 
++ @457 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Q1.3 

CHAIN X3EmiJ Q1.3
@458 
EXTERN X3EmiJ Q1.1 

CHAIN X3EmiJ Q1.4 
@459
EXTERN X3EmiJ Q1.1  

CHAIN X3EmiJ Q1.5 
@460
END 
+~!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiPartyBG1","GLOBAL",1)~+ @461 + Q1.6 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ @462 + Q1.10 
++ @463 + Q1.11
++ @464 + Q1.Exit 

CHAIN X3EmiJ Q1.6 
@465
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
== X3EmiJ @466
== X3EmiJ @467
END 
++ @468 + Q1.7
++ @469 + Q1.8
++ @470 + Q1.9 

CHAIN X3EmiJ Q1.7
@471
DO ~SetGlobal("X3EmiInterest","LOCALS",1)IncrementGlobal("X3EmiAppChange","GLOBAL",5)~ // Once the PC gets 30 approval, the Romance line will start.
EXIT 

CHAIN X3EmiJ Q1.8 
@472
DO ~SetGlobal("X3EmiInterest","LOCALS",1)~
EXIT 

CHAIN X3EmiJ Q1.9 
@473
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~
EXIT 

CHAIN X3EmiJ Q1.10 
@474
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3EmiJ Q1.12 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3EmiJ Q1.13 

CHAIN X3EmiJ Q1.11 
@475
== X3EmiJ @476
END 
+~Gender(Player1,MALE)!Alignment(Player1,MASK_EVIL)Global("X3EmiPartyBG1","GLOBAL",1)~+ @461 + Q1.6 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ @462 + Q1.10 
++ @477 + Q1.Exit 

CHAIN X3EmiJ Q1.Exit 
@478 
EXIT 

CHAIN X3EmiJ Q1.12 
@479
== X3RebJ @480
EXTERN X3EmiJ Q1.14 

CHAIN X3EmiJ Q1.14 
 @481
END 
+~Gender(Player1,MALE)!Alignment(Player1,MASK_EVIL)Global("X3EmiPartyBG1","GLOBAL",1)~+ @461 + Q1.6 
++ @482 + Q1.15 
++ @477 + Q1.Exit 

CHAIN X3EmiJ Q1.13 
@483
== X3EmiJ @484
EXTERN X3EmiJ Q1.14 

CHAIN X3EmiJ Q1.15 
@485
== X3EmiJ @486
END 
+~Gender(Player1,MALE)!Alignment(Player1,MASK_EVIL)Global("X3EmiPartyBG1","GLOBAL",1)~+ @461 + Q1.6 
++ @463 +Q1.11
++ @477 + Q1.Exit 

// 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",3)AreaCheck("AR2600")~ THEN X3EmiJ Emily_quest_leave 
@487
END // If the party doesn't go with Emily, she'll only succeed if she has the support of both. Otherwise in our partyless simulation we assume an Emily defeat.
IF ~Global("X3EGVJVote","GLOBAL",1)Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@10013,QUEST)SetGlobal("X3EmiKickedOut","LOCALS",1)LeaveParty()EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",1)~  EXIT 
IF ~OR(2)!Global("X3EGVJVote","GLOBAL",1)!Global("X3ECHVote","GLOBAL",1)~ DO ~AddJournalEntry(@10013,QUEST)SetGlobal("X3EmiKickedOut","LOCALS",1)LeaveParty()EscapeAreaMove("AR0704",371,445,SW)SetGlobal("X3EmiHeir","GLOBAL",-1)~ EXIT // 

CHAIN IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiQuest","GLOBAL",5)~ THEN X3EmiJ finale.1
@488
== X3EFATH @489
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
+~Global("X3EGVJQuest","GLOBAL",0)Global("X3Butler","LOCALS",0)~+ @490 DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN SCBUTLER Jurgenson_butler 
END 

CHAIN SCBUTLER Jurgenson_butler 
@491
EXIT 
//Only fires post event, copper coronet not yet arrived to.
CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)Global("X3EmiQuestInterject","LOCALS",1)~ THEN X3EmiJ quest_6
@492
DO ~SetGlobal("X3EmiQuestInterject","LOCALS",2)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ @493 + q6.1 
++ @494 + q6.2 
++ @495 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + q6.3

CHAIN X3EmiJ q6.1 
@496
EXTERN X3EmiJ q6.4

CHAIN X3EmiJ q6.2 
@497
EXTERN X3EmiJ q6.4 

CHAIN X3EmiJ q6.3 
@498
EXTERN X3EmiJ q6.4 

CHAIN X3EmiJ q6.4 
@499
EXIT 

// Only fires if Emily was not Heir and quest concluded once they return to the Promenade.
CHAIN IF ~Global("X3EmiQuest","GLOBAL",11)~ THEN X3EmiJ bad_quest_end 
@500
DO ~SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @501 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + bq.1 
++ @502 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + bq.2
++ @503 + bq.2 
++ @504 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + bq.3

CHAIN X3EmiJ bq.1 
@505
EXTERN X3EmiJ bq.love


CHAIN X3VieJ bq.V.interject 
@506
== X3EmiJ @507
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.love
IF ~!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.6

CHAIN X3EmiJ bq.3 
@508
== X3EmiJ @509
END 
++ @510 + bq.2 
++ @511 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + bq.4 
++ @512 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + bq.5 

CHAIN X3EmiJ bq.5
@513
EXIT 

CHAIN X3EmiJ bq.4
@514
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ bq.V.interject 
IF ~!IsValidForPartyDialogue("X3Vie")Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.love
IF ~!IsValidForPartyDialogue("X3Vie")!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.6

CHAIN X3EmiJ bq.2 
@515
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ bq.V.interject 
IF ~!IsValidForPartyDialogue("X3Vie")Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.love
IF ~!IsValidForPartyDialogue("X3Vie")!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ bq.6

CHAIN X3EmiJ bq.love 
@516
END 
++ @517 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + bq.7
++ @518 + bq.6 
++ @519 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~  + bq.6 
++ @520 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~  + bq.6

CHAIN X3EmiJ bq.6 
@521
EXIT 

CHAIN X3EmiJ bq.7
@522
EXTERN X3EmiJ bq.6


// Player killed Thomas 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",8)Dead("X3EBRO")!Global("X3EmiDuel","GLOBAL",1)~ THEN X3EmiJ Thomas_killed 
@523
DO ~AddJournalEntry(@10019,QUEST_DONE)SetGlobal("X3EmiHeir","GLOBAL",1)SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",6)AddexperienceParty(29750)~
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @524 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + embrace 
++ @525 + heir_now 
++ @526 + heir_now 
// Player spared Thomas 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",8)!Dead("X3EBRO")!Global("X3EmiDuel","GLOBAL",1)~ THEN X3EmiJ Thomas_spared 
@527
DO ~AddJournalEntry(@10019,QUEST_DONE)SetGlobal("X3EmiHeir","GLOBAL",1)SetGlobal("X3EmiQuest","GLOBAL",10)AddexperienceParty(29750)SetGlobal("X3EmiAppChange","GLOBAL",7)~
END 
++ @528 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + heir_now
++ @529 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + heir_now
++ @530 + heir_now

CHAIN X3EmiJ heir_now 
@531
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @532 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ EXTERN X3EFATH romance 
++ @533 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ EXTERN X3EFATH do_now 
++ @534 EXTERN X3EFATH do_now 


CHAIN X3EmiJ embrace
@535
EXTERN X3EFATH romance 

CHAIN X3EFATH romance 
@536
== X3EmiJ @537
END 
IF ~Race(Player1,HUMAN)~ EXTERN X3EFATH human
IF ~!Race(Player1,HUMAN)~ EXTERN X3EFATH not_human 

CHAIN X3EFATH not_human 
@538
== X3EmiJ @539
END 
IF ~Dead("X3EBRO")~ EXTERN X3EFATH perhaps_dead 
IF ~!Dead("X3EBRO")~ EXTERN X3EFATH perhaps_alive

CHAIN X3EFATH perhaps_dead 
@540
== X3EmiJ @541
== X3EFATH @542
EXTERN X3EFATH do_now 

CHAIN X3EFATH perhaps_alive 
@543
EXTERN X3EFATH do_now 


CHAIN X3EFATH human 
@544
END 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ human_dead 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ human_alive 

CHAIN X3EmiJ human_dead 
@545
== X3EFATH @546
EXTERN X3EFATH do_now 

CHAIN X3EmiJ human_alive 
@547
== X3EFATH @548
EXTERN X3EFATH do_now 

CHAIN X3EFATH do_now 
@549
== X3EmiJ @550
== X3EFATH @551
== X3EFATH @552
DO ~EscapeArea()~
EXIT 

// The last version is Emily talking to the player after she wins. 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",8)Global("X3EmiDuel","GLOBAL",1)~ THEN X3EmiJ Emily_won
@553
DO ~SetGlobal("X3EmiDuel","GLOBAL",2)SetGlobal("X3EmiHeir","GLOBAL",1)SetGlobal("X3EmiAppChange","GLOBAL",6)AddJournalEntry(@10019,QUEST_DONE)SetGlobal("X3EmiQuest","GLOBAL",10)AddexperienceParty(29750)~ // To turn off Emily's permanent death.
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @524 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + embrace 
++ @554 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + traveling_helped 
++ @555 + now_heir 

CHAIN X3EmiJ traveling_helped 
@556
EXTERN X3EFATH do_now 

CHAIN X3EmiJ now_heir
@557
EXTERN X3EFATH do_now                            

// Surly. If both Helga's and Emily's quest are finished, you can go back in and retrieve Thomas's lost sword or other items.
EXTEND_BOTTOM SURLY 4 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ @558 DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost
END 

EXTEND_BOTTOM SURLY 6 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ @558 DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost 
END 

EXTEND_BOTTOM SURLY 7 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ @558 DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost  
END 

EXTEND_BOTTOM SURLY 14 #4
+~Global("X3EmiQuest","GLOBAL",10)GlobalGT("X3HelQuest","GLOBAL",8)~+ @558 DO ~SetGlobal("X3Butler","LOCALS",1)~ EXTERN Surly enter_pit_cost
END 

CHAIN SURLY enter_pit_cost 
@559
END 
+~PartyGoldGT(49)~+ @560 DO ~TakePartyGold(50)~ + enter_pit 
++ @561 + no_enter 
++ @562 + no_enter 

CHAIN SURLY no_enter 
@563
EXIT 

CHAIN SURLY enter_pit
@564
DO ~SetGlobalTimer("X3Pit","GLOBAL",TWO_ROUNDS)SetGlobal("X3PitMove","GLOBAL",1)ActionOverride(Player1,JumpToPoint([769.1728]))~ // The player has 12 seconds to collect whatever they need.
EXIT                                  

// Talk1 
 CHAIN IF ~Global("X3EmiTalk","LOCALS",2)~ THEN X3EmiJ Talk1
@565
DO ~IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ @566 + T1.1 
++ @567 + T1.2 
++ @568 + T1.1

CHAIN X3EmiJ T1.1
@569
EXTERN X3EmiJ T1.2 

CHAIN X3EmiJ T1.2 
@570
END 
++ @571 + T1.9 
++ @572 + T1.5
++ @573 + T1.4

CHAIN X3EmiJ T1.4 
@574
EXTERN X3EmiJ T1.3

CHAIN X3EmiJ T1.3 
@575            
END 
++ @576 + T1.5
++ @577 + T1.5
++ @578 + T1.6
++ @579 + T1.8
++ @580 + T1.7
++ @581 + T1.5

CHAIN X3EmiJ T1.5 
@582          
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.6 
@583
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.7
@584
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.8 
@585 
EXTERN X3EmiJ T1.9

CHAIN X3EmiJ T1.9 
@586
= @587
END 
++ @588 + T1.11
++ @589 + T1.12 
++ @590 DO ~SetGlobal("X3EmiInterest","LOCALS",1)~ + T1.10 

CHAIN X3EmiJ T1.10 
@591
EXTERN X3EmiJ T1.13

CHAIN X3EmiJ T1.11 
@592
EXTERN X3EmiJ T1.13

CHAIN X3EmiJ T1.12
@593
EXTERN X3EmiJ T1.11  

CHAIN X3EmiJ T1.13 
@594
EXIT 

// Talk 2
CHAIN IF ~Global("X3EmiTalk","LOCALS",4)~ THEN X3EmiJ Talk2
@595
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ @596 + T2.1
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ @597 + T2.2
+~!CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ @598 + T2.3 
+~CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ @599 + T2.4
++ @600 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.X 

CHAIN X3EmiJ T2.1 
@601
END 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ @597 + T2.2
+~!CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ @598 + T2.3 
+~CheckStatGT(Player1,50,LORE)!Global("X3EmiPartyBG1","GLOBAL",1)~+ @599 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.4 
++ @600 + T2.X 

CHAIN X3EmiJ T2.X 
@602
EXIT 

CHAIN X3EmiJ T2.XX 
@603
EXIT 



CHAIN X3EmiJ T2.2 
@604
END 
++ @605 + T2.5 
++ @606 + T2.5 
++ @607 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T2.6

CHAIN X3EmiJ T2.3 
@608
EXTERN X3EmiJ T2.5

CHAIN X3EmiJ T2.4 
@609
EXTERN X3EmiJ T2.5

CHAIN X3EmiJ T2.5 
@610
== X3EmiJ @611
END 
++ @612 + T2.7
++ @613 + T2.8 
++ @614 + T2.9

CHAIN X3EmiJ T2.6 
@615
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ 
EXIT 

CHAIN X3EmiJ T2.7 
@616
END 
++ @617 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EmiInterest","LOCALS",1)~ + T2.10 
++ @618 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.11 
++ @619 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.12 

CHAIN X3EmiJ T2.8 
@620
END 
++ @617 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EmiInterest","LOCALS",1)~ + T2.10 
++ @618 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.11 
++ @619 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.12 

CHAIN X3EmiJ T2.9
@621
END 
++ @617 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EmiInterest","LOCALS",1)~ + T2.10 
++ @618 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.11 
++ @619 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T2.12 

CHAIN X3EmiJ T2.10 
@622
END 
++ @623 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.14 
+~Gender(Player1,FEMALE)~+ @624  + T2.15 
+~Gender(Player1,MALE)~+ @625 + T2.16
++ @626 + T2.XX

CHAIN X3EmiJ T2.11 
@627
END 
++ @628 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.18 
++ @629 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.19 
++ @630 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T2.XX

CHAIN X3EmiJ T2.12 
@631
END 
++ @632 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T2.20 
++ @633 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T2.21
++ @634 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T2.13 

CHAIN X3EmiJ T2.13
@635
EXIT 

CHAIN X3EmiJ T2.14 
@636
== X3EmiJ @637
EXIT 

CHAIN X3EmiJ T2.15 
@638
EXTERN X3EmiJ T2.17

CHAIN X3EmiJ T2.16 
@639
EXTERN X3EmiJ T2.17 

CHAIN X3EmiJ T2.17 
@640
EXIT 

CHAIN X3EmiJ T2.18 
@641
EXIT 

CHAIN X3EmiJ T2.19 
@642
EXIT 

CHAIN X3EmiJ T2.20  
@643
EXIT 

CHAIN X3EmiJ T2.21 
@644
EXIT 

//Friendship Talk #3

CHAIN IF ~Global("X3EmiTalk","LOCALS",6)~ THEN X3EmiJ Talk3
@645
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ @646 + T3.1 
++ @647 + T3.2 
++ @648 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T3.3

CHAIN X3EmiJ T3.1 
@649
EXTERN X3EmiJ T3.4

CHAIN X3EmiJ T3.2 
@650
EXTERN X3EmiJ T3.4 

CHAIN X3EmiJ T3.3 
@651
EXTERN X3EmiJ T3.4 

CHAIN X3EmiJ T3.4
@652
END 
++ @653 + T3.5 
++ @654 + T3.6 
++ @655 + T3.7 
++ @656 + T3.8
++ @657 + T3.X 

CHAIN X3EmiJ T3.X 
@658
EXIT 

CHAIN X3EmiJ T3.XX 
@659
EXIT 

CHAIN X3EmiJ T3.5 
@660
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.6 
@661
== X3EmiJ @662
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.7 
@663
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.8 
@664
EXTERN X3EmiJ T3.9

CHAIN X3EmiJ T3.9 
@665
== X3EmiJ @666
END 
++ @667 + T3.10 
++ @668 + T3.11 
++ @669 + T3.X

CHAIN X3EmiJ T3.10 
@670
EXTERN X3EmiJ T3.11 

CHAIN X3EmiJ T3.11 
@671
== X3EMiJ @672
END 
++ @673 + T3.12 
++ @674 + T3.13 
++ @675 + T3.14 
++ @676 + T3.XX

CHAIN X3EmiJ T3.12 
@677
EXTERN X3EmiJ T3.15 

CHAIN X3EmiJ T3.13 
@678
EXTERN X3EmiJ T3.15 

CHAIN X3EmiJ T3.14 
@679 
EXTERN X3EmiJ T3.15 

CHAIN X3EmiJ T3.15 
@680
EXIT 

// Emily Talk 4 

CHAIN IF ~Global("X3EmiTalk","LOCALS",8)~ THEN X3EmiJ Talk4
@681
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ @682 + T4.1 
++ @683 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)SetGlobal("X3EmiInterest","LOCALS",1)~ + T4.2 
++ @684 + T4.X 

CHAIN X3EmiJ T4.2 
@685
EXTERN X3EmiJ T4.1 

CHAIN X3EmiJ T4.1
@686
= @687
END 
++ @688 + T4.3 
++ @689 + T4.4 
++ @690 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + T4.5 



CHAIN X3EmiJ T4.3
@691
EXTERN X3EmiJ T4.6

CHAIN X3EmiJ T4.4
@692
== X3EmiJ @693
EXTERN X3EmiJ T4.6

CHAIN X3EmiJ T4.5 
@694
== X3EmiJ @695
EXTERN X3EmiJ T4.6 

CHAIN X3EmiJ T4.6
@696
END 
++ @697 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + T4.7
++ @698 + T4.8
++ @699 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + T4.9
++ @700 + T4.X 

CHAIN X3EmiJ T4.7 
@701
EXIT 

CHAIN X3EmiJ T4.8 
@702
== X3EmiJ @703
EXIT 

CHAIN X3EmiJ T4.9 
@704
EXIT 

CHAIN X3EmiJ T4.X 
@705
EXIT 

// Talk 5: Emily asks if the PC ever thinks of home. 
CHAIN IF ~Global("X3EmiTalk","LOCALS",10)~ THEN X3EmiJ FriendshipTalk5
@706
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
++ @707 + T5.1
++ @708 + T5.6 
++ @709 + T5.3
++ @710 + T5.X 

CHAIN X3EmiJ T5.X 
@711
EXIT 

CHAIN X3EmiJ T5.1 
@712
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3B  
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3N 

CHAIN X3EmiJ T5.2 
@713
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3B  
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3N

CHAIN X3EmiJ T5.5 
@714
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3B  
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ + T5.3N

CHAIN X3EmiJ T5.3B
@715
EXTERN X3EmiJ T5.4 

CHAIN X3EmiJ T5.4
@716
END 
++ @717 + T5.6
++ @718 + T5.7
++ @719 + T5.8
+~Class(Player1,MONK)~+ @720 + T5.9

CHAIN X3EmiJ T5.3N
@721
EXTERN X3EmiJ T5.4 

CHAIN X3EmiJ T5.3
@722
EXTERN X3EmiJ T5.5

CHAIN X3EmiJ T5.6
@723
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.7
@724
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.8
@725
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.9
@726
EXTERN X3EmiJ T5.10

CHAIN X3EmiJ T5.10
@727
END 
+~Gender(Player1,MALE)~+ @728 DO ~SetGlobal("X3EmiInterest","LOCALS",1)IncrementGlobal("X3EmiAppChange","LOCALS",3)~ + T5.11 
+~!Gender(Player1,MALE)~+ @728 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",3)~ + T5.11F 
++ @729 + T5.12 
++ @730 + T5.14 
++ @731 + T5.14

CHAIN X3EmiJ T5.11 
@732
EXTERN X3EmiJ T5.14

CHAIN X3EmiJ T5.11F 
@733
EXIT 

CHAIN X3EmiJ T5.12 
@734
EXTERN X3EmiJ T5.14

CHAIN X3EmiJ T5.14 
@735
EXIT 

// Talk 6: Noble One After Initial Talk 
CHAIN IF ~Global("X3EmiGregTalk","LOCALS",1)~ THEN X3EmiJ FriendshipTalk6
@736
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiGregTalk","LOCALS",1)~
END 
++ @737 + T6.1 
++ @738 + T6.2
++ @739 + T6.X 

CHAIN X3EmiJ T6.1 
@740
EXTERN X3EmiJ T6.2

CHAIN X3EmiJ T6.2
@741
END 
++ @742 + T6.3 
++ @743 + T6.4
++ @744 + T6.X 

CHAIN X3EmiJ T6.3
@745
EXTERN X3EmiJ T6.5

CHAIN X3EmiJ T6.4
@746
EXTERN X3EmiJ T6.5

CHAIN X3EmiJ T6.5
@747
EXIT 

CHAIN X3EmiJ T6.X 
@748
EXIT 

// Talk 7: Noble Two After Initial Talk 
CHAIN IF ~Global("X3EmiCharmTalk","LOCALS",1)~ THEN X3EmiJ FriendshipTalk7
@749
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiCharmTalk","LOCALS",1)~
END 
++ @750 + T7.1 
++ @751 + T7.1
++ @752 + T7.X 

CHAIN X3EmiJ T7.X 
@753
EXIT 

CHAIN X3EmiJ T7.1
@754
= @755
= @756
END 
++ @757 + T7.2
++ @758 + T7.3 
++ @759 DO ~SetGlobal("X3EmiInterest","LOCALS",1)SetGlobal("X3EmiAppChange","LOCALS",3)~ + T7.6
++ @760 + T7.X 

CHAIN X3EmiJ T7.2
@761
EXTERN X3EmiJ T7.4 

CHAIN X3EmiJ T7.3
@762
EXTERN X3EmiJ T7.4

CHAIN X3EmiJ T7.4
@763
EXTERN X3EmiJ T7.5

CHAIN X3EmiJ T7.6
@764
EXTERN X3EmiJ T7.5

CHAIN X3EmiJ T7.5
@765
EXIT 

// Talk 8: Post Slayer Change Romance and Non Romance 
CHAIN IF ~Global("X3EmiTalk","LOCALS",12)~ THEN X3EmiJ FriendshipTalk8
@766
= @767
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiTalk","LOCALS",1)~
END 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @768 + T8.1R
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @768 + T8.1 
++ @769 + T8.2 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @770 + T8.3 
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @770 + T8.X 

CHAIN X3EmiJ T8.X 
@771
EXIT 

CHAIN X3EmiJ T8.1R 
@772
EXTERN X3EmiJ T8.4 

CHAIN X3EmiJ T8.1 
@773
EXTERN X3EmiJ T8.4

CHAIN X3EmiJ T8.2 
@774
EXTERN X3EmiJ T8.4 

CHAIN X3EmiJ T8.4
@775
END 
++ @776 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + T8.5 
++ @777 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T8.6
++ @778 + T8.7

CHAIN X3EmiJ T8.5 
@779
EXIT 

CHAIN X3EmiJ T8.6 
@780
EXIT 

CHAIN X3EmiJ T8.7
@781
EXIT 

CHAIN X3EmiJ T8.3
@782
EXTERN X3EmiJ T8.4 

//Love Talk #1

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",2)~ THEN X3EmiJ LoveTalk1 
@783
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @784 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.1 
++ @785 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 1.2
++ @786 + 1.3
++ @787 + 1.X 

CHAIN X3EmiJ 1.X 
@788
EXIT 

CHAIN X3EmiJ 1.1 
@789
EXTERN X3EmiJ 1.4

CHAIN X3EmiJ 1.2
@790
EXTERN X3EmiJ 1.4  

CHAIN X3EmiJ 1.3 
@791
EXTERN X3EmiJ 1.4 

CHAIN X3EmiJ 1.4
@792
END 
++ @793 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.5
++ @794 + 1.6
++ @795 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~  + 1.7

CHAIN X3EmiJ 1.7
@796
EXIT 

CHAIN X3EmiJ 1.6
@797
EXTERN X3EmiJ 1.8

CHAIN X3EmiJ 1.5 
@798
EXTERN X3EmiJ 1.8

CHAIN X3EmiJ 1.8
@799
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @800
END 
++ @801 + 1.9
++ @802 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.10 
++ @803 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 1.11

CHAIN X3EmiJ 1.9
@804
EXIT 

CHAIN X3EmiJ 1.11
@805
EXIT 

CHAIN X3EmiJ 1.10
@806
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @807
== X3HelJ IF ~IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Hel")~ THEN @808
EXIT 

//Love Talk #2, two versions 

CHAIN IF ~!InParty("IMOEN")Global("X3EmiLoveTalk","LOCALS",4)~ THEN X3EmiJ LoveTalk2A 
@809
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @810 + 2.1 
++ @811 + 2.2 
++ @812 + 2.3 
++ @813 + 2.X 

CHAIN IF ~InParty("IMOEN")Global("X3EmiLoveTalk","LOCALS",4)~ THEN X3EmiJ LoveTalk2B
@814
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @815 + 2.1B 
++ @816 + 2.2 
++ @817 + 2.3B 
++ @813 + 2.X 

CHAIN X3EmiJ 2.X 
@818
EXIT 

CHAIN X3EmiJ 2.1 
@819
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.1B 
@820
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.2 
@821
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.3 
@822
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.3B 
@823
END 
IF ~!Dead("X3EBRO")~ EXTERN X3EmiJ 2.4 
IF ~Dead("X3EBRO")~ EXTERN X3EmiJ 2.4B 

CHAIN X3EmiJ 2.4
@824
END 
++ @825 + 2.5
++ @826 + 2.6
++ @827 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.5

CHAIN X3EmiJ 2.4B 
@828
END 
++ @829 + 2.6B
++ @826 + 2.6
++ @830 + 2.6B

CHAIN X3EmiJ 2.5
@831
END 
++ @832 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.7
++ @833 + 2.8
++ @834 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~  + 2.9

CHAIN X3EmiJ 2.7
@835
EXTERN X3EmiJ 2.10 

CHAIN X3EmiJ 2.10
@836
EXIT 

CHAIN X3EmiJ 2.6B 
@837
END 
++ @838 + 2.7
++ @839 + 2.11
++ @840 + 2.9

CHAIN X3EmiJ 2.6
@841
END 
++ @838 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.7
++ @839 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 2.11
++ @840 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 2.9

CHAIN X3EmiJ 2.11 
@842
EXTERN X3EmiJ 2.10 

CHAIN X3EmiJ 2.8
@843
EXTERN X3EmiJ 2.10 

CHAIN X3EmiJ 2.9
@844
EXTERN X3EmiJ 2.10 

// Love Talk #3

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",6)~ THEN X3EmiJ LoveTalk3 
@845
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @846 + 3.1 
++ @847 + 3.2
++ @848 + 3.3

CHAIN X3EmiJ 3.X 
@849
EXIT 

CHAIN X3EmiJ 3.1 
@850
EXTERN X3EmiJ 3.4

CHAIN X3EmiJ 3.2 
@851
EXTERN X3EmiJ 3.4

CHAIN X3EmiJ 3.3 
@852
EXTERN X3EmiJ 3.4

CHAIN X3EmiJ 3.4
@853
END 
++ @854 + 3.5
++ @855 + 3.6
++ @856 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~  + 3.X 

CHAIN X3EmiJ 3.5
@857
= @858
END 
++ @859 + 3.7
++ @860 + 3.7
++ @861 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~  + 3.8

CHAIN X3EmiJ 3.6
@862
= @863
END 
++ @859 + 3.7
++ @860 + 3.7
++ @861 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 3.8

CHAIN X3EmiJ 3.7
@864
= @865
EXTERN X3EmiJ 3.9

CHAIN X3EmiJ 3.9
@866
END 
++ @867 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 3.10  
++ @868 + 3.10 
++ @869 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 3.11

CHAIN X3EmiJ 3.10
~I hope I get the chance someday to lead that way, at least.~
~You know, <CHARNAME>, It's comforting talking to you. I could probably talk all day, but I shouldn't. Let's find time to chat later.~
EXIT

CHAIN X3EmiJ 3.11 
@871
EXTERN X3EmiJ 3.10 

CHAIN X3EmiJ 3.8
@872
EXTERN X3EmiJ 3.9

//Love Talk #4 

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",8)~ THEN X3EmiJ LoveTalk4
@873
= @874
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
+~Class(Player1,PALADIN_ALL)!Kit(Player1,Blackguard)~+ @875 + 4.1 
+~Class(Player1,CLERIC_ALL)~+ @876 + 4.1
++ @877 + 4.2
++ @878 + 4.3 
++ @717 + 4.4 
++ @879 + 4.X 

CHAIN X3EmiJ 4.1 
@880
EXTERN X3EmiJ 4.5

CHAIN X3EmiJ 4.2 
@881
EXTERN X3EmiJ 4.5

CHAIN X3EmiJ 4.3 
@882
EXTERN X3EmiJ 4.5

CHAIN X3EmiJ 4.5
@883
END 
++ @884 + 4.6
++ @885 + 4.7
++ @886 + 4.8
++ @887 + 4.9

CHAIN X3EmiJ 4.6
@888
END 
++ @889 + 4.11 
++ @890 + 4.12 
++ @891 + 4.13

CHAIN X3EmiJ 4.11
@892
EXIT 

CHAIN X3EmiJ 4.12 
@893
EXIT 

CHAIN X3EmiJ 4.13 
@894
EXIT 

CHAIN X3EmiJ 4.7
@895
END 
++ @896 + 4.14
++ @897 + 4.10
++ @898 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 4.15

CHAIN X3EmiJ 4.8
@899
EXTERN X3EmiJ 4.10 

CHAIN X3EmiJ 4.9
@900
EXTERN X3EmiJ 4.10 

CHAIN X3EmiJ 4.10
@901
EXIT 

CHAIN X3EmiJ 4.14 
@902
EXIT 

CHAIN X3EmiJ 4.15 
@903
EXTERN X3EmiJ 4.10

CHAIN X3EmiJ 4.4 
@904
EXTERN X3EmiJ 4.5 

CHAIN X3EmiJ 4.X 
@905
EXIT 

// Love Talk #5

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",10)~ THEN X3EmiJ LoveTalk5 
@906
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @907 + 5.1 
++ @908 + 5.1 
++ @909 + 5.1 

CHAIN X3EmiJ 5.1 
@910
= @911
END 
++ @912 + 5.2 
++ @913 + 5.3 
++ @914 + 5.4

CHAIN X3EmiJ 5.2 
@915
EXTERN X3EmiJ 5.4

CHAIN X3EmiJ 5.4
@916
END  
++ @917 + 5.5
++ @918 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 5.6
++ @919 + 5.7

CHAIN X3EmiJ 5.5
@920
= @921
END 
++ @922 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~   + 5.8
++ @923 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~  + 5.9
++ @924 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~  + 5.9

CHAIN X3EmiJ 5.8
@925
EXIT 

CHAIN X3EmiJ 5.9
@926
EXIT 

CHAIN X3EmiJ 5.6
@927
EXTERN X3EmiJ 5.5 

CHAIN X3EmiJ 5.7
@928
EXTERN X3EmiJ 5.5

CHAIN X3EmiJ 5.3 
@929
EXTERN X3EmiJ 5.4 

// Romance #6: Post Rest Talk 
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",12)~ THEN X3EmiJ LoveTalk6
@930
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
+~GlobalLT("X3EmiQuest","GLOBAL",10)~+ @931 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.1 
+~GlobalLT("X3EmiQuest","GLOBAL",10)~+ @932 + 6.1
+~GlobalGT("X3EmiQuest","GLOBAL",10)~+ @931 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.1B 
+~GlobalGT("X3EmiQuest","GLOBAL",10)~+ @932 + 6.1B
++ @933 + 6.X 

CHAIN X3EmiJ 6.X 
@934
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 6.1 
@935
= @936
END 
++ @937 + 6.2 
++ @938 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 6.3
++ @939 + 6.4

CHAIN X3EmiJ 6.1B 
@940
= @941
END 
++ @942 + 6.4
++ @943 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.4
++ @939 + 6.4

CHAIN X3EmiJ 6.2 
@944
EXTERN X3EmiJ 6.5

CHAIN X3EmiJ 6.5
@945
END 
++ @946 + 6.4
++ @947 + 6.4
++ @948 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 6.6

CHAIN X3EmiJ 6.6
@949
END 
++ @950 + 6.4
++ @951 + 6.4
++ @952 + 6.4


CHAIN X3EmiJ 6.3 
@953
EXTERN X3EmiJ 6.5

CHAIN X3EmiJ 6.4
@954
END 
++ @955 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.10
++ @956 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 6.10
++ @957 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 6.12
++ @958 + 6.12

CHAIN X3EmiJ 6.12
@959
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 6.10
@960
= @961
END 
++ @962 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 6.7
++ @963  + 6.11
++ @964DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 6.8

CHAIN X3EmiJ 6.11
@965
EXTERN X3EmiJ 6.9

CHAIN X3EmiJ 6.9
@966
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 6.7
@967
EXTERN X3EmiJ 6.9

CHAIN X3EmiJ 6.8
@968
= @969
 DO ~RestParty()~
EXIT 
// Love Talk 7

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",14)~ THEN X3EmiJ LoveTalk7
@970
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @568 + 7.1 
++ @971 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 7.1
++ @972 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 7.1
++ @973 + 7.X 

CHAIN X3EmiJ 7.X 
@974
EXIT 

CHAIN X3EmiJ 7.1 
@975
= @976
END 
++ @977 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 7.3
++ @978  DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~+ 7.4
++ @979 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 7.2


CHAIN X3EmiJ 7.2 
@980
EXTERN X3EmiJ 7.5 

CHAIN X3EmiJ 7.3
@981
EXTERN X3EmiJ 7.5 

CHAIN X3EmiJ 7.5
@982
END 
++ @983 + 7.6
++ @984 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",11)~ + 7.7
++ @985 + 7.8

CHAIN X3EmiJ 7.6
@986
EXTERN X3EmiJ 7.7 

CHAIN X3EmiJ 7.7
@987
EXTERN X3EmiJ 7.8

CHAIN X3EmiJ 7.8
@988
END 
++ @989 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 7.9
++ @990 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 7.10 
++ @991 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 7.11

CHAIN X3EmiJ 7.9
@992
EXIT 

CHAIN X3EmiJ 7.10
@993
EXIT 

CHAIN X3EmiJ 7.11
@994
EXIT 

CHAIN X3EmiJ 7.4 
@995
EXTERN X3EmiJ 7.5

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",16)~ THEN X3EmiJ LoveTalk8
@996
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @997 + 8.1
++ @998 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 8.2
++ @999 + 8.3 
++ @1000 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~ + 8.X 

CHAIN X3EmiJ 8.X 
@1001
EXIT 

CHAIN X3EmiJ 8.1 
@1002
EXTERN X3EmiJ 8.4

CHAIN X3EmiJ 8.2 
@1003
EXTERN X3EmiJ 8.4


CHAIN X3EmiJ 8.3 
@1004
EXTERN X3EmiJ 8.4

CHAIN X3EmiJ 8.4 
@1005
END 
++ @1006 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 8.9
++ @1007 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 8.5
++ @1008 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 8.7

CHAIN X3EmiJ 8.5
@1009
END 
++ @1010 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 8.6
++ @1011 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~ + 8.10
++ @1012 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 8.8

CHAIN X3EmiJ 8.8
@1013
EXIT 

CHAIN X3EmiJ 8.6
@1014
EXIT 

CHAIN X3EmiJ 8.10
@1015
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 8.9
@1016
EXTERN X3EmiJ 8.5 

CHAIN X3EmiJ 8.7
@1017
EXTERN X3EmiJ 8.5

// Love Talk #9

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",18)~ THEN X3EmiJ LoveTalk9 
@1018
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @1019 + 9.1 
++ @1020 + 9.1 
++ @1021 + 9.1

CHAIN X3EmiJ 9.1 
@1022
= @1023
= @1024
END 
++ @1025 + 9.2
++ @1026 + 9.3
++ @1027 + 9.X

CHAIN X3EmiJ 9.X 
@1028
END 
++ @1029 + 9.4
++ @1030 DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ EXIT 

CHAIN X3EmiJ 9.3 
@1031
EXTERN X3EmiJ 9.4

CHAIN X3EmiJ 9.2 
@1032
EXTERN X3EmiJ 9.4

CHAIN X3EmiJ 9.4 
@1033
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ 9.Prior 
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3EmiJ 9.Current 

CHAIN X3EmiJ 9.Current 
@1034
EXTERN X3EmiJ 9.Join

CHAIN X3EmiJ 9.Prior 
@1035
EXTERN X3EmiJ 9.Join 

CHAIN X3EmiJ 9.Join 
@1036
END 
++ @1037 + 9.Accept
++ @1038 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 9.Accept
++ @1039 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 9.RejectB 
++ @1040  + 9.RejectB
++ @1041 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-5)~ + 9.RejectA 

CHAIN X3EmiJ 9.Accept 
@1042
END 
++ @1043 + 9.5
++ @1044 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 9.5 
++ @1045 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 9.5
++ @1046 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 9.RejectB 

CHAIN X3EmiJ 9.5
@1047
END 
++ @1048 + 9.6
++ @1049 + 9.7
++ @1050 + 9.6

CHAIN X3EmiJ 9.6
@1051
EXIT 

CHAIN X3EmiJ 9.7
@1052
= @1053
EXIT 

CHAIN X3EmiJ 9.RejectA 
@1054
EXIT 

CHAIN X3EmiJ 9.RejectB
@1055
= @1056
EXIT 

//Love Talk 10
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",20)~ THEN X3EmiJ LoveTalk10
@1057
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @1058  + 10.1
++ @1059 + 10.2
++ @1060 + 10.X 

CHAIN X3EmiJ 10.1 
@1061
EXTERN X3EmiJ 10.2 

CHAIN X3EmiJ 10.2
@1062
END 
IF ~Race(Player1,HUMAN)~ EXTERN X3EmiJ 10.3H 
IF ~!Race(Player1,HUMAN)~ EXTERN X3EmiJ 10.3NH

CHAIN X3EmiJ 10.3H 
@1063
END 
++ @1064 + 10.4
++ @1065 + 10.6
++ @1066 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 10.5
++ @1067 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 10.8

CHAIN X3EmiJ 10.3NH 
@1068
END 
++ @1069 + 10.3
++ @1070 + 10.4
++ @1066 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-1)~ + 10.5
++ @1067 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-2)~ + 10.8

CHAIN X3EmiJ 10.3
@1071
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.4 
@1072
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.5
@1073
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.6
@1074
EXTERN X3EmiJ 10.7

CHAIN X3EmiJ 10.7
@1075
END 
++ @1076 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.9
++ @1077 + 10.9
++ @1078 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.8

CHAIN X3EmiJ 10.9
@1079
END 
++ @1080 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.10
++ @1081 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",2)~ + 10.10
++ @1082 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",1)~ + 10.8

CHAIN X3EmiJ 10.10
@1083
DO ~RestParty()~
EXIT 

CHAIN X3EmiJ 10.8
@1084
= @1085
DO ~RestParty()SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 10.X
@1086
DO ~RestParty()SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

//Love Talk #11

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",22)~ THEN X3EmiJ LoveTalk11 
@1087
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @1088 + 11.1 
++ @1089 + 11.2
++ @1090 DO ~IncrementGlobal("X3EmiAppChange","LOCALS",-3)~+ 11.X 

CHAIN X3EmiJ 11.X 
@1091
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 11.XK 
@1092
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~
EXTERN X3EmiJ 11.XX 

CHAIN X3EmiJ 11.XV 
@1093
= @1094
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~
EXTERN X3EmiJ 11.XX 

CHAIN X3EmiJ 11.XR 
@1095
EXTERN X3EmiJ 11.XX

CHAIN X3EmiJ 11.XX 
@1096
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3EmiJ 11.2 
@1097
EXTERN X3EmiJ 11.1

CHAIN X3EmiJ 11.1 
@1098
END 
IF ~OR(3)Global("X3KalRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3C
IF ~!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3

CHAIN X3EmiJ 11.3C 
@1099
END 
IF ~Global("X3KalRomanceActive","GLOBAL",1)~ + 11.3K
IF ~!Global("X3KalRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ + 11.3V 
IF ~!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3R

CHAIN X3EmiJ 11.3K
@1100
= @1101
END 
++ @1102 + 11.4K
++ @1103 + 11.4K
++ @1104 + 11.XK
++ @1105 + 11.X 

CHAIN X3EmiJ 11.4K
@1106
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3VieRomanceActive","GLOBAL",1)~ + 11.3V 
IF ~!Global("X3VieRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3R
IF ~!Global("X3VieRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3

CHAIN X3EmiJ 11.3V
@1107
= @1108
END 
++ @1109 + 11.4V 
++ @1110 + 11.4V
++ @1111 + 11.XV 
++ @1112 + 11.X

CHAIN X3EmiJ 11.4V
@1113
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3R
IF ~!Global("X3RebRomanceActive","GLOBAL",1)~ + 11.3

CHAIN X3EmiJ 11.3R 
@1114
= @1115
END 
++ @1116 + 11.4R 
++ @1117 + 11.4R
++ @1118 + 11.XR 
++ @1119 + 11.X

CHAIN X3EmiJ 11.4R 
@1120
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)~
EXTERN X3EmiJ 11.3

CHAIN X3EmiJ 11.3
@1121
END 
++ @1122 + 11.4 
++ @1123 +  11.5 
++ @1124 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.9 
++ @1125 + 11.11
++ @1126 + 11.X 

CHAIN X3EmiJ 11.4 
@1127
END 
++ @1128 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.10
++ @1129 + 11.13 
++ @1130 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.14
++ @1131 + 11.15

CHAIN X3EmiJ 11.5
@1132
END 
++ @1133 + 11.7
++ @1134 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.6 
++ @1135 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 11.8

CHAIN X3EmiJ 11.6
@1136
EXTERN X3EmiJ 11.16

CHAIN X3EmiJ 11.7
@1137
EXTERN X3EmiJ 11.16

CHAIN X3EmiJ 11.9
@1138
EXTERN X3EmiJ 11.10

CHAIN X3EmiJ 11.10
@1139
= @1140
END 
++ @1141 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.17
++ @1142 + 11.18
++ @1143 + 11.16

CHAIN X3EmiJ 11.17
@1144
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT  

CHAIN X3EmiJ 11.18
@1145
EXTERN X3EmiJ 11.16

CHAIN X3EmiJ 11.19
@1146
EXTERN X3EmiJ 11.16 

CHAIN X3EmiJ 11.11
@1147
END 
++ @1148 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.4 
++ @1149 + 11.12
++ @1126 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3EmiJ 11.12 
@1150
END 
++ @1148 + 11.4 
++ @1151 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 11.4
++ @1126 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3EmiJ 11.13 
@1152
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3EmiJ 11.16
@1153
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3EmiJ 11.14
@1154
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X3EmiJ 11.15
@1155
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",2)~
EXIT 


CHAIN X3EmiJ 11.8
@1156
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 

// Romance conflict

CHAIN IF ~Global("X3EmiRomanceConflict","GLOBAL",1)~ THEN X3EmiJ X3EmiRomanceConflict
@1157
== X3EmiJ @1158
END 
++ @1159 + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + @1160 + RC.Aerie
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + @1161 + RC.Jaheira
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + @1162 + RC.Viconia
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + @1163 + RC.Neera
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + @1164 + RC.Sirene
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + @1165 + RC.Petsy
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + @1166 + RC.Yvette
++ @1167 + RC.1
++ @1168 + RC.2


CHAIN X3EmiJ RC.Aerie
@1169
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT



CHAIN X3EmiJ RC.Jaheira
@1170
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Viconia
@1171
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Neera
@1172
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Yvette
@1173
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Petsy
@1174
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.Sirene
@1175
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)
SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3EmiJ RC.1
@1176
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
@1177
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3) SetGlobal("X3EmiRomanceConflict","GLOBAL",2)~ 
EXIT
 
// Post Rest 
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",24)~ THEN X3EmiJ LoveTalk12 
@1178
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @1179 + 12.2 
++ @1180 + 12.2 
++ @1181 + 12.X 

CHAIN X3EmiJ 12.X 
@1182
EXIT 

CHAIN X3EmiJ 12.1 
@1183
EXTERN X3EmiJ 12.2 

CHAIN X3EmiJ 12.2 
@1184
= @1185
END 
++ @1186 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.3
++ @1187 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.4
++ @1188 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 12.5

CHAIN X3EmiJ 12.3 
@1189
EXTERN X3EmiJ 12.4

CHAIN X3EmiJ 12.4
@1190
END 
++ @1191 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.6
++ @1192 + 12.8
++ @1193 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 12.5

CHAIN X3EmiJ 12.5
@1194
END 
++ @1195 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 12.8
++ @1196 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 12.6
++ @1192 + 12.7

CHAIN X3EmiJ 12.6
@1197
= @1198
EXIT 

CHAIN X3EmiJ 12.7
@1199
EXTERN X3EmiJ 12.6

CHAIN X3EmiJ 12.8
@1200
EXIT 

// Emily LoveTalk #13

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",26)~ THEN X3EmiJ LoveTalk13
@1201
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @1202 + 13.1 
++ @907 + 13.2 
++ @1203 + 13.X 

CHAIN X3EmiJ 13.X 
@1204
EXIT 

CHAIN X3EmiJ 13.1 
@1205
EXTERN X3EmiJ 13.2 

CHAIN X3EmiJ 13.2 
@1206
= @1207
END 
++ @1208 + 13.6
++ @1209 + 13.7
++ @1210 + 13.5

CHAIN X3EmiJ 13.5
@1211
= @1212
EXIT 

CHAIN X3EmiJ 13.6
@1213
EXTERN X3EmiJ 13.8 

CHAIN X3EmiJ 13.8
@1214
END 
++ @1215 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 13.11
++ @1216 + 13.10
++ @1217 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 13.9

CHAIN X3EmiJ 13.9
@1218
END 
++ @1219 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 13.11 
++ @1220 + 13.13 
++ @1221 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 13.XX

CHAIN X3EmiJ 13.11 
@1222
EXTERN X3EmiJ 13.12 

CHAIN X3EmiJ 13.12 
@1223
EXIT 

CHAIN X3EmiJ 13.13 
@1224
EXTERN X3EmiJ 13.12

CHAIN X3EmiJ 13.XX 
@1225
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3EmiJ 13.10 
@1226
EXTERN X3EmiJ 13.12 

CHAIN X3EmiJ 13.7
@1227
= @1228
EXTERN X3EmiJ 13.8

CHAIN IF ~Global("X3EmiLoveDrow","LOCALS",1)~ THEN X3EmiJ LoveTalk14 // Only happens if the dragon wasn't killed.
@1229
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveDrow","LOCALS",1)~
END 
++ @1230 + 14.1 
++ @1231 + 14.2
++ @1232 + 14.3
++ @1233 + 14.X 

CHAIN X3EmiJ 14.1 
@1234
EXTERN X3EmiJ 14.4

CHAIN X3EmiJ 14.2 
@1235
EXTERN X3EmiJ 14.4

CHAIN X3EmiJ 14.3 
@1236
EXTERN X3EmiJ 14.4

CHAIN X3EmiJ 14.4
@1237
END 
++ @1238 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 14.5
++ @1128 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 14.6
++ @1239 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 14.7

CHAIN X3EmiJ 14.7
@1240
EXIT 

CHAIN X3EmiJ 14.5
@1241
EXIT 

CHAIN X3EmiJ 14.6
@1242
EXIT 

CHAIN X3EmiJ 14.X 
@1243
EXIT 

//Bodhi Defeated Talk
CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",28)~ THEN X3EmiJ LoveTalk15
@1244
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @1245 + 15.2
++ @1246 + 15.2 
++ @1247 + 15.1 

CHAIN X3EmiJ 15.1 
@1248
EXTERN X3EmiJ 15.2 

CHAIN X3EmiJ 15.2 
@1249
= @1250
END 
++ @1251 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 15.4
++ @1252 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 15.4 
++ @1253 + 15.3 
++ @1254 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 15.3 

CHAIN X3EmiJ 15.3 
@1255
EXIT 

CHAIN X3EmiJ 15.4 
@1256
EXIT 

// Final LoveTalk

CHAIN IF ~Global("X3EmiLoveTalk","LOCALS",30)~ THEN X3EmiJ LoveTalk16 
@1257
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiLoveTalk","LOCALS",1)~
END 
++ @1258 + 16.2
++ @1259 + 16.1 
++ @1260 + 16.1 
++ @1261 DO ~RestParty()~ EXIT 

CHAIN X3EmiJ 16.1 
@1262
END 
++ @1263 + 16.3
++ @1264 + 16.2 
++ @1265  + 16.X

CHAIN X3EmiJ 16.X 
@1266
DO ~RestParty()~ EXIT 

CHAIN X3EmiJ 16.3 
@1267 
EXTERN X3EmiJ 16.4 

CHAIN X3EmiJ 16.4
@1268
END 
++ @1269 + 16.6
++ @1270 + 16.5
++ @1271 + 16.5

CHAIN X3EmiJ 16.5 
@1272
EXTERN X3EmiJ 16.6 

CHAIN X3EmiJ 16.6 
@1273
END 
++ @1274 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.7
++ @1275 + 16.8 
++ @1276 + 16.9

CHAIN X3EmiJ 16.7
@1277
EXTERN X3EmiJ 16.10

CHAIN X3EmiJ 16.8
@1278
EXTERN X3EmiJ 16.10

CHAIN X3EmiJ 16.9
@1279
EXTERN X3EmiJ 16.10

CHAIN X3EmiJ 16.10
~Here's the thing, <CHARNAME>...I want more than just a few minutes. I want to spend the night with you.~
~I was just thinking of how to make this perfect, a few witty and probably terrible lines to get you to desire me, I'd hope... but the timing is so bad and imperfect. I thought an inn might be better, but you're still without your soul. And you may never even get it back if we fail.~
END 
++ @1281 + 16.12
++ @1282 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.13
++ @1283 + 16.14
++ @1284 + 16.11 

CHAIN X3EmiJ 16.11
@1285
= @1286
EXIT 

CHAIN X3EmiJ 16.12
@1287
END 
++ @1288 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.13
++ @1289 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 16.13
++ @1284 + 16.11

CHAIN X3EmiJ 16.14 
@1290
END 
++ @1288 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.13
++ @1289 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 16.13
++ @1284 + 16.11

CHAIN X3EmiJ 16.13 
@1291
END 
++ @1292 + 16.18 
++ @1293 + 16.15
++ @1294 + 16.17

CHAIN X3EmiJ 16.18
@1295
EXTERN X3EmiJ 16.16

CHAIN X3EmiJ 16.16
@1296
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~ EXIT 

CHAIN X3EmiJ 16.15
@1297
EXTERN X3EmiJ 16.16

CHAIN X3EmiJ 16.2 
@1298
EXTERN X3EmiJ 16.4

CHAIN X3EmiJ 16.17
@1299
END 
++ @1300 + 16.21
++ @1301 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 16.20
++ @1302 + 16.19
++ @1303 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ + 16.XX

CHAIN X3EmiJ 16.XX
@1304
= @1305
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)RestParty()~ EXIT 

CHAIN X3EmiJ 16.19
@1306
= @1307
EXIT 

CHAIN X3EmiJ 16.20 
@1308
EXTERN X3EmiJ 16.18

CHAIN X3EmiJ 16.21 
@1309
EXTERN X3EmiJ 16.18

// Romance #17
CHAIN IF ~Global("X3Slept","LOCALS",1)~ THEN X3EmiJ LoveTalk17
@1310
DO ~SetGlobal("X3Slept","LOCALS",2)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ @1311 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 17.1 
++ @1312DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 17.2
++ @1313 + 17.3 
++ @1314 + 17.4

CHAIN X3EmiJ 17.1
@1315
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.2 
@1316
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.3 
@1317
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.4 
@1318
EXTERN X3EmiJ 17.9

CHAIN X3EmiJ 17.9
@1319
= @1320
END 
++ @1321 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 17.5
++ @1322 + 17.6
++ @1323 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 17.7
++ @1324 + 17.6

CHAIN X3EmiJ 17.5
@1325
EXTERN X3EmiJ 17.8

CHAIN X3EmiJ 17.7
@1326
EXTERN X3EmiJ 17.8

CHAIN X3EmiJ 17.8
@1327
= @1328
EXIT 

CHAIN X3EmiJ 17.6
@1329
EXTERN X3EmiJ 17.8

// Group Kiss from PID 
CHAIN X3EmiJ Group.Kiss 
@1330
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1331
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1332
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1333
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1334
== X3EmiJ @1335
== X3EmiJ @1336
EXIT 

APPEND X3EmiJ 

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @1337
= @1338
= @1339
++ @1340 + LBreak.1
++ @1341 + LBreak.2 
++ @1342 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @1343
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @1344
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @1345
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @1346
++ @1347 + LBreak.5 
++ @1348 + LBreak.6 
++ @1349 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @1350
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @1351
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @1352
IF ~~ EXIT 
END 

// Break Approval 
IF ~Global("X3Break","LOCALS",1)~ Break
SAY @1353  
= @1354
++ @1355 + Break.1 
++ @1356 + Break.1 
++ @1357 + Break.2
END 

IF ~~ Break.1
SAY @1358
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @1359 
IF ~~ + Break.3 
END


IF ~~ Break.3 
SAY @1360
++ @1361 + Break.4
++ @1362 + Break.5
++ @1363 + Break.6 
END 

IF ~~ Break.4 
SAY @1364
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @1365
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @1366
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3EmiApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@100116)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @1367
= @1368
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY @1369  
++ @1370 + Question.PID 
+~NumInPartyGT(2)~+ @1371 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1371 + PersonalAlone.PID 
// Requires the PC to have talked to Emily before about crafting. 
+~Global("X3miCraft","LOCALS",1)~+ @1372 + Craft.PID
++ @1601 + FixString
++ @1373 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY @1374 
++ @1370 + Question.PID 
+~NumInPartyGT(2)~+ @1371 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1371 + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ @1372 + Craft.PID
++ @1601 + FixString
++ @1373 EXIT 
END  

IF ~~ main.PID 
SAY @1375
++ @1370 + Question.PID 
+~NumInPartyGT(2)~+ @1371 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1371 + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ @1372 + Craft.PID
++ @1601 + FixString
++ @1373 EXIT 
END  

IF ~~ Question.PID
SAY @1376
+~Global("X3PIDCON1","LOCALS",0)~+ @1377 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ @1378 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ @1379 DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ @1380 DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ @1381 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1382 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1383 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ @1384 DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ @1385 + main.PID 
++ @1386 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @1387
+~Global("X3PIDCON1","LOCALS",0)~+ @1377 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ @1378 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ @1379 DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ @1380 DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ @1381 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1382 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)GlobalGT("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1383 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ @1384 DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ @1385 + main.PID 
++ @1388 EXIT 
END 

IF ~~ PID.Tethyr
SAY @1389
= @1390
= @1391
++ @1392 + PTethyr.1
++ @1393 + PTethyr.2 
++ @1394 + PTethyr.3
++ @1385 + main.PID 
END 

IF ~~ PTethyr.1
SAY @1395
= @1396
= @1397
++ @1398 + PTethyr.3 
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PTethyr.2 
SAY @1400
++ @1401 + PTethyr.1 
++ @1398 + PTethyr.3 
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PTethyr.3
SAY @1402
= @1403
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PID.Estate 
SAY @1404
= @1405
= @1406
++ @1407 + PEstate.1
++ @1408 + PEstate.2 
++ @1409 + PEstate.3
END 



IF ~~ PEstate.1
SAY @1410
= @1411
++ @1412 + PEstate.2 
++ @1413 + PEstate.3 
END 

IF ~~ PEstate.2 
SAY @1414
= @1415
= @1416
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PEstate.3 
SAY @1417
= @1418
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PID.Family 
SAY @1419
= @1420
= @1421
++ @1422 + PFamily.1 
++ @1423 + PFamily.2 
++ @1424 + PFamily.3
++ @1425 + PFamily.4
END 

IF ~~ PFamily.1 
SAY @1426
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY @1427
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY @1428
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.4
SAY @1429
= @1430
= @1431
++ @1432 + PFamily.5 
++ @1433 + PFamily.6
++ @1434 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.7
END 

IF ~~ PFamily.5
SAY @1435
IF ~~ + PFamily.8
END 

IF ~~ PFamily.6
SAY @1436
IF ~~ + PFamily.8
END 

IF ~~ PFamily.7
SAY @1437
IF ~~ + PFamily.8
END 

IF ~~ PFamily.8
SAY @1438
= @1439
= @1440
++ @1441 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.9
++ @1442 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + PFamily.10
++ @1443 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.11
END 

IF ~~ PFamily.9
SAY @1444
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PFamily.10
SAY @1445
++ @1385 + main.PID 
++ @1399 EXIT 
END  

IF ~~ PFamily.11
SAY @1446
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PID.Mother 
SAY @1447
= @1448
= @1449
++ @1450 + PMother.1 
++ @1451 + PMother.2 
++ @1452 + PMother.2
END



IF ~~ PMother.1  
SAY @1453
= @1454
= @1455
++ @1456 + PMother.3 
++ @1457 + PMother.4 
++ @1458 + PMother.4
END 

IF ~~ PMother.2
SAY @1459
IF ~~ + PMother.1
END 

IF ~~ PMother.3 
SAY @1460
IF ~~ + PMother.5
END 

IF ~~ PMother.4 
SAY @1461
= @1462
= @1463
++ @1464 + PMother.5
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PMother.5 
SAY @1465
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PID.Archery 
SAY @1466
= @1467
= @1468
++ @1469 + PID.Archery1 
++ @1470 + PID.Archery2
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PID.Archery1 
SAY @1471
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PID.Archery2 
SAY @1472
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ Heir.AftermathWon
SAY @1473
= @1474
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ Heir.AftermathLost
SAY @1475
= @1476
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PID.Crafting
SAY @1477
= @1478
= @1479
++ @1480 + Craft.PID 
++ @1385 + main.PID 
++ @1399 EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY @1481
+~Global("X3EmiRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiPartyBG1","GLOBAL",1)~+ @461 + Q1.6 
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @1482 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1482 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1483 + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3EmiRomanceActive","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiInterest","LOCALS",0)~+ @1484 DO ~SetGlobal("X3EmiInterest","LOCALS",1)SetGlobal("X3AppChange","GLOBAL",6)~ + RomanceInt.Talk
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1485 + BreakUp
++ @1486 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @1487
+~Global("X3EmiRomanceActive","GLOBAL",0)!Alignment(Player1,MASK_EVIL)Global("X3DSRomance","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiPartyBG1","GLOBAL",1)~+ @461 + Q1.6 
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @1482 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1482 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1483 + Alone.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3EmiRomanceActive","GLOBAL",0)Gender(Player1,MALE)Global("X3EmiInterest","LOCALS",0)~+ @1484 DO ~SetGlobal("X3EmiInterest","LOCALS",1)SetGlobal("X3AppChange","GLOBAL",6)~ + RomanceInt.Talk
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1485 + BreakUp
++ @1486 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @1488
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @1489
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @1490
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY @1491
++ @1492 + RI.eyes 
++ @1493 + RI.hair 
++ @1494 + RI.face 
++ @1495 + RI.bosom 
++ @1496 + RI.reaction
END 

IF ~~ RI.eyes 
SAY @1497
= @1498
++ @1499 + RI.E1
++ @1500 + RI.E2
++ @1501 + RI.E3
END

IF ~~ RI.E1 
SAY @1502
IF ~~ + RI.exit 
END 

IF ~~ RI.E2 
SAY @1503
IF ~~ + RI.exit 
END 

IF ~~ RI.E3 
SAY @1504
IF ~~ + RI.exit 
END 

IF ~~ RI.exit 
SAY @1505
IF ~~ EXIT 
END 

IF ~~ RI.hair 
SAY @1506
= @1507
++ @1508 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.h1 
++ @1509 + RI.h2 
++ @1510 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.h3 
END 

IF ~~ RI.h1 
SAY @1511
IF ~~ + RI.exit 
END 

IF ~~ RI.h2 
SAY @1512
IF ~~ + RI.exit 
END 

IF ~~ RI.h3 
SAY @1513
IF ~~ + RI.exit 
END 

IF ~~ RI.face 
SAY @1514
= @1515
++ @1516 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.f1 
++ @1517 + RI.f2 
++ @1518 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + RI.f3 
END 

IF ~~ RI.f1 
SAY @1519
IF ~~ EXIT 
END 

IF ~~ RI.f2 
SAY @1520
IF ~~ EXIT 
END 

IF ~~ RI.f3 
SAY @1521
IF ~~ EXIT 
END 



IF ~~ RI.bosom 
SAY @1522
= @1523
++ @1524 + RI.b1 
++ @1525 + RI.b2 
++ @1526 + RI.b3
END 

IF ~~ RI.b1 
SAY @1527
IF ~~ + RI.exit 
END 

IF ~~ RI.b2 
SAY @1528
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ EXIT 
END 

IF ~~ RI.b3 
SAY @1529
IF ~~ + RI.exit 
END 



IF ~~ RI.reaction 
SAY @1530
= @1531
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ EXIT 
END 

IF ~~ BreakUp
SAY @1532
++ @1533 + BU.1 
++ @1534 + BU.2 
++ @1535 + BU.3 
END 

IF ~~ BU.1 
SAY @1536
= @1537
IF ~~ + BU.5
END 

IF ~~ BU.5
SAY @1538
++ @1539 + BU.4 
++ @1540 + BU.4
++ @1541 + BU.3 
END 

IF ~~ BU.2 
SAY @1542
= @1543
IF ~~ + BU.5
END 

IF ~~ BU.3 
SAY @1544
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiApp","GLOBAL",-10)
DisplayStringNoNameDlg(Player1,@100109)~ EXIT 
END 

IF ~~ BU.4 
SAY @1545
IF ~~ EXIT 
END 


IF ~~ Craft.PID 
SAY @1546
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ @1547 DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ @1548 + RipperBow
+~PartyHasItem("BOW10")~+ @1549 + HeartseekerBow
+~PartyHasItem("BOW11")~+ @1550 + StrongArmBow
+~PartyHasItem("BOW12")~+ @1551 + ElvenCourtBow
+~PartyHasItem("BOW13")~+ @1552 + ManaBow
+~PartyHasItem("BOW14")~+ @1553 + TuiganBow
+~PartyHasItem("BOW15")~+ @1554 + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ @1555 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ @1555 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ @1556 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ @1556 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("XBOW03")~+ @1557 + TheGuideXBow
+~PartyHasItem("XBOW06")~+ @1558 + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ @1559 + GiantHairXBow
+~PartyHasItem("XBOW10")~+ @1560 + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ @1561 DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ @1562 + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ @1563 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ @1563 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ @1385 + main.PID 
++ @1564 EXIT 
END 

IF ~~ Craft.PID2 
SAY @1565
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ @1547 DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ @1548 + RipperBow
+~PartyHasItem("BOW10")~+ @1549 + HeartseekerBow
+~PartyHasItem("BOW11")~+ @1550 + StrongArmBow
+~PartyHasItem("BOW12")~+ @1551 + ElvenCourtBow
+~PartyHasItem("BOW13")~+ @1552 + ManaBow
+~PartyHasItem("BOW14")~+ @1553 + TuiganBow
+~PartyHasItem("BOW15")~+ @1554 + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ @1555 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ @1555 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ @1556 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ @1556 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("XBOW03")~+ @1557 + TheGuideXBow
+~PartyHasItem("XBOW06")~+ @1558 + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ @1559 + GiantHairXBow
+~PartyHasItem("XBOW10")~+ @1560 + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ @1561 DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ @1562 + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ @1563 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ @1563 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ @1385 + main.PID 
++ @1564 EXIT 
END 

IF ~~ Craft.Think  
SAY @1566
IF ~~ EXIT 
END 

IF ~~ MazzyBow 
SAY @1567
IF ~~ + Craft.PID2 
END 

IF ~~ RipperBow
SAY @1568
++ @1569 DO ~TakePartyItem("BOW09")SetGlobal("X3EmiBow","LOCALS",9)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ HeartseekerBow
SAY @1572
++ @1573 DO ~TakePartyItem("BOW10")SetGlobal("X3EmiBow","LOCALS",10)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ StrongArmBow
SAY @1574
++ @1575 DO ~TakePartyItem("BOW11")SetGlobal("X3EmiBow","LOCALS",11)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ ElvenCourtBow 
SAY @1576
++ @1577 DO ~TakePartyItem("BOW12")SetGlobal("X3EmiBow","LOCALS",12)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ ManaBow
SAY @1578
++ @1579 DO ~TakePartyItem("BOW13")SetGlobal("X3EmiBow","LOCALS",13)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ TuiganBow 
SAY @1580
++ @1581 DO ~TakePartyItem("BOW14")SetGlobal("X3EmiBow","LOCALS",14)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ TansheronBow 
SAY @1582
++ @1583 DO ~TakePartyItem("BOW15")SetGlobal("X3EmiBow","LOCALS",15)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ DarkFireBow
SAY @1584
IF ~~ + Craft.PID2 
END 

IF ~~ CespenarBow 
SAY @1585
IF ~~ + Craft.PID2 
END 

IF ~~ TaralashBow
SAY @1586
IF ~~ + Craft.PID2 
END 

IF ~~ JanXBow
SAY @1587
IF ~~ + Craft.PID2 
END 

IF ~~ FiretoothXBow
SAY @1588
IF ~~ + Craft.PID2 
END 

IF ~~ TheGuideXBow
SAY @1589
++ @1590 DO ~TakePartyItem("XBOW03")SetGlobal("X3EmiXBow","LOCALS",3)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ ArmyScytheXBow
SAY @1591
++ @1592 DO ~TakePartyItem("XBOW06")SetGlobal("X3EmiXBow","LOCALS",6)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ GiantHairXBow
SAY @1593
++ @1594 DO ~TakePartyItem("XBOW08")SetGlobal("X3EmiXBow","LOCALS",8)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ NecaradanXBow
SAY @1595
++ @1596 DO ~TakePartyItem("XBOW10")SetGlobal("X3EmiXBow","LOCALS",10)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~  AfflictionXBow
SAY @1597
++ @1598 DO ~TakePartyItem("XBOW13")SetGlobal("X3EmiXBow","LOCALS",13)~ + BowSelected
++ @1570 + Craft.PID2 
++ @1571 + Craft.Think 
END 

IF ~~ BowSelected 
SAY @1599
IF ~~ DO ~SetGlobal("X3miCraft","LOCALS",2)StartCutSceneMode()StartCutScene("X3ECut05")~ EXIT // Launch Cutscene 
END 

IF ~~ FixString
SAY @1602
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3EReset")~ EXIT 
END 

END 