// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Kal")
See("AERIE")
Global("X3KalAERIE","GLOBAL",0)~ THEN BX3Kal X3KalAERIE1
@0
DO ~SetGlobal("X3KalAERIE","GLOBAL",1)~
== BAERIE @1
== BX3Kal @2
== BAERIE @3
== BX3Kal @4
== BAERIE @5
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Kal")
See("AERIE")
Global("X3KalAERIE","GLOBAL",0)~ THEN BAERIE X3KalAERIE1
@6
DO ~SetGlobal("X3KalAERIE","GLOBAL",1)~
== BX3Kal @7
== BAERIE @8
== BX3Kal @9
== BAERIE @10
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalANOMEN","GLOBAL",0)~ THEN BANOMEN X3KalANOMEN1
@11
DO ~SetGlobal("X3KalANOMEN","GLOBAL",1)~
== BX3Kal @12
== BANOMEN @13
== BX3Kal @14
== BANOMEN @15
== BX3Kal @16
== BANOMEN @17
== BX3Kal @18
== BANOMEN @19
== BX3Kal @18
== BANOMEN @20
== BX3Kal @21
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("X3KalANOMEN","GLOBAL",1)~ THEN BX3Kal X3KalANOMEN2
@22
DO ~SetGlobal("X3KalANOMEN","GLOBAL",2)~
== BANOMEN @23
== BX3Kal @24
== BANOMEN @25
== BX3Kal @26
EXIT 

// ANOMEN #3
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("AnomenIsKnight","GLOBAL",1)
Global("X3KalANOMEN","GLOBAL",1)~ THEN BANOMEN X3KalANOMEN3
@27
DO ~SetGlobal("X3KalANOMEN","GLOBAL",2)~
== BX3Kal @28
== BANOMEN @29
== BX3Kal @30
== BANOMEN @31
== BX3Kal IF ~Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @32
== BX3Kal IF ~!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @33
== BANOMEN IF ~!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @34
== BX3KAL IF ~!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN @35
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Kal")
See("CERND")
Global("X3KalCERND","GLOBAL",0)~ THEN BX3Kal X3KalCERND1
@36
DO ~SetGlobal("X3KalCERND","GLOBAL",1)~
== BCERND @37
== BX3Kal @38
== BCERND @39
== BX3Kal @40
EXIT 


//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalDORN","GLOBAL",0)~ THEN BDORN X3KalDORN1
@41
DO ~SetGlobal("X3KalDORN","GLOBAL",1)~
== BX3Kal @42
== BDORN @43
== BX3Kal @44
== BDORN @45
== BX3Kal @46
== BDORN @47
== BX3Kal @48
EXIT 

//Dorn #2
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Kal")
See("Dorn")
Global("X3KalDORN","GLOBAL",1)~ THEN BX3Kal X3KalDORN2
@49
DO ~SetGlobal("X3KalDORN","GLOBAL",2)~
== BDORN @50
== BX3Kal @51
== BDORN @52
== BX3Kal @53
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Kal")
See("Edwin")
Global("X3KalEDWIN","GLOBAL",0)~ THEN BX3Kal X3KalEDWIN1
@54
DO ~SetGlobal("X3KalEDWIN","GLOBAL",1)~
== BEDWIN @55
== BX3Kal @56
== BEDWIN @57
== BX3Kal @58
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Kal")
See("IMOEN2")
Global("X3KalIMOEN","GLOBAL",0)~ THEN BX3Kal X3KalIMOEN1
@59
DO ~SetGlobal("X3KalIMOEN","GLOBAL",1)~
== IMOEN2J @60
== BX3Kal @61
== IMOEN2J @62
== BX3Kal @63
== IMOEN2J @64
== BX3Kal @65
EXIT 


// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3KalHAERDALIS1
@66
DO ~SetGlobal("X3KalHAERDALIS","GLOBAL",1)~
== BX3Kal @67
== BHAERDA @68
== BX3Kal @69
== BHAERDA @70
== BX3Kal @71
== BHAERDA @72
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Kal")
See("HAERDALIS")
Global("X3KalHAERDALIS","GLOBAL",1)~ THEN X3Kal X3KalHAERDALIS2
@73
DO ~SetGlobal("X3KalHAERDALIS","GLOBAL",2)~
== BHAERDA @74
== BX3Kal @75
== BHAERDA @76
== BX3Kal @77
EXIT 


// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Kal")
See("JAHEIRA")
Global("X3KalJAHEIRA","GLOBAL",0)~ THEN BX3Kal X3KalJAHEIRA1
@78
DO ~SetGlobal("X3KalJAHEIRA","GLOBAL",1)~
== BJAHEIR @79
== BX3Kal @80
== BJAHEIR @81
== BX3Kal @82
== BJAHEIR @83
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Kal")
See("JAHEIRA")
Global("X3KalJAHEIRA","GLOBAL",1)~ THEN BX3Kal X3KalJAHEIRA2
@84
DO ~SetGlobal("X3KalJAHEIRA","GLOBAL",2)~
== BJAHEIR @85
== BX3Kal @86
== BJAHEIR @87
== BX3Kal @88
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalKELDORN","GLOBAL",0)~ THEN BKELDOR X3KalKELDORN1
@89
DO ~SetGlobal("X3KalKELDORN","GLOBAL",1)~
== BX3Kal @90
== BKELDOR @91
== BX3Kal @92
== BKELDOR @93
== BX3Kal @94
== BKELDOR @95
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("KELDORN")
Alignment("X3Kal",LAWFUL_NEUTRAL)
Global("X3KalKELDORN","GLOBAL",1)~ THEN BKELDOR X3KalKELDORN2
@96
DO ~SetGlobal("X3KalKELDORN","GLOBAL",2)~
== BX3Kal @97
== BKELDOR @98
== BX3Kal @99
== BKELDOR @100
EXIT 

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalKorgan","GLOBAL",0)~ THEN BKORGAN X3KalKorgan1
@101
DO ~SetGlobal("X3KalKorgan","GLOBAL",1)~
== BX3Kal @102
== BKORGAN @103
== BX3Kal @104
== BKORGAN @105
== BX3Kal @106
== BKORGAN @107
EXIT 

// Korgan #2
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Kal")
See("Korgan")
Global("X3KalKorgan","GLOBAL",1)~ THEN BX3Kal X3KalKorgan2
@108
DO ~SetGlobal("X3KalKorgan","GLOBAL",2)~
== BKORGAN @109
== BX3Kal @110
== BKORGAN @111
EXIT 


//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Kal")
See("Nalia")
Global("X3KalNalia","GLOBAL",0)~ THEN BX3Kal X3KalNalia2
@112
DO ~SetGlobal("X3KalNalia","GLOBAL",1)~
== BNALIA @113
== BX3Kal @114
== BNALIA @115
== BX3Kal @116
== BNALIA @117
== BX3Kal @118
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalNalia","GLOBAL",1)~ THEN BNALIA X3KalNalia2
@119
DO ~SetGlobal("X3KalNalia","GLOBAL",2)~
== BX3Kal @120
== BNALIA @121
== BX3Kal @122
== BNALIA @123
== BX3Kal @124
== BNALIA @125
== BX3Kal @126
== BNALIA @127
== BX3Kal @128
EXIT 


// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",0)~ THEN BX3Kal KaleMazzy1
@129
DO ~SetGlobal("X3KalMazzy","GLOBAL",1)~
== BMAZZY @130
== BX3KAL @131
== BMAZZY @132
== BX3KAL @133
== BMAZZY @134
== BX3KAL @135
== BMAZZY @136
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",1)~ THEN BX3Kal KaleMazzy2
@137
DO ~SetGlobal("X3KalMazzy","GLOBAL",2)~
== BMAZZY @138
== BX3Kal @139
== BMAZZY @140
== BX3KAL @141
== BMAZZY @142
== BX3KAL @143
== BMAZZY @144
== BX3KAL @145
EXIT 
//Mazzy#3
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",2)~ THEN BX3Kal KaleMazzy3
@146
DO ~SetGlobal("X3KalMazzy","GLOBAL",3)~
== BMAZZY @147
== BX3KAL @148
== BMAZZY @149
== BX3KAL @150
== BMAZZY @151
== BX3KAL @152
== BMAZZY @153
== BX3KAL @154
== BMAZZY @155
== BX3KAL @156
EXIT 
//Mazzy#4
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMazzy","GLOBAL",3)~ THEN BMAZZY KaleMazzy4
@157
DO ~SetGlobal("X3KalMazzy","GLOBAL",4)~
== BX3KAL @158
== BMAZZY @159
== BX3KAL @160
== BMAZZY @161
== BX3KAL @162
== BMAZZY @163
== BX3KAL @164
== BMAZZY @165
== BX3KAL @166
== BMAZZY @167
== BX3KAL @168
EXIT  
//Mazzy#5
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",4)~ THEN BX3Kal KaleMazzy5
@169
DO ~SetGlobal("X3KalMazzy","GLOBAL",5)~
== BMAZZY @170
== BX3Kal @171
== BMAZZY @172
== BX3Kal @173
== BMAZZY @174
== BMAZZY @175
== BX3Kal @176
== BMAZZY @177
EXIT 
//Mazzy#6 CN  
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",5)Dead("X3KC")Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN BMAZZY KaleMazzy6C // CN version.
@178
DO ~SetGlobal("X3KalMazzy","GLOBAL",6)~
== BX3Kal @179
== BMAZZY @180
== BX3KAL @181
== BMAZZY @182
== BX3Kal @183
== BMAZZY @184 
EXIT 

//Mazzy#6 LN  
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMazzy","GLOBAL",5)!Dead("X3KC")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN BMAZZY KaleMazzy6L// LN version.
@185
DO ~SetGlobal("X3KalMazzy","GLOBAL",6)~
== BX3Kal @186
== BMAZZY @187
== BX3KAL @188
== BMAZZY @189
== BX3KAL @190
== BMAZZY @191
== BX3KAL @192
== BX3KAL @193
== BMAZZY @194
== BX3KAL @195
EXIT 

//Mazzy#7 LN only.
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",6)Alignment("X3Kal",LAWFUL_NEUTRAL)!Global("X3KalRomanceActive","GLOBAL",2)~ THEN BX3KAL KaleMazzy7// LN only
@196
DO ~SetGlobal("X3KalMazzy","GLOBAL",7)~
== BMAZZY @197
== BX3KAL @198
== BMAZZY @199
== BX3KAL @200
== BMAZZY @201
== BX3KAL @202
== BMAZZY @203
== BX3KAL @204
== BMAZZY @205
== BX3KAL @206
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Kal")
See("MINSC")
Global("X3KalMINSC","GLOBAL",0)~ THEN BX3Kal X3KalMINSC1
@207
DO ~SetGlobal("X3KalMINSC","GLOBAL",1)~
== BMINSC @208
== BX3Kal @209
== BMINSC @210
== BX3Kal @211
== BMINSC @212
== BX3Kal @213
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMINSC","GLOBAL",1)~ THEN BMINSC X3KalMINSC2
@214
DO ~SetGlobal("X3KalMINSC","GLOBAL",2)~
== BX3Kal @215
== BMINSC @216
== BX3Kal @217
== BMINSC @218
== BX3Kal @219
== BMINSC @220
== BX3Kal @221
EXIT 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Kal")
See("Hexxat")
Global("X3KalHexxat","GLOBAL",0)~ THEN BX3Kal X3KalHexxat1
@222 
DO ~SetGlobal("X3KalHexxat","GLOBAL",1)~
== BHEXXAT @223
== BX3Kal @224
== BHEXXAT @225
== BX3Kal @226
== BHEXXAT @227
== BX3Kal @228
EXIT 

// Hexxat#2
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Kal")
See("Hexxat")
Global("X3KalHexxat","GLOBAL",1)~ THEN BX3Kal X3KalHexxat2
@229
DO ~SetGlobal("X3KalHexxat","GLOBAL",2)~
== BHEXXAT @230
== BX3Kal @231
== BHEXXAT @232
== BX3Kal @233
== BHEXXAT @234
== BX3KAL @235
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJan","GLOBAL",0)~ THEN BX3KAl X3KAlJan1
@236
DO ~SetGlobal("X3KAlJan","GLOBAL",1)~
== BJAN @237
== BX3KAl @238
== BJAN @239
== BX3KAL @240
EXIT 


// Jan #2
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJan","GLOBAL",1)~ THEN BX3KAl X3KAlJan2
@241
DO ~SetGlobal("X3KAlJan","GLOBAL",2)~
== BJAN @242
== BX3KAl @243
== BJAN @244
== BX3KAL @245
== BJAN @246
== BX3KAL @247
EXIT 


//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Kal")
See("Neera")
Global("X3KalNeera","GLOBAL",0)~ THEN BX3Kal X3KalNeera2
@248
DO ~SetGlobal("X3KalNeera","GLOBAL",1)~
== BNEERA @249
== BX3Kal @250
== BNEERA @251
== BX3Kal @252
== BNEERA @253
== BX3Kal @254
== BNEERA @255
== BX3KAL @256
== BNEERA @257
== BX3KAL @258
== BNEERA @259
== BX3KAL @260
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Kal")
See("Neera")
Global("X3KalNeera","GLOBAL",1)~ THEN BX3Kal X3KalNeera2
@261
DO ~SetGlobal("X3KalNeera","GLOBAL",2)~
== BNEERA @262
== BX3Kal @263
== BNEERA @264
== BX3Kal @265
== BNEERA @266
== BX3Kal @267
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Kal")
See("RASAAD")
Global("X3KalRasaad","GLOBAL",0)~ THEN BRASAAD X3KalRasaad1
@268
DO ~SetGlobal("X3KalRasaad","GLOBAL",1)~
== BX3Kal @269
== BRASAAD @270
== BX3Kal @271
== BRASAAD @272
== BX3Kal @273
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Kal")
See("RASAAD")
Global("X3KalRasaad","GLOBAL",1)~ THEN BX3Kal X3KalRasaad2
@274
DO ~SetGlobal("X3KalRasaad","GLOBAL",2)~
== BRASAAD @275
== BX3Kal @276
== BRASAAD @277
== BX3Kal @278
== BRASAAD @279
== BX3Kal @280
== BRASAAD @281
== BX3Kal @282
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Kal")
See("Valygar")
Global("X3KalValygar","GLOBAL",0)~ THEN BX3Kal X3KalValygar1
@283 
DO ~SetGlobal("X3KalValygar","GLOBAL",1)~
== BVALYGA @284
== BX3Kal @285
== BVALYGA @286
== BX3Kal @287
== BVALYGA @288
== BX3Kal @289
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Kal")
See("Valygar")
Global("X3KalValygar","GLOBAL",1)~ THEN BX3Kal X3KalValygar2
@290 
DO ~SetGlobal("X3KalValygar","GLOBAL",2)~
== BVALYGA @291
== BX3Kal @292
== BVALYGA @293
== BX3Kal @294
== BVALYGA @295
== BX3Kal @296
EXIT 


// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalViconia","GLOBAL",0)~ THEN BX3Kal X3KalViconia1
@297 
DO ~SetGlobal("X3KalViconia","GLOBAL",1)~
== BVICONI @298
== BX3Kal @299
== BVICONI @300
== BX3KAL IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN @301
== BX3KAL IF ~!Global("X3KalRomanceActive","GLOBAL",2)~ THEN @302
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalYoshimo","GLOBAL",0)~ THEN BYOSHIM X3KalYoshimo1
@303 
DO ~SetGlobal("X3KalYoshimo","GLOBAL",1)~
== BX3Kal @304
== BYOSHIM @305
== BX3Kal @306
EXIT 

//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalPartyBG1","GLOBAL",1)
Global("X3KalX3Reb1","LOCALS",0)~ THEN BX3Kal X3KalX3Reb1
@307
DO ~SetGlobal("X3KalX3Reb1","LOCALS",1)~
== BX3Reb @308
== BX3Kal @309
== BX3Reb @310
== BX3Kal @311
== BX3Reb @312
== BX3KAl @313
== BX3Reb @314
== BX3Kal @315
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3Reb2","LOCALS",0)
GlobalGT("X3RebTalk","LOCALS",10)~ THEN BX3Kal X3KalX3Reb2
@316
DO ~SetGlobal("X3KalX3Reb2","LOCALS",1)~
== BX3Reb @317
== BX3Kal @318
== BX3Reb @319
== BX3Kal @320
== BX3Reb @321
== BX3Kal @322
== BX3Reb @323
== BX3Kal @324
== BX3Reb @325
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3Reb3","LOCALS",0)~ THEN BX3Reb X3KalX3Reb3
@326
DO ~SetGlobal("X3KalX3Reb3","LOCALS",1)~
== BX3Kal @327
== BX3Reb @328
== BX3Kal @329
== BX3Reb @330
== BX3Kal IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @331
== BX3Reb IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @332
== BX3Kal IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @333
== BX3Reb IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @334
== BX3Kal IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @335
== BX3Kal IF ~Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @336
== BX3Reb IF ~Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @337
== BX3Kal IF ~Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN @338
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3RebQuest","GLOBAL",15)
Global("X3KalX3Reb2","LOCALS",1)~ THEN BX3Reb X3KalX3Reb4
@339
DO ~SetGlobal("X3KalX3Reb2","LOCALS",2)~
== BX3Kal @340
== BX3Reb @341
== BX3Kal @342
== BX3Reb @343
== BX3Kal @344
== BX3Reb @345
== BX3Kal @346
== BX3Reb @347
== BX3Kal @348
== BX3Reb @349
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
Global("X3KalX3Vie1","LOCALS",0)~ THEN BX3Kal X3KalX3Vie1
@350
DO ~SetGlobal("X3KalX3Vie1","LOCALS",1)~
== BX3Vie @351
== BX3Kal @352
== BX3Vie @353
== BX3Kal @354
== BX3Vie @355
== BX3Kal @356
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
Global("X3KalX3Vie1","LOCALS",1)~ THEN BX3Kal X3KalX3Vie2
@357
DO ~SetGlobal("X3KalX3Vie1","LOCALS",2)~
== BX3Vie @358
== BX3Kal @359
== BX3Vie @360
== BX3Kal @361
== BX3Vie @362
== BX3Kal IF ~InParty("X3Reb")~ THEN @363
== BX3Kal IF ~!InParty("X3Reb")~ THEN @364
== BX3Vie @365
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Alignment("X3Kal",LAWFUL_NEUTRAL)
Global("X3KalX3Vie2","LOCALS",0)~ THEN BX3Vie X3KalX3Vie3
@366
DO ~SetGlobal("X3KalX3Vie2","LOCALS",1)~
== BX3Kal @367
== BX3Vie @368
== BX3Kal @369
== BX3Vie @370
== BX3Kal @371
== BX3Vie @372
== BX3Kal @373
== BX3Vie @374
== BX3Kal IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN @375
EXIT 