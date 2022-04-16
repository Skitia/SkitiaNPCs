/*Non-Essential Interjections*/ 

//Chapter 6-7

I_C_T DRAGBLAC 7 X3HelDRAGBLAC 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @0
END 


I_C_T SUDEMIN 22 X3HelSUDEMIN-22
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @2
END

I_C_T KRUIN 13 X3HelKRUIN-13
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @3
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== KRUIN @4
END 

I_C_T KRUIN 11 X3HelKRUIN-11
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @5
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~
== KRUIN @6
END 

I_C_T C6SAFA 0 X3HelC6SAFA-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ THEN @7
END 

I_C_T C6CORAN 1 X3HelC6CORAN-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ THEN @8
END 


I_C_T C6REGIS1 2 X3HelC6REGIS1-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @9
END 


I_C_T C6DRIZZ1 22 X3HelC6DRIZZ1-22
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @10
END

I_C_T C6DRIZZ1 55 X3HelC6DRIZZ1-55
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @11
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @13
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
== C6DRIZZ1 @15
END

I_C_T C6DRIZZ1 48 X3HelC6DRIZZ1-48
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @11
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @13
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
== C6DRIZZ1 @15
END

I_C_T C6DRIZZ1 41 X3HelC6DRIZZ1-41
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @11
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @13
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
== C6DRIZZ1 @15
END


I_C_T C6DRIZZ1 18 X3HelC6DRIZZ1-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @11
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @13
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
== C6DRIZZ1 @15
END

I_C_T C6DRIZZ1 5 X3HelC6DRIZZ1-5
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @11
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @13
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
== C6DRIZZ1 @15
END

I_C_T C6DRIZZ1 9 X3HelC6DRIZZ1-9
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @11
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @12
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @13
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
== C6DRIZZ1 @15
END

I_C_T C6BRUEN1 0 X3HelC6BRUEN1-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @16
END

I_C_T C6DRIZZ1 1 X3HelC6DRIZZ1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @17
END

I_C_T C6ELHAN2 37 X3HelC6ELHAN2-37 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @18
END

//Underdark 

I_C_T JARLAXLE 16 X3HelJARLAXLE16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @19
END 

I_C_T UDPHAE01 136 X3HelUDPHAE01-136
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @20
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @21
END



I_C_T UDPHAE01 61 X3HelUDPHAE01-61
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @22
END


I_C_T UDDROW16 40 X3HelUDDROW16-40
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @23
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~
END

I_C_T UDCHAL 0 X3HelUDCHAL0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @24
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
== UDCHAL @25
END 

I_C_T UDDROW16 43 X3HelUDDROW16-43
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @26
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~
END

I_C_T UDDROW04 8 X3HelUDDROW04-8
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @27
DO ~IncrementGlobal("X3HelApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@200213)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @28
END 

I_C_T UDDROW04 25 X3HelUDDROW04-25
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @29
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~
== UDDROW04 @30
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @31
END 

I_C_T UDDROW04 30 X3HelUDDROW04-30
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @32
DO ~IncrementGlobal("X3HelApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@200216)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @33
END 

I_C_T UDDROW04 30 X3HelUDDROW04-30
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @34
DO ~IncrementGlobal("X3HelApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@200219)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @35
END 



I_C_T DASLAVE1 11 X3HelDASLAVE1-11
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @36
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~
END 

I_C_T DADROW16 0 X3HelDadRow16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @37
END 

I_C_T UDDOOR01 1 X3HelUDDOOR01-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @38
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @39
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@300306)~
END 

I_C_T UDSIMYAZ 16 X3HelUDSIMYAZ16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @40
END 

I_C_T UDSIMYAZ 47 X3HelUDSIMYAZ47
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @41
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@300316)~
== UDSIMYAZ @42
END 

I_C_T UDSIMYAZ 37 X3HelUDSIMYAZ37
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @43
END 

I_C_T UDSIMYAZ 26 X3HelUDSIMYAZ26
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @44
END 

I_C_T UDSIMYAZ 5 X3HelUDSIMYAZ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @45
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @46
END 

I_C_T UDSIMYAZ 12 X3HelUDSIMYAZ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @47
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @48
== X3HelJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @49
END 

I_C_T UDKUO01 1 X3HelUDKUO01
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @50
END 

I_C_T UDSILVER 16 X3EmiUDSILVER-16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @51
END 

I_C_T UDSILVER 49 X3HelUDSILVER-49
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @52
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@300313)~
END 

I_C_T UDSVIR03 23 X3HelUDSVIR03-23
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @53
END 

I_C_T UDSVIR03 12 X3HelUDSVIR03-12
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @54
END 

I_C_T UDTRAP01 3 X3HelUDTRAP01-3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @55
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @56
END 

I_C_T VICONIJ 158 X3HelVICONIJ158
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @57
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @58
== X3HelJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @59
END 

I_C_T UDDUER03 6 X3HelUDUDER03-6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @60
END 

I_C_T UDDUER03 0 X3HelUDDUER03-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @61
END 
//Chapter 4 

I_C_T SAHPR2 23 X3HelSAHPR2-23
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @62
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~
END


I_C_T SAHPR2 13 X3HelSAHPR2-13
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @63
END

I_C_T SAHPR4 4 X3HelJSAHPR4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @64
END


I_C_T SAHKNG01 76 X3HelSAHKNG0176 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @65
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~
END


I_C_T SAHKNG01 50 X3HelSAHKNG0150 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @66
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@200203)~
END

I_C_T SAHKNG01 47 X3HelSAHKNG0147 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @65
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~
END

I_C_T SAHKNG01 23 X3HelSAHKNG0123 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @65
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~
END

I_C_T SAHPR1 30 X3HelSAHPR30 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @65
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~
END

I_C_T SAHPR1 5 X3HelSAHPR5 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @67
END

I_C_T PPSAEM3 23 X3KalPPSAEM3-23
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @68
END

I_C_T PPSAEM3 1 X3HelPPSAEM3-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @69
END

I_C_T PPSAEM2 21 X3HelPPSAEM2-21
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @70
END

I_C_T PPSAEM2 19 X3HelPPSAEM2-19
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @71
END

I_C_T PPSAEM2 8 X3HelPPSAEM2-8
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @72
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @73
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN @74
== PPSAEM2 @75
END 


I_C_T PPJOYE2 10 X3EmiPPJOYE2-10
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @76
END 

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Hel") Global("X3HelPartyBG1","GLOBAL",1)~ + @77 EXTERN X3HelJ X3HelPPIMOEN0
END

CHAIN X3HelJ X3HelPPIMOEN0
@78
EXTERN PPIMOEN 1

I_C_T PPDRADEE 0 X3HelPPDRADEE-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @79
END

I_C_T PPDILI 2 X3ViePPDILI-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @80
END

I_C_T PPTIAX 6 X3HelPPTIAX-6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @81
END 

INTERJECT PIRMUR09 17 X3RebPIRMUR09
== X3HelJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Hel")~ THEN @82
EXTERN PIRMUR09 18

I_C_T PPCOWLED 2 X3HelPPCOWLED
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @83
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @84
END

I_C_T PPSAEM 58 X3HelPPSAEM58
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @85
END

I_C_T PPSAEM 14 X3HelPPSAEM14
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @86
END

//Chapter 3

I_C_T BODHI2 18 X3VieBODHI2-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @87
END

I_C_T ARNMAN09 2 X3HelARNMAN09-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @88
END 

I_C_T ARNMAN09 2 X3VieARNMAN09-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @89
END 

I_C_T ARAN 77 X3HelARAN77 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @90
END 


I_C_T ARAN 49 X3HelARAN49 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @91
END 

I_C_T ARAN 20 X3HelARAN20
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @92
END 


I_C_T ARAN 3 X3HelARAN3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @93
END 

I_C_T ARNBOY01 3 X3HelARNBOY01-3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @94
END 

I_C_T BOOTER 18 X3HelBooter18 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @95
END 


I_C_T FOOD 1 X3HelFOOD1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @96
END  


//Watcher's Keep 

I_C_T GORAPP1 16 X3HelGORAPP1-16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @97
DO ~IncrementGlobal("X3HelApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@200216)~
END 

I_C_T GORDEMO 12 X3HelDEMOGOR1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @98
END 

I_C_T GORSAL 2 X3HelGORSAL2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @99
END 

I_C_T GORCAR 15 X3HelGORCAR 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @100
END 

I_C_T GORCAMB 17 X3HelGorcamb17
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @101
END  

I_C_T GORCAMB 54 X3HelGorcamb54
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @102
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@200203)~ 
END  


EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Hel",LastTalkedToBy)~ EXTERN X3HelJ Yackman
END

CHAIN X3HelJ Yackman  
@103
EXTERN GORMAD1 10

I_C_T GORODR1 11 X3HelGORODR1-11
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @104
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @105
END 

I_C_T GORODR1 35 X3HELGORODR1-35
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @106
END 

//Trademeet 

I_C_T TRSKIN02 16 X3HelTRSKIN02 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @107
END  

I_C_T DRUSH 3 X3HelDrush3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @108
END 

I_C_T DRUSH 5 X3HelDrush5
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @108
END 


I_C_T TRCUT07 4 X3HelTRCUT07-4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @109
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END 


I_C_T TRPLE01 16 X3HelTRPLE01-16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @110
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END 

I_C_T NEEBER 15 X3HelNEEBER15 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @111
END 

I_C_T NEEBER 8 X3HelNEEBER8 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @112
END 

I_C_T TRNOBM01 4 X3HelTRNOBM01-4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @113
END 

I_C_T TRHMER01 34 X3HelTRHMER01-34
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @114
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END 

//Umar Hills 

INTERJECT MAZZY 6 X3HelMAZZY6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN @115
DO ~IncrementGlobal("X3HelApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@100106)~ 
EXTERN MAZZY 13

I_C_T UHOGRE01 12 X3HelUHOGRE01-12
 == X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @116
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@200203)~ 
END 

I_C_T UHOGRE01 15 X3HelUHOGRE01-15
 == X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @117
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~ 
END 

I_C_T UHKID01 18 X3HelUHKID01-18
 == X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @118
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ 
END 

I_C_T UHMER03 3 X3HelUHMER03-3 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @119
END 

I_C_T UHKID02 15 X3HelUHKID02-15
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @120
 END 

I_C_T UHMAY01 52 X3HelUHMAY01-52 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @121
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END

I_C_T UHMAY01 59 X3HelUHMAY01-59 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @122
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~ 
END

I_C_T UHMAY01 70 X3HelUHMAY01-79 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @122
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~ 
END

I_C_T UHMAY01 18 X3HelUHMAY01-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @123
END 

//Windspear Hills 

I_C_T FIRORC02 1 X3HelFIRORC02-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ THEN @124
END 

I_C_T FIRORC02 1 X3HelFIRORC02-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @125
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)Attack("FIRORC02")~ 
== FIRORC02 @126
END 

I_C_T GARJUM 1 X3HelGARJUM1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @127
END 

I_C_T FIRKRA02 25 X3HelFIRKRA02-25 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN @128
== FIRKRA02 @129
END 

I_C_T FIRKRA02 21 X3HelFIRKRA02-21 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @130
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@200203)~ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @131
END

I_C_T GARREN 41 X3HelGARREN41 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @132
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~ 
== GARREN @133
END
I_C_T GARREN 27 X3HELGARREN27 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @134
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END

I_C_T PALKNI05 0 X3HelPALKNI05
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @135
END 


//De'Arnise
I_C_T DELCIA 2 X3HelDELCIA 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @136
END 

I_C_T KPGRD01 0 X3HelKPGRD01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @137
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END

I_C_T KPGRD01 6 X3HelKPGRD01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @138
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~ 
END  

I_C_T KPGRD01 13 X3HelKPGRD01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @139
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~ 
END 
//Althkata

I_C_T CERNDJ 53 X3HelCERNDJ-53
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @140
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ 
END

I_C_T CENANNY 18 X3HELCENANNY-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @141
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @142
== X3HelJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @143
END 

I_C_T AEEXTORT 8 X3HelAEEXTORT
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @144
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~
END


I_C_T MAZZYJ 202 X3HelMazzyJ-202
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @145
== MAZZYJ @146
END

I_C_T DOUG 14 X3HelDOUG-14s
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @147
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~ 
== DOUG @148
END

I_C_T MAZZYJ 44 X3HelMazzyJ-44
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @149
END

I_C_T BORINALL 13 X3HelBORINALL13 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @150
END

I_C_T MERONIA 2 X3HelMERONIA2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @151
END

I_C_T EDWIN 18 X3HelEDWIN18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @152
END

I_C_T STEIN 1 X3HelStein1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @153
END 

I_C_T STEIN 3 X3HelStein3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @153
END 

I_C_T BODHI 72 X3HelBODHI72 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @154
END 

I_C_T BODHI 6 X3HelBODHi6 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @155
END

I_C_T BODHI 3 X3HelBODHI3 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @156
END  

I_C_T TIRDIR 2 X3HelTIRDIR2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @157
END 

I_C_T HABREGA 26 X3HelHabrega26
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @158
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END


CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN FFCUST06 X3Hel
@159
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @160
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN FFCUST02 X3Hel
@161
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @162
EXIT 

I_C_T VVAMN1 6 X3HelVVAMN1-6 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @163
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~
END 


I_C_T TANNER 21 X3HelTanner21
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @164
== TANNER @165
END 

I_C_T ANOMENJ 135 X3HelAnomenJ135
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @166
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END 

I_C_T ANOMENJ 176 X3HelAnomenJ176
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @167
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~ 
END 

I_C_T MARIA 14 X3HelMARIA-14
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @168
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~ 
END 

I_C_T MARIA 5 X3HelMARIA-5
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @169
END 

I_C_T LISSA 4 X3HelLISSA4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @170
END 

I_C_T DEGARD 6 X3HelDEGARD6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN @171
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@400416)~
END

I_C_T BSHOP01 2 X3HelBSHOP01-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @172
END

I_C_T LOUT 1 X3HelLOUT1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @173
END 

I_C_T BMUGG1 1 X3HelBMUGG1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @174
== BMUGG1 @175
DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@200206)~
END 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,2)
Global("X3Hel","LOCALS",0)~ THEN BERTRAND X3Hel
@176
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ @177
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,2)
Global("X3Hel","LOCALS",0)~ THEN CIVIL02 X3Hel
@178
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ @179
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @180
== X3HelJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @181
EXIT 


CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,2)
Global("X3Hel","LOCALS",0)~ THEN ARGRIM X3Hel
@182
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ @183
EXIT 

I_C_T SCSARLES 11 X3EmiSCSARLES11 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @184
END 

I_C_T TOLGER 5 TOLGERX3Hel5 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @185
END 

I_C_T RIFTM01 8 X3RebRIFTM018
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @186
END 

I_C_T SASSAR 29 X3EmiJSASSAR29
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @188
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@200203)~
END 

I_C_T SASSAR 30 X3EmiJSASSAR30
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @187
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200216)~
END 

I_C_T GAAL 20 X3HelGaal
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @189
END 

I_C_T TARNOR 3 X3HelTARNOR3 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @190
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@200206)~
== TARNOR @191
END 

I_C_T TARNOR 4 X3HelTARNOR4 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @192
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@200206)~
== TARNOR @193
END 

I_C_T KAYL2 14 X3EmiKAYL214
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @194
END 

CHAIN IF WEIGHT #-1 
~See("X3Hel")  // X3Hel
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Hel")  // X3Hel
RandomNum(2,1)
Global("Prophet4X3Hel","LOCALS",0)~ THEN PROPHET4 Helga
@195
DO ~SetGlobal("Prophet4X3Hel","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3HelJ @196
EXIT 

EXTEND_BOTTOM JANJ 123
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ X3HelJANJ123
END

CHAIN X3HelJ X3HelJANJ123
@197
EXTERN JANJ 124

EXTEND_BOTTOM ANOMENJ 232
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ X3HelAnomenJ232
END

CHAIN X3HelJ X3HelAnomenJ232
@198
EXTERN ANOMENJ 234


I_C_T RYLOCK 24 X3HelRYLOCK24 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @199
END 

I_C_T RENAL 47 X3HelRenal26 
== X3HelJ IF ~!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Hel")~ THEN @200
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@200203)~
END 

I_C_T RENAL 10 X3HelRenal10 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @201
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@200203)~
END   

I_C_T RENAL 26 X3HelRenal26 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @201
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@200203)~
END  


I_C_T HAEGAN 2 X3HelHAEGAN
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @202
== HAEGAN @203
END 


I_C_T COPGREET 6 X3HelCOPGREET 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @204
END 

I_C_T KORGANJ 46 X3HelKorganJ46 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @205
END

I_C_T OHHFAK 12 X3HelOHHFAK12 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @206
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @207
END 

I_C_T SCDUR 2 X3KalSCDUR2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @208
END 

I_C_T BEGGAR2 8  X3HelBeggar1-8 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @209
DO ~IncrementGlobal("X3HelApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@200213)~
END  

I_C_T RUFPAL2 2 X3HelRufPal2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @210
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@200203)~
END  

I_C_T RUFFIAN 8 X3HelRuffian8 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @211
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~
END  

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN BURCH2 X3Hel
@212
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ @213
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN WAYLANE X3Hel
@214
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ @215
== WAYLANE @216
== X3HelJ @217
EXIT 

I_C_T GAELAN 74 X3HelGaelan74 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @218
END  

I_C_T GAELAN 66 X3VieGaelan74 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @219
END 

I_C_T SEVPAT01 1 X3HelXEVPAT01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @220
== SEVPAT01 @221
END 

I_C_T SEVPAT01 2 X3HelXEVPAT02 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @222
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~
END 


I_C_T BRELM 4 X3HelBRELM 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")OR(2)InParty("X3Kal")BeenInParty("X3Kal")~ THEN @223
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @224
END  


/*Story/Essential Interjections*/  
//Celvan 
CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN CELVAN X3Hel
@225
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ @226
EXTERN CELVAN 1
//Madam Nin
EXTEND_BOTTOM MADAM 0
IF ~Name("X3Hel",LastTalkedToBy)~ EXTERN X3HelJ X3HelMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Hel",LastTalkedToBy)~ EXTERN X3HelJ X3HelMadam
END


CHAIN X3HelJ X3HelMadam 
@227
EXIT 
// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Hel",LastTalkedToBy)~ THEN SALVANAS X3HelSalvanas
@228
== X3HelJ @229
== SALVANAS @230
== X3HelJ @231
== SALVANAS @232
== X3HelJ @233
EXIT

//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Hel",LastTalkedToBy)~ EXTERN TRGYP02 X3Helg1
END

CHAIN TRGYP02 X3Helg1
@234
== X3HelJ @235
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3HelYOSHJ113
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @236
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel") Range("X3Hel",15)~ THEN
@237
END
++ @238 EXTERN X3HelJ spellhold.1
++ @239 EXTERN X3HelJ spellhold.1
++ @240 EXTERN X3HelJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3HelJ spellhold.1
@241
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @242 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @243
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @244 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @245
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3HelFirstSlayerChange1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")See("X3Hel")~ THEN @246
END

// Bodhi
I_C_T C6BODHI 0 X3HelC6Bodhi0 
== X3HelJ IF ~OR(2)!Global("X3VieRomanceActive","GLOBAL",2)!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Hel")~ THEN @247
END 

// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Hel") Global("X3HelTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 Hpl2
END

CHAIN PLAYER1 Hpl2
@248
DO ~SetGlobal("X3HelTreeOfLife","GLOBAL",1)~
END
++ @249 EXTERN X3HelJ pl2.2
++ @250 EXTERN X3HelJ pl2.1
++ @251 EXTERN X3HelJ pl2.1

CHAIN X3HelJ pl2.2 
@252
EXTERN X3HelJ pl2.1

CHAIN X3HelJ pl2.1
@253
END
COPY_TRANS PLAYER1 33 

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3HelIrenicusIsDead1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @254
END


// Hell

I_C_T PLAYER1 25 X3HelEnteringHell1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @255 
END

// Irenicus in hell

I_C_T HELLJON 7 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @256
END

I_C_T HELLJON 8 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @256
END

I_C_T HELLJON 9 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @256
END

I_C_T HELLJON 10 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @256
END

//Chapter 3 Slums Talk 

CHAIN IF ~Global("X3HelSlumTalk","LOCALS",2)~ THEN X3HelJ SlumTalk 
@257
DO ~IncrementGlobal("X3HelSlumTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @258 + ST.1 
++ @259 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + ST.2 
++ @260 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + ST.3
++ @261 + ST.X 

CHAIN X3HelJ ST.1 
@262
EXTERN X3HelJ ST.2

CHAIN X3HelJ ST.3 
@263
EXTERN X3HelJ ST.2

CHAIN X3HelJ ST.2
@264
= @265
END 
++ @266 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + ST.6
++ @267 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + ST.7
++ @268 + ST.5

CHAIN X3HelJ ST.5
@269
EXTERN X3HelJ ST.8 

CHAIN X3HelJ ST.6
@270
EXTERN X3HelJ ST.8 

CHAIN X3HelJ ST.7
@271
EXTERN X3HelJ ST.8  

CHAIN X3HelJ ST.8
@272
EXIT 

CHAIN X3HelJ ST.X 
@273
EXIT 

// Friendship Talk #1
CHAIN IF ~Global("X3HelTalk","LOCALS",2)~ THEN X3HelJ Talk1
@274
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @275 + T1.1
++ @276 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T1.1
++ @277 + T1.3

CHAIN X3HelJ T1.1 
@278
END 
++ @279 + T1.4 
++ @280 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T1.10 
++ @281 + T1.X

CHAIN X3HelJ T1.3 
@282
EXTERN X3HelJ T1.1 

CHAIN X3HelJ T1.4 
@283
END 
++ @284 + T1.5
++ @285 + T1.6 
++ @286 + T1.7 

CHAIN X3HelJ T1.7 
@287
END 
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ @288 + T1.8
+~Global("X3HelPartyBG1","GLOBAL",1)~+ @289 + T1.8
++ @290 + T1.X 
++ @291 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T1.9

CHAIN X3HelJ T1.8 
@292
EXIT 

CHAIN X3HelJ T1.5 
@293
EXIT 

CHAIN X3HelJ T1.6 
@294
EXIT 

CHAIN X3HelJ T1.9 
@295
EXIT 

CHAIN X3HelJ T1.X 
@296
EXIT 

CHAIN X3HelJ T1.10 
@297
END 
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ @288 + T1.8
+~Global("X3HelPartyBG1","GLOBAL",1)~+ @289 + T1.8
++ @281 + T1.X 
++ @291 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T1.9

// Friendship Talk #2

CHAIN IF ~Global("X3HelTalk","LOCALS",4)~ THEN X3HelJ Talk2
@298
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
+~!IsValidForPartyDialogue("X3Kal")~+ @299 + T2.1 
+~IsValidForPartyDialogue("X3Kal")~+ @299 + T2.3
++ @300 + T2.2 
++ @301 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T2.X

CHAIN X3HelJ T2.X
@302
EXIT 

CHAIN X3HelJ T2.1 
@303
EXTERN X3HelJ T2.4

CHAIN X3HelJ T2.3 
@304
== X3KalJ @305
== X3HelJ @306
EXTERN X3HelJ T2.4

CHAIN X3HelJ T2.2
@307
EXTERN X3HelJ T2.4

CHAIN X3HelJ T2.4 
@308
= @309
END 
++ @310 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~  + T2.5
++ @311 + T2.6
++ @312 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T2.X 

CHAIN X3HelJ T2.5 
@313
EXTERN X3HelJ T2.6 

CHAIN X3HelJ T2.6 
@314
== X3HelJ @315
END 
++ @316 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T2.7 
++ @317 + T2.8
++ @318 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T2.7 

CHAIN X3HelJ T2.7
@319
EXTERN X3HelJ T2.9

CHAIN X3HelJ T2.8 
@320
EXTERN X3HelJ T2.9 

CHAIN X3HelJ T2.9 
@321
EXIT 

// 3
CHAIN IF ~Global("X3HelTalk","LOCALS",6)~ THEN X3HelJ Talk3
@322
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @323  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T3.1 
++ @324  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T3.2 
++ @325 + T3.X 

CHAIN X3HelJ T3.X 
@326
DO ~RestParty()~
EXIT 

CHAIN X3HelJ T3.1 
@327
END 
+~Global("X3HelPartyBG1","GLOBAL",1)~+ @328 + T3.3
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ @329 + T3.4
++ @330 + T3.5 
++ @331 + T3.4

CHAIN X3HelJ T3.2 
@332
END 
+~Global("X3HelPartyBG1","GLOBAL",1)~+ @328 + T3.3
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ @329 + T3.4 
++ @330 + T3.5 
++ @331 + T3.4 

CHAIN X3HelJ T3.3 
@333
EXTERN X3HelJ T3.6 

CHAIN X3HelJ T3.4 
@334
EXTERN X3HelJ T3.6 

CHAIN X3HelJ T3.5 
@335
EXTERN X3HelJ T3.6 

CHAIN X3HelJ T3.6
@336
END 
++ @337 + T3.7
++ @338  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T3.9
++ @339  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T3.8


CHAIN X3HelJ T3.7 
@340
== X3HelJ @341
== X3HelJ @342
END 
++ @343 + T3.11 
++ @344  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T3.10 
++ @345  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T3.X 

CHAIN X3HelJ T3.8 
@346
EXTERN X3HelJ T3.7 

CHAIN X3HelJ T3.9
@347
EXTERN X3HelJ T3.7

CHAIN X3HelJ T3.10 
@348
EXTERN X3HelJ T3.12 

CHAIN X3HelJ T3.11 
@349
EXTERN X3HelJ T3.12 

CHAIN X3HelJ T3.12 
@350
DO ~RestParty()~
EXIT 

//Talk #4
CHAIN IF ~Global("X3HelTalk","LOCALS",8)~ THEN X3HelJ Talk4
@351
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @352 + T4.1 
++ @353 + T4.1 
++ @354 + T4.1
++ @355 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T4.X 

CHAIN X3HelJ T4.X 
@356
EXIT  

CHAIN X3HelJ T4.1 
@357
== X3HelJ @358
END 
++ @359 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.2
+~Global("X3HelPartyBG1","GLOBAL",1)~+ @360 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.2 
++ @361 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T4.3 
++ @362 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.4
++ @363 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T4.X

CHAIN X3HelJ T4.2 
~Berk, my youngest, he serves as a sentinel in Firehammer Hold Fortress. He's content there, as far as I know, and serves them well. I couldn't be more proud.~
~Helen, my oldest, is a world traveling adventurer now, having left the fortress a summer ago. Takes after her mum, though she was nay into the faith practices like I was. Had the fortune to fight side by side with her once.~
== X3HelJ @365
END 
++ @366 + T4.5
++ @367 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T4.6 
++ @368 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.7
++ @363 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T4.X

CHAIN X3HelJ T4.3 
@369
EXTERN X3HelJ T4.2 

CHAIN X3HelJ T4.4 
@370
EXTERN X3HelJ T4.2 

CHAIN X3HelJ T4.5
@371
EXTERN X3HelJ T4.8

CHAIN X3HelJ T4.6 
@372
EXTERN X3HelJ T4.8

CHAIN X3HelJ T4.7 
@373
EXTERN X3HelJ T4.8 

CHAIN X3HelJ T4.8 
@374
EXIT 

// Talk 5 
CHAIN IF ~Global("X3HelTalk","LOCALS",10)~ THEN X3HelJ Talk5
@375
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @376  + T5.1 
++ @377 + T5.2
++ @378 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.3
++ @379 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.X 
@380
EXIT 

CHAIN X3HelJ T5.1 
@381
EXTERN X3HelJ T5.4

CHAIN X3HelJ T5.2 
@382
EXTERN X3HelJ T5.4 

CHAIN X3HelJ T5.3 
@383
EXTERN X3HelJ T5.4 

CHAIN X3HelJ T5.4 
@384
== X3HelJ @385
== X3HelJ @386
END 
++ @387 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.5
++ @388 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T5.6
++ @389 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + T5.7
++ @390 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.5 
@391
END 
++ @392 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.8
++ @393 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T5.9
++ @394 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.10 
++ @395 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.6
@396
END 
++ @397 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T5.11 
++ @398 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.12 
++ @394 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.10 
++ @395 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.7 
@399
END 
++ @400 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.13 
++ @401 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.9
++ @402 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.10
++ @395 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.8 
@403
EXIT 

CHAIN X3HelJ T5.9 
@404
EXIT 

CHAIN X3HelJ T5.10 
@405
EXIT 

CHAIN X3HelJ T5.11 
@406
EXIT 

CHAIN X3HelJ T5.12 
@407
EXIT 

CHAIN X3HelJ T5.13
@408
EXIT 

//6 

CHAIN IF ~Global("X3HelTalk","LOCALS",12)~ THEN X3HelJ Talk6
@409
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
+~Global("X3HForfeit","GLOBAL",1)~+ @410 + T6.1 
++ @411 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T6.2 
++ @412 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T6.3 
++ @413 + T6.X

CHAIN X3HelJ T6.X 
@414
EXIT 

CHAIN X3HelJ T6.1 
@415
EXTERN X3HelJ T6.4

CHAIN X3HelJ T6.2 
@416
EXTERN X3HelJ T6.4 

CHAIN X3HelJ T6.3 
@417
EXTERN X3HelJ T6.4 

CHAIN X3HelJ T6.4 
@418
== X3HelJ @419
== X3HelJ @420
END 
++ @421 + T6.5 
++ @422 + T6.6
++ @423 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T6.7 
++ @424 + T6.8

CHAIN X3HelJ T6.6 
@425
EXTERN X3HelJ T6.5 

CHAIN X3HelJ T6.7 
@426
EXTERN X3HelJ T6.5

CHAIN X3HelJ T6.8 
@427
EXTERN X3HelJ T6.5

CHAIN X3HelJ T6.5 
@428
= @429
END 
++ @430 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T6.9
++ @431 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T6.10
++ @432 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T6.11 

CHAIN X3HelJ T6.9
@433
EXIT 

CHAIN X3HelJ T6.10 
@434
EXIT 

CHAIN X3HelJ T6.11 
@435
EXIT 
// Each of these has a different start, but they will all lead to the same blocks.
CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("AerieRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Aerie 
@436
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("AnomenRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Anomen
@441
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("JaheiraRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Jaheira 
@442
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("ViconiaRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Viconia 
@443 
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("RasaadRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Rasaad 
@444
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 


CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("NeeraRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Neera 
@445
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("DornRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Dorn 
@446
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("HexxatRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Hexxat
@447
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("C0SireneRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Sirene 
@448
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("L3PetsyRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Petsy 
@449
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("YvetteRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Yvette 
@450
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Emily 
@451
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Kale 
@452
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Recorder
@453
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Vienxay
@454
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @437 + 7.1 
++ @438 + 7.2 
++ @439 + 7.3
++ @440 + 7.X 
 

CHAIN X3HelJ 7.X
@455
DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~
EXIT 

CHAIN X3HelJ 7.1
@456
EXTERN X3HelJ 7.2

CHAIN X3HelJ 7.2 
@457
== X3HelJ @458
END 
++ @459 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 7.4
++ @460 + 7.5 
++ @461 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 7.6 
++ @462 + 7.7
++ @463 + 7.7

CHAIN X3HelJ 7.4
@464
EXTERN X3HelJ 7.9

CHAIN X3HelJ 7.6 
@465
EXTERN X3HelJ 7.9 

CHAIN X3HelJ 7.7
@466
EXTERN X3HelJ 7.9

CHAIN X3HelJ 7.9
@467
END 
++ @468 + 7.10 
++ @469 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 7.11 
++ @470 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 7.11

CHAIN X3HelJ 7.10 
@471
EXIT 

CHAIN X3HelJ 7.12 
@472
EXIT 

CHAIN X3Helj 7.11 
@473
EXIT 

CHAIN X3HelJ 7.5 
@474
EXTERN X3HelJ 7.9

CHAIN X3HelJ 7.3 
@475
EXTERN X3HelJ 7.2 

CHAIN IF ~Global("X3HelTalk","LOCALS",16)~ THEN X3HelJ Talk8 
@476
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)~
END 
++ @477 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 8.1 
++ @478 + 8.2 
++ @479 + 8.3 
++ @480 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + 8.X

CHAIN X3HelJ 8.X 
@481
EXIT 

CHAIN X3HelJ 8.3
@482
EXTERN X3HelJ 8.4 

CHAIN X3HelJ 8.2 
@483
EXTERN X3HelJ 8.4 

CHAIN X3HelJ 8.1
@484
EXTERN X3HelJ 8.4

CHAIN X3HelJ 8.4
@485
== X3HelJ @486
== X3HelJ @487
END
++ @488 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 8.5 
++ @489 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",4)~ + 8.6 
++ @490 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + 8.7 
++ @491 + 8.8

CHAIN X3HelJ 8.5 
@492
EXIT 

CHAIN X3HelJ 8.6
@493
EXTERN X3HelJ 8.5 

CHAIN X3HelJ 8.7 
@494
EXTERN X3HelJ 8.7

CHAIN X3HelJ 8.8 
@495
EXTERN X3HelJ 8.5

//Talk9

CHAIN IF ~Global("X3HelUTalk","LOCALS",2)~ THEN X3HelJ Talk9
@496
DO ~IncrementGlobal("X3HelUTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @497 + 9.1 
++ @498 + 9.2
++ @499 + 9.3 
++ @500 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 9.X

CHAIN X3HelJ 9.1 
@501
EXTERN X3HelJ 9.4 

CHAIN X3HelJ 9.X 
@502
EXIT 

CHAIN X3HelJ 9.2 
@503
EXTERN X3HelJ 9.4 

CHAIN X3HelJ 9.3 
@504
EXTERN X3HelJ 9.4 

CHAIN X3HelJ 9.4 
@505
== X3HelJ @506
END 
++ @507 + 9.5 
++ @508 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 9.6
++ @509 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 9.7

CHAIN X3HelJ 9.5 
@510
EXTERN X3HelJ 9.8

CHAIN X3HelJ 9.6 
@511
EXTERN X3HelJ 9.8

CHAIN X3HelJ 9.7
@512
EXTERN X3HelJ 9.8

CHAIN X3HelJ 9.8
@513
END 
++ @514 + 9.9 
++ @515 + 9.10
++ @516  + 9.11

CHAIN X3HelJ 9.9 
@517
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @518
== X3HelJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @519
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @520
EXTERN X3HelJ 9.12 

CHAIN X3HelJ 9.12
@521
EXIT 

CHAIN X3HelJ 9.10 
@522
EXTERN X3HelJ 9.12

CHAIN X3HelJ 9.11 
@523
== X3HelJ @524
EXIT 

//Post Underdark Departure
CHAIN IF ~Global("X3HelFTalk","LOCALS",2)~ THEN X3HelJ Talk10
@525
DO ~IncrementGlobal("X3HelFTalk","LOCALS",1)~
END 
++ @526 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 10.1 
++ @527 + 10.2 
++ @528 + 10.X 

CHAIN X3HelJ 10.X 
@529
EXIT 

CHAIN X3HelJ 10.1
@530
== X3HelJ @531
END 
++ @527 + 10.2 
++ @532 + 10.X 

CHAIN X3HelJ 10.2 
@533
== X3HelJ IF ~InParty("X3Vie")~ THEN @534
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @535
END 
+~Race(Player1,ELF)~+ @536 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 10.5
++ @537 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 10.4 
++ @538 + 10.3 
++ @539 + 10.X 

CHAIN X3HelJ 10.3 
@540
EXTERN X3HelJ 10.6 

CHAIN X3HelJ 10.6
@541
EXIT 

CHAIN X3HelJ 10.5 
@542
EXTERN X3HelJ 10.6

CHAIN X3HelJ 10.4 
@543
EXTERN X3HelJ 10.6 

APPEND X3HelJ 

// Break Approval
IF ~Global("X3Break","LOCALS",1)~ Break
SAY @544 
= @545
++ @546 + Break.1 
++ @547 + Break.2 
++ @548 + Break.8
END 

IF ~~ Break.1
SAY @549
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @550 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY @551
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY @552
++ @553 + Break.4
++ @554 + Break.5
++ @555 + Break.6 
END 

IF ~~ Break.4 
SAY @556
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @557
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @558
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3HelApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@200216)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @559
= @560
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 
// PID 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  @561
++ @562 + Question.PID 
++ @563 DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ @628 + FixString
++ @564 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  @565
++ @562 + Question.PID 
++ @563 DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ @628 + FixString
++ @564 EXIT 
END  

 
IF ~~ Question.PID
SAY @566
+~Global("X3PIDCON1","LOCALS",0)~+ @567 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON1","LOCALS",1)~+ @568 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ @569 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith 
+~Global("X3PIDCON3","LOCALS",0)~+ @570 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ @571 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @572
+~Global("X3PIDCON1","LOCALS",0)~+ @567 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON1","LOCALS",1)~+ @568 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ @569 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ @570 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ @573 EXIT 
END 

IF ~~ PID.Home 
SAY @574
= @575
= @576
++ @577 + PHome.1 
++ @578 + PHome.2
++ @579 + PHome.3 
END 

IF ~~ PHome.1 
SAY @580
= @581
= @582
++ @583 + PHome.4
++ @578 + PHome.2
++ @579 + PHome.3 
END 

IF ~~ PHome.2 
SAY @584
= @585
++ @579 + PHome.3
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PHome.3 
SAY @588
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PHome.4
SAY @589
++ @578 + PHome.2 
++ @579 + PHome.3
++ @586 + MoreQuestion.PID 
END 

IF ~~ PID.Family 
SAY @590
= @591
= @592
+~Global("X3PIDSON","LOCALS",0)~+ @593 DO ~SetGlobal("X3PIDSON","LOCALS",1)~ + PFamily.1
+~Global("X3PIDHUS","LOCALS",0)~+ @594 DO ~SetGlobal("X3PIDHUS","LOCALS",1)~ + PFamily.2
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PFamily.1 
SAY @595
= @596
+~Global("X3PIDHUS","LOCALS",0)~+ @594 DO ~SetGlobal("X3PIDHUS","LOCALS",1)~ + PFamily.2
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PFamily.2 
SAY @597
= @598
+~Global("X3PIDSON","LOCALS",0)~+ @593 DO ~SetGlobal("X3PIDSON","LOCALS",1)~ + PFamily.1
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PID.Faith 
SAY @599
= @600
= @601
= @602
++ @603 + PFaith.1
++ @604 + PFaith.2
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PFaith.1 
SAY @605
= @606
++ @604 + PFaith.2
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PFaith.2 
SAY @607
= @608
= @609
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PID.Age 
SAY @610
++ @611 + PID.Age1
++ @612  + PID.Age1
++ @613  + PID.Age1
++ @614 + MoreQuestion.PID 
END 

IF ~~ PID.Age1
SAY @615
++ @616 + PAge.1 
++ @617 + PAge.2 
++ @618 + PAge.2 
END 

IF ~~ PAge.1 
SAY @619
++ @620 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + PAge.3
++ @621 + PAge.4
++ @622 DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@200203)~ + PAge.5
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PAge.2 
SAY @623
++ @620 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + PAge.3
++ @621 + PAge.4
++ @622 DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@200203)~ + PAge.5
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PAge.3
SAY @624
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PAge.4 
SAY @625
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ PAge.5 
SAY @626
++ @586 + MoreQuestion.PID 
++ @587 EXIT 
END 

IF ~~ ForceRestTalk
SAY @627
IF ~~ EXIT 
END 

IF ~~ FixString 
SAY @629
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3HReset")~ EXIT 
END 

END 