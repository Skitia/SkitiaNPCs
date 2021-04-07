
// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzyToB","GLOBAL",0)Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN BX3Kal25 KaleMazzy1
@0
DO ~SetGlobal("X3KalMazzyToB","GLOBAL",1)~
== BMAZZY25 @1
== BX3KAL25 @2
== BMAZZY25 @3
== BX3KAL25 @4
== BMAZZY25 @5
== BX3KAL25 @6
EXIT 

//Mazzy#2: Unlocks Kale Mazzy Ending.
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzyToB","GLOBAL",0)Alignment("X3Kal",LAWFUL_NEUTRAL)!Global("X3KalRomanceActive","GLOBAL",2)!Global("_bMazzyRomance","GLOBAL",2)~ THEN BX3Kal25 KaleMazzy2
@7
DO ~SetGlobal("X3KalMazzyToB","GLOBAL",1)SetGlobal("X3KalMazzyEnd","GLOBAL",1)~
== BMAZZY25 @8
== BX3Kal25 @9
== BMAZZY25 @10
== BX3KAL25 @11
== BMAZZY25 @12
== BX3KAL25 @13
== BMAZZY25 @14
== BX3KAL25 @15
== BMAZZY25 @16
EXIT 
//Mazzy#3: Only happens if all the original banters were seen. Not required to get Kale's Mazzy ending.
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzyToB","GLOBAL",1)Global("X3KalMazzy","GLOBAL",7)!Global("X3KalRomanceActive","GLOBAL",2)!Global("_bMazzyRomance","GLOBAL",2)~ THEN BX3Kal25 KaleMazzy3
@17
DO ~SetGlobal("X3KalMazzy","GLOBAL",2)~
== BMAZZY25 @18
== BX3KAL25 @19
== BMAZZY25 @20
== BX3KAL25 @21
== BX3KAL25 @22
== BMAZZY25 @23
== BX3KAL25 @24
== BMAZZY25 @25
EXIT 

// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalAERIEToB","GLOBAL",0)~ THEN BAERIE25 X3KalAERIE1
@26
DO ~SetGlobal("X3KalAERIEToB","GLOBAL",1)~
== BX3Kal25 @27
== BAERIE25 @28
== BX3Kal25 @29
== BAERIE25 @30
== BX3Kal25 @31
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("ANOMEN")
Global("X3KalANOMENToB","GLOBAL",0)~ THEN BX3Kal25 X3KalANOMEN1
@32
DO ~SetGlobal("X3KalANOMENToB","GLOBAL",1)~
== BANOME25 @33
== BX3Kal25 @34
== BANOME25 @35
== BX3Kal25 @36
== BX3Kal25 @37
== BANOME25 @38
== BX3Kal25 @39
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalCERNDToB","GLOBAL",0)~ THEN BCERND25 X3KalCERND1
@40
DO ~SetGlobal("X3KalCERNDToB","GLOBAL",1)~
== BX3Kal25 @41
== BCERND25 @42
== BX3Kal25 @43
== BCERND25 @44
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @45
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @46
== BX3Kal25 @47
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Kal")
See("Dorn")
Global("X3KalDornToB","GLOBAL",0)~ THEN BX3Kal25 X3KalDorn1
@48
DO ~SetGlobal("X3KalDornToB","GLOBAL",1)~
== BDORN25 @49
== BX3Kal25 @50
== BDORN25 @51
== BX3Kal25 @52
== BDORN25 @53
== BX3Kal25 @54
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Kal")
See("Edwin")
Global("X3KalEDWINToB","GLOBAL",0)~ THEN BX3Kal25 X3KalEDWIN1
@55
DO ~SetGlobal("X3KalEDWINToB","GLOBAL",1)~
== BEDWIN25 @56
== BX3Kal25 @57
== BEDWIN25 @58
== BX3Kal25 @59
== BEDWIN25 @60
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Kal")
See("HAERDALIS")
Global("X3KalHAERDALISToB","GLOBAL",0)~ THEN BX3Kal25 X3KalHAERDALIS1
@61
DO ~SetGlobal("X3KalHAERDALISToB","GLOBAL",1)~
== BHAERD25 @62
== BX3Kal25 @63
== BHAERD25 @64
== BX3Kal25 @65
== BHAERD25 @66
== BX3Kal25 @67
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3KalIMOEN1
@68
DO ~SetGlobal("X3KalIMOENToB","GLOBAL",1)~
== BX3Kal25 @69
== BIMOEN25 @70
== BX3Kal25 @71
== BIMOEN25 @72
== BX3Kal25 @73
== BIMOEN25 @74
== BX3Kal25 @75
EXIT 

// JAHEIRA 
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Kal")
See("JAHEIRA")
Global("X3KalJAHEIRAToB","GLOBAL",0)~ THEN BX3Kal25 X3KalJAHEIRA1
@76
DO ~SetGlobal("X3KalJAHEIRAToB","GLOBAL",1)~
== BJAHEI25 @77
== BX3Kal25 @78
== BJAHEI25 @79
== BX3Kal25 @80
== BJAHEI25 @81
== BX3Kal25 @82
== BJAHEI25 @83
EXIT 

// KELDORN 
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("KELDORN")
Global("X3KalKELDORNToB","GLOBAL",0)~ THEN BX3Kal25 X3KalKELDORN1
@84
DO ~SetGlobal("X3KalKELDORNToB","GLOBAL",1)~
== BKELDO25 @85
== BX3Kal25 @86
== BKELDO25 @87
== BX3Kal25 @88
== BKELDO25 @89
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("KORGAN")
Global("X3HelKorganToB","GLOBAL",0)~ THEN BX3Kal25 X3HelKorgan1
@90
DO ~SetGlobal("X3HelKorganToB","GLOBAL",1)~
== BKORGA25 @91
== BX3Kal25 @92
== BKORGA25 @93
EXIT 


// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Kal")
See("MINSC")
Global("X3KalMINSC","GLOBAL",0)~ THEN BX3Kal25 X3KalMINSC1
@94
DO ~SetGlobal("X3KalMINSC","GLOBAL",1)~
== BMINSC25 @95
== BX3Kal25 @96
== BMINSC25 @97
== BX3Kal25 @98
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Kal")
See("Hexxat")
Global("X3KalHexxatToB","GLOBAL",0)Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN BX3Kal25 KaleHexxat1
@99
DO ~SetGlobal("X3KalHexxatToB","GLOBAL",1)~
== BHEXXA25 @100
== BX3KAL25 @101
== BHEXXA25 @102
== BX3KAL25 @103
== BHEXXA25 @104
== BX3KAL25 @105
EXIT 
// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJanToB","GLOBAL",0)~ THEN BX3KAl25 X3KAlJan1
@106
DO ~SetGlobal("X3KAlJanToB","GLOBAL",1)~
== BJAN25 @107
== BX3KAl25 @108
== BJAN25 @109
== BX3KAl25 @110
== BJAN25 @111
== BX3KAl25 @112
== BJAN25 @113
== BX3KAL25 @114
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Kal")
See("Nalia")
Global("X3KalNALIAToB","GLOBAL",0)~ THEN BX3Kal25 X3KalNALIA1
@115
DO ~SetGlobal("X3KalNALIAToB","GLOBAL",1)~
== BNALIA25 @116
== BX3Kal25 @117
== BNALIA25 @118
== BX3Kal25 @119
== BNALIA25 @120
== BX3Kal25 @121
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Kal")
See("Neera")
Global("X3KalNeeraToB","GLOBAL",0)~ THEN BX3Kal25 X3KalNEERA1
@122
DO ~SetGlobal("X3KalNeeraToB","GLOBAL",1)~
== BNEERA25 @123
== BX3Kal25 @124
== BNEERA25 @125
== BX3Kal25 @126
== BNEERA25 @127
== BX3Kal25 @128
== BNEERA25 @129
== BX3Kal25 @130
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Kal")
See("RASAAD")
Global("X3KalRasaadToB","GLOBAL",0)~ THEN BX3Kal25 X3KalRasaad1
@131
DO ~SetGlobal("X3KalRasaadToB","GLOBAL",1)~
== BRASAA25 @132
== BX3Kal25 @133
== BRASAA25 @134
== BX3Kal25 @135
== BRASAA25 @136
== BX3Kal25 @137
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Kal")
See("SAREVOK")
Global("X3KalSAREVOKToB","GLOBAL",0)~ THEN BX3Kal25 X3KalSAREVOK1
@138
DO ~SetGlobal("X3KalSAREVOKToB","GLOBAL",1)~
== BSAREV25 @139
== BX3Kal25 @140
== BSAREV25 @141
== BX3Kal25 @142
== BSAREV25 @143
== BX3Kal25 @144
== BSAREV25 @145
EXIT 

// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Kal")
See("Valygar")
Global("X3KalValygarToB","GLOBAL",0)~ THEN BX3Kal25 X3KalValygar1
@146 
DO ~SetGlobal("X3KalValygarToB","GLOBAL",1)~
== BVALYG25 @147
== BX3Kal25 @148
== BVALYG25 @149
== BX3Kal25 @150
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @151
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @152
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @153
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @154
== BVALYG25 IF ~!IsValidForPartyDialogue("MAZZY")~ THEN @155
== BX3Kal25 IF ~!IsValidForPartyDialogue("MAZZY")~ THEN @156
== BVALYG25 IF ~!IsValidForPartyDialogue("MAZZY")~ THEN @157
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Kal")
See("Viconia")
Global("X3KalViconiaToB","GLOBAL",0)~ THEN BX3Kal25 X3KalViconia1
@158 
DO ~SetGlobal("X3KalViconiaToB","GLOBAL",1)~
END 
IF ~!Global("ViconiaRomanceActive","GLOBAL",2)~ EXTERN BVICON25 X3KalViconia1A
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ EXTERN BVICON25 X3KalViconia1B
CHAIN BVICON25 X3KalViconia1A
@159
== BX3Kal25 @160
== BVICON25 @161
== BX3Kal25 @162
EXIT 
CHAIN BVICON25 X3KalViconia1B 
@163
== BX3Kal25 @164
== BVICON25 @165
== BX3Kal25 @166
EXIT 

//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3RebToB1","LOCALS",0)~ THEN BX3Kal25 X3KalX3Reb1
@167
DO ~SetGlobal("X3KalX3RebToB1","LOCALS",1)~
== BX3Reb25 @168
== BX3Kal25 @169
== BX3Reb25 @170
== BX3Kal25 @171
== BX3Reb25 @172
== BX3Kal25 @173
== BX3Reb25 @174
== BX3Kal25 @175
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3RebToB1","LOCALS",1)~ THEN BX3Kal25 X3KalX3Reb2
@176
DO ~SetGlobal("X3KalX3RebToB1","LOCALS",2)~
== BX3Reb25 @177
== BX3Kal25 @178
== BX3Reb25 @179
== BX3Kal25 @180
== BX3Reb25 @181
== BX3Kal25 @182
== BX3Reb25 @183
== BX3Kal25 @184
== BX3Reb25 @185
== BX3Kal25 @186
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
Global("X3KalX3VieToB1","LOCALS",0)~ THEN BX3Kal25 X3KalX3Vie1
@187
DO ~SetGlobal("X3KalX3VieToB1","LOCALS",1)~
== BX3Vie25 @188
== BX3Kal25 @189
== BX3Vie25 @190
== BX3Kal25 @191
== BX3Vie25 @192
== BX3Kal25 @193
== BX3Vie25 @194
= @195
== BX3Kal25 @196
== BX3Vie25 @197
== BX3Kal25 @198
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
!Global("X3VieEvermeet","GLOBAL",1)
Global("X3KalX3VieToB1","LOCALS",1)~ THEN BX3Kal25 X3KalX3Vie2
@199
DO ~SetGlobal("X3KalX3VieToB1","LOCALS",2)~
== BX3Vie25 @200
== BX3Kal25 @201
== BX3Vie25 @202
== BX3Kal25 @203
== BX3Vie25 @204
== BX3Kal25 @205
== BX3Vie25 @206
== BX3Kal25 @207
== BX3Vie25 @208
EXIT 