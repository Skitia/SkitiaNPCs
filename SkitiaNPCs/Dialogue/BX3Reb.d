// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebAERIE","GLOBAL",0)~ THEN BAERIE X3RebAERIE1
@0
DO ~SetGlobal("X3RebAERIE","GLOBAL",1)~
== BX3Reb @1
== BAERIE @2
== BX3Reb @3
== BAERIE @4
== BX3Reb @5
== BAERIE @6
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("AERIE")
Global("X3RebAERIE","GLOBAL",0)~ THEN BX3REB X3RebAERIE2
@7
DO ~SetGlobal("X3RebAERIE","GLOBAL",1)~
== BAERIE @8
== BX3Reb @9
== BAERIE @10
== BX3Reb @11
== BAERIE @12
EXIT 

// Aerie #3
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebAERIE","GLOBAL",0)~ THEN BAERIE  X3RebAERIE3
@13
DO ~SetGlobal("X3RebAERIE","GLOBAL",1)~
== BX3Reb @14
== BAERIE @15
== BX3Reb @16
== BAERIE @17
== BX3Reb @18
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebANOMEN","GLOBAL",0)~ THEN BANOMEN X3RebANOMEN1
@19
DO ~SetGlobal("X3RebANOMEN","GLOBAL",1)~
== BX3Reb @20
== BANOMEN @21
== BX3Reb @22
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebANOMEN","GLOBAL",1)~ THEN BANOMEN X3RebANOMEN2
@23
DO ~SetGlobal("X3RebANOMEN","GLOBAL",2)~
== BX3Reb @24
== BANOMEN @25
== BX3Reb @26
== BANOMEN @27
== BX3Reb @28
== BANOMEN @29
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Reb")
See("CERND")
Global("X3RebCERND","GLOBAL",0)~ THEN BX3Reb X3RebCERND1
@30
DO ~SetGlobal("X3RebCERND","GLOBAL",1)~
== BCERND @31
== BX3Reb @32
== BCERND @33
== BX3Reb @34
== BCERND @35
EXIT 

// CERND #2
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Reb")
See("Cernd")
Global("X3RebCERND","GLOBAL",1)~ THEN BX3Reb X3RebCERND2
@36
DO ~SetGlobal("X3RebCERND","GLOBAL",2)~
== BCERND @37
== BX3Reb @38
== BCERND @39
== BX3Reb @40
== BCERND @41
EXIT 

//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebDORN","GLOBAL",0)~ THEN BDORN X3RebDORN1
@42
DO ~SetGlobal("X3RebDORN","GLOBAL",1)~
== BX3Reb @43
== BDORN @44
== BX3Reb @45
== BDORN @46
== BX3Reb @47
== BDORN @48
== BX3Reb @49
EXIT

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Reb")
See("Edwin")
Global("X3RebEDWIN","GLOBAL",0)~ THEN BX3Reb X3RebEDWIN1
@50
DO ~SetGlobal("X3RebEDWIN","GLOBAL",1)~
== BEDWIN @51
== BX3Reb @52
== BEDWIN @53
== BX3Reb @54
== BEDWIN @55
EXIT 

// EDWIN #2
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Reb")
See("Edwin")
Global("X3RebEDWIN","GLOBAL",1)
Gender("Edwin",FEMALE)  // Edwin~ THEN BX3Reb X3RebEDWIN2
@56
DO ~SetGlobal("X3RebEDWIN","GLOBAL",2)~
== BEDWIN @57
== BX3Reb @58
== BEDWIN @59
== BX3Reb @60
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3RebHAERDALIS1
@61
DO ~SetGlobal("X3RebHAERDALIS","GLOBAL",1)~
== BX3Reb @62
== BHAERDA @63
== BX3Reb @64
== BHAERDA @65
== BX3Reb @66
== BHAERDA @67
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3RebHAERDALIS2
@68
DO ~SetGlobal("X3RebHAERDALIS","GLOBAL",2)~
== BX3Reb @69
== BHAERDA @70
== BX3Reb @71
== BHAERDA @72
== BX3Reb @73
EXIT 

// HAERDALIS #3 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("HEARDALIS")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebHAERDALIS","GLOBAL",2)~ THEN BX3Reb X3RebHAERDALIS3
@74
DO ~SetGlobal("X3RebHAERDALIS","GLOBAL",3)~
== BHAERDA @75
== BX3Reb @76
== BHAERDA @77
== BX3Reb @78
== BHAERDA @79
== BX3Reb @80
EXIT


// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Reb")
See("IMOEN2")
Global("X3RebIMOEN","GLOBAL",0)~ THEN BX3Reb X3RebIMOEN1
@81
DO ~SetGlobal("X3RebIMOEN","GLOBAL",1)~
== IMOEN2J @82
== BX3Reb @83
== IMOEN2J @84
== BX3Reb @85
== IMOEN2J @86
== BX3Reb IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @87
== IMOEN2J IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @88
== BX3Reb IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @89
== IMOEN2J IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN @90
== BX3Reb IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN @91
== IMOEN2J IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN @92
== BX3Reb IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN @93
== IMOEN2J IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN @94
== BX3Reb IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN @95
EXIT 


 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebHexxat","GLOBAL",0)~ THEN BHEXXAT X3RebHexxat1
@96 
DO ~SetGlobal("X3RebHexxat","GLOBAL",1)~
== BX3Reb @97
== BHEXXAT @98
== BX3Reb @99
== BHEXXAT @100
== BX3Reb @101
== BHEXXAT @102
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",0)~ THEN BX3Reb X3RebJan1
@103
DO ~SetGlobal("X3RebJan","GLOBAL",1)~
== BJAN @104
== BX3Reb @105
== BJAN @106
== BX3Reb @107
== BJAN @108
== BX3Reb @109
EXIT 

// Jan #2
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",1)~ THEN BX3Reb X3RebJan2
@110
DO ~SetGlobal("X3RebJan","GLOBAL",2)~
== BJAN @111
== BX3Reb @112
== BJAN @113
== BX3Reb @114
== BJAN @115
== BX3Reb @116
EXIT 

// Jan #3
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",2)~ THEN BX3Reb X3RebJan3
@117 
DO ~SetGlobal("X3RebJan","GLOBAL",3)~
== BJAN @118
== BX3Reb @119
== BJAN @120
== BX3Reb @121
== BMINSC IF ~IsValidForPartyDialogue("Minsc")~ THEN @122
EXIT 

// Jan #4
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",2)~ THEN BX3Reb X3RebJan4
@123 
DO ~SetGlobal("X3RebJan","GLOBAL",3)~
== BJAN @124
== BX3Reb @125
== BJAN @126
== BX3Reb @127
== BJAN @128
== BX3Reb @129
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Reb")
See("JAHEIRA")
Global("X3RebJAHEIRA","GLOBAL",0)~ THEN BX3Reb X3RebJAHEIRA1
@130
DO ~SetGlobal("X3RebJAHEIRA","GLOBAL",1)~
== BJAHEIR @131
== BX3Reb @132
== BJAHEIR @133
== BX3Reb @134
== BJAHEIR @135
== BX3Reb @136
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Reb")
See("JAHEIRA")
Global("X3RebJAHEIRA","GLOBAL",1)~ THEN BX3Reb X3RebJAHEIRA2
@137
DO ~SetGlobal("X3RebJAHEIRA","GLOBAL",2)~
== BJAHEIR @138
== BX3Reb @139
== BJAHEIR @140
== BX3Reb @141
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3ReBKELDOR","GLOBAL",0)~ THEN BKELDOR X3ReBKELDOR1
@142
DO ~SetGlobal("X3ReBKELDOR","GLOBAL",1)~
== BX3Reb @143
== BKELDOR @144
== BX3Reb @145
== BKELDOR @146
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Reb")
See("KELDORN")
Alignment("X3Reb",LAWFUL_NEUTRAL)
Global("X3ReBKELDOR","GLOBAL",1)~ THEN BX3Reb X3ReBKELDOR2
@147
DO ~SetGlobal("X3ReBKELDOR","GLOBAL",2)~
== BKELDOR @148
== BX3Reb @149
== BKELDOR @150
== BX3Reb @151
== BKELDOR @152
EXIT 

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3RebKorgan","GLOBAL",0)~ THEN BKORGAN X3KalKorgan1
@153
DO ~SetGlobal("X3RebKorgan","GLOBAL",1)~
== BX3Reb @154
== BKORGAN @155
== BX3Reb @156
== BKORGAN @157
== BX3Reb @158
== BKORGAN @159
EXIT 


//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebNalia","GLOBAL",0)
AreaType(CITY)~ THEN BNALIA X3RebNalia2
@160
DO ~SetGlobal("X3RebNalia","GLOBAL",1)~
== BX3Reb @161
== BNALIA @162
== BX3Reb @163
== BNALIA @164
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Reb")
See("Nalia")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebNalia","GLOBAL",1)~ THEN BX3Reb X3RebNalia2
@165
DO ~SetGlobal("X3RebNalia","GLOBAL",2)~
== BNALIA @166
== BX3Reb @167
== BNALIA @168
== BX3Reb @169
== BNALIA @170
== BX3Reb @171
EXIT 

// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
See("Mazzy")
Global("X3RebMazzy","GLOBAL",0)~ THEN BX3Reb X3RebMazzy1
@172 
DO ~SetGlobal("X3RebMazzy","GLOBAL",1)~
== BMAZZY @173
== BX3Reb @174
== BX3Reb @175
== BMAZZY @176
== BX3Reb @177
== BMAZZY @178
== BX3Reb @179
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
GlobalGT("X3RebTalk","LOCALS",10)
See("MAZZY")
Global("X3RebMazzy","GLOBAL",1)~ THEN BX3Reb X3RebMazzy2
@180
DO ~SetGlobal("X3RebMazzy","GLOBAL",2)~
== BMAZZY @181 
== BX3Reb @182
== BMAZZY @183
== BX3Reb @184
== BMAZZY @185
== BX3Reb @186
== BMAZZY @187
== BX3Reb @188
EXIT 
//Mazzy #3
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
See("MAZZY")
Global("X3RebMazzy","GLOBAL",2)~ THEN BX3Reb X3RebMazzy3
@189
DO ~SetGlobal("X3RebMazzy","GLOBAL",3)~
== BMAZZY @190
== BX3Reb @191
== BX3Reb @192
== BMAZZY @193
== BX3Reb @194
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Reb")
See("MINSC")
Global("X3RebMINSC","GLOBAL",0)~ THEN BX3Reb X3RebMINSC1
@195
DO ~SetGlobal("X3RebMINSC","GLOBAL",1)~
== BMINSC @196
== BX3Reb @197
== BMINSC @198
== BX3Reb @199
== BMINSC @200
== BX3Reb @201
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebMINSC","GLOBAL",1)~ THEN BMINSC X3RebMINSC2
@202
DO ~SetGlobal("X3RebMINSC","GLOBAL",2)~
== BX3Reb @203
== BMINSC @204
== BX3Reb @205
== BMINSC @206
== BX3Reb @207
== BMINSC @208
== BX3Reb @209
EXIT 


//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Reb")
See("Neera")
Global("X3RebNeera","GLOBAL",0)~ THEN BX3Reb X3RebNeera2
@210
DO ~SetGlobal("X3RebNeera","GLOBAL",1)~
== BNEERA @211
== BX3Reb @212
== BNEERA @213
== BX3Reb @214
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Reb")
See("Neera")
Global("X3RebNeera","GLOBAL",1)~ THEN BX3Reb X3RebNeera2
@215
DO ~SetGlobal("X3RebNeera","GLOBAL",2)~
== BNEERA @216
== BX3Reb @217
== BNEERA @218
== BX3Reb @219
== BNEERA @220
== BX3Reb @221
== BNEERA @222
== BX3Reb @223
== BNEERA @224
== BX3Reb @225
== BNEERA @226
== BX3Reb @227
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Reb")
See("RASAAD")
Global("X3RebRasaad","GLOBAL",0)~ THEN BRASAAD X3RebRasaad1
@228
DO ~SetGlobal("X3RebRasaad","GLOBAL",1)~
== BX3Reb @229
== BRASAAD @230
== BX3Reb @231
== BRASAAD @232
== BX3Reb @233
== BRASAAD @234
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Reb")
See("RASAAD")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebRasaad","GLOBAL",1)~ THEN BX3Reb X3RebRasaad2
@235
DO ~SetGlobal("X3RebRasaad","GLOBAL",2)~
== BRASAAD @236
== BX3Reb @237
== BRASAAD @238
== BX3Reb @239
== BRASAAD @240
== BX3Reb @241
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebValygar","GLOBAL",0)~ THEN BVALYGA X3RebValygar1
@242 
DO ~SetGlobal("X3RebValygar","GLOBAL",1)~
== BX3Reb @243
== BVALYGA @244
== BX3Reb @245
== BVALYGA @246
== BX3Reb @247
== BVALYGA @248
== BX3Reb @249
== BVALYGA @250
== BX3Reb @251
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebViconia","GLOBAL",0)~ THEN BVICONI X3RebViconia1
@252 
DO ~SetGlobal("X3RebViconia","GLOBAL",1)~
== BX3Reb @253
== BVICONI @254
== BX3Reb @255
== BVICONI @256
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Reb")
See("Yoshimo")
Global("X3RebYoshimo","GLOBAL",0)~ THEN BX3Reb X3RebYoshimo1
@257 
DO ~SetGlobal("X3RebYoshimo","GLOBAL",1)~
== BYOSHIM @258
== BX3Reb @259
== BYOSHIM @260
== BX3Reb @261
== BYOSHIM @262
== BX3Reb @263
EXIT 

//Vienxay Shadowmage
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
!Kit("X3Vie",SHADOWDANCER)
Global("X3RebX3Vie1","LOCALS",0)~ THEN BX3Reb X3RebX3Vie1
@264
DO ~SetGlobal("X3RebX3Vie1","LOCALS",1)~
== BX3Vie @265
== BX3Reb @266
== BX3Vie @267
== BX3Reb @268
== BX3Vie @269
== BX3Reb @270
== BX3Vie @271
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
!Kit("X3Vie",SHADOWDANCER)
Global("X3RebX3Vie1","LOCALS",1)~ THEN BX3Reb X3RebX3Vie2
@272
DO ~SetGlobal("X3RebX3Vie1","LOCALS",2)~
== BX3Vie @273
== BX3Reb @274
== BX3Vie @275
== BX3Reb @276
== BX3Vie @277
== BX3Reb @278
== BX3Vie @279
EXIT 

//Vienxay Shadowdancer 
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Kit("X3Vie",SHADOWDANCER)
Global("X3RebX3Vie1","LOCALS",0)~ THEN BX3Reb X3RebX3Vie1S
@296
DO ~SetGlobal("X3RebX3Vie1","LOCALS",1)~
== BX3Vie @297
== BX3Reb @298
== BX3Vie @299
== BX3Reb @300
== BX3Vie @301
== BX3Reb @302
== BX3Vie @303
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Kit("X3Vie",SHADOWDANCER)
Global("X3RebX3Vie1","LOCALS",1)~ THEN BX3Reb X3RebX3Vie2S
@304
DO ~SetGlobal("X3RebX3Vie1","LOCALS",2)~
== BX3Vie @305
== BX3Reb @306
== BX3Vie @307
== BX3Reb @308
== BX3Vie @309
== BX3Reb @310
== BX3Vie @311
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Global("X3VieQuest","GLOBAL",12)
Global("X3RebX3Vie2","LOCALS",0)~ THEN BX3Reb X3RebX3Vie3
@280
DO ~SetGlobal("X3RebX3Vie2","LOCALS",1)~
== BX3Vie @281
== BX3Reb @282
== BX3Vie @283
== BX3Reb @284
== BX3Vie @285
== BX3Reb @286
== BX3Vie @287
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Dead("X3RPhel")
Global("X3RebX3Vie3","LOCALS",0)~ THEN BX3Vie X3RebX3Vie4
@288
DO ~SetGlobal("X3RebX3Vie3","LOCALS",1)~
== BX3Reb @289
== BX3Vie @290
== BX3Reb @291
== BX3Vie @292
== BX3Reb @293
== BX3Vie @294
== BX3Reb @295
EXIT 