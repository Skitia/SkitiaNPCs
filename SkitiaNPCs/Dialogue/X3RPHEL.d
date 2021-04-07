BEGIN X3RKID 
BEGIN X3RM
BEGIN X3RPHEL
BEGIN X3RPIR4

CHAIN IF ~OR(2)!IsValidForPartyDialogue("X3Reb")GlobalGT("X3RMSpell","GLOBAL",2)~ THEN X3RPHEL NoTalk 
@0
EXIT 

CHAIN IF ~True()~ THEN X3RM OneLine 
@1
EXIT 

CHAIN IF ~True()~ THEN X3RPIR4 OneLine2 
@2
EXIT 


CHAIN IF ~IsValidForPartyDialogue("X3Reb")!GlobalGT("X3RMSpell","GLOBAL",2)~ THEN X3RPHEL Confrontation 
@3
== X3RebJ @4
== X3RKID @5
== X3RPHEL @6
== X3RebJ @7
== X3RPHEL @8
END 
++ @9 + convince 
++ @10 + convince
+~Global("AsylumPlot","GLOBAL",10)~+ @11 + Spellhold
++ @12 + fight

CHAIN X3RPHEL Spellhold 
@13
END 
IF ~OR(2)Global("PirateRefused","GLOBAL",1)Dead("PPDESH")~ EXTERN X3RPHEL Spellhold_No
IF ~!Global("PirateRefused","GLOBAL",1)!Dead("PPDESH")~ EXTERN X3RPHEL Spellhold_Yes

CHAIN X3RPHEL Spellhold_Yes
@14
END 
++ @15 + convince
++ @16 EXTERN X3RebJ deal // This will shift to Desharik. Technically you can return to Phil later, although Recorder will be angry.
++ @17 + fight
++ @18 EXTERN X3RebJ think_about

CHAIN X3RPHEL Spellhold_No 
@19
END 
++ @20 + convince
++ @21 + fight
++ @22 EXTERN X3RebJ nothing_further

CHAIN X3RebJ think_about 
@23
END 
++ @24 EXTERN X3RPHEL convince
++ @25 + deal 
++ @26 EXTERN X3RPHEL fight 

CHAIN X3RebJ deal 
@27
== X3RebJ @28
== X3RPHEL @29
END 
++ @30 EXTERN X3RPHEL deal_confirmed
++ @31 EXTERN X3RPHEL convince 
++ @32 EXTERN X3RPHEL fight

CHAIN X3RebJ nothing_further 
@33
END 
++ @34 + with_us
++ @35 EXTERN X3RPHEL nothing_else 
++ @36 EXTERN X3RPHEL convince
++ @37 EXTERN X3RPHEL fight

CHAIN X3RebJ with_us 
@38
END 
++ @35 EXTERN X3RPHEL nothing_else 
++ @36 EXTERN X3RPHEL convince
++ @37 EXTERN X3RPHEL fight

CHAIN X3RPHEL deal_confirmed
@39
== X3RebJ @40
== X3RPHEL @41
DO ~DisplayStringNoNameDlg(Player1,@409)IncrementGlobal("X3RebApp","GLOBAL",-27)AddJournalEntry(@11,QUEST)SetGlobal("X3RFAIL","GLOBAL",2)SetGlobal("X3RMSpell","GLOBAL",4)
ActionOverride("X3RPHEL",DestroySelf())
ActionOverride("X3RPIR4",DestroySelf())
ActionOverride("X3RKID",DestroySelf())
ActionOverride("X3RM",DestroySelf())~ 
EXTERN PPDESH 26


CHAIN X3RPHEL nothing_else 
@42
== X3RebJ @43
== X3RPHEL @44
== X3RebJ @45
== X3RPHEL @46
== X3RKID @47
== X3RebJ @48
== X3RPHEL @49
== X3RebJ @50
== X3RPHEL @51
== X3RM @52
DO ~DisplayStringNoNameDlg(Player1,@409)IncrementGlobal("X3RebApp","GLOBAL",-27)SetGlobal("X3RMSpell","GLOBAL",3)~
EXIT 

CHAIN X3RPHEL fight 
@53
== X3RKID @54
== X3RPHEL @55
== X3RM @56
== X3RebJ @57
DO ~ActionOverride("X3RM",Enemy())ActionOverride("X3RPHEL",Enemy())ActionOverride("X3RPIR4",Enemy())ActionOverride("PPDESH",Enemy())SetGlobal("X3RMSpell","GLOBAL",1)~
EXIT

CHAIN X3RPHEL convince 
@58
== X3RebJ @59
== X3RPHEL @60
== X3RPHEL @61
== X3RebJ @62
== X3RPHEL @63
END 
++ @64 + ignore
++ @65 + coin
++ @66 + fight  

CHAIN X3RPHEL coin 
@67
END 
++ @68 + ignore
++ @69 + ignore
++ @70 + fight

CHAIN X3RPHEL ignore
@71
== X3RKID @72
== X3RPHEL @73
END 
++ @74 + fight_2
++ @75 + fight_2
++ @76 + fight 

CHAIN X3RPHEL fight_2 
@77
== X3RM @78
== X3RPHEL @79
DO ~DisplayStringNoNameDlg(Player1,@419)IncrementGlobal("X3RebApp","GLOBAL",9)ActionOverride("X3RM",Enemy())ActionOverride("X3RPHEL",Enemy())ActionOverride("X3RPIR4",Enemy())ActionOverride("PPDESH",Enemy())~
EXIT 

CHAIN IF ~Dead("X3RPHEL")GlobalLT("X3RebQuest","GLOBAL",13)~ THEN X3RKID Talk 
@80
== X3RebJ @81
== X3RKID @82
== X3RebJ @83
END 
++ @84 EXTERN X3RebJ plan
++ @85 EXTERN X3RebJ plan 
++ @86 EXTERN X3RebJ plan

CHAIN X3RebJ plan 
@87
== X3RKID @88
== X3RebJ @89
== X3RKID @90
== X3RebJ @91
DO ~AddJournalEntry(@13,QUEST)SetGlobal("X3RebQuest","GLOBAL",13)~
EXIT 

EXTEND_TOP CALAHA 17
+~Global("X3RebQuest","GLOBAL",13)~+ @92 + Raban1
END 

CHAIN CALAHA Raban1 
@93
END 
+~PartyGoldGT(99)~+ @94 + Raban3
++ @95 EXTERN CALAHA 4

EXTEND_TOP CALAHA 0
+~Global("X3RebQuest","GLOBAL",13)~+ @96 + Raban2
END 

CHAIN CALAHA Raban2 
@97
END 
+~PartyGoldGT(99)~+ @94 + Raban3
++ @95 EXTERN CALAHA 4

CHAIN CALAHA Raban3 
@98
DO ~SetGlobal("X3RebQuest","GLOBAL",14)AddJournalEntry(@14,QUEST)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @99
== CALAHA IF ~IsValidForPartyDialogue("X3Reb")~ THEN @100
EXIT 

CHAIN IF ~GlobalGT("X3RebQuest","GLOBAL",12)~ THEN X3RKID End 
@101
END
+~Global("X3RebQuest","GLOBAL",14)~+ @102 DO ~SetGlobal("X3RebQuest","GLOBAL",15)AddJournalEntry(@15,QUEST_DONE)~ + Go 
++ @103 EXIT 

CHAIN X3RKID Go 
@104
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ Goodbye 
IF ~!IsValidForPartyDialogue("X3Reb")~ DO ~EscapeArea()~ EXIT 

CHAIN X3RebJ Goodbye 
@105
== X3RKID @106
== X3RebJ @107
== X3RKID @108
== X3RebJ @109
== X3RKID @110
== X3RebJ @111
== X3RKID @112
DO ~AddJournalEntry(@15,QUEST_DONE)DisplayStringNoNameDlg(Player1,@419)IncrementGlobal("X3RebApp","GLOBAL",12)EscapeArea()~ EXIT 

CHAIN IF ~True()~ THEN X3RKID OneLine3 
@113
EXIT


