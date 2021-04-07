/*Petsy  */

//Petsy-Emily #1
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("L3Petsy")
Global("X3EmiPetsy","GLOBAL",0)~ THEN BX3Emi X3EmiPetsy1
@0
DO ~SetGlobal("X3EmiPetsy","GLOBAL",1)~
== L3PetsyB @1
== BX3Emi @2
== L3PetsyB @3
== BX3Emi @4
== L3PetsyB @5
EXIT 

// Petsy-Emily #2
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiPetsy","GLOBAL",1)~ THEN L3PetsyB X3EmiPetsy2
@6
DO ~SetGlobal("X3EmiPetsy","GLOBAL",2)~
== BX3Emi @7
== L3PetsyB @8
== BX3Emi @9
== L3PetsyB @10
== BX3Emi @11
== L3PetsyB @12
== BX3Emi @13
== L3PetsyB @14
== BX3Emi @15
EXIT 

//Petsy-Emily #3 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiPetsy","GLOBAL",2)~ THEN L3PetsyB X3EmiPetsy3
@16
DO ~SetGlobal("X3EmiPetsy","GLOBAL",3)~
== BX3Emi @17
== L3PetsyB @18
== BX3Emi @19
== L3PetsyB @20
== BX3Emi @21
== BX3Hel IF ~IsValidForPartyDialogue("X3Hel")~ THEN @22
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN @23
== BX3Kal IF ~IsValidForPartyDialogue("X3Kal")~ THEN @24
== BX3Emi @25
== L3PetsyB @26
== BX3Emi @27
== L3Petsy @28
== BX3Emi @29
EXIT 

//Petsy-Emily Special 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
GlobalGT("X3EGVJQuest","GLOBAL",0)
Global("X3EmiPetsy","LOCALS",0)~ THEN BX3Emi X3EmiPetsy1
@30
DO ~SetGlobal("X3EmiPetsy","LOCALS",1)~
== L3PetsyB @31
== BX3Emi @32
== L3PetsyB @33
== BX3Emi @34
== L3PetsyB @35
== BX3Emi @36
EXIT 

//Petsy Emily ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiPetsyToB","GLOBAL",0)~ THEN L3Pet25B X3EmiPetsyToB
@37
DO ~SetGlobal("X3EmiPetsyToB","GLOBAL",1)~
== BX3Emi25 @38
== BX3Emi25 @39
== L3Pet25B @40
== BX3Emi25 @41
EXIT 

//Petsy Emily ToB Special 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("TethyrBattleStart","GLOBAL",1)
Global("X3EmiPetsyToB","GLOBAL",1)~ THEN L3Pet25B X3EmiePetsyToBSpecial
@42
DO ~SetGlobal("X3EmiPetsyToB","GLOBAL",2)~
== BX3Emi25 @43
== L3Pet25B @44
== BX3Emi25 @45
== L3Pet25B @46
== BX3Emi25 @47
EXIT 

// Petsy-Helga #1
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsy","GLOBAL",0)~ THEN BX3Hel X3HelPetsy1
@48
DO ~SetGlobal("X3HelPetsy","GLOBAL",1)~
== L3PetsyB @49
== BX3Hel @50
== L3PetsyB @51
== BX3Hel @52
EXIT 

//Petsy-Helga #2
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsy","GLOBAL",1)~ THEN BX3Hel X3HelPetsy2
@53
DO ~SetGlobal("X3HelPetsy","GLOBAL",2)~
== L3PetsyB @54
== BX3Hel @55
== L3PetsyB @56
== BX3Hel @57
== L3PetsyB @58
== BX3Hel @59
== L3PetsyB @60
== BX3Hel @61
EXIT 

//Petsy-Helga #3 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsy","GLOBAL",2)~ THEN BX3Hel X3HelPetsy3
@62
DO ~SetGlobal("X3HelPetsy","GLOBAL",3)~
== L3PetsyB @63
== BX3Hel @64
== L3PetsyB @65
== Bx3Hel @66
== L3PetsyB @67
== BX3Hel @68
EXIT 

//Petsy-Helga Special 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("L3PetsyRomanceActive","GLOBAL",2)
Global("X3HelPetsy","GLOBAL",2)~ THEN BX3Hel X3HelPetsySpecial
@69
DO ~SetGlobal("X3HelPetsy","GLOBAL",3)~
== L3PetsyB @70
== BX3Hel @71
== L3PetsyB @72
== BX3Hel @73
== L3PetsyB @74
== BX3Hel @75
EXIT 

//Petsy-Helga ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsyToB","GLOBAL",0)~ THEN BX3Hel25 X3KalPetsyToB
@76
DO ~SetGlobal("X3HelPetsyToB","GLOBAL",1)~
== L3Pet25B @77
== BX3Hel25 @78
== L3Pet25B @79
== BX3Hel25 @80
== L3Pet25B @81
== BX3Hel25 @82
== L3Pet25B @83
== BX3Hel25 @84
EXIT 

//Petsy-Helga ToB Special 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("L3PetsyRomanceActive","GLOBAL",2)
Global("X3HelPetsy","GLOBAL",1)~ THEN BX3Hel25 X3HelPetsyTobSpecial
@85
DO ~SetGlobal("X3HelPetsyToB","GLOBAL",2)~
== L3Pet25B @86
== BX3Hel25 @87
== L3Pet25B @88
== BX3Hel25 @89
EXIT 

// Petsy-Kale #1
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsy","GLOBAL",0)~ THEN BX3Kal X3KalPetsy1
@90
DO ~SetGlobal("X3KalPetsy","GLOBAL",1)~
== L3PetsyB @91
== BX3Kal @92
== L3PetsyB @93
== BX3Kal @94
== L3PetsyB @95
== BX3Kal @96
EXIT 

// Petsy-Kale #2 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsy","GLOBAL",1)~ THEN L3PetsyB X3KalPetsy2
@97
DO ~SetGlobal("X3KalPetsy","GLOBAL",2)~
== BX3Kal @98
== L3PetsyB @99
== BX3Kal @100
== L3PetsyB @101
== BX3Kal @102
== L3Petsy @103
== BX3Kal @104
EXIT 
//Petsy-Kale #3
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsy","GLOBAL",2)~ THEN BX3Kal X3KalPetsy3
@105
DO ~SetGlobal("X3KalPetsy","GLOBAL",3)~
== L3PetsyB @106
== BX3Kal IF ~!InParty("MAZZY")!Race(Player1,"HALFLING")~ @107
== BX3Kal IF ~OR(2)InParty("MAZZY")Race(Player1,"HALFLING")~ @108
== L3PetsyB IF ~OR(2)InParty("MAZZY")Race(Player1,"HALFLING")~ @109
== BX3Kal IF ~OR(2)InParty("MAZZY")Race(Player1,"HALFLING")~ @110
== BX3Kal IF ~!IsValidForPartyDialogue("MAZZY")~ @111
== BX3Kal IF ~!IsValidForPartyDialogue("MAZZY")~ @112
== L3PetsyB IF ~!IsValidForPartyDialogue("MAZZY")~ @113
== BX3Kal IF ~!IsValidForPartyDialogue("MAZZY")~ @114
== BMAZZY IF ~IsValidForPartyDialogue("MAZZY")~ @115
== BX3Kal IF ~IsValidForPartyDialogue("MAZZY")~ @116
== BMAZZY IF ~IsValidForPartyDialogue("MAZZY")~ @117
EXIT 

// Petsy-Kale Special
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
Global("X3KalPartyBG1","GLOBAL",1)
See("L3Petsy")
Global("X3KalPetsy","LOCALS",0)~ THEN BX3Kal X3KalPetsySpecial
@118
DO ~SetGlobal("X3KalPetsy","LOCALS",1)~
== L3PetsyB @119
== BX3Kal @120
== L3PetsyB @121
== BX3Kal @122
== L3PetsyB @123
== BX3Kal @124
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN @125
== L3PetsyB IF ~IsValidForPartyDialogue("X3Vie")~ THEN @126
== BX3Kal IF ~IsValidForPartyDialogue("X3Vie")!Global("X3ViePartyBG1","GLOBAL",1)~ THEN @127
== BX3Kal IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN @128
EXIT 

//Petsy-Kale ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsyToB","GLOBAL",0)~ THEN BX3Kal25 X3KalPetsyToB
@129
DO ~SetGlobal("X3KalPetsyToB","GLOBAL",1)~
== L3Pet25B @130
== BX3Kal25 @131
== L3Pet25B @132
== BX3Kal25 @133
== L3Pet25B @134
== BX3Kal25 @135
== L3Pet25B @136
== BX3Kal25 @137
== L3Pet25B @138
== BX3Kal25 @139
EXIT 

//Petsy-Kale TOB Special
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsyToB","GLOBAL",0)~ THEN BX3Kal25 X3KalPetsyToB
@140
DO ~SetGlobal("X3KalPetsyToB","GLOBAL",1)~
== L3Pet25B @141
== BX3Kal25 @142
== L3Pet25B @143
== BX3Kal25 @144
== L3Pet25B @145
== BX3Kal25 @146
== L3Pet25B @147
== BX3Kal25 @148
EXIT 

//Petsy-Recorder #1 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RebPetsy","GLOBAL",0)~ THEN BX3Reb X3RebPetsy1
@149
DO ~SetGlobal("X3RebPetsy","GLOBAL",1)~
== L3PetsyB @150
== BX3Reb @151
== L3PetsyB @152
== BX3Reb @153
== L3PetsyB @154
== BX3Reb @155
== L3PetsyB @156
== BX3Reb @157
== L3PetsyB @158
== BX3Reb @159
EXIT 

//Petsy-Recorder #2
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RebPetsy","GLOBAL",1)~ THEN BX3Reb X3RebPetsy2
@160
DO ~SetGlobal("X3RebPetsy","GLOBAL",2)~
== L3PetsyB @161
== BX3Reb @162
== L3PetsyB @163
== BX3Reb @164
== L3PetsyB @165
== BX3Reb @166
== L3PetsyB @167
EXIT 

//Petsy-Recorder #3
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RebPetsy","GLOBAL",2)~ THEN BX3Reb X3RebPetsy3
@168
DO ~SetGlobal("X3RebPetsy","GLOBAL",3)~
== L3PetsyB @169
== BX3Reb @170
== L3PetsyB @171
== BX3Reb @172
== BX3Reb @173
== L3PetsyB @174
== BX3Reb @175
== L3PetsyB @176
EXIT 

//Petsy-Recorder Special 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RFAIL","GLOBAL",2)
Global("X3RebPetsy","GLOBAL",3)~ THEN BX3Reb X3RebPetsySpecial
@177
DO ~SetGlobal("X3RebPetsy","GLOBAL",4)~
== L3PetsyB @178
== BX3Reb @179
== L3PetsyB @180
== BX3Reb @181
== L3PetsyB @182
== BX3Reb @183
EXIT 

//Petsy Recorder ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebPetsyToB","GLOBAL",0)~ THEN L3Pet25B X3RebPetsySpecial
@184
DO ~SetGlobal("X3RebPetsy","GLOBAL",1)~
== BX3Reb25 @185
== L3Pet25B @186
== BX3Reb25 @187
== L3Pet25B @188
== BX3Reb25 @189
== L3Pet25B @190
== BX3Reb25 @191
EXIT 

CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("L3PetsyRomanceActive","GLOBAL",2)
Global("X3RebPetsyToB","GLOBAL",1)~ THEN BX3Reb25 X3RebPetsySpecial
@192
DO ~SetGlobal("X3RebPetsy","GLOBAL",2)~
== L3Pet25B @193
== BX3Reb25 @194
== L3Pet25B @195
== BX3Reb25 @196
== L3Pet25B @197
== BX3Reb25 @198
== L3Pet25B @199
EXIT 

//Petsy-Vienxay #1
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("L3Petsy")
Global("X3ViePetsy","GLOBAL",0)~ THEN BX3Vie X3ViePetsy1
@200
DO ~SetGlobal("X3ViePetsy","GLOBAL",1)~
== L3PetsyB @201
== BX3Vie @202
== BX3Reb IF ~IsValidForPartyDialogue("X3Reb")~ THEN @203
== L3PetsyB @204
== BX3Vie @205
EXIT 

//Petsy-Vienxay #2
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("L3Petsy")
Global("X3ViePetsy","GLOBAL",1)~ THEN BX3Vie X3ViePetsy2
@206
DO ~SetGlobal("X3ViePetsy","GLOBAL",2)~
== L3PetsyB @207
== BX3Vie IF ~IsValidForPartyDialogue("X3Kal")~ THEN @208
== BX3Kal IF ~IsValidForPartyDialogue("X3Kal")~ THEN @209
== BX3Vie IF ~!IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("Mazzy")~ THEN @210
== BMAZZY IF ~!IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("Mazzy")~ THEN @211
== BX3Vie IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ THEN @212
== L3PetsyB IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ THEN @213
== BX3Vie @214
EXIT 

//Petsy-Vienxay #3 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3ViePetsy","GLOBAL",2)~ THEN L3PetsyB X3ViePetsy3
@215
DO ~SetGlobal("X3ViePetsy","GLOBAL",3)~
== BX3Vie @216
== L3PetsyB @217
== BX3Vie @218
== L3PetsyB @219
== BKORGAN IF ~IsValidForPartyDialogue("Korgan")~ THEN @220
== BX3Vie @221
== L3PetsyB @222
== BX3Vie @223
EXIT 

//Petsy-Vienxay Special 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("L3Petsy")
Dead("L3Zane")
Global("X3ViePetsy","LOCALS",0)~ THEN BX3Vie X3ViePetsySpecial
@224
DO ~SetGlobal("X3ViePetsy","LOCALS",1)~
== L3PetsyB @225
== BX3Vie @226
== L3PetsyB @227
== BX3Vie @228
== L3PetsyB @229
== BX3Vie @230
== L3PetsyB @231
== BX3Vie @232
EXIT 

//Petsy-Vienxay Throne of Bhaal
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3ViePetsyToB","GLOBAL",0)~ THEN L3Pet25B X3ViePetsyToB
@233
DO ~SetGlobal("X3ViePetsyToB","GLOBAL",1)~
== BX3Vie25 @234
== L3Pet25B @235
== BX3Vie25 @236
== L3Pet25B @237
== BX3Vie25 @238
== L3Pet25B @239
== BX3Vie25 @240
== L3Pet25B @241
EXIT 

//Petsy-Vienxay Special
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieEvermeet","GLOBAL",1)
Global("X3ViePetsyToB","GLOBAL",1)~ THEN L3Pet25B X3ViePetsyToBSpecial
@242
DO ~SetGlobal("X3ViePetsyToB","GLOBAL",2)~
== BX3Vie25 @243
== L3Pet25B @244
== BX3Vie25 @245
== L3Pet25B @246
== BX3Vie25 @247
EXIT 