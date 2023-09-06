BEGIN X3KJIL

CHAIN IF ~OR(2)Global("X3HZavatarQuest","GLOBAL",1)Global("X3HZavatarQuest","GLOBAL",2)~ THEN X3KJil JillianFreed 
@145
DO ~SetGlobal("X3HZavatarQuest","GLOBAL",3)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @146
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @147
END 
IF ~InMyArea("X3HArv")~ EXTERN X3HArv JillianArvora 
IF ~!InMyArea("X3HArv")~ EXTERN X3KJil JillianNoArvora 

CHAIN X3KJil JillianNoArvora 
@148
END 
IF ~OR(2)!GlobalLT("X3KalQuest","GLOBAL",7)Global("X3JilQuestFail","GLOBAL",1)~ DO ~EscapeArea()~ EXIT 
IF ~!Global("X3JilNPCKilled","GLOBAL",1)GlobalLT("X3KalQuest","GLOBAL",7)~ DO ~EscapeAreaMove("AR0332",273,369,SW)~ EXIT 


CHAIN X3HArv JillianArvora
@149
== X3KJil @150
== X3HArv @151
== X3KJil @152
END 
IF ~OR(2)!GlobalLT("X3KalQuest","GLOBAL",7)Global("X3JilQuestFail","GLOBAL",1)~ DO ~EscapeArea()~ EXIT 
IF ~!Global("X3JilNPCKilled","GLOBAL",1)GlobalLT("X3KalQuest","GLOBAL",7)~ DO ~EscapeAreaMove("AR0332",273,369,SW)~ EXIT 




// In case the player killed any of the Suspect NPCs before an arrest was made.
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)OR(4)Dead("X3KC")Dead("X3KM")Dead("X3KD")Dead("X3KF")~ THEN X3KJIL quest_failed 
@0
DO ~AddJournalEntry(@30005,QUEST_DONE)SetGlobal("X3JilQuestFail","GLOBAL",1)EscapeArea()~
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalQuest","GLOBAL",3)~ THEN X3KJIL quest_start
@1
DO ~SetGlobal("X3KalQuest","GLOBAL",4)~
== X3KalJ @2
== X3KJIL @3
== X3KJIL @4
END 
++ @5 + grudge 
++ @6 + can_say
++ @7 + to_learn 

CHAIN IF ~!IsValidForPartyDialogue("X3Kal")Global("X3KalQuest","GLOBAL",3)~ THEN X3KJIL quest_not_start
@8
END 
++ @9 + father_journal
++ @10 EXIT 
++ @11 + usually_do 

CHAIN X3KJIL usually_do 
@12
EXIT 

CHAIN X3KJIL father_journal 
@13
== X3KJIL @14
DO ~SetGlobal("X3KalQuest","GLOBAL",4)~
END 
++ @15 + grudge 
++ @6 + can_say
++ @7 + to_learn 

CHAIN X3KJIL to_learn 
@16
EXIT 

CHAIN IF ~Global("X3KalQuest","GLOBAL",4)~  THEN X3KJIL second_talk_quest_not_started
@17
END 
++ @18 + can_say 
++@19 + how_are_you 
++ @20 EXIT 

CHAIN X3KJIL grudge 
@21
END 
++ @22 + can_say
++ @23 + to_learn

CHAIN X3KJIL how_are_you 
@24
EXIT 



CHAIN X3KJIL can_say
@25
DO ~SetGlobal("X3KalQuest","GLOBAL",5)~
== X3KJIL @26
== X3KJIL @27
== X3KJIL @28
DO ~CreateItem("X3KCHEES",0,0,0)GiveItem("X3KCHEES",Player1)~
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ @30 DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ @31 DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ @32 DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ @33 DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ @34 + con1_exit

CHAIN X3KJIL talk_temple
@35
END 
+~Global("X3Topic2","LOCALS",0)~+ @30 DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ @31 DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ @32 DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ @33 DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ @34 + con1_exit

CHAIN X3RebJ temple_talk
@36
EXTERN X3KJIL mother_talk

CHAIN X3KJIL mother_talk
@37
END 
+~Global("X3Topic2","LOCALS",0)~+ @30 DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ @31 DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ @32 DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ @33 DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ @34 + con1_exit

CHAIN X3KJIL chester_location
@38
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ @30 DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ @31 DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic5","LOCALS",0)~+ @33 DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ @34 + con1_exit

CHAIN X3KJIL dallie_location
@39
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic3","LOCALS",0)~+ @31 DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ @32 DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ @33 DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ @34 + con1_exit

CHAIN X3KJIL flora_location
@40
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ @30 DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic3","LOCALS",0)~+ @31 DO ~SetGlobal("X3Topic3","LOCALS",1)~ + beggar_location
+~Global("X3Topic4","LOCALS",0)~+ @32 DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
++ @34 + con1_exit


CHAIN X3KJIL beggar_location
@41
END 
+~IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ EXTERN X3RebJ temple_talk
+~!IsValidForPartyDialogue("X3Reb")Global("X3Topic1","LOCALS",0)~+ @29 DO ~SetGlobal("X3Topic1","LOCALS",1)~ + talk_temple
+~Global("X3Topic2","LOCALS",0)~+ @30 DO ~SetGlobal("X3Topic2","LOCALS",1)~ + dallie_location
+~Global("X3Topic4","LOCALS",0)~+ @32 DO ~SetGlobal("X3Topic4","LOCALS",1)~ + chester_location
+~Global("X3Topic5","LOCALS",0)~+ @33 DO ~SetGlobal("X3Topic5","LOCALS",1)~ + flora_location
++ @34 + con1_exit

CHAIN X3KJIL con1_exit
@42
DO ~AddJournalEntry(@30004,QUEST)~
EXIT



// Initial Return (First Conversation Had)
CHAIN IF ~Global("X3KalQuest","GLOBAL",5)Global("X3KalQuestAccuse","GLOBAL",0)~ THEN X3KJIL con2 
@43
END 
+~Global("X3KSuspectTalk","GLOBAL",4)~+ @44 + suspect_talk_done
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @45 + cheese_poison
++ @46 + suspects_locations
++ @47 EXIT 

CHAIN X3KJIL suspects_locations
@48
EXIT 

CHAIN X3KJIL cheese_poison 
@49
== X3KJIL @50
END 
++ @51 + con2_a
++ @52 + con2_b 
++ @53 + con2_c 

CHAIN X3KJIL suspect_talk_done 
@54
END 
++ @51 + con2_a
++ @52 + con2_b 
++ @53 + con2_c 

CHAIN X3KJIL con2_a 
@55
END 
++ @56 + flora_sure
++ @57 + chester_sure 
++ @58 + dallie_sure 
++ @59 + beggar_sure

CHAIN X3KJIL flora_sure 
@60
END 
++ @61 + flora_accuse 
++ @62 + think_not_sure

CHAIN X3KJIL chester_sure 
@63
END 
++ @61 + chester_accuse
++ @62 + think_not_sure

CHAIN X3KJIL dallie_sure 
@64
END 
++ @61 + dallie_accuse
++ @62 + think_not_sure

CHAIN X3KJIL beggar_sure 
@65
END 
++ @61 + beggar_accuse
++ @62 + think_not_sure

CHAIN X3KJIL flora_accuse 
@66
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",1)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
MoveBetweenAreas("AR0300",[2148.2532],4)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[2281.2571],4))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[2302.2561],4))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[2237.2601],4))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[2334.2525],4))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[2170.2631],4))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[2081.2627],4))	
Wait(1)
FadeFromColor([15.0],0)
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL chester_accuse 
@67
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",2)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
ActionOverride("X3KBRYCE",MoveBetweenAreas("AR0527",[398.280],SW))
MoveBetweenAreas("AR0300",[1883.2739],4)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[1955.2716],4))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[1945.2794],4))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[1995.2846],4))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[1996.2783],4))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[2004.2745],4))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[2021.2662],4))	
Wait(1)
ActionOverride("X3KC",MoveBetweenAreas("AR0528",[488.276],1))
CreateCreature("X3KMERC",[1659.2676],SE)
CreateCreature("X3KMERC2",[1756.2641],SE)
CreateCreature("X3KMERC3",[1668.2774],SE)
FadeFromColor([15.0],0)
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL dallie_accuse 
@68
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",3)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
MoveBetweenAreas("AR0300",[3957.2909],0)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[4121.2844],0))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[4055.2813],0))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[3966.2811],0))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[3945.2821],0))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[3903.2831],0))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[3820.2855],0))	
Wait(1)
FadeFromColor([15.0],0)
ActionOverride("X3KD",FaceObject("X3KJIL"))
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL beggar_accuse 
@69
DO ~SetGlobal("X3KalQuestAccuse","GLOBAL",4)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
StartCutSceneMode()
MultiPlayerSync()
Wait(1)
MoveBetweenAreas("AR0300",[1940.2838],0)
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[1925.2765],0))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[2060.2803],0))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[2014.2789],0))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[1972.2774],0))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[1897.2756],0))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[1832.2743],0))	
Wait(1)
FadeFromColor([15.0],0)
Wait(1)
MultiPlayerSync()
EndCutSceneMode()
SetInterrupt(TRUE)
StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3KJIL think_not_sure 
@70
EXIT 

CHAIN X3KJIL con2_b
@71
== X3KJIL @72
EXIT 

CHAIN X3KJIL con2_c 
@73
EXIT 

// Accused Flora 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",1)~ THEN X3KJIL accused_flora 
@74
== X3KF @75
== X3KJIL @76
== X3KF @77
== X3KJIL @78
DO ~ActionOverride("X3KF",EscapeArea())SetGlobal("X3KalQuest","GLOBAL",6)SetGlobalTimer("X3KaleQuestAccuseTimer","GLOBAL",ONE_DAY)EscapeAreaMove("AR0332",273,369,SW)AddJournalEntry(@30010,QUEST)~
EXIT 

BEGIN X3KMERC 

// Accused Chester 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",2)~ THEN X3KJIL accused_chester
@79
== X3KMERC @80
== X3KJIL @81
== X3KMERC @82
DO ~SetGlobal("X3KalQuest","GLOBAL",6)~
EXIT 

// Finished off the merc's  and Jillian lived.
CHAIN IF ~Global("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",2)~ THEN X3KJIL chester_ran
@83
END 
++ @84 + cr_1
++ @85  + cr_2
++ @86 + cr_3 

CHAIN X3KJIL cr_1
@87
EXTERN X3KJIL cr_3 

CHAIN X3KJIL cr_2 
@88
EXTERN X3KJIL cr_4

CHAIN X3KJIL cr_3 
@89
EXTERN X3KJIL cr_4

CHAIN X3KJIL cr_4 
@90
DO ~SetGlobal("X3KalQuest","GLOBAL",7)AddJournalEntry(@30014,QUEST)EscapeAreaMove("AR0332",273,369,SW)~ 
EXIT 

// Accused Dallie 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",3)~ THEN X3KJIL accused_flora 
@91
== X3KD @92
== X3KJIL @93
== X3KD @94
== X3KJIL @78
DO ~ActionOverride("X3KD",EscapeArea())SetGlobal("X3KalQuest","GLOBAL",6)SetGlobalTimer("X3KaleQuestAccuseTimer","GLOBAL",ONE_DAY)EscapeAreaMove("AR0332",273,369,SW)AddJournalEntry(@30008,QUEST)~
EXIT 

// Accused Martin 
CHAIN IF ~GlobalLT("X3KalQuest","GLOBAL",6)Global("X3KalQuestAccuse","GLOBAL",4)~ THEN X3KJIL accused_flora 
@95
== X3KM @96
== X3KJIL @97
== X3KM @98
== X3KJIL @99
DO ~ActionOverride("X3KM",EscapeArea())SetGlobal("X3KalQuest","GLOBAL",6)SetGlobalTimer("X3KaleQuestAccuseTimer","GLOBAL",ONE_DAY)EscapeAreaMove("AR0332",273,369,SW)AddJournalEntry(@30009,QUEST)~
EXIT 

// Return from Flora/Maritn/Dallie accusation, quest not expired.
CHAIN IF ~!GlobalTimerExpired("X3KaleQuestAccuseTimer","GLOBAL")!Global("X3KalQuestAccuse","GLOBAL",2)Global("X3KalQuest","GLOBAL",6)~ THEN X3KJIL wrong_accusation
@100
EXIT 


// Return from Flora/Martin/Dallie accusation after a day.
CHAIN IF ~GlobalTimerExpired("X3KaleQuestAccuseTimer","GLOBAL")!Global("X3KalQuestAccuse","GLOBAL",2)Global("X3KalQuest","GLOBAL",6)~ THEN X3KJIL wrong_accusation
@101
END 
IF ~Global("X3KalQuestAccuse","GLOBAL",1)~ EXTERN X3KJIL Flora_innocent
IF ~Global("X3KalQuestAccuse","GLOBAL",3)~ EXTERN X3KJIL Dallie_innocent
// Exclude 1 and 3 for Martin case, just in case player tries some strange console changes to avoid breaking.
IF ~!Global("X3KalQuestAccuse","GLOBAL",1)!Global("X3KalQuestAccuse","GLOBAL",3)~ EXTERN X3KJIL Martin_innocent

CHAIN X3KJIL Flora_innocent
 @102
DO ~AddJournalEntry(@30013,QUEST_DONE)~
END 
++ @103 + wa_1 
++ @104 + wa_2 
++ @105 + wa_2

CHAIN X3KJIL Dallie_innocent
 @106
DO ~AddJournalEntry(@30011,QUEST_DONE)~
END 
++ @103 + wa_1 
++ @104 + wa_2 
++ @105 + wa_2

CHAIN X3KJIL Martin_innocent
 @107
DO ~AddJournalEntry(@30010,QUEST_DONE)~
END 
++ @103 + wa_1 
++ @104 + wa_2 
++ @105 + wa_2

CHAIN X3KJIL wa_1 
@108
EXTERN X3KJIL wa_3 

CHAIN X3KJIL wa_2 
@109
EXTERN X3KJIL wa_3 

CHAIN X3KJIL wa_3 
@110
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KALJ wa_4
IF ~!IsValidForPartyDialogue("X3Kal")~ DO ~SetGlobal("X3JilQuestFail","GLOBAL",1)EscapeArea()AddexperienceParty(3750)~ EXIT

CHAIN X3KALJ wa_4
@111
== X3KJIL @112
== X3KJIL @113
== X3KALJ @114
DO ~SetGlobal("X3JilQuestFail","GLOBAL",1)ActionOverride("X3KJIL",EscapeArea()AddexperienceParty(3750)~
EXIT 

// Return from Chester, Chester not turned in yet or dead. 
CHAIN IF ~GlobalGT("X3KalQuest","GLOBAL",6)GlobalLT("X3KalQuest","GLOBAL",9)Global("X3KalQuestAccuse","GLOBAL",2)~ THEN X3KJIL correct_accused 
@115
END 
+~Dead("X3KC")~+ @116 + chester_dead
++ @47 + waiting 

CHAIN X3KJIL chester_dead 
@117
DO ~SetGlobal("X3KalQuest","GLOBAL",8)~
END 
++ @118 + justice_wanted 
++ @119 + done_too_much
++ @120 + happens_now

CHAIN X3KJIL justice_wanted 
@121
== X3KJIL @122
EXTERN X3KJIL happens_now

CHAIN X3KJIL done_too_much 
@123
EXTERN X3KJIL happens_now 

CHAIN X3KJIL happens_now 
@124
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL kale_final_interject
IF ~!IsValidForPartyDialogue("X3Kal")~ DO ~AddexperienceParty(7500)GiveGoldForce(1250)AddJournalEntry(@30017,QUEST_DONE)EscapeArea()~ EXIT

CHAIN X3KJIL kale_final_interject 
@125
== X3KalJ @126
== X3KJIL @127
== X3KALJ @128
DO ~AddexperienceParty(7500)GiveGoldForce(1250)AddJournalEntry(@30017,QUEST_DONE)ActionOverride("X3KJIL",EscapeArea())~
EXIT 


CHAIN X3KJIL waiting 
@129
EXIT 

// Chester turned in.
CHAIN IF ~Global("X3KalQuest","GLOBAL",9)~ THEN X3KJIL chester_turn_in
@130
== X3KC @131
== X3KJIL @132
== X3KJIL @133
END 
++ @134 EXTERN X3KJIL qd_1
++ @135 EXTERN X3KJIL qd_2
++ @136 EXTERN X3KJIL qd_3
++ @137 EXTERN X3KJIL qd_4

CHAIN X3KJIL qd_1
@138
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_kale_banter
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_5

CHAIN X3KJIL qd_2
@139
DO ~GiveGoldForce(300)~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_kale_banter
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_5

CHAIN X3KJIL qd_3 
@140
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_kale_banter
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KJIL qd_5

CHAIN X3KJIL qd_4 
@141
END 
++ @134 + qd_1
++ @135 + qd_2
++ @136 + qd_3

CHAIN X3KJIL qd_5
@142
DO ~ActionOverride("X3KC",EscapeArea())EscapeArea()AddJournalEntry(@30018,QUEST_DONE)AddexperienceParty(7500)GiveGoldForce(1250)~ 
EXIT 

CHAIN X3KJIL qd_kale_banter 
@143
== X3KalJ @144
EXTERN X3KJIL qd_5 