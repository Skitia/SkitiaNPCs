/*Non-Essential Interjections*/

//Chapter 6-7

I_C_T SUAVATAR 5 X3VieSUAVATAR5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @0
END 

I_C_T SUDEMIN 40 X3VieSUDEMIN-40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1
DO ~LeaveParty()Enemy()~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @2
DO ~LeaveParty()Enemy()~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @3
DO ~LeaveParty()Enemy()~
== SUDEMIN @4
END 

I_C_T SUDEMIN 8 X3VieSUDEMIN-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @5
END

I_C_T SUDEMIN 15 X3VieSUDEMIN-15
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @6
END

I_C_T SUDEMIN 9 X3VieSUDEMIN-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @5
END

I_C_T C6CORAN 1 X3VieC6CORAN-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @7
END 

I_C_T C6CORAN 13 X3VieC6CORAN-13
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @8
END 

I_C_T C6REGIS1 2 X3VieC6REGIS1-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @9
END 

I_C_T C6DRIZZ1 55 X3VieC6DRIZZ1-55
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 48 X3VieC6DRIZZ1-48
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 41 X3VieC6DRIZZ1-41
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 18 X3VieC6DRIZZ1-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @10
== C6DRIZZ1 @11
END


I_C_T C6DRIZZ1 9 X3VieC6DRIZZ1-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6DRIZZ1 5 X3VieC6DRIZZ1-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @10
== C6DRIZZ1 @11
END

I_C_T C6BRUEN1 0 X3VieC6BRUEN1-0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @12
END

I_C_T C6ELHAN2 28 X3VieC6ELHAN2-28 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @13
END

I_C_T C6ELHAN2 59 X3VieC6ELHAN2-59 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
END

I_C_T C6ELF1 2 X3VieC6Elf1-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @15
== C6ELF1 @16
END 

I_C_T C6ELF1 1 X3VieC6Elf1-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!Race(Player1,ELF)~ THEN @17
== C6ELF1 @16
END 

I_C_T C6ELF1 1 X3VieC6Elf1-3
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @17
== C6ELF1 @16
END 

I_C_T SUELHAN 6 X3VieSUELHAN6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @18
END

//Underdark


INTERJECT JARLAXLE 33 X3VieJARLAXLE33
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @19
EXTERN JARLAXLE 39

I_C_T DADUER1 12 X3KalDADUER1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN @20
END

I_C_T UDPHAE01 161 X3VieUDPHAE01-161
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @21
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDPHAE01 @22
END

I_C_T UDARDUL 34 X3VieUDARDUL-34
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @23
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T UDDEMON 8 X3VieUDDEMON-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @24
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T UDDEMON 3 X3VieUDDEMON-3
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @25
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END

I_C_T UDDEMON 18 X3VieUDDEMON-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @25
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END

I_C_T UDPHAE01 61 X3VieUDPHAE01-61
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @26
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @27
END

I_C_T UDPHAE01 136 X3VieUDPHAE01-136
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @28
END

I_C_T UDDROW16 40 X3VieUDDROW16-40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @29
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T UDDROW16 44 X3VieUDDROW16-44
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @30
END

I_C_T UDDROW16 41 X3VieUDDROW16-41
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @31
END

I_C_T UDDROW16 25 X3VieUDDROW16-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @32
END


I_C_T UDDROW16 40 X3VieUDDROW16-40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @32
END


I_C_T UDDROW06 14 X3VieUDDROW06-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @33
== UDDROW06 @34
== X3VieJ @35
END

I_C_T UDDROW10 17 X3VieUDDROW10-17
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @36
== UDDROW10 @37
== X3VieJ @38
END

I_C_T UDDOOR01 1 X3VieUDDOOR01-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @39
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T UDDOOR01 4 X3VieUDDOOR01-4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @40
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T UDDOOR01 5 X3VieUDDOOR01-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @41
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 


I_C_T UDSIMYAZ 5 X3VieUDSIMYAZ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @42
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @43
END

I_C_T UDDOOR02 14 X3VieUDDOOR02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @44
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T UDDOOR02 15 X3VieUDDOOR02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @45
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T UDDOOR02 17 X3VieUDDOOR02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @46
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END 

I_C_T UDSILVER 18 X3VieUDSILVER-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @47
END 

I_C_T UDSILVER 45 X3VieUDSILVER-45
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @48
END 

I_C_T UDSILVER 49 X3VieUDSILVER-49
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @49
DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@506)~
END 

I_C_T UDSILVER 25 X3EmiUDSILVER-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @50
END 

I_C_T UDSVIR05 2 X3VieUDSVIR05-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @51
END

I_C_T UDSVIR05 13 X3VieUDSVIR05-13
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @52
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END

I_C_T UDTRAP02 10 X3EmiUDTRAP02-10
== X3VieJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN @53
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDTRAP02 @54
END

I_C_T UDTRAP02 11 X3EmiUDTRAP02-11
== X3VieJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN @53
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T UDTRAP02 2 X3RebUDTRAP02-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @55
END

I_C_T UDVITH 47 X3VieUDVITH-47
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @56
DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@513)~
END


I_C_T UDVITH 49 X3VieUDVITH-49
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN @57
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
== UDVITH @58
END

I_C_T UDDUER02 6 X3VieUDDUER02-6
== X3VieJ IF~IsValidForPartyDialogue("X3Vie")~ THEN @59
END 

I_C_T UDVITH 18 X3VieUDVITH-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @60
END

I_C_T UDVITH 25 X3VieUDVITH-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @61
END
//If the player ignores Vienxay, then if she is in the party, this will fire.
ADD_TRANS_ACTION UDVITH BEGIN 26 END BEGIN END ~SetGlobal("X3VieAppChange","GLOBAL",4)~


I_C_T UDDUER02 12 X3VieUDDUER02-12
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @62
END 

I_C_T UDDUER01 20 X3VieUDDUER01-20
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @63
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END

I_C_T UDDUER03 9 X3VieUDUDER03-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @64
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @65
== X3VieJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @66
END

I_C_T JAHEIRAJ 478 X3VieJAHEIRAJ-478 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vieb")~ THEN @67
== JAHEIRAJ IF ~IsValidForPartyDialogue("X3Vieb")~ THEN @68
END

//Chapter 4 



I_C_T SAHPR2 13 X3VieSAHPR2-13
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @69
END


I_C_T SAHPR4 4 X3VieJSAHPR4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @70
END

INTERJECT SAHBEH01 38 X3VieSAHBEH01-38
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @71
EXTERN SAHBEH01 39

I_C_T SAHKNG01 76 X3VieSAHKNG0176 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @72
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T SAHKNG01 76 X3VieSAHKNG0176 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @73
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHKNG01 50 X3VieSAHKNG0150 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @74
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END

I_C_T SAHKNG01 36 X3VieSAHKNG0136 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @75
END

I_C_T SAHKNG01 47 X3VieSAHKNG0147 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @76
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHKNG01 23 X3VieSAHKNG0123 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @76
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHPR1 30 X3VieSAHPR30 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @76
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T SAHPR1 5 X3VieSAHPR5 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @77
END

I_C_T JANJ 159 X3VieJANJ-159
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @78
END

I_C_T PPSAEM3 1 X3ViePPSAEM3-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @79
END

I_C_T PPSAEM2 23 X3ViePPSAEM2-23
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @80
END

I_C_T PPSAEM2 8 X3ViePPSAEM2-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")~ THEN @81
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN @82
== PPSAEM2 @83
END 
 
I_C_T PPSAEM2 19 X3ViePPSAEM2-19
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @84
END

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Vie") Global("X3ViePartyBG1","GLOBAL",1)~ + @85 EXTERN X3VieJ X3ViePPIMOEN0
END

CHAIN X3VieJ X3ViePPIMOEN0
@86
EXTERN PPIMOEN 1

I_C_T IMOEN2 22 X3VieIMOEN22
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @87
END 

I_C_T PPDRADEE 3 X3ViePPDRADEE-3
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @88
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @89
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @90
END 

I_C_T PPDRADEE 0 X3ViePPDRADEE-0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @91
END

I_C_T PPAPHRIL 4 X3ViePPAPRHIL4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @92
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @93
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @94
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN @95
END

I_C_T PPAPHRIL 5 X3ViePPAPRHIL5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @92
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @93
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @94
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN @95
END

I_C_T PPAPHRIL 6 X3ViePPAPRHIL6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @92
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @93
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @94
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN @95
END


I_C_T PPAPHRIL 0 X3ViePPAPRHIL0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @96
END

I_C_T PPIRENI1 14 X3ViePPIRENI1-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @97
END

I_C_T PPDILI 5 X3ViePPDILI-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @98
END

I_C_T PIRMUR01 2 X3ViePIRMUR01-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")~ THEN @99
END 

I_C_T PPINN01 5 X3ViePPINN01-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @100
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @101
END

I_C_T PPCOWLED 1 X3ViePPCOWLED
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @102
END

I_C_T PPSAEM 58 X3HelPPSAEM58
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @103
END

I_C_T PPSAEM 14 X3RebPPSAEM14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @104
END 

I_C_T PPSAEM 32 X3RebPPSAEM32
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @105
END

//Chapter 3

I_C_T BODHI2 10 X3VieBODHI2-10
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @106
END 


I_C_T ARNMAN09 2 X3VieARNMAN09-2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @107
END 

I_C_T ARNMAN03 0 X3VieARNMAN03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @108
== ARNMAN03 @109
== X3VieJ @110
END 


I_C_T ARAN 53 X3VieARAN53 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @111
END 

I_C_T ARAN 40 X3VieARAN40
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @112
END 

I_C_T ARAN 20 X3VieARAN20
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @113
END 

I_C_T NALIAJ 311 X3VieNaliaJ311 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @114
== NALIAJ @115
== X3VieJ @116
END

I_C_T AERIEJ 183 X3VieAerieJ183
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @117
== AERIEJ @118
END 




I_C_T ARNBOY01 0 X3VieARNBOY01-0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @119
END 

I_C_T FETCH 1 X3VieFETCH1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @120
END  



//Watcher's Keep 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN @121
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN @122
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN @121
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN @122
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T GORAPP1 6 X3VieGORAPP1-6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @123
END 

I_C_T GORDEMO 18 X3VieGORDEMO 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @124
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T GORDEMO 1 X3VieGORDEMO
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @125
END  

I_C_T FSRIDD 0 X3VieFSRIDD0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @126
END  

I_C_T GORAPR 11 X3VieGORAPR 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @127
END 

I_C_T GORSUC01 7 X3VieGORSUC01 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @128
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Vie",LastTalkedToBy)~ EXTERN X3VieJ Yackman
END

CHAIN X3VieJ Yackman  
@129
EXTERN GORMAD1 10

I_C_T GORODR1 35 X3VieGORODR1-35
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @130
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @131
END 

I_C_T GORIMP01 0 X3VieGORIMP01
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @132
END 

//Underdark 
I_C_T KORGANJ  151 X3VieKORGANJ-151 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @133
END 

I_C_T UDSVIR03 12 X3VieUDSVIR03-12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @134
END 

//Planar Sphere 
I_C_T OBSSOL01 19 X3VieOBSSOL01-19 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @135
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @136
END 


// Trademeet 

I_C_T CEFALD04 3 X3VieCEFALD04
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @137
DO ~LeaveParty()EscapeArea()~
END

I_C_T TREVIL01 33 X3VieTREVIL01-33
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @138
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @139
== TREVIL01 @140
END 

I_C_T TREVIL01 34 X3VieTREVIL01-34
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @138
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @139
== TREVIL01 @140
END 

INTERJECT TRRAK01 0 X3VieTRRAK01
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @141
EXTERN TRRAK01 3

I_C_T DRUSH 9 X3VieDRUSH9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @142
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @143
== DRUSH @144
END 

I_C_T CELOGAN 86 X3VieCELOGAN86
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @145
END 

I_C_T TRCUT07 4 X3VieTRCUT07-4
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @146
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T TRPLE01 16 X3VieTRPLE01-16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @147
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
== TRPLE01 @148
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN TRGYP03 X3Vie
@149
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @150
EXIT 

I_C_T GPHIL02 4 X3VieGPHIL02
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @151
== GPHIL02 @152
END 

I_C_T NEEBER 7 X3VieNEEBER7 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @153
END 

I_C_T TRHMER01 23 X3VieTRHMER01-23 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @154
END 

I_C_T TRHMER01 38 X3VieTRHMER01-38
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @155
DO ~IncrementGlobal("X3VieApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

//Umar Hills 

I_C_T MAZZY 6 X3VieMAZZY6
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @156
END 

I_C_T RNGWLF01 5 X3VieRNGWLF01-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @157 
END 

I_C_T PLMETR01 25 X3ViePLMETR01-25
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @158
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@503)~ 
END 

I_C_T VALYGAR 43 X3VieVALYGAR43 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @159
END 

I_C_T VALYGAR 12 X3VieVALYGAR12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @160
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @161
END 

I_C_T VALYGAR 8 X3VieVALYGAR8 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @160
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @161
END 

I_C_T UHKID03 8 X3VieUHKID03-8
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @162
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T UHKID02 9 X3VieUHKID02-9
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @162
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T JUGJER01 12 X3VieJUGJER01-12
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @163
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @164
END 

I_C_T UHMAY01 18 X3VieUHMAY01-18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @165
END 

//Windspear Hills 

I_C_T SAMIA 24 X3VieSAMIA24 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @166
END 

I_C_T GARREN 27 X3VieGARREN27 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @167
END

// De-Arnise

I_C_T KPMAID01 14 X3VieKPMAID01-14 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @168
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @169
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
END 

I_C_T DELCIA 9 X3RebDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @170
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@506)~ 
== DELCIA @171
END 

INTERJECT DELCIA 1 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN @172
EXTERN DELCIA 48  

INTERJECT DELCIA 3 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN @172
EXTERN DELCIA 48  

INTERJECT DELCIA 4 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @172
EXTERN DELCIA 48 

INTERJECT DELCIA 7 X3VieDELCIA 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @172
EXTERN DELCIA 48 


//Wild Mage Sanctuary
I_C_T NEERA 21 X3VieNEERA21
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @173
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @174
== X3VieJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @175 
END 

I_C_T OHNQUAID 4 X3VieOHNQUAID 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN @176
END 

//Althkata 

I_C_T OHHFAK 34 X3EmiOHHFAK-34
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @177
END 

I_C_T ISAEA 29 X3VieISAEA29
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @178
END 

I_C_T ANOMENJ 135 X3VieAnomenJ135
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @179
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T ANOMENJ 176 X3VieAnomenJ176
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @180
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@513)~ 
END 

I_C_T MARIA 5 X3VieMARIA-5
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @181
END 

I_C_T EDWINJ 11 X3VieEDWINJ-11
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")~ THEN @182
END 

I_C_T EDWINJ 7 X3VieEDWINJ-7
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @183
== EDWINJ @184
END 

I_C_T CRTHF03 1 X3VieCRTHF03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @185
END 

I_C_T LUSETTE 15 X3VieLUSETTE15 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @186
END 

I_C_T MESSEN 5 X3VieMESSEN5 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @187
END 

I_C_T PACE 3 X3ViePace3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @188
END

I_C_T LYROS 11 X3VieLYROS11
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @189
== LYROS @190
END

I_C_T EDWIN 26 X3VieEDWIN26
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @191
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @192
END  

I_C_T BODHI 77 X3VieBODHI77 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @193
END 

I_C_T BODHI 45 X3VieBODHI45 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @194
END 

I_C_T BODHI 20 X3VieBODHI20 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @195
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~ 
END 


I_C_T BODHI 18 X3VieBodhi18
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @196
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T BODHI 6 X3VieBODHi6 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @197
END 

I_C_T BODHI 31 X3VieBODHI31 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @198
END 

I_C_T TIRDIR 11 X3VieTIRDIR11
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!Alignment("X3Vie",NEUTRAL)~ THEN @199
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @200
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@113)~
== TIRDIR @201
END 

I_C_T SPPAIN 23 X3VieSPPAIN23 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @202
END 

I_C_T SETHLE 10 X3VieSETHLE10
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @203
END 

I_C_T GBEGG01 5 X3VieGBEGG01-5 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @204
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @205
== X3VieJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @206
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN LOUTM02 X3Vie
@207
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @208
EXIT 

INTERJECT RAELIS 2 X3VieRAELIS2 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @209
EXTERN RAELIS 4

I_C_T RAELIS 79 X3VieRaelis79 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @210
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T RAELIS 76 X3VieRaelis76 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @210
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
END 

I_C_T DELNOB02 3 X3VieDELNOB02 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @211
END 

I_C_T BBEGG2 1 X3VieBBEGG2-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")~ THEN @212
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END

I_C_T LOUTCAPT 24 X3VieLOUTCAPT24 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @213
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @214
DO ~IncrementGlobal("X3EmiApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@113)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @215
DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~
END 

I_C_T LOUTCAPT 18 X3VieLOUTCAPT18 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @216
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @217
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN BAMNG01 X3Vie
@218
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @219
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN BAMNG02 X3Vie
@220
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @221
== X3HelJ @222
== X3VieJ @223
EXIT 

I_C_T NALIAJ 235 X3VieNALIAJ235
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @224
END 

I_C_T INSPECT 46 X3VieINSPECT46
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @225
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @226
END 

I_C_T INSPECT 2 X3VieInspect 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @227
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN PEHLLUS X3Vie
@228
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @229
EXIT 

I_C_T TOLGER 75 X3EmiTolger75 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @230
END 

I_C_T TOLGER 8 TOLGERX3Vie8 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @231
END 

I_C_T CORNEIL 11 CORNEILX3VieJ11 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @232
DO ~IncrementGlobal("X3VieApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@519)~
END 

I_C_T JANJ 136 JANX3VieJ136 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @233
END

I_C_T DELON 15 X3VieDELON15 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @234
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @235
END 

I_C_T DELON 15 X3VieDELON16
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @234
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @235
END 

CHAIN IF WEIGHT #-1 
~See("X3Vie")  // X3Vie
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Vie")  // X3Vie
RandomNum(2,1)
Global("Prophet4X3Vie","LOCALS",0)~ THEN PROPHET4 Vienxay 
@236
DO ~SetGlobal("Prophet4X3Vie","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3VieJ @237
EXIT 

I_C_T VICONI 11 X3EmiVICONI11 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @238
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~
END 

I_C_T VICONI 2 X3VieVICONI2
 == X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @239
 == VICONI @240
 == X3VieJ @241
DO ~SetGlobal("X3VieAppChange","GLOBAL",4)~
END 

I_C_T VICONI 4 X3VieVICONI4 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @242
DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~
== VICONI @243
END 

I_C_T VICG1 2 X3VieVICG12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @244
END 

I_C_T VICONI 10 X3VieVICONI10
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @245
END 

I_C_T CTRAITOR 3 X3VieCTRAITOR3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @246
END 

I_C_T RIFTG03 26 X3VieRIFTG03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @247
END 

I_C_T GAAL 13 X3VieGAAL13 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @248
END 

I_C_T MEKRAT 12 X3VieMEKRAT12 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @249
END 

I_C_T ACOLYTE1 1 X3VieACOLYTE1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @250
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @251
== X3VieJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @252
END 

I_C_T BHOISIG 19 X3VieBHOISIG19
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @253
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T BHOISIG 21 X3VieBHOISIG21
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @254
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
END 

I_C_T ACOLYTE2 1 X3VieACOLYTE2-1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @255
END

I_C_T SCYARRYL 31 X3VieSCYARRYL31
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @256
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @257
END

I_C_T SCSAIN 30 X3VieSCSAIN30
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @256
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @257
END

I_C_T SCTELWYN 30 X3VieSCTELWYN30 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @256
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @257
END

I_C_T BMTHIEF 3 X3VieBMTHIEF 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @258
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T DCLERIC 3 X3VieDCLERIC3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @259
== DCLERIC @260
END

I_C_T RENAL 47 X3VieRenal26 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @261
DO ~IncrementGlobal("X3VieApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@503)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @262
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~
END 

I_C_T JANJ 116 X3VieJanJ116
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @263
END

I_C_T RENAL 26 X3VieRenal26 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @264
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @265
END 

I_C_T RENAL 26 X3VieRenal26 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @266
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @267
== X3VieJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @268
END 

I_C_T RENAL 10 X3VieRenal10 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @266
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @267
== X3VieJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @268
END 

I_C_T PRISS 1 X3ViePriss1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @269
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @270
END 

INTERJECT TIANA 4 X3VieTiana4  
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("TalkedToRumar","GLOBAL",1)~ THEN @271
EXTERN TIANA 5

INTERJECT TIANA 6 X3VieTiana6  
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")Global("TalkedToRumar","GLOBAL",1)~ THEN @271
EXTERN TIANA 5

I_C_T SEWERM1 13 X3VieSEWERM1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @272
END 

 
I_C_T LEHTIN 9 X3EmiLEHTIN9 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @273
END 
 
I_C_T NALIA 13 X3EmiNalia13 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @274
END 

I_C_T BEGGAR1 6 X3VieBeggar1-6 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @275
DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END  

I_C_T RUFPAL2 5 X3RebRUFPAL2
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @276
DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~
END  

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,1)
Global("X3Vie","LOCALS",0)~ THEN WAYLANE X3Vie
@277
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @278
== WAYLANE @279
== X3VieJ @280
EXIT 

I_C_T BEGGAR1 1 X3VieBeggar1-1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @281
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T BEGGAR3 1 X3VieBeggar3-1 
== X3VieJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN @282
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~
END 

I_C_T SLUMM1 2 X3VieSLUMM1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @283
END 


I_C_T GAELAN 74 X3VieGaelan74 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @284
END  

I_C_T GAELAN 66 X3VieGaelan74 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @285
END 

I_C_T KALAH2 6 X3VieKALAH2 
== X3VieJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN @286
END 

I_C_T HAWKER01 0 X3VieHAWKER0 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @287
END 

I_C_T CIRCG1 8 X3VieCIRCG1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @288
END 

I_C_T NOBLEW3 6 X3VieNOBLEW3 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @289
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @290
END 

I_C_T AERIE 37 X3VieAerie37 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @291
END  

I_C_T AERIE 1 X3VieAerie1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @292
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")Global("X3ViePartyBG1","GLOBAL",1)Global("X3EmiPartyBG1","GLOBAL",1)~ THEN @293
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END

I_C_T WCUST03 0 X3VieWCUST03 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @294
END 

CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,1)
Global("X3Vie","LOCALS",0)~ THEN MURTLEN X3Vie
@295
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @296
EXIT 


CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
Global("X3Vie","LOCALS",0)~ THEN BELMIN X3Vie
@297
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @298
== BELMIN @299
== X3VieJ @300
== BELMIN @301
== X3VieJ @302
EXIT  

I_C_T GERETH 0 X3VieGERETH0
== X3VieJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN @303
== GERETH @304
== X3VieJ @305
== GERETH @306
END 

I_C_T SCROLL01 0 X3VieScroll01 
== SCROLL01 IF ~IsValidForPartyDialogue("X3Vie")~ THEN @307
== X3VieJ @308
== SCROLL01 @309
END 

I_C_T SENTINEL 0 X3VieSENTINEL 
== SENTINEL IF ~IsValidForPartyDialogue("X3Vie")~ THEN @310
== X3VieJ @311
== SENTINEL @312
END 

/*Story Interjections*/ 
CHAIN IF WEIGHT #-1
~See("X3Vie")
IsValidForPartyDialogue("X3Vie")
RandomNum(2,2)
Global("X3Vie","LOCALS",0)~ THEN CELVAN X3Vie
@313
DO ~SetGlobal("X3Vie","LOCALS",1)~
== X3VieJ @314
EXTERN CELVAN 1

//Madam Nin
EXTEND_BOTTOM MADAM 0
IF ~Name("X3Vie",LastTalkedToBy)~ EXTERN X3VieJ X3VieMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Vie",LastTalkedToBy)~ EXTERN X3VieJ X3VieMadam
END


CHAIN X3VieJ X3VieMadam 
@315
EXIT 

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("X3Vie")
See("X3Vie")
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",2)~ THEN MADAM X3VieMadam
@316
== X3VieJ @317
EXTERN MADAM 17
//Sylvanas
CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Vie",LastTalkedToBy)~ THEN SALVANAS X3VieSalvanas
@318
== X3VieJ @319
== SALVANAS @320
== X3VieJ @321
== SALVANAS @322
== X3VieJ @323
EXIT

//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Vie",LastTalkedToBy)~ EXTERN TRGYP02 X3Vieg1
END

CHAIN TRGYP02 X3Vieg1
@324
== X3VieJ @325
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3VieYOSHJ113
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @326
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie") Range("X3Vie",15)~ THEN
@327
END
++ @328 EXTERN X3VieJ spellhold.1
++ @329 EXTERN X3VieJ spellhold.1
++ @330 EXTERN X3VieJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3VieJ spellhold.1
@331
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @332 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @333
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @334
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @335 
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3VieFirstSlayerChange1 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")See("X3Vie")~ THEN @336
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3VieSecondSlayerChange0
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie") OR(2) Global("X3VieRomanceActive","GLOBAL",1) Global("X3VieRomanceActive","GLOBAL",2)~ THEN @337
END
++ @338 EXTERN X3VieJ X3VieSecondSlayerChange1
++ @339 EXTERN X3VieJ X3VieSecondSlayerChange1
++ @340 EXTERN X3VieJ X3VieSecondSlayerChange1

CHAIN X3VieJ X3VieSecondSlayerChange1
@341
DO ~SetGlobal("X3VieSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3VieSlayerSurvived1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie") OR(2) Global("X3VieRomanceActive","GLOBAL",1) Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSecondSlayerChange","GLOBAL",1)~ THEN @342
= @343
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Vie") Global("X3VieSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END


// Phaere

CHAIN IF ~Global("X3VieCheckMad1","GLOBAL",1)Global("X3VieMad1","LOCALS",0)~ THEN X3VieJ Phaere_Warning
@344 
DO ~SetGlobal("X3VieMad1","LOCALS",1)~
END 
++ @345 + PW.1 
++ @346 + PW.2 
++ @347 + PW.3

CHAIN X3VieJ PW.1 
@348
END 
++ @346 + PW.2 
++ @347 + PW.3

CHAIN X3VieJ PW.2 
@349
EXIT 

CHAIN X3VieJ PW.3 
@350
DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@506)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",2)~ + @351 EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3VieCheckMad2","GLOBAL",1)Global("X3VieMad2","LOCALS",0)~ THEN X3VieJ X3ViePhaere
@352
DO ~SetGlobal("X3VieMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3VieJ X3ViePhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3VieJ X3ViePhaere2

CHAIN X3VieJ X3ViePhaere1
@353
= @354
DO ~IncrementGlobal("X3VieApp","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@509)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3VieJ X3ViePhaere2
@355
= @356
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~ 
EXIT


//Bodhi 
EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3VieKidnap
END

CHAIN BODHIAMB X3VieKidnap
@357
= @358
== X3VieJ @359
== BODHIAMB @360
== X3VieJ @361
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3VBodhi")~ 
EXIT

CHAIN IF WEIGHT #-1
~Global("X3VieVampire","GLOBAL",1)~ THEN BODHIAMB X3VieKidnap4
@362
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
@363
DO ~SetGlobal("X3VieVampire","GLOBAL",4)~
END 
++ @364 + BE.1
++ @365 + BE.3
++ @366 + BE.2

CHAIN X3VieJ BE.1 
@367
EXTERN X3VieJ BE.2

CHAIN X3VieJ BE.3 
@368
EXTERN X3VieJ BE.2

CHAIN X3VieJ BE.2 
@369
EXIT 

I_C_T C6BODHI 0 X3VieRomC6Bodhi0 
== X3VieJ IF ~Global("X3VieRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Vie")Global("X3VieVampire","GLOBAL",4)~ THEN @370
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @371
END 

I_C_T C6BODHI 0 X3VieC6Bodhi0
== X3VieJ IF ~!Global("X3VieRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Vie")~ THEN @372
END


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieTreeOfLife","GLOBAL",0) !Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 Epl2
END

CHAIN PLAYER1 Epl2
@373
DO ~SetGlobal("X3VieTreeOfLife","GLOBAL",1)~
END
++ @374 EXTERN X3VieJ pl2.2
++ @375 EXTERN X3VieJ pl2.2
++ @376 EXTERN X3VieJ pl2.2

CHAIN X3VieJ pl2.2 
@377
EXTERN X3VieJ pl2.1

CHAIN X3VieJ pl2.1
@378
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieTreeOfLife","GLOBAL",0) Global("X3VieRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 Epl3
END

CHAIN PLAYER1 Epl3
@379
DO ~SetGlobal("X3VieTreeOfLife","GLOBAL",1)~
END
++ @380 EXTERN X3VieJ pl3.1

CHAIN X3VieJ pl3.1
@381
= @382
= @383
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3VieIrenicusIsDead1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @384
END

// Hell

I_C_T PLAYER1 25 X3VieEnteringHell1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @385
END

// Irenicus in hell

I_C_T HELLJON 7 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @386
END

I_C_T HELLJON 8 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @386
END

I_C_T HELLJON 9 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @386
END

I_C_T HELLJON 10 X3VieThirdBattleWithIrenicus
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @386
END

//Temple District Talk 

CHAIN IF ~Global("X3VTempleTalk","LOCALS",2)~ THEN X3VieJ TempleTalk
@387
DO ~IncrementGlobal("X3VTempleTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @388 + TT.2
++ @389  DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + TT.1
++ @390 + TT.3
++ @391 + TT.X

CHAIN X3VieJ TT.1
@392
EXTERN X3VieJ TT.4

CHAIN X3VieJ TT.2 
@393
EXTERN X3VieJ TT.4

CHAIN X3VieJ TT.3
@394
EXTERN X3VieJ TT.4

CHAIN X3VieJ TT.X 
@395 
DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~
EXIT 

CHAIN X3VieJ TT.4
@396
END 
++ @397 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + TT.5
++ @398 + TT.6
++ @399 + TT.7

CHAIN X3VieJ TT.5
@400
EXTERN X3VieJ TT.Exit 

CHAIN X3VieJ TT.6
@401
EXTERN X3VieJ TT.Exit 

CHAIN X3VieJ TT.7
@402
EXTERN X3VieJ TT.Exit 

CHAIN X3VieJ TT.Exit 
@403
EXIT 


// Book of Myth Drannor Retrieved

CHAIN IF ~Global("X3VieQuest","GLOBAL",9)~ THEN X3VieJ QuestFound
@404
DO ~IncrementGlobal("X3VieApp","GLOBAL",15)
DisplayStringNoNameDlg(Player1,@519)~
END 
++ @405 + QuestFound2
++ @406 + QuestFound2
++ @407 + QuestFound2

CHAIN X3VieJ QuestFound2
@408
DO ~StartCutSceneMode()StartCutScene("X3VCut01")~ EXIT 

CHAIN IF ~Global("X3VieQuest","GLOBAL",10)~ THEN X3VieJ QuestFound3 
@409
DO ~SetGlobal("X3VieQuest","GLOBAL",11)~
== X3VieJ @410
== X3VieJ @411
END 
++ @412 + QuestSage
++ @413 + QuestKeep
// If the player is Elf or Vienxay loves them, she will be more thoughtful. Otherwise, she will express keeping it for herself. Both raise approval.
+~OR(3)Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+ @414 DO ~IncrementGlobal("X3VieApp","GLOBAL",1)~ + QuestChoice1
+~!Global("X3VieRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",2)!Race(Player1,ELF)~+ @414 DO ~IncrementGlobal("X3VieApp","GLOBAL",1)~ + QuestChoice2

CHAIN X3VieJ QuestSage 
@415
EXTERN X3VieJ QuestSageDecision

CHAIN X3VieJ QuestSageDecision
@416
DO ~AddJournalEntry(@6,QUEST)~ EXIT 

CHAIN X3VieJ QuestKeep
@417
EXTERN X3VieJ QuestKeepDecision

CHAIN X3VieJ QuestKeepDecision
@418
DO ~AddJournalEntry(@7,QUEST_DONE)AddexperienceParty(30000)~ EXIT 

CHAIN X3VieJ QuestChoice1 
@419
END 
++ @420 + QuestGiveDecision
++ @421 + QuestKeepDecision
++ @422 + DecideLater

CHAIN X3VieJ QuestChoice2 
@423
END 
++ @424 + QuestSage
++ @425 + QuestGiveDecision
++ @422 + DecideLater

CHAIN X3VieJ QuestGiveDecision 
@426
EXTERN X3VieJ QuestSageDecision

CHAIN X3VieJ DecideLater 
@427
DO ~AddJournalEntry(@8,QUEST)~ EXIT

//Friendship Talk 1

CHAIN IF ~Global("X3VieTalk","LOCALS",2)~ THEN X3VieJ Talk1
@428
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @429 + T1.1 
++ @430 + T1.2 
++ @431 + T1.3 

CHAIN X3VieJ T1.1 
@432
END 
++ @433 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.4
++ @434 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.5
++ @435 + T1.6
++ @436 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T1.X

CHAIN X3VieJ T1.2 
@437
END 
++ @433 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.4
++ @434 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~+ T1.5
++ @435 + T1.6
++ @436 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T1.X

CHAIN X3VieJ T1.3 
@438
END 
++ @433 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.4
++ @434 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T1.5
++ @439 + T1.6
++ @436 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T1.X

CHAIN X3VieJ T1.4 
@440
EXTERN X3VieJ T1.7

CHAIN X3VieJ T1.5 
@441
= @442
EXIT 

CHAIN X3VieJ T1.6 
@443
EXTERN X3VieJ T1.7

CHAIN X3VieJ T1.7
@444
EXIT 

CHAIN X3VieJ T1.X 
@445
= @446
EXIT 

// Vienxay's Second Talk is already done, and starts her quest.
CHAIN IF ~Global("X3VieTalk","LOCALS",4)~ THEN X3VieJ FriendshipTalk2 // This is basically her quest talk, but is slotted with the second talk.
@447
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieQuest","GLOBAL",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @448 + t2.story 
++ @449 + t2.story
+~Race(Player1,ELF)~+ @450 + t2.elf_personally 
+~!Race(Player1,ELF)~+ @450  + t2.personally

CHAIN X3VieJ t2.story 
@451
== X3VieJ @452
== X3VieJ @453
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ t2.Recorder_knows  
++ @454 + t2.ask_around
++ @455 + t2.temple 
++ @456 + t2.book

CHAIN X3VieJ t2.elf_personally
@457
EXTERN X3VieJ t2.story

CHAIN X3VieJ t2.personally 
@458
EXTERN X3VieJ t2.story 

CHAIN X3RebJ t2.Recorder_knows 
@459
== X3VieJ @460
DO ~AddJournalEntry(@1,QUEST)~
END 
++ @461 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ EXTERN X3VieJ t2.time  // 
++ @462 DO ~IncrementGlobal("X3RebApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3VieAppChange","GLOBAL",1)~ EXTERN X3VieJ t2.rude // 
++ @463 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ EXTERN X3VieJ t2.you  // - Vienxay 
++ @464 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ EXTERN X3VieJ t2.no_time // - Vienxay 

CHAIN X3VieJ t2.ask_around 
@465
EXTERN X3VieJ t2.book 

CHAIN X3VieJ t2.temple 
@466
EXTERN X3VieJ t2.book 

CHAIN X3VieJ t2.book 
@467
DO ~AddJournalEntry(@1,QUEST)~
END 
++ @461 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + t2.time 
++ @463 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ +  t2.you  
++ @464 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + t2.no_time 

CHAIN X3VieJ t2.time 
@468
EXIT 

CHAIN X3VieJ t2.you 
@469
EXIT 

CHAIN X3VieJ t2.rude 
@470
== X3VieJ @471
== X3RebJ @472
== X3VieJ @473
EXIT 

CHAIN X3VieJ t2.no_time 
@474
== X3VieJ @475
EXIT 

//Friendship Talk 3

CHAIN IF ~Global("X3VieTalk","LOCALS",6)~ THEN X3VieJ Talk3
@476
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @477 + T3.1 
++ @478 + T3.3
++ @479 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T3.X 

CHAIN X3VieJ T3.X 
@480
EXIT 

CHAIN X3VieJ T3.XX 
@481
EXIT 

CHAIN X3VieJ T3.1 
@482
END 
++ @483 + T3.2 
++ @484 + T3.3
++ @485 + T3.2 

CHAIN X3VieJ T3.2 
@486
EXTERN X3VieJ T3.4

CHAIN X3VieJ T3.3
@487
END 
++ @488 + T3.4 
++ @489 + T3.4
++ @490 + T3.XX

CHAIN X3VieJ T3.4 
@491
EXTERN X3VieJ T3.5

CHAIN X3VieJ T3.5
@492
END 
++ @493 + T3.6
++ @494 + T3.7
++ @495 + T3.8
++ @496 + T3.8

CHAIN X3VieJ T3.6 
@497
DO ~SetGlobal("X3VieInterest","LOCALS",1)IncrementGlobal("X3VieAppChange","GLOBAL",1)~
EXIT 

CHAIN X3VieJ T3.7
@498
DO ~SetGlobal("X3VieInterest","LOCALS",1)IncrementGlobal("X3VieAppChange","GLOBAL",1)~
EXIT 

CHAIN X3VieJ T3.8
@499
EXIT 

//Friendship Talk 4

CHAIN IF ~Global("X3VieTalk","LOCALS",8)~ THEN X3VieJ Talk4
@500
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @501 + T4.2
++ @502 + T4.1 
++ @503 + T4.3

CHAIN X3VieJ T4.1
@504
EXTERN X3VieJ T4.2 

CHAIN X3VIeJ T4.2 
@505
== X3VieJ @506
END 
++ @507 + T4.5 
++ @508 + T4.4 
++ @509 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T4.6

CHAIN X3VieJ T4.3 
@510
EXTERN X3VieJ T4.2 

CHAIN X3VieJ T4.4
@511
EXTERN X3VieJ T4.5 

CHAIN X3VieJ T4.6 
@512
EXTERN X3VieJ T4.5 

CHAIN X3VieJ T4.5 
@513 
== X3VieJ @514
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ @515 + T4.7
++ @516 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T4.8
++ @517 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.11
++ @518 + T4.12

CHAIN X3VieJ T4.7
@519
END 
+~!Race(Player1,ELF)~+ @520 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.9
+~Race(Player1,ELF)~+ @520 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.10
++ @516 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.8
++ @517 + T4.11

CHAIN X3VieJ T4.12
@521
= @522
END 
++ @523 + T4.14
++ @524 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~+ T4.13 
++ @525 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T4.8

CHAIN X3VieJ T4.8 
@526
EXIT 

CHAIN X3VieJ T4.9 
@527
DO ~SetGlobal("X3VieInterest","LOCALS",1)~
EXIT 

CHAIN X3VieJ T4.10 
@528
EXIT 

CHAIN X3VieJ T4.11 
@529
EXIT 

CHAIN X3VieJ T4.14 
@530
EXIT 

CHAIN X3VieJ T4.13 
@531
EXIT 

//Friendship Talk 5

CHAIN IF ~Global("X3VieTalk","LOCALS",10)~ THEN X3VieJ FriendshipTalk5 
@532
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @533 + T5.1 
++ @534 + T5.2 
++ @535 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T5.3

CHAIN X3VieJ T5.3 
@536
EXTERN X3VieJ T5.2

CHAIN X3VieJ T5.1 
@537
EXTERN X3VieJ T5.2 

CHAIN X3VieJ T5.2 
@538
= @539
END 
++ @540 + T5.4 
++ @541 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~  + T5.5 
++ @542 + T5.6

CHAIN X3VieJ T5.4 
@543
EXTERN X3VieJ T5.7

CHAIN X3VieJ T5.5 
@544
EXTERN X3VieJ T5.7

CHAIN X3VieJ T5.6 
@545
EXTERN X3VieJ T5.7

CHAIN X3VieJ T5.7
@546
END 
++ @547 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)SetGlobal("X3VieInterest","LOCALS",1)~ + T5.8
++ @548 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T5.9
++ @549 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T5.10

CHAIN X3VieJ T5.8
@550
EXTERN X3VieJ T5.10

CHAIN X3VieJ T5.9 
@551
EXTERN X3VieJ T5.10 

CHAIN X3VieJ T5.10
@552
EXIT 


//Quest Talk
//Resume here 


CHAIN IF ~Global("X3VieQuestStart","LOCALS",1)~ THEN X3VieJ QuestBook
@553
DO ~IncrementGlobal("X3VieQuestStart","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @554   + QuestBook.1 
++ @555 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + QuestBook.2 
++ @556 + QuestBook.3 

CHAIN X3VieJ QuestBook.1 
@557
END 
++ @558 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + QuestBook.4 
++ @559 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.5 
++ @560 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.6 
++ @556 + QuestBook.3 

CHAIN X3VieJ QuestBook.2 
@561
EXIT 

CHAIN X3VieJ QuestBook.3 
@562
EXIT 

CHAIN X3VieJ QuestBook.4 
@563
== X3VieJ @564
END 
++ @565 + QuestBook.7
++ @566 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.8
++ @567 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + QuestBook.7

CHAIN X3VieJ QuestBook.5 
@568
END 
++ @569 + QuestBook.8
++ @570 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + QuestBook.8 
++ @571 + QuestBook.3 

CHAIN X3VieJ QuestBook.6 
@572
EXTERN X3VieJ QuestBook.8

CHAIN X3VieJ QuestBook.7 
@573
EXIT 

CHAIN X3VieJ QuestBook.8
@574
END 
++ @575 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)SetGlobal("X3VieInterest","LOCALS",1)~ + QuestBook.9
++ @576 + QuestBook.10
++ @577 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + QuestBook.11 

CHAIN X3VieJ QuestBook.9
@578
EXIT 

CHAIN X3VieJ QuestBook.10 
@579
EXIT 

CHAIN X3VieJ QuestBook.11 
@580
EXIT 


// Post Slayer Change Non-Romance 
CHAIN IF ~Global("X3VieTalk","LOCALS",12)~ THEN X3VieJ Talk6
@581
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @582 + T6.1 
++ @583 + T6.2
++ @584 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T6.3 

CHAIN X3VieJ T6.1
@585
== X3VieJ @586
END 
++ @587 + T6.4
++ @588 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T6.5
++ @589 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T6.6

CHAIN X3VieJ T6.2 
@590
END 
++ @587 + T6.4
++ @588 DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)~ + T6.5
++ @589 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T6.6

CHAIN X3VieJ T6.3
@591
END 
++ @587 + T6.4
++ @588 DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)~ + T6.5
++ @589 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T6.6

CHAIN X3VieJ T6.4 
@592
END 
++ @593 EXIT 
++ @594 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T6.8
++ @595 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T6.7

CHAIN X3VieJ T6.5 
@596
END 
++ @593 EXIT 
++ @594 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T6.8
++ @595 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T6.7

CHAIN X3VieJ T6.6 
@597
END 
++ @593 EXIT 
++ @594 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T6.8
++ @595 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T6.7

CHAIN X3VieJ T6.7
@598
EXIT 

CHAIN X3VieJ T6.8 
@599
EXIT 

//Underdark Talk

CHAIN IF ~Global("X3VieUTalk","LOCALS",2)~ THEN X3VieJ UnderdarkTalk
@600
DO ~IncrementGlobal("X3VieUTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @601 + U.1 
++ @602 + U.2
+~Global("X3VieRomanceActive","GLOBAL",1)~+ @603 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + U.3 
++ @604 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + U.X

CHAIN X3VieJ U.1 
@605
EXTERN X3VieJ U.4 

CHAIN X3VieJ U.X 
@606
EXIT 

CHAIN X3VieJ U.2 
@607
EXTERN X3VieJ U.4 

CHAIN X3VieJ U.3 
@608
EXTERN X3VieJ U.4 

CHAIN X3VieJ U.4 
@609
END 
++ @610 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + U.5 
++ @611 EXIT
+~Global("X3VieQuest","GLOBAL",5)~+ @612 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + U.6

CHAIN X3VieJ U.5 
@613
EXIT

CHAIN X3VieJ U.6 
@614
= @615
EXIT 



// After entering Ust Natha Non Romance 
CHAIN IF ~Global("X3VieTalk","LOCALS",14)~ THEN X3VieJ Talk7 
@616
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @617 + T7.1 
++ @618 + T7.2
++ @619 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T7.3
++ @620 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T7.X

CHAIN X3VieJ T7.X
@621
EXIT 

CHAIN X3VieJ T7.1
@622
END
++ @623 + T7.5
++ @624 + T7.2
++ @625 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T7.2

CHAIN X3VieJ T7.5
@626
END 
++ @627 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T7.6
++ @628 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + T7.7 
++ @629 + T7.8

CHAIN X3VieJ T7.6
@630
EXIT 

CHAIN X3VieJ T7.7
@631
EXIT 

CHAIN X3VieJ T7.8
@632
EXIT 



CHAIN X3VieJ T7.2 
@633
EXTERN X3VieJ 7.4

CHAIN X3VieJ T7.3
@634
EXTERN X3VieJ T7.4

CHAIN X3VieJ T7.4
@635
END 
++ @636 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + T7.9 
++ @637 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T7.10 
++ @638 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T7.11

CHAIN X3VieJ T7.9
@639
= @640
EXIT  

CHAIN X3VieJ T7.10
@641
EXIT

CHAIN X3VieJ T7.11
@642
EXIT  



//Elf City 
CHAIN IF ~Global("X3VieTalk","LOCALS",16)~ THEN X3VieJ Talk8
@643
DO ~IncrementGlobal("X3VieTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @644 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T8.1
++ @645 + T8.2
++ @646 + T8.X

CHAIN X3VieJ T8.X 
@647
EXIT 

CHAIN X3VieJ T8.1 
@648
EXTERN X3VieJ T8.3 

CHAIN X3VieJ T8.2 
@649
EXTERN X3VieJ T8.3 

CHAIN X3VieJ T8.3
@650
END 
++ @651 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T8.4 
++ @652 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + T8.5
++ @653 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + T8.6

CHAIN X3VieJ T8.4 
@654
EXIT 

CHAIN X3VieJ T8.5 
@655
EXIT 

CHAIN X3VieJ T8.6
@656
EXIT 


// Romance:
/* Requires: 15/60 Approval, Talk 5 to be completed from the Friendship Track. At least some Interest made apparent at some point. (If failed must be done through PID).
Vienxay has no conflicts with Kale, but will conflict with Recorder/ Emily, which must be concluded by LoveTalk6. */
CHAIN IF ~Global("X3VieLoveTalk","LOCALS",2)~ THEN X3VieJ LoveTalk1 
@657
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ @658 + 1.1
++ @659 + 1.2 
++ @660 + 1.3
+~Kit(Player1,SHADOWDANCER)~+ @661 + 1.4
++ @662 + 1.X 

CHAIN X3VieJ 1.X 
@663
EXIT 

CHAIN X3VieJ 1.1
@664
EXTERN X3VIeJ 1.3 

CHAIN X3VieJ 1.2 
@665
EXTERN X3VieJ 1.3 

CHAIN X3VieJ 1.3 
@666
= @667
END 
++ @668 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 1.5 
++ @669 + 1.6 
++ @670 + 1.7

CHAIN X3VieJ 1.5 
@671
EXTERN X3VieJ 1.7

CHAIN X3VieJ 1.6
@672
EXTERN X3VieJ 1.7

CHAIN X3VIeJ 1.7
@673
= @674
END 
++ @675 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 1.8
++ @676 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.9
++ @677 + 1.10

CHAIN X3VieJ 1.8
@678
EXTERN X3VieJ 1.11

CHAIN X3VieJ 1.9
@679
EXTERN X3VieJ 1.11 

CHAIN X3VieJ 1.10
@680
EXTERN X3VieJ 1.11

CHAIN X3VieJ 1.11 
@681
EXIT 


CHAIN X3VieJ 1.4 
@682
EXTERN X3VieJ 1.3

// Lovetalk #2

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",4)~ THEN X3VieJ LoveTalk2
@683
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @684 + 2.1 
++ @685 + 2.1 
++ @686 + 2.X 

CHAIN X3VieJ 2.1 
@687
= @688
END 
++ @689 + 2.2 
++ @690 + 2.3 
++ @691 + 2.4

CHAIN X3VieJ 2.2
@692
EXTERN X3VieJ 2.5 

CHAIN X3VieJ 2.3 
@693
EXTERN X3VieJ 2.5 

CHAIN X3VieJ 2.4 
@694
EXTERN X3VieJ 2.5 

CHAIN X3VieJ 2.5
@695
END 
++ @696 + 2.6
++ @697 + 2.7 
++ @698 + 2.8
++ @699 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 2.9 

CHAIN X3VieJ 2.6 
@700
EXTERN X3VieJ 2.9 

CHAIN X3VieJ 2.7
@701
EXTERN X3VieJ 2.11

CHAIN X3VieJ 2.8
@702
EXTERN X3VieJ 2.9

CHAIN X3VieJ 2.9
@703
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ @704 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.10 
++ @705 + 2.7
++ @706 + 2.11
++ @707 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.12

CHAIN X3VieJ 2.11 
@708
EXIT 

CHAIN X3VieJ 2.10
@709
EXTERN X3VIeJ 2.11 

CHAIN X3VieJ 2.12
@710
EXTERN X3VieJ 2.11

CHAIN X3VieJ 2.X 
~@686 Hrmph. Fine. We can talk later.~
EXIT 

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",6)~ THEN X3VieJ LoveTalk3 
@712
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
IF ~Race(Player1,ELF)~ EXTERN X3VIeJ 3.Elf 
IF ~!Race(Player1,ELF)~ EXTERN X3VieJ 3.NoElf 

CHAIN X3VIeJ 3.Elf 
@713
END 
++ @714 + 3.1
++ @715 + 3.2
++ @716 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.3
++ @717 + 3.X 

CHAIN X3VieJ 3.NoElf 
@718
END 
++ @714 + 3.1
++ @715 + 3.2
++ @716 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.3
++ @717 + 3.X 

CHAIN X3VieJ 3.X 
@719
EXIT 

CHAIN X3VieJ 3.1
@720
END 
++ @721 + 3.4
++ @722 + 3.5
++ @723 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 3.6
++ @724 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.3

CHAIN X3VieJ 3.2
@725
END 
++ @726 + 3.7
++ @727 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.8
++ @728 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.16

CHAIN X3VieJ 3.3 
@729
EXTERN X3VieJ 3.13

CHAIN X3VieJ 3.6
@730
END 
++ @731 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.9
++ @732 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.10
++ @733 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.11

CHAIN X3VieJ 3.7
@734
END 
++ @735 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 3.12
++ @736 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 3.14
++ @737 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.12

CHAIN X3VieJ 3.8
@738
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.9 
@739
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.10 
@740
EXTERN X3VieJ 3.15

CHAIN X3VIeJ 3.11 
@741
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.12 
@742
EXTERN X3VieJ 3.15 

CHAIN X3VieJ 3.14 
@743
EXTERN X3VieJ 3.13 

CHAIN X3VieJ 3.13 
@744
EXIT 

CHAIN X3VieJ 3.15
@745
= @746
END 
++ @747 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.17
++ @748 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.18
++ @749 + 3.19
++ @750 + 3.20
++ @751 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 3.21

CHAIN X3VieJ 3.16
@752
EXTERN X3VieJ 3.15 

CHAIN X3VieJ 3.17
@753
EXTERN X3VieJ 3.18 

CHAIN X3VieJ 3.18 
@754
EXIT 

CHAIN X3VieJ 3.19 
@755
= @756
EXTERN X3VieJ 3.18 

CHAIN X3VieJ 3.20 
@757
EXTERN X3VieJ 3.18 

CHAIN X3VieJ 3.21 
@758
EXIT 

CHAIN X3VieJ 3.4
@759
EXTERN X3VieJ 3.15

CHAIN X3VieJ 3.5 
@760
EXTERN X3VieJ 3.15 

// Love Talk #4

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",8)~ THEN X3VieJ LoveTalk4 
@761
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
+~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ @762 + 4C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @762 + 2C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @762 + 3C4.1 
+~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ @763 + 3C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @763 + 2C4.1
+~Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @763 + 2C4.1
++ @764 + 4.X 

CHAIN X3VieJ 3C4.1
@765
END 
+~Global("WorkingForAran","GLOBAL",1)~+ @766 + 3C4.2
++ @767 + 3C4.2
+~Global("WorkingForBodhi","GLOBAL",1)~+ @768 + 3C4.2
++ @769 + 3C4.2

CHAIN X3VieJ 4C4.1
@770
END 
++ @771 + 4C4.2
++ @772 + 4C4.3
++ @773 + 4.X 

CHAIN X3VieJ 2C4.1 
@774
END 
++ @775 + 3C4.2
++ @776 + 2C4.3
++ @777 + 3C4.2
++ @778 + 3C4.2

CHAIN X3VieJ 4C4.2
@779
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 4C4.3 
@780
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 3C4.2
@781
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 2C4.3 
@782
EXTERN X3VieJ 4.2 

CHAIN X3VieJ 4.2 
@783
= @784
END 
++ @785 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 4.3 
++ @786 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.4 
++ @787 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.5
++ @788 + 4.6

CHAIN X3VieJ 4.3
@789
EXTERN X3VieJ 4.6

CHAIN X3VieJ 4.4 
@790
EXTERN X3VieJ 4.6

CHAIN X3VieJ 4.5 
@791
EXTERN X3VieJ 4.6

CHAIN X3VieJ 4.6
@792
= @793
END 
++ @794 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 4.7
++ @795 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.8
++ @796 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.9

CHAIN X3VIeJ 4.7
@797
EXTERN X3VieJ 4.10

CHAIN X3VieJ 4.8 
@798
EXTERN X3VieJ 4.10

CHAIN X3VieJ 4.9
@799
EXTERN X3VieJ 4.10

CHAIN X3VieJ 4.10
@800
END 
++ @801 + 4.13 
++ @802 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.12 
++ @803 + 4.11 

CHAIN X3VieJ 4.11
@804
EXIT 

CHAIN X3VieJ 4.13 
@805
EXIT 

CHAIN X3VieJ 4.12
@806
EXIT  


CHAIN X3VieJ 4.X 
@807
EXIT 

//Love Talk #5
// Reputation comments. Vienxay actually prefers mid or low reputation IF the character is not too open about their malice.

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",10)~ THEN X3VieJ LoveTalk5 
@808
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
+~ReputationLT(Player1,9)~+ @809 + 5.1L 
+~ReputationGT(Player1,8)ReputationLT(Player1,13)~ + @809 + 5.1M
+~ReputationGT(Player1,12)~+ @809 + 5.1H
++ @810  DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~+ 5.2 
++ @811 + 5.X

CHAIN X3VieJ 5.2 
@812
END 
IF ~ReputationGT(Player1,12)~ EXTERN X3VieJ 5.1H
IF ~ReputationGT(Player1,8)ReputationLT(Player1,13)~ EXTERN X3VieJ 5.1M
IF ~ReputationLT(Player1,9)~ EXTERN X3VieJ 5.1L

CHAIN X3VieJ 5.1L
@813
END 
++ @814 + 5.1L1
++ @815 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 5.1L4 
++ @816 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1L2 

CHAIN X3VieJ 5.1L1
@817
= @818
END 
++ @819 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1L3
++ @820 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1L4
++ @821 + 5.1L5

CHAIN X3VieJ 5.1L2 
@822
= @823
END
++ @819 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1L3
++ @820 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1L4
++ @821 + 5.1L5

CHAIN X3VieJ 5.1L3 
@824
EXIT 



CHAIN X3VieJ 5.1L5 
@825
EXIT 

CHAIN X3VieJ 5.1M
@826
END 
++ @827 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1M1 
++ @828 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M2
++ @829 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M3 

CHAIN X3VieJ 5.1M1 
@830
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1M2 
@831
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1M3 
@832
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ @833
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ @834
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1M4 
@835
END 
++ @836 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M5
++ @837 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1M6
++ @838 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.1M7

CHAIN X3VieJ 5.1M5 
@839
EXIT 

CHAIN X3VieJ 5.1M6 
@840
EXIT 

CHAIN X3VieJ 5.1M7
@841
EXIT 

CHAIN X3VieJ 5.1L4 
@842
EXIT 

CHAIN X3VieJ 5.1H 
@843
END 
++ @844 + 5.1H1 
++ @845 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.1H2 
++ @846 + 5.1H3

CHAIN X3VieJ 5.1H1
@847
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1H2 
@848
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.1H3 
@849
EXTERN X3VieJ 5.1M4

CHAIN X3VieJ 5.X 
@850
EXIT 

// Love Talk #6

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",12)~ THEN X3VieJ LoveTalk6
@851
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @852 + 6.1 
++ @853 + 6.2
++ @854 + 6.3
++ @855 + 6.1

CHAIN X3VieJ 6.1
@856
END 
+~Global("X3ViePartyBG1","GLOBAL",1)~+ @857 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 6.6B
++ @858 + 6.4 
++ @859 + 6.5

CHAIN X3VieJ 6.4 
@860
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.6B 
@861
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.5 
@862
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6


CHAIN X3VIeJ 6.2 
@863
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6


CHAIN X3VieJ 6.3 
@864
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Emily 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.Emily 
@865
END 
++ @866 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Emily1
++ @867 + 6.Emily2
+ +@868 + 6.Emily3

CHAIN X3VieJ 6.Emily3 
@869
= @870
END 
++ @871 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Emily1 
++ @872 + 6.Emily2

CHAIN X3VieJ 6.Emily1 
@873
EXTERN X3VieJ 6.RBreak 

CHAIN X3VieJ 6.Emily2 
@874
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3KalRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Kale 
IF ~!Global("X3KalRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3KalRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6


CHAIN X3VieJ 6.RBreak 
@875
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VIeJ 6.Kale 
@876
= @877
END 
++ @878 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Kale1
++ @879 + 6.Kale2 
++ @880 + 6.Kale3 

CHAIN X3VieJ 6.Kale3 
@881
END 
++ @882 + 6.Kale1 
++ @883 + 6.Kale2 

CHAIN X3VieJ 6.Kale1 
@884
EXTERN X3VieJ 6.RBreak

CHAIN X3VieJ 6.Kale2
@885
END 
IF ~Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.Recorder 
IF ~!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.Recorder 
@886
= X3VieJ ~You should stop giving her ideas. Easier to disappoint her now.~
END 
++ @888 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.Recorder1
++ @889 + 6.Recorder2
++ @890 + 6.Recorder3 

CHAIN X3VieJ 6.Recorder3 
@891
= @892
END 
++ @888 + 6.Recorder1
++ @889 + 6.Recorder2

CHAIN X3VieJ 6.Recorder1 
@893
EXTERN X3VieJ 6.RBreak

CHAIN X3VieJ 6.Recorder2 
@894
EXTERN X3VieJ 6.6

CHAIN X3VieJ 6.6 
@895
= @896
= @897
END 
++ @898 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 6.7
++ @899 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 6.8
++ @900 + 6.8 

CHAIN X3VieJ 6.7
@901
= X3VieJ ~But I suppose that can be dull. The chase is half of the fun.~
EXTERN X3VieJ 6.8

CHAIN X3VieJ 6.8
@903
END 
++ @904 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 6.9
++ @905 + 6.10
++ @906 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 6.11 
++ @907 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 6.11 

CHAIN X3VieJ 6.9
@908
EXIT 

CHAIN X3VieJ 6.10 
@909
EXIT 

CHAIN X3VieJ 6.11 
@910
EXTERN X3VieJ 6.RBreak

// Love Talk #7

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",14)~ THEN X3VieJ LoveTalk7
@911
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @912 + 7.1
++ @913 + 7.2
++ @914 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 7.X

CHAIN X3VieJ 7.1
@915
= @916
END 
++ @917 + 7.3
++ @918 + 7.4 
++ @919 + 7.4 

CHAIN X3VieJ 7.3 
@920
EXTERN X3VieJ 7.4 

CHAIN X3VieJ 7.4 
@921
END 
++ @922 + 7.7
++ @923 + 7.6
++ @924 + 7.5 

CHAIN X3VieJ 7.5 
@925
EXTERN X3VieJ 7.6

CHAIN X3VieJ 7.7
@926
EXTERN X3VieJ 7.6

CHAIN X3VieJ 7.6
@927
= @928
END 
++ @929 + 7.8 
++ @930 + 7.9
++ @931  + 7.10

CHAIN X3VieJ 7.8
@932
EXTERN X3VieJ 7.9

CHAIN X3VieJ 7.10
@933
EXTERN X3VieJ 7.9

CHAIN X3VieJ 7.9
@934
= @935
= @936 
END 
++ @937 + 7.17
++ @938 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 7.11
++ @939 + 7.12

CHAIN X3VieJ 7.17 
@940
EXTERN X3VieJ 7.13

CHAIN X3VieJ 7.11 
@941
EXTERN X3VieJ 7.13 

CHAIN X3VieJ 7.12 
@942
EXTERN X3VieJ 7.13 

CHAIN X3VIeJ 7.13 
@943
END 
++ @944 + 7.14 
++ @945 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 7.15
++ @946 + 7.16

CHAIN X3VieJ 7.14 
@947
EXIT 

CHAIN X3VIeJ 7.15
@948
EXIT 

CHAIN X3VieJ 7.16
@949
EXIT 

CHAIN X3VieJ 7.2
@950
EXTERN X3VieJ 7.1 

CHAIN X3VieJ 7.X 
@951
EXIT 

//Love Talk #8

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",16)~ THEN X3VieJ LoveTalk8 
@952
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @953 + 8.2 
++ @954 + 8.2 
++ @955 + 8.3 
++ @956 + 8.X // Will skip the next talk.

CHAIN X3VieJ 8.X 
@957
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 8.3 
@958
END 
++ @959 + 8.5
++ @960 + 8.5 
++ @961 + 8.5 

CHAIN X3VieJ 8.2 
@962
END 
++ @963 + 8.4 
++ @964 + 8.6
++ @965 + 8.5

CHAIN X3VieJ 8.4
@966
END 
++ @967 + 8.7
++ @968 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 8.8
++ @969 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VieJ 8.5
@970
= @971
END 
++ @972 + 8.6
++ @973 + 8.7
++ @974 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VieJ 8.6
@975
END 
++ @976 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 8.8
++ @977 + 8.7
++ @978 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VIeJ 8.7
@979
END 
++ @980 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 8.8
++ @981 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 8.9
++ @982 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 8.10

CHAIN X3VieJ 8.8
@983
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 

CHAIN X3VieJ 8.9
@984
EXTERN X3VieJ 8.11

CHAIN X3VieJ 8.11
@985
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 8.10
@986
DO ~RestParty()~
EXIT

//Love Talk #9 Denied version

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",18)~ THEN X3VieJ LoveTalk9
@987
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
IF ~!Global("X3Slept","LOCALS",0)~ EXTERN X3VieJ 9.Slept
IF ~Global("X3Slept","LOCALS",0)~ EXTERN X3VieJ 9.Refused

CHAIN X3VieJ 9.Refused 
@988
END 
++ @989 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 9.1R
++ @990 + 9.2R 
++ @991 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X
++ @992 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.4R

CHAIN X3VieJ 9.1R 
@993
END 
++ @994 + 9.3R
++ @995 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.3R
++ @996 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X

CHAIN X3VieJ 9.2R
@997
END 
++ @989 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.1R
++ @991 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X
++ @992DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.4R

CHAIN X3VieJ 9.X 
@998
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 9.3R
@999
END 
IF ~Race(Player1,ELF)~ EXTERN X3VieJ 9.5RE
IF ~!Race(Player1,ELF)~ EXTERN X3VieJ 9.5RN

CHAIN X3VieJ 9.4R 
@1000
END 
++ @1001 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.1R
++ @1002 + 9.1R 
++ @1003 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.X

CHAIN X3VieJ 9.5RE 
@1004
END 
++ @1005 + 9.6RE 
++ @1006 + 9.7RE
++ @1007 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 9.X 

CHAIN X3VieJ 9.6RE 
@1008 
EXTERN X3VieJ 9.8RE 

CHAIN X3VieJ 9.7RE 
@1009
EXTERN X3VieJ 9.8RE 

CHAIN X3VieJ 9.8RE
@1010
EXTERN X3VieJ 9.10R

CHAIN X3VieJ 9.10R
@1011
EXIT 

CHAIN X3VieJ 9.5RN 
@1012
= @1013
END 
++ @1014 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.6RN
++ @1015 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.7RN 
++ @1016 + 9.X 

CHAIN X3VieJ 9.6RN 
@1017
EXTERN X3VieJ 9.10R 

CHAIN X3VieJ 9.7RN 
@1018
EXTERN X3VieJ 9.10R

//Slept Version

CHAIN X3VieJ 9.Slept 
@1019
DO ~SetGlobal("X3Slept","LOCALS",2)~
END 
++ @1020 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + 9.S1
++ @1021 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.3R
++ @1022 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.S3

CHAIN X3VieJ 9.S1 
@1023
END 
IF ~NumInPartyGT(2)~ EXTERN X3VieJ 9.S2 
IF ~!NumInPartyGT(2)~ EXTERN X3VieJ 9.S2N 

CHAIN X3VieJ 9.S2 
@1024
END 
++ @1025 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.S5 
++ @1026 + 9.S3 
++ @1027 + 9.S4

CHAIN X3VieJ 9.S5 
@1028
EXIT 

CHAIN X3VieJ 9.S2N 
@1029
END 
++ @1030 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 9.S5N 
++ @1031 + 9.S3 
++ @1027 + 9.S4

CHAIN X3VieJ 9.S5N 
@1032
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 9.S4 
@1033
EXIT 

CHAIN X3VieJ 9.S3 
@1034
END 
++ @1035 + 9.SR 
++ @1036 + 9.S4 
++ @1037 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.SXX 

CHAIN X3VieJ 9.SR
@1038
END 
++ @1039 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 9.3R
++ @1040 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 9.SXX 
++ @1041 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-4)~ + 9.SX 

CHAIN X3VieJ 9.SX 
@1042
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 9.SXX 
@1043
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

//Love Talk #10

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",20)~ THEN X3VieJ LoveTalk10 
@1044
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @1045 + 10.1 
++ @1046  + 10.2
++ @1047 + 10.X 

CHAIN X3VieJ 10.X 
@1048 
EXIT 

CHAIN X3VieJ 10.1 
@1049
EXTERN X3VieJ 10.2 

CHAIN X3VieJ 10.2 
@1050
END 
++ @1051 + 10.3
++ @1052 + 10.4 
++ @1053 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 10.5

CHAIN X3VieJ 10.5
@1054
EXTERN X3VieJ 10.4

CHAIN X3VieJ 10.3
@1055
EXTERN X3VieJ 10.4 

CHAIN X3VieJ 10.4 
@1056
END 
++ @1057 + 10.15 
++ @1058 + 10.6 
++ @1059 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 10.7

CHAIN X3VieJ 10.15 
@1060
EXTERN X3VieJ 10.6 

CHAIN X3VieJ 10.7
@1061
EXTERN X3VieJ 10.6

CHAIN X3VieJ 10.6
@1062
= @1063
END 
++ @1064 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 10.8 
++ @1065 + 10.9
++ @1066 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 10.10

CHAIN X3VieJ 10.8
@1067
EXIT 

CHAIN X3VieJ 10.9
@1068
EXTERN X3VieJ 10.11 

CHAIN X3VieJ 10.11
@1069
EXIT 

CHAIN X3VieJ 10.10
@1070
EXTERN X3VieJ 10.11 






 //Love Talk #11

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",22)~ THEN X3VieJ LoveTalk11 
@1071
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @1072 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.1 
++ @1073 + 11.1
++ @1074 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3VieJ 11.X 
@1075
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 11.1 
@1076
END 
++ @1077 + 11.2
++ @1078 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 11.2 
++ @1079 + 11.2

CHAIN X3VieJ 11.2
@1080
END 
++ @1081 + 11.3
++ @1082 + 11.3
++ @1083 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 11.X 

CHAIN X3VieJ 11.3 
@1084
= @1085
END 
++ @1086 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 11.4
++ @1087 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.4
++ @1088 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.6

CHAIN X3VieJ 11.4 
@1089
= @1090
END 
++ @1091 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.5
++ @1092 + 11.5 
++ @1093 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 11.6

CHAIN X3VieJ 11.5
@1094
END 
++ @1095 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 11.7
++ @1096 + 11.7
++ @1097 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 11.8

CHAIN X3VieJ 11.6
@1098
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 11.7
@1099
EXIT 

CHAIN X3VieJ 11.8
@1100
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

// Romance conflict

CHAIN IF ~Global("X3VieRomanceConflict","GLOBAL",1)~ THEN X3VieJ X3VieRomanceConflict
@1101
== X3VieJ @1102
END 
++ @1103 + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + @1104 + RC.2
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + @1105 + RC.3
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @1106 + RC.2
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + @1107 + RC.Viconia
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + @1108 + RC.2
+ ~Global("HexxatRomanceActive","GLOBAL",1)~ + @1109 + RC.2
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + @1110 + RC.3
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + @1111 + RC.Sirene
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + @1112 + RC.2
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + @1113 + RC.Yvette
+ ~Global("DornRomanceActive","GLOBAL",1)~ + @1114 + RC.2
++ @1115 + RC.2
++ @1116 + RC.2


CHAIN X3VieJ RC.2
@1117
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.Viconia
@1118
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.3
@1119
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.Yvette
@1120
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.Sirene
@1121
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3VieJ RC.1
@1122
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
@1123
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @1124 + 12.1 
++ @1125 + 12.2
++ @1126  + 12.X 

CHAIN X3VieJ 12.X 
@1127
DO ~RestParty()~
EXIT 

CHAIN X3VieJ 12.1 
@1128
EXTERN X3VieJ 12.3

CHAIN X3VieJ 12.2 
@1129
EXTERN X3VieJ 12.3 

CHAIN X3VieJ 12.3 
@1130
= @1131
END 
++ @1132 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 12.4 
++ @1133 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 12.4
++ @1134 + 12.5 

CHAIN X3VieJ 12.4 
@1135
END 
+~!Race(Player1,ELF)~+ @1136 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 12.6 
++ @1137 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 12.7
++ @1138 + 12.5 

CHAIN X3VieJ 12.5
@1139
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3VieJ 12.6
@1140
EXTERN X3VieJ 12.7

CHAIN X3VieJ 12.7
@1141
= @1142
END 
++ @1143  + 12.8
++ @1144  + 12.9 
++ @1145  + 12.10

CHAIN X3VieJ 12.8
@1146
END 
IF ~Global("X3Slept","LOCALS",0)~ THEN DO ~SetGlobal("X3Slept","LOCALS",2)RestParty()~ EXIT 
IF ~!Global("X3Slept","LOCALS",0)~ THEN DO ~RestParty()~ EXIT 

CHAIN X3VieJ 12.9
@1147
EXIT 

CHAIN X3VieJ 12.10 
@1148
EXIT

// Love Talk #13

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",26)~ THEN X3VieJ LoveTalk13 
@1149
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)SetGlobal("X3VieRomanceActive","GLOBAL",2)~
END 
++ @1150 + 13.1
++ @1151 + 13.1
++ @1152 + 13.3 
++ @1153 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 13.X 

CHAIN X3VieJ 13.1 
@1154
EXTERN X3VieJ 13.4

CHAIN X3VieJ 13.X 
@1155
EXIT 

CHAIN X3VieJ 13.3 
@1156
== X3VieJ IF ~InParty("X3Hel")~ THEN @1157
EXTERN X3VieJ 13.4

CHAIN X3VieJ 13.4 
@1158
END 
++ @1159 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 13.5 
++ @1160 + 13.6 
++ @1161 + 13.17 
++ @1162 + 13.18

CHAIN X3VieJ 13.18
@1163
EXTERN X3VieJ 13.5

CHAIN X3VieJ 13.6
@1164
END 
++ @1165  + 13.8
++ @1166 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 13.7
++ @1167 + 13.9

CHAIN X3VieJ 13.7
@1168
EXIT 

CHAIN X3VieJ 13.8
@1169
EXTERN X3VieJ 13.10

CHAIN X3VieJ 13.9
@1170
EXTERN X3VieJ 13.10 

CHAIN X3VieJ 13.10
@1171
EXIT 

CHAIN X3VieJ 13.17
@1172
EXTERN X3VieJ 13.5

CHAIN X3VieJ 13.5 
@1173
END 
++ @1174 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 13.6 
++ @1175 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 13.81
++ @1176 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 13.19

CHAIN X3VieJ 13.81
@1177
EXTERN X3VieJ 13.6 

CHAIN X3VieJ 13.19
@1178
EXTERN X3VieJ 13.6


//Technically post slayer change.

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",28)~ THEN X3VieJ LoveTalk14 
@1179
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @890 + 14.1 
++ @1180 + 14.1 
++ @1181 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 14.X 

CHAIN X3VieJ 14.X 
@1182
EXTERN X3VieJ 14.1

CHAIN X3VieJ 14.1
@1183
= @1184
END 
++ @1185 + 14.2 
++ @1186 + 14.3
++ @1187 + 14.4

CHAIN X3VieJ 14.2 
@1188
EXTERN X3VieJ 14.4 

CHAIN X3VieJ 14.4 
@1189
= @1190
END 
++ @1191 + 14.5 
++ @1192 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 14.6
++ @1193 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 14.7

CHAIN X3VieJ 14.5 
@1194
EXTERN X3VieJ 14.8

CHAIN X3VieJ 14.7
@1195
EXTERN X3VieJ 14.8

CHAIN X3VieJ 14.8
@1196
END 
++ @1197 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 14.9 
++ @1198 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 14.9
++ @1199 + 14.9
++ @1200 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 14.10

CHAIN X3VieJ 14.9
@1201
EXTERN X3VieJ 14.11


CHAIN X3VieJ 14.10
@1202
EXTERN X3VieJ 14.11

CHAIN X3VieJ 14.11
@1203
EXIT 


CHAIN X3VieJ 14.6
@1204
EXTERN X3VieJ 14.8

CHAIN X3VieJ 14.3 
@1205
EXTERN X3VieJ 14.4

// Love Talk #15

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",30)~ THEN X3VieJ LoveTalk15
@1206
= @1207
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @1208 + 15.12
++ @1209 + 15.1 
++ @1210 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 15.X 

CHAIN X3VieJ 15.X 
@1211
EXIT 

CHAIN X3VieJ 15.1
@1212
END 
++ @1213 + 15.2 
++ @1214 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 15.3 
++ @1215 + 15.4

CHAIN X3VieJ 15.2 
@1216
EXTERN X3VieJ 15.4 

CHAIN X3VieJ 15.3 
@1217
EXTERN X3VieJ 15.4 

CHAIN X3VieJ 15.4 
@1218
END 
++ @1219 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 15.5 
+~Race(Player1,ELF)~+ @1220 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 15.6 
++ @1221 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 15.7
++ @1222 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 15.8

CHAIN X3VieJ 15.5
@1223
= @1224
EXIT 

CHAIN X3VieJ 15.6
@1225
EXIT 

CHAIN X3VIeJ 15.7
@1226
EXIT 

CHAIN X3VieJ 15.8
@1227
EXIT 

CHAIN X3VieJ 15.12 
@1228
EXTERN X3VieJ 15.1 

// Love Talk #16

CHAIN IF ~Global("X3VieLoveTalk","LOCALS",32)~ THEN X3VieJ LoveTalk16
@1229
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @1230 + 16.1 
++ @1231 + 16.1 
++ @1232 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 16.1
++ @1233 + 16.3

CHAIN X3VieJ 16.1 
@1234
END 
++ @1235 + 16.2 
++ @1236 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 16.3
++ @1237 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-4)~ + 16.4

CHAIN X3VieJ 16.4
~Ugh! Your path is intolerable sometimes. Fine, fine, fine!~ 16.4 
EXIT 

CHAIN X3VieJ 16.2 
@1239
EXIT 

CHAIN X3VieJ 16.3
@1240
EXIT 

//Love Talk #17
 
CHAIN IF ~Global("X3VieLoveTalk","LOCALS",34)~ THEN X3VieJ LoveTalk17
@1241
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @1242 + 17.1 
++ @1243 + 17.2 
++ @1244 + 17.3 

CHAIN X3VieJ 17.1
@1245
EXTERN X3VieJ 17.4 

CHAIN X3VieJ 17.2 
@1246
EXTERN X3VieJ 17.4

CHAIN X3VieJ 17.3
@1247
EXTERN X3VieJ 17.4

CHAIN X3VieJ 17.4 
@1248
= @1249
END 
++ @1250 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 17.5
++ @1251 + 17.5
++ @1252 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 17.6

CHAIN X3VieJ 17.5 
@1253 
EXIT 

CHAIN X3VieJ 17.6 
@1254
EXTERN X3VieJ 17.5 

// Final
CHAIN IF ~Global("X3VieLoveTalk","LOCALS",36)~ THEN X3VieJ LoveTalk18 
@1255
DO ~IncrementGlobal("X3VieLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @1256 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 18.1 
++ @1257 + 18.1
++ @1258 + 18.1 

CHAIN X3VieJ 18.X 
@1259
EXIT 

CHAIN X3VieJ 18.1 
@1260
END 
++ @1261  DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~+ 18.2
++ @1262 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 18.3 
++ @1263 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 18.3 

CHAIN X3VieJ 18.2 
@1264
EXIT 

CHAIN X3VieJ 18.3 
@1265
EXIT 

CHAIN X3VieJ DSR
@1266
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
= @1267
= @1268
= @1269
END 
++ @1270 + DSR.7
++ @1271 + DSR.7
++ @1272 + DSR.8 

CHAIN X3VieJ DSR.7
@1273
DO ~SetGlobal("X3VieInterest","LOCALS",1)IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
EXIT 

CHAIN X3VieJ DSR.8 
@1274
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@506)~
EXIT 

// Group Kiss from PID 
CHAIN X3VieJ Group.Kiss 
@1275
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @1276
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1277
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1278
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1279
== X3VieJ @1280
== X3VieJ @1281
EXIT 

APPEND X3VieJ 

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @1282
= @1283
= @1284
++ @1285 + LBreak.1
++ @1286 + LBreak.2 
++ @1287 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @1288
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @1289
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @1290
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @1291
++ @1292 + LBreak.5 
++ @1293 + LBreak.6 
++ @1294 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @1295
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @1296
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @1297
IF ~~ EXIT 
END 


// Break Approval 
IF ~Global("X3Break","LOCALS",1)~ Break
SAY @1298
= @1299
++ @1300 + Break.1 
++ @1301 + Break.2 
++ @1302 + Break.8
END 

IF ~~ Break.1
SAY @1303
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @1304 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY @1305
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY @1306
++ @1307 + Break.4
++ @1308 + Break.5
++ @1309 + Break.6 
END 

IF ~~ Break.4 
SAY @1310
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~ 
EXIT 
END 

IF ~~ Break.5 
SAY @1311
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @1312
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3VieApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@516)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @1313
= @1314
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  @1315
++ @1316 + Question.PID 
+~NumInPartyGT(2)~+ @1317 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1317 + PersonalAlone.PID 
++ @1403 + FixString
++ @1318 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  @1319
++ @1320 + Question.PID 
+~NumInPartyGT(2)~+ @1321 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1321 + PersonalAlone.PID 
++ @1403 + FixString
++ @1318 EXIT 
END  

IF ~~ main.PID 
SAY  @1322 
++ @1320 + Question.PID 
+~NumInPartyGT(2)~+ @1321 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1321 + PersonalAlone.PID 
++ @1403 + FixString
++ @1318 EXIT 
END  

IF ~~ Question.PID
SAY @1323
+~Global("X3PIDCON1","LOCALS",0)~+ @1324 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)~+ @1325 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ @1326 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ @1327 DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ @1328 DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ @1329 + main.PID 
++ @1330 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @1331 
+~Global("X3PIDCON1","LOCALS",0)~+ @1324 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)~+ @1325 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ @1326 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ @1327 DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ @1328 DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ @1329 + main.PID
++ @1332 EXIT 
END 

IF ~~ PID.Evermeet 
SAY @1333 
= @1334
= @1335
++ @1336 + PEvermeet.1 
++ @1337 + PEvermeet.2 
++ @1338 + PEvermeet.3
++ @1329 + MoreQuestion.PID 
END 

IF ~~ PEvermeet.1 
SAY @1339
++ @1340 + PEvermeet.2 
++ @1338 + PEvermeet.3
++ @1329 + MoreQuestion.PID 
++ @1332 EXIT 
END 

IF ~~ PEvermeet.2 
SAY @1341
++ @1329 + main.PID
++ @1332 EXIT 
END 

IF ~~ PEvermeet.3 
SAY @1342
++ @1329 + MoreQuestion.PID 
++ @1332 EXIT 
END 

IF ~~ PID.Family 
SAY @1343
= @1344
= @1345
++ @1346 + PFamily.1 
++ @1347 + PFamily.2 
++ @1348 + PFamily.3
END 

IF ~~ PFamily.1 
SAY @1349
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY @1350
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY @1351
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.4 
SAY @1352
++ @1329 + MoreQuestion.PID 
++ @1353 EXIT 
END 

IF ~~ PID.Exile 
SAY @1354
= @1355
= @1356
= @1357
++ @1358 + PExile.1 
++ @1359 + PExile.2 
++ @1360 + PExile.3
END 

IF ~~ PExile.1 
SAY @1361
= @1362
++ @1359 + PExile.2 
++ @1360 + PExile.3
++ @1329 + main.PID
END 

IF ~~ PExile.2 
SAY @1363
++ @1360 + PExile.3
++ @1329 + MoreQuestion.PID 
++ @1353 EXIT 
END 

IF ~~ PExile.3 
SAY @1364
= @1365
= @1366
++ @1329 + MoreQuestion.PID 
++ @1353 EXIT 
END 

IF ~~ PID.Mentor 
SAY @1367
= @1368
= @1369
++ @1329 + MoreQuestion.PID 
++ @1353 EXIT 
END 

IF ~~ PID.Law 
SAY @1370
= @1371
++ @1372 + PLaw.1 
++ @1373 + PLaw.2 
++ @1374 + PLaw.3
END 

IF ~~ PLaw.1 
SAY @1375
IF ~~ + PLaw.3 
END 

IF ~~ PLaw.2 
SAY @1376
IF ~~ + PLaw.3
END  

IF ~~ PLaw.3 
SAY @1377
++ @1329 + MoreQuestion.PID 
++ @1353 EXIT 
END 


IF ~~ PersonalGroup.PID 
SAY @1378
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3ViePartyBG1","GLOBAL",1)~+ @1379 + DSR
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1380 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1380 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1381 + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3VieInterest","LOCALS",0)~+ @1382 DO ~SetGlobal("X3VieInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1383 + BreakUp
++ @1384 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @1385
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3ViePartyBG1","GLOBAL",1)~+ @1379 + DSR
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1386 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1380 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1381 + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3VieRomanceActive","GLOBAL",0)Global("X3VieInterest","LOCALS",0)~+ @1382 DO ~SetGlobal("X3VieInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1387 + BreakUp
++ @1384 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @1388
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @1389
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @1390
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY @1391 
= @1392
= @1393 
++ @1394 DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~ + RI.1
++ @1395 DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ + RI.2
++ @1396 DO ~IncrementGlobal("X3VieApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@506)~ + RI.3
END 

IF ~~ RI.1 
SAY @1397
IF ~~ EXIT 
END 

IF ~~ RI.2 
SAY @1398
IF ~~ EXIT 
END 

IF ~~ RI.3 
SAY @1399
= @1400
IF ~~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~ EXIT 
END 

IF ~~ BreakUp 
SAY @1401
= @1402
IF ~~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@509)~ EXIT 
END 

IF ~~ FixString
SAY @1404
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3VReset")~ EXIT 
END 

END 