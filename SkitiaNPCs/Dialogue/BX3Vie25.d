// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIEToB","GLOBAL",0)~ THEN BX3Vie25 X3VieAERIE1
@0
DO ~SetGlobal("X3VieAERIEToB","GLOBAL",1)~
== BAERIE25 @1
== BX3Vie25 @2
== BAERIE25 @3
== BX3Vie25 @4
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Vie")
See("ANOMEN")
Global("X3VieANOMENToB","GLOBAL",0)~ THEN BX3Vie25 X3VieANOMEN1
@5
DO ~SetGlobal("X3VieANOMENToB","GLOBAL",1)~
== BANOME25 @6
== BX3Vie25 @7
== BANOME25 @8
== BX3Vie25 @9
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BX3Vie25 X3EmiCERND1
@10
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BCERND25 @11
== BX3Vie25 @12
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieDornToB","GLOBAL",0)~ THEN BDORN25 X3VieDorn1
@13
DO ~SetGlobal("X3VieDornToB","GLOBAL",1)~
== BX3Vie25 @14
== BDORN25 @15
== BX3Vie25 @16
== BDORN25 @17
== BX3Vie25 @18
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Vie")
See("Edwin")
Global("X3VieEDWINToB","GLOBAL",0)~ THEN BX3Vie25 X3VieEDWIN1
@19
DO ~SetGlobal("X3VieEDWINToB","GLOBAL",1)~
== BEDWIN25 @20
== BX3Vie25 @21
== BEDWIN25 @22
== BX3Vie25 @23
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Vie")
See("HAERDALIS")
Global("X3VieHAERDALISToB","GLOBAL",0)~ THEN BX3Vie25 X3VieHAERDALIS1
@24
DO ~SetGlobal("X3VieHAERDALISToB","GLOBAL",1)~
== BHAERD25 @25
== BX3Vie25 @26
== BHAERD25 @27
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @28
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @29
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3VieIMOEN1
@30
DO ~SetGlobal("X3VieIMOENToB","GLOBAL",1)~
== BX3Vie25 @31
== BIMOEN25 @32
== BX3Vie25 @33
== BIMOEN25 @34
== BX3Vie25 @35
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
!Kit("X3Vie",SHADOWDANCER)
Global("X3VieHexxatToB","GLOBAL",0)~ THEN BHEXXA25 X3VieHexxat1
@36
DO ~SetGlobal("X3VieHexxatToB","GLOBAL",1)~
EXTERN BX3Vie25 X3VieHexxat1End

CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Kit("X3Vie",SHADOWDANCER)
Global("X3VieHexxatToB","GLOBAL",0)~ THEN BHEXXA25 X3VieHexxat1S
@123
DO ~SetGlobal("X3VieHexxatToB","GLOBAL",1)~
EXTERN BX3Vie25 X3VieHexxat1End

CHAIN BX3Vie25 X3VieHexxat1End
@37
== BHEXXA25 @38
== BX3Vie25 @39
== BHEXXA25 @40
EXIT 
// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Vie")
See("Jan")
!Kit("X3Vie",SHADOWDANCER)
Global("X3VieJanToB","GLOBAL",0)~ THEN Bx3Vie25 X3VieJan1
@41
DO ~SetGlobal("X3VieJanToB","GLOBAL",1)~
EXTERN BJAN25 X3VieJan1End 
//Shadowdancer
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Vie")
Kit("X3Vie",SHADOWDANCER)
See("Jan")
Global("X3VieJanToB","GLOBAL",0)~ THEN Bx3Vie25 X3VieJan1S
@124
DO ~SetGlobal("X3VieJanToB","GLOBAL",1)~
EXTERN BJAN25 X3VieJan1End

CHAIN BJAN25 X3VieJan1End 
@42
== Bx3Vie25 @43
== BJAN25 @44
== Bx3Vie25 @45
== BJAN25 @46
== Bx3Vie25 @47
EXIT 



// JAHEIRA #25
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieJAHEIRAToB","GLOBAL",0)~ THEN BJAHEI25 X3VieJAHEIRA1
@48
DO ~SetGlobal("X3VieJAHEIRAToB","GLOBAL",1)~
== BX3Vie25 @49
== BJAHEI25 @50
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @51
== BJAHEI25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @52
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @53
== BJAHEI25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @54
EXIT 

// KELDORN 
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Vie")
See("KELDORN")
Global("X3VieKELDORNToB","GLOBAL",0)~ THEN BX3Vie25 X3VieKELDORN1
@55
DO ~SetGlobal("X3VieKELDORNToB","GLOBAL",1)~
== BKELDO25 @56
== BX3Vie25 @57
== BKELDO25 @58
== BX3Vie25 @59
== BKELDO25 @60
== BX3Vie25 @61 
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
See("X3Reb")
Global("X3VieKorganToB","GLOBAL",0)~ THEN BKORGA25 X3VieKorgan1
@62
DO ~SetGlobal("X3VieKorganToB","GLOBAL",1)~
== BKORGA25 @63
== BX3Reb25 @64
== BKORGA25 @65
EXIT 


// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieNALIAToB","GLOBAL",0)~ THEN BNALIA25 X3VieNALIA1
@66
DO ~SetGlobal("X3VieNALIAToB","GLOBAL",1)~
== BX3Vie25 IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @67
== BX3Vie25 IF ~Kit("X3Vie",SHADOWDANCER)~ THEN @125
== BNALIA25 @68
== BX3Vie25 @69
== BNALIA25 @70
== BX3Vie25 @71
EXIT 



// Mazzy
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Vie")
See("Mazzy")
Global("X3VieMazzyToB","GLOBAL",0)~ THEN BX3Vie25 X3VieMazzy1
@72
DO ~SetGlobal("X3VieMazzyToB","GLOBAL",1)~
== BMAZZY25 @73
== BX3Vie25 @74
== BMAZZY25 @75
== BX3Vie25 @76
== BMAZZY25 @77
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Vie")
See("MINSC")
Global("X3VieMINSC","GLOBAL",0)~ THEN BX3Vie25 X3VieMINSC1
@78
DO ~SetGlobal("X3VieMINSC","GLOBAL",1)~
== BMINSC25 @79
== BX3Vie25 IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @80
== BX3Vie25 IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @126
== BMINSC25 @81
== BX3Vie25 IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @82
== BX3Vie25 IF ~Kit("X3Vie",SHADOWDANCER)~ THEN @127
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Vie")
See("Neera")
!Kit("X3Vie",SHADOWDANCER)
Global("X3VieNeeraToB","GLOBAL",0)~ THEN BX3Vie25 X3VieNEERA1
@83
DO ~SetGlobal("X3VieNeeraToB","GLOBAL",1)~
== BNEERA25 @84
== BX3Vie25 @85
== BNEERA25 @86
== BX3Vie25 @87
== BNEERA25 @88
== BX3Vie25 @89
== BNEERA25 @90
== BX3Vie25 @91
== BNEERA25 @92
EXIT 

// NeeraS
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Vie")
See("Neera")
Kit("X3Vie",SHADOWDANCER)
Global("X3VieNeeraToB","GLOBAL",0)~ THEN BX3Vie25 X3VieNEERA1
@128
DO ~SetGlobal("X3VieNeeraToB","GLOBAL",1)~
== BNEERA25 @129
== BX3Vie25 @130
== BNEERA25 @131
== BX3Vie25 @132
== BNEERA25 @133
== BX3Vie25 @134
== BNEERA25 @135
== BX3Vie25 @136
== BNEERA25 @137
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Vie")
See("RASAAD")
Global("X3VieRasaadToB","GLOBAL",0)~ THEN BX3Vie25 X3VieRasaad1
@93
DO ~SetGlobal("X3VieRasaadToB","GLOBAL",1)~
== BRASAA25 @94
== BX3Vie25 @95
== BRASAA25 @96
== BX3Vie25 @97
== BRASAA25 @98
== BX3Vie25 @99
== BRASAA25 @100
== BX3Vie25 @101
EXIT 

// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Vie")
See("SAREVOK")
Global("X3VieSAREVOKToB","GLOBAL",0)~ THEN BX3Vie25 X3VieSAREVOK1
@102
DO ~SetGlobal("X3VieSAREVOKToB","GLOBAL",1)~
== BSAREV25 @103
== BX3Vie25 @104
== BSAREV25 @105
== BX3Vie25 IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @106
== BX3Vie25 IF ~Kit("X3Vie",SHADOWDANCER)~ THEN @138
== BSAREV25 @107
== BX3Vie25 @108
EXIT 


// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("Valygar")
Global("X3VieValygarToB","GLOBAL",0)~ THEN BX3Vie25 X3VieValygar1
@109 
DO ~SetGlobal("X3VieValygarToB","GLOBAL",1)~
== BVALYG25 @110
== BX3Vie25 IF ~!Kit("X3Vie",SHADOWDANCER)~ THEN @111
== BX3Vie25 IF ~Kit("X3Vie",SHADOWDANCER)~ THEN @139
== BVALYG25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @112
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN @113
== BVALYG25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @114
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN @115
EXIT 

// Viconia
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Vie")
See("Viconia")
Global("X3VieViconiaToB","GLOBAL",0)~ THEN BX3Vie25 X3VieViconia1
@116 
DO ~SetGlobal("X3VieViconiaToB","GLOBAL",1)~
== BVICON25 @117
== BX3Vie25 @118
== BVICON25 @119
== BX3Vie25 @120
== BVICON25 @121
== BX3Vie25 @122
EXIT 
