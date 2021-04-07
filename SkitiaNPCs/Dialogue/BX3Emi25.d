// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("AERIE")
Global("X3EmiAERIEToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiAERIE1
@0
DO ~SetGlobal("X3EmiAERIEToB","GLOBAL",1)~
== BAERIE25 @1
== BX3Emi25 @2
== BAERIE25 @3
== BX3Emi25 @4
== BAERIE25 @5
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Emi")
See("ANOMEN")
Global("X3EmiANOMENToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiANOMEN1
@6
DO ~SetGlobal("X3EmiANOMENToB","GLOBAL",1)~
== BANOME25 @7
== BX3Emi25 @8
== BANOME25 @9
== BX3Emi25 @10
== BANOME25 @11
== BX3Emi25 @12
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BCERND25 X3EmiCERND1
@13
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BX3Emi25 @14
== BCERND25 @15
== BX3Emi25 @16
== BCERND25 @17
== BX3Emi25 @18
== BCERND25 @19
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiEDWINToB","GLOBAL",0)~ THEN BEDWIN25 X3EmiEDWIN1
@20
DO ~SetGlobal("X3EmiEDWINToB","GLOBAL",1)~
== BX3Emi25 @21
== BEDWIN25 @22
== BX3Emi25 @23
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiHAERDALISToB","GLOBAL",0)~ THEN BHAERD25 X3EmiHAERDALIS1
@24
DO ~SetGlobal("X3EmiHAERDALISToB","GLOBAL",1)~
== BX3Emi25 @25
== BHAERD25 @26
== BX3Emi25 @27
== BHAERD25 @28
== BX3Emi25 @29
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3EmiIMOEN1
@30
DO ~SetGlobal("X3EmiIMOENToB","GLOBAL",1)~
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN BX3Emi25 X3EmiImoenHeir
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN BX3Emi25 X3EmiImoenExile 

CHAIN BX3Emi25 X3EmiImoenHeir 
@31
== BIMOEN25 @32
== BX3Emi25 @33
== BIMOEN25 @34
== BX3Emi25 @35
== BIMOEN25 @36
== BX3Emi25 @37
== BIMOEN25 @38
== BX3Emi25 @39
== BIMOEN25 @40
== BX3Emi25 @41
EXIT 

CHAIN BX3Emi25 X3EmiImoenExile 
@42
== BIMOEN25 @43
== BX3Emi25 @44
== BIMOEN25 @45
== BX3Emi25 @46
== BIMOEN25 @47
== BX3Emi25 @48
== BIMOEN25 @38
== BX3Emi25 @49
== BIMOEN25 @40
== BX3Emi25 @50
EXIT 

// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiJanToB","GLOBAL",0)~ THEN BJAN25 X3EmiJan1
@51
DO ~SetGlobal("X3EmiJanToB","GLOBAL",1)~
== BX3Emi25 @52
== BJAN25 @53
== BJAN25 @54
== BX3Emi25 @55
== BJAN25 @56
== BJAN25 @57
== BX3Emi25 @58
== BJAN25 @59
== BX3Emi25 @60
EXIT 


// JAHEIRA #25
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiJAHEIRAToB","GLOBAL",0)~ THEN BJAHEI25 X3EmiJAHEIRA1
@61
DO ~SetGlobal("X3EmiJAHEIRAToB","GLOBAL",1)~
== BX3Emi25 @62
== BJAHEI25 @63
== BX3Emi25 @64
== BJAHEI25 @65
== BX3Emi25 @66
EXIT 

// KELDORN #25
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiKELDORNToB","GLOBAL",0)~ THEN BKELDO25 X3EmiKELDORN1
@67
DO ~SetGlobal("X3EmiKELDORNToB","GLOBAL",1)~
== BX3Emi25 @68
== BKELDO25 @69
== BX3Emi25 @70
== BKELDO25 @71
== BX3Emi25 @72
== BKELDO25 @73
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiKorganToB","GLOBAL",0)~ THEN BKORGA25 X3EmiKorgan1
@74
DO ~SetGlobal("X3EmiKorganToB","GLOBAL",1)~
== BX3Emi25 @75
== BKORGA25 @76
== BX3Emi25 @77
== BKORGA25 @78
== BX3Emi25 @79
== BKORGA25 @80
== BX3Emi25 @81
EXIT 

// Mazzy
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Emi")
See("Mazzy")
Global("X3EmiMazzyToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiMazzy1
@82
DO ~SetGlobal("X3EmiMazzyToB","GLOBAL",1)~
== BMAZZY25 @83
== BX3Emi25 @84
== BMAZZY25 @85
== BX3Emi25 @86
== BMAZZY25 @87
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Emi")
See("MINSC")
Global("X3EmiMINSC","GLOBAL",0)~ THEN Bx3Emi25 X3EmiMINSC1
@88
DO ~SetGlobal("X3EmiMINSC","GLOBAL",1)~
== BMINSC25 @89
== Bx3Emi25 @90
== BMINSC25 @91
== Bx3Emi25 @92
== BMINSC25 @93
== BX3Emi25 @94
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiNALIAToB","GLOBAL",0)~ THEN BNALIA25 X3EmiNALIA1
@95
DO ~SetGlobal("X3EmiNALIAToB","GLOBAL",1)~
== BX3Emi25 @96
== BNALIA25 @97
== BX3Emi25 @98
== BNALIA25 @99
== BX3Emi25 @100
== BNALIA25 @101
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Emi")
See("Neera")
Global("X3EmiNeeraToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiNEERA1
@102
DO ~SetGlobal("X3EmiNeeraToB","GLOBAL",1)~
== BNEERA25 @103
== BX3Emi25 @104
== BNEERA25 @105
== BX3Emi25 @106
== BNEERA25 @107
== BX3Emi25 @108
== BNEERA25 @109
== BX3Emi25 @110
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaadToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiRasaad1
@111
DO ~SetGlobal("X3EmiRasaadToB","GLOBAL",1)~
== BRASAA25 @112
== BX3Emi25 @113
== BRASAA25 @114
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Emi")
See("SAREVOK")
Global("X3EmiSAREVOKToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiSAREVOK1
@115
DO ~SetGlobal("X3EmiSAREVOKToB","GLOBAL",1)~
== BSAREV25 @116
== BX3Emi25 @117
== BSAREV25 @118
== BX3Emi25 @119
EXIT 


// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
Global("X3EmiValygarToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiValygar1
@120 
DO ~SetGlobal("X3EmiValygarToB","GLOBAL",1)~
== BVALYG25 @121
== BX3Emi25 @122
== BVALYG25 @123
== BX3Emi25 @124
== BVALYG25 @125
== BX3Emi25 @126
== BVALYG25 @127
== BX3Emi25 @128
== BVALYG25 @129
EXIT 

// Viconia
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Emi")
See("Viconia")
Global("X3EmiViconiaToB","GLOBAL",0)~ THEN BVICON25 X3EmiViconia1
@130 
DO ~SetGlobal("X3EmiViconiaToB","GLOBAL",1)~
== BX3Emi25 @131
== BVICON25 @132
== BX3Emi25 @133
== BVICON25 @134
== BX3Emi25 @135
EXIT 

// Skitia Companions
//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3RebToB","LOCALS",0)~ THEN BX3Reb25 X3EmiX3Reb1
@136
DO ~SetGlobal("X3EmiX3RebToB","LOCALS",1)~
== BX3Emi25 @137
== BX3Reb25 @138
== BX3Emi25 @139
== BX3Reb25 @140
== BX3Emi25 IF ~Global("X3EmiHeir","GLOBAL",1)~ THEN @141
== BX3Emi25 IF ~!Global("X3EmiHeir","GLOBAL",1)~ THEN @142
== BX3Reb25 IF ~!Global("X3EmiHeir","GLOBAL",1)~ THEN @143
== BX3Emi25 IF ~!Global("X3EmiHeir","GLOBAL",1)~ THEN @144
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3RebToB","LOCALS",1)~ THEN BX3Reb25 X3EmiX3Reb2
@145
DO ~SetGlobal("X3EmiX3Reb2","LOCALS",2)~
== BX3Emi25 @146
== BX3Reb25 @147
== BX3Emi25 @148
== BX3Reb25 @149
== BX3Emi25 @150
== BX3Reb25 @151
EXIT 
//Helga
CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3EmiX3HelToB1","LOCALS",0)~ THEN BX3Hel25 X3EmiX3Hel1
@152
DO ~SetGlobal("X3EmiX3HelToB1","LOCALS",1)~
== BX3Emi25 @153
== BX3Hel25 @154
== BX3Emi25 @155
== BX3Hel25 @156
== BX3Emi25 @157
== BX3Hel25 @158
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3HelToBQuest","GLOBAL",6)
Global("X3EmiX3HelToB2","LOCALS",0)~ THEN BX3Emi25 X3EmiX3Hel1
@159
DO ~SetGlobal("X3EmiX3HelToB2","LOCALS",1)~
== BX3Hel25 @160
== BX3Emi25 @161
== BX3Hel25 @162
== BX3Emi25 @163
== BX3Hel25 @164
== BX3Emi25 @165
EXIT 
//Kale 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiX3KalToB1","LOCALS",0)~ THEN BX3Kal25 X3EmiX3Kal1
@166
DO ~SetGlobal("X3EmiX3KalToB1","LOCALS",1)~
== BX3Emi25 @167
== BX3Kal25 @168
== BX3Emi25 @169
== BX3Kal25 @170
== BX3Emi25 @171
== BX3Kal25 @172
== BX3Emi25 @173
== BX3Kal25 @174
== BX3Emi25 @175
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiRomanceActive","GLOBAL",2)
Global("X3EmiX3KalToB2","LOCALS",0)~ THEN BX3Kal25 X3EmiX3Kal1
@176
DO ~SetGlobal("X3EmiX3KalToB2","LOCALS",1)~
== BX3Emi25 @177
== BX3Kal25 @178
== BX3Emi25 @179
== BX3Kal25 @180
== BX3Emi25 @181
== BX3Kal25 @182
== BX3Emi25 @183
== BX3Kal25 @184
== BX3Emi25 @185
== BX3Kal25 @186
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
!Global("X3EmiHeir","GLOBAL",1)
Global("X3EmiX3VieToB1","LOCALS",0)~ THEN BX3Vie25 X3EmiX3Vie1
@187
DO ~SetGlobal("X3EmiX3VieToB1","LOCALS",1)~
== BX3Emi25 @188
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @189
== BX3Emi25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @190
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @191
== BX3Emi25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @192
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @193
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @194
== BX3Emi25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @195
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @196
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
Global("X3VieEvermeet","GLOBAL",1)
Global("X3EmiX3VieToB2","LOCALS",0)~ THEN BX3Emi25 X3EmiX3Vie2
@197
DO ~SetGlobal("X3EmiX3VieToB2","LOCALS",1)~
== BX3Vie25 @198
== BX3Emi25 @199
== BX3Vie25 @200
== BX3Emi25 @201
== BX3Vie25 @202
== BX3Emi25 @203
== BX3Vie25 @204
== BX3Emi25 @205
EXIT 