//Emily 1
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Emi")
See("WILSON")
Global("X3EmiWILSON","GLOBAL",0)~ THEN BX3Emi X3EmiWilson1
@0
DO ~SetGlobal("X3EmiWILSON","GLOBAL",1)~
== BWILSON @1
== BX3Emi @2
== BWILSON @3
== BX3Emi @4 
== BWILSON @5
== BX3Emi @6
== BWILSON @7
== BX3Emi @8
EXIT 

//Emily 2
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Emi")
See("WILSON")
Global("X3EmiWILSON","GLOBAL",1)~ THEN BX3Emi X3EmiWilson2
@9
DO ~SetGlobal("X3EmiWILSON","GLOBAL",2)~
== BWILSON @10
== BX3Emi @11
== BWILSON @12
== BX3Reb IF ~IsValidForPartyDialogue("X3Reb")~ THEN @13
== BX3Emi IF ~IsValidForPartyDialogue("X3Reb")~ THEN @14
== BX3Emi @15
== BWILSON @16
== BX3Emi @17
== BWILSON @18
== BX3Emi @19
EXIT 

//Emily ToB
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiWILSON25","LOCALS",0)~ THEN BWILSO25 X3EmiWilson2
@20
DO ~SetGlobal("X3EmiWILSON25","LOCALS",1)~
== BX3Emi25 @21
== BWILSO25 @22
== BX3Emi25 @23
== BWILSO25 @24
== BX3Emi25 @25
== BWILSO25 @26
== BX3Emi25 @27
EXIT 

//Helga 1
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Hel")
See("WILSON")
Global("X3HelWILSON","GLOBAL",0)~ THEN BX3Hel X3HelWilson1
@28
DO ~SetGlobal("X3HelWILSON","GLOBAL",1)~
== BWILSON @29
== BX3Hel @30
== BWILSON @31
== BX3Hel @32
== BWILSON @33
== BX3Hel @34
== BWILSON @35
EXIT 

//Helga 2
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelWILSON","GLOBAL",1)~ THEN BWILSON X3HelWilson2
@36
DO ~SetGlobal("X3HelWILSON","GLOBAL",2)~
== BX3Hel @37
== BWILSON @38
== BX3Hel @39
== BWILSON @40
== BX3Hel @41
EXIT 

//Helga ToB
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Hel")
See("WILSON")
Global("X3HelWILSON25","LOCALS",0)~ THEN BX3Hel25 X3HelWilson2
@42
DO ~SetGlobal("X3HelWILSON25","LOCALS",1)~
== BWILSO25 @43
== BX3Hel25 @44
== BWILSO25 @45
== BX3Hel25 @46
EXIT 

//Isaac 1
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Isa")
See("WILSON")
Global("X3IsaWILSON","GLOBAL",0)~ THEN BX3Isa X3IsaWilson1
@47
DO ~SetGlobal("X3IsaWILSON","GLOBAL",1)~
== BWILSON @48
== BX3Isa @49
== BWILSON @50
== BX3Isa @51
== BWILSON @52
== BX3Isa @53
== BWILSON @54
EXIT 

//Isaac 2
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Isa")
See("WILSON")
Global("X3IsaWILSON","GLOBAL",1)~ THEN BX3Isa X3IsaWilson2
@55
DO ~SetGlobal("X3IsaWILSON","GLOBAL",2)~
== BWILSON @56
== BX3Isa @57
== BWILSON @58
== BX3Isa @59
== BWILSON @60
== BX3Isa @61
== BWILSON @62
== BX3Isa @63
EXIT 

//Isaac ToB
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Isa")
See("WILSON")
Global("X3IsaWILSON25","LOCALS",0)~ THEN BX3ISA25 X3IsaWilson2
@64
DO ~SetGlobal("X3IsaWILSON25","LOCALS",1)~
== BWILSO25 @65
== BX3Isa25 @66
== BWILSO25 @67
== BX3Isa25 @68
== BWILSO25 @69
EXIT 

//Kale 1
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Kal")
See("WILSON")
Global("X3KalWILSON","GLOBAL",0)~ THEN BX3Kal X3KalWilson1
@70
DO ~SetGlobal("X3KalWILSON","GLOBAL",1)~
== BWILSON @71
== BX3Kal @72
== BWILSON @73
== BX3Kal @74
== BWILSON @75
== BX3Kal @76
== BWILSON @77
== BX3Kal @78
EXIT 

//Kale 2
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Kal")
See("WILSON")
Global("X3KalWILSON","GLOBAL",1)~ THEN BX3Kal X3KalWilson2
@79
DO ~SetGlobal("X3KalWILSON","GLOBAL",2)~
== BWILSON @80
== BX3Kal @81
== BWILSON @82
== BX3Kal @83
== BWILSON @84
EXIT 

//Kale ToB
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Kal")
See("WILSON")
Global("X3KalWILSON25","LOCALS",0)~ THEN BX3Kal25 X3KalWilson2
@85
DO ~SetGlobal("X3KalWILSON25","LOCALS",1)~
== BX3Vie25 IF ~IsValidForPartyDialogue("X3Vie")~ THEN @86
== BX3Reb25 IF ~IsValidForPartyDialogue("X3Reb")~ THEN @87
== BX3Emi25 IF ~IsValidForPartyDialogue("X3Emi")~ THEN @88
== BX3Hel25 IF ~IsValidForPartyDialogue("X3Hel")~ THEN @89
== BX3Isa25 IF ~IsValidForPartyDialogue("X3Isa")~ THEN @90
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN @91
== BX3Kal25 IF ~OR(6)IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Isa")IsValidForPartyDialogue("MAZZY")~ @92
== BWILSO25 @93
== BX3Kal25 @94
== BWILSO25 @95
== BX3Kal25 @96
== BWILSO25 @97
== BX3Kal25 @98
EXIT 


//Recorder 1
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebWILSON","GLOBAL",0)~ THEN BWILSON X3RebWilson1
@99
DO ~SetGlobal("X3RebWILSON","GLOBAL",1)~
== BX3Reb @100
== BWILSON @101
== BX3Reb @102
== BWILSON @103
== BX3Reb @104
== BWILSON @105
== BX3Reb @106
EXIT 

//Recorder 2
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Reb")
See("WILSON")
Global("X3RebWILSON","GLOBAL",1)~ THEN BX3Reb X3RebWilson2
@107
DO ~SetGlobal("X3RebWILSON","GLOBAL",2)~
== BWILSON @108
== BX3Reb @109
== BWILSON @110
== BX3Reb @111
== BWILSON @112
== BX3Reb @113
EXIT 

//Recorder ToB
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Reb")
See("WILSON")
Global("X3RebWILSON25","LOCALS",0)~ THEN BX3Reb25 X3RebWilson2
@114
DO ~SetGlobal("X3RebWILSON25","LOCALS",1)~
== BWILSO25 @115
== BX3Reb25 @116
== BWILSO25 @117
== BX3Reb25 @118
== BWILSO25 @119
== BX3Reb25 @120
== BWILSO25 @121
== BX3Reb25 @122
== BWILSO25 @123
== BX3Reb25 @124
EXIT 

//Vienxay 1
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieWILSON","GLOBAL",0)~ THEN BWILSON X3VieWilson1
@125
DO ~SetGlobal("X3VieWILSON","GLOBAL",1)~
== BX3Vie @126
== BWILSON @127
== BX3Vie @128
== BWILSON @129
== BX3Vie @130
== BWILSON @131
== BX3Vie @132
EXIT 

//Vienxay 2
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Vie")
See("WILSON")
Global("X3VieWILSON","GLOBAL",1)~ THEN BX3Vie X3VieWilson2
@133
DO ~SetGlobal("X3VieWILSON","GLOBAL",2)~
== BWILSON @134
== BX3Vie @135
== BWILSON @136
== BX3Vie @137
== BWILSON @138
== BX3Vie @139
== BWILSON @140
EXIT 

//Vienxay ToB
CHAIN
IF ~IsValidForPartyDialogue("WILSON")
IsValidForPartyDialogue("X3Vie")
See("WILSON")
Global("X3VieWILSON25","LOCALS",0)~ THEN BX3Vie25 X3VieWilson2
@141
DO ~SetGlobal("X3VieWILSON25","LOCALS",1)~
== BX3Hel25 IF ~IsValidForPartyDialogue("X3Hel")~ THEN @142
== BX3Vie25 IF ~IsValidForPartyDialogue("X3Hel")~ THEN @143
== BWILSO25 @144
== BX3Vie25 @145
== BWILSO25 @146
== BX3Vie25 @147
== BWILSO25 @148
== BX3Vie25 @149
== BWILSO25 @150
== BX3Vie25 @151
== BWILSO25 @152
EXIT 