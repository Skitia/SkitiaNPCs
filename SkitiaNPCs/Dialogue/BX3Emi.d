
// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("AERIE")
Global("X3EmiAERIE","GLOBAL",0)~ THEN BX3Emi X3EmiAERIE1
@0
DO ~SetGlobal("X3EmiAERIE","GLOBAL",1)~
== BAERIE @1
== BX3Emi @2
== BAERIE @3
== BX3Emi @4
== BAERIE @5
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("AERIE")
Global("X3EmiAERIE","GLOBAL",1)~ THEN BX3Emi X3EmiAERIE2
@6
DO ~SetGlobal("X3EmiAERIE","GLOBAL",2)~
== BAERIE @7
== BX3Emi @8
== BAERIE @9
== BX3Emi @10
== BAERIE @11
== BX3Emi @12
EXIT 

// Aerie #3
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
!Global("X3EmiHeir","GLOBAL",1) 
Global("X3EmiAERIE","GLOBAL",2)~ THEN BAERIE X3EmiAERIE3
@13
DO ~SetGlobal("X3EmiAERIE","GLOBAL",3)~
== BX3Emi @14
== BAERIE @15
== BX3Emi @16
== BAERIE @17
== BX3Emi @18
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Emi")
See("ANOMEN")
Global("X3EmiANOMEN","GLOBAL",0)~ THEN BX3Emi X3EmiANOMEN1
@19
DO ~SetGlobal("X3EmiANOMEN","GLOBAL",1)~
== BANOMEN @20
== BX3Emi @21
== BANOMEN @22
== BX3Emi @23
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiANOMEN","GLOBAL",1)~ THEN BANOMEN X3EmiANOMEN2
@24
DO ~SetGlobal("X3EmiANOMEN","GLOBAL",2)~
== BX3Emi @25
== BANOMEN @26
== BX3Emi @27
== BANOMEN @28
== BX3Emi @29
== BANOMEN @30
== BX3Emi @31
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
AreaType(CITY)
Global("X3EmiCERND","GLOBAL",0)~ THEN BX3Emi X3EmiCERND1
@32
DO ~SetGlobal("X3EmiCERND","GLOBAL",1)~
== BCERND @33
== BX3Emi @34
== BCERND @35
== BX3Emi @36
== BCERND @37
== BX3Emi @38
EXIT 

// CERND #2
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiCERND","GLOBAL",1)~ THEN BCERND X3EmiCERND2
@39
DO ~SetGlobal("X3EmiCERND","GLOBAL",2)~
== BX3Emi @40
== BCERND @41
== BX3Emi @42
== BCERND @43
== BX3Emi @44
== BCERND @45
== BX3Emi @46
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiEDWIN","GLOBAL",0)~ THEN BEDWIN X3EmiEDWIN1
@47
DO ~SetGlobal("X3EmiEDWIN","GLOBAL",1)~
== BX3Emi @48
== BEDWIN @49
== BX3Emi @50
== BEDWIN @51
== BX3Emi @52
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3EmiHAERDALIS1
@53
DO ~SetGlobal("X3EmiHAERDALIS","GLOBAL",1)~
== BX3Emi @54
== BHAERDA @55
== BX3Emi @56
== BHAERDA @57
== BX3Emi @58
== BHAERDA @59
== BX3Emi @60
== BHAERDA @61
== BX3Emi @62
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3EmiHAERDALIS2
@63
DO ~SetGlobal("X3EmiHAERDALIS","GLOBAL",2)~
== BX3Emi @64
== BHAERDA @65
== BX3Emi @66
== BHAERDA @67
== BX3Emi @68
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Emi")
See("IMOEN2")
Global("X3EmiIMOEN","GLOBAL",0)~ THEN BX3Emi X3EmiIMOEN1
@69
DO ~SetGlobal("X3EmiIMOEN","GLOBAL",1)~
== IMOEN2J @70
== BX3Emi @71
== IMOEN2J @72
== BX3Emi IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @73
== BX3Emi IF ~OR(2)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @74
== IMOEN2J @75
== BX3Emi @76
EXIT 
 

// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Emi")
See("Jan")
Global("X3EmiJan","GLOBAL",0)~ THEN BX3Emi X3EmiJan1
@77
DO ~SetGlobal("X3EmiJan","GLOBAL",1)~
== BJAN @78
== BX3Emi @79
== BJAN @80
== BX3Emi @81
== BJAN @82
== BX3Emi @83
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Emi")
See("JAHEIRA")
Global("X3EmiJAHEIRA","GLOBAL",0)~ THEN BX3Emi X3EmiJAHEIRA1
@84
DO ~SetGlobal("X3EmiJAHEIRA","GLOBAL",1)~
== BJAHEIR @85
== BX3Emi @86
== BJAHEIR @87
== BX3Emi @88
== BJAHEIR @89
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Emi")
See("JAHEIRA")
HPLT("X3Emi",25)
Global("X3EmiJAHEIRA","GLOBAL",1)~ THEN BX3Emi X3EmiJAHEIRA2
@90
DO ~SetGlobal("X3EmiJAHEIRA","GLOBAL",2)~
== BJAHEIR @91
== BX3Emi @92
== BJAHEIR @93
== BX3Emi @94
== BJAHEIR @95
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("KELDORN")
Global("X3EmiKELDORN","GLOBAL",0)~ THEN BX3Emi X3EmiKELDORN1
@96
DO ~SetGlobal("X3EmiKELDORN","GLOBAL",1)~
== BKELDOR @97
== BX3Emi @98
== BKELDOR @99
== BX3Emi @100
== BKELDOR @101
== BX3Emi @102
== BKELDOR @103
== BX3Emi @104
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("KELDORN")
Global("X3EmiKELDORN","GLOBAL",1)~ THEN BKELDOR X3EmiKELDORN2
@105
DO ~SetGlobal("X3EmiKELDORN","GLOBAL",2)~
== BX3Emi @106
== BKELDOR @107
== BX3Emi @108
== BKELDOR @109
== BX3Emi @110
== BKELDOR @111
== BX3Emi @112
EXIT 

// KELDORN #3
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("KELDORN")
Global("X3EmiHeir","GLOBAL",1)
Global("X3EmiKELDORN","GLOBAL",2)~ THEN BKELDOR X3EmiKELDORN3
@113
DO ~SetGlobal("X3EmiKELDORN","GLOBAL",3)~
== BX3Emi @114
== BKELDOR @115
== BX3Emi @116
== BKELDOR @117
== BX3Emi @118
EXIT

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Emi")
See("Korgan")
Global("X3EmiKorgan","GLOBAL",0)~ THEN BX3Emi X3EmiKorgan1
@119
DO ~SetGlobal("X3EmiKorgan","GLOBAL",1)~
== BKORGAN @120
== BX3Emi @121
EXIT 

// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Emi")
See("Mazzy")
Global("X3EmiMazzy","GLOBAL",0)~ THEN BX3Emi X3EmiMazzy1
@122
DO ~SetGlobal("X3EmiMazzy","GLOBAL",1)~
== BMAZZY @123
== BX3Emi @124
== BMAZZY @125
== BX3Emi @126
== BMAZZY @127
== BX3Emi @128
== BMAZZY @129
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Emi")
See("Mazzy")
Global("X3EmiMazzy","GLOBAL",1)~ THEN BX3Emi X3EmiMazzy2
@130
DO ~SetGlobal("X3EmiMazzy","GLOBAL",2)~
== BMAZZY @131
== BX3Emi @132
== BMAZZY @133
== BX3Emi @134
== BMAZZY @135
== BX3Emi @136
== BMAZZY @137
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Emi")
See("MINSC")
Global("X3EmiMINSC","GLOBAL",0)~ THEN BX3Emi X3EmiMINSC1
@138
DO ~SetGlobal("X3EmiMINSC","GLOBAL",1)~
== BMINSC @139
== BX3Emi @140
== BMINSC @141
== BX3Emi @142
== BMINSC @143
== BX3Emi @144
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
HPLT("X3Emi",25)
Global("X3EmiMINSC","GLOBAL",1)~ THEN BMINSC X3EmiMINSC2
@145
DO ~SetGlobal("X3EmiMINSC","GLOBAL",2)~
== BX3Emi @146
== BMINSC @147
EXIT 

//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Emi")
See("Nalia")
Global("X3EmiNalia","GLOBAL",0)~ THEN BX3Emi X3EmiNalia2
@148
DO ~SetGlobal("X3EmiNalia","GLOBAL",1)~
== BNALIA @149
== BX3Emi @150
== BNALIA @151
== BX3Emi @152
== BNALIA @153
== BX3Emi @154
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Emi")
See("Nalia")
Global("X3EmiNalia","GLOBAL",1)~ THEN BX3Emi X3EmiNalia2
@155
DO ~SetGlobal("X3EmiNalia","GLOBAL",2)~
== BNALIA @156
== BX3Emi @157
== BNALIA @158
== BX3Emi @159
== BNALIA @160
== BX3Emi @161
== BNALIA @162
== BX3Emi @163
EXIT 

// Nalia#3 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Emi")
See("Nalia")
Global("X3EmiNalia","GLOBAL",2)~ THEN BNALIA X3EmiNalia3
@164
DO ~SetGlobal("X3EmiNalia","GLOBAL",3)~
== BX3Emi @165
== BNALIA @166
== BX3Emi @167
== BNALIA @168
== BX3Emi @169
== BNALIA @170
EXIT 

//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Emi")
See("Neera")
Global("X3EmiNeera","GLOBAL",0)~ THEN BX3Emi X3EmiNeera2
@171
DO ~SetGlobal("X3EmiNeera","GLOBAL",1)~
== BNEERA @172
== BX3Emi @173
== BNEERA @174
== BX3Emi @175
== BNEERA @176
== BX3Emi @177
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Emi")
See("Neera")
Global("X3EmiNeera","GLOBAL",1)~ THEN BX3Emi X3EmiNeera2
@178
DO ~SetGlobal("X3EmiNeera","GLOBAL",2)~
== BNEERA @179
== BX3Emi @180
== BNEERA @181
== BX3Emi @182
== BNEERA @183
== BX3Emi @184
== BNEERA @185
== BX3Emi @186
== BNEERA @187
== BX3Emi @188
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaad","GLOBAL",0)~ THEN BX3Emi X3EmiRasaad1
@189
DO ~SetGlobal("X3EmiRasaad","GLOBAL",1)~
== BRASAAD @190
== BX3Emi @191
== BRASAAD @192
== BX3Emi @193
== BRASAAD @194
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaad","GLOBAL",1)~ THEN BX3Emi X3EmiRasaad2
@195
DO ~SetGlobal("X3EmiRasaad","GLOBAL",2)~
== BRASAAD @196
== BX3Emi @197
== BRASAAD @198
== BX3Emi @199
== BRASAAD @200
== BX3Emi @201
== BRASAAD @202
== BX3Emi @203
EXIT 

// Rasaad#3
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaad","GLOBAL",2)~ THEN BX3Emi X3EmiRasaad3
@204
DO ~SetGlobal("X3EmiRasaad","GLOBAL",3)~
== BRASAAD @205
== BX3Emi @206
== BRASAAD @207
== BX3Emi @208
== BRASAAD @209
== BX3Emi @210
EXIT 

// Rasaad#4
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
OR(2)
Global("X3EmiRomanceActive","GLOBAL",0)
Global("X3EmiRomanceActive","GLOBAL",3)
OR(2)
Global("RasaadRomanceActive","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",3)
Global("X3EmiRasaad","GLOBAL",3)~ THEN BX3Emi X3EmiRasaad4
@211
DO ~SetGlobal("X3EmiRasaad","GLOBAL",4)~
== BRASAAD @212
== BX3Emi @197
== BRASAAD @213
== BX3Emi @214
== BRASAAD @215
== BX3Emi @216
EXIT 



// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
Global("X3EmiValygar","GLOBAL",0)~ THEN BX3Emi X3EmiValygar1
@217 
DO ~SetGlobal("X3EmiValygar","GLOBAL",1)~
== BVALYGA @218
== BX3Emi @219
== BVALYGA @220
== BX3Emi @221
== BVALYGA @222
== BX3Emi @223
== BVALYGA @224
== BX3Emi @225
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
Global("X3EmiValygar","GLOBAL",1)~ THEN BX3Emi X3EmiValygar2
@226 
DO ~SetGlobal("X3EmiValygar","GLOBAL",2)~
== BVALYGA @227
== BX3Emi @228
== BVALYGA @229
== BX3Emi @230
== BVALYGA @231
== BX3Emi @232
== BVALYGA @233
== BX3Emi @234
EXIT 


// Valygar #3
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
!Class("X3Emi",RANGER_ALL)
Global("X3EmiValygar","GLOBAL",2)~ THEN BX3Emi X3EmiValygar1
@235 
DO ~SetGlobal("X3EmiValygar","GLOBAL",3)~
== BVALYGA @236
== BX3Emi @237
== BVALYGA @238
== BX3Emi @239
== BVALYGA @240
== BX3Emi @241
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Emi")
See("Viconia")
Global("X3EmiViconia","GLOBAL",0)~ THEN BX3Emi X3EmiViconia1
@242 
DO ~SetGlobal("X3EmiViconia","GLOBAL",1)~
== BVICONI @243
== BX3Emi @244
== BVICONI @245
== BX3Emi @246
== BVICONI @247
== BX3Emi @248
== BVICONI @249
== BX3Emi @250
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiYoshimo","GLOBAL",0)~ THEN BYOSHIM X3EmiYoshimo1
@251 
DO ~SetGlobal("X3EmiYoshimo","GLOBAL",1)~
== BX3Emi @252
== BYOSHIM @253
== BX3Emi @254
== BYOSHIM @255
== BX3Emi @256
== BYOSHIM @257
== BX3Emi @258
== BYOSHIM @259
== BX3Emi @260
EXIT 

// Skitia Companions
//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
!GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("X3EmiX3Reb1","LOCALS",0)~ THEN BX3Emi X3EmiX3Reb1
@261
DO ~SetGlobal("X3EmiX3Reb1","LOCALS",1)~
== BX3Reb @262
== BX3Emi @263
== BX3Reb @264
== BX3Emi @265
== BX3Reb @266
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3EmiX3Reb2","LOCALS",0)~ THEN BX3Emi X3EmiX3Reb2A
@267
DO ~SetGlobal("X3EmiX3Reb2","LOCALS",1)~
== BX3Reb @268
== BX3Emi @269
== BX3Reb @270
== BX3Emi @271
== BX3Reb @272
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3RFAIL","GLOBAL",2)
Global("X3EmiX3Reb2","LOCALS",1)~ THEN BX3Emi X3EmiX3Reb2B
@273
DO ~SetGlobal("X3EmiX3Reb2","LOCALS",2)~
== BX3Reb @274
== BX3Emi @275
== BX3Reb @276
== BX3Emi @277
== BX3Reb @278
== BX3Emi @279
== BX3Reb @280
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3Reb3","LOCALS",0)~ THEN BX3Emi X3EmiX3Reb3A
@281
DO ~SetGlobal("X3EmiX3Reb3","LOCALS",1)~
== BMINSC IF ~IsValidForPartyDialogue("Minsc")~ THEN @282
== BX3Emi IF ~IsValidForPartyDialogue("Minsc")~ THEN @283
== BX3Reb @284
== BX3Emi @285
== BX3Reb @286
== BX3Emi @287
== BX3Reb @288
== BX3Emi @289
== BX3Reb @290
== BX3Emi @291
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3Reb3","LOCALS",1)~ THEN BX3Emi X3EmiX3Reb3B
@292
DO ~SetGlobal("X3EmiX3Reb3","LOCALS",2)~
== BX3Reb @293
== BX3Emi @294
== BX3Reb @295
== BX3Emi @296
== BX3Reb @297
== BX3Emi @298
== BX3Reb @299
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiRomanceActive","GLOBAL",2)
Global("X3EmiX3Reb4","LOCALS",0)~ THEN BX3Reb X3EmiX3Reb4A
@300
DO ~SetGlobal("X3EmiX3Reb4","LOCALS",1)~
== BX3Emi @301
== BX3Reb @302
== BX3Emi @303
== BX3Reb @304
== BX3Emi @305
== BX3Reb @306
== BX3Emi @307
== BX3Reb @308
== BX3Emi @309
== BX3Reb @310
== BX3Emi @311
EXIT 

// Helga 
CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3EmiX3Hel1","LOCALS",0)~ THEN BX3Emi X3EmiX3Hel1A
@312
DO ~SetGlobal("X3EmiX3Hel1","LOCALS",1)~
== BX3Hel @313
== BX3Emi @314
== BX3Hel @315
== BX3Emi @316
== BX3Hel @317
== BX3Emi @318
EXIT 


CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
!GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("X3EmiX3Hel2","LOCALS",0)~ THEN BX3Hel X3EmiX3Hel2
@319
DO ~SetGlobal("X3EmiX3Hel2","LOCALS",1)~
== BX3Emi @320
== BX3Hel @321
== BX3Emi @322
== BX3Hel @323
== BX3Emi @324
== BX3Hel @325
== BX3Emi @326
== BX3Hel @327
EXIT 


CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3EmiX3Hel1","LOCALS",1)~ THEN BX3Emi X3EmiX3Hel1B
@328
DO ~SetGlobal("X3EmiX3Hel1","LOCALS",2)~
== BX3Hel @329
== BX3Emi @330
== BX3Hel @331
== BX3Emi @332
== BX3Hel @333
== BX3Emi @334
== BX3Hel @335
EXIT 

//Kale 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
!Global("X3KalRomanceActive","GLOBAL",2)
Global("X3EmiX3Kal1","LOCALS",0)~ THEN BX3Emi X3EmiX3Kal1
@336
DO ~SetGlobal("X3EmiX3Kal1","LOCALS",1)~
== BX3Kal @337
== BX3Emi @338
== BX3Kal @339
== BX3Emi @340
== BX3Kal @341
== BX3Emi @342
== BX3Kal @343
== BX3Emi @344
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiX3Kal2","LOCALS",0)~ THEN BX3Emi X3EmiX3Kal2
@345
DO ~SetGlobal("X3EmiX3Kal2","LOCALS",1)~
== BX3Kal @346
== BX3Emi @347
== BX3Kal @348
== BX3Emi @349
== BX3Kal @350
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiX3Kal2","LOCALS",1)~ THEN BX3Emi X3EmiX3Kal3
@351
DO ~SetGlobal("X3EmiX3Kal2","LOCALS",2)~
== BX3Kal @352
== BX3Emi @353
== BX3Kal @354
== BX3Emi @355
== BX3Kal @356
== BX3Emi @357
== BX3Kal @358
== BX3Emi @359
== BX3Kal @360
== BX3Emi @361
EXIT 

//Vienxay 
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
Global("X3EmiX3Vie1","LOCALS",0)~ THEN BX3Emi X3EmiX3Vie1
@362
DO ~SetGlobal("X3EmiX3Vie1","LOCALS",1)~
== BX3Vie @363
== BX3Emi @364
== BX3Vie @365
== BX3Emi @366
== BX3Vie @367
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
Global("X3EmiX3Vie1","LOCALS",1)~ THEN BX3Emi X3EmiX3Vie2
@368
DO ~SetGlobal("X3EmiX3Vie1","LOCALS",2)~
== BX3Vie @369
== BX3Emi @370
== BX3Vie @371
== BX3Emi @372
== BX3Vie @373
== BX3Emi @374
== BX3Vie @375
== BX3Emi @376
== BX3Vie @377
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3EmiX3Vie2","LOCALS",0)~ THEN BX3Vie X3EmiX3Vie3
@378
DO ~SetGlobal("X3EmiX3Vie2","LOCALS",1)~
== BX3Emi @379
== BX3Vie @380
== BX3Emi @381
== BX3Vie @382
== BX3Emi @383
== BX3Vie @384
== BX3Emi @385
== BX3Vie @386
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiRomanceActive","GLOBAL",2)
Global("X3EmiX3Vie2","LOCALS",1)~ THEN BX3Vie X3EmiX3Vie4
@387
DO ~SetGlobal("X3EmiX3Vie2","LOCALS",2)~
== BX3Emi @388
== BX3Vie @389
== BX3Emi @390
== BX3Vie @391
== BX3Emi @392
== BX3Vie @393
== BX3Emi @394
== BX3Vie @395
EXIT 