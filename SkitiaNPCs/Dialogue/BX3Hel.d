// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Hel")
See("AERIE")
Global("X3HelAERIE","GLOBAL",0)~ THEN BX3Hel X3HelAERIE1
@0
DO ~SetGlobal("X3HelAERIE","GLOBAL",1)~
== BAERIE @1
== BX3Hel @2
== BAERIE @3
== BX3Hel @4
== BAERIE @5
== BX3Hel @6
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Hel")
See("AERIE")
Global("X3HelAERIE","GLOBAL",1)~ THEN BX3Hel X3HelAERIE2
@7
DO ~SetGlobal("X3HelAERIE","GLOBAL",2)~
== BAERIE @8
== BX3Hel @9
== BAERIE @10
== BX3Hel @11
== BAERIE @12
== BX3Hel @13
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelANOMEN","GLOBAL",0)~ THEN BANOMEN X3HelANOMEN1
@14
DO ~SetGlobal("X3HelANOMEN","GLOBAL",1)~
== BX3Hel @15
== BANOMEN @16
== BX3Hel @17
== BANOMEN @18
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelANOMEN","GLOBAL",1)~ THEN BANOMEN X3HelANOMEN2
@19
DO ~SetGlobal("X3HelANOMEN","GLOBAL",2)~
== BX3Hel @20
== BANOMEN @21
== BX3Hel @22
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Hel")
See("CERND")
Global("X3HelCERND","GLOBAL",0)~ THEN BX3Hel X3HelCERND1
@23
DO ~SetGlobal("X3HelCERND","GLOBAL",1)~
== BCERND @24
== BX3Hel @25
== BCERND @26
== BX3Hel @27
EXIT 

//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelDORN","GLOBAL",0)~ THEN BDORN X3HelDORN1
@28
DO ~SetGlobal("X3HelDORN","GLOBAL",1)~
== BX3Hel @29
== BDORN @30
== BX3Hel @31
== BDORN @32
== BX3Hel @33
== BDORN @34
EXIT 

//Dorn #2
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelDORN","GLOBAL",1)~ THEN BDORN X3HelDORN2
@35
DO ~SetGlobal("X3HelDORN","GLOBAL",2)~
== BX3Hel @36
== BDORN @37
== BX3Hel @38
== BDORN @39
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelEDWIN","GLOBAL",0)~ THEN BEDWIN X3HelEDWIN1
@40
DO ~SetGlobal("X3HelEDWIN","GLOBAL",1)~
== BX3Hel @41
== BEDWIN @42
== BX3Hel @43
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3HelHAERDALIS1
@44
DO ~SetGlobal("X3HelHAERDALIS","GLOBAL",1)~
== BX3Hel @45
== BHAERDA @46
== BX3Hel @47
== BHAERDA @48
== BX3Hel @49
== BHAERDA @50
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3HelHAERDALIS2
@51
DO ~SetGlobal("X3HelHAERDALIS","GLOBAL",2)~
== BX3Hel @52
== BHAERDA @53
== BX3Hel @54
== BHAERDA @55
== BX3Hel @56
== BHAERDA @57
EXIT 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Hel")
See("Hexxat")
Global("X3HelHexxat","GLOBAL",0)~ THEN BX3Hel X3HelHexxat1
@58 
DO ~SetGlobal("X3HelHexxat","GLOBAL",1)~
== BHEXXAT @59
== BX3Hel @60
== BHEXXAT @61
== BX3Hel @62
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Hel")
See("IMOEN2")
Global("X3HelIMOEN","GLOBAL",0)~ THEN BX3Hel X3HelIMOEN1
@63
DO ~SetGlobal("X3HelIMOEN","GLOBAL",1)~
== IMOEN2J @64
== BX3Hel @65
== IMOEN2J @66
== BX3Hel @67
== IMOEN2J @68
== BX3Hel @69
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Hel")
See("Jan")
Global("X3HelJan","GLOBAL",0)~ THEN BX3Hel X3HelJan1
@70
DO ~SetGlobal("X3HelJan","GLOBAL",1)~
== BJAN @71
== BX3Hel @72
== BJAN @73
== BX3Hel @74
== BJAN @75
== BX3Hel @76
EXIT 


// Jan #2
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Hel")
See("Jan")
Global("X3HelJan","GLOBAL",1)~ THEN BX3Hel X3HelJan2
@77
DO ~SetGlobal("X3HelJan","GLOBAL",2)~
== BJAN @78
== BX3Hel @79
== BJAN @80
== BX3Hel @81
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Hel")
See("JAHEIRA")
Global("X3HelJAHEIRA","GLOBAL",0)~ THEN BX3Hel X3HelJAHEIRA1
@82
DO ~SetGlobal("X3HelJAHEIRA","GLOBAL",1)~
== BJAHEIR @83
== BX3Hel @84
== BJAHEIR @85
== BX3Hel @86
== BJAHEIR @87
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Hel")
See("JAHEIRA")
Global("X3HelJAHEIRA","GLOBAL",1)~ THEN BX3Hel X3HelJAHEIRA2
@88
DO ~SetGlobal("X3HelJAHEIRA","GLOBAL",2)~
== BJAHEIR @89
== BX3Hel @90
== BJAHEIR @91
== BX3Hel @92
== BJAHEIR @93
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
Global("X3HelKELDORN","GLOBAL",0)~ THEN BX3Hel X3HelKELDORN1
@94
DO ~SetGlobal("X3HelKELDORN","GLOBAL",1)~
== BKELDOR @95
== BX3Hel @96
== BKELDOR @97
== BX3Hel @98
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
Global("X3HelKELDORN","GLOBAL",1)~ THEN BKELDOR X3HelKELDORN2
@99
DO ~SetGlobal("X3HelKELDORN","GLOBAL",2)~
== BX3Hel @100
== BKELDOR @101
== BX3Hel @102
== BKELDOR @103
== BX3Hel @104
== BKELDOR @105
EXIT 

// KELDORN #3
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
GlobalGT("X3HelQuest","GLOBAL",1)
Global("X3HelKELDORN","GLOBAL",2)~ THEN BKELDOR X3HelKELDORN3
@106
DO ~SetGlobal("X3HelKELDORN","GLOBAL",3)~
== BX3Hel @107
== BKELDOR @108
== BX3Hel @109
EXIT

// KELDORN #4
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
Global("X3HelKELDORN","GLOBAL",3)~ THEN BKELDOR X3HelKELDORN3
@110
DO ~SetGlobal("X3HelKELDORN","GLOBAL",4)~
== BX3Hel @111
== BKELDOR @112
== BX3Hel @113
== BKELDOR @114
EXIT

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("Korgan")
Global("X3HelKorgan","GLOBAL",0)~ THEN BX3Hel X3HelKorgan1
@115
DO ~SetGlobal("X3HelKorgan","GLOBAL",1)~
== BKORGAN @116
== BX3Hel @117
EXIT 

// Korgan #2
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("Korgan")
Global("X3HelKorgan","GLOBAL",1)~ THEN BX3Hel X3HelKorgan2
@118
DO ~SetGlobal("X3HelKorgan","GLOBAL",2)~
== BKORGAN @119
== BX3Hel @120
== BKORGAN @121
== BX3Hel @122
== BKORGAN @123
== BX3Hel @124
== BKORGAN @125
EXIT 

// Korgan #3
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("Korgan")
Global("X3HelKorgan","GLOBAL",1)~ THEN BX3Hel X3HelKorgan3
@126
DO ~SetGlobal("X3HelKorgan","GLOBAL",2)~
== BKORGAN @127
== BX3Hel @128
== BKORGAN @129
== BX3Hel @130
== BKORGAN @131
EXIT 





// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Hel")
See("Mazzy")
Global("X3HelMazzy","GLOBAL",0)~ THEN BX3Hel X3HelMazzy1
@132 
DO ~SetGlobal("X3HelMazzy","GLOBAL",1)~
== BMAZZY @133
== BX3Hel @134
== BX3Hel @135
== BMAZZY @136
== BX3Hel @137
== BMAZZY @138
== BX3Hel @139
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelMazzy","GLOBAL",1)~ THEN BMAZZY X3HelMazzy2
@140 
DO ~SetGlobal("X3HelMazzy","GLOBAL",2)~
== BX3Hel @141
== BMAZZY @142
== BX3Hel @143
== BMAZZY @144
== BX3Hel @145
== BMAZZY @146
== BX3Hel @147
== BMAZZY @148
== BX3HEL @149
EXIT 
//Mazzy#3
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Hel")
See("Mazzy")
Global("X3HelMazzy","GLOBAL",2)~ THEN BX3Hel X3HelMazzy3
@150 
DO ~SetGlobal("X3HelMazzy","GLOBAL",3)~
== BMAZZY @151
== BX3Hel @152
== BMAZZY @153
== BX3Hel @154
== BMAZZY @155
== BX3Hel @156
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Hel")
See("MINSC")
Global("X3HelMINSC","GLOBAL",0)~ THEN BX3Hel X3HelMINSC1
@157
DO ~SetGlobal("X3HelMINSC","GLOBAL",1)~
== BMINSC @158
== BX3Hel @159
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
HPLT("BMINSC",25)
Global("X3HelMINSC","GLOBAL",1)~ THEN BMINSC X3HelMINSC2
@160
DO ~SetGlobal("X3HelMINSC","GLOBAL",2)~
== BX3Hel @161
== BMINSC @162
== BX3Hel @163
== BMINSC @164
== BX3Hel @165
EXIT 

//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Hel")
See("Nalia")
Global("X3HelNalia","GLOBAL",0)~ THEN BX3Hel X3HelNalia2
@166
DO ~SetGlobal("X3HelNalia","GLOBAL",1)~
== BNALIA @167
== BX3Hel @168
== BNALIA @169
== BX3Hel @170
== BNALIA @171
== BX3Hel @172
EXIT 

//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Hel")
See("Neera")
Global("X3HelNeera","GLOBAL",0)~ THEN BX3Hel X3HelNeera2
@173
DO ~SetGlobal("X3HelNeera","GLOBAL",1)~
== BNEERA @174
== BX3Hel @175
== BNEERA @176
== BX3Hel @177
== BNEERA @178
== BX3HEL @179
== BNEERA @180
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Hel")
See("Neera")
Global("X3HelNeera","GLOBAL",1)~ THEN BX3Hel X3HelNeera2
@181
DO ~SetGlobal("X3HelNeera","GLOBAL",2)~
== BNEERA @182
== BX3Hel @183
== BNEERA @184
== BX3Hel @185
== BNEERA @186
== BX3Hel @187
== BNEERA @188
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Hel")
See("RASAAD")
Global("X3HelRasaad","GLOBAL",0)~ THEN BX3Hel X3HelRasaad1
@189
DO ~SetGlobal("X3HelRasaad","GLOBAL",1)~
== BRASAAD @190
== BX3Hel @191
== BRASAAD @192
== BX3Hel @193
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Hel")
See("RASAAD")
Global("X3HelRasaad","GLOBAL",1)~ THEN BX3Hel X3HelRasaad2
@194
DO ~SetGlobal("X3HelRasaad","GLOBAL",2)~
== BRASAAD @195
== BX3Hel @196
== BRASAAD @197
== BX3Hel @198
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Hel")
See("Valygar")
Global("X3HelValygar","GLOBAL",0)~ THEN BX3Hel X3HelValygar1
@199 
DO ~SetGlobal("X3HelValygar","GLOBAL",1)~
== BVALYGA @200
== BX3Hel @201
== BVALYGA @202
== BX3Hel @203
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Hel")
See("Valygar")
Global("X3HelValygar","GLOBAL",1)~ THEN BX3Hel X3HelValygar2
@204 
DO ~SetGlobal("X3HelValygar","GLOBAL",2)~
== BVALYGA @205
== BX3Hel @206
== BVALYGA @207
== BX3Hel @208
== BVALYGA @209
== BX3HEL @210
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Hel")
See("Viconia")
Global("X3HelViconia","GLOBAL",0)~ THEN BX3Hel X3HelViconia1
@211 
DO ~SetGlobal("X3HelViconia","GLOBAL",1)~
== BVICONI @212
== BX3Hel @213
== BVICONI @214
== BX3HEL @215
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelYoshimo","GLOBAL",0)~ THEN BYOSHIM X3HelYoshimo1
@216 
DO ~SetGlobal("X3HelYoshimo","GLOBAL",1)~
== BX3Hel @217
== BYOSHIM @218
== BX3Hel @219
== BYOSHIM @220
== BX3Hel @221
== BYOSHIM @222
EXIT 

//Skitia NPCS 
//Kale 
 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal1","LOCALS",0)~ THEN BX3Hel X3HelX3Kal1
@223
DO ~SetGlobal("X3HelX3Kal1","LOCALS",1)~
== BX3Kal @224
== BX3Hel @225
== BX3Kal @226
== BX3Hel @227
== BX3Kal @228
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal1","LOCALS",1)~ THEN BX3Hel X3HelX3Kal2
@229
DO ~SetGlobal("X3HelX3Kal1","LOCALS",2)~
== BX3Kal @230
== BX3Hel @231
== BX3Kal @232
== BX3Hel @233
== BX3Kal @234
== BX3Hel @235
== BX3KAl @236
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal2","LOCALS",0)~ THEN BX3Kal X3HelX3Kal3
@237
DO ~SetGlobal("X3HelX3Kal2","LOCALS",1)~
== BX3Hel @238
== BX3Kal @239
== BX3Hel @240
== BX3Kal @241
== BX3Hel @242
== BX3Kal @243
== BX3Hel @244
== BX3Kal @245
== BX3Hel @246
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal2","LOCALS",1)~ THEN BX3Kal X3HelX3Kal4
@247
DO ~SetGlobal("X3HelX3Kal2","LOCALS",2)~
== BX3Hel @248
== BX3Kal @249
== BX3Hel @250
== BX3Kal @251
== BX3Hel @252
== BX3Kal @253
== BX3Hel @254
== BX3KAl @255
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3KalRomanceActive","GLOBAL",1)
Global("X3RebRomanceActive","GLOBAL",1)
Global("X3EmiRomanceActive","GLOBAL",1) //
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3HelX3Kal1","LOCALS",2)~ THEN BX3Hel X3HelX3Kal5
@256
DO ~SetGlobal("X3HelX3Kal1","LOCALS",3)~
== BX3Kal @257
== BX3Hel @258
== BX3Kal @259
== BX3Hel @260
== BX3Kal @261
== BX3Hel @262
== BX3KAl @263
== BX3Hel @264
EXIT 

//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3Reb1","LOCALS",0)~ THEN BX3Hel X3HelX3Reb1
@265
DO ~SetGlobal("X3HelX3Reb1","LOCALS",1)~
== BX3Reb @266
== BX3Hel @267
== BX3Reb @268
== BX3Hel @269
== BX3Reb @270
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3Reb1","LOCALS",1)
HPPercentLT("X3Reb",50)~ THEN BX3Hel X3HelX3Reb2
@271
DO ~SetGlobal("X3HelX3Reb1","LOCALS",2)~
== BX3Reb @272
== BX3Hel @273
== BX3Reb @274
== BX3Hel @275
DO ~ForceSpell("X3Reb",CLERIC_CURE_SERIOUS_WOUNDS)~
== BX3Reb @276
== BX3Hel @277
== BX3Reb @278
== BX3Hel @279
== BX3Reb @280
== BX3Hel @281
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3Reb2","LOCALS",0)~ THEN BX3Reb X3HelX3Reb3
@282
DO ~SetGlobal("X3HelX3Reb2","LOCALS",1)~
== BX3Hel @283
== BX3Reb @284
== BX3Hel @285
== BX3Reb @286
== BX3Hel @287
== BX3Hel @288
== BX3Reb @289
== BX3Hel @290
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3HelX3Reb2","LOCALS",1)~ THEN BX3Reb X3HelX3Reb4
@291
DO ~SetGlobal("X3HelX3Reb2","LOCALS",2)~
== BX3Hel @292
== BX3Reb @293
== BX3Hel @294
== BX3Reb @295
== BX3Hel @296
== BX3Reb @297
== BX3Hel @298
== BX3Reb @299
== BX3Hel @300
== BX3Reb @301
== BX3Hel @302
EXIT 

//Vienxay 
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3HelX3Vie1","LOCALS",0)~ THEN BX3Hel X3HelX3Vie1
@303
DO ~SetGlobal("X3HelX3Vie1","LOCALS",1)~
== BX3Vie @304
== BX3Hel @305
== BX3Vie @306
== BX3Hel @307
== BX3Vie @308
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelX3Vie1","LOCALS",1)
HPPercentLT("X3Vie",50)~ THEN BX3Vie X3HelX3Vie2
@309
DO ~SetGlobal("X3HelX3Vie1","LOCALS",2)~
== BX3Hel @310
== BX3Vie @311
== BX3Hel @312
DO ~ForceSpell("X3Vie",CLERIC_CURE_SERIOUS_WOUNDS)~
== BX3Vie @313
== BX3Hel @314
== BX3Vie @315
== BX3Hel @316
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3HelX3Vie1","LOCALS",1)~ THEN BX3Hel X3HelX3Vie3
@317
DO ~SetGlobal("X3HelX3Vie1","LOCALS",2)~
== BX3Vie @318
== BX3Hel @319
== BX3Vie @320
== BX3Hel @321
== BX3Vie @322
== BX3Hel @323
== BX3Vie @324
EXIT 

