//Interjections: Non-Essential
//Watcher's Keep

I_C_T GORAPP1 16 X3KalGORAPP1-16
== X3Kal25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @0
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@300313)~
END 

I_C_T GORAPP1 6 X3KalGORAPP1-6
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1
END 


I_C_T GORDEMO 24 X3KalGORDEMO 
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2
END 


I_C_T FSDRAGON 0 X3KalFSDRAGON
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @3
END   

I_C_T FSSPIR2 1 X3KalFSSPIR2-1
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @4
END    

I_C_T GORSAL 0 X3KalGORSAL0 
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @5
END   


I_C_T GORGIT 2 X3KalGORGIT2
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @6
END   

I_C_T GORCAMB 17 X3KalGorcamb17
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @7
END  


I_C_T GORSUC01 7 X3KalGORSUC01 
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ @8
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Kal",LastTalkedToBy)~ EXTERN X3Kal25J Yackman
END

CHAIN X3Kal25J Yackman  
@9
EXTERN GORMAD1 10

I_C_T GORODR1 44 X3KalGORODR1-44
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @10
END 

//Pre-Saradush 

I_C_T SAREV25A 0 X3KalSAREV25A
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN @11
END

I_C_T SAREV25A 10 X3KalSAREV25A
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @12
END

//Saradush Interjects 

A_T_T SARPROVM 0 ~!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)~ DO 0

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3KalRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Kal")~ EXTERN X3Kal25J SARPROVF-Care
END

CHAIN X3Kal25J SARPROVF-Care 
@13
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPROVM 0
IF ~Global("X3KalRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Kal")~ EXTERN X3Kal25J SARPROVF-Care
END

CHAIN X3Kal25J SARPROVM-Care 
@13
EXTERN SARPROVM 1


I_C_T SARCNT01 9 X3KalSARCNT01-9
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @14
END 

I_C_T SARBAR01 21 X3KalSARBAR01-21
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @15
END 

I_C_T SARBHA02 1 X3HelSARBHA02-1
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @16
END

I_C_T SARMEL01 45 X3KalSARMEL01-45
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @17
END

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3KalRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Kal") Gender(Player1,MALE)~  EXTERN X3Kal25J SarPro_No 
END 

CHAIN X3Kal25J SarPro_No 
@18
END 
++ @19 EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ @20 EXTERN X3Kal25J SarPro_Break 
++ @21 EXTERN X3Kal25J SarPro_Yes 

CHAIN X3Kal25J SarPro_Yes 
@22
EXTERN SARPRO01 3

CHAIN X3Kal25J SarPro_Break 
@23
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)SetGlobal("X3KalApp","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@400409)~
EXTERN SARPRO01 12 

// Volo's obligatory interjection in Saradush.

EXTEND_BOTTOM SARVOLO 9
+ ~InParty("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ + @24 + X3KalVoloBio1
+ ~InParty("X3Kal")Global("X3KalRomanceActive","GLOBAL",2)~ + @24 + X3KalVoloBio2
END

CHAIN SARVOLO X3KalVoloBio1
@25
END 
IF ~!IsValidForPartyDialog("X3Kal")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialog("X3Kal")~ EXTERN X3Kal25J X3KalVoloBio


CHAIN SARVOLO X3KalVoloBio2
@26
END 
IF ~!IsValidForPartyDialog("X3Kal")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialog("X3Kal")~ EXTERN X3Kal25J X3KalVoloBio


CHAIN X3Kal25J X3KalVoloBio
@27
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGNYA01 15 X3KalHGNYA01-15
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @28
END

// Amkethran and Beyond

I_C_T AMMAYOR 5 X3KalAMMAYOR-5
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Vie")~ THEN @29
END

I_C_T AMMONK02 3 X3KalAMMONK02-3
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @30
END

I_C_T AMSAEMON 0 X3KalAMSAEMON2
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @31
END

I_C_T AMSMITH 16 X3KalAMSMITH-16
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @32
END 

I_C_T BAZEYE01 9 X3KalBAZEYE9
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @33
END 

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3KalSolarFriend1
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ THEN @34
END

// romanced, Kale and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarPers","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarPers
END

CHAIN X3Kal25J X3KalSolarPers
@35
END
++ @36 + FinalChoice.1
++ @37 + FinalChoice.2
++ @38 + FinalChoice.1

CHAIN X3Kal25J FinalChoice.1 
@39
= @40
END 
IF ~PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.3
IF ~!PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.4


CHAIN X3Kal25J FinalChoice.3
@41
EXTERN X3Kal25J FinalChoice.4

CHAIN X3Kal25J FinalChoice.4
@42
END
COPY_TRANS FINSOL01 27

CHAIN X3Kal25J FinalChoice.2 
@43
END 
IF ~PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.3
IF ~!PartyHasItem("X3RingK")~ EXTERN X3Kal25J FinalChoice.4



// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarLeave","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarLeave","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarLeave","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarLeave
END

CHAIN X3Kal25J X3KalSolarLeave
@44
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3KalSolarStay","GLOBAL",1)~ EXTERN X3Kal25J X3KalSolarStay
END

CHAIN X3Kal25J X3KalSolarStay
@45
END
++ @46 EXTERN X3Kal25J X3KalSolarStay1.1
++ @47 EXTERN X3Kal25J X3KalSolarStay1.1
++ @48 EXTERN X3Kal25J X3KalSolarStay1.1

CHAIN X3Kal25J X3KalSolarStay1.1
@49
END
IF ~PartyHasItem("X3RingK")~ EXTERN X3Kal25J StayChoice.1
IF ~!PartyHasItem("X3RingK")~ EXTERN X3Kal25J StayChoice.2

CHAIN X3Kal25J StayChoice.1 
@50
END 
COPY_TRANS FINSOL01 32

CHAIN X3Kal25J StayChoice.2
@51
END 
COPY_TRANS FINSOL01 32


//Talks

CHAIN IF ~Global("X3KalToBTalk","LOCALS",2)~ THEN X3Kal25J FriendshipTalk1 
@52
DO ~IncrementGlobal("X3KalToBTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @53 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T1.1 
++ @54 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.2
++ @55 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T1.3 

CHAIN X3Kal25J T1.1 
@56
EXTERN X3Kal25J T1.4

CHAIN X3Kal25J T1.2 
@57
EXTERN X3Kal25J T1.4

CHAIN X3Kal25J T1.3
@58
EXTERN X3Kal25J T1.4

CHAIN X3Kal25J T1.4
@59
= @60
END 
++ @61 + T1.5 
++ @62 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.6 
++ @63 + T1.7

CHAIN X3Kal25J T1.5
@64
EXTERN X3Kal25J T1.8

CHAIN X3Kal25J T1.6
@65
EXTERN X3Kal25J T1.8

CHAIN X3Kal25J T1.7
@66
EXTERN X3Kal25J T1.8

CHAIN X3Kal25J T1.8
@67
EXIT 

// Friendship Talk #2

CHAIN IF ~Global("X3KalToBTalk","LOCALS",4)~ THEN X3Kal25J FriendshipTalk2 
@68
DO ~IncrementGlobal("X3KalToBTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @69 + T2.1
++ @70 + T2.1 
++ @71 + T2.2

CHAIN X3Kal25J T2.2
@72
END 
++ @73 + T2.3 
++ @74 + T2.3 
++ @75 + T2.3

CHAIN X3Kal25J T2.3 
@76
EXTERN X3Kal25J T2.1

CHAIN X3Kal25J T2.1
@77
= @78
= @79
END 
++ @80 + T2.4
++ @81 + T2.5
++ @82 + T2.4 
++ @83 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T2.X 

CHAIN X3Kal25J T2.X 
@84
EXIT 

CHAIN X3Kal25J T2.5 
@85
EXTERN X3Kal25J T2.3 

CHAIN X3Kal25J T2.4
@86
END 
++ @87 + T2.6
++ @88 + T2.7
++ @89 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.8

CHAIN X3Kal25J T2.6
@90
EXIT 

CHAIN X3Kal25J T2.7
@91
EXIT 

CHAIN X3Kal25J T2.8
@92
= @93
EXIT 

// Friendship Talk #3

CHAIN IF ~Global("X3KalToBTalk","LOCALS",6)~ THEN X3Kal25J FriensdhipTalk3 
@94
DO ~IncrementGlobal("X3KalToBTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @95 + T3.1
++ @96 + T3.2
++ @97 + T3.3 
++ @98 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.X 

CHAIN X3Kal25J T3.X 
@99
EXIT 

CHAIN X3Kal25J T3.3 
@100
EXTERN X3Kal25J T3.2 

CHAIN X3Kal25J T3.2 
@101
END 
// Kale will get the Mazzy Ending only if the player isn't in a romance with Mazzy via mod, Kale is Lawful Neutral, and they have had their single banter.
IF ~Global("X3KalMazzyEnd","GLOBAL",1)~ EXTERN X3Kal25J T3.Mazzy 
IF ~!Global("X3KalMazzyEnd","GLOBAL",1)~ EXTERN X3Kal25J T3.Default

CHAIN X3Kal25J T3.1 
@102
EXTERN X3Kal25J T3.2 

CHAIN X3Kal25J T3.Default 
@103
= @104
= @105 
END 
++ @106 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.D1
++ @107 + T3.D2
++ @108 + T3.3D

CHAIN X3Kal25J T3.D1 
@109
= @110
EXTERN X3Kal25J T3.D7 

CHAIN X3Kal25J T3.3D 
@111
EXTERN X3Kal25J T3.D7

CHAIN X3Kal25J T3.D2 
@112
EXTERN X3Kal25J T3.D7 

CHAIN X3Kal25J T3.D7
@113
END 
++ @114 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.D4 
++ @115 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.D5 
++ @116 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.D6
++ @117 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.D8

CHAIN X3Kal25J T3.D8 
@118
EXIT 

CHAIN X3Kal25J T3.D6 
@119
EXIT 

CHAIN X3Kal25J T3.D5 
@120
EXIT 

CHAIN X3Kal25J T3.D4 
@121
EXIT 
// Only happens if Kale is lawful (maybe) and Mazzy is in the party.
CHAIN X3Kal25J T3.Mazzy 
@122
= @123
== MAZZY25J IF ~IsValidForPartyDialogue("MAZZY")~ THEN @124
== X3Kal25J IF ~IsValidForPartyDialogue("MAZZY")~ THEN @125 
END 
++ @126 + T3.M1 
++ @127 + T3.M2 
++ @128 + T3.M3 

CHAIN X3Kal25J T3.M1 
@129
EXTERN X3Kal25J T3.M4

CHAIN X3Kal25J T3.M2 
@130
EXTERN X3Kal25J T3.M4

CHAIN X3Kal25J T3.M3 
@131
EXTERN X3Kal25J T3.M4

CHAIN X3Kal25J T3.M4 
@132
END 
++ @133 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + T3.M5
++ @134 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.M6 
++ @135 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T3.M7

CHAIN X3Kal25J T3.M5 
@136
EXTERN X3Kal25J T3.M8

CHAIN X3Kal25J T3.M6 
@137
EXIT 

CHAIN X3Kal25J T3.M7
@138
EXTERN X3Kal25J T3.M8

CHAIN X3Kal25J T3.M8
@139
EXIT 

//Romance Talks 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",2)~ THEN X3Kal25J LoveTalk1 
@140
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)~
END 
++ @141 + 1.1 
++ @142 + 1.2 
++ @143 + 1.3

CHAIN X3Kal25J 1.1
@144
EXTERN X3Kal25J 1.4

CHAIN X3Kal25J 1.2
@145
EXTERN X3Kal25J 1.4

CHAIN X3Kal25J 1.3
@146
EXTERN X3Kal25J 1.4

CHAIN X3Kal25J 1.4
@147
END 
++ @148 + 1.5
++ @149 + 1.6
++ @150 + 1.X 

CHAIN X3Kal25J 1.X 
@151
EXIT 

CHAIN X3Kal25J 1.5
@152
EXTERN X3Kal25J 1.7

CHAIN X3Kal25J 1.6
@153
EXTERN X3Kal25J 1.7

CHAIN X3Kal25J 1.7
@154
END 
++ @155 + 1.8
++ @156 + 1.7
++ @157 + 1.8

CHAIN X3Kal25J 1.8
@158
EXTERN X3Kal25J 1.10

CHAIN X3Kal25J 1.9
@159
EXTERN X3Kal25J 1.10

CHAIN X3Kal25J 1.10
@160
EXIT 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",4)~ THEN X3Kal25J LoveTalk2
@161
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @162 + 2.1
++ @163 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.2 
++ @164 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 2.2 

CHAIN X3Kal25J 2.1
@165
= @166
END 
++ @167 + 2.3
++ @168 + 2.4
++ @169 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.5

CHAIN X3Kal25J 2.2
@170
= @171
END 
++ @167 + 2.3
++ @168 + 2.4
++ @169 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.5

CHAIN X3Kal25J 2.3
@172
EXTERN X3Kal25J 2.4

CHAIN X3Kal25J 2.4
@173
END 
++ @174 + 2.10 
++ @175 + 2.12 
++ @176 + 2.11

CHAIN X3Kal25J 2.5
@177
END 
IF ~!Race(Player1,HALFLING)!Race(Player1,DWARF)Race(Player1,GNOME)~ + 2.6
IF ~OR(2)Race(Player1,DWARF)Race(Player1,GNOME)~ + 2.7
IF ~Race(Player1,HALFLING)~ + 2.8

CHAIN X3Kal25J 2.6
@178
END 
++ @179 + 2.9
++ @180 + 2.10
++ @176 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.11

CHAIN X3Kal25J 2.7
@181
END 
++ @179 + 2.9
++ @180 + 2.10
++ @176 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.11

CHAIN X3Kal25J 2.8
@182
END 
++ @179 + 2.9
++ @180 + 2.10
++ @176 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.11

CHAIN X3Kal25J 2.9
@183
EXIT 

CHAIN X3Kal25J 2.10
@184
EXIT 

CHAIN X3Kal25J 2.11 
@185
EXIT 

CHAIN X3Kal25J 2.12
@186
EXIT 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",6)~ THEN X3Kal25J LoveTalk3 
@187
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @188 + 3.1 
++ @189 + 3.1 
++ @190 + 3.1 
++ @191 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 3.2 
++ @192 + 3.X

CHAIN X3Kal25J 3.X 
@193
EXIT 

CHAIN X3Kal25J 3.1
@194
END 
++ @195 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.3
++ @196 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 3.4
++ @197 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 3.5

CHAIN X3Kal25J 3.2 
@198
= @199
END 
++ @195 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.3
++ @196 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 3.4
++ @197 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 3.5

CHAIN X3Kal25J 3.3 
@200
= @201
EXTERN X3Kal25J 3.6

CHAIN X3Kal25J 3.6
@202
EXIT 

CHAIN X3Kal25J 3.4
@203
EXIT 

CHAIN X3Kal25J 3.5
@204
= @205
EXTERN X3Kal25J 3.6

//Kale Wraith Talk 
// Kale's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3KalRomanceActive","GLOBAL",2) InParty("X3Kal") See("X3Kal")~ EXTERN HGWRA01 X3KalWraith1
END

CHAIN HGWRA01 X3KalWraith1
@206
DO ~SetGlobal("X3LovedOne","GLOBAL",2)~
== X3Kal25J @207
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3KW1")~ EXIT
END

BEGIN X3KLove 

CHAIN 
IF ~Global("X3KalWraithSpirit1","GLOBAL",0)~ THEN X3KLove X3KalWraithSpirit1
@208
DO ~SetGlobal("X3KalWraithSpirit1","GLOBAL",1)~
== X3Kal25J @209
== X3KLove @210
== X3Kal25J @211
== X3KLove @212
== X3Kal25J @213
== X3KLove @214
== X3Kal25J @215
== X3KLove @216
== X3Kal25J @217 
END 
++ @218 EXTERN HGWRA01 25
++ @219 EXTERN HGWRA01 25
++ @220 EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + @221 EXTERN HGWRA01 25 


//Post Wraith Event 
CHAIN IF ~Global("X3KalWraithTalk","LOCALS",1)~ THEN X3Kal25J WraithTalk 
@222
DO ~IncrementGlobal("X3KalWraithTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @223 + W.1 
++ @224 + W.2
++ @225 + W.1

CHAIN X3Kal25J W.1 
@226
EXTERN X3Kal25J W.3 

CHAIN X3Kal25J W.2 
@227
EXTERN X3Kal25J W.3 

CHAIN X3Kal25J W.3 
@228
END 
++ @229 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + W.5
++ @230 + W.7
++ @231 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + W.4

CHAIN X3Kal25J W.4 
@232
EXTERN X3Kal25J W.6

CHAIN X3Kal25J W.5 
@233
EXTERN X3Kal25J W.6

CHAIN X3Kal25J W.7
@234
EXTERN X3Kal25J W.6

CHAIN X3Kal25J W.6
@235
EXIT 

//Love Talk #4
CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",8)~ THEN X3Kal25J LoveTalk4 
@236
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @237 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.1
++ @238 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.2
++ @239 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 4.3 

CHAIN X3Kal25J 4.1
@240
EXTERN X3Kal25J 4.2 

CHAIN X3Kal25J 4.3 
@241
EXTERN X3Kal25J 4.2 

CHAIN X3Kal25J 4.2 
@242
= @243
END 
++ @244 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.14
++ @245 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.4
++ @246 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 4.5

CHAIN X3Kal25J 4.14 
@247
EXTERN X3Kal25J 4.6

CHAIN X3Kal25J 4.4
@248
EXTERN X3Kal25J 4.6

CHAIN X3Kal25J 4.5
@249
EXTERN X3Kal25J 4.6

CHAIN X3Kal25J 4.6
@250
END 
++ @251 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.7
++ @252  + 4.8
++ @253 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.9

CHAIN X3Kal25J 4.7
@254
EXTERN X3Kal25J 4.10

CHAIN X3Kal25J 4.8
@255
EXTERN X3Kal25J 4.10 

CHAIN X3Kal25J 4.9
@256
EXTERN X3Kal25J 4.10 

CHAIN X3Kal25J 4.10
@257
END 
++ @258 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.11 
++ @259 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.12
++ @260 + 4.13
++ @261 EXIT 

CHAIN X3Kal25J 4.11
@262
DO ~StartCutSceneMode()
	FadeToColor([20.0],0)
	Wait(2)
		FadeFromColor([20.0],0)
	EndCutSceneMode()~ 
EXIT 

CHAIN X3Kal25J 4.12
@263
= @264
DO ~StartCutSceneMode()
	FadeToColor([20.0],0)
	Wait(2)
		FadeFromColor([20.0],0)
	EndCutSceneMode()~ 
EXIT 

CHAIN X3Kal25J 4.13
@265
EXIT 

// Love Talk #5
CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",10)~ THEN X3Kal25J LoveTalk5 
@266
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @267 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 5.1 
++ @268  + 5.2 
++ @269 + 5.X

CHAIN X3Kal25J 5.X
@270
EXIT 

CHAIN X3Kal25J 5.1 
@271
EXTERN X3Kal25J 5.3

CHAIN X3Kal25J 5.2
@272
EXTERN X3Kal25J 5.3

CHAIN X3Kal25J 5.3 
@273
END 
++ @274 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 5.4 
++ @275  + 5.5 
++ @276 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 5.6

CHAIN X3Kal25J 5.4
@277
= @278
END 
++ @279 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + 5.7
++ @280 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + 5.7 
++ @281 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",4)~ + 5.8

CHAIN X3Kal25J 5.7
@282
= @283
= @284
EXIT 

CHAIN X3Kal25J 5.8
@285
= @286
EXIT 

CHAIN X3Kal25J 5.5
@287
= @288
EXIT 

CHAIN X3Kal25J 5.6
@289
EXIT 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",12)~ THEN X3Kal25J LoveTalk6
@290
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @291 + 6.1 
++ @292 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.1 
++ @293 + 6.2

CHAIN X3Kal25J 6.1 
@294
EXTERN X3Kal25J 6.3

CHAIN X3Kal25J 6.2 
@295
EXTERN X3Kal25J 6.3 

CHAIN X3Kal25J 6.3
@296
END 
++ @297 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 6.4
++ @298  DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.4
++ @299 + 6.5

CHAIN X3Kal25J 6.4
@300
= @301
EXTERN X3Kal25J 6.6

CHAIN X3Kal25J 6.6
@302
EXIT 

CHAIN X3Kal25J 6.5
@303
EXTERN X3Kal25J 6.6

// Final Love Talk 

CHAIN IF ~Global("X3KalToBLoveTalk","LOCALS",14)~ THEN X3Kal25J LoveTalk7
@304
DO ~IncrementGlobal("X3KalToBLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @305 + 7.1
++ @306 + 7.2
++ @307 + 7.3

CHAIN X3Kal25J 7.1
@308
= @309
= @310
= @311
END 
++ @312 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.8
++ @313 + 7.7
++ @314 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 7.4

CHAIN X3Kal25J 7.4
@315
END 
++ @316 + 7.6
++ @317 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 7.5
++ @318 + 7.6
++ @319 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.5

CHAIN X3Kal25J 7.5
@320
= @321
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~ 
EXIT 

CHAIN X3Kal25J 7.6
@322
EXIT 

CHAIN X3Kal25J 7.7
@323
END 
++ @324 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.8
++ @318 + 7.6
++ @314 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 7.4

CHAIN X3Kal25J 7.2
@325
EXTERN X3Kal25J 7.1

CHAIN X3Kal25J 7.3
@326
EXTERN X3Kal25J 7.1

CHAIN X3Kal25J 7.8
@327
END 
IF ~NumInPartyGT(4)~ EXTERN X3Kal25J 7.9A 
IF ~!NumInPartyGT(4)~ EXTERN X3Kal25J 7.9B 

CHAIN X3Kal25J 7.9A 
@328
EXTERN X3Kal25J 7.10 

CHAIN X3Kal25J  7.9B 
@329
EXTERN X3Kal25J 7.10

CHAIN X3Kal25J 7.10
@330
= @331
END 
++ @332 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.1
++ @333 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.11
++ @334 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 7.11

CHAIN X3Kal25J 7.11
@335
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @336
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @337
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @338
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @339
EXTERN X3Kal25J 7.12 

CHAIN X3Kal25J 7.12
@340
EXIT 


//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25J engagement 
@341
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @342 + engagement_yes
++ @343 + engagement_yes
++ @344 + engagement_yes

CHAIN X3Kal25J engagement_yes 
@345
= @346
= @347
DO ~TransformItem("X3ERING","X3RINGK")~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @348
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @349
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")~ THEN @489
EXIT 







CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3Kal25J engagement_auto_fail 
@341
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @350 + eaf.1 
++ @351 + eaf.2
++ @352 + eaf.4

CHAIN X3Kal25J eaf.1 
@353
EXTERN X3Kal25J eaf.3 

CHAIN X3Kal25J eaf.2 
@354
EXTERN X3Kal25J eaf.3

CHAIN X3Kal25J eaf.4 
@355
EXTERN X3Kal25J eaf.3

CHAIN X3Kal25J eaf.3
@356
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN @357
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN @358
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @359
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

CHAIN X3Kal25J initiate2.4
@1331
END 
IF ~True()~ EXTERN X3Kal25J initiate2.41
IF ~RandomNum(5,1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3Vie25J generalresponse4
IF ~RandomNum(5,2)IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J generalresponse4 
IF ~RandomNum(5,3)IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J generalresponse4
IF ~RandomNum(5,4)IsValidForPartyDialogue("X3Hel")~ EXTERN X3Hel25J generalresponse4
IF ~RandomNum(5,5)IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J generalresponse4  

CHAIN X3Kal25J initiate2.5
@1332
END 
IF ~True()~ EXTERN X3Kal25J initiate2.41
IF ~RandomNum(5,1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3Vie25J generalresponse4
IF ~RandomNum(5,3)IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J generalresponse4
IF ~RandomNum(5,4)IsValidForPartyDialogue("X3Hel")~ EXTERN X3Hel25J generalresponse4
IF ~RandomNum(5,5)IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J generalresponse4 
IF ~RandomNum(5,2)IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J generalresponse4 


CHAIN X3Reb25J generalresponse4 
@1333
EXTERN X3Kal25J initiate2.42 

CHAIN X3Isa25J generalresponse4 
@1335
EXTERN X3Kal25J initiate2.42 

CHAIN X3Emi25J generalresponse4 
@1336 
EXTERN X3Kal25J initiate2.42 

CHAIN X3Hel25J generalresponse4 
@1334
EXTERN X3Kal25J initiate2.42 

CHAIN X3Vie25J generalresponse4 
@1337
EXTERN X3Kal25J initiate2.42 

CHAIN X3Kal25J initiate2.41
@1338
EXIT 

CHAIN X3Kal25J initiate2.42
@1339
EXIT 

CHAIN X3Kal25J initiate2.9
@1350
END 
IF ~True()~ EXTERN X3Kal25J initiate2.91
IF ~RandomNum(5,1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3Vie25J generalresponse4
IF ~RandomNum(5,2)IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J generalresponse4 
IF ~RandomNum(5,4)IsValidForPartyDialogue("X3Hel")~ EXTERN X3Hel25J generalresponse4
IF ~RandomNum(5,5)IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J generalresponse4 
IF ~RandomNum(5,3)IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J generalresponse4
 

CHAIN X3Kal25J initiate2.91
@1351
EXIT 

CHAIN X3Kal25J initiate2.14
@1359
END 
++ @1360 + initiate2.14.1
++ @1361 + initiate2.14.2
++ @1362 + initiate2.14.1

CHAIN X3Kal25J initiate2.14.1
@1363
END 
IF ~True()~ EXTERN X3Kal25J initiate2.14.3
IF ~RandomNum(5,1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3Vie25J generalresponse4
IF ~RandomNum(5,5)IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J generalresponse4 
IF ~RandomNum(5,2)IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J generalresponse4 
IF ~RandomNum(5,3)IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J generalresponse4
IF ~RandomNum(5,4)IsValidForPartyDialogue("X3Hel")~ EXTERN X3Hel25J generalresponse4


CHAIN X3Kal25J initiate2.14.2
@1365
END 
IF ~True()~ EXTERN X3Kal25J initiate2.14.3
IF ~RandomNum(5,5)IsValidForPartyDialogue("X3Reb")~ EXTERN X3Reb25J generalresponse4 
IF ~RandomNum(5,1)IsValidForPartyDialogue("X3Vie")~ EXTERN X3Vie25J generalresponse4
IF ~RandomNum(5,2)IsValidForPartyDialogue("X3Emi")~ EXTERN X3Emi25J generalresponse4 
IF ~RandomNum(5,3)IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J generalresponse4
IF ~RandomNum(5,4)IsValidForPartyDialogue("X3Hel")~ EXTERN X3Hel25J generalresponse4


CHAIN X3Kal25J initiate2.14.3
@1364
EXIT 

// Group Kiss from PID 
CHAIN X3Kal25J Group.Kiss 
@360
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @361
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @362
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @363
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @364
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")~ THEN @490
== X3Kal25J @365
EXTERN X3Kal25J Solo.Kiss 

CHAIN X3Kal25J Solo.Kiss
@366
EXIT 

APPEND X3Kal25J



//Level 2 Flirts 
IF WEIGHT #-1 ~Global("X3KalStartFlirt","GLOBAL",1)Global("X3KalRomanceActive","GLOBAL",2)~ flirtlevel2
SAY @1322

 IF ~~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.1
IF ~RandomNum(20,1)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.2
IF ~RandomNum(20,2)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.3
IF ~RandomNum(20,3)!Race(Player1,DWARF)!Race(Player1,HALFLING)!Race(Player1,GNOME)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.4
IF ~RandomNum(20,4)OR(3)Race(Player1,DWARF)Race(Player1,HALFLING)Race(Player1,GNOME)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.5
IF ~RandomNum(20,5) HPPercentLT("X3Kal",50) ~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + injured2A
IF ~RandomNum(20,6)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.6
IF ~RandomNum(20,7)Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.7
IF ~RandomNum(20,8)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.8
IF ~RandomNum(20,9) AreaType(DUNGEON)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + dungeon2
IF ~RandomNum(20,10)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.9
IF ~RandomNum(20,11)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.10
IF ~RandomNum(20,12)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.11
IF ~RandomNum(20,13)Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.12
IF ~RandomNum(20,14)Global("X3KalPartyBG1","GLOBAL",1)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.13
IF ~RandomNum(20,15) ReputationGT(Player1,16)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate16
IF ~RandomNum(20,16) HPPercentLT(Player1,75)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + injured2B
IF ~RandomNum(20,17)Global("X3Slept","LOCALS",2) CheckStatGT(Player1,16,INT)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + highint1
IF ~RandomNum(20,18)OR(2)
AreaCheck("AR5501")
AreaCheck("AR5003")~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.15
IF ~RandomNum(20,19) OR(2)TimeOfDay(NIGHT)TimeOfDay(DUSK)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + night2
IF ~RandomNum(20,20)~ DO ~SetGlobal("X3KalStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3KalFlirtTimer","GLOBAL",2700)~ + initiate2.14
END 

IF ~~ initiate2.1
SAY @1323
IF ~~ EXIT 
END 

IF ~~ initiate2.2
SAY @1324
++ @1325 + initiate2.21
++ @1326 + initiate2.22
++ @1327 + initiate2.21
END 

IF ~~ initiate2.21
SAY @1329
IF ~~ EXIT 
END 

IF ~~ initiate2.22
SAY @1328
IF ~~ EXIT 
END 

IF ~~ initiate2.3
SAY @1329
IF ~~ EXIT 
END 

IF ~~ injured2A
SAY @1340
IF ~~ EXIT 
END 

IF ~~ initiate2.6
SAY @1341
IF ~~ EXIT 
END 

IF ~~ initiate2.7
SAY @1342
++ @1343 + initiate2.71
++ @1344 + initiate2.72
++ @1345 + initiate2.73
END 

IF ~~ initiate2.71
SAY @1346
IF ~~ EXIT 
END 

IF ~~ initiate2.72
SAY @1347
IF ~~ EXIT 
END 

IF ~~ initiate2.73
SAY @1348
IF ~~ EXIT 
END 

IF ~~ initiate2.8
SAY @1349
IF ~~ EXIT 
END 

IF ~~ dungeon2 
SAY @1350
IF ~~ EXIT 
END 

IF ~~ initiate2.10
SAY @1352
IF ~~ EXIT 
END 

IF ~~ initiate2.11
SAY @1353
IF ~~ EXIT 
END 

IF ~~ initiate2.12
SAY @1354
IF ~~ EXIT 
END 

IF ~~ initiate2.13 
SAY @1355
= @1356
IF ~~ EXIT 
END 

IF ~~ initiate2.15 
SAY @1357
= @1358
IF ~~ EXIT 
END 


IF ~~ initiate16
SAY @1366
= @1367
IF ~~ EXIT 
END 

IF ~~ injured2B
SAY @1368
= @1369
IF ~~ EXIT 
END 

IF ~~ highint1 
SAY @1370
IF ~~ EXIT 
END 

IF ~~ night2 
SAY @1371
IF ~~ EXIT 
END 

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @367
= @368
= @369
++ @370 + LBreak.1
++ @371 + LBreak.2 
++ @372 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @373
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @374
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @375
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @376
++ @377 + LBreak.5 
++ @378 + LBreak.6 
++ @379 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @380
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @381
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @382
IF ~~ EXIT 
END 

// Approval Break Point

IF ~Global("X3Break","LOCALS",1)~ Break
SAY @383 
= @384
++ @385 + Break.1 
++ @386 + Break.2 
++ @387 + Break.8
END 

IF ~~ Break.1
SAY @388
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @389 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY @390
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY @391
++ @392 + Break.4
++ @393 + Break.5
++ @394 + Break.6 
END 

IF ~~ Break.4 
SAY @395
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @396
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @397
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3KalApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@300316)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @398
= @399
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY @400
++ @401 + Question.PID 
+~NumInPartyGT(2)~+ @402 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @402 + PersonalAlone.PID 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1207 + Flirts2
++ @487 + FixString
++ @403 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY @404 
++ @405 + Question.PID 
+~NumInPartyGT(2)~+ @402 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @402 + PersonalAlone.PID 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1207 + Flirts2
++ @487 + FixString
++ @403 EXIT 
END  

IF ~~ main.PID 
SAY @406
++ @405 + Question.PID 
+~NumInPartyGT(2)~+ @407 + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ @407 + PersonalAlone.PID 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1207 + Flirts2
++ @487 + FixString
++ @403 EXIT 
END  

IF ~~ Question.PID
SAY @408
+~PartyHasItem("X3ERing")Global("X3KalRomanceActive","GLOBAL",2)~+ @409 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ @410 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ @411 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ @412 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ @413 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ @414 + main.PID 
++ @415 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @416
+~PartyHasItem("X3ERing")Global("X3KalRomanceActive","GLOBAL",2)~+ @409 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ @410 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ @411 DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ @412 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ @413 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ @414 + main.PID
++ @417 EXIT 
END 

IF ~~ PID.Family 
SAY @418
= @419
= @420
++ @421 + PFamily.1 
++ @422 + PFamily.1 
++ @423 + PFamily.2
++ @414 + main.PID 
END

IF ~~ PFamily.1 
SAY @424
IF ~~ + PFamily.2
END 

IF ~~ PFamily.2 
SAY @425
= @426
++ @427 + PFamily.3 
++ @428 + PFamily.4
++ @429 + PFamily.5
++ @414 + main.PID 
END

IF ~~ PFamily.3 
SAY @430
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PFamily.4 
SAY @432
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PFamily.5 
SAY @433
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PID.Gullykin 
SAY @434
= @435
++ @436 + PGully.1 
++ @437 + PGully.2
++ @414 + main.PID 
END 

IF ~~ PGully.1 
SAY @438
= @439
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PGully.2 
SAY @440
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PID.Faith
SAY @441
= @442
= @443
++ @444 + PFaith.1 
++ @445 + PFaith.2 
++ @446 + PFaith.3
++ @431 EXIT 
END 

IF ~~ PFaith.1 
SAY @447
IF ~~ + PFaith.2 
END 

IF ~~ PFaith.2 
SAY @448
= @449
= @450
++ @451 + PFaith.4
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PFaith.3 
SAY @452
++ @445 + PFaith.2 
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PFaith.4
SAY @453
IF ~~ EXIT 
END 

IF ~~ PID.Cloak
SAY @454
= @455
++ @456 + PCloak.1 
++ @457 + PCloak.2 
++ @458 + PCloak.3
++ @414 + main.PID 
 END 
 
IF ~~ PCloak.1 
SAY @459
++ @460 + PCloak.4
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PCloak.2 
SAY @461
++ @462 + PCloak.5
++ @460 + PCloak.4
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PCloak.3 
SAY @463
++ @462 + PCloak.5
++ @460 + PCloak.4
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PCloak.4 
SAY @464
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.5 
SAY @465
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.6 
SAY @466
++ @414 + main.PID 
++ @431 EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY @467
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @468 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @468 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @469 + Group.Kiss
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @470 + BreakUp
++ @471 EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY @472
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @473 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @473 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @469 + Group.Kiss
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @470 + BreakUp
++ @471 EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY @474
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @475
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY @476
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY @477
++ @478 + BU.1 
++ @479 + BU.2 
++ @480 + BU.3 
++ @481 + BU.4
END 

IF ~~ BU.1 
SAY @482
IF ~~ + BU.5 
END 

IF ~~ BU.2 
SAY @483
IF ~~ + BU.5 
END 

IF ~~ BU.3 
SAY @484
IF ~~ + BU.5 
END 

IF ~~ BU.4 
SAY @485
IF ~~ + BU.5 
END 

IF ~~ BU.5 
SAY @486
IF ~~ DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@300309)~ EXIT 
END 

IF ~~ FixString
SAY @488
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3KReset")~ EXIT 
END 

//Flirts - PID - RomanceActive = 2 
IF ~~ Flirts2 
SAY @1209
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @1211 DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + F.Night2 //-
+~RandomNum(4,1)~+ @1372 + R2.1A
+~RandomNum(4,2)~+ @1372 + R2.1B
+~RandomNum(4,3)~+ @1372 + R2.1C
+~RandomNum(4,4)!NumInParty(2)~+ @1372 + Group.Kiss 
+~RandomNum(4,4)NumInParty(2)~+ @1372 + Solo.Kiss
+~RandomNum(4,1)~+ @1374 + R.2A
+~RandomNum(4,2)~+ @1374 + R.2B
+~RandomNum(4,3)~+ @1374 + R.2C
+~RandomNum(4,4)~+ @1374 + R2.2D
+~RandomNum(4,1)~+ @1375 + R.3A
+~RandomNum(4,2)~+ @1375 + R.3B
+~RandomNum(4,3)~+ @1375 + R.3C
+~RandomNum(4,4)~+ @1375 + R.3D
+~RandomNum(4,1)~+ @1376 + R.4A
+~RandomNum(4,2)~+ @1376 + R2.4B
+~RandomNum(4,3)~+ @1376 + R.4C
+~RandomNum(4,4)~+ @1376 + R.4D
+~RandomNum(2,1)!Race(Player1,HALFLING)!Race(Player1,GNOME)!RACE(Player1,DWARF)CheckStatLT(Player1,16,STR)~+ @1377 + R.5A
+~RandomNum(2,2)!Race(Player1,HALFLING)!Race(Player1,GNOME)!RACE(Player1,DWARF)CheckStatLT(Player1,16,STR)~+ @1377 + R.5B
+~RandomNum(3,1)!Race(Player1,HALFLING)!Race(Player1,GNOME)!RACE(Player1,DWARF)CheckStatGT(Player1,15,STR)~+ @1377 + R.5C
+~RandomNum(3,2)!Race(Player1,HALFLING)!Race(Player1,GNOME)!RACE(Player1,DWARF)CheckStatGT(Player1,15,STR)~+ @1377 + R.5D
+~RandomNum(3,3)!Race(Player1,HALFLING)!Race(Player1,GNOME)!RACE(Player1,DWARF)CheckStatGT(Player1,15,STR)~+ @1377 + R.5E
+~RandomNum(3,1)~+ @1378 + R.6C
+~RandomNum(3,2)~+ @1378 + R.6D
+~RandomNum(3,3)~+ @1378 + R.6E
+~RandomNum(4,1)~+ @1379 + R.7A
+~RandomNum(4,2)~+ @1379 + R.7B
+~RandomNum(4,3)~+ @1379 + R.7C
+~RandomNum(4,4)~+ @1379 + R.7D
+~RandomNum(4,1)~+ @1380 + R.8A
+~RandomNum(4,2)~+ @1380 + R.8B
+~RandomNum(4,3)~+ @1380 + R.8C
+~RandomNum(4,4)~+ @1380 + R.8D
+~RandomNum(2,1)
OR(2)
AreaCheck("AR5501")
AreaCheck("AR5003")GlobalGT("X3Slept","LOCALS",0)~+ @1381 + R.9A
+~RandomNum(2,2)
OR(2)
AreaCheck("AR5501")
AreaCheck("AR5003")GlobalGT("X3Slept","LOCALS",0)~+ @1381 + R.9B
+~RandomNum(2,1)
OR(3)
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")GlobalGT("X3Slept","LOCALS",0)~+ @1381 + R.9C
+~RandomNum(2,2)
OR(3)
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")GlobalGT("X3Slept","LOCALS",0)~+ @1381 + R.9D
+~RandomNum(4,1)~+ @1382 + R.10A
+~RandomNum(4,2)~+ @1382 + R.10B
+~RandomNum(4,3)~+ @1382 + R.10C
+~RandomNum(4,4)~+ @1382 + R.10D
+~RandomNum(4,1)~+ @1383 + R.11A
+~RandomNum(4,2)~+ @1383 + R.11B
+~RandomNum(4,3)~+ @1383 + R.11C
+~RandomNum(4,4)~+ @1383 + R.11D
+~RandomNum(4,1)~+ @1384 + R.12A 
+~RandomNum(4,2)~+ @1384 + R.12B 
+~RandomNum(4,3)~+ @1384 + R.12C 
+~RandomNum(4,4)~+ @1384 + R.12D 
+~RandomNum(3,1)~+ @1385 + R.13A 
+~RandomNum(3,2)~+ @1385 + R.13B
+~RandomNum(3,3)~+ @1385 + R.13D
+~RandomNum(4,1)PartyHasItem("X3RingK")~+ @1469 + R.14A 
+~RandomNum(4,2)PartyHasItem("X3RingK")~+ @1469 + R.14B
+~RandomNum(4,3)PartyHasItem("X3RingK")~+ @1469 + R.14C
+~RandomNum(4,4)PartyHasItem("X3RingK")~+ @1469 + R.14D
++ @1210 EXIT // -
END 

IF ~~ F.Night1 
SAY @1212
IF ~~ EXIT 
END 

IF ~~ F.Night2 
SAY @1213
IF ~~ EXIT 
END 

IF ~~ R2.1A
SAY @1388
IF ~~ EXIT 
END 

IF ~~ R2.1B
SAY @1389
IF ~~ EXIT 
END 

IF ~~ R2.1C 
SAY @1390
IF ~~ EXIT 
END 

IF ~~ R1.1A
SAY @1391
IF ~~ EXIT 
END 

IF ~~ R1.1B
SAY @1392
IF ~~ EXIT 
END 

IF ~~ R1.1C 
SAY @1393
IF ~~ EXIT 
END 

IF ~~ R1.1D 
SAY @1394
IF ~~ EXIT 
END 

IF ~~ R.2A
SAY @1395
IF ~~ EXIT 
END 

IF ~~ R.2B
SAY @1396
IF ~~ EXIT 
END 

IF ~~ R.2C 
SAY @1397
IF ~~ EXIT 
END 

IF ~~ R2.2D
SAY @1398
IF ~~ EXIT 
END 

IF ~~ R1.2D 
SAY @1399
IF ~~ EXIT 
END 

IF ~~ R.3A
SAY @1400
IF ~~ EXIT 
END 

IF ~~ R.3B 
SAY @1401
IF ~~ EXIT 
END 

IF ~~ R.3C 
SAY @1402
IF ~~ EXIT 
END 

IF ~~ R.3D 
SAY @1403
IF ~~ EXIT 
END 

IF ~~ R.4A 
SAY @1404
IF ~~ EXIT 
END 

IF ~~ R1.4B 
SAY @1405
IF ~~ EXIT 
END 

IF ~~ R2.4B 
SAY @1406
IF ~~ EXIT 
END 

IF ~~ R.4C 
SAY @1407
IF ~~ EXIT 
END 

IF ~~ R.4D 
SAY @1408
IF ~~ EXIT 
END 

IF ~~ R.5A
SAY @1409
= @1450
IF ~~ EXIT 
END 

IF ~~ R.5B 
SAY @1416
= @1417
IF ~~ EXIT 
END

IF ~~ R.5C 
SAY @1411
IF ~~ EXIT 
END 

IF ~~ R.5D 
SAY @1412
= @1413
IF ~~ EXIT 
END 

IF ~~ R.5E 
SAY @1414
= @1415
IF ~~ EXIT 
END  

IF ~~ R.6A 
SAY @1418
IF ~~ EXIT 
END 

IF ~~ R.6AM 
SAY @1449
IF ~~ EXIT 
END 

IF ~~ R.6B 
SAY @1419
IF ~~ EXIT 
END 

IF ~~ R.6C 
SAY @1421
IF ~~ EXIT 
END 

IF ~~ R.6D
SAY @1420
IF ~~ EXIT 
END 

IF ~~ R.6E 
SAY @1422
= @1423
IF ~~ EXIT 
END 

IF ~~ R.7A 
SAY @1424
IF ~~ EXIT 
END 

IF ~~ R.7B 
SAY @1425
IF ~~ EXIT 
END 

IF ~~ R.7C 
SAY @1426
IF ~~ EXIT 
END 

IF ~~ R.7D 
SAY @1427
IF ~~ EXIT 
END 

IF ~~ R.8A 
SAY @1428
IF ~~ EXIT 
END 

IF ~~ R.8B 
SAY @1429
IF ~~ EXIT 
END 

IF ~~ R.8C 
SAY @1430
IF ~~ EXIT 
END 

IF ~~ R.8D 
SAY @1431
IF ~~ EXIT 
END 

IF ~~ R.9A 
SAY @1432
= @1433
= @1434
IF ~~ EXIT 
END 

IF ~~ R.9B 
SAY @1435 
= @1436 
= @1437
IF ~~ EXIT 
END 

IF ~~ R.9C 
SAY @1438 
= @1439 
= @1440
IF ~~ EXIT 
END 

IF ~~ R.9D 
SAY @1441
= @1442
= @1443
= @1444
IF ~~ EXIT 
END 

IF ~~ R.10A 
SAY @1445
IF ~~ EXIT 
END 

IF ~~ R.10B 
SAY @1446
IF ~~ EXIT 
END 

IF ~~ R.10C 
SAY @1447
IF ~~ EXIT 
END 

IF ~~ R.10D 
SAY @1448
IF ~~ EXIT 
END 

IF ~~ R.11A
SAY @1450
IF ~~ EXIT 
END 

IF ~~ R.11B 
SAY @1451
IF ~~ EXIT 
END 

IF ~~ R.11C 
SAY @1452
IF ~~ EXIT 
END 

IF ~~ R.11D 
SAY @1453
IF ~~ EXIT 
END 

IF ~~ R.12A 
SAY @1456
IF ~~ EXIT 
END 

IF ~~ R.12B 
SAY @1456
= @1458
IF ~~ EXIT 
END 

IF ~~ R.12C 
SAY @1454
IF ~~ EXIT 
END 

IF ~~ R.12D
SAY @1455
IF ~~ EXIT 
END 

IF ~~ R.13A 
SAY @1459
IF ~~ EXIT 
END 

IF ~~ R.13B 
SAY @1460
IF ~~ EXIT 
END 

IF ~~ R.13C 
SAY @1461
IF ~~ EXIT 
END 

IF ~~ R.13D 
SAY @1462
IF ~~ EXIT 
END 

IF ~~ Flirt.Stop 
SAY @1463
IF ~~ EXIT 
END 

IF ~~ Flirt.Start 
SAY @1464
IF ~~ EXIT 
END 

IF ~~ R.14A
SAY @1466
IF ~~ EXIT 
END 

IF ~~ R.14B 
SAY @1467
IF ~~ EXIT 
END 

IF ~~ R.14C 
SAY @1468
IF ~~ EXIT 
END 

IF ~~ R.14D 
SAY @1469
IF ~~ EXIT 
END 

END 
