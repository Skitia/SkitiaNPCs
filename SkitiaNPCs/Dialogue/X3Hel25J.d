/*Non-Essential Interjections*/ 

//Watcher's Keep 

I_C_T GORAPP1 16 X3HelGORAPP1-16
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @0
DO ~IncrementGlobal("X3HelApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 

I_C_T GORDEMO 12 X3HelDEMOGOR1
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1
END 

I_C_T GORSAL 2 X3HelGORSAL2 
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @2
END 

I_C_T GORCAR 15 X3HelGORCAR 
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ @3
END 

I_C_T GORCAMB 17 X3HelGorcamb17
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @4
END  

I_C_T GORCAMB 54 X3HelGorcamb54
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @5
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~ 
END  


EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Hel",LastTalkedToBy)~ EXTERN X3Hel25J Yackman
END

CHAIN X3Hel25J Yackman  
@6
EXTERN GORMAD1 10

I_C_T GORODR1 11 X3HelGORODR1-11
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @7
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @8
END 

I_C_T GORODR1 35 X3HELGORODR1-35
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @9
END 

//Pre-Saradush 

I_C_T SAREV25A 0 X3HelSAREV25A
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ THEN @10
END

//Saradush 

I_C_T SARKIS01 36 X3HelSARKIS01-36
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @11
END


I_C_T SARDW01 2 X3HelSARDW01-2
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @12
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END

I_C_T SARBUL06 6 X3HelSARBUL06-6
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @13
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ 
END

I_C_T SARBHA01 1 X3HelSARBHA01-1
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @14
END

I_C_T SARMEL01 43 X3HelSARMEL01-43
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @15
END


EXTEND_TOP SARVOLO 9 #2
+ ~IsValidForPartyDialogue("X3Hel")~ + @16 + X3HelVoloBio1
END

CHAIN SARVOLO X3HelVoloBio1
@17
EXTERN X3Hel25J X3HelVoloBio

CHAIN X3Hel25J X3HelVoloBio
@18
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGNYA01 29 X3HelHGNYA01-29
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @19
END

// Amkethran and Beyond 

I_C_T BALTH 6 X3HelBalth6
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @20
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @21
END

I_C_T AMMAYOR 5 X3HelAMMAYOR-5
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @22
END

I_C_T AMMONK02 3 X3HelAMMONK02-3
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @23
END

I_C_T AMCLER01 7 X3HelAMCLER01-7
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @24
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
== AMCLER01 @25
END 

I_C_T AMCLER01 8 X3HelAMCLER01-8
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @24
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @26
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@519)~ 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")~ THEN @27
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~ 
== AMCLER01 @25
END 

I_C_T2 AMARCH02 5 X3HelAMARCH02-5
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @28
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ 
END 

I_C_T AMSMITH 16 X3HelAMSMITH-16
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @29
END 

I_C_T BAZEYE01 12 X3HelBAZEYE12
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @30
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @31
END 

I_C_T BAZDRA03 6 X3HelBAZDRA03
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN @32
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ 
== BAZDRA03 @33
END 

I_C_T BAZDRA03 14 X3HelBAZDRA03-14
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN @34
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ 
== BAZDRA03 @35
END 

I_C_T SENGUA03 4 X3HelSENGUA03-4
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN @36
END

// Solar, final interjection at the Throne of Bhaal

I_C_T FINSOL01 27 X3HelSolarFriend1
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @37
END

//Talks
// 1, general comment about things after they left Suldanessellar. 
CHAIN IF ~Global("X3HelToBTalk","LOCALS",2)~ THEN X3Hel25J Talk1
@38
DO ~IncrementGlobal("X3HelToBTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @39 + 1.1 
++ @40 + 1.2 
++ @41 + 1.3 
++ @42 + 1.X

CHAIN X3Hel25J 1.1
@43
== X3Hel25J @44
EXTERN X3Hel25J 1.5 

CHAIN X3Hel25J 1.2 
@45
= @46 
EXTERN X3Hel25J 1.4 

CHAIN X3Hel25J 1.3 
@47
EXTERN X3Hel25J 1.4 

CHAIN X3Hel25J 1.X 
@48
EXIT 

CHAIN X3Hel25J 1.4
@49
END 
++ @50 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~  + 1.5 
++ @51 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 1.6 
++ @52 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + 1.7

CHAIN X3Hel25J 1.5
@53
= @54
END 
++ @55 + 1.8
++ @56 + 1.9
++ @57 + 1.10

CHAIN X3Hel25J 1.6 
@58
== X3Hel25J @59
END 
++ @55 + 1.8
++ @56 + 1.9
++ @57 + 1.10

CHAIN X3Hel25J 1.7
@60
= @61
END 
++ @55 + 1.8
++ @56 + 1.9
++ @57 + 1.10

CHAIN X3Hel25J 1.8
@62
EXIT 

CHAIN X3Hel25J 1.9
@63
EXIT 

CHAIN X3Hel25J 1.10 
@64
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @65
== X3Hel25J @66
EXIT 

CHAIN IF ~Global("X3HelToBQuest","GLOBAL",2)~ THEN X3Hel25J Talk2 
@67
DO ~SetGlobal("X3HelToBQuest","GLOBAL",3)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @68 + 2.1 
++ @69 + 2.1 
++ @70 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 2.2 

CHAIN X3Hel25J 2.1 
@71
== X3Hel25J @72
END 
++ @73 + 2.3
++ @74 + 2.4
++ @75 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + 2.45


CHAIN X3Hel25J 2.2 
@76
EXTERN X3Hel25J 2.1 

CHAIN X3Hel25J 2.3
@77
EXTERN X3Hel25J 2.4

CHAIN X3Hel25J 2.4 
@78
= @79
END 
++ @80 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 2.5
++ @81 + 2.5
+~InParty("X3Vie")~+ @82 + 2.6
+~InParty("X3Reb")~+ @83 + 2.7

CHAIN X3Hel25J 2.5
@84
END 
IF ~InParty("X3Vie")~ EXTERN X3Hel25J 2.6 
IF ~!InParty("X3Vie")InParty("X3Reb")~ EXTERN X3Hel25J 2.7
IF ~!InParty("X3Reb")!InParty("X3Vie")~ EXTERN X3Hel25J 2.8

CHAIN X3Hel25J 2.6
@85
END 
IF ~InParty("X3Reb")~ EXTERN X3Hel25J 2.7
IF ~!InParty("X3Reb")~ EXTERN X3Hel25J 2.8

CHAIN X3Hel25J 2.7
@86
EXTERN X3Hel25J 2.8

CHAIN X3Hel25J 2.45
@87
EXTERN X3Hel25J 2.4

CHAIN X3Hel25J 2.8
@88
DO ~AddJournalEntry(@20013,QUEST)~ // It helps if Vienxay and Recorder are in the party for this quest. Vienxay will mention what is needed, Recorder will mention the possible scrier with information on where it is.
EXIT 

CHAIN IF ~Global("X3HelToBTalk","LOCALS",4)~ THEN X3Hel25J Talk3
@89
DO ~IncrementGlobal("X3HelToBTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @90  + 3.1 
++ @91 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 3.2 
++ @92 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 3.3 
++ @93 + 3.X

CHAIN X3Hel25J 3.1
@94
EXTERN X3Hel25J 3.4

CHAIN X3Hel25J 3.2 
@95
EXTERN X3Hel25J 3.4

CHAIN X3Hel25J 3.3 
@96
EXTERN X3Hel25J 3.4

CHAIN X3Hel25J 3.X 
@97
EXIT 

CHAIN X3Hel25J 3.4
@98
== X3Hel25J @99
END 
++ @100 + 3.5 
++ @101 + 3.6 
++ @102 + 3.7

CHAIN X3Hel25J 3.5
@103
EXTERN X3Hel25J 3.8

CHAIN X3Hel25J 3.6
@104
EXTERN X3Hel25J 3.8

CHAIN X3Hel25J 3.7
@105
EXTERN X3Hel25J 3.8

CHAIN X3Hel25J 3.8
@106
END 
++ @107 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 3.10
++ @108 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + 3.9
++ @109 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 3.11

CHAIN X3Hel25J 3.9
@110
EXTERN X3Hel25J 3.12 

CHAIN X3Hel25J 3.10
@111
EXTERN X3Hel25J 3.12 

CHAIN X3Hel25J 3.11 
@112
END 
++ @113 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 3.13 
++ @114 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 3.14
++ @115 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 3.14

CHAIN X3Hel25J 3.12 
@116
EXIT 

CHAIN X3Hel25J 3.13
@117
EXTERN X3Hel25J 3.12 

CHAIN X3Hel25J 3.14 
@118
EXTERN X3Hel25J 3.12

//Friendship Talk #4
CHAIN IF ~Global("X3HelToBTalk","LOCALS",6)~ THEN X3Hel25J Talk4
@119
DO ~IncrementGlobal("X3HelToBTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ @120 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 4.1 
++ @121 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 4.2 
++ @122 + 4.3
++ @123 DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + 4.X 

CHAIN X3Hel25J 4.X 
@124
EXIT 

CHAIN X3Hel25J 4.1 
@125
EXTERN X3Hel25J 4.3

CHAIN X3Hel25J 4.2 
@126
EXTERN X3Hel25J 4.3

CHAIN X3Hel25J 4.3 
@127
END 
++ @128 + 4.5
++ @129 + 4.6
++ @130 + 4.X 

CHAIN X3Hel25J 4.5 
@131
END 
++ @132 + 4.7
++ @133 + 4.8 
++ @134 + 4.9

CHAIN X3Hel25J 4.7
@135
EXTERN X3Hel25J 4.10 


CHAIN X3Hel25J 4.10
@136
EXIT 

CHAIN X3Hel25J 4.6
@137
EXTERN X3Hel25J 4.5

CHAIN X3Hel25J 4.8 
@138
= @139
EXIT 

CHAIN X3Hel25J 4.9
@140
EXTERN X3Hel25J 4.10

//Engagement Ring Rejection
CHAIN IF ~Global("X3Engagement","LOCALS",1)~ THEN X3Hel25J engagement_auto_fail 
@141
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @142 + eaf.1 
++ @143 + eaf.2
++ @144 + eaf.4

CHAIN X3Hel25J eaf.1 
@145
EXTERN X3Hel25J eaf.3 

CHAIN X3Hel25J eaf.2 
@146
EXTERN X3Hel25J eaf.3

CHAIN X3Hel25J eaf.4 
@147
EXTERN X3Hel25J eaf.3

CHAIN X3Hel25J eaf.3
@148
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN @149
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN @150
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @151
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN @152
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

// 5 is a PID, and is the player telling Helga the results of the sight, either that her son died (Truth) or that he still lives (Alive).

APPEND X3Hel25J


// Break Approval
IF ~Global("X3Break","LOCALS",1)~ Break
SAY @153 
= @154
++ @155 + Break.1 
++ @156 + Break.2 
++ @157 + Break.8
END 

IF ~~ Break.1
SAY @158
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @159 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY @160
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY @161
++ @162 + Break.4
++ @163 + Break.5
++ @164 + Break.6 
END 

IF ~~ Break.4 
SAY @165
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY @166
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY @167
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3HelApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@216)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @168
= @169
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Scry 
SAY @170
++ @171 + Scry.1 
++ @172 + Scry.2
END 

IF ~~ Scry.1
SAY @173
= @174
++ @175 DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ + Scry.3 
++ @176 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + Scry.4 
++ @177 DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~ + Scry.5
END 

IF ~~ Scry.2
SAY @178
= @179
++ @180 DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ + Scry.6
++ @181 DO ~IncrementGlobal("X3HelApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@209)~ + Scry.7
++ @182 DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~ + Scry.8
END 

IF ~~ Scry.3 
SAY @183
IF ~~ DO ~AddJournalEntry(@20022,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddexperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.4 
SAY @184
IF ~~ DO ~AddJournalEntry(@20022,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)AddexperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.5 
SAY @185
IF ~~ + Scry.2 
END 

IF ~~ Scry.6
SAY @186
IF ~~ + Scry.9
END 

IF ~~ Scry.7
SAY @187
IF ~~ DO ~AddJournalEntry(@20021,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",6)AddexperienceParty(6000)~ EXIT 
END 

IF ~~ Scry.8
SAY @188
IF ~~ + Scry.9
END 

IF ~~ Scry.9
SAY @189
IF ~~ DO ~AddJournalEntry(@20021,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",6)AddexperienceParty(6000)~ EXIT 
END  



// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  @190
+~Global("X3HelToBQuest","GLOBAL",4)~+ @191 + Scry
++ @192 + Question.PID 
++ @193 DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ @248 + FixString
++ @194 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  @195
+~Global("X3HelToBQuest","GLOBAL",4)~+ @191 + Scry
++ @192 + Question.PID 
++ @193 DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ @248 + FixString
++ @194 EXIT 
END  

 
IF ~~ Question.PID
SAY @196
+~Global("X3PIDCON1","LOCALS",0)~+ @197 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON2","LOCALS",0)~+ @198 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith 
+~Global("X3PIDCON3","LOCALS",0)~+ @199 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ @200 EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY @201
+~Global("X3PIDCON1","LOCALS",0)~+ @197 DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON2","LOCALS",0)~+ @198 DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ @199 DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ @202 EXIT 
END 

IF ~~ PID.Home 
SAY @203
= @204
= @205
++ @206 + PHome.1 
++ @207 + PHome.2
++ @208 + PHome.3 
END 

IF ~~ PHome.1 
SAY @209
= @210
= @211
++ @212 + PHome.4
++ @207 + PHome.2
++ @208 + PHome.3 
END 

IF ~~ PHome.2 
SAY @213
= @214
++ @208 + PHome.3
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PHome.3 
SAY @217
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PHome.4
SAY @218
++ @207 + PHome.2 
++ @208 + PHome.3
++ @215 + MoreQuestion.PID 
END 

IF ~~ PID.Faith 
SAY @219
= @220
= @221
= @222
++ @223 + PFaith.1
++ @224 + PFaith.2
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PFaith.1 
SAY @225
= @226
++ @224 + PFaith.2
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PFaith.2 
SAY @227
= @228
= @229
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PID.Age 
SAY @230
++ @231 + PID.Age1
++ @232  + PID.Age1
++ @233  + PID.Age1
++ @234 + MoreQuestion.PID 
END 

IF ~~ PID.Age1
SAY @235
++ @236 + PAge.1 
++ @237 + PAge.2 
++ @238 + PAge.2 
END 

IF ~~ PAge.1 
SAY @239
++ @240 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + PAge.3
++ @241 + PAge.4
++ @242 DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~ + PAge.5
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PAge.2 
SAY @243
++ @240 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + PAge.3
++ @241 + PAge.4
++ @242 DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~ + PAge.5
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PAge.3
SAY @244
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PAge.4 
SAY @245
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ PAge.5 
SAY @246
++ @215 + MoreQuestion.PID 
++ @216 EXIT 
END 

IF ~~ ForceRestTalk
SAY @247
IF ~~ EXIT 
END 

IF ~~ FixString 
SAY @249
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3HReset")~ EXIT 
END 

END 