/* Note: START.d initiates the Five's NPC dialogues, but no one else's. */


BEGIN X3ECath 

//This very specific version of Emily's Post Party, presumably being removed for Imoen.
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",0)AreaCheck("AR1512")InParty("IMOEN2")~ THEN X3EmiP ImoenDepart
@0
END 
++ @1 DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",531,622,SW)~ EXIT 
++ @2 DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3EmiVampire","GLOBAL",2)~ THEN X3EmiP VampireSave 
@3
DO ~TakePartyItem("X3EBody")DestroyItem("X3EBody")~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ @4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ @5
DO ~SetGlobal("X3EmiVampire","GLOBAL",3)~
END 
++ @6 + VS.6 
++ @7 + VS.1
++ @8 + VS.2

CHAIN X3EmiP VS.1 
@9
= @10
END 
++ @11 + VS.7
++ @12 + VS.4 
++ @13 + VS.3

CHAIN X3EmiP VS.7
@14
EXTERN X3EmiP VS.3

CHAIN X3EmiP VS.3 
@15
END 
IF ~~ DO ~JoinParty()SetGlobal("X3EmiKickedOut","LOCALS",0)~ SOLVED_JOURNAL @10032
EXIT 

CHAIN X3EmiP VS.4 
@16
EXTERN X3EmiP VS.3

CHAIN X3EmiP VS.2 
@17
EXTERN X3EmiP VS.1 



CHAIN X3EmiP VS.6 
@18
EXTERN X3EmiP VS.1

CHAIN IF ~Global("X3EmiMet","GLOBAL",0)~ THEN X3Emi meeta
@19
EXTERN X3ECath meetb
 
CHAIN IF ~Global("X3EmiMet","GLOBAL",0)~ THEN X3ECath meetb
@20 
DO ~SetGlobal("X3EmiMet","GLOBAL",1)~
EXTERN X3Emi meetc

CHAIN X3Emi meetc
@21
END 
	++ @22 DO ~SetGlobal("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m1
	++ @23 EXTERN X3Emi m2
	++ @24 EXTERN X3ECath m0 
	
CHAIN X3Emi m1
@25
END
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ m1.1 
IF ~IsValidForPartyDialogue("X3Kale")Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2a 
IF ~IsValidForPartyDialogue("X3Kale")!Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2b
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Kale")!IsValidForPartyDialogue("X3Reb")~ EXTERN X3Emi m3 

CHAIN X3VieJ m1.1 
@26 
== X3Emi IF ~Global("X3ViePartyBG1","GLOBAL",1)~ THEN @27
== X3Emi IF ~!Global("X3ViePartyBG1","GLOBAL",1)~ THEN @28
END
IF ~IsValidForPartyDialogue("X3Kale")Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2a 
IF ~IsValidForPartyDialogue("X3Kale")!Global("X3KalePartyBG1","GLOBAL",1)~ EXTERN X3KalJ m1.2b
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Kale")~ EXTERN X3Emi m3 

CHAIN X3KalJ m1.2a 
@29 
EXTERN X3ECath m1.25 

CHAIN X3KalJ m1.2b
@30 
EXTERN X3ECath m1.25 

CHAIN X3ECath m1.25
@31
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3Emi m3 

CHAIN X3RebJ m1.3a 
@32
EXTERN X3Emi m1.3c 

CHAIN X3RebJ m1.3b 
@33
EXTERN X3Emi m1.3c 

CHAIN X3Emi m1.3c 
@34
EXTERN X3Emi m3

CHAIN X3Emi m2 
@35
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3a
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m1.3b
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3Emi m3 

CHAIN X3Emi m3
@36
END 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ @37 + m4a 
+~!Global("X3EmiPartyBG1","GLOBAL",1)~+ @38 + m4b 
++ @39 + m5 
++ @40 +m6

CHAIN X3ECath m0
@41 
== X3Emi @42
EXIT  

CHAIN X3Emi m4a 
@43
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b 

CHAIN X3Emi m4b 
@44
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b

CHAIN X3Emi m5 
@45
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b

CHAIN X3Emi m6 
@46
END
IF ~ReputationGT(Player1,7)~ EXTERN X3ECath m7a
IF ~ReputationLT(Player1,8)~ EXTERN X3ECath m7b

CHAIN X3ECath m7a 
@47
== X3Emi @48
END 
++ @49 EXTERN X3ECath m8 
++ @50 EXTERN X3ECath m12  
++ @51 EXTERN X3ECath m10 

CHAIN X3ECath m7b 
@52
== X3Emi @53
EXIT 

CHAIN X3Emi m9
@54
END 
++ @55 EXTERN X3ECath m12 
++ @56 EXTERN X3ECath m12 
++ @57 EXTERN X3ECath m10 

CHAIN X3ECath m10 
@58
== X3Emi @59
EXIT 

CHAIN X3ECath m8 
@60
== X3ECath @61
== X3Emi @62
== X3ECath @63
END 
+~Global("X3EmiPartyBG1","GLOBAL",1)~+ @64 + m11 
+~!Global("X3EmiPartyBG1","GLOBAL",1)~+ @65 EXTERN X3Emi m9
++ @66 + m12 
++ @67 + m12 
++ @68 + m10 

CHAIN X3ECath m11 
@69
== X3Emi @70
== X3ECath @71
END 
++ @72 DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)~ + m12 
++ @73 + m12 
++ @74 + m10 

CHAIN X3ECath m12 
@75
DO ~EscapeArea()~
== X3Emi @76
END 
IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3HelJ m12.1
IF ~IsValidForPartyDialogue("X3Hel")!Global("X3HelPartyBG1","GLOBAL",1)!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m13
IF ~IsValidForPartyDialogue("X3Hel")!Global("X3HelPartyBG1","GLOBAL",1)Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m14  
IF ~!IsValidForPartyDialogue("X3Hel")Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m13 
IF ~!IsValidForPartyDialogue("X3Hel")!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m14 

CHAIN X3HelJ m12.1
@77 
== X3Emi @78
END 
IF ~Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m13 
IF ~!Global("X3EmiPartyBG1","GLOBAL",1)~ EXTERN X3Emi m14

CHAIN X3Emi m13
@79
DO ~JoinParty()~
EXIT 

CHAIN X3Emi m14 
@80
END
++ @81 + m15 
++ @82 + m16 
++ @83 + m17 

CHAIN X3Emi m15 
@84
DO ~JoinParty()~
EXIT 

CHAIN X3Emi m16 
@85
DO ~JoinParty()~
EXIT 

CHAIN X3Emi m17 
@86
DO ~JoinParty()~
EXIT 

CHAIN IF ~Global("X3EmiMet","GLOBAL",1)~ THEN X3Emi remeetb
@87
== X3ECath @88
END
+~ReputationGT(Player1,7)~+ @89 EXTERN X3ECath m7a 
+~ReputationLT(Player1,8)~+ @89 EXTERN X3Emi r1
++ @90 EXIT 
++ @91 EXIT 

CHAIN IF ~Global("X3EmiMet","GLOBAL",1)~ THEN X3ECath remeeta
@92
== X3Emi @93
END 
+~ReputationGT(Player1,7)~+ @89 EXTERN X3ECath m7a 
+~ReputationLT(Player1,8)~+ @89 EXTERN X3Emi r1
++ @90 EXIT 
++ @91 EXIT 

CHAIN X3Emi r1 
@94
== X3Emi @95
== X3ECath @96
EXIT  

// Quest - Good End 
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",1)Global("X3EmiHeir","GLOBAL",1)!Global("X3EmiQuest","GLOBAL",10)~ THEN X3EmiP quest_good_end // And Quest Global to X Parameter. 
@97
DO ~SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",10)~
END 
++ @98 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + good_do_it
++ @99 + good_rejoin 
++ @100 + good_more_time 

CHAIN X3EmiP good_more_time 
@101
EXIT 

CHAIN X3EmiP good_rejoin 
@102
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN X3EmiP good_do_it 
@103
END 
++ @104 + rj1
++ @105 + rj2

// Quest - Bad End 
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",1)Global("X3EmiHeir","GLOBAL",-1)!Global("X3EmiQuest","GLOBAL",10)~ THEN X3Emip quest_bad_end // And Quest Global to X Parameter. 
@106
DO ~SetGlobal("X3EmiQuest","GLOBAL",10)SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
++ @107 + bad_fail 
++ @108 + bad_prerejoin 
++ @109 + bad_depressed


CHAIN X3EmiP bad_depressed
@110
EXTERN X3EmiP bad_deserve 

CHAIN X3EmiP bad_deserve 
@111
END 
++ @112 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + not_your_fault 
++ @113 + bad_rejoin
++ @114 + bad_sorry
++ @115 + bad_yourself


CHAIN X3EmiP not_your_fault 
@116
END 
++ @113 + bad_rejoin
++ @117 + bad_sorry
++ @115 + bad_yourself


CHAIN X3EmiP bad_rejoin 
@118
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN X3EmiP bad_sorry 
@119
== X3EmiP @120
END
++ @104 + rj1
++ @105 + rj2

CHAIN X3EmiP bad_yourself 
@121
EXIT 

CHAIN X3EmiP bad_fail 
@122
EXTERN X3EmiP bad_deserve 

CHAIN X3EmiP bad_prerejoin 
@123
EXTERN X3EmiP bad_deserve 

// Normal.
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
!Global("X3EmiRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP p1
@124
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @125 + p2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @125 + p2b 
++ @126 + p3

CHAIN X3EmiP p2a 
@127
== X3EmiP @128
END 
+~!IsValidForPartyDialogue("X3Reb")~+ @129 DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
+~IsValidForPartyDialogue("X3Reb")~+ @129 EXTERN X3RebJ p2c
++ @130 + p2d 
++ @131 + p2e

CHAIN X3EmiP p2b 
@132
END
++ @133 DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
++ @134 + p2e

CHAIN X3RebJ p2c 
@135
== X3EmiP @136  
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3EmiP p2d 
@137
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0406",1670,1745,W))~ EXIT

CHAIN X3EmiP p2e
@138
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)~ EXIT 

CHAIN X3EmiP p3 
@139
DO ~JoinParty()~ EXIT 

// Underdark 
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
!Global("X3EmiRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP u1
@140
DO ~SetGlobal("X3EmiAppChange","GLOBAL",5)~
END 
++ @141 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + u2 
++ @142 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + u3 
++ @143 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-4)~ + u3 
++ @144 + p3 

CHAIN X3EmiP u2 
@145
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)~
EXIT 

CHAIN X3EmiP u3 
@146
END 
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ u5 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3EmiP u6 


CHAIN X3RebJ u5 
@147
END
++ @148 + u7 
+~GlobalGT("X3RebApp","GLOBALS",44)~+ @149 + u8
+~GlobalLT("X3RebApp","GLOBALS",45)~+ @149 + u9
++ @150 EXTERN X3EmiP p3

CHAIN X3RebJ u7
@151
DO ~LeaveParty()SetGlobal("X3EmiKickedOut","LOCALS",1)SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0319",516,330,S)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))IncrementGlobal("X3EmiApp","GLOBALS",-6)~ EXIT

CHAIN X3RebJ u8 
@152
== X3EmiP @153
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))IncrementGlobal("X3EmiApp","GLOBALS",-9)~ EXIT 

CHAIN X3RebJ u9 
@154
END 
++ @155 + u7 
++ @150 EXTERN X3EmiP p3

CHAIN X3EmiP u6
@156
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",531,622,SW)IncrementGlobal("X3EmiApp","GLOBALS",-9)~ EXIT

// Romance
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
Global("X3EmiRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP rp1
@157
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @158 + rp2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @158 + rp2b 
++ @159 DO ~SetGlobal("X3EmiAppChange","GLOBAL",2)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + rp2c 
++ @160 + rp3

CHAIN X3EmiP rp2a 
@161
END 
++ @162 DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
++ @163 + rp4
++ @131 + rp5

CHAIN X3EmiP rp2b 
@164
END
++ @165 DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT
++ @166 + rp5

CHAIN X3EmiP rp2c 
@167
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT


CHAIN X3EmiP rp4 
@168
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0406",1670,1745,W))~ EXIT

CHAIN X3EmiP rp5
@169
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)~ EXIT 

CHAIN X3EmiP rp3 
@170
DO ~JoinParty()~ EXIT 

// Underdark Romance
CHAIN IF 
~Global("X3EmiKickedOut","LOCALS",0)
Global("X3EmiRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3EmiP ru1
@171
END 
++ @141 + ru2 
++ @172 + ru3 
++ @143 DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)SetGlobal("X3EmiAppChange","GLOBAL",2)~ + ru4
++ @173 + rp3a 

CHAIN X3EmiP ru2 
@174
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)~
EXIT 

CHAIN X3EmiP ru3 
@175
== X3EmiP @176
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5
IF ~!IsValidForPartyDialogue("X3Reb")~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3EmiP ru4 
@177
== X3EmiP @178
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5
IF ~!IsValidForPartyDialogue("X3Reb")~ DO ~SetGlobal("X3EmiKickedOut","LOCALS",0)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3RebJ ru5
@147
END
++ @148 + ru7 
+~GlobalGT("X3RebApp","GLOBALS",44)Global("X3EmiRomanceActive","GLOBAL",2)~+ @149 + ru8.1
+~GlobalGT("X3RebApp","GLOBALS",44)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @149 + u8 
+~GlobalLT("X3RebApp","GLOBALS",45)~+ @149 + ru9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @150 EXTERN X3EmiP rp3a
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @150 EXTERN X3EmiP rp3b

CHAIN X3RebJ ru7
@151
DO ~LeaveParty()SetGlobal("X3EmiKickedOut","LOCALS",1)SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0319",516,330,S)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT

CHAIN X3RebJ ru8.1 
@152
== X3EmiP @179
DO ~SetGlobal("X3EmiKickedOut","LOCALS",1)ActionOverride("X3Emi",EscapeAreaMove("AR0704",531,622,SW))~ EXIT 

CHAIN X3RebJ ru9 
@154
END 
++ @155 + ru7 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @150 EXTERN X3EmiP rp3a
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @180 EXTERN X3EmiP rp3b

CHAIN x3EmiP rp3a 
@181 
DO ~JoinParty()~ EXIT 

CHAIN x3EmiP rp3b 
@182 
DO ~JoinParty()~ EXIT 

CHAIN IF ~Global("X3EmiDornConflict","LOCALS",2)InPartyAllowDead("DORN")~ THEN X3EmiP Dorn_No 
@183
EXIT 

CHAIN IF ~Global("X3EmiHexxatConflict","LOCALS",2)InPartyAllowDead("Hexxat")~ THEN X3EmiP Hexxat_No 
@184
EXIT 

// Must be in THIS order
CHAIN IF ~ReputationGT(Player1,7)Global("X3EmiKickedOut","LOCALS",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3EmiP rj
@185
END 
++ @186 + rj1
++ @187 + rj2

// Romance is a lot more forgiving with reputation, though she still won't join a 1 point party.
CHAIN IF ~Global("X3EmiKickedOut","LOCALS",1)ReputationGT(Player1,1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3EmiP rr
@188
END 
	++ @189 + rj3
	++ @187 + rj2


CHAIN X3EmiP rj1
@190
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3EmiP rj2
@191
EXIT


CHAIN X3EmiP rj3
@192
DO ~SetGlobal("X3EmiKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN IF ~GlobalLT("X3EmiApp","GLOBAL",-89)~ THEN X3EmiP nothinga
@193 EXIT 

CHAIN IF ~ReputationLT(Player1,8)~ THEN X3EmiP nothingb
@194
EXIT 