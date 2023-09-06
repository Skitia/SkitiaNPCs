//Watcher's Keep

I_C_T GORAPP1 14 X3EmiGORAPP1-14
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @0
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END 


I_C_T GORAPP1 16 X3EmiGORAPP1-16
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@100116)~
END 



I_C_T GORDEMO 18 X3EmiGORDEMO 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T GORDEMO 1 X3EmiGORDEMO
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @3
END  


I_C_T GORCAR 15 X3EmiGORCAR 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @4
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @5
END 

I_C_T GORSUC01 7 X3EmiGORSUC01 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @6
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@100106)~
END 

I_C_T GORCAMB 0 X3EmiGORCAMB0
== GORCAMB IF ~IsValidForPartyDialogue("X3Emi") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @7
== X3Emi25J @8
== GORCAMB @9
END

I_C_T GORMAD1 39 X3EmiGormad1-39 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @10
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~
== GORMAD1 @11
END 

I_C_T GORMAD1 40 X3EmiGormad1-40 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @10
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~
== GORMAD1 @11
END 

I_C_T GORMAD1 41 X3EmiGormad1-41 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @12
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@100106)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @13
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@400406)~
== GORMAD1 @14
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Emi",LastTalkedToBy)~ EXTERN X3Emi25J Yackman
END

CHAIN X3Emi25J Yackman  
@15
EXTERN GORMAD1 11

I_C_T GORCHR 0 X3EmiGORCHR0
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @16
END

I_C_T GORODR1 53 X3HelGORODR1-53
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @17
END 

I_C_T GORODR1 44 X3EmiGORODR1-44
== X3Emi25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @18
END 

//Hexxat Conflict 
CHAIN IF ~Global("X3EmiHexxatConflict","LOCALS",1)~ THEN X3Emi25J DornConflict 
@19
== HEXXA25J @20
== X3Emi25J @21
END 
++ @22 + TrustH 
++ @23 + UnderstandH
++ @24 EXTERN HEXXA25J Go_Hexxat
++ @25 + Go_EmilyH

CHAIN X3Emi25J TrustH 
@26
EXTERN X3Emi25J DismissH

CHAIN X3Emi25J DismissH
@27
END 
++ @24 EXTERN HEXXA25J Go_Hexxat
++ @25 + Go_EmilyH

CHAIN X3Emi25J UnderstandH 
@28
EXTERN X3Emi25J DismissH

CHAIN HEXXA25J Go_Hexxat 
@29
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",0)SetGlobal("OHH_dornjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[1780.1145],0)~
EXIT 

CHAIN X3Emi25J Go_EmilyH 
@30
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[1570.1388],0)~
== X3Emi25J IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @31
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 
// Dorn Conflict 
CHAIN IF ~Global("X3EmiDornConflict","LOCALS",1)~ THEN X3Emi25J DornConflict 
@32
== Dorn25J @33
== X3Emi25J @34
END 
++ @35 + Trust 
++ @23 + Understand
++ @36 EXTERN Dorn25J Go_Dorn 
++ @25 + Go_Emily

CHAIN X3Emi25J Trust 
@37
EXTERN Dorn25J Dismiss

CHAIN Dorn25J Dismiss
@38
END 
++ @36 + Go_Dorn
++ @25 EXTERN X3Emi25J Go_Emily

CHAIN X3Emi25J Understand 
@28
EXTERN Dorn25J Dismiss

CHAIN Dorn25J Go_Dorn 
@39
DO ~SetGlobal("X3EmiDornConflict","LOCALS",0)SetGlobal("OHH_dornjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[2000.1225],0)~
EXIT 

CHAIN X3Emi25J Go_Emily 
@40
DO ~SetGlobal("X3EmiDornConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[1570.1388],0)~
== X3Emi25J IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @41
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 


CHAIN IF ~Global("X3miCraft","LOCALS",2)~ THEN X3Emi25J CraftingDone 
@42
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

// Quest-Based Interjects 
I_C_T AMTGEN01 0 X3milyAMTGEN01H
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiHeir","GLOBAL",1)~ THEN @43
== AMTGEN01 @44
END 

I_C_T AMTGEN01 0 X3milyAMTGEN01NH
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiHeir","GLOBAL",1)~ THEN @45
== AMTGEN01 @46
END 

//Pre-Saradush 

I_C_T SAREV25A 0 X3EmiSAREV25A
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN @47
END

I_C_T SAREV25A 10 X3EmiSAREV25A
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @48
END


//Saradush Interjects 

A_T_T SARPROVF 0 ~!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)~ DO 0

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3EmiRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J SARPROVF-Care
END

CHAIN X3Emi25J SARPROVF-Care 
@49
EXTERN SARPROVF 1


I_C_T SARKIS01 25 X3EmiSARKIS01-25
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @50
END

I_C_T SARBAR01 7 X3EmiSARBAR01-7
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @51
END 

I_C_T SARCNT01 14 X3EmiSARCNT01-14
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @52
DO ~LeaveParty()Enemy()~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @53
DO ~LeaveParty()Enemy()~
== SARCNT01 @54
END 

I_C_T SARTHF1 12 X3EmiSARTHF1
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @55
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@100106)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL_EVIL)~ THEN @56
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@500516)~
== SARTHF1 @57
END 

I_C_T ORPHAN1 1 X3EmiORPHAN1-1
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @58
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@100106)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @59
DO ~SetGlobal("X3RebAppChange","GLOBAL",-5)DisplayStringNoNameDlg(Player1,@400406)~
== ORPHAN1 @60
END

I_C_T ORPHAN2 3 X3EmiORPHAN2-3
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @61
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@100116)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @62
DO ~IncrementGlobal("X3RebAppChange","GLOBAL",5)DisplayStringNoNameDlg(Player1,@400416)~
== ORPHAN2 @63
END
//Player has to be evil for this, but still adding this in...
I_C_T SARTEM01 16 X3EmiSARTEM01-16
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @64
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@100106)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @65
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)DisplayStringNoNameDlg(Player1,@400406)~
== SARTEM01 @66
END

I_C_T SARBUL05 2 X3EmiSarbul05-2 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @67
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-5)DisplayStringNoNameDlg(Player1,@100106)~
END


I_C_T SARMEL01 7 X3EmiSARMEL01
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @68
END

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3EmiRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Emi") Gender(Player1,MALE)~  EXTERN X3Emi25J SarPro_No 
END 

CHAIN X3Emi25J SarPro_No 
@69
END 
++ @70 EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ @71 EXTERN X3Emi25J SarPro_Break 
++ @72 EXTERN X3Emi25J SarPro_Yes 

CHAIN X3Emi25J SarPro_Yes 
@73
EXTERN SARPRO01 3

CHAIN X3Emi25J SarPro_Break 
@74
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)SetGlobal("X3EmiAppChange","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@100109)~
EXTERN SARPRO01 12 

// Volo's obligatory interjection in Saradush.

EXTEND_BOTTOM SARVOLO 9
+ ~InParty("X3Emi")!Global("X3EmiRomanceActive","GLOBAL",2)~ + @75 + X3EmiVoloBio1
+ ~InParty("X3Emi")Global("X3EmiRomanceActive","GLOBAL",2)~ + @75 + X3EmiVoloBio2
END

CHAIN SARVOLO X3EmiVoloBio1
@76
END 
IF ~!IsValidForPartyDialog("X3Emi")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialog("X3Emi")~ EXTERN X3Emi25J X3EmiVoloBio


CHAIN SARVOLO X3EmiVoloBio2
@77
END 
IF ~!IsValidForPartyDialog("X3Emi")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialog("X3Emi")~ EXTERN X3Emi25J X3EmiVoloBio

CHAIN X3Emi25J X3EmiVoloBio
@78
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGKAR01 10 X3EmiHGKAR01-10
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @79
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@100109)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @80
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)DisplayStringNoNameDlg(Player1,@400409)~
== HGKAR01 @81
END

I_C_T YAGCON 5 X3EmiYAGCON-5
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @82
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@100103)~
END

// Amkethran and Beyond 

I_C_T BALTH 6 X3HelBalth6
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @83
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @84
END

I_C_T BALTH 20 X3VieBalth20
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @85
END

I_C_T AMMAYOR 5 X3EmiAMMAYOR-5
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @86
END

I_C_T AMMERC04 2 X3EmiAMMERC04
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @87
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-7)DisplayStringNoNameDlg(Player1,@100109)~
END

I_C_T AMASANA 3 X3RebAMASANA-3
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @88
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@100116)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @89
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@400416)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @90
== AMASANA @91
END

I_C_T AMCLER01 8 X3EmiAMCLER01-8
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Hel")~ THEN @92
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@100119)~ 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")~ THEN @93
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@500506)~ 
== AMCLER01 @94
END 

I_C_T MARLOWE 15 X3EmiMARLOWE15
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @95
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@100109)~ 
== MARLOWE @96
END 

I_C_T AMSMITH 16 X3EmiAMSMITH-16
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @97
END 

I_C_T MARLOWE 51 X3EmiMARLOWE-51
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @98
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~ 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @99
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@400419)~ 
== MARLOWE @100
END 

I_C_T MARLOWE 52 X3EmiMARLOWE-52 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @101
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@100109)~ 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @102
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@400409)~ 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")~ THEN @103
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@500516)~ 
== MARLOWE @104
END 

I_C_T BAZEYE01 22 X3EmiBAZEYE22
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @105
END 

I_C_T BAZPAT01 4 X3EmiBAZPAT01
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @106
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@100109)~ 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @107
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@400409)~ 
== BAZPAT01 @108
END 

I_C_T BAZDRA03 6 X3EmiBAZDRA03
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @109
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@100103)~ 
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @110
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~ 
== BAZDRA03 @111
END 


// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3EmiSolarFriend1
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @112
END

// romanced, Emily and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarPers","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarPers
END

CHAIN X3Emi25J X3EmiSolarPers
@113
= @114
END
++ @115 + FinalChoice.1
++ @116 + FinalChoice.2
++ @117 + FinalChoice.1

CHAIN X3Emi25J FinalChoice.1 
@118
= @119
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Emi25J FinalChoice.3
IF ~!PartyHasItem("X3RingE")Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.6

CHAIN X3Emi25J FinalChoice.3
@120
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.4
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.6

CHAIN X3Emi25J FinalChoice.4
@121
EXTERN X3Emi25J FinalChoice.5 

CHAIN X3Emi25J FinalChoice.5
@122
END
COPY_TRANS FINSOL01 27

CHAIN X3Emi25J FinalChoice.6
@123
END
COPY_TRANS FINSOL01 27

CHAIN X3Emi25J FinalChoice.2 
@124
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Emi25J FinalChoice.3
IF ~!PartyHasItem("X3RingE")Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.5




// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarLeave","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarLeave","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarLeave","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarLeave
END

CHAIN X3Emi25J X3EmiSolarLeave
@125
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarStay","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarStay
END

CHAIN X3Emi25J X3EmiSolarStay
@126
END
++ @127 EXTERN X3Emi25J X3EmiSolarStay1.1
++ @128 EXTERN X3Emi25J X3EmiSolarStay1.1
++ @129 EXTERN X3Emi25J X3EmiSolarStay1.1

CHAIN X3Emi25J X3EmiSolarStay1.1
@130
END
IF ~PartyHasItem("X3RingE")~ EXTERN X3Emi25J StayChoice.1
IF ~!PartyHasItem("X3RingE")Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J StayChoice.2
IF ~!PartyHasItem("X3RingE")!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J StayChoice.3

CHAIN X3Emi25J StayChoice.1 
@131
END 
COPY_TRANS FINSOL01 32

CHAIN X3Emi25J StayChoice.2
@132
END 
COPY_TRANS FINSOL01 32

CHAIN X3Emi25J StayChoice.3
@133
END 
COPY_TRANS FINSOL01 32

//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25J engagement 
@134
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @135 + engagement_yes 
++ @136 + engagement_yes 
++ @137 + engagement_doubts

CHAIN X3Emi25J engagement_yes 
@138
EXTERN X3Emi25J engagement_yes2 

CHAIN X3Emi25J engagement_doubts
@139
EXTERN X3Emi25J engagement_yes2 

CHAIN X3Emi25J engagement_yes2 
@140
DO ~TransformItem("X3ERING","X3RINGE")~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @141
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @142
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")~ THEN @650
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25J engagement_auto_fail 
@143
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @144 + eaf.1 
++ @145 + eaf.2
++ @146 + eaf.4

CHAIN X3Emi25J eaf.1 
@147
EXTERN X3Emi25J eaf.3 

CHAIN X3Emi25J eaf.2 
@148
EXTERN X3Emi25J eaf.3

CHAIN X3Emi25J eaf.4 
@149
EXTERN X3Emi25J eaf.3

CHAIN X3Emi25J eaf.3
@150
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN @151
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN @152
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN @153
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 


// Friendship Talk1 
CHAIN IF ~Global("X3EmiToBTalk","LOCALS",2)~ THEN X3Emi25J FriendshipTalk1 
@154
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiToBTalk","LOCALS",1)~
END 
++ @155 + FT.2
++ @156 + FT.1 
++ @157 + FT.1 

CHAIN X3Emi25J FT.1
@158
EXTERN X3Emi25J FT.3 

CHAIN X3Emi25J FT.2 
@159
EXTERN X3Emi25J FT.3 

CHAIN X3Emi25J FT.3
@160
END 
++ @161 + FT.5
++ @162 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT.5
++ @163 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + FT.6

CHAIN X3Emi25J FT.5
@164
EXTERN X3Emi25J FT.7

CHAIN X3Emi25J FT.6
@165
EXTERN X3Emi25J FT.7

CHAIN X3Emi25J FT.7
@166
END 
++ @167 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT.8
++ @168 + FT.9
++ @169 + FT.10

CHAIN X3Emi25J FT.10
@170
EXIT 

CHAIN X3Emi25J FT.9
@171
EXIT 

CHAIN X3Emi25J FT.8
@172
EXIT 

// Friendship Talk2 
CHAIN IF ~Global("X3EmiToBTalk","LOCALS",4)~ THEN X3Emi25J FriendshipTalk2 
@173
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiToBTalk","LOCALS",1)~
END 
++ @174 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT2.1 
++ @175 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + FT2.2 
++ @176 + FT2.3

CHAIN X3Emi25J FT2.1 
@177
EXTERN X3Emi25J FT2.3 

CHAIN X3Emi25J FT2.2 
@178
EXTERN X3Emi25J FT2.3 

CHAIN X3Emi25J FT2.3
@179
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FT2.Heir 
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FT2.NotHeir 

CHAIN X3Emi25J FT2.Heir 
@180
END 
++ @181 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT2.7
++ @182 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + FT2.4
++ @183 + FT2.5

CHAIN X3Emi25J FT2.NotHeir 
@184
END 
++ @181 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT2.7
++ @182 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + FT2.4
++ @183 + FT2.5

CHAIN X3Emi25J FT2.7
@185
EXTERN X3Emi25J FT2.6

CHAIN X3Emi25J FT2.4
@186
EXTERN X3Emi25J FT2.6

CHAIN X3Emi25J FT2.5
@187
EXTERN X3Emi25J FT2.6

CHAIN X3Emi25J FT2.6
@188
EXIT 

//Friendship Talk #3

CHAIN IF ~Global("X3EmiToBTalk","LOCALS",6)~ THEN X3Emi25J FriendshipTalk3
@189
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiToBTalk","LOCALS",1)~
END 
++ @190 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T3.1
++ @191 + T3.2
++ @192  + T3.2
++ @193 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T3.X 

CHAIN X3Emi25J T3.1
@194
EXTERN X3Emi25J T3.2 

CHAIN X3Emi25J T3.2 
@195
= @196
= @197
END 
++ @198 + T3.3 
++ @199 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T3.3 
++ @200 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T3.4

CHAIN X3Emi25J T3.3 
@201
EXTERN X3Emi25J T3.5 

CHAIN X3Emi25J T3.4 
@202
EXTERN X3Emi25J T3.5 

CHAIN X3Emi25J T3.5
@203
END 
++ @204 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T3.6
++ @205 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T3.7
++ @206 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T3.8

CHAIN X3Emi25J T3.6
@207
EXTERN X3Emi25J T3.9

CHAIN X3Emi25J T3.7
@208
EXTERN X3Emi25J T3.9

CHAIN X3Emi25J T3.8
@209
EXTERN X3Emi25J T3.9

CHAIN X3Emi25J T3.9
@210
EXIT 


CHAIN X3Emi25J T3.X 
@211
EXIT 

// Romance Talks 
CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",2)~ THEN X3Emi25J LoveTalk1 
@212
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ @213 + 1.2
++ @214 + 1.1 
++ @215 + 1.X 

CHAIN X3Emi25J 1.X 
@216
EXIT 

CHAIN X3Emi25J 1.1 
@217
EXTERN X3Emi25J 1.2

CHAIN X3Emi25J 1.2
@218
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 1.Heir 
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 1.NotHeir 

CHAIN X3Emi25J 1.Heir 
@219
END 
++ @220 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.Heir1
++ @221 + 1.4
++ @222 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.4 

CHAIN X3Emi25J 1.NotHeir 
@223
END 
++ @220 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.NotHeir1
++ @224  + 1.NotHeir2
++ @222 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.4

CHAIN X3Emi25J 1.NotHeir1 
@225
EXTERN X3Emi25J 1.3

CHAIN X3Emi25J 1.Heir1 
@226
EXTERN X3Emi25J 1.3

CHAIN X3Emi25J 1.NotHeir2 
@227
= @228
END 
++ @229 + 1.5
++ @230 + 1.6 
++ @231 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 1.7

CHAIN X3Emi25J 1.4
@232
= @233
END 
++ @229 + 1.5
++ @230 + 1.6 
++ @234 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 1.7

CHAIN X3Emi25J 1.3
@235
END 
++ @229 + 1.5
++ @230 + 1.6 
++ @234 + 1.7

CHAIN X3Emi25J 1.5 
@236
EXIT 

CHAIN X3Emi25J 1.6
@237
EXIT 

CHAIN X3Emi25J 1.7
@238
EXIT 

//Emily Wraith Talk 
// Emily's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3EmiRomanceActive","GLOBAL",2) InParty("X3Emi") See("X3Emi")~ EXTERN HGWRA01 X3EmiWraith1
END

CHAIN HGWRA01 X3EmiWraith1
@239
DO ~SetGlobal("X3LovedOne","GLOBAL",1)~
== X3Emi25J @240
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3EW1")~ EXIT
END

BEGIN X3ELOVE 

CHAIN 
IF ~Global("X3EmiWraithSpirit1","GLOBAL",0)~ THEN X3ELOVE X3EmiWraithSpirit1
@241
DO ~SetGlobal("X3EmiWraithSpirit1","GLOBAL",1)~
== X3Emi25J @242
== X3ELOVE @243
== X3Emi25J @244
== X3ELOVE @245
== X3Emi25J @246
== X3ELOVE @247
== X3Emi25J @248
== X3ELOVE @249
== X3Emi25J @250 
END 
++ @251 EXTERN HGWRA01 25
++ @252 EXTERN HGWRA01 25
++ @253 EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + @254 EXTERN HGWRA01 25 


CHAIN IF ~Global("X3EmiWraithTalk","LOCALS",1)~ THEN X3Emi25J LoveTalkWraith
@255
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiWraithTalk","LOCALS",2)~
END 
++ @256 + W.1 
++ @257 + W.1 
++ @258 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + W.2

CHAIN X3Emi25J W.1
@259
END 
++ @260 + W.2 
++ @261 + W.2
++ @262 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + W.3

CHAIN X3Emi25J W.2
@263
= @264
END 
++ @265 + W.5
++ @266 + W.5 
++ @267 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + W.6

CHAIN X3Emi25J W.3
@268
END 
++ @269 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + W.4 
++ @270  + W.X 
++ @271 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + W.5

CHAIN X3Emi25J W.4 
@272
EXTERN X3Emi25J W.5 

CHAIN X3Emi25J W.5 
@273
EXTERN X3Emi25J W.7

CHAIN X3Emi25J W.7
@274
EXIT 

CHAIN X3Emi25J W.6
@275
EXTERN X3Emi25J W.7

CHAIN X3Emi25J W.X  
@276
DO ~EscapeArea()~
EXIT 

// Saradush at rest. 
CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",4)~ THEN X3Emi25J LoveTalk2 
@277
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ @278 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 2.1 
++ @279 + 2.1
++ @280 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.1
++ @281 + 2.1 

CHAIN X3Emi25J 2.1 
@282
END 
++ @283 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 2.2 
++ @284 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.4
++ @285 + 2.2 

CHAIN X3Emi25J 2.2 
@286
END 
++ @287 + 2.3 
++ @288 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.4
++ @289 + 2.3 

CHAIN X3Emi25J 2.3
@290
EXTERN X3Emi25J 2.5

CHAIN X3Emi25J 2.4
@291
= @292
EXTERN X3Emi25J 2.5

CHAIN X3Emi25J 2.5
@293
= @294
END 
++ @295 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.6
++ @296 + 2.6 
++ @297 + 2.6 

CHAIN X3Emi25J 2.6
@298
= @299
END 
++ @300 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.7
++ @301 + 2.8
++ @302 + 2.9
 
CHAIN X3Emi25J 2.8
@303
EXTERN X3Emi25J 2.10

CHAIN X3Emi25J 2.7
@304
EXTERN X3Emi25J 2.10

CHAIN X3Emi25J 2.9 
@305
EXTERN X3Emi25J 2.10

CHAIN X3Emi25J 2.10 
@306
= @307
DO ~RestParty()~
EXIT 
// Wake Up Post LoveTalk#2
CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",6)~ THEN X3Emi25J LoveTalk3 
@308
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ @309 + 3.1
++ @310 + 3.2 
++ @311 + 3.5

CHAIN X3Emi25J 3.1 
@312
EXTERN X3Emi25J 3.3

CHAIN X3Emi25J 3.2 
@313
EXTERN X3Emi25J 3.3 

CHAIN X3Emi25J 3.3 
@314
= @315
END 
++ @316 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 3.4 
++ @317 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 3.6 
++ @318 + 3.5

CHAIN X3Emi25J 3.4 
@319
EXTERN X3Emi25J 3.5 

CHAIN X3Emi25J 3.6 
@320
EXTERN X3Emi25J 3.5 

CHAIN X3Emi25J 3.5
@321
EXIT 
//Crown 
CHAIN IF ~Global("X3EmiToBLoveCrown","LOCALS",2)~ THEN X3Emi25J LoveTalk4 
@322 
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveCrown","LOCALS",1)~
END 
++ @323 + 4.1
++ @324 + 4.1
++ @325  + 4.1 

CHAIN X3Emi25J 4.1 
@326
= @327
= @328
END 
++ @329 + 4.2 
++ @330  + 4.4
++ @331 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 4.5

CHAIN X3Emi25J 4.2 
@332 
EXTERN X3Emi25J 4.3 

CHAIN X3Emi25J 4.4 
@333
EXTERN X3Emi25J 4.3

CHAIN X3Emi25J 4.5
@334
EXTERN X3Emi25J 4.3

CHAIN X3Emi25J 4.3 
@335
END 
++ @336 + 4.7
++ @337 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 4.8
++ @338 + 4.6

CHAIN X3Emi25J 4.7
@339
EXTERN X3Emi25J 4.8

CHAIN X3Emi25J 4.8
@340
= @341
EXIT 

CHAIN X3Emi25J 4.6
@342
EXTERN X3Emi25J 4.8

// Love Talk #5

CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",8)~ THEN X3Emi25J LoveTalk5 
@343
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END  
++ @344 + 5.2 
++ @345 + 5.1
++ @346 + 5.X 

CHAIN X3Emi25J 5.X 
@347
EXIT 

CHAIN X3Emi25J 5.1 
@348
EXTERN X3Emi25J 5.2 

CHAIN X3Emi25J 5.2
@349
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 5.3 
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 5.4

CHAIN X3Emi25J 5.3 
@350
END 
++ @351 + 5.5H 
++ @352 + 5.6H
++  @353 + 5.7H 

CHAIN X3Emi25J 5.4 
@354
END 
++ @355 + 5.8
++ @352 + 5.6
++ @353 + 5.7

CHAIN X3Emi25J 5.5H 
@356
EXTERN X3Emi25J 5.7H

CHAIN X3Emi25J 5.7H
@357
END 
++ @358 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 5.12
++ @359 + 5.9
++ @360 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 5.10
++ @361 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 5.10

CHAIN X3Emi25J 5.6H
@362
EXTERN X3Emi25J 5.7H


CHAIN X3Emi25J 5.8 
@363
EXTERN X3Emi25J 5.7

CHAIN X3Emi25J 5.6
@364
EXTERN X3Emi25J 5.7

CHAIN X3Emi25J 5.7
@365
END 
++ @358 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 5.12
++ @359 + 5.9
++ @360 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 5.10
++ @361 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 5.10

CHAIN X3Emi25J 5.12
@366
EXTERN X3Emi25J 5.11 

CHAIN X3Emi25J 5.9
@367
EXTERN X3Emi25J 5.11

CHAIN X3Emi25J 5.10 
@368
EXTERN X3Emi25J 5.11 

CHAIN X3Emi25J 5.11 
@369
EXIT 

// Romance Talk 6.

CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",10)~ THEN X3Emi25J LoveTalk6 
@370
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ @371 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 6.1 
++ @372 + 6.1 
++ @373 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 6.2

CHAIN X3Emi25J 6.1
@374
EXTERN X3Emi25J 6.5

CHAIN X3Emi25J 6.2 
@375
EXTERN X3Emi25J 6.5

CHAIN X3Emi25J 6.5
@376
END 
++ @377 + 6.3 
++ @378 + 6.3
++ @379 + 6.4

CHAIN X3Emi25J 6.3 
@380
= @381
EXIT 

CHAIN X3Emi25J 6.4
@382
EXIT 

// Romance Talk 7

CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",12)~ THEN X3Emi25J LoveTalk7
@383
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ @384 + 7.1 
++ @385 + 7.2 
++ @386 + 7.3

CHAIN X3Emi25J 7.1
@387
EXTERN X3Emi25J 7.4

CHAIN X3Emi25J 7.2 
@388
EXTERN X3Emi25J 7.4

CHAIN X3Emi25J 7.3
@389
EXTERN X3Emi25J 7.4

CHAIN X3Emi25J 7.4
@390
= @391
END 
++ @392 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 7.5 
++ @393 + 7.6
++ @394 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 7.7

CHAIN X3Emi25J 7.6 
@395
EXTERN X3Emi25J 7.8

CHAIN X3Emi25J 7.7
@396
EXTERN X3Emi25J 7.8

CHAIN X3Emi25J 7.5
@397
EXTERN X3Emi25J 7.8

CHAIN X3Emi25J 7.8
@398
= @399
END 
++ @400 + 7.9
++ @401 + 7.10 
++ @402 + 7.11 
++ @403 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 7.13 

CHAIN X3Emi25J 7.9
@404
EXTERN X3Emi25J 7.12 

CHAIN X3Emi25J 7.10
@405
EXTERN X3Emi25J 7.12 

CHAIN X3Emi25J 7.11 
@406
EXTERN X3Emi25J 7.12

CHAIN X3Emi25J 7.13 
@407
EXTERN X3Emi25J 7.12

CHAIN X3Emi25J 7.12 
@408
EXIT 


//New Initiated Flirts: Romance Active = 2
CHAIN IF ~Global("X3EmiFlirt","GLOBAL",1) Global("X3EmiRomanceActive","GLOBAL",1)~ THEN X3Emi25J flirt1
@1604
END 
 IF ~~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.1
IF ~RandomNum(20,1)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.2
IF ~RandomNum(20,2)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.3
IF ~RandomNum(20,3)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.4
IF ~RandomNum(20,4)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.5
IF ~RandomNum(20,5) HPPercentLT("X3Emi",50) ~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + injured2A
IF ~RandomNum(20,6)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.6
IF ~RandomNum(20,7)Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.7
IF ~RandomNum(20,8)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.8
IF ~RandomNum(20,9) AreaType(DUNGEON)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + dungeon2
IF ~RandomNum(20,10)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.9
IF ~RandomNum(20,11)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.10
IF ~RandomNum(20,12)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.11
IF ~RandomNum(20,13)Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.12
IF ~RandomNum(20,14)Global("X3EmiPartyBG1","GLOBAL",1)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.13
IF ~RandomNum(20,15) ReputationGT(Player1,16)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + rep2
IF ~RandomNum(20,16) HPPercentLT(Player1,75)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + injured2B
IF ~RandomNum(20,17)CheckStatGT(Player1,16,INT)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + highint1
IF ~RandomNum(20,18)OR(2)
AreaCheck("AR5501")
AreaCheck("AR5003")~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.15
IF ~RandomNum(20,19) OR(2)TimeOfDay(NIGHT)TimeOfDay(DUSK)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + night2
IF ~RandomNum(20,20)~ DO ~SetGlobal("X3EmiStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3EmiFlirtTimer","GLOBAL",2700)~ + initiate2.14

CHAIN X3Emi25J initiate2.1 
@1688
EXIT 

CHAIN X3Emi25J initiate2.2
@1689
EXIT 

CHAIN X3Emi25J initiate2.3
@1690
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1691
EXIT 

CHAIN X3Emi25J initiate2.4
@1692
EXIT 

CHAIN X3Emi25J initiate2.5
@1693
EXIT 

CHAIN X3Emi25J injured2A 
@1701
EXIT 

CHAIN X3Emi25J initiate2.7
@1702
EXIT 

CHAIN X3Emi25J initiate2.8
@1703
EXIT 

CHAIN X3Emi25J dungeon2
@1704
EXIT 

CHAIN X3Emi25J initiate2.9
@1705
END 
++ @1706 + initiate2.9A
++ @1707 + initiate2.9B
++ @1708 + initiate2.9C

CHAIN X3Emi25J initiate2.9A
@1709
END 
IF ~!NumInPartyGT(2)~ EXTERN X3Emi25J initiate2.9E
IF ~NumInPartyGT(2)~ EXTERN X3Emi25J initiate2.9F

CHAIN X3Emi25J initiate2.9B 
@1710
EXTERN X3Emi25J initiate2.9D

CHAIN X3Emi25J initiate2.9C 
@1711
EXTERN X3Emi25J initiate2.9D

CHAIN X3Emi25J initiate2.9D
@1712
END 
IF ~!NumInPartyGT(2)~ EXTERN X3Emi25J initiate2.9E
IF ~NumInPartyGT(2)~ EXTERN X3Emi25J initiate2.9F

CHAIN X3Emi25J initiate2.9E 
@1713
EXIT

CHAIN X3Emi25J initiate2.9F 
@1714
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1715
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1716
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1717
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1718
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @1719
EXTERN X3Emi25J initiate2.9E

CHAIN X3Emi25J initiate2.6
@1694
= @1695
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1696
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1697
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1698
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1699
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")~ THEN @1700
EXIT 

CHAIN X3Emi25J initiate2.10
@1720
= @1721
EXIT 

CHAIN X3Emi25J initiate2.11
@1722
EXIT 

CHAIN X3Emi25J initiate2.12
@1723
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1724
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1725
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @1726
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1727
== X3IsaJ IF ~IsValidForPartyDialogue("X3Isa")IsValidForPartyDialogue("X3Vie")~ THEN @1728
== X3Emi25J IF ~OR(4)IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ THEN @1729
EXIT 

CHAIN X3Emi25J initiate2.13
@1730
EXIT 

CHAIN X3Emi25J rep2 
@1731
EXIT 

CHAIN X3Emi25J injured2B 
@1732
EXIT 

CHAIN X3Emi25J highint1 
@1733 
EXIT 

CHAIN X3Emi25J initiate2.14
@1736
EXIT 

CHAIN X3Emi25J initiate2.15
@1734 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1735
EXIT 

CHAIN X3Emi25J night2 
@1737
EXIT 

// Group Kiss from PID 
CHAIN X3Emi25J Group.Kiss 
@409
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @410
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @411
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @412
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @413
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")~ THEN @649
== X3Emi25J @414
== X3Emi25J @415
EXIT 

APPEND X3Emi25J 


// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @416
= @417
= @418
++ @419 + LBreak.1
++ @420 + LBreak.2 
++ @421 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @422
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @423
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @424
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @425
++ @426 + LBreak.5 
++ @427 + LBreak.6 
++ @428 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @429
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @430
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @431
IF ~~ EXIT 
END 

// Break Approval
IF ~Global("X3Break","LOCALS",1)~ Break
SAY @432  
= @433
++ @434 + Break.1 
++ @435 + Break.1 
++ @436 + Break.2
END 

IF ~~ Break.1
SAY @437
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @438 
IF ~~ + Break.3 
END


IF ~~ Break.3 
SAY @439
++ @440 + Break.4
++ @441 + Break.5
++ @442 + Break.6 
END 

IF ~~ Break.4 
SAY @443
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @444
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @445
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3EmiApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@100116)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @446
= @447
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY @448  
++ @449 + Question.PID 
+~NumInPartyGT(2)~+ @450 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @450 + PersonalAlone.PID 
// Requires the PC to have talked to Emily before about crafting. 
+~Global("X3miCraft","LOCALS",1)~+ @451 + Craft.PID
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1854 + Flirts2
++ @647 + FixString
++ @452 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY @453 
++ @449 + Question.PID 
+~NumInPartyGT(2)~+ @450 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @450 + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ @451 + Craft.PID
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1854 + Flirts2
++ @647 + FixString
++ @452 EXIT 
END  

IF ~~ main.PID 
SAY @454
++ @449 + Question.PID 
+~NumInPartyGT(2)~+ @450 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @450 + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ @451 + Craft.PID
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @1854 + Flirts2
++ @647 + FixString
++ @452 EXIT 
END  

IF ~~ Question.PID
SAY @455
+~PartyHasItem("X3ERing")Global("X3EmiRomanceActive","GLOBAL",2)~+ @456 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~AreaCheck("AR5000")Global("X3AreaComment1","LOCALS",0)~+ @457 DO ~SetGlobal("X3AreaComment1","LOCALS",1)~ + Saradush
+~AreaCheck("AR5500")Global("X3AreaComment2","LOCALS",0)~+ @458 DO ~SetGlobal("X3AreaComment2","LOCALS",1)~ + Amkethran
+~Global("X3PIDCON1","LOCALS",0)~+ @459 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ @460 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ @461 DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ @462 DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ @463 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)~+ @464 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)~+ @465 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ @466 DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ @467 + main.PID 
++ @468 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @469
+~PartyHasItem("X3ERing")Global("X3EmiRomanceActive","GLOBAL",2)~+ @456 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ @459 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ @460 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ @461 DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ @462 DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ @463 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)~+ @464 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)~+ @465 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ @466 DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ @467 + main.PID 
++ @470 EXIT 
END 

IF ~~ Saradush 
SAY @471
= @472
= @473
++ @467 + main.PID 
++ @470 EXIT 
END 

IF ~~ Amkethran 
SAY @474
= @475
++ @467 + main.PID 
++ @470 EXIT 
END 

IF ~~ PID.Tethyr
SAY @476
= @477
= @478
++ @479 + PTethyr.1
++ @480 + PTethyr.2 
++ @481 + PTethyr.3
++ @467 + main.PID 
END 

IF ~~ PTethyr.1
SAY @482
= @483
= @484
++ @485 + PTethyr.3 
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PTethyr.2 
SAY @487
++ @488 + PTethyr.1 
++ @485 + PTethyr.3 
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PTethyr.3
SAY @489
= @490
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PID.Estate 
SAY @491
= @492
= @493
++ @494 + PEstate.1
++ @495 + PEstate.2 
++ @496 + PEstate.3
END 



IF ~~ PEstate.1
SAY @497
= @498
++ @499 + PEstate.2 
++ @500 + PEstate.3 
END 

IF ~~ PEstate.2 
SAY @501
= @502
= @503
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PEstate.3 
SAY @504
= @505
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PID.Family 
SAY @506
= @507
= @508
++ @509 + PFamily.1 
++ @510 + PFamily.2 
++ @511 + PFamily.3
++ @512 + PFamily.4
END 

IF ~~ PFamily.1 
SAY @513
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY @514
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY @515
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.4
SAY @516
= @517
= @518
++ @519 + PFamily.5 
++ @520 + PFamily.6
++ @521 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.7
END 

IF ~~ PFamily.5
SAY @522
IF ~~ + PFamily.8
END 

IF ~~ PFamily.6
SAY @523
IF ~~ + PFamily.8
END 

IF ~~ PFamily.7
SAY @524
IF ~~ + PFamily.8
END 

IF ~~ PFamily.8
SAY @525
= @526
= @527
++ @528 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.9
++ @529 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + PFamily.10
++ @530 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.11
END 

IF ~~ PFamily.9
SAY @531
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PFamily.10
SAY @532
++ @467 + main.PID 
++ @486 EXIT 
END  

IF ~~ PFamily.11
SAY @533
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PID.Mother 
SAY @534
= @535
= @536
++ @537 + PMother.1 
++ @538 + PMother.2 
++ @539 + PMother.2
END



IF ~~ PMother.1  
SAY @540
= @541
= @542
++ @543 + PMother.3 
++ @544 + PMother.4 
++ @545 + PMother.4
END 

IF ~~ PMother.2
SAY @546
IF ~~ + PMother.1
END 

IF ~~ PMother.3 
SAY @547
IF ~~ + PMother.5
END 

IF ~~ PMother.4 
SAY @548
= @549
= @550
++ @551 + PMother.5
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PMother.5 
SAY @552
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PID.Archery 
SAY @553
= @554
= @555
++ @556 + PID.Archery1 
++ @557 + PID.Archery2
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PID.Archery1 
SAY @558
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PID.Archery2 
SAY @559
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ Heir.AftermathWon
SAY @560
= @561
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ Heir.AftermathLost
SAY @562
= @563
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PID.Crafting
SAY @564
= @565
= @566
++ @567 + Craft.PID 
++ @467 + main.PID 
++ @486 EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY @568
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @569 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @569 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @570 + Group.Kiss
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @571 + BreakUp
++ @572 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @573
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @569 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @569 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @570 + Alone.Kiss
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @571 + BreakUp
++ @572 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @574
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @575
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @576
IF ~~ EXIT 
END 

IF ~~ BreakUp
SAY @577
++ @578 + BU.1 
++ @579 + BU.2 
++ @580 + BU.3 
END 

IF ~~ BU.1 
SAY @581
= @582
IF ~~ + BU.5
END 

IF ~~ BU.5
SAY @583
++ @584 + BU.4 
++ @585 + BU.4
++ @586 + BU.3 
END 

IF ~~ BU.2 
SAY @587
= @588
IF ~~ + BU.5
END 

IF ~~ BU.3 
SAY @589
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiApp","GLOBAL",-10)
DisplayStringNoNameDlg(Player1,@100109)~ EXIT 
END 

IF ~~ BU.4 
SAY @590
IF ~~ EXIT 
END 


IF ~~ Craft.PID 
SAY @591
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ @592 DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ @593 + RipperBow
+~PartyHasItem("BOW10")~+ @594 + HeartseekerBow
+~PartyHasItem("BOW11")~+ @595 + StrongArmBow
+~PartyHasItem("BOW12")~+ @596 + ElvenCourtBow
+~PartyHasItem("BOW13")~+ @597 + ManaBow
+~PartyHasItem("BOW14")~+ @598 + TuiganBow
+~PartyHasItem("BOW15")~+ @599 + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ @600 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ @600 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ @601 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ @601 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("XBOW03")~+ @602 + TheGuideXBow
+~PartyHasItem("XBOW06")~+ @603 + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ @604 + GiantHairXBow
+~PartyHasItem("XBOW10")~+ @605 + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ @606 DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ @607 + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ @608 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ @608 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ @467 + main.PID 
++ @609 EXIT 
END 

IF ~~ Craft.PID2 
SAY @610
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ @592 DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ @593 + RipperBow
+~PartyHasItem("BOW10")~+ @594 + HeartseekerBow
+~PartyHasItem("BOW11")~+ @595 + StrongArmBow
+~PartyHasItem("BOW12")~+ @596 + ElvenCourtBow
+~PartyHasItem("BOW13")~+ @597 + ManaBow
+~PartyHasItem("BOW14")~+ @598 + TuiganBow
+~PartyHasItem("BOW15")~+ @599 + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ @600 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ @600 DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ @601 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ @601 DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow4","LOCALS",0)~+ @645 DO ~SetGlobal("UnqualifiedBow4","LOCALS",1)~ + ElvenTuiganBow
+~PartyHasItem("XBOW03")~+ @602 + TheGuideXBow
+~PartyHasItem("XBOW06")~+ @603 + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ @604 + GiantHairXBow
+~PartyHasItem("XBOW10")~+ @605 + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ @606 DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ @607 + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ @608 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ @608 DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ @467 + main.PID 
++ @609 EXIT 
END 

IF ~~ Craft.Think  
SAY @611
IF ~~ EXIT 
END 

IF ~~ MazzyBow 
SAY @612
IF ~~ + Craft.PID2 
END 

IF ~~ RipperBow
SAY @613
++ @614 DO ~TakePartyItem("BOW09")SetGlobal("X3EmiBow","LOCALS",9)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ HeartseekerBow
SAY @617
++ @618 DO ~TakePartyItem("BOW10")SetGlobal("X3EmiBow","LOCALS",10)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ StrongArmBow
SAY @619
++ @620 DO ~TakePartyItem("BOW11")SetGlobal("X3EmiBow","LOCALS",11)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ ElvenCourtBow 
SAY @621
++ @622 DO ~TakePartyItem("BOW12")SetGlobal("X3EmiBow","LOCALS",12)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ ManaBow
SAY @623
++ @624 DO ~TakePartyItem("BOW13")SetGlobal("X3EmiBow","LOCALS",13)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ TuiganBow 
SAY @625
++ @626 DO ~TakePartyItem("BOW14")SetGlobal("X3EmiBow","LOCALS",14)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ TansheronBow 
SAY @627
++ @628 DO ~TakePartyItem("BOW15")SetGlobal("X3EmiBow","LOCALS",15)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ DarkFireBow
SAY @629
IF ~~ + Craft.PID2 
END 

IF ~~ CespenarBow 
SAY @630
IF ~~ + Craft.PID2 
END 

IF ~~ TaralashBow
SAY @631
IF ~~ + Craft.PID2 
END 

IF ~~ JanXBow
SAY @632
IF ~~ + Craft.PID2 
END 

IF ~~ FiretoothXBow
SAY @633
IF ~~ + Craft.PID2 
END 

IF ~~ ElvenTuiganBow
SAY @646
IF ~~ + Craft.PID2 
END 

IF ~~ TheGuideXBow
SAY @634
++ @635 DO ~TakePartyItem("XBOW03")SetGlobal("X3EmiXBow","LOCALS",3)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ ArmyScytheXBow
SAY @636
++ @637 DO ~TakePartyItem("XBOW06")SetGlobal("X3EmiXBow","LOCALS",6)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ GiantHairXBow
SAY @638
++ @639 DO ~TakePartyItem("XBOW08")SetGlobal("X3EmiXBow","LOCALS",8)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ NecaradanXBow
SAY @640
++ @641 DO ~TakePartyItem("XBOW10")SetGlobal("X3EmiXBow","LOCALS",10)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~  AfflictionXBow
SAY @642
++ @643 DO ~TakePartyItem("XBOW13")SetGlobal("X3EmiXBow","LOCALS",13)~ + BowSelected
++ @615 + Craft.PID2 
++ @616 + Craft.Think 
END 

IF ~~ BowSelected 
SAY @644
IF ~~ DO ~SetGlobal("X3miCraft","LOCALS",2)StartCutSceneMode()StartCutScene("X3ECut05")~ EXIT // Launch Cutscene 
END 

IF ~~ FixString
SAY @648
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3EReset")~ EXIT 
END 

IF ~~ Flirts2 
SAY @1739
++ @1740 DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + F.Night2
+~RandomNum(4,1)~+ @1483 + Kiss1
+~RandomNum(4,2)~+ @1483 + Kiss2
+~RandomNum(4,3)~+ @1483 + Kiss3
+~RandomNum(4,4)!NumInParty(2)~+ @1483 + Group.Kiss 
+~RandomNum(4,4)NumInParty(2)~+ @1483 + Alone.Kiss
+~RandomNum(4,1)~+ @1751 + Compliment1
+~RandomNum(4,2)~+ @1751 + Compliment2
+~RandomNum(4,3)~+ @1751 + Compliment3
+~RandomNum(4,4)~+ @1751 + Compliment4
+~RandomNum(4,1)~+ @1756 + Hug1R
+~RandomNum(4,2)~+ @1756 + Hug2
+~RandomNum(4,3)~+ @1756 + Hug3R
+~RandomNum(4,4)~+ @1756 + Hug4R
+~RandomNum(4,1)~+ @1764 + Hand1
+~RandomNum(4,2)~+ @1764 + Hand2
+~RandomNum(4,3)~+ @1764 + Hand3R
+~RandomNum(4,4)~+ @1764 + Hand4R
+~RandomNum(4,1)~+ @1764 + Massage1
+~RandomNum(4,2)~+ @1773 + Massage2
+~RandomNum(4,3)~+ @1773 + Massage3
+~RandomNum(4,4)~+ @1773 + Massage4R
+~RandomNum(4,1)~+ @1779 + Sugg1
+~RandomNum(4,2)~+ @1779 + Sugg2
+~RandomNum(4,3)~+ @1779 + Sugg3
+~RandomNum(4,4)Global("X3Slept","LOCALS",2)~+ @1779 + Sugg4S
+~RandomNum(4,4)!Global("X3Slept","LOCALS",2)~+ @1779 + Sugg4NS
+~RandomNum(4,1)~+ @1787 + Bottom1
+~RandomNum(4,2)~+ @1787 + Bottom2
+~RandomNum(4,3)~+ @1787 + Bottom3
+~RandomNum(4,4)~+ @1787 + Bottom4
+~RandomNum(4,1)~+ @1792 + Love1
+~RandomNum(4,2)~+ @1792 + Love2
+~RandomNum(4,3)~+ @1792 + Love3
+~RandomNum(4,4)~+ @1792 + Love4
+~RandomNum(2,1)Global("X3Slept","LOCALS",2)OR(10)AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ @1797 + Bath1
+~RandomNum(2,2)Global("X3Slept","LOCALS",2)OR(10)AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ @1797 + Bath2
+~RandomNum(2,1)Global("X3Slept","LOCALS",2)OR(3)AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~+ @1797 + Bath3
+~RandomNum(2,2)Global("X3Slept","LOCALS",2)OR(3)AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~+ @1797 + Bath4
+~RandomNum(4,1)~+ @1820 + Thank1
+~RandomNum(4,2)~+ @1820 + Thank2
+~RandomNum(4,3)~+ @1820 + Thank3
+~RandomNum(4,4)~+ @1820 + Thank4
+~RandomNum(4,1)~+ @1829 + Hair1
+~RandomNum(4,2)~+ @1829 + Hair2
+~RandomNum(4,3)~+ @1829 + Hair3
+~RandomNum(4,4)~+ @1829 + Hair4
+~RandomNum(4,1)!Race(Player1,GNOME)!Race(Player1,HALFLING)!Race(Player1,DWARF)~+ @1830 + Spin1
+~RandomNum(4,2)!Race(Player1,GNOME)!Race(Player1,HALFLING)!Race(Player1,DWARF)~+ @1830 + Spin2
+~RandomNum(4,3)!Race(Player1,GNOME)!Race(Player1,HALFLING)!Race(Player1,DWARF)~+ @1830 + Spin3
+~RandomNum(4,4)!Race(Player1,GNOME)!Race(Player1,HALFLING)!Race(Player1,DWARF)~+ @1830 + Spin4
+~RandomNum(4,1)~+ @1831 + Watch1
+~RandomNum(4,2)~+ @1831 + Watch2
+~RandomNum(4,3)~+ @1831 + Watch3
+~RandomNum(4,4)~+ @1831 + Watch4
+ ~Global("X3DisableFlirts","LOCALS",0)~ + @1832 DO ~SetGlobal("X3DisableFlirts","LOCALS",1)~ + Flirt.Stop
+ ~Global("X3DisableFlirts","LOCALS",1)~ + @1833 DO ~SetGlobal("X3DisableFlirts","LOCALS",0)~ + Flirt.Start
END 

IF ~~ F.Night1 
SAY @1741
IF ~~ EXIT 
END 

IF ~~ F.Night2 
SAY @1742
IF ~~ EXIT 
END 

IF ~~ Cheek1 
SAY @1744
IF ~~ EXIT 
END 

IF ~~ Cheek2 
SAY @1745
IF ~~ EXIT 
END 

IF ~~ Cheek3 
SAY @1746
IF ~~ EXIT 
END 

IF ~~ Cheek4
SAY @1747
IF ~~ EXIT 
END 

IF ~~ Kiss1 
SAY @1748
IF ~~ EXIT 
END

IF ~~ Kiss2 
SAY @1749
IF ~~ EXIT 
END 


IF ~~ Kiss3 
SAY @1750
IF ~~ EXIT 
END 

IF ~~ Compliment1 
SAY @1752
IF ~~ EXIT 
END 

IF ~~ Compliment2
SAY @1753
IF ~~ EXIT 
END 

IF ~~ Compliment3
SAY @1754
IF ~~ EXIT 
END 

IF ~~ Compliment4 
SAY @1755
IF ~~ EXIT 
END 

IF ~~ Hug1NR 
SAY @1757
IF ~~ EXIT 
END 

IF ~~ Hug1R 
SAY @1758
IF ~~ EXIT 
END

IF ~~ Hug2 
SAY @1759
IF ~~ EXIT 
END

IF ~~ Hug3NR 
SAY @1760
IF ~~ EXIT 
END 

IF ~~ Hug3R 
SAY @1761
IF ~~ EXIT 
END 

IF ~~ Hug4NR
SAY @1762
IF ~~ EXIT 
END 

IF ~~ Hug4R 
SAY @1763
IF ~~ EXIT 
END 

IF ~~ Hand1NR 
SAY @1765
= @1766
IF ~~ EXIT 
END 

IF ~~ Hand1 
SAY @1768
IF ~~ EXIT 
END

IF ~~ Hand2 
SAY @1767
IF ~~ EXIT 
END 

IF ~~ Hand3NR 
SAY @1769
IF ~~ EXIT 
END 

IF ~~ Hand3R 
SAY @1770
IF ~~ EXIT 
END 

IF ~~ Hand4NR 
SAY @1771
IF ~~ EXIT 
END 

IF ~~ Hand4R 
SAY @1772
IF ~~ EXIT 
END 

IF ~~ Massage1 
SAY @1774
IF ~~ EXIT 
END 

IF ~~ Massage2 
SAY @1775
IF ~~ EXIT 
END 

IF ~~ Massage3 
SAY @1776
IF ~~ EXIT 
END 

IF ~~ Massage4NR 
SAY @1777
IF ~~ EXIT 
END 

IF ~~ Massage4R 
SAY @1778
IF ~~ EXIT 
END 

IF ~~ Sugg1 
SAY @1779
IF ~Global("X3Slept","LOCALS",2)~ + Sugg1R1
IF ~!Global("X3Slept","LOCALS",2)~ + Sugg1R2
END 

IF ~~ Sugg1R1 
SAY @1780
IF ~~ 
EXIT 
END 

IF ~~ Sugg1R2 
SAY @1781
IF ~~ 
EXIT 
END 

IF ~~ Sugg2
SAY @1783
IF ~~ 
EXIT 
END 

IF ~~ Sugg3
SAY @1784
IF ~~ 
EXIT 
END 

IF ~~ Sugg4S
SAY @1785
IF ~~ 
EXIT 
END 

IF ~~ Sugg4NS
SAY @1786
IF ~~ 
EXIT 
END 

IF ~~ Bottom1 
SAY @1788
IF ~~
EXIT 
END 

IF ~~ Bottom2
SAY @1789
IF ~~
EXIT 
END 

IF ~~ Bottom3
SAY @1790
IF ~~
EXIT 
END 

IF ~~ Bottom4
SAY @1791
IF ~~
EXIT 
END 

IF ~~ Love1
SAY @1793
IF ~~
EXIT 
END 

IF ~~ Love2
SAY @1794
IF ~~
EXIT 
END 

IF ~~ Love3
SAY @1795
IF ~~
EXIT 
END 

IF ~~ Love4
SAY @1796
IF ~~
EXIT 
END 

IF ~~ Bath1 
SAY @1798
++ @1799 + Bath1A 
++ @1800 + Bath1A 
END 

IF ~~ Bath1A 
SAY @1801
++ @1802 + Bath1B 
++ @1803 + Bath1C 
++ @1804 + Bath1D 
END 

IF ~~ Bath1D 
SAY @1805
IF ~~ + Bath1E 
END 

IF ~~ Bath1C
SAY @1806
IF ~~ + Bath1E 
END 

IF ~~ Bath1B 
SAY @1807
IF ~~ + Bath1F
END 

IF ~~ Bath1E 
SAY @1808
IF ~~ + Bath1F 
END 

IF ~~ Bath1F 
SAY @1809
IF ~~ EXIT 
END 

IF ~~ Bath2 
SAY @1810
= @1811
= @1812
IF ~~ EXIT 
END 

IF ~~ Bath3 
SAY @1813
= @1814
= @1815
= @1816
IF ~~ EXIT 
END 

IF ~~ Bath4 
SAY @1817
= @1818
= @1819
IF ~~ EXIT 
END

IF ~~ Thank1 
SAY @1821
IF ~~ EXIT 
END 

IF ~~ Thank2
SAY @1822
IF ~~ EXIT 
END 

IF ~~ Thank3 
SAY @1823
IF ~~ EXIT 
END 

IF ~~ Thank4 
SAY @1824
IF ~~ EXIT 
END 

IF ~~ Hair1 
SAY @1825
IF ~~ EXIT 
END 

IF ~~ Hair2
SAY @1826
IF ~~ EXIT 
END 

IF ~~ Hair3 
SAY @1827
IF ~~ EXIT 
END 

IF ~~ Hair4 
SAY @1828
IF ~~ EXIT 
END 

IF ~~ Spin1 
SAY @1834
IF ~~ EXIT 
END 

IF ~~ Spin2 
SAY @1835
IF ~~ EXIT 
END 

IF ~~ Spin3 
SAY @1836
= @1837
IF ~~ EXIT 
END 

IF ~~ Spin4 
SAY @1838
= @1839 
IF ~~ EXIT 
END 

IF ~~ Watch1 
SAY @1840 
= @1841
IF ~~ EXIT 
END 

IF ~~ Watch2 
SAY @1842
= @1843
IF ~~ EXIT 
END 

IF ~~ Watch3 
SAY @1844
= @1845
IF ~~ EXIT 
END 

IF ~~ Watch4 
SAY @1846
IF ~~ EXIT 
END 

IF ~~ Ring1
SAY @1850
IF ~~ EXIT 
END 

IF ~~ Ring2
SAY @1851
IF ~~ EXIT 
END 

IF ~~ Ring3
SAY @1852
IF ~~ EXIT 
END 

IF ~~ Ring4
SAY @1853
IF ~~ EXIT 
END 

IF ~~ Flirt.Stop 
SAY @1847
IF ~~ EXIT 
END 

IF ~~ Flirt.Start 
SAY @1848
IF ~~ EXIT 
END 

END 