




// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Isa")
See("Viconia")
Global("X3IsaViconia","GLOBAL",0)~ THEN BX3Isa X3IsaViconia1
@0
DO ~SetGlobal("X3IsaViconia","GLOBAL",1)~
== BVICONI @1
== BX3Isa @2
== BVICONI @3
== BX3Isa @4
== BVICONI @5
EXIT 

// Viconia #2
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaViconia","GLOBAL",1)~ THEN BVICONI X3IsaViconia2
@6
DO ~SetGlobal("X3IsaViconia","GLOBAL",2)~
== BX3Isa @7
== BVICONI @8
== BX3Isa @9
== BVICONI @10
== BX3Isa @11
EXIT 


// Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Isa")
See("Dorn")
Global("X3IsaDorn","GLOBAL",0)~ THEN BDORN X3IsaDorn1
@12
DO ~SetGlobal("X3IsaDorn","GLOBAL",1)~
== BX3Isa @13
== BDORN @14
== BX3Isa @15
EXIT 

// Dorn #2
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaDorn","GLOBAL",1)~ THEN BDORN X3IsaDorn2
@16
DO ~SetGlobal("X3IsaDorn","GLOBAL",2)~
== BX3Isa @17
== BDORN @18
== BX3Isa @19
EXIT

//Rasaad #1 Isaac: I don't see the problem, Rasaad. What is wrong with people believing Shar and Selune are one?
CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isa")
See("Rasaad")
Global("X3IsaRasaad","GLOBAL",0)~ THEN BX3Isa X3IsaRasaad1
@20
DO ~SetGlobal("X3IsaRasaad","GLOBAL",1)~
== BRasaad @21
== BX3Isa @22
== BRasaad @23
== BX3Isa @24
== BRasaad @25
== BX3Isa @26
EXIT 

// Rasaad #2 ~You seem far removed from your Order of Planar Hunters, Isaac.~
CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isa")
See("Rasaad")
Global("X3IsaRasaad","GLOBAL",1)~ THEN BRasaad X3IsaRasaad2
@27
DO ~SetGlobal("X3IsaRasaad","GLOBAL",2)~
== BX3Isa @28
== BRasaad @29
== BX3Isa @30
== BRasaad @31
EXIT 



// Rasaad #3, did not kill Mavis. 


CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isa")
See("Rasaad")
!Dead("X3IMavis")Dead("X3IPHL")
Global("X3IsaRasaad","GLOBAL",2)~ THEN BRasaad X3IsaRasaad3
@32
DO ~SetGlobal("X3IsaRasaad","GLOBAL",3)~
== BX3Isa @33
= @34
== BRasaad @35
== BX3Isa @36
EXIT 





// Rasaad #3 alternate, did kill Mavis.

CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isa")
See("Rasaad")
Dead("X3IMavis")!Dead("X3IPHL")
Global("X3IsaRasaad","GLOBAL",2)~ THEN BRasaad X3IsaRasaad3A
@37
DO ~SetGlobal("X3IsaRasaad","GLOBAL",3)~
== BX3Isa @38
== BRasaad @39
== BX3Isa @40
== BRasaad @41
== BX3Isa @42
EXIT 

//Jan Jansen #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Isa")
See("Jan")
Dead("X3IMavis")!Dead("X3IPHL")
Global("X3IsaJan","GLOBAL",0)~ THEN BX3Isa X3IsaJan1
@43
DO ~SetGlobal("X3IsaJan","GLOBAL",1)~
== BJAN @44
== BX3Isa @45
== BJAN @46
== BX3Isa @47
== BJAN @48
== BX3Isa @49
== BJAN @50
== BX3Isa @51
EXIT 

//Jan Jansen #2
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Isa")
See("Jan")
Dead("X3IMavis")!Dead("X3IPHL")
Global("X3IsaJan","GLOBAL",1)~ THEN BX3Isa X3IsaJan2
@52
DO ~SetGlobal("X3IsaJan","GLOBAL",2)~
== BJAN @53
== BX3Isa @54
== BJAN @55
== BX3Isa @56
== BJAN @57
== BX3Isa @58
EXIT 

// Haer'dalis #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3IsaHAERDALIS1
@59
DO ~SetGlobal("X3IsaHAERDALIS","GLOBAL",1)~
== BX3Isa @60
== BHAERDA @61
== BX3Isa @62
== BHAERDA @63
== BX3Isa @64
EXIT 

// Haer'dalis #2
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3IsaHAERDALIS2
@65
DO ~SetGlobal("X3IsaHAERDALIS","GLOBAL",2)~
== BX3Isa @66
== BHAERDA @67
== BX3Isa @68
== BHAERDA @69
== BX3Isa @70
== BHAERDA @71
EXIT 

// Haer'dalis #3
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaHAERDALIS","GLOBAL",2)~ THEN BHAERDA X3IsaHAERDALIS3
@72
DO ~SetGlobal("X3IsaHAERDALIS","GLOBAL",3)~
== BX3Isa @73
== BHAERDA @74
== BX3Isa @75
== BHAERDA @76
== BX3Isa @77
== BHAERDA @78
EXIT 

// Mazzy #1
CHAIN
IF ~IsValidForPartyDialogue("MAZZY")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaMAZZY","GLOBAL",0)~ THEN BMAZZY X3IsaMAZZY1
@79
DO ~SetGlobal("X3IsaMAZZY","GLOBAL",1)~
== BX3Isa @80
== BMAZZY @81
== BX3Isa @82
== BMAZZY @83
EXIT 

// Mazzy #2
CHAIN
IF ~IsValidForPartyDialogue("MAZZY")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaMAZZY","GLOBAL",1)~ THEN BMAZZY X3IsaMAZZY2
@84
DO ~SetGlobal("X3IsaMAZZY","GLOBAL",2)~
== BX3Isa @85
== BMAZZY @86
== BX3Isa IF ~!Dead("X3IPHL")~ THEN @87
== BX3Isa IF ~Dead("X3IPHL")~ THEN @88
EXIT 


// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaYoshimo","GLOBAL",0)~ THEN BYOSHIM X3IsaYoshimo1
@89
DO ~SetGlobal("X3IsaYoshimo","GLOBAL",1)~
== BX3Isa @90
== BYOSHIM @91
== BX3Isa @92
== BYOSHIM @93
== BX3Isa @94
EXIT 

// Yoshimo #2
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaYoshimo","GLOBAL",1)~ THEN BYOSHIM X3IsaYoshimo2
@95
DO ~SetGlobal("X3IsaYoshimo","GLOBAL",2)~
== BX3Isa @96
== BYOSHIM @97
== BX3Isa @98
== BYOSHIM @99
== BX3Isa @100
EXIT 

// Edwin #1
CHAIN
IF ~IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaEdwin","GLOBAL",0)~ THEN BX3ISA X3IsaEdwin1
@101
DO ~SetGlobal("X3IsaEdwin","GLOBAL",1)~
== BEDWIN @102
== BX3Isa @103
== BEDWIN @104
== BX3Isa @105
EXIT 

// Edwin #2
CHAIN
IF ~IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaEdwin","GLOBAL",1)~ THEN BX3ISA X3IsaEdwin2
@106
DO ~SetGlobal("X3IsaEdwin","GLOBAL",2)~
== BEDWIN @107
== BX3Isa @108
== BEDWIN @109
== BX3Isa @110
== BEDWIN @111
EXIT 

//Edwin #3

CHAIN
IF ~IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Gender("Edwin",FEMALE)
Global("X3IsaEdwin","GLOBAL",2)~ THEN BX3ISA X3IsaEdwin3
@112
DO ~SetGlobal("X3IsaEdwin","GLOBAL",3)~
== BEDWIN @113
== BX3Isa @114
== BEDWIN @115
== BX3Isa @116
EXIT 

// NALIA #1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaNALIA","GLOBAL",0)~ THEN BX3ISA X3IsaNALIA1
@117
DO ~SetGlobal("X3IsaNALIA","GLOBAL",1)~
== BNALIA @118
== BX3Isa @119
== BNALIA @120
== BX3Isa @121
== BNALIA @122
== BX3Isa @123
EXIT 

// NALIA #2
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaNALIA","GLOBAL",1)~ THEN BNALIA X3IsaNALIA2
@124
DO ~SetGlobal("X3IsaNALIA","GLOBAL",2)~
== BX3Isa @125
== BNALIA @126
== BX3Isa @127
== BNALIA @128
== BX3Isa @129
== BNALIA @130
== BX3Isa @131
EXIT 

//NALIA #3

CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaNALIA","GLOBAL",2)~ THEN BX3ISA X3IsaNALIA3
@131
DO ~SetGlobal("X3IsaNALIA","GLOBAL",3)~
== BNALIA @132
== BX3Isa @133
== BNALIA @134
== BX3Isa @135
== BNALIA @136
== BX3Isa @137
EXIT 

// Anomen #1
CHAIN
IF ~IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaAnomen","GLOBAL",0)~ THEN BANOMEN X3IsaAnomen1
@138
DO ~SetGlobal("X3IsaAnomen","GLOBAL",1)~
== BX3Isa @139
== BAnomen @140
== BX3Isa @141
== BAnomen @142
EXIT 

// Anomen #2
CHAIN
IF ~IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaAnomen","GLOBAL",1)~ THEN BAnomen X3IsaAnomen2
@143
DO ~SetGlobal("X3IsaAnomen","GLOBAL",2)~
== BX3Isa @144
== BAnomen @145
== BX3Isa @146
EXIT 

//Anomen #3

CHAIN
IF ~IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Gender("Anomen",FEMALE)
Global("X3IsaRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",1)
Global("X3IsaAnomen","GLOBAL",2)~ THEN BX3ISA X3IsaAnomen3
@147
DO ~SetGlobal("X3IsaAnomen","GLOBAL",3)~
== BAnomen @148
== BX3Isa @149
== BAnomen @150
EXIT 

//Emily #1 
CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Emi")
See("X3Isa")
HPLT("X3ISA",25)
Global("X3EmiIsa","LOCALS",0)~ THEN BX3Emi X3EmiIsa1
@151
DO ~SetGlobal("X3EmiIsa","LOCALS",1)~
== BX3Isa @152
== BX3Emi @153
== BX3Isa @154
== BX3Emi @155
== BX3Isa @156
== BX3Emi @157
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Emi")
See("X3Isa")
Global("X3IsaEmi","GLOBAL",0)~ THEN BX3Emi X3EmiIsa2
@158
DO ~SetGlobal("X3IsaEmi","GLOBAL",1)~
== BX3Isa @159
== BX3Emi @160
== BX3Isa @161
== BX3Emi @162
== BX3Isa @163
== BX3Emi @164
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Emi")
See("X3Isa")
Global("X3IPlanarHunterEnemy","GLOBAL",1)
!Dead("X3IMavis")
Global("X3IsaEmi","GLOBAL",1)~ THEN BX3Emi X3EmiIsa3
@165
DO ~SetGlobal("X3IsaEmi","GLOBAL",2)~
== BX3Isa @166
== BX3Emi @167
== BX3Isa @168
== BX3Emi @169
== BX3Isa @170
== BX3Emi @171
== BX3Isa @172
== BX3Emi @173
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3IPlanarHunterEnemy","GLOBAL",1)
!Dead("X3IMavis")
GlobalGT("X3IsaEmi","GLOBAL",0)Global("X3IsaEmi","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)~ THEN BX3Isa X3EmiIsa4
@174
DO ~SetGlobal("X3IsaEmi","LOCALS",1)~
== BX3Emi @175
== BX3Isa @176
== BX3Emi @177
== BX3Isa @178
== BX3Emi @179
== BX3Isa @180
== BX3Emi @181
EXIT 

//Helga 

CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Hel")
See("X3Isa")
Global("X3IsaHel","GLOBAL",0)~ THEN BX3Hel X3HelIsa1
@182
DO ~SetGlobal("X3IsaHel","GLOBAL",1)~
== BX3Isa @183
== BX3Hel @184
== BX3Isa @185
== BX3Kal IF ~IsValidForPartyDialogue("X3Kal")~ THEN @186
== BX3Hel @187
== BX3Isa @188
== BX3Isa @189
== BX3Hel @190
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3IsaHel","GLOBAL",1)~ THEN BX3Isa X3HelIsa2
@191
DO ~SetGlobal("X3IsaHel","GLOBAL",2)~
== BX3Hel @192
== BX3Isa @193
== BX3Hel @194
== BX3Isa @195
== BX3Hel @196
== BX3Isa @197
EXIT 


CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3IsaHel","GLOBAL",2)~ THEN BX3Isa X3HelIsa3
@198
DO ~SetGlobal("X3IsaHel","GLOBAL",3)~
== BX3Hel @199
== BX3Isa @200
== BX3Hel @201
== BX3Isa @202
== BX3Hel @203
== BX3Isa @204
== BX3Hel @205
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3IsaHel","GLOBAL",3)~ THEN BX3Isa X3HelIsa4
@206
DO ~SetGlobal("X3IsaHel","GLOBAL",4)~
== BX3Hel @207
== BX3Isa @208
== BX3Hel @209
== BX3Isa @210
EXIT 
//Imoen
CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("IMOEN2")
See("IMOEN")
Global("X3IsaImoen","GLOBAL",0)~ THEN BX3Isa X3IsaImoen1
@211
DO ~SetGlobal("X3IsaImoen","GLOBAL",1)~
== BIMOEN2 @212
== BX3Isa @213
== BIMOEN2 @214
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("IMOEN2")
See("IMOEN")
Global("X3IsaRomanceActive","GLOBAL",2)
Global("X3IsaImoen","GLOBAL",1)~ THEN BIMOEN2 X3IsaImoen2
@215
DO ~SetGlobal("X3IsaImoen","GLOBAL",2)~
== BX3Isa @216
== BIMOEN2 @217
== BX3Isa @218
== BIMOEN2 @219
== BX3Isa @220
EXIT 

// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Isa")
See("Hexxat")
Global("X3IsaHexxat","GLOBAL",0)~ THEN BHEXXAT X3IsaHexxat1
@221
DO ~SetGlobal("X3IsaHexxat","GLOBAL",1)~
== BX3Isa @222
== BHEXXAT @223
== BX3Isa @224
== BHEXXAT @225
== BX3Isa @226
EXIT 

// Hexxat#2
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Isa")
See("Hexxat")
Global("X3IsaHexxat","GLOBAL",1)~ THEN BHEXXAT X3IsaHexxat1
@227
DO ~SetGlobal("X3IsaHexxat","GLOBAL",2)~
== BHEXXAT @228
== BX3Isa @229
== BHEXXAT @230
== BX3Isa @231
== BHEXXAT @232
EXIT 

// Aerie #1 
CHAIN IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Isa")
See("AERIE")
Global("X3IsaAerie","GLOBAL",0)~ THEN BX3Isa X3IsaAerie1 
@233
DO ~SetGlobal("X3IsaAerie","GLOBAL",1)~
== BAERIE @234
== BX3ISA IF ~IsValidForPartyDialogue("X3Vie")~ THEN @235
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN @236
== BX3Isa @237
== BAERIE @238
== BX3Isa @239
== BAERIE @240
EXIT 


// Aerie #2 
CHAIN IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Isa")
See("BX3Isa")
Global("X3IsaAerie","GLOBAL",1)~ THEN BAERIE X3IsaAerie2 
@241
DO ~SetGlobal("X3IsaAerie","GLOBAL",2)~
== BX3ISA @242
END 
IF ~InParty("HAERDALIS")~ THEN BAERIE HAERDALIS-Branch
IF ~OR(2)InParty("X3Emi")InParty("C0Sirene")~ THEN BAERIE Emily-Branch 
IF ~InParty("C0Sirene")~ THEN BAERIE Sirene-Branch 
IF ~!InParty("HAERDALIS")!InParty("X3Emi")!InParty("C0Sirene")~ THEN BAERIE Normal-Branch 

CHAIN BAERIE HAERDALIS-Branch
@243 
== BX3Isa @247
== BHAERDA IF ~IsValidForPartyDialogue("HAERDALIS")~ THEN @249
EXTERN BAERIE Return-Branch 

CHAIN BAERIE Emily-Branch 
@244
== BX3Isa @248
== BX3Emi IF ~IsValidForPartyDialogue("X3Emi")~ THEN @250
EXTERN BAERIE Return-Branch 

CHAIN BAERIE Sirene-Branch 
@245
== BX3Isa @248
EXTERN BAERIE Return-Branch 

CHAIN BAERIE Normal-Branch 
@246
== BX3Isa @251
EXTERN BAERIE Return-Branch 

CHAIN BAERIE Return-Branch 
@252
== BX3ISA IF ~Global("X3IPlanarHunterEnemy","GLOBAL",1)~ THEN @253 
== BX3ISA IF ~!Global("X3IPlanarHunterEnemy","GLOBAL",1)~ THEN @254
EXIT 

// Neera 1
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Isa")
See("Neera")
Global("X3IsaNeera","GLOBAL",0)~ THEN BNeera X3IsaNeera1
@255
DO ~SetGlobal("X3IsaNeera","GLOBAL",1)~
== BX3Isa @256
== BNEERA @257
== BX3Isa @258
== BNeera @259
== BX3Isa @260
== BNeera @261
EXIT 

// Neera 2
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Isa")
See("Neera")
Global("X3IsaNeera","GLOBAL",1)~ THEN BX3ISA X3IsaNeera1
@262
DO ~SetGlobal("X3IsaNeera","GLOBAL",2)~
== BNeera @263
== BX3Isa @264
== BNeera @265
== BX3Isa @266
EXIT 


// Keldorn 1
CHAIN
IF ~IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("X3Isa")
See("Keldorn")
Global("X3IsaKeldorn","GLOBAL",0)~ THEN BX3Isa X3IsaKeldorn1
@267
DO ~SetGlobal("X3IsaKeldorn","GLOBAL",1)~
== BKELDOR @268
== BX3Isa @269
== BKELDOR @270
== BX3Isa @271
== BKELDOR @272
EXIT 

// Keldorn 2
CHAIN
IF ~IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaKeldorn","GLOBAL",1)~ THEN BKELDOR X3IsaKeldorn2
@273
DO ~SetGlobal("X3IsaKeldorn","GLOBAL",2)~
== BX3Isa @274
== BKELDOR @275
== BX3Isa @266
END 
IF ~Alignment("X3Isa",LAWFUL_NEUTRAL)~ EXTERN BX3Isa X3ISaKeldorn2A
IF ~!Alignment("X3Isa",LAWFUL_NEUTRAL)~ EXTERN BX3Isa X3ISaKeldorn2B

CHAIN BX3Isa X3IsaKeldorn2A
@277
== BKELDOR @279
EXIT 

CHAIN BX3Isa X3IsaKeldorn2B
@276
== BKELDOR @278
EXIT 

//Keldorn 3 
CHAIN
IF ~IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("X3Isa")
See("Keldorn")
Alignment("X3Isa",LAWFUL_NEUTRAL)
!Dead("X3IMavis")
Global("X3IsaKeldorn","GLOBAL",2)~ THEN BKELDOR X3IsaKeldorn3
@273
DO ~SetGlobal("X3IsaKeldorn","GLOBAL",3)~
== BX3ISA @274
== BKELDOR @275
== BX3ISA @276
EXIT 

//Vienxay 1
CHAIN
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaX3Vie","GLOBAL",0)~ THEN BX3Vie X3IsaX3Vie1
@278
DO ~SetGlobal("X3IsaX3Vie","GLOBAL",1)~
== BX3Isa @279
== BX3Vie @280
== BX3Isa @281
== BX3Vie @282
== BX3ISa @283
EXIT 

//Vienxay 2
CHAIN
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaX3Vie","GLOBAL",1)~ THEN BX3Vie X3IsaX3Vie1
@284
DO ~SetGlobal("X3IsaX3Vie","GLOBAL",2)~
== BX3Isa @285
== BX3Vie @286
== BX3Isa @287
== BX3Vie @288
EXIT 

//Vienxay 3
CHAIN
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaX3Vie","GLOBAL",2)~ THEN BX3Vie X3IsaX3Vie3
@289
DO ~SetGlobal("X3IsaX3Vie","GLOBAL",3)~
== BX3Isa @290
== BX3Vie @291
== BX3Isa @292
== BX3Vie @293
== BX3ISa @294
EXIT 

//Vienxay 4
CHAIN
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IMavisEnemy","GLOBAL",1)
Dead("X3IMavis")
Global("X3IsaX3Vie","GLOBAL",3)~ THEN BX3Vie X3IsaX3Vie3
@295
DO ~SetGlobal("X3IsaX3Vie","GLOBAL",4)~
== BX3Isa @296
== BX3Vie @297
== BX3Isa @298
== BX3Vie @299
== BX3ISa @300
EXIT 

//Kale 1
CHAIN
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaX3Kal","GLOBAL",0)~ THEN BX3Kal X3IsaX3Kal1
@301
DO ~SetGlobal("X3IsaX3Kal","GLOBAL",1)~
== BX3Isa @302
== BX3Kal @303
== BX3Isa @304
== BX3Kal @305
== BX3ISa @306
== BX3Kal @307
== BX3ISa @308
EXIT 


//Kale 2
CHAIN
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaX3Kal","GLOBAL",1)~ THEN BX3Kal X3IsaX3Kal2
@309
DO ~SetGlobal("X3IsaX3Kal","GLOBAL",2)~
== BX3Isa @310
== BX3Kal @311
== BX3Isa @312
== BX3Kal @313
EXIT 


//Kale 3
CHAIN
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Isa")
See("X3Kal")
OR(2)Dead("X3KC")Alignment("X3Kal",LAWFUL_NEUTRAL)
Global("X3IsaX3Kal","GLOBAL",2)~ THEN BX3Isa X3IsaX3Kal3
@314
DO ~SetGlobal("X3IsaX3Kal","GLOBAL",3)~
== BX3Kal @315
== BX3Isa @316
== BX3Kal @317
EXIT 

//Kale 4
CHAIN
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaRomanceActive","GLOBAL",2)
Global("X3IsaX3Kal","GLOBAL",3)~ THEN BX3Kal X3IsaX3Kal4
@318
DO ~SetGlobal("X3IsaX3Kal","GLOBAL",4)~
== BX3Isa @319
== BX3Kal @320
== BX3Isa @321
== BX3Kal @322
== BX3Isa @323
== BX3Kal @324
== BX3Isa @325
== BX3Kal @326
== BX3Isa @327
== BX3Kal @328
== BX3Isa @329
EXIT 

//Minsc 1
CHAIN
IF ~IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("X3Isa")
See("Minsc")
Global("X3IsaMinsc","GLOBAL",0)~ THEN BX3Isa X3IsaMinsc1
@330
DO ~SetGlobal("X3IsaMinsc","GLOBAL",1)~
== MINSCJ @331
== BX3ISA @332
== MINSCJ @333
== BX3ISA @334
== MINSCJ @335
== BX3ISA @336
EXIT 

//Minsc 2
CHAIN
IF ~IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("X3Isa")
See("Minsc")
Global("X3IsaMinsc","GLOBAL",1)~ THEN BX3Isa X3IsaMinsc2
@337
DO ~SetGlobal("X3IsaMinsc","GLOBAL",2)~
== MINSCJ @338
== BX3ISA @339
== MINSCJ @340
== BX3ISA @341
EXIT 

//Cernd 1
CHAIN
IF ~IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaCernd","GLOBAL",0)~ THEN BCERND X3IsaCernd1
@342
DO ~SetGlobal("X3IsaCernd","GLOBAL",1)~
== BX3ISA @343
== BCERND @344
== BX3ISA @345
== BCERND @346
EXIT 

//Cernd 2 
CHAIN
IF ~IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaCernd","GLOBAL",0)~ THEN BCERND X3IsaCernd1
@347
DO ~SetGlobal("X3IsaCernd","GLOBAL",1)~
== BX3ISA @348
== BCERND @349
== BX3ISA @350
== BCERND @351
== BX3ISA @352
EXIT 

//Valygar 1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaValygar","GLOBAL",0)~ THEN BVALYGA X3IsaValygar1
@353
DO ~SetGlobal("X3IsaValygar","GLOBAL",1)~
== BX3ISA @354
== BValygar @355
== BX3ISA @356
== BValygar @357
== BX3ISA @358
== BX3ISA @359
EXIT 

//Valygar 2 
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Isa")
Class("X3Isa",MAGE_ALL)
See("X3Isa")
Global("X3IsaValygar","GLOBAL",0)~ THEN BValygar X3IsaValygar1
@360
DO ~SetGlobal("X3IsaValygar","GLOBAL",1)~
== BX3ISA @361
== BValygar @362
== BX3ISA @363
== BValygar @364
EXIT 

//Jaheira 1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Isa")
See("JAHEIRA")
Global("X3IsaJaheira","GLOBAL",0)~ THEN BX3Isa X3IsaJAHEIRA1
@365
DO ~SetGlobal("X3IsaJAHEIRA","GLOBAL",1)~
== BJAHEIR @366
== BX3ISA @367
== BJAHEIR @368
== BX3ISA @369
== BJAHEIR @370
EXIT 

//Jaheira 2 
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Isa")
Global("X3IPlanarHunterEnemy","GLOBAL",1)
See("X3Isa")
Global("X3IsaJAHEIRA","GLOBAL",0)~ THEN BJAHEIR X3IsaJAHEIRA1
@371
DO ~SetGlobal("X3IsaJAHEIRA","GLOBAL",1)~
== BX3ISA @372
== BJAHEIRA @373
== BX3ISA @374
== BJAHEIRA @375
== BX3ISA @376
EXIT 

//KORGAN 1
CHAIN
IF ~IsValidForPartyDialogue("KORGAN")
IsValidForPartyDialogue("X3Isa")
See("KORGAN")
Global("X3IsaKORGAN","GLOBAL",0)~ THEN BKORGAN X3IsaKORGAN1
@377
DO ~SetGlobal("X3IsaKORGAN","GLOBAL",1)~
== BX3ISA @378
== BKORGAN @379
== BX3ISA @380
== BKORGAN @381
== BX3ISA @382
EXIT 

//KORGAN 2
CHAIN
IF ~IsValidForPartyDialogue("KORGAN")
IsValidForPartyDialogue("X3Isa")
See("KORGAN")
Global("X3IsaKORGAN","GLOBAL",1)~ THEN BKORGAN X3IsaKORGAN2
@383
DO ~SetGlobal("X3IsaKORGAN","GLOBAL",2)~
== BX3ISA @384
== BKORGAN @385
== BX3ISA @386
EXIT 

//Recorder 1
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Isa")
See("X3Reb")
Global("X3RebIsaac","GLOBAL",0)~ THEN BX3Isa X3IsaReb1
@387
DO ~SetGlobal("X3RebIsaac","GLOBAL",1)~
== BX3Reb @388
== BX3Isa @389
== BX3Reb @390
== BX3Isa @391
== BX3Reb @392
EXIT 

//Recorder 2
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Isa")
See("X3Reb")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebIsaac","GLOBAL",1)~ THEN BX3Reb X3IsaReb2
@411
DO ~SetGlobal("X3RebIsaac","GLOBAL",2)~
== BX3ISA @393
== BX3Reb @394
== BX3Isa @395
== BX3Reb @396
== BX3Isa @397
== BX3Reb @398
== BX3ISA @399
EXIT 

//Recorder 3 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Isa")
See("X3Reb")
Global("X3RebIsaac","GLOBAL",2)~ THEN BX3Reb X3IsaReb1
@401
DO ~SetGlobal("X3RebIsaac","GLOBAL",3)~
== BX3ISA @402
== BX3Reb @403
== BX3Isa @404
== BX3Reb @405
== BX3Isa @406
== BX3Reb @407
EXIT 

//Recorder 4
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Isa")
See("X3Reb")
Dead("X3RPhel")
Global("X3RebIsaac","GLOBAL",3)~ THEN BX3ISA X3IsaReb4
@400
END 
IF ~Global("X3RFAIL","GLOBAL",2)~ EXTERN BX3Reb X3IsaReb4RabanGone
IF ~!Global("X3RFAIL","GLOBAL",2)~ EXTERN BX3Reb X3IsaReb4RabanSaved

CHAIN BX3Reb X3IsaReb4RabanGone 
@401
== BX3ISA @402
== BX3Reb @403
== BX3ISA @404
EXIT 

CHAIN BX3Reb X3IsaReb4RabanSaved 
@405
== BX3ISA @406
== BX3Reb @407
== BX3ISA @408
== BX3Reb @409
== BX3ISA @410
EXIT 

