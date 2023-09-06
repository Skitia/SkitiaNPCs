// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIE","GLOBAL",0)~ THEN BX3Vie X3VieAERIE1
@0
DO ~SetGlobal("X3VieAERIE","GLOBAL",1)~
== BAERIE @1
== BX3Vie @2
== BAERIE @3
== BX3Vie @4
== BAERIE @5
== BX3Vie @6
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIE","GLOBAL",1)~ THEN BAERIE X3VieAERIE2
@7
DO ~SetGlobal("X3VieAERIE","GLOBAL",2)~
== BX3Vie @8
== BAERIE @9
== BX3Vie @10
== BX3Hel IF ~IsValidForPartyDialogue("X3Hel")~ THEN @11
== BAERIE @12
== BX3Vie @13
== BAERIE @14
== BX3Vie @15
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
!Kit("X3Vie",SHADOWDANCER)
Global("X3VieANOMEN","GLOBAL",0)~ THEN BANOMEN X3VieANOMEN1
@16
DO ~SetGlobal("X3VieANOMEN","GLOBAL",1)~
== BX3Vie @17
== BANOMEN @18
== BX3Vie @19
EXIT 

// ANOMEN #1S
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Kit("X3Vie",SHADOWDANCER)
Global("X3VieANOMEN","GLOBAL",0)~ THEN BANOMEN X3VieANOMEN1
@226
DO ~SetGlobal("X3VieANOMEN","GLOBAL",1)~
== BX3Vie @227
== BANOMEN @228
== BX3Vie @229
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieANOMEN","GLOBAL",1)~ THEN BANOMEN X3VieANOMEN2
@20
DO ~SetGlobal("X3VieANOMEN","GLOBAL",2)~
== BX3Vie @21
== BANOMEN @22
== BX3Vie @23
== BANOMEN IF ~!Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN @24
== BX3Vie IF ~!Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN @25
== BANOMEN IF ~Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN @230
== BX3Vie IF ~Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN @231
EXIT 


// Aerie #3
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIE","GLOBAL",2)~ THEN BAERIE X3VieAERIE2
@26
DO ~SetGlobal("X3VieAERIE","GLOBAL",3)~
== BX3Vie @27
== BAERIE @28
== BX3Vie @29
== BAERIE @30
== BX3Vie @31
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Vie")
See("CERND")
Global("X3VieCERND","GLOBAL",0)~ THEN BX3Vie X3VieCERND1
@32
DO ~SetGlobal("X3VieCERND","GLOBAL",1)~
== BCERND @33
== BX3Vie @34
== BCERND @35
== BX3Vie @36
== BCERND @37
== BX3Vie @38
EXIT 

// CERND #2
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Vie")
See("Cernd")
Global("X3VieCERND","GLOBAL",1)~ THEN BX3Vie X3VieCERND2
@39
DO ~SetGlobal("X3VieCERND","GLOBAL",2)~
== BCERND @40
== BX3Vie @41
== BCERND @42
== BX3Vie @43
EXIT 


//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Vie")
See("DORN")
Global("X3VieDORN","GLOBAL",0)~ THEN BX3Vie X3VieDORN1
@44
DO ~SetGlobal("X3VieDORN","GLOBAL",1)~
== BDORN @45
== BX3Vie @46
== BDORN @47
== BX3Vie @48
== BDORN @49
EXIT 

//Dorn #2
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Alignment("X3Vie",NEUTRAL)
Global("X3VieDORN","GLOBAL",1)~ THEN BDORN X3VieDORN2
@50
DO ~SetGlobal("X3VieDORN","GLOBAL",2)~
== BX3Vie @51
== BDORN @52
== BX3Vie @53
== BDORN @54
== BX3Vie @55
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieEDWIN","GLOBAL",0)~ THEN BEDWIN X3VieEDWIN1
@56
DO ~SetGlobal("X3VieEDWIN","GLOBAL",1)~
== BX3Vie @57
== BEDWIN IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @58
== BX3Vie IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @59
== BEDWIN IF ~Kit("X3Vie",SHADOWDANCER)~ THEN @232
== BX3Vie IF ~Kit("X3Vie",SHADOWDANCER)~ THEN @233
== BEDWIN @60
EXIT 

// EDWIN #2
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Vie")
See("Edwin")
Global("X3VieEDWIN","GLOBAL",1)
Gender("Edwin",FEMALE)  // Edwin~ THEN BX3Vie X3VieEDWIN2
@61
DO ~SetGlobal("X3VieEDWIN","GLOBAL",2)~
== BEDWIN @62
== BX3Vie @63
== BEDWIN @64
== BX3Vie @65
== BEDWIN @66
== BX3Vie @67
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3VieHAERDALIS1
@68
DO ~SetGlobal("X3VieHAERDALIS","GLOBAL",1)~
== BX3Vie @69
== BHAERDA @70
== BX3Vie @71
== BHAERDA @72
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3VieHAERDALIS2
@73
DO ~SetGlobal("X3VieHAERDALIS","GLOBAL",2)~
== BX3Vie @74
== BHAERDA @75
== BX3Vie @76
== BHAERDA @77
== BX3Vie @78
== BHAERDA @79
== BX3Vie @80
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Vie")
See("IMOEN2")
Global("X3VieIMOEN","GLOBAL",0)~ THEN BX3Vie X3VieIMOEN1
@81
DO ~SetGlobal("X3VieIMOEN","GLOBAL",1)~
== IMOEN2J @82
== BX3Vie @83
== IMOEN2J @84
== BX3Vie @85
== IMOEN2J @86
== BX3Vie @87
== IMOEN2J @88
== BX3Vie @89
EXIT 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHexxat","GLOBAL",0)~ THEN BHEXXAT X3VieHexxat1
@90 
DO ~SetGlobal("X3VieHexxat","GLOBAL",1)~
== BX3Vie @91
== BHEXXAT @92
== BX3Vie @93
== BHEXXAT @94
== BX3Vie @95
== BHEXXAT @96
EXIT 

// Hexxat#2
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHexxat","GLOBAL",1)~ THEN X3VieJ X3VieHexxat2
@97 
DO ~SetGlobal("X3VieHexxat","GLOBAL",2)~
== BHEXXAT @98
== BX3Vie @99
== BHEXXAT @100
== BX3Vie @101
== BHEXXAT @102
== BX3VIE @103
== BX3VIE @104
== BHEXXAT @105
== BX3VIE @106
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Vie")
See("JAHEIRA")
Global("X3VieJAHEIRA","GLOBAL",0)~ THEN BX3Vie X3VieJAHEIRA1
@107
DO ~SetGlobal("X3VieJAHEIRA","GLOBAL",1)~
== BJAHEIR @108
== BX3Vie @109
== BJAHEIR @110
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Vie")
See("JAHEIRA")
Alignment("X3Vie",NEUTRAL)
Global("X3VieJAHEIRA","GLOBAL",1)~ THEN BX3Vie X3VieJAHEIRA2
@111
DO ~SetGlobal("X3VieJAHEIRA","GLOBAL",2)~
== BJAHEIR @112
== BX3Vie @113
== BJAHEIR @114
== BX3Vie @115
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieKELDORN","GLOBAL",0)~ THEN BKELDOR X3VieKELDORN1
@116
DO ~SetGlobal("X3VieKELDORN","GLOBAL",1)~
== BX3Vie @117
== BKELDOR @118
== BX3Vie @119
== BKELDOR @120
EXIT 

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
See("Korgan")
Global("X3VieKorgan","GLOBAL",0)~ THEN BX3Vie X3VieKorgan1
@121
DO ~SetGlobal("X3VieKorgan","GLOBAL",1)~
== BX3HEL IF ~IsValidForPartyDialogue("X3Hel")~ THEN @122
== BKORGAN @123
== BX3Vie @124
== BKORGAN @125
EXIT 

// Korgan #2
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieKorgan","GLOBAL",1)~ THEN BKORGAN X3VieKorgan2
@126
DO ~SetGlobal("X3VieKorgan","GLOBAL",2)~
== BX3Vie @127
== BKORGAN @128
== BX3Vie @129
== BKORGAN @130
EXIT 

// Korgan #3
CHAIN
IF ~InPartyAllowDead("Korgan")
IsValidForPartyDialogue("X3Vie")
Dead("Korgan")
Global("X3VieKorgan","GLOBAL",2)~ THEN BX3Vie X3VieKorgan3
@131
DO ~SetGlobal("X3VieKorgan","GLOBAL",3)~
EXIT 

// Korgan #4
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
!Dead("Korgan")
Global("X3VieKorgan","GLOBAL",3)~ THEN BX3Vie X3VieKorgan4
@132
DO ~SetGlobal("X3VieKorgan","GLOBAL",4)~
== BKORGAN @133
== BX3Vie @134
== BKORGAN @135
== BX3Vie @136
== BKORGAN @137
== BX3Vie @138
EXIT 

// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Vie")
See("Mazzy")
Global("X3VieMazzy","GLOBAL",0)~ THEN BX3Vie X3VieMazzy1
@139 
DO ~SetGlobal("X3VieMazzy","GLOBAL",1)~
== BMAZZY @140
== BX3Vie @141
== BMAZZY @142
== BX3Vie @143
== BMAZZY @144
== BX3Vie @145
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Vie")
See("MINSC")
Global("X3VieMINSC","GLOBAL",0)~ THEN BX3Vie X3VieMINSC1
@146
DO ~SetGlobal("X3VieMINSC","GLOBAL",1)~
== BMINSC @147
== BX3Vie @148
== BMINSC @149
== BX3Vie @150
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJan","GLOBAL",0)~ THEN BX3Vie X3KAlJan1
@151
DO ~SetGlobal("X3KAlJan","GLOBAL",1)~
== BJAN @152
== BX3Vie @153
== BJAN @154
== BX3Vie @155
== BJAN @156
== BX3Vie @157
EXIT 

//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Vie")
See("Nalia")
Global("X3VieNalia","GLOBAL",0)
~ THEN BX3Vie X3VieNalia2
@158
DO ~SetGlobal("X3VieNalia","GLOBAL",1)~
== BNALIA @159
== BX3Vie @160
== BNALIA @161
== BX3Vie @162
== BNALIA @163
== BX3Vie @164
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Vie")
See("Nalia")
Global("X3VieNalia","GLOBAL",1)~ THEN BNALIA X3VieNalia2
@165
DO ~SetGlobal("X3VieNalia","GLOBAL",2)~
== BX3Vie @166
== BNALIA @167
== BX3Vie @168
== BNALIA @169
== BX3Vie @170
EXIT 


//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Vie")
See("Neera")
Global("X3VieNeera","GLOBAL",0)~ THEN BX3Vie X3VieNeera2
@171
DO ~SetGlobal("X3VieNeera","GLOBAL",1)~
== BNEERA @172
== BX3Vie @173
== BNEERA @174
== BX3Vie @175
== BNEERA @176
== BX3Vie @177
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Vie")
See("Neera")
Global("X3VieNeera","GLOBAL",1)~ THEN BX3Vie X3VieNeera2
@178
DO ~SetGlobal("X3VieNeera","GLOBAL",2)~
== BNEERA @179
== BX3Vie @180
== BNEERA @181
== BX3Vie @182
== BNEERA @183
== BX3Vie @184
== BNEERA @185
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieRasaad","GLOBAL",0)~ THEN BRASAAD X3VieRasaad1
@186
DO ~SetGlobal("X3VieRasaad","GLOBAL",1)~
== BX3Vie @187
== BRASAAD @188
== BX3Vie @189
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Vie")
See("RASAAD")
Global("X3VieRasaad","GLOBAL",1)~ THEN BX3Vie X3VieRasaad2
@190
DO ~SetGlobal("X3VieRasaad","GLOBAL",2)~
== BRASAAD @191
== BX3Vie @192
== BRASAAD @193
== BX3Vie @194
== BRASAAD @195
== BX3Vie @196
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("Valygar")
Global("X3VieValygar","GLOBAL",0)~ THEN BX3Vie X3VieValygar1
@197
DO ~SetGlobal("X3VieValygar","GLOBAL",1)~
== BVALYGA @198
== BX3Vie @199
== BVALYGA @200
== BX3Vie @201
== BVALYGA @202
== BX3Vie @203
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("Valygar")
Global("X3VieValygar","GLOBAL",1)~ THEN BX3Vie X3VieValygar2
@204 
DO ~SetGlobal("X3VieValygar","GLOBAL",2)~
== BVALYGA @205
== BX3Vie @206
== BVALYGA @207
== BX3Vie @208
EXIT 

// Valygar #3
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Alignment("X3Vie",NEUTRAL)
Global("X3VieValygar","GLOBAL",2)~ THEN BVALYGA X3VieValygar2
@209 
DO ~SetGlobal("X3VieValygar","GLOBAL",3)~
== BX3Vie @210
== BVALYGA @211
== BX3Vie @212
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Vie")
See("Viconia")
Global("X3VieViconia","GLOBAL",0)~ THEN BX3Vie X3VieViconia1
@213 
DO ~SetGlobal("X3VieViconia","GLOBAL",1)~
== BVICONI @214
== BX3Vie @215
== BVICONI @216
== BX3Vie @217
== BVICONI @218
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieYoshimo","GLOBAL",0)~ THEN BYOSHIM X3VieYoshimo1
@219 
DO ~SetGlobal("X3VieYoshimo","GLOBAL",1)~
== BX3Vie @220
== BYOSHIM @221
== BX3Vie @222
== BYOSHIM @223
== BX3Vie @224
== BYOSHIM @225
EXIT 