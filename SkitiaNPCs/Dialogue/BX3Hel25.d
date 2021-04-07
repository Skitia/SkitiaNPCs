// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Hel")
See("AERIE")
Global("X3HelAERIEToB","GLOBAL",0)~ THEN BX3Hel25 X3HelAERIE1
@0
DO ~SetGlobal("X3HelAERIEToB","GLOBAL",1)~
== BAERIE25 @1
== BX3Hel25 @2
== BAERIE25 @3
== BX3Hel25 @4
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Hel")
See("ANOMEN")
Global("X3HelANOMENToB","GLOBAL",0)~ THEN BX3Hel25 X3HelANOMEN1
@5
DO ~SetGlobal("X3HelANOMENToB","GLOBAL",1)~
== BANOME25 @6
== BX3Hel25 @7
== BANOME25 @8
== BX3Hel25 @9
EXIT

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BX3HEL25 X3EmiCERND1
@10
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BCERND25 @11
== BX3Hel25 @12
== BCERND25 @13
== BX3Hel25 @14
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Hel")
See("Dorn")
Global("X3HelDornToB","GLOBAL",0)~ THEN BX3Hel25 X3HelDorn1
@15
DO ~SetGlobal("X3HelDornToB","GLOBAL",1)~
== BDORN25 @16
== BX3HEL25 @17
== BDORN25 @18
== BX3Hel25 @19
== BDORN25 @20
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelEDWINToB","GLOBAL",0)~ THEN BEDWIN25 X3HelEDWIN1
@21
DO ~SetGlobal("X3HelEDWINToB","GLOBAL",1)~
== BX3Hel25 @22
== BEDWIN25 @23
== BX3Hel25 @24
== BEDWIN25 @25
== BX3HEL25 @26
== BEDWIN25 @27
EXIT  

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelHAERDALISToB","GLOBAL",0)~ THEN BHAERD25 X3HelHAERDALIS1
@28
DO ~SetGlobal("X3HelHAERDALISToB","GLOBAL",1)~
== BX3Hel25 @29
== BHAERD25 @30
== BX3Hel25 @31
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Hel")
See("Hexxat")
Global("X3HelHexxatToB","GLOBAL",0)~ THEN BX3Hel25 X3HelHexxat1
@32
DO ~SetGlobal("X3HalHexxatToB","GLOBAL",1)~
== BHEXXA25 @33
== BX3HEL25 @34
== BHEXXA25 @35
== BX3HEL25 @36
EXIT

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3HelIMOEN1
@37
DO ~SetGlobal("X3HelIMOENToB","GLOBAL",1)~
== BX3HEL25 @38
== BIMOEN25 @39
== BX3Hel25 @40
== BNEERA25 IF ~IsValidForPartyDialogue("Neera")~ THEN @41
== BX3Hel25 @42
== BIMOEN25 @43
EXIT 

// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Hel")
See("Jan")
Global("X3HelJanToB","GLOBAL",0)~ THEN BX3Hel25 X3HelJan1
@44
DO ~SetGlobal("X3HelJanToB","GLOBAL",1)~
== BJAN25 @45
== BX3HEL25 @46
EXIT 

// JAHEIRA #25
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Hel")
See("JAHEIRA")
Global("X3HelJAHEIRAToB","GLOBAL",0)~ THEN BX3HEL25 X3HelJAHEIRA1
@47
DO ~SetGlobal("X3HelJAHEIRAToB","GLOBAL",1)~
== BJAHEI25 @48
== BX3Hel25 @49
== BJAHEI25 @50
== BX3Hel25 @51
EXIT 

// KELDORN #25
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("KELDORN")
Global("X3KalKELDORNToB","GLOBAL",0)~ THEN BX3Kal25 X3KalKELDORN1
@52
DO ~SetGlobal("X3KalKELDORNToB","GLOBAL",1)~
== BKELDO25 @53
== BX3Kal25 @54
== BKELDO25 @55
== BX3Kal25 @56
== BKELDO25 @57
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelKorganToB","GLOBAL",0)~ THEN BKORGA25 X3HelKorgan1
@58
DO ~SetGlobal("X3HelKorganToB","GLOBAL",1)~
== BX3Hel25 @59
== BKORGA25 @60
== BX3Hel25 @61
EXIT 

// Mazzy
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Hel")
See("Hexxat")
Global("X3HelHexxatToB","GLOBAL",0)~ THEN BX3Hel25 X3HelHexxat1
@62
DO ~SetGlobal("X3HalHexxatToB","GLOBAL",1)~
== BHEXXA25 @63
== BX3HEL25 @64
== BHEXXA25 @65
== BX3HEL25 @66
== BHEXXA25 @67
== BX3HEL25 @68
EXIT

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Reb")
See("MINSC")
Global("X3RebMINSC","GLOBAL",0)~ THEN BX3Reb25 X3RebMINSC1
@69
DO ~SetGlobal("X3RebMINSC","GLOBAL",1)~
== BMINSC25 @70
== BX3Reb25 @71
== BMINSC25 @72
== BX3Reb25 @73
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelNALIAToB","GLOBAL",0)~ THEN BNALIA25 X3HelNALIA1
@74
DO ~SetGlobal("X3HelNALIAToB","GLOBAL",1)~
== BX3Hel25 @75
== BNALIA25 @76
== BX3Hel25 @77
== BNALIA25 @78
== BX3Hel25 @79
== BNALIA25 @80
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Hel")
See("Neera")
Global("X3HelNeeraToB","GLOBAL",0)~ THEN BX3Hel25 X3HelNEERA1
@81
DO ~SetGlobal("X3HelNeeraToB","GLOBAL",1)~
== BNEERA25 @82
== BX3Hel25 @83
== BNEERA25 @84
== BX3Hel25 @85
== BNEERA25 @86
== BX3Hel25 @87
== BNEERA25 @88
== BX3Hel25 @89
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Hel")
See("RASAAD")
Global("X3HelRasaadToB","GLOBAL",0)~ THEN BX3Hel25 X3HelRasaad1
@90
DO ~SetGlobal("X3HelRasaadToB","GLOBAL",1)~
== BRASAA25 @91
== BX3Hel25 @92
== BRASAA25 @93
== BX3Hel25 @94
== BRASAA25 @95
== BX3Hel25 @96
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelSAREVOKToB","GLOBAL",0)~ THEN BSAREV25 X3HelSAREVOK1
@97
DO ~SetGlobal("X3HelSAREVOKToB","GLOBAL",1)~
== BX3Hel25 @98
== BSAREV25 @99
== BX3Hel25 @100
== BSAREV25 @101
EXIT 

// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Hel")
See("Valygar")
Global("X3HelValygarToB","GLOBAL",0)~ THEN BX3Hel25 X3HelValygar1
@102 
DO ~SetGlobal("X3HelValygarToB","GLOBAL",1)~
== BVALYG25 @103
== BX3Hel25 @104
== BVALYG25 @105
== BX3Hel25 @106
== BVALYG25 @107
== BX3Hel25 @108
EXIT 

// Viconia
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Hel")
See("Viconia")
Global("X3HelViconiaToB","GLOBAL",0)~ THEN BX3Hel25 X3HelViconia1
@109 
DO ~SetGlobal("X3HelViconiaToB","GLOBAL",1)~
== BVICON25 @110
== BX3Hel25 @111
== BVICON25 @112
== BX3Hel25 @113
EXIT 
//Kale 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3KalToB1","LOCALS",0)~ THEN BX3Hel25 X3HelX3Kal1
@114
DO ~SetGlobal("X3HelX3KalToB1","LOCALS",1)~
== BX3Kal25 @115
== BX3Hel25 @116
== BX3Kal25 @117
== BX3Hel25 @118
== BX3Kal25 @119
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelX3KalToB2","LOCALS",0)~ THEN BX3Kal25 X3HelX3Kal2
@120
DO ~SetGlobal("X3HelX3KalToB2","LOCALS",1)~
== BX3Hel25 @121
== BX3Kal25 @122
== BX3Hel25 @123
== BX3Kal25 @124
== BX3Hel25 @125
EXIT 
//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3RebToB1","LOCALS",0)~ THEN BX3Hel25 X3HelX3Reb1
@126
DO ~SetGlobal("X3HelX3RebToB1","LOCALS",1)~
== BX3Reb25 @127
== BX3Hel25 @128
== BX3Reb25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN @129
== BX3Hel25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN @130
== BX3Reb25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN @131
== BX3Reb25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN @132
== BX3Hel25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN @133
== BX3Reb25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN @134
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelToBQuest","GLOBAL",6)
Global("X3HelX3RebToB2","LOCALS",0)~ THEN BX3Hel25 X3HelX3Reb2
@135
DO ~SetGlobal("X3HelX3RebToB2","LOCALS",1)~
== BX3Reb25 @136
== BX3Hel25 @137
== BX3Reb25 @138
== BX3Hel25 @139
EXIT 
//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3HelX3VieToB1","LOCALS",0)~ THEN BX3Hel25 X3HelX3Vie1
@140
DO ~SetGlobal("X3HelX3VieToB1","LOCALS",1)~
== BX3Vie25 @141
== BX3Hel25 @142
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @143
== BX3Hel25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @144
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @145
== BX3Hel25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @146

== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @147
== BX3Hel25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @148
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @149
== BX3Hel25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @150
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @151
== BX3Hel25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @152

EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3VieEvermeet","GLOBAL",1)
Global("X3HelX3VieToB2","LOCALS",0)~ THEN BX3Hel25 X3HelX3Vie2
@153
DO ~SetGlobal("X3HelX3VieToB2","LOCALS",1)~
== BX3Vie25 @154
== BX3Hel25 @155
== BX3Vie25 @156
== BX3Hel25 @157
== BX3Vie25 @158
== BX3Hel25 @159
EXIT 