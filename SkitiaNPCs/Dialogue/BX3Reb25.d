// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebAERIEToB","GLOBAL",0)~ THEN BAERIE25 X3RebAERIE1
@0
DO ~SetGlobal("X3RebAERIEToB","GLOBAL",1)~
== BX3Reb25 @1
== BAERIE25 @2
== BX3Reb25 @3
== BAERIE25 @4
== BAERIE25 @5
== BX3Reb25 @6
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Reb")
See("ANOMEN")
Global("X3RebANOMENToB","GLOBAL",0)~ THEN BX3Reb25 X3RebANOMEN1
@7
DO ~SetGlobal("X3RebANOMENToB","GLOBAL",1)~
== BANOME25 @8
== BX3Reb25 @9
== BANOME25 @10
== BX3Reb25 IF ~!InParty("X3Emi")~ THEN @11
== BANOME25 IF ~!InParty("X3Emi")~ THEN  @12
== BX3Reb25 IF ~InParty("X3Emi")~ THEN @13
== BANOME25 IF ~InParty("X3Emi")~ THEN BANOME25 ~Emily has pitifully poor taste. I'll make do, thank you.~
== BX3Emi25 IF ~IsValidForPartyDialogue("X3Emi")~ THEN @15
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BX3Reb25 X3EmiCERND1
@16
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BCERND25 @17
== BX3Reb25 @18
== BCERND25 @19
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebDornToB","GLOBAL",0)~ THEN BDORN25 X3RebDorn1
@20
DO ~SetGlobal("X3RebDornToB","GLOBAL",1)~
== BX3Reb25 @21
== BDORN25 @22
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Reb")
See("Edwin")
Global("X3RebEDWINToB","GLOBAL",0)~ THEN BX3Reb25 X3RebEDWIN1
@23
DO ~SetGlobal("X3RebEDWINToB","GLOBAL",1)~
== BEDWIN25 @24
== BX3Reb25 @25
== BEDWIN25 @26
== BX3Reb25 @27
== BEDWIN25 @28
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("HAERDALIS")
Global("X3RebHAERDALISToB","GLOBAL",0)~ THEN BX3Reb25 X3RebHAERDALIS1
@29
DO ~SetGlobal("X3RebHAERDALISToB","GLOBAL",1)~
== BHAERD25 @30
== BX3Reb25 @31
== BHAERD25 @32
== BX3Reb25 @33
== BHAERD25 @34
== BX3Reb25 @35
== BHAERD25 @36
== BX3Reb25 @37
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Reb")
See("Hexxat")
Global("X3RebHexxatToB","GLOBAL",0)Alignment("X3Reb",CHAOTIC_NEUTRAL)~ THEN BX3Reb25 RebHexxat1
@38
DO ~SetGlobal("X3RebHexxatToB","GLOBAL",1)~
== BHEXXA25 @39
== BX3Reb25 @40
== BHEXXA25 @41
== BX3Reb25 @42
== BHEXXA25 @43
== BX3Reb25 @44
== BHEXXA25 @45
== BX3Reb25 @46
== BHEXXA25 @47
== BX3Reb25 @48
== BHEXXA25 @49
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Reb")
See("IMOEN2")
Global("X3RebIMOENToB","GLOBAL",0)~ THEN BX3Reb X3RebIMOEN1
@50
DO ~SetGlobal("X3RebIMOENToB","GLOBAL",1)~
== BIMOEN25 @51
== BX3Reb25 @52
== BIMOEN25 @53
== BX3Reb25 @54
== BIMOEN25 @55
== BX3Reb25 @56
== BIMOEN25 @57
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJanToB","GLOBAL",0)~ THEN BX3Reb25 X3RebJan1
@58
DO ~SetGlobal("X3RebJanToB","GLOBAL",1)~
== BJAN25 @59
== BX3Reb25 @60
EXIT 


// JAHEIRA
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebJAHEIRAToB","GLOBAL",0)~ THEN BJAHEI25 X3RebJAHEIRA1
@61
DO ~SetGlobal("X3RebJAHEIRAToB","GLOBAL",1)~
== BX3Reb25 @62
== BJAHEI25 @63
== BX3Reb25 @64
== BJAHEI25 @65
== BX3Reb25 @66
EXIT 

// KELDORN 
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Reb")
See("KELDORN")
Global("X3RebKELDORNToB","GLOBAL",0)~ THEN BX3Reb25 X3RebKELDORN1
@67
DO ~SetGlobal("X3RebKELDORNToB","GLOBAL",1)~
== BKELDO25 @68
== BX3Reb25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN @69
== BX3Reb25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN @70
== BKELDO25 @71
== BX3Reb25 @72
== BKELDO25 @73
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebKorganToB","GLOBAL",0)~ THEN BKORGA25 X3RebKorgan1
@74
DO ~SetGlobal("X3RebKorganToB","GLOBAL",1)~
== BX3Reb25 @75
== BKORGA25 @76
== BX3Reb25 @77
== BKORGA25 @78
EXIT 


// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
See("Mazzy")
Global("X3RebMazzyToB","GLOBAL",0)~ THEN BX3Reb25 X3RebMazzy1
@79
DO ~SetGlobal("X3RebMazzyToB","GLOBAL",1)~
== BMAZZY25 @80
== BX3Reb25 @81
== BMAZZY25 @82
== BX3Reb25 @83
== BMAZZY25 @84
== BX3Reb25 @85
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Reb")
See("Nalia")
Global("X3RebNALIAToB","GLOBAL",0)~ THEN BX3Reb25 X3RebNALIA1
@86
DO ~SetGlobal("X3RebNALIAToB","GLOBAL",1)~
== BNALIA25 @87
== BX3Reb25 @88
== BNALIA25 @89
== BX3Reb25 @90
== BNALIA25 @91
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebNeeraToB","GLOBAL",0)~ THEN BNEERA25 X3RebNEERA1
@92
DO ~SetGlobal("X3RebNeeraToB","GLOBAL",1)~
== BX3Reb25 @93
== BNEERA25 @94
== BX3Reb25 @95
== BNEERA25 @96
== BX3Reb25 @97
== BNEERA25 @98
== BX3Reb25 @99
== BNEERA25 @100
== BX3Reb25 @101
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Reb")
See("RASAAD")
Global("X3RebRasaadToB","GLOBAL",0)~ THEN BX3Reb25 X3RebRasaad1
@102
DO ~SetGlobal("X3RebRasaadToB","GLOBAL",1)~
== BRASAA25 @103
== BX3Reb25 @104
== BRASAA25 @105
== BX3Reb25 @106
== BRASAA25 @107
== BX3Reb25 @108
== BRASAA25 @109
== BX3Reb25 @110
== BRASAA25 @111
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebSAREVOKToB","GLOBAL",0)~ THEN BSAREV25 X3RebSAREVOK1
@112
DO ~SetGlobal("X3RebSAREVOKToB","GLOBAL",1)~
== BX3Reb25 @113
== BSAREV25 @114
== BX3Reb25 @115
== BSAREV25 @116
EXIT 

// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebValygarToB","GLOBAL",0)~ THEN BVALYG25 X3RebValygar1
@117 
DO ~SetGlobal("X3RebValygarToB","GLOBAL",1)~
== BX3Reb25 @118
== BVALYG25 @119
== BX3Reb25 @120
== BX3Reb25 @121
== BVALYG25 @122
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Reb")
See("Viconia")
Global("X3RebViconiaToB","GLOBAL",0)~ THEN BX3Reb25 X3RebViconia1
@123 
DO ~SetGlobal("X3RebViconiaTo","GLOBAL",1)~
== BVICON25 @124
== BX3Reb25 @125
== BVICON25 @126
== BX3Reb25 @127
== BVICON25 @128
== BX3Reb25 @129
== BVICON25 @130
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Global("X3ReBX3VieToB1","LOCALS",0)~ THEN BX3Reb25 X3ReBX3Vie1
@131
DO ~SetGlobal("X3ReBX3VieToB1","LOCALS",1)~
== BX3Vie25 @132
== BX3Reb25 @133
== BX3Vie25 @134
== BX3Reb25 @135
== BX3Vie25 @136
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Global("X3ReBX3VieToB1","LOCALS",1)~ THEN BX3Reb25 X3ReBX3Vie252
@137
DO ~SetGlobal("X3ReBX3VieToB1","LOCALS",2)~
== BX3Vie25 @138
== BX3Reb25 @139
== BX3Vie25 @140
== BX3Reb25 @141
== BX3Vie25 @142
EXIT 
