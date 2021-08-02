/*Non-Essential Interjections*/ 

//Chapter 6 & 7

I_C_T DRAGBLAC 4 X3KalDRAGBLAC 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @0
END 

I_C_T SUDEMIN 11 X3KalSUDEMIN11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1
END 

I_C_T C6SAFA 0 X3KalC6SAFA-0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN @2
END 

I_C_T C6CORAN 1 X3KalC6CORAN-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN @3
END 

I_C_T C6CORAN 20 X3KalC6CORAN-20
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @4
END 


I_C_T C6REGIS1 2 X3KalC6REGIS1-2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @5
END 

I_C_T C6DRIZZ1 37 X3RebC6DRIZZ1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN @6
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @7
== C6DRIZZ1 @8
END 

I_C_T C6DRIZZ1 55 X3KalC6DRIZZ1-55
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @10
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @11
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @12
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @13
== C6DRIZZ1 @14
END

I_C_T C6DRIZZ1 48 X3KalC6DRIZZ1-48
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @10
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @11
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @12
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @13
== C6DRIZZ1 @14
END

I_C_T C6DRIZZ1 41 X3KalC6DRIZZ1-41
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @10
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @11
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @12
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @13
== C6DRIZZ1 @14
END

I_C_T C6DRIZZ1 18 X3KalC6DRIZZ1-18
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @10
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @11
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @12
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @13
== C6DRIZZ1 @14
END

I_C_T C6DRIZZ1 5 X3KalC6DRIZZ1-5
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @10
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @11
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @12
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @13
== C6DRIZZ1 @14
END

I_C_T C6DRIZZ1 9 X3KalC6DRIZZ1-9
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @9
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @10
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @11
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@416)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @12
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@119)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @13
== C6DRIZZ1 @14
END

I_C_T C6DRIZZ1 1 X3KalC6DRIZZ1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @15
END

I_C_T C6ELHAN2 8 X3KalC6ELHAN28
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @16
== C6WARSA1 @17
== C6WARSA2 @18
== X3KalJ @19
END


//Underdark

I_C_T JARLAXLE 0 X3KalJARLAXLE0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @20
END 

I_C_T JARLAXLE 24 X3KalJARLAXLE24
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @21
END 

I_C_T DADROW17 9 X3KalDADROW17-9
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @22
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @23
END 

I_C_T UDSVIR08 13 X3KalUDSVIR08-13 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @24
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== UDSVIR08 @25
END 

I_C_T DADUER1 12 X3KalDADUER1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN @26
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @27
END

I_C_T UDDEMON 8 X3KalUDDEMON-8
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @28
DO ~IncrementGlobal("X3KalApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@303)~
END

I_C_T UDDEMON 3 X3KalUDDEMON-3
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @29
END 

I_C_T UDDEMON 18 X3KalUDDEMON-18
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @29
END 

I_C_T UDPHAE01 136 X3HelUDPHAE01-136
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ THEN @30
END

I_C_T UDPHAE01 61 X3KalUDPHAE01-61
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN @31
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @32
END

INTERJECT UDPHAE01 61 X3KalUDPHAE01-61
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @33
EXTERN UDPHAE01 62

A_T_T DADROW21 2 ~!Name("X3Kal",LastTalkedToBy)~ DO 0

EXTEND_BOTTOM DADROW21 2
+ ~!InPartySlot(LastTalkedToBy,0)
Name("X3Kal",LastTalkedToBy)  // Kale
!Global("X3KalRomanceActive","GLOBAL",1)
!Global("X3KalRomanceActive","GLOBAL",2)
~ + @34 EXTERN DADROW21 4
END

I_C_T UDDROW08 11 X3KalUDDROW08-11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @35
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @36
== UDDROW08 @37
== X3KAlJ @38
== UDDROW08 @39
END 


INTERJECT UDDROW07 9 X3KalUDDROW07
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @40
EXTERN UDDROW07 11

I_C_T DADROW12 21 X3KalDadRow12-21
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @41
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
END 

I_C_T UDDOOR01 1 X3HelUDDOOR01-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ THEN @42
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~
END 

I_C_T UDILSLA2 14 X3KalUDILSLA2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @43
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@316)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @44
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @45
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @46
END 

I_C_T UDILSLA2 14 X3RebUDILSLA2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @47
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSIMYAZ 36 X3KalUDSIMYAZ36
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @48
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END 

I_C_T UDSIMYAZ 26 X3KalUDSIMYAZ26
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @49
END 

I_C_T UDSILVER 14 X3KalUDSILVER-14
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @50
END 

I_C_T UDSILVER 49 X3KalUDSILVER-49
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @51
END 


I_C_T UDSVIR03 17 X3KalUDSVIR03-17 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @52
END 

I_C_T UDSVIR03 7 X3KalUDSVIR03-7
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @53
END

I_C_T UDTRAP03 0 X3KalUDTRAP03-0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @54
END

I_C_T UDDUER03 11 X3KalUDUDER03-11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @55
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @56
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @57
END

I_C_T UDDUER03 10 X3KalUDUDER03-10
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @58
END

I_C_T NALIAJ 282 X3KalNALIAJ282
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @59
END

//Chapter4 


I_C_T SAHPR2 7 X3KalSAHPR2-7
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @60
END

INTERJECT SAHBEH01 38 X3KalSAHBEH01-38
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @61
EXTERN SAHBEH01 39


I_C_T SAHKNG01 36 X3KalSAHKNG0136 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @62
END


I_C_T SAHKNG01 1 X3KalSAHKNG01-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @63
END

I_C_T SAHPR1 55 X3KalSAHPR1-55
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @64
END

I_C_T PPSAEM3 23 X3KalPPSAEM3-23
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @65
END

I_C_T PPSAEM2 24 X3KalPPSAEM2-24
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @66
END

I_C_T PPSAEM2 8 X3KalPPSAEM2-8
== X3KalJ IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN @67
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @68
== PPSAEM2 @69
END 

I_C_T PPSAEM2 19 X3KalPPSAEM2-19
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @70
END

I_C_T JANJ 92 X3KalJANJ92
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @71
END 

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Kal") Global("X3KalPartyBG1","GLOBAL",1)~ + @72 EXTERN X3KalJ X3KalPPIMOEN0
END

CHAIN X3KalJ X3KalPPIMOEN0
@73
EXTERN PPIMOEN 1

I_C_T JANJ 157 X3KalJANJ157
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @74
END 

I_C_T PPTIAX 1 X3KalPPTIAX-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN @75
END 

I_C_T PPWANEV 2 X3KalPPWANEV2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @76
END

I_C_T PPIRENI1 4 X3KalPPIRENI1-4
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @77
END

I_C_T PIRPIR08 6 X3KalPIRPIR08-6
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN @78
END 

I_C_T PIRPIR07 1 X3KalPIRPIR07-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @79
END 

I_C_T KORGANJ 117 X3Kal117 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @80
END

//Chapter 3

I_C_T BODHI2 14 X3KalBODHI2-14
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @81
END

I_C_T ARNMAN04 0 X3RebARNMAN04-0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @82
END 


I_C_T ARAN 85 X3KalARAN85
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @83
END 

I_C_T ARAN 51 X3KalARAN51
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @84
END 

I_C_T ARAN 0 X3KalARAN0
== X3KalJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Kal")~ THEN @85
END 

I_C_T CHORE 1 X3KalCHORE1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @86
END  

I_C_T LAUNE 2 X3KalLAUNE2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @87
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @88
END  


//Watcher's Keep

I_C_T GORAPP1 16 X3KalGORAPP1-16
== X3KalJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @89
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
END 

I_C_T GORAPP1 6 X3KalGORAPP1-6
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @90
END 


I_C_T GORDEMO 24 X3KalGORDEMO 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @91
END 


I_C_T FSDRAGON 0 X3KalFSDRAGON
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @92
END   

I_C_T FSSPIR2 1 X3KalFSSPIR2-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @93
END    

I_C_T GORSAL 0 X3KalGORSAL0 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @94
END   


I_C_T GORGIT 2 X3KalGORGIT2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @95
END   

I_C_T GORCAMB 17 X3KalGorcamb17
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @96
END  


I_C_T GORSUC01 7 X3KalGORSUC01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ @97
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Kal",LastTalkedToBy)~ EXTERN X3KalJ Yackman
END

CHAIN X3KalJ Yackman  
@98
EXTERN GORMAD1 10

I_C_T GORODR1 44 X3KalGORODR1-44
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @99
END 



//Planar Sphere 
I_C_T OBSSOL01 10 X3KalOBSSOL01-10
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @100
END 
 
I_C_T LAVOK 48 X3KalLAVOK48
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @101
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @102
END 

//Trademeet 

I_C_T TREVIL01 15 X3KalTREVIL01-15
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @103
END 


I_C_T TRCUT07 4 X3KalTRCUT07-4
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @104
DO ~IncrementGlobal("X3KalApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@319)~ 
END 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN TRGYP03 X3Kal
@105
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @106
EXIT 

I_C_T TRINNK01 26 X3KalTRINNK01
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @107
== TRINNK01 @108
END 

I_C_T MAZZYJ 9 X3KalMazzyJ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @109
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~ 
== MAZZYJ @110
END 


I_C_T NEEBER 6 X3KalNEEBER6 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @111
END 

I_C_T NEEBER 1 X3KalNEEBER1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @112
END 

I_C_T NEEBER 3 X3KalNEEBER3 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @113
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @114
END 

I_C_T TRNOBM01 8 X3KalTRNOBM01-8
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @115
END 

//Umar Hills 

I_C_T MAZZY 25 X3KalMAZZY25 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @116
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
== MAZZY @117
END 

INTERJECT MAZZY 6 X3KalMAZZY6
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @118
DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@306)~ 
EXTERN MAZZY 13

I_C_T MAZZY 39 X3KalMAZZY39
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @119
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~ 
END 

I_C_T UHMAY01 138 X3KalUHMAY01-138 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @120
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~ 
END 

I_C_T MAZZYJ 93 X3KalMAZZYJ-93 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @121
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~ 
== MAZZYJ @122
END 

I_C_T UHMAY01 18 X3KalUHMAY01-18
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @123
END

//Windspear Hills 

I_C_T GARREN 44 X3KalGarren44 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN @124
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== GARREN @125
END 

I_C_T GARREN 49 X3KalGarren49
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Dead("firkra02")~ THEN @126
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @127
END 

I_C_T GARREN 51 X3KalGarren51 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Dead("firkra02")~ THEN @126
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @127
END 


I_C_T GARREN 35 X3KalGARREN35 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @128
END 

I_C_T GARREN 36 X3KalGARREN36 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @128
END 

I_C_T GARREN 37 X3KalGARREN37 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @128
END 
//De'Arnise

I_C_T KPRANG01 9 X3KalKPRANG01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Emi")~ THEN @129
== KPRANG01 @130
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END 

I_C_T DELCIA 16 X3KalDELCIA16
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @131
== DELCIA @132
END  

I_C_T KPGRD01 11 X3KalKPGRD01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @133
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END
//Althkata

I_C_T MAZZYJ 203 X3KalMazzyJ-203
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @134
== MAZZYJ @135
END

I_C_T MAZZYJ 45 X3HelMazzyJ-45
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @136
END

I_C_T WELLYN 8 X3KalWELLYN8
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @137
END 

I_C_T WELLYN 10 X3KalWELLYN10 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @138
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @139
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~ 
== WELLYN @140
END 

I_C_T WELLYN 5 X3RebWELLYN5
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @141
DO ~IncrementGlobal("X3KalApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@309)~ 
END 

I_C_T WELLYN 16 X3KalWELLYN16
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @142
DO ~IncrementGlobal("X3KalApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@309)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @143
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== WELLYN @144
END  

I_C_T BODHI 72 X3KalBODHI72 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @145
END 

I_C_T BODHI 56 X3KalBODHI56
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @146
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @147
END 

I_C_T BODHI 28 X3KalBodhi28 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @148
== X3HELJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @149
== BODHI @150
END

I_C_T BODHI 6 X3KalBODHi6 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @151
END

I_C_T LESTER 5 X3KalLESTER5 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @152
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @153
== LESTER @154
END 

I_C_T TIRDIR 12 X3KalTIRDIR12C
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @155
DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @156
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
== TIRDIR @157
END

I_C_T TIRDIR 12 X3KalTIRDIR12L
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @158
DO ~IncrementGlobal("X3KalApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@313)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @159
== TIRDIR @157
END

I_C_T SCSARLES 32 X3KalSCSARLES32
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @160
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END

I_C_T MOURNER5 5 X3KalMOURNER5 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @161
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@316)~ 
END 

INTERJECT MOURNER5 2 X3KalMOURNER2 
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @162
== MOURNER5 @163
EXTERN MOURNER6 3 

I_C_T KAYPAL01 2 X3KalKAYPAL01-2 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @164
END 

I_C_T HABREGA 26 X3RebHabrega26
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @165
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@316)~ 
END

I_C_T RAELIS 79 X3KalRaelis79 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @166
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END 

I_C_T RAELIS 79 X3KalRaelis79 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @167
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~ 
END 

I_C_T RAELIS 76 X3KalRaelis76 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @166
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END 

I_C_T RAELIS 76 X3KalRaelis76 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @167
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~ 
END 

CHAIN IF WEIGHT #-1 
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFBART X3Kal
@168
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @169
== FFBART @170
== X3KalJ @171
== FFBART @172
== X3KalJ @173
== FFBART @174
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @175
== X3KalJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @176
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFWENCH X3Kal
@177
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @178
== FFBART @179
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFCUST01 X3Kal
@180
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @181
EXTERN FFCUST01 7

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Kal","LOCALS",0)~ THEN FFCUST08 X3Kal
@182
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @183
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @184
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFCUST09 X3Kal
@185
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @186
EXIT 

I_C_T TANNER 20 X3KalTanner20
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @187
== TANNER @188
END 

I_C_T BBEGG2 1 X3KalBBEGG2-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @189
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @190
DO ~IncrementGlobal("X3Emipp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @191
END

I_C_T LOUT 7 X3KALLOUT1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @192
== LOUT @193
END 

I_C_T BBEGG1 2 X3KalBBEGG12 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @194
END 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
!Global("X3KalRomanceActive","GLOBAL",2)
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN BPROST2 X3Kal
@195
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @196
EXIT 

I_C_T INSPECT 10 X3KalInspect10 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @197
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
END  

I_C_T KELDORP 11 X3KALMARIA-11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @198
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~ 
END 

I_C_T ANOMENJ 176 X3KalAnomenJ176
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @199
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~ 
END 

I_C_T OHHFAK 25 X3KalOHHFAK-25
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @200
END 

I_C_T INSPECT 1 X3KalInspect 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @201
END 

I_C_T SCJERLIA 12 X3KalJERLIA12 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @202
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @203
END 

I_C_T MARIA 5 X3KalMARIA-5
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @204
END 

I_C_T JANP 19 X3KalJANP-19
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @205
END 

I_C_T HIDDEN 13 X3KalHidden13
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")Global("SawIllithid","LOCALS",1)~ THEN @206
== HIDDEN @207
END 

I_C_T EDWINJ 37 X3KALEDWINJ-DEGARD-37
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @208
END 


CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN CLERK01 X3Kal
@209
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @210
== MAZZYJ IF ~IsValidForPartyDialogue("MAZZY")~ THEN @211
EXIT 



CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
!Global("X3KalRomanceActive","GLOBAL",2)
Global("X3Kal","LOCALS",0)~ THEN ORIONA X3Kal
@212
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @213
== ORIONA @214
== X3KalJ @215 
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Kal","LOCALS",0)~ THEN PEHLLUS X3Kal
@216
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @217
== TOADY @218
EXIT 

I_C_T TOLGER 21 X3KalTOLGER21 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @219
END 

I_C_T TOLGER 21 X3KalTOLGER21 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @219
END 

I_C_T ROGER 13 X3KalROGER13 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @220
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @221
END 

I_C_T THESHAL 2 X3KalTHESHAL2 
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @222
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @223
END 

CHAIN IF WEIGHT #-1 
~See("X3Kal")  // X3Kal
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Kal")  // X3Kal
RandomNum(2,1)
Global("Prophet4X3Kal","LOCALS",0)~ THEN PROPHET4 Kale
@224
DO ~SetGlobal("Prophet4X3Kal","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3KalJ @225
EXIT 

I_C_T JANJ 128 X3KalJANJ128 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @226
END 

I_C_T PWAUK2 3 X3KalJPWAUK2 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @227
END 

I_C_T BHOISIG 19 X3KalBHOISIG
== X3KalJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @228
END

I_C_T MAEVAR 31 X3KalMAEVAR31 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @229
END

I_C_T DCLERIC 2 X3KalDCLERIC2 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @230
== DCLERIC @231
END

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN BURCH2 X3Kal
@232
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @233
EXIT 

I_C_T JANJ 116 X3KalJanJ116
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @234
END


I_C_T SW2H14 15 X3KALSW2H1415 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @235
END 

I_C_T HAEGAN 5 X3KalHAEGAN
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @236
== HAEGAN @237
END 

I_C_T LLYNIS 11 X3KAlLLYNIS11 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @238
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
== LLYNIS @239
END 

I_C_T LLYNIS 12 X3KAlLLYNIS12
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @238
== LLYNIS @239
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
END 


I_C_T FIRKRA01 10 X3KalFIRKRA01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @240
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @241
END 

I_C_T LEHTIN 10 X3KalLEHTIN10 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @242
END 

I_C_T TIANA 0 X3KalTiana 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ THEN @243
END 

I_C_T NALIA 35 X3EmiNalia35
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @244
== NALIA @245
END 

I_C_T NALIA 34 X3EmiNalia35
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @244
== NALIA @245
END 


CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN WAYLANE X3Kal
@246
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @247
== WAYLANE @248
== X3KalJ @249
== WAYLANE @250
== X3KalJ @251
== WAYLANE @252
EXIT 

I_C_T SLSHOP02 2 X3KalSLSHOP02 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @253
END 


I_C_T TIRTHOLD 3 X3KalTirthold 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @254
END 

I_C_T GAELAN 66 X3VieGaelan74 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @255
END 

I_C_T TOWNC01 34 X3KalTOWNC034
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @256
END 

I_C_T TOWNC01 40 X3KalTOWNC040
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @257
END 

I_C_T TOWNC01 99 X3KalTOWNC099
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @258
END 

I_C_T CIRCG1 5 X3KalCIRCG1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @259
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END

/*Story/Essential Interjections*/ 
//Celvan 
CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Kal","LOCALS",0)~ THEN CELVAN X3Kal
@260
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ @261
EXTERN CELVAN 1
//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Kal",LastTalkedToBy)~ EXTERN TRGYP02 X3Kalg1
END

CHAIN TRGYP02 X3Kalg1
@262
== X3KalJ @263
EXIT


// Yoshimo's betrayal

I_C_T YOSHJ 113 X3KalYOSHJ113
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @264
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal") Range("X3Kal",15)~ THEN
@265
END
++ @266 EXTERN X3KalJ spellhold.1
++ @267 EXTERN X3KalJ spellhold.1
++ @268 EXTERN X3KalJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3KalJ spellhold.1
@269
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @270 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @271
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @272 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @273
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3KalFirstSlayerChange1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")See("X3Kal")~ THEN @274
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3KalSecondSlayerChange0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal") OR(2) Global("X3KalRomanceActive","GLOBAL",1) Global("X3KalRomanceActive","GLOBAL",2)~ THEN @275
END
++ @276 EXTERN X3KalJ X3KalSecondSlayerChange1
++ @277 EXTERN X3KalJ X3KalSecondSlayerChange1
++ @278 EXTERN X3KalJ X3KalSecondSlayerChange1

CHAIN X3KalJ X3KalSecondSlayerChange1
@279
DO ~SetGlobal("X3KalSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3KalSlayerSurvived1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal") OR(2) Global("X3KalRomanceActive","GLOBAL",1) Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSecondSlayerChange","GLOBAL",1)~ THEN @280
= @281
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Kal") Global("X3KalSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

// Phaere

CHAIN IF ~Global("X3KalCheckMad1","GLOBAL",1)Global("X3KalMad1","LOCALS",0)~ THEN X3KalJ Phaere_Warning
@282 
DO ~SetGlobal("X3KalMad1","LOCALS",1)~
END 
++ @283 + PW.1 
++ @284 + PW.2 
++ @285 + PW.3

CHAIN X3KalJ PW.1 
@286
END 
++ @284 + PW.2 
++ @285 + PW.3

CHAIN X3KalJ PW.2 
@287
EXIT 

CHAIN X3KalJ PW.3 
@288
DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3KalRomanceActive","GLOBAL",1)
Global("X3KalRomanceActive","GLOBAL",2)~ + @289 EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3KalCheckMad2","GLOBAL",1)Global("X3KalMad2","LOCALS",0)~ THEN X3KalJ X3KalPhaere
@290
DO ~SetGlobal("X3KalMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3KalJ X3KalPhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3KalJ X3KalPhaere2
//This doesn't break Kale's romance, and he only slightly disapproves.
CHAIN X3KalJ X3KalPhaere1
@291
= @292
DO ~IncrementGlobal("X3KalApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@303)~ 
EXIT 

CHAIN X3KalJ X3KalPhaere2
@293
= @294
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@316)~ 
EXIT

//Bodhi 
EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3KalKidnap
END

CHAIN BODHIAMB X3KalKidnap
@295
= @296
== X3KalJ @297
== BODHIAMB @298
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3KBodhi")~ UNSOLVED_JOURNAL @31 
EXIT
//Not Caught 
I_C_T C6BODHI 0 X3KalC6Bodhi0 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @299
END 

//Caught 
A_T_T C6bodhi 21 ~!Global("X3KalVampire","GLOBAL",2)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("X3KalVampire","GLOBAL",2)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("X3KalVampire","GLOBAL",2)~ + @300 EXTERN C6BODHI X3KalAb
+ ~Global("X3KalVampire","GLOBAL",2)~ + @301 EXTERN C6BODHI X3KalAb
+ ~Global("X3KalVampire","GLOBAL",2)~ + @302 EXTERN C6BODHI X3KalAb
+ ~Global("X3KalVampire","GLOBAL",2)~ + @303 EXTERN C6BODHI X3KalAbConf
END



CHAIN C6BODHI X3KalAbConf
@304
END
IF ~~ EXTERN C6BODHI X3KalAb

BEGIN X3KALV 

CHAIN C6BODHI X3KalAb
@305
== X3KALV @306
== C6BODHI @307 
END
IF ~~ EXTERN C6BODHI 28

EXTEND_BOTTOM DOGHMA 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + @308 EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 3
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + @308 EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 7
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + @308 EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 9
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + @308 EXTERN DOGHMA 10
END

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("C6BODHI") OR(2) Global("X3KalVampire","GLOBAL",1) Global("X3KalVampire","GLOBAL",2)~ + @309 EXTERN WARSAGE 6
+ ~PartyHasItem("X3KBody")~ + @310 EXTERN WARSAGE 5
END


EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + @311 EXTERN IMNBOOK1 4
END


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalTreeOfLife","GLOBAL",0) !Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 Kpl2
END

CHAIN PLAYER1 Kpl2
@312
DO ~SetGlobal("X3KalTreeOfLife","GLOBAL",1)~
END
++ @313 EXTERN X3KalJ pl2.2
++ @314 EXTERN X3KalJ pl2.1
++ @315 EXTERN X3KalJ pl2.1

CHAIN X3KalJ pl2.2 
@316
EXTERN X3KalJ pl2.1

CHAIN X3KalJ pl2.1
@317
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalTreeOfLife","GLOBAL",0) Global("X3KalRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 Kpl3
END

CHAIN PLAYER1 Kpl3
@318
DO ~SetGlobal("X3KalTreeOfLife","GLOBAL",1)~
END
++ @319 EXTERN X3KalJ pl3.1

CHAIN X3KalJ pl3.1
@320
= @321
= @322
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3KalIrenicusIsDead1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @323
END

// Hell

I_C_T PLAYER1 25 X3KalEnteringHell1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @324
END

// Irenicus in hell

I_C_T HELLJON 7 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @325
END

I_C_T HELLJON 8 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @325
END

I_C_T HELLJON 9 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @325
END

I_C_T HELLJON 10 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @325
END

//Chapter 3 Docks Talk 

CHAIN IF ~Global("X3KalDockTalk","LOCALS",2)~ THEN X3KalJ DockTalk 
@326
DO ~IncrementGlobal("X3KalDockTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @327 + ST.1 
++ @328 + ST.3 
++ @329 + ST.X 

CHAIN X3KalJ ST.1 
@330
EXTERN X3KalJ ST.2

CHAIN X3KalJ ST.3 
@331
EXTERN X3KalJ ST.2

CHAIN X3KalJ ST.X 
@332
EXIT 

CHAIN X3KalJ ST.2
@333
END 
++ @334 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + ST.6
++ @335 + ST.7
++ @336 + ST.5

CHAIN X3KalJ ST.5
@337
EXIT

CHAIN X3KalJ ST.6
@338
EXIT 

CHAIN X3KalJ ST.7
@339
EXIT 


// Quest 

CHAIN IF ~Global("X3KalQuest","GLOBAL",2)~ THEN X3KalJ Quest 
@340
DO ~IncrementGlobal("X3KalQuest","GLOBAL",1)SetGlobal("X3KalQuestComment","AR0400",1)~
END 
++ @341 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~  + Q.1 
++ @342 + Q.2 
++ @343 + Q.3

CHAIN X3KalJ Q.1
@344
EXTERN X3KalJ Q.4 

CHAIN X3KalJ Q.3 
@345
EXTERN X3KalJ Q.4 

CHAIN X3KalJ Q.4
@346
DO ~AddJournalEntry(@3,QUEST)~
EXIT 

CHAIN X3KalJ Q.2
@347
EXTERN X3KalJ Q.4 
// Ilmater Priest in Slums
EXTEND_BOTTOM SLILMAT 0
IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalQuest","GLOBAL",0)~ EXTERN X3KalJ Items
END

CHAIN X3KalJ Items 
@348
== SLILMAT @349
== X3KalJ @350
== SLILMAT @351
DO ~AddJournalEntry(@2,QUEST)ActionOverride(Player1,CreateItem("X3KBOOK1",0,0,0))~ 
END 
++ @352 EXTERN X3KalJ gold
++ @353 EXTERN X3KalJ journal  
++ @354 EXTERN X3KAlJ gold 

CHAIN X3KalJ cheese 
@355
EXTERN X3KalJ holding 

CHAIN X3KalJ journal 
@356
EXTERN X3KalJ holding 

CHAIN X3KalJ gold 
@357
EXTERN X3KalJ holding 

CHAIN X3KalJ holding 
@358
== SLILMAT @359
DO ~SetGlobal("X3KalQuest","GLOBAL",1)~
EXIT 

// Kale Talk 
CHAIN IF ~Global("X3KalTalk","LOCALS",2)~ THEN X3KalJ Talk1
@360
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @361 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.1
++ @362 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.4
++ @363 + T1.2

CHAIN X3KalJ T1.2 
@364
END 
++ @365 + T1.1
++ @366 + T1.1
++ @367 + T1.1

CHAIN X3KalJ T1.1 
@368
== X3KalJ @369
END 
++ @370 + T1.5 
++ @371 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.6
++ @372 + T1.X

CHAIN X3KalJ T1.3 
@373
END 
++ @374 + T1.1 
++ @375 + T1.X 
++ @376 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T1.7

CHAIN X3KalJ T1.4
@377
END 
++ @378 + T1.1 
++ @379 + T1.1 
++ @380 + T1.7

CHAIN X3KalJ T1.X 
@381
EXIT 

CHAIN X3KalJ T1.5 
@382
END 
++ @383 + T1.8 
++ @384 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T1.8
++ @385 + T1.9 

CHAIN X3KalJ T1.6 
@386
END 
++ @383 + T1.8 
++ @384 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T1.8
++ @385 + T1.9 

CHAIN X3KalJ T1.7 
@387
EXTERN X3KalJ T1.1 

CHAIN  X3KalJ T1.8 
@388
EXIT 

CHAIN X3KalJ T1.9 
@389
EXIT 

// Kale Talk 2 

CHAIN IF ~Global("X3KalTalk","LOCALS",4)~ THEN X3KalJ Talk2
@390
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @391 + T2.1
+~Global("X3KalPartyBG1","GLOBAL",1)~+ @392 + T2.2
+~!Global("X3KalPartyBG1","GLOBAL",1)~+ @392 + T2.4
++ @393 + T2.6

CHAIN X3KalJ T2.1 
@394
END 
+~Global("X3KalPartyBG1","GLOBAL",1)~+ @395 + T2.2
+~!Global("X3KalPartyBG1","GLOBAL",1)~+ @395 + T2.4 
++ @393 + T2.6
++ @396 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~  + T2.7

CHAIN X3KalJ T2.2 
@397
END 
++ @398 DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3
++ @399 + T2.8
++ @400 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5

CHAIN X3KalJ T2.4
@401
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ T2_Interject 
++ @398 DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3
++ @399  + T2.8
++ @400 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5

CHAIN X3KalJ T2.6 
@402
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ T2_Interject 
++ @398 DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3
++ @399  + T2.8
++ @400 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5


CHAIN X3HelJ T2_Interject 
@403
== X3KalJ @404
END 
++ @405 DO ~IncrementGlobal("X3HelApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@216)~  EXTERN X3KalJ T2.Hel
++ @398 DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ EXTERN X3KalJ T2.3
++ @399  EXTERN X3KalJ T2.8
++ @400 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T2.5

CHAIN X3KalJ T2.Hel 
@406
END 
++ @399  + T2.8
++ @407 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5
++ @398 DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3


CHAIN X3KalJ T2.5 
@408
EXIT 

CHAIN X3KalJ T2.3 
@409
END 
++ @410 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.11 
++ @411  + T2.12
++ @412 + T2.X

CHAIN X3KalJ T2.7
@413
END 
++ @399 EXTERN X3KalJ T2.8
++ @400 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T2.5
++ @398 DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ EXTERN X3KalJ T2.3


CHAIN X3KalJ T2.8 
@414
END 
++ @415 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.14 
++ @416 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.13 
++ @417 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)SetGlobal("X3KalInterest","LOCALS",1)~ + T2.9 
++ @412 + T2.X

CHAIN X3KalJ T2.X 
@418
EXIT 

CHAIN X3KalJ T2.9 
@419
EXIT

CHAIN X3KalJ T2.10 
@420
EXIT 

CHAIN X3KalJ T2.11 
@421
EXIT 

CHAIN X3KalJ T2.12 
@422
EXIT 

CHAIN X3KalJ T2.13
@423
EXIT 

CHAIN X3KalJ T2.14 
@424
EXIT 

// Friendship Talk #6

CHAIN IF ~Global("X3KalTalk","LOCALS",6)~ THEN  X3KalJ Talk3
@425
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Interject_3
+~Race(Player1,HALFLING)~+ @426 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.2
+~!Race(Player1,HALFLING)~+ @426 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.1
+~Race(Player1,HALFLING)~+ @427 + T3.6
++ @428 + T3.4
++ @429 + T3.3
+~Race(Player1,HALFLING)~+ @430 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.2
+~!Race(Player1,HALFLING)~+ @430 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.1

CHAIN X3VieJ Interject_3 
@431
== X3KalJ @432
END 
+~Race(Player1,HALFLING)~+ @433 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@513)~ EXTERN X3KalJ T3.2
+~!Race(Player1,HALFLING)~+ @433 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@513)~ EXTERN X3KalJ T3.1
++ @434 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@503)~ + Interject_3.3
+~Race(Player1,HALFLING)~+ @427 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@503)~ + Interject_3.2
++ @429 EXTERN X3KalJ T3.3
+~Race(Player1,HALFLING)~+ @430 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T3.2
+~!Race(Player1,HALFLING)~+ @430 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T3.1

CHAIN X3KalJ T3.1 
@435
EXTERN X3KalJ T3.6 

CHAIN X3KalJ T3.2 
@436
EXTERN X3KalJ T3.6

CHAIN X3KalJ T3.3 
@437
EXTERN X3KalJ T3.6 

CHAIN X3KalJ T3.4 
@438
EXTERN X3KalJ T3.6

CHAIN X3VieJ Interject_3.3 
@439
EXTERN X3KalJ T3.5 

CHAIN X3VieJ Interject_3.2 
@440
EXTERN X3KalJ T3.5

CHAIN X3KalJ T3.5 
@441
EXTERN X3KalJ T3.6

CHAIN X3KalJ T3.6 
@442
== X3KalJ @443
END 
+~Race(Player1,HALFLING)~+ @444 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.7
++ @445 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.8
++ @446 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.9
++ @447 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.10 

CHAIN X3KalJ T3.7 
@448
EXIT 

CHAIN X3KalJ T3.8 
@449
EXIT 

CHAIN X3KAlJ T3.9 
@450
EXIT 


CHAIN X3KalJ T3.10 
@451
EXIT 

// Friendship Talk #4

CHAIN IF ~Global("X3KalTalk","LOCALS",8)~ THEN  X3KalJ Talk4
@452
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @453 + T4.1 
++ @454 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T4.2 
++ @455 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T4.1 

CHAIN X3KAlJ T4.1 
@456
END 
++ @457  + T4.3 
++ @458 + T4.4
++ @459 + T4.5


CHAIN X3KalJ T4.2 
@460
END 
++ @461 + T4.3 
++ @458 + T4.4 
++ @459 + T4.5

CHAIN X3KAlJ T4.3 
@462
DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)SetGlobal("X3KalInterest","LOCALS",1)~
EXIT 

CHAIN X3KalJ T4.4 
@463
DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~
EXIT 

CHAIN X3KalJ T4.5 
@464
DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~
EXIT 


// Talk 5: At Any Inn 

CHAIN IF ~Global("X3KalTalk","LOCALS",10)~ THEN X3KalJ Talk5 
@465
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++  @466 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.1 
++ @467 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T5.2 
++ @468 + T5.3 

CHAIN X3KalJ T5.1 
@469
EXTERN X3KalJ T5.4 

CHAIN X3KalJ T5.2 
@470
EXIT 

CHAIN X3KalJ T5.3 
@471
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @472
END 
++ @473 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.1
++ @474 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.1 
++ @475 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T5.2  

CHAIN X3KalJ T5.4 
@476
END 
++ @477 + T5.5 
++ @478 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.5 
++ @479 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T5.6 

CHAIN X3KAlJ T5.5
@480
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @481
END 
++ @482 + T5.7 
++ @483 + T5.6 
++ @484 + T5.2

CHAIN X3KalJ T5.6 
@485
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @486
END 
++ @482 + T5.7 
++ @483 + T5.13 
++ @484 + T5.2

CHAIN X3KalJ T5.13 
@487
EXTERN X3KalJ T5.8

CHAIN X3KalJ T5.7 
@488
EXTERN X3KalJ T5.8

CHAIN X3KalJ T5.8
@489
END 
++ @490 + T5.11 
++ @491 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.9
++ @492 + T5.10 


CHAIN X3KAlJ T5.9 
@493
EXTERN X3KAlJ T5.12 

CHAIN X3KAlJ T5.10 
@494
EXTERN X3KalJ T5.12 

CHAIN X3KalJ T5.11 
@495
EXTERN X3KalJ T5.12 

CHAIN X3KAlJ T5.12 
@496
EXIT 

//Friendship Talk #6

CHAIN IF ~Global("X3KalTalk","LOCALS",12)~ THEN X3KalJ FriendshipTalk6
@497
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @498 + T6.1 
++ @499 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T6.2 
++ @391 + T6.3

CHAIN X3KalJ T6.1 
@500
EXTERN X3KalJ T6.3

CHAIN X3KalJ T6.2 
@501
EXTERN X3KalJ T6.3 

CHAIN X3KalJ T6.3 
@502
= @503
END 
++ @504 + T6.4 
++ @505 + T6.5 
++ @506 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T6.6

CHAIN X3KalJ T6.4
@507
EXTERN X3KalJ T6.7 

CHAIN X3KalJ T6.5 
@508
EXTERN X3KalJ T6.7 

CHAIN X3KalJ T6.6
@509
EXTERN X3KalJ T6.7

CHAIN X3KalJ T6.7
@510
EXIT 

//Friendship Talk #7A

CHAIN IF ~Global("X3KalTalk","LOCALS",14)Dead("X3KC")~ THEN X3KalJ FriendshipTalk7A
@511
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @512 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7A.1 
++ @513 + T7A.2
++ @514 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T7A.X 

CHAIN X3KalJ T7A.1
@515
EXTERN X3KalJ T7A.3

CHAIN X3KalJ T7A.2
@516
EXTERN X3KalJ T7A.3 

CHAIN X3KalJ T7A.3 
@517
END 
++ @518 + T7A.4
++ @519 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7A.5
++ @520 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7A.6
++ @521 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T7A.7

CHAIN X3KalJ T7A.4
@522
EXIT 

CHAIN X3KalJ T7A.5 
@523
EXIT 

CHAIN X3KalJ T7A.6
@524
EXIT 

CHAIN X3KalJ T7A.7
@525
EXIT 

CHAIN X3KalJ T7A.X 
@526
EXIT  

//Talk #7B

CHAIN IF ~Global("X3KalTalk","LOCALS",14)!Dead("X3KC")~ THEN X3KalJ FriendshipTalk7B
@527
DO ~ChangeAlignment("X3Kal",LAWFUL_NEUTRAL)IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END  
++ @528 + T7B.1 
++ @529 + T7B.2
++ @530 + T7B.X 

CHAIN X3KalJ T7B.X 
@531
EXIT 

CHAIN X3KalJ T7B.1
@532
EXTERN X3KalJ T7B.3

CHAIN X3KalJ T7B.2
@533
EXTERN X3KalJ T7B.3

CHAIN X3KalJ T7B.3 
@534
= @535
END 
++ @536 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7B.4 
++ @537 + T7B.5
++ @538 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7B.6

CHAIN X3KalJ T7B.4
@539
EXIT 

CHAIN X3KalJ T7B.5
@540
= @541
EXIT 

CHAIN X3KalJ T7B.6
@542
= @543
EXIT 

//Friendship Talk #8

CHAIN IF ~Global("X3KalTalk","LOCALS",16)~ THEN X3KalJ FriendshipTalk8
@544
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @545 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T8.1 
++ @546 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T8.2 
++ @547 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T8.3
++ @548 + T8.X 

CHAIN X3KalJ T8.X 
@549
EXIT 

CHAIN X3KalJ T8.1 
@550
EXTERN X3KalJ T8.4

CHAIN X3KalJ T8.3 
@551
EXTERN X3KalJ T8.4

CHAIN X3KalJ T8.2
@552 
EXTERN X3KalJ T8.4

CHAIN X3KalJ T8.4
@553
END 
++ @554 + T8.5 
++ @555 + T8.6
++ @556 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T8.5

CHAIN X3KalJ T8.6 
@557
EXTERN X3KalJ T8.5

CHAIN X3KalJ T8.5 
@558
EXIT 

//Romance Talks 
CHAIN IF ~Global("X3KalLoveTalk","LOCALS",2)~ THEN X3KalJ LoveTalk1 
@559
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @560 + 1.1
+~Global("X3KalPartyBG1","GLOBAL",1)~+ @561 + 1.2
++ @562 + 1.3
++ @563 + 1.4
++ @564 + 1.X 

CHAIN X3KalJ 1.X 
@565
EXIT 

CHAIN X3KalJ 1.1 
@566
EXTERN X3KalJ 1.2 


CHAIN X3KalJ 1.3 
@567
EXTERN X3KalJ 1.2

CHAIN X3KalJ 1.2
@568
= @569
= @570
END 
+~OR(2)Race(Player1,HALFLING)Race(Player1,GNOME)~+ @571 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 1.13 
+~!Race(Player1,HALFLING)!Race(Player1,GNOME)~+ @571 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 1.14
++ @572 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 1.7
++ @573 + 1.6

CHAIN X3KalJ 1.14
@574
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.13 
@575
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.7
@576
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.6
@577
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.4
@578
EXTERN X3KalJ 1.5


CHAIN X3KalJ 1.5
@579
= @580
END 
++ @581 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 1.11
++ @582 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 1.10
++ @583 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 1.9
+~!CheckStatGT(Player1,15,STR)~+ @584 + 1.17
+~CheckStatGT(Player1,15,STR)~+ @584 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 1.8
++ @585 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 1.16 

CHAIN X3KalJ 1.16
@586
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.8
@587
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.17
@588
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.9
@589
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.10
@590
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.11 
@591
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.12
@592
EXIT 

//Love Talk #2

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",4)~ THEN X3KalJ LoveTalk2 
@593
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @594 + 2.1
++ @595 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.2 
++ @596 + 2.3
++ @597 + 2.4
++ @548 + 2.X 

CHAIN X3KalJ 2.X 
@598
EXIT 

CHAIN X3KalJ 2.1 
@599
EXTERN X3KalJ 2.5

CHAIN X3KalJ 2.2 
@600
EXTERN X3KalJ 2.5

CHAIN X3KalJ 2.3 
@601
EXTERN X3KalJ 2.5

CHAIN X3KalJ 2.4  
@602
EXTERN X3KalJ 2.5 

CHAIN X3KalJ 2.5 
@603
= @604
= @605
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ 2.Helga 
++ @606 + 2.6 
++ @607  DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.7
++ @608 + 2.8

CHAIN X3HelJ 2.Helga 
@609
== X3KalJ @610
END 
++ @606 EXTERN X3KalJ 2.6 
++ @607 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ EXTERN X3KalJ 2.7
++ @608 EXTERN X3KalJ 2.8

CHAIN X3KalJ 2.6
@611
EXTERN X3KalJ 2.9

CHAIN X3KalJ 2.9
@612
= @613
EXIT 

CHAIN X3KalJ 2.7
@614
EXTERN X3KalJ 2.9

CHAIN X3KalJ 2.8
@615
EXTERN X3KalJ 2.9

//Kale Love Talk #6

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",6)~ THEN X3KalJ LoveTalk3 
@616
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @617 + 3.1
++ @618 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.2 
++ @619  + 3.3
++ @620 + 3.X 

CHAIN X3KalJ 3.X 
@621
EXIT 

CHAIN X3KalJ 3.1
@622
EXTERN X3KalJ 3.4 

CHAIN X3KalJ 3.2 
@623
EXTERN X3KalJ 3.4 

CHAIN X3KalJ 3.3 
@624
EXTERN X3KalJ 3.4 

CHAIN X3KalJ 3.4
@625
= @626
= @627
= @628
END 
++ @629 + 3.5 
++ @630 + 3.6
++ @631 + 3.7
++ @632 + 3.X 

CHAIN X3KalJ 3.5
@633
EXTERN X3KalJ 3.8

CHAIN X3KalJ 3.6
@634
EXTERN X3KalJ 3.8

CHAIN X3KalJ 3.7
@635
EXTERN X3KalJ 3.8

CHAIN X3KalJ 3.8
@636
= @637
= @638
END 
++ @639 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.9
++ @640  + 3.10
++ @641 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 3.11

CHAIN X3KalJ 3.9
@642
= @643
EXIT 

CHAIN X3KalJ 3.11 
@644
EXIT 

CHAIN X3KalJ 3.10 
@645
EXIT 

// Love Talk #4

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",8)~ THEN X3KalJ LoveTalk4 
@646
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
+~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ @647 + 4.1A 
+~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ @647 + 4.1B 
++ @648 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.10 
++ @649 + 4.X 

CHAIN X3KalJ 4.1A 
@650
END 
++ @651 + 4.2 
++ @652 + 4.3 
++ @653 + 4.4

CHAIN X3KalJ 4.10
@654
END 
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ EXTERN X3KalJ 4.1A 
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ EXTERN X3KalJ 4.1B


CHAIN X3KalJ 4.1B
@655
END  
++ @651 + 4.2 
++ @652 + 4.3 
++ @653 + 4.4

CHAIN X3KalJ 4.4 
@656
END 
++ @657 + 4.5
++ @658 + 4.5 
++ @659 + 4.6

CHAIN X3KalJ 4.3
@660
END 
++ @661 + 4.8
++ @662 + 4.9
++ @659 + 4.6

CHAIN X3KalJ 4.2 
@663
END 
++ @657 + 4.5
++ @658 + 4.5 
++ @659 + 4.6

CHAIN X3KalJ 4.X 
@664
EXIT 

CHAIN X3KalJ 4.5 
@665
EXTERN X3KalJ 4.7

CHAIN X3KalJ 4.7
@666
EXIT 

CHAIN X3KalJ 4.6
@667
EXTERN X3KalJ 4.7

CHAIN X3KalJ 4.9
@668
EXTERN X3KalJ 4.7

CHAIN X3KalJ 4.8
@669
EXTERN X3KalJ 4.7

//LoveTalk #5

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",10)~ THEN X3KalJ LoveTalk5 
@670
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
+~Global("X3KalPartyBG1","GLOBAL",1)~+ @671 + 5.1 
+~!Global("X3KalPartyBG1","GLOBAL",1)~+ @671 + 5.2 
++ @672 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 5.3 
++ @673 + 5.4
++ @674 + 5.X

CHAIN X3KalJ 5.X 
@675
EXIT 

CHAIN X3KAlJ 5.1 
@676
END 
++ @677 + 5.5
++ @678 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.6
++ @674 + 5.X 

CHAIN X3KalJ 5.2 
@679
END 
++ @677 + 5.5
++ @678 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.6 
++ @674 + 5.X 

CHAIN X3KalJ 5.3 
@680
== X3KalJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @681
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @682 
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.4
@683
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.5
@684
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.6
@685
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.7
@686
END 
++ @687  + 5.8
++ @688  + 5.9
++ @689 + 5.10
++ @690 + 5.11

CHAIN X3KalJ 5.8
@691
END 
++ @692 + 5.12
++ @693 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.13 
++ @694 + 5.10

CHAIN X3KalJ 5.9
@695
END 
++ @696 + 5.11
++ @697 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.13 
++ @698 + 5.10

CHAIN X3KalJ 5.10 
@699
EXTERN X3KalJ 5.12 

CHAIN X3KalJ 5.11 
@700
EXTERN X3KalJ 5.14 

CHAIN X3KalJ 5.12 
@701
EXTERN X3KalJ 5.14 

CHAIN X3KalJ 5.13 
@702
EXTERN X3KalJ 5.14 

CHAIN X3KalJ 5.14 
@703
END 
++ @704 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 5.15 
++ @705 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.16
++ @706 + 5.17
++ @707 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + 5.18

CHAIN X3KalJ 5.15 
@708
EXTERN X3KalJ 5.19

CHAIN X3KalJ 5.16
@709
EXTERN X3KalJ 5.19

CHAIN X3KalJ 5.17
@710
EXTERN X3KalJ 5.19

CHAIN X3KalJ 5.18
@711
EXIT 

CHAIN X3KalJ 5.19
@712
EXIT 

// Friendship Talk #6 - Rest

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",12)~ THEN X3KalJ LoveTalk6 
@713
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @714 + 6.1
++ @715 + 6.2 
++ @716 + 6.X

CHAIN X3KalJ 6.X 
@717
EXIT 

CHAIN X3KalJ 6.1 
@718
END 
++ @719 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.3
++ @720 + 6.4
++ @721 + 6.2 

CHAIN X3KalJ 6.2 
@722
= @723
END 
++ @724 + 6.4 
++ @725 + 6.5 
++ @726 + 6.6

CHAIN X3KalJ 6.3 
@727
EXTERN X3KalJ 6.6

CHAIN X3KalJ 6.4 
@728
EXTERN X3KalJ 6.6

CHAIN X3KalJ 6.5
@729
EXTERN X3KalJ 6.6

CHAIN X3KalJ 6.6
@730 
= @731
END 
++ @732 + 6.7
++ @733 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.8
++ @734 + 6.9

CHAIN X3KalJ 6.7
@735
= @736
END 
++ @737 + 6.10 
++ @738 + 6.11 
++ @739 + 6.12
++ @740 + 6.13

CHAIN X3KalJ 6.8
@741
END 
++ @737 + 6.10 
++ @738 + 6.11 
++ @739 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.12
++ @740 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 6.13

CHAIN X3KalJ 6.9
@742
= @743
END 
++ @737 + 6.10 
++ @738 + 6.11 
++ @739 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.12
++ @740 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 6.13

CHAIN X3KalJ 6.10
@744
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.11
@745
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.12
@746
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.13 
@747
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.14 
@748
END 
++ @749 + 6.15
++ @750 + 6.16
++ @751 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 6.XX 
++ @752 + 6.XX 

CHAIN X3KalJ 6.XX 
@753
EXIT 

CHAIN X3KalJ 6.15 
@754
EXTERN X3KalJ 6.17

CHAIN X3KalJ 6.17
@755
EXIT 
 
 CHAIN X3KalJ 6.16 
 @756
 EXTERN X3KalJ 6.17

// Love Talk #7

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",14)~ THEN X3KalJ LoveTalk7
@757
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @758 + 7.1 
++ @759 + 7.1
++ @760 + 7.X 

CHAIN X3KalJ 7.X 
@761
EXIT 

CHAIN X3KalJ 7.1 
@762
END 
++ @763 + 7.2 
++ @764 + 7.3 
++ @765 + 7.4 
++ @766 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 7.2

CHAIN X3KalJ 7.2 
@767
EXTERN X3KalJ 7.12 

CHAIN X3KalJ 7.12
@768
END 
++ @769 + 7.6
++ @770 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.7
++ @771 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.8

CHAIN X3KalJ 7.3
@772
END 
++ @769 + 7.6
++ @770 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.7
++ @771 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.8


CHAIN X3KalJ 7.4 
@773
END 
IF ~Gender(Player1,FEMALE)~ + 7.5F
IF ~!Gender(Player1,FEMALE)~ + 7.5M

CHAIN X3KalJ 7.5F
@774
END 
++ @775 + 7.9
++ @776 + 7.10
++ @777 + 7.11
++ @778 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.2

CHAIN X3KalJ 7.5M
@779
END  
++ @775 + 7.9
++ @776 + 7.10
++ @777 + 7.11
++ @778 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.2



CHAIN X3KalJ 7.6
@780
EXTERN X3KalJ 7.7

CHAIN X3KalJ 7.7
@781
END 
++ @782 + 7.13
++ @783 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.14
+~!Gender(Player1,FEMALE)~+ @784 + 7.15
++ @785 + 7.16

CHAIN X3KalJ 7.13
@786
EXIT 

CHAIN X3KalJ 7.14 
@787
EXIT 

CHAIN X3KalJ 7.15
@788
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3KalJ 7.16
@789
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalAppChange","GLOBAL",-3)~
EXIT 

CHAIN X3KalJ 7.8
@790
EXTERN X3KalJ 7.7

CHAIN X3KalJ 7.9
@791
EXTERN X3KalJ 7.12

CHAIN X3KalJ 7.10 
@792
EXTERN X3KalJ 7.12 

CHAIN X3KalJ 7.11
@793
EXTERN X3KalJ 7.12 

// Love Talk #8

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",16)~ THEN X3KalJ LoveTalk8
@794
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @795  + 8.2
++ @796 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 8.3
++ @797 + 8.1 
++ @798 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 8.X 

CHAIN X3KalJ 8.X 
@799
EXIT 

CHAIN X3KalJ 8.1 
@800
END 
++ @801 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.4
++ @802 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 8.6
++ @803 + 8.5

CHAIN X3KalJ 8.2 
@804
END 
++ @805 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.10
++ @806 + 8.9
++ @807 + 8.8

CHAIN X3KalJ 8.4 
@808
END 
++ @805 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.10
++ @806 + 8.9
++ @807 + 8.8

CHAIN X3KalJ 8.5
@809
END 
++ @810 + 8.17
++ @811 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.7
++ @812 + 8.8
 
CHAIN X3KalJ 8.6
@813
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.3 
@814
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.8 
@815
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.9
@816
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.10
@817
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.7
@818
END 
++ @819 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.11 
++ @820 + 8.11 
++ @821 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.12
++ @822 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 8.13

CHAIN X3KalJ 8.11
@823
= @824
END 
++ @825 + 8.14 
++ @826 + 8.15
++ @827 + 8.16

CHAIN X3KalJ 8.14 
@828
EXIT 

CHAIN X3KalJ 8.15
@829
EXIT 

CHAIN X3KalJ 8.16
@830
EXIT 

CHAIN X3KalJ 8.12 
@831
EXTERN X3KalJ 8.11 

CHAIN X3KalJ 8.13 
@832
EXTERN X3KalJ 8.11 

CHAIN X3KalJ 8.17
@833
EXTERN X3KalJ 8.7

//  Love Talk #9

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",18)~ THEN X3KalJ LoveTalk9 
@834
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @835 + 9.1 
++ @836 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.2 
++ @837 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 9.3
++ @838 + 9.X 

CHAIN X3KalJ 9.X 
@839
EXIT 

CHAIN X3KalJ 9.1
@840
EXTERN X3KalJ 9.4

CHAIN X3KalJ 9.2 
@841
EXTERN X3KalJ 9.4

CHAIN X3KalJ 9.3 
@842
EXTERN X3KalJ 9.4

CHAIN X3KalJ 9.4 
@843
END 
++ @844 + 9.5 
++ @845 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.6 
++ @846 + 9.7
++ @847 + 9.8

CHAIN X3KalJ 9.5
@848
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.6
@849
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.7
@850
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.8
@851
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.9
@852
= @853
END 
++ @854 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 9.10 
++ @855 + 9.11
++ @856 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 9.12 
++ @857 + 9.13

CHAIN X3KalJ 9.10
@858
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,GNOME)Race(Player1,DWARF)~ EXTERN X3KalJ 9.14S 
IF ~!Race(Player1,HALFLING)!Race(Player1,GNOME)!Race(Player1,DWARF)~ EXTERN X3KalJ 9.14T

CHAIN X3KalJ 9.11
@859
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,GNOME)Race(Player1,DWARF)~ EXTERN X3KalJ 9.14S 
IF ~!Race(Player1,HALFLING)!Race(Player1,GNOME)!Race(Player1,DWARF)~ EXTERN X3KalJ 9.14T

CHAIN X3KalJ 9.12 
@860
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3KalJ 9.13 
@861
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,GNOME)Race(Player1,DWARF)~ EXTERN X3KalJ 9.14S 
IF ~!Race(Player1,HALFLING)!Race(Player1,GNOME)!Race(Player1,DWARF)~ EXTERN X3KalJ 9.14T

CHAIN X3KalJ 9.14S 
@862
EXTERN X3KalJ 9.15

CHAIN X3KalJ 9.14T
@863
EXTERN X3KalJ 9.15

CHAIN X3KalJ 9.15
@864
END 
++ @865 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.16 
++ @866 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.17
++ @867 + 9.18
++ @868 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 9.12

CHAIN X3KalJ 9.16
@869
EXTERN X3KalJ 9.19

CHAIN X3KalJ 9.17
@870
EXTERN X3KalJ 9.19

CHAIN X3KalJ 9.18
@871
EXTERN X3KalJ 9.19

CHAIN X3KalJ 9.19
@872
EXIT 

//Love Talk #10

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",20)~ THEN X3KalJ LoveTalk10 
@873
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @874 + 10.1
++ @875 + 10.2 
++ @876 + 10.3

CHAIN X3KalJ 10.1
@877
END 
IF ~OR(3)Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Conflict
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.2 
@878
END 
IF ~OR(3)Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Conflict
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.3
@879
END 
IF ~OR(3)Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Conflict
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.Conflict 
@880
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Emily
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Recorder
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Vienxay

CHAIN X3KalJ 10.Emily 
@881
= @882
END 
++ @883 + 10.E1 
++ @884 + 10.X
++ @885 + 10.E3 
++ @886 + 10.E3

CHAIN X3KalJ 10.E1 
@887
= @888
END 
++ @884 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 10.X
++ @885 + 10.E3 
++ @886 + 10.E3

CHAIN X3KalJ 10.X
@889
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3KalJ 10.E3 
@890
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Recorder
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Vienxay
IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.Recorder 
@891
= @892
END 
++ @883 + 10.R1 
++ @893 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~  + 10.X 
++ @894 + 10.R3 
++ @886 + 10.R3

CHAIN X3KalJ 10.R1 
@895
END 
++ @893 + 10.X 
++ @894 + 10.R3 
++ @886 + 10.R3

CHAIN X3KalJ 10.R3 
@896
END 
IF ~Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Vienxay
IF ~!Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.Vienxay 
@897
= @898
END 
++ @883 + 10.V1 
++ @899 + 10.X 
++ @900 + 10.V3 
++ @886 + 10.V3

CHAIN X3KalJ 10.V1 
@901
END 
++ @899 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 10.X 
++ @900 + 10.V3 
++ @886 + 10.V3

CHAIN X3KalJ 10.V3 
@902
EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.4 
@903
END 
++ @904 + 10.5
++ @905 + 10.6 
++ @906 + 10.6
++ @907 + 10.7

CHAIN X3KalJ 10.5
@908
= @909
EXTERN X3KalJ 10.6

CHAIN X3KalJ 10.6
@910
END 
++ @911 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 10.8 
++ @912 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 10.9
++ @913 + 10.10

CHAIN X3KalJ 10.8
@914
EXTERN X3KalJ 10.11

CHAIN X3KalJ 10.9
@915
EXTERN X3KalJ 10.11

CHAIN X3KalJ 10.10
@916
EXTERN X3KalJ 10.11

CHAIN X3KalJ 10.7
@917
EXTERN X3KalJ 10.6

CHAIN X3KalJ 10.11 
@918
EXIT 
// Other NPC Conflicts here 

// Romance conflict

CHAIN IF ~Global("X3KalRomanceConflict","GLOBAL",1)~ THEN X3KalJ X3VieRomanceConflict
@919
== X3KalJ @920
END 
++ @921 + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + @922 + RC.2
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + @923 + RC.2
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @924 + RC.2
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + @925 + RC.Viconia
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + @926 + RC.2
+ ~Global("HexxatRomanceActive","GLOBAL",1)~ + @927 + RC.Hexxat
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + @928 + RC.2
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + @929 + RC.2
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + @930 + RC.Petsy
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + @931 + RC.2
+ ~Global("DornRomanceActive","GLOBAL",1)~ + @932 + RC.2
++ @933 + RC.2


CHAIN X3KalJ RC.2
@934
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.Hexxat
@935
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.Petsy
@936
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.Viconia
@937
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.1
@938
DO ~SetGlobal("X3KalAppChange","GLOBAL",9)SetGlobal("AerieRomanceActive","GLOBAL",3)
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


//Love Talk #11
CHAIN IF ~Global("X3KalLoveTalk","LOCALS",22)~ THEN X3KalJ LoveTalk11 
@939
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",2)IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @940 + 11.1
++ @941 + 11.1
++ @942 + 11.2

CHAIN X3KalJ 11.2
@943
EXTERN X3KalJ 11.1

CHAIN X3KalJ 11.1
@944
END 
++ @945 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 11.8 
++ @946 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 11.8 
++ @947 + 11.12
++ @948 + 11.X 

CHAIN X3KalJ 11.X 
@949
DO ~RestParty()~
EXIT 

CHAIN X3KalJ 11.12 
@950
END 
++ @951 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.3
++ @952 + 11.X 

CHAIN X3KalJ 11.3 
@953
= @954
END 
++ @955 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.4 
++ @956 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.4 
++ @957 + 11.5

CHAIN X3KalJ 11.4
@958
DO ~RestParty()~
EXIT 

CHAIN X3KalJ 11.5
@959
DO ~RestParty()~
EXIT 

CHAIN X3KalJ 11.8 
@960
= @961
END 
++ @962 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.6
++ @963 + 11.7
++ @964 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 11.7

CHAIN X3KalJ 11.6
@965
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 

CHAIN X3KalJ 11.7
@966
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 

// Only happens if Kale was slept with at some point.

CHAIN IF ~Global("X3Slept","LOCALS",1)~ THEN X3KalJ LoveTalk12 
@967
DO ~SetGlobal("X3Slept","LOCALS",2)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @968 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 12.1 
++ @969 + 12.1
++ @970 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 12.2
++ @971 + 12.3

CHAIN X3KalJ 12.1 
@972
EXTERN X3KalJ 12.3

CHAIN X3KalJ 12.2 
@973
EXTERN X3KalJ 12.3

CHAIN X3KalJ 12.4
@974
EXTERN X3KalJ 12.3

CHAIN X3KalJ 12.3 
@975
= @976
= @977
END
++ @978 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + 12.8
++ @979 + 12.5
++ @980 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 12.6 

CHAIN X3KalJ 12.6
@981
EXTERN X3KalJ 12.7

CHAIN X3KalJ 12.5
@982
EXTERN X3KalJ 12.7

CHAIN X3KalJ 12.8
@983
EXTERN X3KalJ 12.7

CHAIN X3KalJ 12.7
@984
EXIT 

//Slayer Talk 

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",24)~ THEN X3KalJ LoveTalk13 
@985
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @986 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 13.1 
++ @987 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 13.2 
++ @988 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 13.3 
++ @989 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 13.4

CHAIN X3KalJ 13.1
@990
EXTERN X3KalJ 13.5

CHAIN X3KalJ 13.2 
@991
EXTERN X3KalJ 13.5

CHAIN X3KalJ 13.3
@992
EXTERN X3KalJ 13.5

CHAIN X3KalJ 13.5
@993
END 
++ @994 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 13.6
++ @995 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 13.6
++ @996 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 13.7
++ @997 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 13.4

CHAIN X3KalJ 13.6
@998
EXTERN X3KalJ 13.8

CHAIN X3KalJ 13.7
@999
EXTERN X3KalJ 13.8

CHAIN X3KalJ 13.8
@1000
EXIT 

CHAIN X3KalJ 13.4
@1001
= @1002
EXIT 

// Drow Transform Talk 

CHAIN IF ~Global("X3KalLoveDrow","LOCALS",1)~ THEN X3KalJ LoveTalk14 
@1003
DO ~IncrementGlobal("X3KalLoveDrow","LOCALS",1)~
END 
++ @1004 + 14.1 
++ @1005  + 14.2
++ @1006 + 14.3

CHAIN X3KalJ 14.1
@1007
EXTERN X3KalJ 14.4

CHAIN X3KalJ 14.2
@1008
EXTERN X3KalJ 14.4

CHAIN X3KalJ 14.3 
@1009
EXTERN X3KalJ 14.4

CHAIN X3KalJ 14.4
@1010
EXIT 

// Love Talk #15

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",26)~ THEN X3KalJ LoveTalk15
@1011
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @1012 + 15.1 
++ @1013 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 15.2 
++ @1014 + 15.3 

CHAIN X3KalJ 15.3
@1015
EXTERN X3KalJ 15.4

CHAIN X3KalJ 15.1 
@1016
EXTERN X3KalJ 15.4

CHAIN X3KalJ 15.2 
@1017
EXTERN X3KalJ 15.4

CHAIN X3KalJ 15.4
@1018
= @1019
END 
++ @1020 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 15.5 
++ @1021 + 15.6 
++ @1022 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 15.7

CHAIN X3KalJ 15.5
@1023
EXTERN X3KalJ 15.8

CHAIN X3KalJ 15.6
@1024
EXTERN X3KalJ 15.8

CHAIN X3KalJ 15.7
@1025
= @1026
EXTERN X3KalJ 15.8

CHAIN X3KalJ 15.8
@1027
EXIT 


CHAIN IF ~Global("X3KalLoveTalk","LOCALS",28)~ THEN X3KalJ LoveTalk16 
@1028
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @1029 + 16.1 
++ @1030 + 16.2
++ @1031  DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 16.3

CHAIN X3KalJ 16.1 
@1032
END 
++ @1033 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4
++ @1034 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.5
++ @1035 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 16.3

CHAIN X3KalJ 16.2 
@1036
END 
++ @1033 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4 
++ @1034 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.5
++ @1037  + 16.6

CHAIN X3KalJ 16.3 
@1038
EXIT 

CHAIN X3KalJ 16.4
@1039
END
IF ~Global("X3Slept","LOCALS",0)~ THEN DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~ EXIT 
IF ~!Global("X3Slept","LOCALS",0)~ THEN DO ~RestParty()~ EXIT 


CHAIN X3KalJ 16.5
@1040
= @1041
END 
++ @1042 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4
++ @1043 + 16.7

CHAIN X3KalJ 16.7
@1044
EXIT 

CHAIN X3KalJ 16.6
@1045
= @1046
END 
++ @1042 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4
++ @1035 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 16.3


CHAIN X3KalJ DSR
@1047
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
= @1048
= @1049
END 
++ @1050 + DSR.7
++ @1051 + DSR.7
++ @1052 + DSR.8 

CHAIN X3KalJ DSR.7
@1053
DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",3)~ 
EXIT 

CHAIN X3KalJ DSR.8 
@1054
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalAppChange","GLOBAL",-3)~
EXIT 


// Group Kiss from PID 
CHAIN X3KalJ Group.Kiss 
@1055
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @1056
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1057
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1058
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1059
== X3KalJ @1060
== X3KalJ @1061
EXIT 

APPEND X3KalJ

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @1062
= @1063
= @1064
++ @1065 + LBreak.1
++ @1066 + LBreak.2 
++ @1067 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @1068
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @1069
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @1070
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @1071
++ @1072 + LBreak.5 
++ @1073 + LBreak.6 
++ @1074 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @1075
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @1076
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @1077
IF ~~ EXIT 
END 

// Break Approval 

IF ~Global("X3Break","LOCALS",1)~ Break
SAY @1078 
= @1079
++ @1080 + Break.1 
++ @1081 + Break.2 
++ @1082 + Break.8
END 

IF ~~ Break.1
SAY @1083
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @1084 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY @1085
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY @1086
++ @1087 + Break.4
++ @1088 + Break.5
++ @1089 + Break.6 
END 

IF ~~ Break.4 
SAY @1090
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @1091
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @1092
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3KalApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@316)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @1093
= @1094
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3KalApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY @1095
++ @1096 + Question.PID 
+~NumInPartyGT(2)~+ @1097 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1097 + PersonalAlone.PID 
++ @1203 + FixString
++ @1098 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3KalApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY @1099 
++ @1100 + Question.PID 
+~NumInPartyGT(2)~+ @1097 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1097 + PersonalAlone.PID 
++ @1203 + FixString
++ @1098 EXIT 
END  

IF ~~ main.PID 
SAY @1101
++ @1100 + Question.PID 
+~NumInPartyGT(2)~+ @1102 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @1102 + PersonalAlone.PID 
++ @1203 + FixString
++ @1098 EXIT 
END  

IF ~~ Question.PID
SAY @1103
+~Global("X3PIDCON1","LOCALS",0)~+ @1104 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ @1105 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ @1106 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ @1107 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ @1108 + main.PID 
++ @1109 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @1110
+~Global("X3PIDCON1","LOCALS",0)~+ @1104 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ @1105 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ @1106 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ @1107 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ @1108 + main.PID
++ @1111 EXIT 
END 

IF ~~ PID.Family 
SAY @1112
= @1113
= @1114
++ @1115 + PFamily.1 
++ @1116 + PFamily.1 
++ @1117 + PFamily.2
++ @1108 + main.PID 
END

IF ~~ PFamily.1 
SAY @1118
IF ~~ + PFamily.2
END 

IF ~~ PFamily.2 
SAY @1119
= @1120
++ @1121 + PFamily.3 
++ @1122 + PFamily.4
++ @1123 + PFamily.5
++ @1108 + main.PID 
END

IF ~~ PFamily.3 
SAY @1124
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PFamily.4 
SAY @1126
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PFamily.5 
SAY @1127
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PID.Gullykin 
SAY @1128
= @1129
++ @1130 + PGully.1 
++ @1131 + PGully.2
++ @1108 + main.PID 
END 

IF ~~ PGully.1 
SAY @1132
= @1133
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PGully.2 
SAY @1134
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PID.Faith
SAY @1135
= @1136
= @1137
++ @1138 + PFaith.1 
++ @1139 + PFaith.2 
++ @1140 + PFaith.3
++ @1125 EXIT 
END 

IF ~~ PFaith.1 
SAY @1141
IF ~~ + PFaith.2 
END 

IF ~~ PFaith.2 
SAY @1142
= @1143
= @1144
++ @1145 + PFaith.4
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PFaith.3 
SAY @1146
++ @1139 + PFaith.2 
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PFaith.4
SAY @1147
IF ~~ EXIT 
END 

IF ~~ PID.Cloak
SAY @1148
= @1149
++ @1150 + PCloak.1 
++ @1151 + PCloak.2 
++ @1152 + PCloak.3
++ @1108 + main.PID 
 END 
 
IF ~~ PCloak.1 
SAY @1153
++ @1154 + PCloak.4
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PCloak.2 
SAY @1155
++ @1156 + PCloak.5
++ @1154 + PCloak.4
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PCloak.3 
SAY @1157
++ @1156 + PCloak.5
++ @1154 + PCloak.4
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PCloak.4 
SAY @1158
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.5 
SAY @1159
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.6 
SAY @1160
++ @1108 + main.PID 
++ @1125 EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY @1161
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3KalPartyBG1","GLOBAL",1)~+ @1162 + DSR
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @1163 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1163 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1164 + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3KalInterest","LOCALS",0)~+ @1165 DO ~SetGlobal("X3KalInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1166 + BreakUp
++ @1167 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @1168
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3KalPartyBG1","GLOBAL",1)~+ @1162 + DSR
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @1169 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1169 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1164 + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3KalInterest","LOCALS",0)~+ @1165 DO ~SetGlobal("X3KalInterest","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",7)~ + RomanceInt.Talk
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1166 + BreakUp
++ @1167 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @1170
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @1171
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @1172
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY @1173
++ @1174 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.1
++ @1175 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.2
++ @1176 + RI.3
END 

IF ~~ RI.1 
SAY @1177
++ @1178 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.4 
++ @1179 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.5 
++ @1180 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + RI.6 
++ @1181 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.7
END 

IF ~~ RI.2 
SAY @1182
= @1183
++ @1178 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.4 
++ @1179 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.5 
++ @1180 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + RI.6 
++ @1181 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.7
END 

IF ~~ RI.3 
SAY @1184
++ @1178 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.4 
++ @1179 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.5 
++ @1180 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + RI.6 
++ @1181 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.7
END 

IF ~~ RI.4 
SAY @1185
= @1186
IF ~~ EXIT 
END 

IF ~~ RI.5 
SAY @1187
= @1188
IF ~~ EXIT 
END 

IF ~~ RI.6
SAY @1189
= @1190
IF ~~ EXIT 
END 

IF ~~ RI.7
SAY @1191
= @1192
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY @1193
++ @1194 + BU.1 
++ @1195 + BU.2 
++ @1196 + BU.3 
++ @1197 + BU.4
END 

IF ~~ BU.1 
SAY @1198
IF ~~ + BU.5 
END 

IF ~~ BU.2 
SAY @1199
IF ~~ + BU.5 
END 

IF ~~ BU.3 
SAY @1200
IF ~~ + BU.5 
END 

IF ~~ BU.4 
SAY @1201
IF ~~ + BU.5 
END 

IF ~~ BU.5 
SAY @1202
IF ~~ DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@309)~ EXIT 
END 

IF ~~ FixString
SAY @1204
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3KReset")~ EXIT 
END 

END 