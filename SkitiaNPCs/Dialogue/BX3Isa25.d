// Viconia
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Isa")
See("Viconia")
Global("X3IsaViconiaToB","GLOBAL",0)~ THEN BX3Isa25 X3IsaViconia1
@0
DO ~SetGlobal("X3IsaViconiaToB","GLOBAL",1)~
== BVICON25 @1
== BX3Isa25 @2
== BVICON25 @3
== BX3Isa25 @4
== BVICON25 @5
EXIT 

//Dorn 
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Isa")
See("DORN")
Global("X3IsaDORNToB","GLOBAL",0)~ THEN BDORN25 X3IsaDORN1
@6
DO ~SetGlobal("X3IsaDORNToB","GLOBAL",1)~
== BX3Isa25 @7
== BDORN25 @8
== BX3Isa25 @9
== BDORN25 @10
EXIT 

//Sarevok
CHAIN
IF ~IsValidForPartyDialogue("Sarevok")
IsValidForPartyDialogue("X3Isa")
See("Sarevok")
Global("X3IsaSarevokToB","GLOBAL",0)~ THEN BX3Isa25 X3IsaSarevok1
@11
DO ~SetGlobal("X3IsaSarevokToB","GLOBAL",1)~
== BSAREV25 @12
== BX3Isa25 @13
== BSAREV25 @14
== BX3Isa25 @15
== BSAREV25 @16
EXIT 

//Rasaad
CHAIN
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Isa")
See("Rasaad")
Global("X3IsaRasaadToB","GLOBAL",0)~ THEN BX3Isa25 X3IsaRasaad1
@17
DO ~SetGlobal("X3IsaRasaadToB","GLOBAL",1)~
== BRASAA25 @18
== BX3Isa25 @19
== BRASAA25 @20
== BX3Isa25 @21
== BRASAA25 @22
EXIT 

//Jan
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Isa")
See("Jan")
Global("X3IsaJanToB","GLOBAL",0)~ THEN BX3Isa25 X3IsaJan1
@23
DO ~SetGlobal("X3IsaJanToB","GLOBAL",1)~
== BJAN25 @24
== BX3Isa25 @25
== BJAN25 @26
== BX3Isa25 @27
== BJAN25 @28
== BX3Isa25 @29
EXIT 

//HAERDALIS"
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaHAERDALISToB","GLOBAL",0)~ THEN BHAERD25 X3IsaHaerdalis1
@30
DO ~SetGlobal("X3IsaHAERDALISToB","GLOBAL",1)~
== BX3Isa25 @31
== BHAERD25 @32
== BX3Isa25 @33
== BHAERD25 @34
EXIT 

//MAZZY"
CHAIN
IF ~IsValidForPartyDialogue("MAZZY")
IsValidForPartyDialogue("X3Isa")
See("MAZZY")
Global("X3IsaMAZZYToB","GLOBAL",0)~ THEN BX3Isa25 X3IsaMazzy1
@37
DO ~SetGlobal("X3IsaMAZZYToB","GLOBAL",1)~
== BMAZZY25 @38
== BX3Isa25 @39
== BMAZZY25 @40
== BX3Isa25 @41
EXIT 

//EDWIN 
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Isa")
See("EDWIN")
Global("X3IsaEDWINToB","GLOBAL",0)~ THEN BX3Isa25 X3IsaEDWIN1
@42
DO ~SetGlobal("X3IsaEDWINToB","GLOBAL",1)~
== BEDWIN25 @43
== BX3Isa25 @44
== BEDWIN25 @45
== BX3Isa25 @46
== BEDWIN25 @47
EXIT 

//NALIA 
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Isa")
See("NALIA")
Global("X3IsaNALIAToB","GLOBAL",0)~ THEN BNALIA25 X3IsaNALIA1
@48
DO ~SetGlobal("X3IsaNALIAToB","GLOBAL",1)~
== BX3Isa25 @49
== BNALIA25 @50
== BX3Isa25 @51
== BNALIA25 @52
== BX3Isa25 @53
== BNALIA25 @54
EXIT 

//Anomen 
CHAIN
IF ~IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("X3Isa")
See("Anomen")
Global("X3IsaAnomenToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaAnomen1
@55
DO ~SetGlobal("X3IsaAnomenToB","GLOBAL",1)~
== BANOME25 @56
== BX3Isa25 @57
== BANOME25 @58
== BX3Isa25 @59
== BANOME25 @60
EXIT 

//Emily 1
CHAIN
IF ~IsValidForPartyDialogue("X3Emi")
IsValidForPartyDialogue("X3Isa")
See("X3Emi")
Global("X3IsaX3EmiToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaX3Emi1
@61
DO ~SetGlobal("X3IsaX3EmiToB","GLOBAL",1)~
== BX3EMI25 @62
END 
IF ~OR(2)!Dead("X3IMavis")Alignment("X3Isa",LAWFUL_NEUTRAL)~ EXTERN BX3Isa25 Family
IF ~Dead("X3IMavis")!Alignment("X3Isa",LAWFUL_NEUTRAL)~ EXTERN BX3Isa25 Same

CHAIN BX3Isa25 Family 
@63
== BX3EMI25 @64
== BX3Isa25 @65
== BX3Emi25 @66
EXIT 

CHAIN BX3Isa25 Same
@67
== BX3EMI25 @68
== BX3Isa25 @69
EXIT 

//Emily 2
CHAIN
IF ~IsValidForPartyDialogue("X3Emi")
IsValidForPartyDialogue("X3Isa")
See("X3Emi")
Global("X3IsaRomanceActive","GLOBAL",2)
Global("X3IsaX3EmiToB","GLOBAL",1)~ THEN BX3Emi25 X3IsaX3Emi2
@70
DO ~SetGlobal("X3IsaX3EmiToB","GLOBAL",2)~
== BX3Isa25 @71
== BX3Emi25 @72
== BX3Isa25 @73
== BX3Emi25 @74
== BX3Isa25 @75
== BX3Emi25 @76
== BX3Isa25 @77
== BX3Emi25 @78
== BX3Isa25 @79
EXIT 

//Helga 1
CHAIN
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaX3HelToB","GLOBAL",0)~ THEN BX3Hel25 X3HelX3Isa1
@80
DO ~SetGlobal("X3IsaX3HelToB","GLOBAL",1)~
== BX3Isa25 @81
== BX3Hel25 @82
== BX3Isa25 @83
== BX3Hel25 @84
== BX3Isa25 @85
EXIT 

//Helga 2
CHAIN
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
InParty("X3Emi")
Global("X3IsaX3HelToB","GLOBAL",1)~ THEN BX3Hel25 X3HelX3Isa2
@86
DO ~SetGlobal("X3IsaX3HelToB","GLOBAL",2)~
== BX3Isa25 @87
== BX3Hel25 @88
== BX3Isa25 @89
== BX3Emi25 IF ~IsValidForPartyDialogue("X3Emi")~ THEN @90
== BX3Isa25 IF ~IsValidForPartyDialogue("X3Emi")~ THEN @91
EXIT 

//Imoen 
CHAIN
IF ~IsValidForPartyDialogue("Imoen")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaImoenToB","GLOBAL",0)~ THEN BIMOEN25 X3IsaImoen1
@92
DO ~SetGlobal("X3IsaImoenToB","GLOBAL",1)~
== BX3Isa25 @93
== BIMOEN25 @94
== BX3Isa25 @95
== BIMOEN25 @96
EXIT 


//Hexxat 
CHAIN
IF ~IsValidForPartyDialogue("HEXXAT")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaHexxatToB","GLOBAL",0)~ THEN BHEXXA25 X3IsaHexxat1
@97
DO ~SetGlobal("X3IsaHexxatToB","GLOBAL",1)~
== BX3Isa25 @98
== BHEXXA25 @99
== BX3Isa25 @100
== BHEXXA25 @101
== BX3Isa25 @102
EXIT 


//Aerie 
CHAIN
IF ~IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("X3Isa")
See("Aerie")
Global("X3IsaAerieToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaAerie1
@103
DO ~SetGlobal("X3IsaAerieToB","GLOBAL",1)~
== BAERIE25 @104
== BX3ISA25 @105
== BAERIE25 @106
== BX3ISA25 @107
EXIT 

//Minsc 
CHAIN
IF ~IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("X3Isa")
See("Minsc")
Global("X3IsaMinscToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaMinsc1
@108
DO ~SetGlobal("X3IsaMinscToB","GLOBAL",1)~
== BMinsc25 @109
== BX3ISA25 @110
== BMinsc25 @111
== BX3ISA25 @112
EXIT 

//KELDORN 
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3IsaMinscToB","GLOBAL",0)~ THEN BKELDO25 X3IsaKeldorn1
@113
DO ~SetGlobal("X3IsaMinscToB","GLOBAL",1)~
END 
IF ~!Alignment("X3Isa",LAWFUL_NEUTRAL)~ EXTERN BKELDO25 X3IsaKeldorn1A
IF ~Alignment("X3Isa",LAWFUL_NEUTRAL)~ EXTERN BKELDO25 X3IsaKeldorn1B

CHAIN BKELDO25 X3IsaKeldorn1A
@114
== BX3ISA25 @116
== BKELDO25 @117
== BX3ISA25 @118
EXIT 

CHAIN BKELDO25 X3IsaKeldorn1B 
@118
== BX3ISA25 @119
== BKELDO25 @120
== BX3ISA25 @121
EXIT 

//Vienxay 1
CHAIN
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Isa")
See("X3Vie")
Global("X3IsaX3VieToB","GLOBAL",0)~ THEN BX3Vie25 X3IsaX3Vie1
@122
DO ~SetGlobal("X3IsaX3VieToB","GLOBAL",1)~
== BX3ISA25 @123
== BX3Vie25 @124
== BX3ISA25 @125
== BX3Vie25 @126
== BX3ISA25 @127
== BX3Vie25 @128
== BX3ISA25 @129
EXIT 

//Vienxay 2 
CHAIN
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Isa")
See("X3Vie")
Global("X3VieEvermeet","GLOBAL",1)
Global("X3IsaX3VieToB","GLOBAL",1)~ THEN BX3Isa25 X3IsaX3Vie2
@130
DO ~SetGlobal("X3IsaX3VieToB","GLOBAL",2)~
== BX3Vie25 @131
== BX3ISA25 @132
== BX3Vie25 @133
== BX3ISA25 @134
== BX3Vie25 @135
EXIT 

//Kale 1
CHAIN
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Isa")
See("X3Kal")
Global("X3IsaX3KalToB","GLOBAL",0)~ THEN BX3Isa25 X3IsaX3Kal1
@136
DO ~SetGlobal("X3IsaX3KalToB","GLOBAL",1)~
== BX3ISA25 @137
== BX3Kal25 @138
== BX3ISA25 @139
== BX3Kal25 @140
== BX3ISA25 @141
EXIT 

//Kale 2 
CHAIN
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Isa")
See("X3Isa")
Global("X3KalEvermeet","GLOBAL",1)
Global("X3IsaX3KalToB","GLOBAL",1)~ THEN BX3Kal25 X3IsaX3Kal2
@142
DO ~SetGlobal("X3IsaX3KalToB","GLOBAL",2)~
== BX3ISA25 @143
== BX3Kal25 @144
== BX3ISA25 @145
== BX3Kal25 @146
== BX3ISA25 @147
== BX3Kal25 @148
== BX3ISA25 @149
EXIT 

//Minsc 
CHAIN
IF ~IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("X3Isa")
See("Minsc")
Global("X3IsaMinscToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaMinsc1
@150
DO ~SetGlobal("X3IsaMinscToB","GLOBAL",1)~
== BMINSC25 @151
== BX3ISA25 @152
== BMinsc25 @153
== BX3ISA25 @154
EXIT 

//Cernd 
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Isa")
See("CERND")
Global("X3IsaCERNDToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaCERND1
@155
DO ~SetGlobal("X3IsaCERNDToB","GLOBAL",1)~
== BCERND25 @156
== BX3ISA25 @157
== BCERND25 @158
== BX3ISA25 @159
== BCERND25 @160
== BX3ISA25 @161
EXIT 

//Valygar 
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Isa")
See("Valygar")
Global("X3IsaValygarToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaValygar
@162
DO ~SetGlobal("X3IsaValygarToB","GLOBAL",1)~
== BVALYG25 @163
== BX3ISA25 @164
== BVALYG25 @165
== BX3ISA25 @166
== BVALYG25 @167
EXIT 

//Jaheira 
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Isa")
See("Valygar")
Global("X3IsaValygarToB","GLOBAL",0)~ THEN BX3ISA25 X3IsaValygar
@168
DO ~SetGlobal("X3IsaValygarToB","GLOBAL",1)~
== BJAHEI25 @169
== BX3ISA25 @170
== BJAHEI25 @171
== BX3ISA25 @172
== BJAHEI25 @173
== BX3ISA25 @174
EXIT

//KORGAN 
CHAIN
IF ~IsValidForPartyDialogue("KORGAN")
IsValidForPartyDialogue("X3Isa")
See("KORGAN")
Global("X3IsaKORGANToB","GLOBAL",0)~ THEN BKORGA25 X3IsaKORGAN1
@175
DO ~SetGlobal("X3IsaKORGANToB","GLOBAL",1)~
== BX3ISA25 @176
== BKORGAN25 @177
== BX3ISA25 @178
== BKORGA25 @179
== BX3ISA25 @180
== BKORGA25 @181
== BX3ISA25 @182
EXIT 

//Recorder 1
CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3IsaRebToB","GLOBAL",0)~ THEN BX3ISA25 X3ISAReb1
@183
DO ~SetGlobal("X3IsaRebToB","GLOBAL",1)~
== BX3Reb25 @184
== BX3Isa25 @185
== BX3Reb25 @186
== BX3ISA25 @187
== BX3Reb @188
EXIT 

//Recorder 2
CHAIN 
IF ~IsValidForPartyDialogue("X3Isa")
IsValidForPartyDialogue("X3Reb")
See("X3Isa")
Global("X3IsaRebToB","GLOBAL",0)~ THEN BX3Reb25 X3ISAReb2
@189
DO ~SetGlobal("X3IsaRebToB","GLOBAL",1)~
== BX3Isa25 @190
== BX3KAl25 IF ~IsValidForPartyDialogue("X3Kal")~ THEN @191
== BX3ISA25 IF ~IsValidForPartyDialogue("X3Kal")~ THEN @192
== BX3Reb25 @193
== BX3ISA25 @194
END 
IF ~Global("X3IsaRomanceActive","GLOBAL",2)~ EXTERN BX3Reb25 X3IsaReb2Rom
IF ~!Global("X3IsaRomanceActive","GLOBAL",2)~ EXTERN BX3Reb25 X3IsaReb2NoRom

CHAIN BX3Reb25 X3IsaReb2Rom 
@195
== BX3ISA25 @196
EXIT 

CHAIN BX3Reb25 X3IsaReb2NoRom 
@197
== BX3ISA25 @198
EXIT 