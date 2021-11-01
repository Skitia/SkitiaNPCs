//Interjects: Non Essential 

//Watcher's Keep 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN @0
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@500503)~
END 

I_C_T GORAPP1 14 X3VieGORAPP1-14
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN @1
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@500513)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)!Alignment("X3Vie",NEUTRAL)~ THEN @0
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@500503)~
END 

I_C_T GORAPP1 16 X3VieGORAPP1-16
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)Alignment("X3Vie",NEUTRAL)~ THEN @1
DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@500513)~
END 

I_C_T GORAPP1 6 X3VieGORAPP1-6
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2
END 

I_C_T GORDEMO 18 X3VieGORDEMO 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @3
DO ~IncrementGlobal("X3VieApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@500516)~
END 

I_C_T GORDEMO 1 X3VieGORDEMO
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @4
END  

I_C_T FSRIDD 0 X3VieFSRIDD0
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @5
END  

I_C_T GORAPR 11 X3VieGORAPR 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @6
END 

I_C_T GORSUC01 7 X3VieGORSUC01 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @7
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@500506)~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Vie",LastTalkedToBy)~ EXTERN X3Vie25J Yackman
END

CHAIN X3Vie25J Yackman  
@8
EXTERN GORMAD1 10

I_C_T GORODR1 35 X3VieGORODR1-35
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @9
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @10
END 

I_C_T GORIMP01 0 X3VieGORIMP01
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @11
END  

//Pre-Saradush 
I_C_T SAREV25A 0 X3VieSAREV25A
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @12
END


//Saradush Interjects 

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J SARPROVF-Care
END

CHAIN X3Vie25J SARPROVF-Care 
@13
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPROVM 0
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J SARPROVF-Care
END

CHAIN X3Vie25J SARPROVM-Care 
@13
EXTERN SARPROVM 1

I_C_T SARKIS01 25 X3VieSARKIS01-25
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @14
END

I_C_T SARTHF1 13 X3VieSARTHF1-12
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL)~ THEN @15
DO ~SetGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@500516)~
== SARTHF1 @16
END 

I_C_T SARTHF1 12 X3VieSARTHF1-12
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL_EVIL)!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN @17
DO ~SetGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@500516)~
== SARTHF1 @18
END 

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3VieRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Vie") Gender(Player1,MALE)~  EXTERN X3Vie25J SarPro_No 
END 

I_C_T SARBUL05 2 X3VieSarbul05-2 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @19
DO ~IncrementGlobal("X3VieApp","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@500509)~
END

I_C_T SARBUL05 5 X3VieSarbul05-5 
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @20
DO ~IncrementGlobal("X3VieApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@500513)~
END




CHAIN X3Vie25J SarPro_No 
@21
END 
++ @22 EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ @23 EXTERN X3Vie25J SarPro_Break 
++ @24 EXTERN X3Vie25J SarPro_Yes 

CHAIN X3Vie25J SarPro_Yes 
@25
EXTERN SARPRO01 3

CHAIN X3Vie25J SarPro_Break 
@26
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieAppChange","GLOBAL",-12)DisplayStringNoNameDlg(Player1,@500509)~
EXTERN SARPRO01 12 

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~IsValidForPartyDialogue("X3Vie")!Global("X3VieRomanceActive","GLOBAL",2)~ + @27 + X3VieVoloBio1
+ ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2)~ + @27 + X3VieVoloBio2
END

CHAIN SARVOLO X3VieVoloBio1
@28
EXTERN X3Vie25J X3VieVoloBio


CHAIN SARVOLO X3VieVoloBio2
@29
EXTERN X3Vie25J X3VieVoloBio

CHAIN X3Vie25J X3VieVoloBio
@30
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGNYA01 29 X3VieHGNYA01-29
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @31
END

//Amkethran and Beyond

I_C_T BALTH 20 X3VieBalth20
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @32
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @33
END

I_C_T AMMAYOR 5 X3VIEAMMAYOR-5
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @34
END

I_C_T AMASANA 3 X3VieAMASANA-3
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")~ THEN @35
== AMASANA @36
END

I_C_T AMSAEMON 0 X3VieAMSAEMON2
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @37
END

I_C_T AMCLER01 8 X3HelAMCLER01-8
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Hel")~ THEN @38
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@500506)~ 
== AMCLER01 @39
END 

I_C_T AMSMITH 16 X3VieAMSMITH-16
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @40
END 

I_C_T MARLOWE 52 X3EmiMARLOWE-52 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN @41
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@500516)~ 
== MARLOWE @42
END 

I_C_T BAZEYE01 16 X3VieBAZEYE16
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @43
END 

I_C_T BAZPAT01 16 X3VieBAZPAT01-16
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @44
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @45
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @46
END 

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3VieSolarFriend1
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")!Global("X3VieRomanceActive","GLOBAL",2)~ THEN @47
END

// romanced, Vienxay and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarPers","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarPers
END

CHAIN X3Vie25J X3VieSolarPers
@48
= @49
END
+~Alignment("X3Vie",NEUTRAL)~+ @50 + FinalChoice.1A
+~!Alignment("X3Vie",NEUTRAL)~+ @50 + FinalChoice.1B
++ @51 + FinalChoice.2
++ @52 + FinalChoice.6

CHAIN X3Vie25J FinalChoice.1A 
@53
= @54
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.3
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.5

CHAIN X3Vie25J FinalChoice.1B
@55
= @56
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.5


CHAIN X3Vie25J FinalChoice.3
@57
EXTERN X3Vie25J FinalChoice.5

CHAIN X3Vie25J FinalChoice.4
@58
EXTERN X3Vie25J FinalChoice.5

CHAIN X3Vie25J FinalChoice.5
@59
END
COPY_TRANS FINSOL01 27

CHAIN X3Vie25J FinalChoice.6
@60
END
COPY_TRANS FINSOL01 27

CHAIN X3Vie25J FinalChoice.2 
@61
END 
IF ~PartyHasItem("X3RingE")Alignment("X3Vie",NEUTRAL)~ EXTERN X3Vie25J FinalChoice.3
IF ~PartyHasItem("X3RingE")!Alignment("X3Vie",NEUTRAL)~ EXTERN X3Vie25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J FinalChoice.5




// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarLeave","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarLeave","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarLeave","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarLeave
END

CHAIN X3Vie25J X3VieSolarLeave
@62
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Vie") Global("X3VieRomanceActive","GLOBAL",2) Global("X3VieSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3VieSolarStay","GLOBAL",1)~ EXTERN X3Vie25J X3VieSolarStay
END

CHAIN X3Vie25J X3VieSolarStay
@63
END
++ @64 EXTERN X3Vie25J X3VieSolarStay1.1
++ @65 EXTERN X3Vie25J X3VieSolarStay1.1
++ @66 EXTERN X3Vie25J X3VieSolarStay1.1

CHAIN X3Vie25J X3VieSolarStay1.1
@67
END
IF ~PartyHasItem("X3RingE")~ EXTERN X3Vie25J StayChoice.1
IF ~!PartyHasItem("X3RingE")~ EXTERN X3Vie25J StayChoice.2


CHAIN X3Vie25J StayChoice.1 
@68
END 
COPY_TRANS FINSOL01 32

CHAIN X3Vie25J StayChoice.2
@69
END 
COPY_TRANS FINSOL01 32



//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25J engagement 
@70
DO ~SetGlobal("X3Engagement","LOCALS",2)~
END 
++ @71 + engagement_yes 
++ @72 + engagement_yes 
++ @73 + engagement_doubts

CHAIN X3Vie25J engagement_yes 
@74
DO ~TransformItem("X3ERING","X3RINGV")~
EXTERN X3Vie25J engagement_yes2 

CHAIN X3Vie25J engagement_doubts
@75
EXTERN X3Vie25J engagement_yes

CHAIN X3Vie25J engagement_yes2 
@76
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @77
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @78
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3Vie25J engagement_auto_fail 
@79
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @80 + eaf.1 
++ @81 + eaf.2
++ @82 + eaf.4

CHAIN X3Vie25J eaf.1 
@83
EXTERN X3Vie25J eaf.3 

CHAIN X3Vie25J eaf.2 
@84
EXTERN X3Vie25J eaf.3

CHAIN X3Vie25J eaf.4 
@85
EXTERN X3Vie25J eaf.3

CHAIN X3Vie25J eaf.3
@86
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @87
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN @88
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN @89
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

// Talk1 = I feel like Irenicus.
CHAIN IF ~Global("X3VieToBTalk","LOCALS",2)~ THEN X3Vie25J FriendshipTalk1 
@90
DO ~IncrementGlobal("X3VieToBTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @91 + F1.1
++ @92 + F1.2
++ @93 + F1.2 

CHAIN X3Vie25J F1.1  
@94
EXTERN X3Vie25J F1.3 

CHAIN X3Vie25J F1.2 
@95
EXTERN X3Vie25J F1.3 

CHAIN X3Vie25J F1.3 
@96
= @97
END 
++ @98 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + F1.4 
++ @99 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~  + F1.5
++ @100 + F1.6

CHAIN X3Vie25J F1.4 
@101
= @102
EXTERN X3Vie25J F1.7

CHAIN X3Vie25J F1.5 
@103
= @104
EXTERN X3Vie25J F1.7

CHAIN X3Vie25J F1.6
@105
= @106
EXTERN X3Vie25J F1.7

CHAIN X3Vie25J F1.7
@107
EXIT 

// Friendship Talk #2

CHAIN IF ~Global("X3VieToBTalk","LOCALS",4)~ THEN X3Vie25J FriendshipTalk2
@108
DO ~IncrementGlobal("X3VieToBTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @109 + F2.1
++ @110 + F2.1 
++ @111 + F2.X 

CHAIN X3Vie25J F2.X 
@112
EXIT 

CHAIN X3Vie25J F2.1
@113
= @114
= @115
END 
++ @116 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + F2.2 
++ @117 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + F2.3 
++ @118 + F2.4

CHAIN X3Vie25J F2.2 
@119
= @120
EXIT 

CHAIN X3Vie25J F2.3 
@121
EXTERN X3Vie25J F2.5

CHAIN X3Vie25J F2.5 
@122
EXIT 

CHAIN X3Vie25J F2.4 
@123
EXTERN X3Vie25J F2.5 

// Friendship Talk #3

CHAIN IF ~Global("X3VieToBTalk","LOCALS",6)~ THEN X3Vie25J FriendshipTalk3 
@124
DO ~IncrementGlobal("X3VieToBTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @125 + FT.1
++ @126 + FT.2 
++ @127 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + FT.4

CHAIN X3Vie25J FT.1 
@128
EXTERN X3Vie25J FT.3

CHAIN X3Vie25J FT.2 
@129
EXTERN X3Vie25J FT.3

CHAIN X3Vie25J FT.3 
@130
END 
++ @131 + FT.7
++ @132 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + FT.7
++ @133 + FT.7

CHAIN X3Vie25J FT.7 
@134
= @135
END 
++ @136 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + FT.8
++ @137 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + FT.10
++ @138 + FT.9

CHAIN X3Vie25J FT.8
@139
= @140
EXIT 

CHAIN X3Vie25J FT.9 
@141
EXIT 

CHAIN X3Vie25J FT.10 
@142
EXIT 

CHAIN X3Vie25J FT.4
@143
END 
++ @144 + FT.3 
++ @145 + FT.5 
++ @146 + FT.3 

CHAIN X3Vie25J FT.5 
@147
END 
++ @144 + FT.3 
++ @148 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + FT.6
++ @146 + FT.3 

CHAIN X3Vie25J FT.6 
@149
= @150
EXIT 

//ToB Love Talks 

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",2)~ THEN X3Vie25J LoveTalk1 
@151
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @152 + 1.1 
++ @153 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.2 
++ @154 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.3 
++ @155 + 1.X 

CHAIN X3Vie25J 1.X
@156
EXIT 

CHAIN X3Vie25J 1.1 
@157
EXTERN X3Vie25J 1.4 

CHAIN X3Vie25J 1.2 
@158
EXTERN X3Vie25J 1.4 

CHAIN X3Vie25J 1.3 
@159
EXTERN X3Vie25J 1.4 

CHAIN X3Vie25J 1.4 
@160
END 
++ @161 + 1.5 
++ @162 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.5 
++ @163 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 1.9

CHAIN X3Vie25J 1.5
@164
END 
++ @165 + 1.6
++ @166 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.7
++ @167 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 1.8

CHAIN X3Vie25J 1.8
@168
END 
++ @169 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.12
++ @170 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.11
++ @171 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 1.10

CHAIN X3Vie25J 1.9
@172
EXIT 

CHAIN X3Vie25J 1.10
@173
EXIT 


CHAIN X3Vie25J 1.6
@174
END 
++ @175 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.13
++ @176 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 1.12
++ @177 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 1.10

CHAIN X3Vie25J 1.7
@178
END 
++ @179 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 1.13
++ @180 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 1.12
++ @181 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 1.10




CHAIN X3Vie25J 1.11 
@182
EXTERN X3Vie25J 1.14

CHAIN X3Vie25J 1.12 
@183
EXTERN X3Vie25J 1.14

CHAIN X3Vie25J 1.13
@184
EXTERN X3Vie25J 1.14 

CHAIN X3Vie25J 1.14 
@185
= X3Vie25J ~I owe you more of those for the pillar you are to me.~
END 
++ @187 + 1.15 
++ @188 + 1.16 
++ @189 + 1.17

CHAIN X3Vie25J 1.15 
@190
EXIT 

CHAIN X3Vie25J 1.16 
@191
EXIT 

CHAIN X3Vie25J 1.17
@192
EXIT 

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",4)~ THEN X3Vie25J LoveTalk2 
@193
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)IncrementGlobal("X3VieAppChange","GLOBAL",7)~
END 
++ @194 + 2.1 
++ @195 + 2.1
++ @196 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.X 

CHAIN X3Vie25J 2.1 
@197
END 
++ @198 + 2.2
++ @199 + 2.3
++ @200 + 2.4

CHAIN X3Vie25J 2.4 
@201
= @202
END 
++ @203 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 2.5
++ @204 + 2.5
++ @205 EXIT 

CHAIN X3Vie25J 2.5 
@206
= @207
EXIT 

CHAIN X3Vie25J 2.3 
@208
EXTERN X3Vie25J 2.2

CHAIN X3Vie25J 2.2
@209
END 
++ @210 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 2.6
++ @211 + 2.7
++ @212 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 2.8

CHAIN X3Vie25J 2.6
@213
= @214
= @215
EXIT 

CHAIN X3Vie25J 2.7
@216
EXTERN X3Vie25J 2.9

CHAIN X3Vie25J 2.8
@217
EXTERN X3Vie25J 2.9

CHAIN X3Vie25J 2.9
@218
= @219
EXIT 

CHAIN X3Vie25J 2.X 
@220
EXIT 

// Vienxay's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3VieRomanceActive","GLOBAL",2) InParty("X3Vie") See("X3Vie")~ EXTERN HGWRA01 X3VieWraith1
END

CHAIN HGWRA01 X3VieWraith1
@221
DO ~SetGlobal("X3LovedOne","GLOBAL",4)~
== X3Vie25J @222
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",4)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3VW1")~ EXIT
END

BEGIN X3VLOVE 

CHAIN 
IF ~Global("X3VieWraithSpirit1","GLOBAL",0)~ THEN X3VLOVE X3VieWraithSpirit1
@223
DO ~SetGlobal("X3VieWraithSpirit1","GLOBAL",1)~
== X3Vie25J @224
== X3VLOVE @225
== X3Vie25J @226
== X3VLOVE @227
== X3Vie25J @228
== X3VLOVE @229
== X3Vie25J @230
== X3VLOVE @231
== X3Vie25J @232 
END 
++ @233 EXTERN HGWRA01 25
++ @234 EXTERN HGWRA01 25
++ @235 EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + @236 EXTERN HGWRA01 25 

//Post Vienxay Wraith

CHAIN IF ~Global("X3VieWraithTalk","LOCALS",1)~ THEN X3Vie25J Wraith //(Shade)
@237
DO ~IncrementGlobal("X3VieWraithTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @238 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + W.1 
++ @239 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + W.2 
++ @240 + W.3
++ @241  + W.X 

CHAIN X3Vie25J W.1
@242
END 
++ @243 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.4 
++ @244 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + W.6
++ @245 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.5

CHAIN X3Vie25J W.2 
@246
END 
++ @243 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.4 
++ @244 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + W.6
++ @245 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.5

CHAIN X3Vie25J W.3
@247
END 
++ @243 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.4 
++ @244 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + W.6
++ @245 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + W.5

CHAIN X3Vie25J W.4 
@248
EXTERN X3Vie25J W.7

CHAIN X3Vie25J W.5
@249
EXTERN X3Vie25J W.7

CHAIN X3Vie25J W.6
@250
EXTERN X3Vie25J W.7

CHAIN X3Vie25J W.7
@251
END 
++ @252 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + W.8
++ @253 + W.8
++ @254 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + W.9

CHAIN X3Vie25J W.8
@255
= @256
EXIT 

CHAIN X3Vie25J W.9
@257
EXIT 

CHAIN X3Vie25J W.X 
@258
EXIT 

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",6)~ THEN X3Vie25J LoveTalk3 
@259
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~

END 
++ @260 + 3.1 
++ @261 + 3.2 
++ @262 + 3.3

CHAIN X3Vie25J 3.1
@263
EXTERN X3Vie25J 3.3 

CHAIN X3Vie25J 3.2 
@264
EXTERN X3Vie25J 3.3 

CHAIN X3Vie25J 3.3 
@265
END 
++ @266 + 3.4 
++ @267 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 3.5
++ @268 + 3.6 

CHAIN X3Vie25J 3.6
@269
END 
++ @270 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-3)~ + 3.7
++ @271 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 3.8
++ @272 + 3.9

CHAIN X3Vie25J 3.7
@273
EXIT 

CHAIN X3Vie25J 3.8
@274
EXIT 

CHAIN X3Vie25J 3.9
@275
EXIT 

CHAIN X3Vie25J 3.4
@276
END 
++ @277 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-2)~ + 3.10 
++ @278 + 3.11 
++ @279 + 3.12 

CHAIN X3Vie25J 3.10 
@280
EXIT 

CHAIN X3Vie25J 3.11 
@281
EXIT 

CHAIN X3Vie25J 3.12 
@282
EXIT 

CHAIN X3Vie25J 3.5
@283
END 
++ @284 + 3.13 
++ @285 + 3.14 
++ @286 + 3.15

CHAIN X3Vie25J 3.13 
@287
EXIT 

CHAIN X3Vie25J 3.14 
@288
EXIT 

CHAIN X3Vie25J 3.15 
@289
EXIT 


//LoveTalk4
CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",8)~ THEN X3Vie25J LoveTalk4 
@290
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
IF ~!Global("X3VEvermeetEnd","GLOBAL",1)~ EXTERN X3Vie25J 4.NoEvermeet
IF ~Global("X3VEvermeetEnd","GLOBAL",1)~ EXTERN X3Vie25J 4.Evermeet 

CHAIN X3Vie25J 4.NoEvermeet
@291
= @292
END 
++ @293 + 4.N1 
++ @294 + 4.N1  
++ @295 + 4.N2

CHAIN X3Vie25J 4.N1 
@296
EXTERN X3Vie25J 4.N2 

CHAIN X3Vie25J 4.N2 
@297
= @298
END 
++ @299 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.N3 
++ @300 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.N4 
++ @301 + 4.N5

CHAIN X3Vie25J 4.N3 
@302
EXIT 

CHAIN X3Vie25J 4.N4 
@303
EXIT 

CHAIN X3Vie25J 4.N5 
@304
EXTERN X3Vie25J 4.N3 

CHAIN X3Vie25J 4.Evermeet 
@305
END 
IF ~!Race(Player1,Elf)~ EXTERN X3Vie25J 4.NoElf
IF ~Race(Player1,Elf)~ EXTERN X3Vie25J 4.Elf 

CHAIN X3Vie25J 4.NoElf 
@306
END 
++ @307 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.NE1
++ @308 + 4.N2
++ @309 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.NE3

CHAIN X3Vie25J 4.NE1 
@310
EXTERN X3Vie25J 4.N2 

CHAIN X3Vie25J 4.NE3 
@311
EXTERN X3Vie25J 4.N2 

CHAIN X3Vie25J 4.Elf 
@312
END 
++ @313 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 4.E1
++ @314 + 4.N2
++ @309 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 4.NE3

CHAIN X3Vie25J 4.E1 
@315
EXTERN X3Vie25J 4.N2 

// Romance Talk #5

CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",10)~ THEN X3Vie25J LoveTalk5
@316
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @317 + 5.1
++ @318 + 5.2 
++ @319 + 5.X 

CHAIN X3Vie25J 5.2 
@320
EXTERN X3Vie25J 5.1

CHAIN X3Vie25J 5.1 
@321
= @322
END 
++ @323 + 5.3 
++ @324 + 5.4
++ @325 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.4

CHAIN X3Vie25J 5.3 
@326
END 
++ @327 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.5
++ @328 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.6 
++ @329 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 5.7

CHAIN X3Vie25J 5.4 
@330
END 
++ @331 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.8
++ @332 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",2)~ + 5.7 
++ @333 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.5

CHAIN X3Vie25J 5.8 
@334
END 
++ @335 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",-1)~ + 5.5
++ @336 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.9
++ @332 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.7 

CHAIN X3Vie25J 5.6 
@337
END 
++ @338 + 5.5
++ @339 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.9
++ @340 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",1)~ + 5.5

CHAIN X3Vie25J 5.9
@341
EXIT 

CHAIN X3Vie25J 5.7
@342
EXIT 

CHAIN X3Vie25J 5.5 
@343
EXIT 

CHAIN X3Vie25J 5.X 
@344
EXIT 

// Post Sendai 
CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",12)~ THEN X3Vie25J LoveTalk6
@345
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)~
END 
++ @346 + 6.1 
++ @347 + 6.2
++ @348 + 6.X 

CHAIN X3Vie25J 6.X 
@349
EXIT 

CHAIN X3Vie25J 6.1 
@350
EXTERN X3Vie25J 6.3 

CHAIN X3Vie25J 6.2 
@351
EXTERN X3Vie25J 6.3 

CHAIN X3Vie25J 6.3 
@352
= @353
EXIT 

// Finale, after the last test in the pocket plane.
CHAIN IF ~Global("X3VieToBLoveTalk","LOCALS",14)~ THEN X3Vie25J FinalLoveTalk 
@354
DO ~IncrementGlobal("X3VieToBLoveTalk","LOCALS",1)SetGlobal("X3VieAppChange","GLOBAL",6)~
END 
++ @355 + 7.1 
++ @356 + 7.2  
++ @357 + 7.3 

CHAIN X3Vie25J 7.1 
@358
EXTERN X3Vie25J 7.4

CHAIN X3Vie25J 7.2 
@359
EXTERN X3Vie25J 7.4

CHAIN X3Vie25J 7.3 
@360
EXTERN X3Vie25J 7.4

CHAIN X3Vie25J 7.4
@361
= @362
END 
++ @363 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",3)~ + 7.5 
++ @364 DO ~IncrementGlobal("X3VieAppChange","GLOBAL",5)~ + 7.6
++ @365  + 7.7

CHAIN X3Vie25J 7.5 
@366
EXTERN X3Vie25J 7.5

CHAIN X3Vie25J 7.6 
@367
EXIT 

CHAIN X3Vie25J 7.7
@368
EXTERN X3Vie25J 7.6

// Group Kiss from PID 
CHAIN X3Vie25J Group.Kiss 
@369
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @370
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @371
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @372
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @373
== X3Vie25J @374
== X3Vie25J @375
EXIT

APPEND X3Vie25J

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @376
= @377
= @378
++ @379 + LBreak.1
++ @380 + LBreak.2 
++ @381 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @382
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @383
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @384
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3VieRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @385
++ @386 + LBreak.5 
++ @387 + LBreak.6 
++ @388 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @389
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @390
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @391
IF ~~ EXIT 
END 

// Approval Break Point 
IF ~Global("X3Break","LOCALS",1)~ Break
SAY @392
= @393
++ @394 + Break.1 
++ @395 + Break.2 
++ @396 + Break.8
END 

IF ~~ Break.1
SAY @397
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @398 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY @399
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY @400
++ @401 + Break.4
++ @402 + Break.5
++ @403 + Break.6 
END 

IF ~~ Break.4 
SAY @404
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @405
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @406
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3VieApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@500516)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @407
= @408
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelQuestCutScene","GLOBAL",1)~ ScryFinish 
SAY @409 
++ @410 + ScryDead 
++ @411 + ScryDead 
++ @412 + ScryDead 
END 

IF ~~ ScryDead 
SAY @413
= @414
= @415
++ @416 + ScryDead.1
++ @417 + ScryDead.2
++ @418 + ScryDead.2
END 

IF ~~ ScryDead.1 
SAY @419
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.2 
SAY @420
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.3 
SAY @421
IF ~~ DO ~SetGlobal("X3HelToBQuest","GLOBAL",4)AddJournalEntry(@20019,QUEST)~ EXIT 
END 
// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])!GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  @422
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ @423 DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@20015,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @424 DO ~EraseJournalEntry(@20015)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @424 DO ~EraseJournalEntry(@20015)~ + ScryStartPlane
++ @425 + Question.PID 
+~NumInPartyGT(2)~+ @426 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @426 + PersonalAlone.PID 
++ @513 + FixString
++ @427 EXIT 
END 


IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  @428
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ @423 DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@20015,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @424 DO ~EraseJournalEntry(@20015)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @424 DO ~EraseJournalEntry(@20015)~ + ScryStartPlane
++ @425 + Question.PID 
+~NumInPartyGT(2)~+ @426 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @426 + PersonalAlone.PID 
++ @513 + FixString
++ @427 EXIT 
END 

IF ~~ Scry 
SAY @429
= @430
= @431
+~PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ @432 + ScryStartNotPlane 
+~PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ @432 DO ~EraseJournalEntry(@20015)TakePartyItem("X3HGEM")~ + ScryStartPlane 
++ @433 + Scry.1 
++ @434 + Scry.2 
++ @435 + Scry.3
END 

IF ~~ Scry.1
SAY @436
IF ~~ EXIT 
END 

IF ~~ Scry.2 
SAY @437
++ @434 + Scry.2 
++ @435 + Scry.3
END 

IF ~~ Scry.3 
SAY @438
= @439
++ @433 + Scry.1 
++ @434 + Scry.2 
END 

IF ~~ ScryStartNotPlane 
SAY @440
IF ~~ EXIT 
END 

IF ~~ ScryStartPlane 
SAY @441
IF ~~ DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Vcut02")~ EXIT 
END 

IF ~~ main.PID 
SAY  @442 
++ @443 + Question.PID 
+~NumInPartyGT(2)~+ @444 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @444 + PersonalAlone.PID 
++ @513 + FixString
++ @445 EXIT 
END  

IF ~~ Question.PID
SAY @446
+~PartyHasItem("X3ERing")Global("X3VieRomanceActive","GLOBAL",2)~+ @447 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ @448 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)!Global("X3VieEvermeet","GLOBAL",1)~+ @449 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ @450 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ @451 DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ @452 DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ @453 + main.PID 
++ @454 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @455 
+~PartyHasItem("X3ERing")Global("X3VieRomanceActive","GLOBAL",2)~+ @447 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ @448 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Evermeet
+~Global("X3PIDCON1","LOCALS",1)!Global("X3VieEvermeet","GLOBAL",1)~+ @449 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ @450 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Exile 
+~Global("X3PIDCON2","LOCALS",1)~+ @451 DO ~SetGlobal("X3PIDCON2","LOCALS",2)~ + PID.Mentor 
+~Global("X3PIDCON3","LOCALS",0)~+ @452 DO ~SetGlobal("X3PIDCON3","LOCALS",0)~ + PID.Law
++ @453 + main.PID
++ @456 EXIT 
END 

IF ~~ PID.Evermeet 
SAY @457 
= @458
= @459
++ @460 + PEvermeet.1 
++ @461 + PEvermeet.2 
++ @462 + PEvermeet.3
++ @453 + MoreQuestion.PID 
END 

IF ~~ PEvermeet.1 
SAY @463
++ @464 + PEvermeet.2 
++ @462 + PEvermeet.3
++ @453 + MoreQuestion.PID 
++ @456 EXIT 
END 

IF ~~ PEvermeet.2 
SAY @465
++ @453 + main.PID
++ @456 EXIT 
END 

IF ~~ PEvermeet.3 
SAY @466
++ @453 + MoreQuestion.PID 
++ @456 EXIT 
END 

IF ~~ PID.Family 
SAY @467
= @468
= @469
++ @470 + PFamily.1 
++ @471 + PFamily.2 
++ @472 + PFamily.3
END 

IF ~~ PFamily.1 
SAY @473
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY @474
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY @475
IF ~~ + PFamily.4 
END 

IF ~~ PFamily.4 
SAY @476
++ @453 + MoreQuestion.PID 
++ @477 EXIT 
END 

IF ~~ PID.Exile 
SAY @478
= @479
= @480
= @481
++ @482 + PExile.1 
++ @483 + PExile.2 
++ @484 + PExile.3
END 

IF ~~ PExile.1 
SAY @485
= @486
++ @483 + PExile.2 
++ @484 + PExile.3
++ @453 + main.PID
END 

IF ~~ PExile.2 
SAY @487
++ @484 + PExile.3
++ @453 + MoreQuestion.PID 
++ @477 EXIT 
END 

IF ~~ PExile.3 
SAY @488
= @489
= @490
++ @453 + MoreQuestion.PID 
++ @477 EXIT 
END 

IF ~~ PID.Mentor 
SAY @491
= @492
= @493
++ @453 + MoreQuestion.PID 
++ @477 EXIT 
END 

IF ~~ PID.Law 
SAY @494
= @495
++ @496 + PLaw.1 
++ @497 + PLaw.2 
++ @498 + PLaw.3
END 

IF ~~ PLaw.1 
SAY @499
IF ~~ + PLaw.3 
END 

IF ~~ PLaw.2 
SAY @500
IF ~~ + PLaw.3
END  

IF ~~ PLaw.3 
SAY @501
++ @453 + MoreQuestion.PID 
++ @477 EXIT 
END 


IF ~~ PersonalGroup.PID 
SAY @502
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @503 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @503 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @504 + Group.Kiss
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @505 + BreakUp
++ @506 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @502
// Vienxay is Rest Invite #5. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @503 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Normal 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @503 DO ~SetGlobal("X3RestInvite","GLOBAL",5)~ + ForceRestTalk.Love
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @504 + Group.Kiss
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @507 + BreakUp
++ @506 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @508
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @509
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @510
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY @511
= @512
IF ~~ DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)IncrementGlobal("X3VieApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@500509)~ EXIT 
END 

IF ~~ FixString
SAY @514
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3VReset")~ EXIT 
END 

END 