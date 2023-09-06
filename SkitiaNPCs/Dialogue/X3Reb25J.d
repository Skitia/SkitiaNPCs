/*Non-Essential Interjections*/ 

//Watcher's Keep 

I_C_T GORAPP1 14 X3RebGORAPP1-14
== X3Reb25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @0
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@400416)~
END 


I_C_T GORAPP1 16 X3RebGORAPP1-16
== X3Reb25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @0
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@400416)~
END 


I_C_T GORDEMO 24 X3RebGORDEMO 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1
END 

I_C_T GORAPR 3 X3RebGORAPR 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @2
== GORAPR @3
END  

I_C_T GORSUC01 7 X3RebGORSUC01 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebRomanceActive","GLOBAL",2)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @4
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@400406)~
END 


I_C_T GORMAD1 39 X3RebGormad1-39 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @5
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@400416)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @6
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~
== GORMAD1 @7
END 

I_C_T GORMAD1 40 X3RebGormad1-40 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @5
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@400416)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @6
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@100116)~
== GORMAD1 @7
END 

I_C_T GORMAD1 41 X3RebGormad1-41 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @8
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@400406)~
== GORMAD1 @9
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Reb",LastTalkedToBy)~ EXTERN X3Reb25J Yackman
END

CHAIN X3Reb25J Yackman  
@10
EXTERN GORMAD1 11

I_C_T GORPOL1 1 X3RebGORPOL1-1
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @11
END 

I_C_T GORODR1 19 X3RebGORODR1-19
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @12
END 

//Pre-Saradush 

I_C_T SAREV25A 0 X3RebSAREV25A
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN @13
END

//Saradush Interjects 

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3RebRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J SARPROVF-Care
END

CHAIN X3Reb25J SARPROVF-Care 
@14
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPROVM 0
IF ~Global("X3RebRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J SARPROVM-Care
END

CHAIN X3Reb25J SARPROVM-Care 
@14
EXTERN SARPROVM 1


I_C_T SARCNT01 19 X3RebSARCNT01-19
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @15
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)DisplayStringNoNameDlg(Player1,@400416)~ 
== SARCNT01 @16
END 

I_C_T SARCNT01 20 X3RebSARCNT01-20
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebQuest","GLOBAL",15)~ THEN @17
== SARCNT01 @18
END 

I_C_T ORPHAN1 1 X3EmiORPHAN1-1
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN @19
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)DisplayStringNoNameDlg(Player1,@400406)~
== ORPHAN1 @20
END

I_C_T ORPHAN2 3 X3EmiORPHAN2-3
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @21
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)DisplayStringNoNameDlg(Player1,@400416)~
== ORPHAN2 @22
END

I_C_T SARTHF2 6 X3RebSARTHF2-6 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @23
DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@400403)~
END

I_C_T SARTHF1 12 X3RebSARTHF1-12
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @24
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)DisplayStringNoNameDlg(Player1,@400406)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @25
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@100106)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL_EVIL)~ THEN @26
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@500516)~
== SARTHF1 @27
END 

I_C_T SARTEM01 16 X3EmiSARTEM01-16
== X3RebJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN @28
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)DisplayStringNoNameDlg(Player1,@400406)~
== SARTEM01 @29
END

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3RebRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Reb") Gender(Player1,MALE)~  EXTERN X3Reb25J SarPro_No 
END 

CHAIN X3Reb25J SarPro_No 
@30
END 
++ @31 EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ @32 EXTERN X3Reb25J SarPro_Break 
++ @33 EXTERN X3Reb25J SarPro_Yes 

CHAIN X3Reb25J SarPro_Yes 
@34
EXTERN SARPRO01 3

CHAIN X3Reb25J SarPro_Break 
@35
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)SetGlobal("X3RebAppChange","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@400409)~
EXTERN SARPRO01 12 


// Volo's obligatory interjection in Saradush.
I_C_T SARVOLO 2 X3RebSARVOLO2
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @36 
END

EXTEND_BOTTOM SARVOLO 9
+ ~InParty("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ + @37 + X3RebVoloBio1
+ ~InParty("X3Reb")Global("X3RebRomanceActive","GLOBAL",2)~ + @37 + X3RebVoloBio2
END

CHAIN SARVOLO X3RebVoloBio1
@38
END 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J X3RebVoloBio


CHAIN SARVOLO X3RebVoloBio2
@39
END 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J X3RebVoloBio



CHAIN X3Reb25J X3RebVoloBio
@40
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGKAR01 10 X3RebHGKAR01-10
== X3Emi25J IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN @41
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)DisplayStringNoNameDlg(Player1,@400409)~
== HGKAR01 @42
END

I_C_T HGNYA01 29 X3RebHGNYA01-29
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @43
END

// Amkethran and Beyond

I_C_T BALTH 7 X3RebBalth7
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ @44
END 

I_C_T BALTH 23 X3RebBalth23
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @45
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @46
END

I_C_T AMMAYOR 5 X3RebAMMAYOR-5
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @47
END

I_C_T AMMERC04 2 X3RebAMMERC04
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @48
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@400406)~
END

I_C_T AMASANA 3 X3RebAMASANA-3
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @49
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@400416)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @50
== AMASANA @51
END

I_C_T MARLOWE 15 X3RebMARLOWE15
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @52
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@400409)~ 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @53
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@100109)~ 
== MARLOWE @54
END 

I_C_T MARLOWE 51 X3EmiMARLOWE-51
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @55
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@400419)~ 
== MARLOWE @56
END 

I_C_T MARLOWE 52 X3EmiMARLOWE-52 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @57
DO ~IncrementGlobal("X3RebApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@400409)~ 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")~ THEN @58
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@500516)~ 
== MARLOWE @59
END 

I_C_T AMSMITH 16 X3RebAMSMITH-16
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @60
END 

I_C_T BAZEYE01 16 X3RebBAZEYE16
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @61
END 

I_C_T BAZPAT01 4 X3EmiBAZPAT01
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @62
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@400409)~ 
== BAZPAT01 @63
END 


// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3RebSolarFriend1
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @64
END

// romanced, Recorder and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarPers","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarPers
END

CHAIN X3Reb25J X3RebSolarPers
@65
= @66
END
++ @67 + FinalChoice.1
++ @68 + FinalChoice.2
++ @69 + FinalChoice.1

CHAIN X3Reb25J FinalChoice.1 
@70
= @71
END 
IF ~PartyHasItem("X3RingR")~ EXTERN X3Reb25J FinalChoice.3
IF ~!PartyHasItem("X3RingR")Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.4
IF ~!PartyHasItem("X3RingR")!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.5

CHAIN X3Reb25J FinalChoice.3
@72
END 
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.4
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.5

CHAIN X3Reb25J FinalChoice.4
@73
EXTERN X3Reb25J FinalChoice.5 

CHAIN X3Reb25J FinalChoice.5
@74
END
COPY_TRANS FINSOL01 27

CHAIN X3Reb25J FinalChoice.2 
@75
END 
IF ~PartyHasItem("X3RingR")~ EXTERN X3Reb25J FinalChoice.3
IF ~!PartyHasItem("X3RingR")Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.4
IF ~!PartyHasItem("X3RingR")!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.5




// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarLeave","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarLeave","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarLeave","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarLeave
END

CHAIN X3Reb25J X3RebSolarLeave
@76
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarStay","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarStay
END

CHAIN X3Reb25J X3RebSolarStay
@77
END
++ @78 EXTERN X3Reb25J X3RebSolarStay1.1
++ @79 EXTERN X3Reb25J X3RebSolarStay1.1
++ @80 EXTERN X3Reb25J X3RebSolarStay1.1

CHAIN X3Reb25J X3RebSolarStay1.1
@81
END
IF ~PartyHasItem("X3RingR")~ EXTERN X3Reb25J StayChoice.1
IF ~!PartyHasItem("X3RingR")Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J StayChoice.2
IF ~!PartyHasItem("X3RingR")!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J StayChoice.3

CHAIN X3Reb25J StayChoice.1 
@82
END 
COPY_TRANS FINSOL01 32

CHAIN X3Reb25J StayChoice.2
@83
END 
COPY_TRANS FINSOL01 32

CHAIN X3Reb25J StayChoice.3
@84
END 
COPY_TRANS FINSOL01 32




// Recorder's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3RebRomanceActive","GLOBAL",2) InParty("X3Reb") See("X3Reb")~ EXTERN HGWRA01 X3RebWraith1
END

CHAIN HGWRA01 X3RebWraith1
@85
DO ~SetGlobal("X3LovedOne","GLOBAL",3)~
== X3Reb25J @86
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",3)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3RW1")~ EXIT
END

BEGIN X3RLOVE 

CHAIN 
IF ~Global("X3RebWraithSpirit1","GLOBAL",0)~ THEN X3RLOVE X3RebWraithSpirit1
@87
DO ~SetGlobal("X3RebWraithSpirit1","GLOBAL",1)~
== X3Reb25J @88
== X3RLOVE @89
END 
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J Saved_Love 
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J Unsaved_Love 

CHAIN X3Reb25J Saved_Love 
@90
== X3RLOVE @91
== X3Reb25J @92
== X3RLOVE @93
== X3Reb25J @94
== X3RLOVE @95
EXTERN X3Reb25J Sob 

CHAIN X3Reb25J Unsaved_Love 
@96
== X3RLOVE @97
== X3Reb25J @98
== X3RLOVE @99
== X3Reb25J @100
== X3RLOVE @101
EXTERN X3Reb25J Sob 

CHAIN X3Reb25J Sob 
@102 
END 
++ @103 EXTERN HGWRA01 25
++ @104 EXTERN HGWRA01 25
++ @105 EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + @106 EXTERN HGWRA01 25 

//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25J engagement 
@107
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @108 + engagement_yes 
++ @109 + engagement_yes 
++ @110 + engagement_doubts

CHAIN X3Reb25J engagement_yes 
@111
EXTERN X3Reb25J engagement_yes2 

CHAIN X3Reb25J engagement_doubts
@112
EXTERN X3Reb25J engagement_yes2 

CHAIN X3Reb25J engagement_yes2 
@113
DO ~TransformItem("X3ERING","X3RINGR")~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @114
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @115
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")~ THEN @562
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25J engagement_auto_fail 
@116
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @117 + eaf.1 
++ @118 + eaf.2
++ @119 + eaf.4

CHAIN X3Reb25J eaf.1 
@120
EXTERN X3Reb25J eaf.3 

CHAIN X3Reb25J eaf.3
@121
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN @122
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @123
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN @124
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

CHAIN X3Reb25J eaf.2 
@125
EXTERN X3Reb25J eaf.3

CHAIN X3Reb25J eaf.4 
@126
EXTERN X3Reb25J eaf.3


CHAIN IF ~Global("X3RebToBEvent","GLOBAL",2)~ THEN X3Reb25J post_mage
@127
DO ~IncrementGlobal("X3RebToBEvent","GLOBAL",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~Dead("X3RM25")Global("X3RebQuest","GLOBAL",15)~ + sonsavedmagedead 
IF ~!Dead("X3RM25")Global("X3RebQuest","GLOBAL",15)~ + sonsavedmagealive
IF ~Dead("X3RM25")!Global("X3RebQuest","GLOBAL",15)~ + nosavemagedead 
IF ~!Dead("X3RM25")!Global("X3RebQuest","GLOBAL",15)~ + nosavemagealive

CHAIN X3Reb25J sonsavedmagedead 
@128
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @129 + ssmd.1 
++ @130 + ssmd.2 
++ @131 + ssmd.3
++ @132 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + ssmd.4

CHAIN X3Reb25J ssmd.1
@133
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssmd.2
@134
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssmd.3
@135
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssmd.4
@136
EXIT 

CHAIN X3Reb25J sonsavedmagealive 
@137
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @138 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + ssma.1
++ @139 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + ssma.2 
++ @140 + ssma.3
++ @141 +  mage.X

CHAIN X3Reb25J ssma.1
@142
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssma.2
@143
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssma.3
@144
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J mage.X
@145
EXIT 

CHAIN X3Reb25J nosavemagedead 
@146
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @147 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + nsmd.1 
++ @148 + nsmd.2 
++ @149 + nsmd.3 
++ @150 + mage.X

CHAIN X3Reb25J nsmd.1
@151
EXTERN X3Reb25J mage.love

CHAIN X3Reb25J nsmd.2
@152
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nsmd.3 
@153
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nosavemagealive 
@154
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @155 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + nsma.1
++ @156 + nsma.2 
++ @157 + nsma.3
++ @150 + mage.X

CHAIN X3Reb25J nsma.1
@158
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nsma.2
@159
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nsma.3
@160
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J mage.love 
@161
EXIT 

CHAIN X3Reb25J mage.friend 
@162
EXIT 

// Unlike the prior talk, this is a non-romance only conversation. 
CHAIN IF ~Global("X3RebToBTalk","LOCALS",2)~ THEN X3Reb25J FriendshipTalk1 
@163
DO ~IncrementGlobal("X3RebToBTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @164 + FT.1
++ @165 + FT.2
++ @166 + FT.2
++ @167 + FT1.X 

CHAIN X3Reb25J FT1.X 
@168
EXIT 

CHAIN X3Reb25J FT.1
@169
EXTERN X3Reb25J FT.2

CHAIN X3Reb25J FT.2
@170
END 
++ @171 + FT.3 
++ @172 + FT.4
++ @173 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FT.5
++ @174 + FT.6

CHAIN X3Reb25J FT.3
@175
EXTERN X3Reb25J FT.4 

CHAIN X3Reb25J FT.4
@176
== X3Reb25J @177
END 
++ @178 + FT.7
++ @179 + FT.8
++ @180  + FT.9

CHAIN X3Reb25J FT.7
@181
EXIT 

CHAIN X3Reb25J FT.8
@182
EXIT 

CHAIN X3Reb25J FT.9
@183
EXIT 

CHAIN X3Reb25J FT.5
@184
EXTERN X3Reb25J FT.4

CHAIN X3Reb25J FT.6
@185
EXTERN X3Reb25J FT.4

// Friendship Talk 2

CHAIN IF ~Global("X3RebToBTalk","LOCALS",4)~ THEN X3Reb25J FriendshipTalkSecond
@186
DO ~IncrementGlobal("X3RebToBTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
= @187
END 
++ @188 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FS.1 
++ @189 + FS.2
++ @190 + FS.2
++ @191 + FS.X 

CHAIN X3Reb25J FS.X 
@192
EXIT 

CHAIN X3Reb25J FS.1 
@193
= @194
END 
++ @195 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FS.4
++ @196 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FS.5
++ @197 + FS.6

CHAIN X3Reb25J FS.2 
@198
EXTERN X3Reb25J FS.2 

CHAIN X3Reb25J FS.4 
@199
= @200
EXIT 

CHAIN X3Reb25J FS.5 
@201
END 
++ @202 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FS.9
++ @203 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + FS.7
++ @204 + FS.8

CHAIN X3Reb25J FS.9
@205
EXTERN X3Reb25J FS.10 

CHAIN X3Reb25J FS.7
@206
EXTERN X3Reb25J FS.10

CHAIN X3Reb25J FS.8
@207
EXTERN X3Reb25J FS.10

CHAIN X3Reb25J FS.10
@208
EXIT 

CHAIN X3Reb25J FS.6
@209
EXIT 

//Friendship Talk Final 

CHAIN IF ~Global("X3RebToBTalk","LOCALS",6)~ THEN X3Reb25J FriendshipTalkFinal
@210
DO ~IncrementGlobal("X3RebToBTalk","LOCALS",1)~
END 
++ @211 + FF.1
++ @212 + FF.2
++ @213 + FF.3 
++ @214 + FF.4
++ @215 + FF.X 

CHAIN X3Reb25J FF.1
@216
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.2
@217
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.3
@218
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.4 
@219
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.X 
@220
EXIT 

CHAIN X3Reb25J FF.5
@221
END 
+~Global("X3RebQuest","GLOBAL",15)~+ @222 + FF.6
+~!Global("X3RebQuest","GLOBAL",15)~+ @222 + FF.7
+~Global("X3RebQuest","GLOBAL",15)~+ @223 + FF.8
+~!Global("X3RebQuest","GLOBAL",15)~+ @223 + FF.9 
++ @224 + FF.10 

CHAIN X3Reb25J FF.6
@225
EXTERN X3Reb25J FF.9

CHAIN X3Reb25J FF.7
@226
EXTERN X3Reb25J FF.12 

CHAIN X3Reb25J FF.12 
@227
== X3Reb25J @228
END 
++ @229 + FF.13
++ @230 + FF.14
++ @231 + FF.15

CHAIN X3Reb25J FF.8
@232
EXTERN X3Reb25J FF.11

CHAIN X3Reb25J FF.11
@233
== X3Reb25J @228
END 
++ @229 + FF.13
++ @230 + FF.14
++ @234 + FF.16

CHAIN X3Reb25J FF.9
@235
EXTERN X3Reb25J FF.12 

CHAIN X3Reb25J FF.10
@236
== X3Reb25J @228
END 
++ @229 + FF.13 
++ @230 + FF.14

CHAIN X3Reb25J FF.13 
@237
EXIT 

CHAIN X3Reb25J FF.14 
@238
EXIT 

CHAIN X3Reb25J FF.15
@239
EXTERN X3Reb25J FF.17 

CHAIN X3Reb25J FF.16 
@240
EXTERN X3Reb25J FF.17 

CHAIN X3Reb25J FF.17
@241
EXIT 

// Romance 
CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",2)~ THEN X3Reb25J LoveTalk1 
@242
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)~
END 
++ @243 + 1.1
++ @244 + 1.2
++ @245 + 1.3
++ @246 + 1.X


CHAIN X3Reb25J 1.X 
@247
EXIT  

CHAIN X3Reb25J 1.1
@248
EXTERN X3Reb25J 1.4

CHAIN X3Reb25J 1.2 
@249
EXTERN X3Reb25J 1.4

CHAIN X3Reb25J 1.3 
@250
EXTERN X3Reb25J 1.4 

CHAIN X3Reb25J 1.4 
@251
END 
++ @252 + 1.5 
++ @253  + 1.6 
++ @254 + 1.7

CHAIN X3Reb25J 1.5 
@255
EXTERN X3Reb25J 1.8

CHAIN X3Reb25J 1.6
@256
EXTERN X3Reb25J 1.8

CHAIN X3Reb25J 1.7
@257
EXTERN X3Reb25J 1.8
 
CHAIN X3Reb25J 1.8
@258
EXIT 

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",4)~ THEN X3Reb25J LoveTalk2
@259
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",7)~
END 
++ @260 + 2.1 
++ @261 + 2.2 
++ @262 + 2.3

CHAIN X3Reb25J 2.1 
@263
EXTERN X3Reb25J 2.4 

CHAIN X3Reb25J 2.2 
@264
EXTERN X3Reb25J 2.4

CHAIN X3Reb25J 2.3 
@265
EXTERN X3Reb25J 2.4

CHAIN X3Reb25J 2.4
@266
= @267
= @268
END 
++ @269 + 2.5
++ @270 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 2.6
++ @271 + 2.X 

CHAIN X3Reb25J 2.5
@272
EXTERN X3Reb25J 2.6 

CHAIN X3Reb25J 2.6
@273
EXIT 

CHAIN X3Reb25J 2.X 
@274
EXIT 


// Wraith Conversation 
CHAIN IF ~Global("X3RebWraithTalk","LOCALS",1)~ THEN X3Reb25J WraithTalk
@275
DO ~IncrementGlobal("X3RebWraithTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 2G.1
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 2S.1

CHAIN X3Reb25J 2G.1
@276
END 
++ @277 + W.1 
++ @278 + W.2
++ @279 + W.3

CHAIN X3Reb25J 2S.1
@280
END 
++ @277 + W.1
++ @278 + W.2 
++ @279 + W.3

CHAIN X3Reb25J W.3
@281
//Romance doesn't break...but she escapes and is unreachable for good.
DO ~EscapeArea()~
EXIT 

CHAIN X3Reb25J W.2 
@282
END 
++ @283 + W.4 
++ @284 + W.4
++ @285 + W.3 
++ @286  + W.4

CHAIN X3Reb25J W.1 
@287
END 
++ @283 + W.4 
++ @284 + W.4
++ @285 + W.3 
++ @286 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + W.4

CHAIN X3Reb25J W.4 
@288
END 
++ @289 + W.5
++ @290 DO ~SetGlobal("X3RebAppChange","GLOBAL",-2)~ + W.6
++ @291 + W.7

CHAIN X3Reb25J W.5 
@292
EXIT 

CHAIN X3Reb25J W.6
@293
EXIT 

CHAIN X3Reb25J W.7
@294
EXIT 

// This one happens post rest.
CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",6)~ THEN X3Reb25J LoveTalk3
@295
== X3Reb25J @296
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebChangeApp","GLOBAL",6)~
END 
++ @297 + 3.1 
++ @298 + 3.2
++ @299 + 3.X

CHAIN X3Reb25J 3.1 
@300
END 
++ @301 DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.3
+~!Global("X3RebQuest","GLOBAL",15)~+ @302 + 3.4
+~Global("X3RebQuest","GLOBAL",15)~+ @303  + 3.4
++ @304 DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",2)~ + 3.5

CHAIN X3Reb25J 3.2 
@305
EXTERN X3Reb25J 3.2

CHAIN X3Reb25J 3.3 
@306
EXTERN X3Reb25J 3.6

CHAIN X3Reb25J 3.4 
@307
EXTERN X3Reb25J 3.6

CHAIN X3Reb25J 3.5
@308
EXTERN X3Reb25J 3.6

CHAIN X3Reb25J 3.6
@309
END 
++ @310 DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.7
++ @311 DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.7 
++ @312 DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.8
++ @313 + 3.9

CHAIN X3Reb25J 3.7
@314
EXIT 

CHAIN X3Reb25J 3.8
@315
EXIT 

CHAIN X3Reb25J 3.9
@316
EXIT 

CHAIN X3Reb25J 3.X 
@317
DO ~RestParty()~
EXIT 

//Love Talk #4

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",8)~ THEN X3Reb25J LoveTalk4
@318
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @319 + 4.1 
++ @320 + 4.2 
++ @321 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 4.1
++ @322 + 4.X 

CHAIN X3Reb25J 4.X 
@323
EXIT  

CHAIN X3Reb25J 4.1
@324
EXTERN X3Reb25J 4.4 

CHAIN X3Reb25J 4.2 
@325
EXTERN X3Reb25J 4.4 

CHAIN X3Reb25J 4.3 
@326
EXTERN X3Reb25J 4.4 

CHAIN X3Reb25J 4.4 
@327
== X3Reb25J @328
END 
++ @329 + 4.5 
++ @330 + 4.6 
++ @331 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + 4.7

CHAIN X3Reb25J 4.5
@332
EXTERN X3Reb25J 4.8

CHAIN X3Reb25J 4.7
@333
EXTERN X3Reb25J 4.8

CHAIN X3Reb25J 4.6
@334
EXTERN X3Reb25J 4.8

CHAIN X3Reb25J 4.8
@335
END 
++ @336 + 4.9
++ @337 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + 4.10
++ @338 + 4.9 

CHAIN X3Reb25J 4.9
@339
EXTERN X3Reb25J 4.11

CHAIN X3Reb25J 4.10 
@340
EXTERN X3Reb25J 4.11 

CHAIN X3Reb25J 4.11 
@341
EXIT 

// Lovetalk #5

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",10)~ THEN X3Reb25J LoveTalk5
@342
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @343 + 5.1 
++ @344 + 5.2
++ @345 + 5.3
++ @346 + 5.X 

CHAIN X3Reb25J 5.X 
@347
EXIT 

CHAIN X3Reb25J 5.3 
@348
END 
++ @349 + 5.4 
++ @350 + 5.5
++ @351 + 5.6

CHAIN X3Reb25J 5.4
@352
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.5
@353
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.6
@354
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.1 
@355
END 
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.2
@356
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5G.6
@357
END 
IF ~Gender(Player1,MALE)Race(Player1,GNOME)~ EXTERN X3Reb25J 5G.7
IF ~Gender(Player1,MALE)OR(2)Race(Player1,DWARF)Race(Player1,HALFLING)~ EXTERN X3Reb25J 5DH.7
IF ~Gender(Player1,MALE)!Race(Player1,DWARF)!Race(Player1,GNOME)!Race(Player1,HALFLING)~ EXTERN X3Reb25J 5.7
IF ~!Gender(Player1,MALE)~ EXTERN X3Reb25J 5F.7

CHAIN X3Reb25J 5S.6
@358
END 
IF ~Gender(Player1,MALE)Race(Player1,GNOME)~ EXTERN X3Reb25J 5G.7
IF ~Gender(Player1,MALE)OR(2)Race(Player1,DWARF)Race(Player1,HALFLING)~ EXTERN X3Reb25J 5DH.7
IF ~Gender(Player1,MALE)!Race(Player1,DWARF)!Race(Player1,GNOME)!Race(Player1,HALFLING)~ EXTERN X3Reb25J 5.7
IF ~!Gender(Player1,MALE)~ EXTERN X3Reb25J 5F.7

CHAIN X3Reb25J 5.7
@359
END 
++ @360 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8
++ @361 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9
++ @362 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ @363 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12

CHAIN X3Reb25J 5F.7
@364
END 
++ @360 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8
++ @361 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9
++ @365 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ @363 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12


CHAIN X3Reb25J 5DH.7
@366
END 
++ @367 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8 
++ @368 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9 
++ @362 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ @369 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12

CHAIN X3Reb25J 5G.7
@370
END 
++ @371 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8
++ @368 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9
++ @362 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ @369 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12

CHAIN X3Reb25J 5.8
@372
EXTERN X3Reb25J 5.11 

CHAIN X3Reb25J 5.9
@373
EXTERN X3Reb25J 5.11 

CHAIN X3Reb25J 5.11 
@374
EXIT 

CHAIN X3Reb25J 5.10
@375
EXIT 

CHAIN X3Reb25J 5.12 
@376
EXIT 


CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",12)~ THEN X3Reb25J LoveTalk6
@377
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @378 + 6.1
++ @379 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 6.2 
++ @380 + 6.1
++ @381 + 6.4 
++ @382 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + 6.X 

CHAIN X3Reb25J 6.X 
@383
EXIT 

CHAIN X3Reb25J 6.4 
@384
EXTERN X3Reb25J 6.1

CHAIN X3Reb25J 6.1 
@385
EXTERN X3Reb25J 6.3 

CHAIN X3Reb25J 6.2 
@386
EXTERN X3Reb25J 6.3 

CHAIN X3Reb25J 6.3 
@387
END 
++ @388 + 6.4
++ @389 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.5 
++ @390 + 6.6 

CHAIN X3Reb25J 6.6
@391
END 
++ @392 DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 6.7
++ @393 + 6.8
++ @394 + 6.9

CHAIN X3Reb25J 6.8
@395
EXIT 

CHAIN X3Reb25J 6.7
@396
EXIT 

CHAIN X3Reb25J 6.9
@397
EXIT 

CHAIN X3Reb25J 6.5
@398
EXTERN X3Reb25J 6.6

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",14)~ THEN X3Reb25J LoveTalk7 
@399
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ @400 + 7.1 
++ @401 + 7.2
++ @402 + 7.3

CHAIN X3Reb25J 7.1 
@403
== X3Reb25J @404
END 
++ @405 DO ~IncrementGlobal("X3RebApp","GLOBAL",2)~ + 7.2 
++ @406 DO ~IncrementGlobal("X3RebApp","GLOBAL",2)~ + 7.3
++ @407 DO ~IncrementGlobal("X3RebApp","GLOBAL",2)~ + 7.3
++ @408 + 7.5

CHAIN X3Reb25J 7.5
@409
EXIT 

CHAIN X3Reb25J 7.2 
@410
== X3Vie25J @411
== X3Hel25J @412
== X3Emi25J @413
== X3Kal25J @414
EXTERN X3Reb25J 7.5

CHAIN X3Reb25J 7.3 
@415
== X3Vie25J @411
== X3Hel25J @412
== X3Emi25J @413
== X3Kal25J @414
EXTERN X3Reb25J 7.5

//New Initiated Flirts: Romance Active = 2
CHAIN IF ~Global("X3RebFlirt","GLOBAL",1) Global("X3RebRomanceActive","GLOBAL",1)~ THEN X3Reb25J flirt1
@1484
END 
 IF ~~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.1
IF ~RandomNum(20,1)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.2
IF ~RandomNum(20,2)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.3
IF ~RandomNum(20,3)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.4
IF ~RandomNum(20,4)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.5
IF ~RandomNum(20,5)OR(3)Race(Player1,GNOME)Race(PLayer1,HALFLING)Race(Player1,DWARF)HPPercentLT("X3Reb",50) ~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + injured2A
IF ~RandomNum(20,6)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.6
IF ~RandomNum(20,7)Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.7
IF ~RandomNum(20,8)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.8
IF ~RandomNum(20,9) AreaType(DUNGEON)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + dungeon2
IF ~RandomNum(20,10)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.9
IF ~RandomNum(20,11)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.10
IF ~RandomNum(20,12)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.11
IF ~RandomNum(20,13)Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.12
IF ~RandomNum(20,14)Global("X3RebPartyBG1","GLOBAL",1)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.13
IF ~RandomNum(20,15) ReputationGT(Player1,16)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + rep2
IF ~RandomNum(20,16) HPPercentLT(Player1,75)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + injured2B
IF ~RandomNum(20,17)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + riddle1
IF ~RandomNum(20,18)OR(2)
AreaCheck("AR5501")
AreaCheck("AR5003")~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.15
IF ~RandomNum(20,19) OR(2)TimeOfDay(NIGHT)TimeOfDay(DUSK)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + night2
IF ~RandomNum(20,20)~ DO ~SetGlobal("X3RebStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3RebFlirtTimer","GLOBAL",2700)~ + initiate2.14

CHAIN X3Reb25J initiate2.1 
@1485
EXIT 

CHAIN X3Reb25J initiate2.2 
@1486
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1487
EXIT 

CHAIN X3Reb25J initiate2.3 
@1488
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @1489
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")~ THEN @1490
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1491
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1492
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1493
== X3Reb25J @1494
EXIT 

CHAIN X3Reb25J initiate2.4 
@1495
EXIT 

CHAIN X3Reb25J initiate2.5
@1496
EXIT 

CHAIN X3Reb25J injured2A 
@1497
EXIT 

CHAIN X3Reb25J initiate2.6
@1498
EXIT

CHAIN X3Reb25J initiate2.7
@1499
= @1500
EXIT 

CHAIN X3Reb25J initiate2.8
@1501
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1502
EXIT 

CHAIN X3Reb25J initiate2.9
@1503 
= @1504
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1509
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @1510
EXIT 

CHAIN X3Reb25J dungeon2 
@1505
EXIT 

CHAIN X3Reb25J initiate2.10 
@1506
EXIT 

CHAIN X3Reb25J initiate2.11
@1507
EXIT 

CHAIN X3Reb25J initiate2.12
@1508
EXIT 

CHAIN X3Reb25J initiate2.13 
@1511
EXIT 

CHAIN X3Reb25J riddle1 
@1512
EXIT 

CHAIN X3Reb25J rep2 
@1513
EXIT 

CHAIN X3Reb25J injured2B 
@1514
EXIT 

CHAIN X3Reb25J initiate2.15 
@1515
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @1517
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @1518
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @1519
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ THEN @1516
== X3Kal25J IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Kal")~ THEN @1520
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Kal")~ THEN @1521
== X3Isa25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @1522
EXIT


CHAIN X3Reb25J night2 
@1523
EXIT 

CHAIN X3Reb25J initiate2.14
@1524
EXIT 

// Group Kiss from PID 
CHAIN X3Reb25J Group.Kiss 
@416
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @417
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @418
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @419
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @420
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")~ THEN @561
== X3Reb25J @421
== X3Reb25J @422
EXIT 


APPEND X3Reb25J

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @423
= @424
= @425
++ @426 + LBreak.1
++ @427 + LBreak.2 
++ @428 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @429
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @430
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @431
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @432
++ @433 + LBreak.5 
++ @434 + LBreak.6 
++ @435 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @436
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @437
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @438
IF ~~ EXIT 
END 

// Approval Break Point  


IF ~Global("X3Break","LOCALS",1)~ Break
SAY @439
= @440
++ @441 + Break.1 
++ @442 + Break.2 
++ @443 + Break.2
END 

IF ~~ Break.1
SAY @444
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @445 
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @446
++ @447 + Break.4
++ @448 + Break.5
++ @449 + Break.6 
END 

IF ~~ Break.4 
SAY @450
IF ~~ DO ~LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.5 
SAY @451
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.6
SAY @452
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~IncrementGlobal("X3Break","LOCALS",2)SetGlobal("X3RebApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@400416)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @453
= @454
// Recorder leaves the game. 
IF ~~ DO ~LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelQuestCutScene","GLOBAL",1)~ ScryFinish 
SAY @455 
++ @456 + ScryDead 
++ @457 + ScryDead 
++ @458 + ScryDead 
END 

IF ~~ ScryDead 
SAY @459
= @460
= @461
++ @462 + ScryDead.1
++ @463 + ScryDead.2
++ @464 + ScryDead.2
END 

IF ~~ ScryDead.1 
SAY @465
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.2 
SAY @466
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.3 
SAY @467
IF ~~ DO ~SetGlobal("X3HelToBQuest","GLOBAL",4)AddJournalEntry(@20020,QUEST)~ EXIT 
END 

IF ~~ Scry 
SAY @468
= @469
= @470
+~PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @471 + ScryStartNotPlane 
+~PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @471 DO ~EraseJournalEntry(@19)TakePartyItem("X3HGEM")~ + ScryStartPlane 
++ @472 + Scry.1 
++ @473 + Scry.2 
++ @474 + Scry.3
END 

IF ~~ Scry.1
SAY @475
IF ~~ EXIT 
END 

IF ~~ Scry.2 
SAY @476
++ @472 + Scry.1 
++ @474 + Scry.3
END 

IF ~~ Scry.3 
SAY @477
= @478
++ @472 + Scry.1 
++ @473 + Scry.2 
END 

IF ~~ ScryStartNotPlane 
SAY @479
IF ~~ EXIT
END  

IF ~~ ScryStartPlane 
SAY @480
IF ~~ DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Rcut03")~ EXIT  
END 

// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  @481
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ @482 DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@20019,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @483 DO ~EraseJournalEntry(@20019)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @483 DO ~EraseJournalEntry(@20019)~ + ScryStartPlane
++ @484 + Question.PID 
+~NumInPartyGT(2)~+ @485 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @485 + PersonalAlone.PID
++ @486 + PID.Music 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1630 + Flirts2
++ @559 + FixString
++ @487 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  @488
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ @482 DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@20019,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @483 DO ~EraseJournalEntry(@20019)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @483 DO ~EraseJournalEntry(@20019)~ + ScryStartPlane
++ @489 + Question.PID 
+~NumInPartyGT(2)~+ @485 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @485 + PersonalAlone.PID
++ @486 + PID.Music 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1630 + Flirts2
++ @559 + FixString
++ @487 EXIT 
END  

IF ~~ main.PID 
SAY  @490
++ @489 + Question.PID 
+~NumInPartyGT(2)~+ @485 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @485 + PersonalAlone.PID
++ @486 + PID.Music 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @1630 + Flirts2
++ @559 + FixString
++ @487 EXIT 
END  

IF ~~ Question.PID
SAY @491
+~PartyHasItem("X3ERing")Global("X3RebRomanceActive","GLOBAL",2)~+ @492 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ @493 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~Global("X3PIDCON2","LOCALS",0)~+ @494 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON4","LOCALS",0)~+ @495 DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ @496 + main.PID 
++ @497 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @498
+~PartyHasItem("X3ERing")Global("X3RebRomanceActive","GLOBAL",2)~+ @492 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ @493 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~Global("X3PIDCON2","LOCALS",0)~+ @494 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON4","LOCALS",0)~+ @495 DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ @496 + main.PID 
++ @497 EXIT 
END 

IF ~~ PID.Lantan 
SAY @499
= @500
= @501
++ @502 + PLantan.1
++ @503 + PLantan.2
++ @504 + PLantan.3
++ @505 + MoreQuestion.PID 
END 

IF ~~ PLantan.1
SAY @506
++ @507 + PLantan.2
++ @504 + PLantan.3
++ @505 + MoreQuestion.PID 
END 

IF ~~ PLantan.2 
SAY @508
= @509
++ @510 + PLantan.3
++ @505 + MoreQuestion.PID 
END 

IF ~~ PLantan.3 
SAY @511
= @512
++ @505 + MoreQuestion.PID
++ @513 EXIT 
END 

IF ~~ PID.Name 
SAY @514
++ @515 + PName.1 
++ @516 + PName.1
++ @517 + PName.1
++ @518 + PName.1
END 

IF ~~ PName.1 
SAY @519
= @520
++ @521 + PName.2 
++ @522 DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@400403)~ + PName.3 
++ @523 + PName.2 
END 

IF ~~ PName.2 
SAY @524
++ @505 + MoreQuestion.PID
++ @513 EXIT 
END 

IF ~~ PName.3 
SAY @525
++ @505 + MoreQuestion.PID
++ @513 EXIT 
END 

IF ~~ PID.Lore
SAY @526
= @527
= @528
++ @529 + PLore.1 
++ @530 + PLore.2
++ @505 + MoreQuestion.PID
++ @513 EXIT 
END

IF ~~ PLore.1 
SAY @531
= @532
IF ~~ + PLore.3 
END 

IF ~~ PLore.2 
SAY @533
= @534
IF ~~ + PLore.3 
END 


IF ~~ PLore.3 
SAY @535
++ @505 + MoreQuestion.PID
++ @513 EXIT 
END


IF ~~ PersonalGroup.PID 
SAY @536
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @537 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @537 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @538 + Group.Kiss
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @539 + BreakUp
++ @540 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @541
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @537 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @537 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @538 + Group.Kiss
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @539 + BreakUp
++ @540 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @542
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @543
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @544
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY @545
 ++ @546 + BU.1 
++ @547 + BU.2
++ @548 + BU.3 
++ @549 + BU.1 
END 

IF ~~ BU.1 
SAY @550
= @551
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@400409)~  EXIT 
END 

IF ~~ BU.2 
SAY @552
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-18)
DisplayStringNoNameDlg(Player1,@400409)~ EXIT 
END 

IF ~~ BU.3 
SAY @553
= @554
++ @555 + BU.4 
++ @556 + BU.1
END 

IF ~~ BU.4 
SAY @557
IF ~~ EXIT 
END 

IF ~~ PID.Music 
SAY @558
IF ~RandomNum(5,1)~ DO ~PlaySound("X3RFL1")~ EXIT 
IF ~RandomNum(5,2)~ DO ~PlaySound("X3RFL2")~ EXIT 
IF ~RandomNum(5,3)~ DO ~PlaySound("X3RFL3")~ EXIT 
IF ~RandomNum(5,4)~ DO ~PlaySound("X3RFL4")~ EXIT 
IF ~RandomNum(5,5)~ DO ~PlaySound("X3RFL5")~ EXIT 
END 

IF ~~ FixString 
SAY @560
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3RReset")~ EXIT 
END 


IF ~~ Flirts2
SAY @1526
++ @1527 DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + F.Night2
+~RandomNum(4,1)~+ @538 + Kiss1
+~RandomNum(4,2)~+ @538 + Kiss2
+~RandomNum(4,3)~+ @538 + Kiss3
+~RandomNum(4,4)!NumInParty(2)~+ @538 + Group.Kiss 
+~RandomNum(4,4)NumInParty(2)~+ @538 + Alone.Kiss
+~RandomNum(4,1)PartyHasItem("X3RingR")~+ @1625 + Ring1
+~RandomNum(4,2)PartyHasItem("X3RingR")~+ @1625 + Ring2
+~RandomNum(4,3)PartyHasItem("X3RingR")~+ @1625 + Ring3
+~RandomNum(4,4)PartyHasItem("X3RingR")~+ @1625 + Ring4
+~RandomNum(4,1)~+ @1530 + Cheek1
+~RandomNum(4,2)~+ @1530 + Cheek2
+~RandomNum(4,3)~+ @1530 + Cheek3
+~RandomNum(4,4)~+ @1530 + Cheek5
+~RandomNum(4,1)~+ @1536 + Compliment1
+~RandomNum(4,2)~+ @1536 + Compliment2
+~RandomNum(4,3)~+ @1536 + Compliment3
+~RandomNum(4,4)~+ @1536 + Compliment4
+~RandomNum(4,1)~+ @1548 + Hug1
+~RandomNum(4,2)~+ @1548 + Hug3
+~RandomNum(4,3)~+ @1548 + Hug4
+~RandomNum(4,4)~+ @1548 + Hug6
+~RandomNum(4,1)~+ @1554 + Hand1
+~RandomNum(4,2)~+ @1554 + Hand2
+~RandomNum(4,3)~+ @1554 + Hand3
+~RandomNum(4,4)~+ @1554 + Hand4
+~RandomNum(4,1)~+ @1555 + Dance2
+~RandomNum(4,2)~+ @1555 + Dance3 
+~RandomNum(4,3)~+ @1555 + Dance4
+~RandomNum(4,4)~+ @1555 + Dance5
+~RandomNum(4,1)~+ @1561 + Thank1
+~RandomNum(4,2)~+ @1561 + Thank2 
+~RandomNum(4,3)~+ @1561 + Thank3
+~RandomNum(4,4)~+ @1561 + Thank4
+~RandomNum(4,1)~+ @1571 + Hair1
+~RandomNum(4,2)~+ @1571 + Hair3 
+~RandomNum(4,3)~+ @1571 + Hair4
+~RandomNum(4,4)~+ @1571 + Hair5
+~RandomNum(4,1)~+ @1572 + Watch1
+~RandomNum(4,2)~+ @1572 + Watch2
+~RandomNum(4,3)~+ @1572 + Watch3
+~RandomNum(4,4)~+ @1572 + Watch4
+~RandomNum(4,1)~+ @1591 + Bottom1 
+~RandomNum(4,2)~+ @1591 + Bottom2 
+~RandomNum(4,3)~+ @1591 + Bottom3 
+~RandomNum(4,4)~+ @1591 + Bottom4
+~RandomNum(4,1)~+ @1596 + Caress1 
+~RandomNum(4,2)~+ @1596 + Caress2 
+~RandomNum(4,3)~+ @1596 + Caress3 
+~RandomNum(4,4)~+ @1596 + Caress4
+~RandomNum(4,1)~+ @1597 + Love1 
+~RandomNum(4,2)~+ @1597 + Love2 
+~RandomNum(4,3)~+ @1597 + Love3 
+~RandomNum(4,4)~+ @1597 + Love4
+~RandomNum(4,1)Global("X3Slept","LOCALS",2)~+ @1602 + Rub1
+~RandomNum(4,2)Global("X3Slept","LOCALS",2)~+ @1602 + Rub2
+~RandomNum(4,3)Global("X3Slept","LOCALS",2)~+ @1602 + Rub3
+~RandomNum(4,4)Global("X3Slept","LOCALS",2)~+ @1602 + Rub4
+~RandomNum(2,1)Global("X3Slept","LOCALS",2)Global("X3Slept","LOCALS",2)OR(2)AreaCheck("AR5501")
AreaCheck("AR5003")~+ @1607 + Bath1
+~RandomNum(2,2)Global("X3Slept","LOCALS",2)Global("X3Slept","LOCALS",2)OR(2)AreaCheck("AR5501")
AreaCheck("AR5003")~+ @1607 + Bath2
+~RandomNum(2,1)Global("X3Slept","LOCALS",2)AreaCheck("AR1100")OR(3)
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")~+ @1607 + Bath3
+~RandomNum(2,2)Global("X3Slept","LOCALS",2)OR(3)
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")~+ @1607 + Bath4
+ ~Global("X3DisableFlirts","LOCALS",0)~ + @1580 DO ~SetGlobal("X3DisableFlirts","LOCALS",1)~ + Flirt.Stop
+ ~Global("X3DisableFlirts","LOCALS",1)~ + @1581 DO ~SetGlobal("X3DisableFlirts","LOCALS",0)~ + Flirt.Start
END 

IF ~~ Cheek1 
SAY @1531
IF ~~ EXIT 
END 

IF ~~ Cheek2
SAY @1532
IF ~~ EXIT 
END 

IF ~~ Cheek3 
SAY @1533
IF ~~ EXIT 
END 

IF ~~ Cheek4 
SAY @1534
IF ~~ EXIT 
END 

IF ~~ Cheek5 
SAY @1535
IF ~~ EXIT 
END 

IF ~~ Compliment1
SAY @1537
IF ~~ EXIT 
END 

IF ~~ Compliment2
SAY @1538
IF ~~ EXIT 
END 

IF ~~ Compliment3
SAY @1539
IF ~~ EXIT 
END 

IF ~~ Compliment4
SAY @1540
IF ~~ EXIT 
END 

IF ~~ F.Night1 
SAY @1528
IF ~~ EXIT 
END 

IF ~~ F.Night2 
SAY @1529
IF ~~ EXIT 
END 

IF ~~ Hug1 
SAY @1541
IF ~~ EXIT 
END 

IF ~~ Hug2 
SAY @1542
IF ~~ EXIT 
END 

IF ~~ Hug3 
SAY @1543
= @1544
IF ~~ EXIT 
END 

IF ~~ Hug4 
SAY @1545
IF ~~ EXIT 
END 

IF ~~ Hug5 
SAY @1546
IF ~~ EXIT 
END 

IF ~~ Hug6 
SAY @1547
IF ~~ EXIT 
END 

IF ~~ Hand1 
SAY @1549
IF ~~ EXIT 
END 

IF ~~ Hand2
SAY @1550
IF ~~ EXIT 
END 

IF ~~ Hand3 
SAY @1551
IF ~~ EXIT 
END 

IF ~~ Hand4 
SAY @1552
IF ~~ EXIT 
END 

IF ~~ Hand5 
SAY @1553
IF ~~ EXIT 
END 

IF ~~ Dance1 
SAY @1556
IF ~~ EXIT 
END 

IF ~~ Dance2
SAY @1557
IF ~~ EXIT 
END 

IF ~~ Dance3 
SAY @1558
IF ~~ EXIT 
END 

IF ~~ Dance4 
SAY @1559
IF ~~ EXIT 
END 

IF ~~ Dance5 
SAY @1560
IF ~~ EXIT 
END 

IF ~~ Thank1 
SAY @1562
IF ~~ EXIT 
END 

IF ~~ Thank2 
SAY @1563
IF ~~ EXIT 
END 

IF ~~ Thank3 
SAY @1564 
IF ~~ EXIT 
END 

IF ~~ Thank4 
SAY @1565
IF ~~ EXIT 
END 

IF ~~ Hair1 
SAY @1566
IF ~~ EXIT 
END 

IF ~~ Hair2 
SAY @1567
IF ~~ EXIT 
END 

IF ~~ Hair3 
SAY @1568
IF ~~ EXIT 
END 

IF ~~ Hair4 
SAY @1569
IF ~~ EXIT 
END 

IF ~~ Hair5 
SAY @1570
IF ~~ EXIT 
END 

IF ~~ Watch1 
SAY @1573
IF ~!GlobalGT("X3RebBrynnTalk","LOCALS",2)~ + Watch1A 
IF ~GlobalGT("X3RebBrynnTalk","LOCALS",2)Global("X3RFAIL","GLOBAL",2)~ + Watch1B 
IF ~GlobalGT("X3RebBrynnTalk","LOCALS",2)!Global("X3RFAIL","GLOBAL",2)~ + Watch1C 
END 

IF ~~ Watch1A 
SAY @1574
IF ~~ EXIT 
END 

IF ~~ Watch1B
SAY @1575
IF ~~ EXIT 
END 

IF ~~ Watch1C 
SAY @1576
IF ~~ EXIT 
END 

IF ~~ Watch2 
SAY @1577 
IF ~~ EXIT 
END 

IF ~~ Watch3 
SAY @1578
IF ~~ EXIT 
END 

IF ~~ Watch4 
SAY @1579
IF ~~ EXIT 
END

IF ~~ Flirt.Stop 
SAY @1582
IF ~~ EXIT 
END 

IF ~~ Flirt.Start 
SAY @1583
IF ~~ EXIT 
END  

IF ~~ Kiss1 
SAY @1584
IF ~~ EXIT 
END 

IF ~~ Kiss2 
SAY @1585
IF ~~ EXIT 
END 

IF ~~ Kiss3 
SAY @1586
IF ~~ EXIT
END

IF ~~ Bottom1 
SAY @1587
IF ~~ EXIT 
END 

IF ~~ Bottom2
SAY @1588
IF ~~ EXIT 
END 

IF ~~ Bottom3 
SAY @1589
IF ~~ EXIT 
END 

IF ~~ Bottom4 
SAY @1590
IF ~~ EXIT 
END 

IF ~~ Caress1 
SAY @1592
IF ~~ EXIT 
END 

IF ~~ Caress2
SAY @1593
IF ~~ EXIT 
END 

IF ~~ Caress3 
SAY @1594
IF ~~ EXIT 
END 

IF ~~ Caress4 
SAY @1595
IF ~~ EXIT 
END 

IF ~~ Love1 
SAY @1598
IF ~~ EXIT 
END 

IF ~~ Love2
SAY @1599
IF ~~ EXIT 
END 

IF ~~ Love3
SAY @1600
IF ~~ EXIT 
END 

IF ~~ Love4 
SAY @1601
IF ~~ EXIT 
END 

IF ~~ Rub1
SAY @1603
IF ~~ EXIT 
END 

IF ~~ Rub2 
SAY @1604
IF ~~ EXIT 
END 

IF ~~ Rub3 
SAY @1605
IF ~~ EXIT 
END 

IF ~~ Rub4 
SAY @1606
IF ~~ EXIT 
END 

IF ~~ Bath1 
SAY @1608
= @1609
= @1610
= @1611
IF ~~ EXIT 
END 

IF ~~ Bath2 
SAY @1612
= @1613
= @1614
= @1615
IF ~~ EXIT 
END 

IF ~~ Bath3 
SAY @1616
= @1617
= @1618
= @1619
IF ~~ EXIT 
END 

IF ~~ Bath4 
SAY @1620
= @1621
= @1622
= @1623
= @1624
IF ~~ EXIT 
END 

IF ~~ Ring1
SAY @1626
IF ~~ EXIT 
END 

IF ~~ Ring2 
SAY @1627
IF ~~ EXIT 
END 

IF ~~ Ring3 
SAY @1628
IF ~~ EXIT 
END 

IF ~~ Ring4 
SAY @1629
IF ~~ EXIT 
END 

END 