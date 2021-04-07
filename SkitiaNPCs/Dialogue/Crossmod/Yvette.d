/*Yvette*/

//Yvette-Emily #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","GLOBAL",0)~ THEN BX3Emi X3EmiYvette1
@0
DO ~SetGlobal("X3EmiYxYve","GLOBAL",1)~
== YxYveB @1
== BX3Emi @2
== YxYveB @3
== BX3Emi @4
== YxYveB IF ~GlobalLT("YvetteRomanceTalk","GLOBAL",21)~ THEN @5
== YxYveB IF ~!GlobalLT("YvetteRomanceTalk","GLOBAL",21)~ THEN @6
== BX3Emi @7
EXIT 

//Yvette-Emily #2
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","GLOBAL",1)~ THEN BX3Emi X3EmiYvette2
@8
DO ~SetGlobal("X3EmiYxYve","GLOBAL",2)~
== YxYveB @9
== BX3Emi @10
== YxYveB @11
== BX3Emi @12
== YxYveB @13
== BX3Emi @14
== YxYveB @15
== BX3Emi @16
== YxYveB @17
== BX3Emi @18
EXIT 

//Yvette-Emily #3
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","GLOBAL",1)~ THEN BX3Emi X3EmiYvette2
@19
DO ~SetGlobal("X3EmiYxYve","GLOBAL",2)~
== YxYveB @20
== BX3Emi @21
== BX3Emi IF ~InParty("X3Reb")~ THEN @22
== BX3Emi IF ~InParty("X3Hel")~ THEN @23
== BX3Hel IF ~IsValidForPartyDialogue("X3Hel")~ THEN @24
== BX3Emi IF ~InParty("L3Petsy")~ THEN @25
== BX3Emi IF ~InParty("X3Vie")~ THEN @26
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN @27
== YxYveB @28
== BX3Emi @29
== YxYveB @30
== BX3Emi @31
== YxYveB @32
== BX3Emi @33
== YxYveB @34
== Bx3Emi @35
EXIT 


//Yvette-Emily Special
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","LOCALS",0)Global("X3EmiRomanceActive","GLOBAL",1)~ THEN Bx3Emi X3EmiYvetteSpecial
@36
DO ~SetGlobal("X3EmiYxYve","LOCALS",1)~
== YxYveB @37
== BX3Emi @38
== YxYveB @39
== BX3Emi @40
== YxYveB @41
== BX3Emi @42
== YxYveB @43
== BX3Emi @44
EXIT

//Yvette-Emily ToB 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3EmiYxYveToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiYvetteTob
@45
DO ~SetGlobal("X3EmiYxYveToB","GLOBAL",1)~
== YxYv25B @46
== BX3Emi25 @47
== BX3Emi25 @48
== YxYv25B @49
== BX3Emi25 @50
EXIT 

//Yvette-Emily ToB Special
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3EmiHeir","GLOBAL",1)
Global("YvetteRomanceActive","GLOBAL",1)
Global("X3EmiYxYveToB","GLOBAL",1)~ THEN BX3Emi25 X3EmiYvetteTob
@51
DO ~SetGlobal("X3EmiYxYveToB","GLOBAL",2)~
== YxYv25B @52
== BX3Emi25 @53
== YxYv25B @54
== BX3Emi25 @55
== YxYv25B @56
== BX3Emi25 @57
== YxYv25B @58
== BX3Emi25 @59
== YxYv25B @60
EXIT 

// Yvette-Helga #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelYxYve","GLOBAL",0)~ THEN YxYveB X3HelYvette1 
@61
DO ~SetGlobal("X3HelYxYve","GLOBAL",1)~
== BX3Hel @62
== YxYveB @63
== BX3Hel @64
== YxYveB @65
== BX3Hel @66
EXIT 
// Yvette-Helga #2 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3HelYxYve","GLOBAL",1)~ THEN BX3Hel X3HelYvette2 
@67
DO ~SetGlobal("X3HelYxYve","GLOBAL",2)~
== YxYveB @68
== BX3Hel @69
== YxYveB @70
== BX3Hel @71
== YxYveB @72
== BX3Hel @73
== YxYveB @74
== BX3Hel @75
EXIT  
// Yvette-Helga #3 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3HelYxYve","GLOBAL",2)~ THEN BX3Hel X3HelYvette3 
@76
DO ~SetGlobal("X3HelYxYve","GLOBAL",3)~
== YxYveB @77
== BX3Hel @78
== YxYveB @79
== BX3Hel @80
== YxYveB @81
== BX3Hel @82
== YxYveB @83
== BX3Hel @84
EXIT  

// Yvette-Helga Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("YvetteRomanceActive","GLOBAL",2)
Global("X3HelYxYve","LOCALS",0)~ THEN BX3Hel X3HelYvetteSpecial 
@85
DO ~SetGlobal("X3HelYxYve","LOCALS",1)~
== YxYveB @86
== Bx3Hel @87
== YxYveB @88
== BX3Hel @89
== YxYveB @90
== BX3Hel @91
== YxYveB @92
== BX3Hel @93
EXIT

//Yvette-Helga Tob1 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3HelYxYveToB","GLOBAL",0)~ THEN BX3Hel25 X3HelYvetteToB
@94
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",1)~
== YxYv25B @95
== Bx3Hel @96
== YxYv25B @97
== BX3Hel @98
== BX3Vie25 IF ~IsValidForPartyDialogue("X3Vie")~ THEN @99
EXIT
//Helga Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelToBQuest","GLOBAL",6)
Global("X3HelYxYveToB","GLOBAL",1)~ THEN YxYv25B X3HelYvetteToBSpecial
@100
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",2)~
== BX3Hel25 @101
== YxYv25B @102
== BX3Hel25 @103
== BX3Hel25 @104
== YxYv25B @105
== BX3Hel25 @106
EXIT 

// Yvette-Kale #1 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalYxYve","GLOBAL",0)~ THEN BX3Kal X3KalYvette1
@107
DO ~SetGlobal("X3KalYxYve","GLOBAL",1)~
== YxYveB @108
== BX3Kal @109
== YxYveB @110
== BX3Kal @111
== YxYveB @112
== BX3Kal @113
== YxYveB @114
== BX3Kal @115
EXIT 

// Yvette-Kale #2
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalYxYve","GLOBAL",1)~ THEN BX3Kal X3KalYvette2
@116
DO ~SetGlobal("X3KalYxYve","GLOBAL",2)~
== YxYveB @117
== BX3Kal @118
== YxYveB @119
== BX3Kal @120
== YxYveB @121
== BX3Kal @122
== YxYveB @123
== BX3Kal @124
EXIT 

// Yvette-Kale #3 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalYxYve","GLOBAL",2)~ THEN BX3Kal X3KalYvette3
@125
DO ~SetGlobal("X3KalYxYve","GLOBAL",3)~
== YxYveB @126
== BX3Kal @127
== YxYveB @128
== BX3Kal @129
== YxYveB @130
== BX3Kal @131
EXIT 

//Yvette-Kale Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalRomanceActive","GLOBAL",1)
Global("YvetteRomanceActive","GLOBAL",1)
Global("X3KalYxYve","LOCALS",0)~ THEN BX3Kal X3KalYvetteSpecial
@132
DO ~SetGlobal("X3KalYxYve","GLOBAL",1)~
== YxYveB @133
== BX3Kal @134
== YxYveB @135
== BX3Kal @136
== YxYveB @137
== BX3Kal @138
EXIT 

//Yvette-Kale ToB 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3HelYxYveToB","GLOBAL",0)~ THEN BX3Kal25 X3KalYvetteToB
@139
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",1)~
== YxYv25B @140
== BX3Kal25 @141
== YxYv25B @142
== BX3Kal25 @143
EXIT 

//Yvette-Kale Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMazzyEnd","GLOBAL",1)
Global("X3HelYxYveToB","GLOBAL",1)~ THEN YxYv25B X3KalYvetteToBSpecial
@144
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",2)~
== BX3Kal25 @145
== YxYv25B @146
== BX3Kal25 @147
== YxYv25B @148
== BX3Kal25 @149
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @150
== YxYv25B  IF ~IsValidForPartyDialogue("MAZZY")~ @151
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ @152
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ @153
EXIT 

//Yvette-Recorder #1 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("YxYve")
Global("X3RebYxYve","GLOBAL",0)~ THEN BX3Reb X3RebYvette1
@154
DO ~SetGlobal("X3RebYxYve","GLOBAL",1)~
== YxYveB @155
== BX3Reb @156
== BX3Reb @157
== YxYveB @158
== BX3Reb @159
== YxYveB @160
== BX3Reb @161
EXIT 

//Yvette-Recorder #2 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebYxYve","GLOBAL",1)~ THEN YxYveB X3RebYvette2
@162
DO ~SetGlobal("X3RebYxYve","GLOBAL",2)~
== BX3Reb @163
== YxYveB @164
== BX3Reb @165
== YxYveB @166
== BX3Reb @167
== YxYveB @168
== BX3Reb @169
EXIT 
//Yvette-Recorder #3
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebYxYve","GLOBAL",2)~ THEN YxYveB X3RebYvette3
@170
DO ~SetGlobal("X3RebYxYve","GLOBAL",3)~
== BX3Reb @171
== YxYveB @172
== BX3Reb @173
== BX3Reb @174
== YxYveB @175
== BX3Reb @176
== YxYveB @177
EXIT 

//Yvette-Recorder Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("YxYve")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebYxYve","LOCALS",0)~ THEN BX3Reb X3RebYvetteSpecial
@178
DO ~SetGlobal("X3RebYxYve","LOCALS",1)~
== YxYveB @179
== BX3Reb @180
== YxYveB @181
== BX3Reb @182
== YxYveB @183
== Bx3Reb @184
== YxYveB @185
== BX3Reb @186
EXIT 

//Yvette-Recorder ToB 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("YxYve")
Global("X3RebYxYveToB","GLOBAL",0)~ THEN BX3Reb25 X3RebYvetteToB
@187
DO ~SetGlobal("X3RebYxYve","GLOBAL",1)~
== YxYv25B @188
== YxYv25B @189
== BX3Reb25 @190
== YxYv25B @191
== BX3Reb25 @192
EXIT 

//Yvette-Recorder Special 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
Global("X3RebRomanceActive","GLOBAL",2)
See("YxYve")
Global("X3RebYxYveToB","GLOBAL",0)~ THEN BX3Reb25 X3RebYvetteToB
@193
DO ~SetGlobal("X3RebYxYveToB","GLOBAL",1)~
== YxYv25B @194
== BX3Reb25 @195
== YxYv25B @196
== BX3Reb25 @197
== YxYv25B @198
== BX3Reb25 @199
== YxYv25B @200
== BX3Reb25 @201
EXIT 

//Yvette-Vienxay #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieYxYve","GLOBAL",0)~ THEN BX3Vie X3VieYvette1
@202
DO ~SetGlobal("X3VieYxYve","GLOBAL",1)~
== YxYveB @203
== BX3Vie @204
== YxYveB @205
== BX3Vie @206
== YxYveB @207
== BX3Vie @208
EXIT 

//Yvette-Vienxay #2
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieYxYve","GLOBAL",1)~ THEN BX3Vie X3VieYvette2
@209
DO ~SetGlobal("X3VieYxYve","GLOBAL",2)~
== YxYveB @210
== BX3Vie @211
== YxYveB @212
== BX3Vie @213
== BX3Vie @214
EXIT 

//Yvette-Vienxay #3 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieYxYve","GLOBAL",2)~ THEN YxYveB X3VieYvette3
@215
DO ~SetGlobal("X3VieYxYve","GLOBAL",3)~
== BX3Vie @216
== YxYveB @217
== BX3Vie @218
== YxYveB @219
== BX3Vie @220
== YxYveB @221
== BX3Vie @222
== YxYveB @223
== BX3Vie @224 
EXIT 

//Yvette-Vienxay Special 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("YvetteRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieYxYve","LOCALS",0)~ THEN BX3Vie X3VieYvetteSpecial
@225
DO ~SetGlobal("X3VieYxYve","LOCALS",1)~
== YxYveB @226
== BX3Vie @227
== YxYveB @228
== BX3Vie @229
EXIT 

//Yvette-Vienxay ToB 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieYxYveToB","LOCALS",0)~ THEN YxYv25B X3VieYvetteSpecial
@230
DO ~SetGlobal("X3VieYxYveToB","LOCALS",1)~
== BX3Vie25 @231
== YxYv25B @232
== BX3Vie25 @233
== YxYv25B @234
== BX3Vie25 @235
EXIT 

//Yvette-Vienxay ToB Special 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieYxYveToB","LOCALS",1)~ THEN YxYv25B X3VieYvetteSpecial
@236
DO ~SetGlobal("X3VieYxYveToB","LOCALS",2)~
== BX3Vie25 @237
== YxYv25B @238
== BX3Vie25 @239
== YxYv25B @240
== BX3Vie25 @241
EXIT 