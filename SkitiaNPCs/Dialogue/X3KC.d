BEGIN X3KC 
// Chester in the Docks 
CHAIN IF ~AreaCheck("AR0300")~ THEN X3KC docks_conversation
@0
END 
+~Global("X3KCTalk","LOCALS",0)Global("X3KalQuest","GLOBAL",5)~+ @1 DO ~SetGlobal("X3KCTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q1
+~Global("X3KCTalk","LOCALS",1)Global("X3KalQuest","GLOBAL",5)~+ @2 + q1
+~Global("X3KCTalk","LOCALS",2)Global("X3KalQuest","GLOBAL",5)~+ @2 + q12
++ @3 EXIT 

CHAIN X3KC q1 
@4
END 
++ @5 + q2
++ @6 + q3 
++ @7 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @8 + q5
++ @9 + q6
++ @10 + q7 
++ @11 + q8 
++ @12 + q9

CHAIN X3KC q2 
@13
END 
++ @6 + q3 
++ @7 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @8 + q5
++ @9 + q6
++ @10 + q7 
++ @11 + q8 
++ @12 + q9

CHAIN X3KC q3 
@14
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @8 + q5
++ @15 + q1
++ @12 + q9

CHAIN X3KC q4 
@16
END 
++ @5 + q2
++ @6 + q3 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @8 + q5
++ @9 + q6
++ @10 + q7 
++ @11 + q8 
++ @12 + q9

CHAIN X3KC q5 
@17
== X3KC @18
END 
++ @19 + q10
++ @15 + q1
++ @12 + q9

CHAIN X3KC q6 
@20
END 
++ @5 + q2
++ @6 + q3 
++ @7 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @8 + q5
++ @10 + q7 
++ @11 + q8 
++ @12 + q9

CHAIN X3KC q7 
@21
END 
++ @5 + q2
++ @6 + q3 
++ @7 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @8 + q5
++ @9 + q6
++ @11 + q8 
++ @12 + q9

CHAIN X3KC q8 
@22 
END 
++ @5 + q2
++ @6 + q3 
++ @7 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @8 + q5
++ @9 + q6
++ @10 + q7 
++ @12 + q9

CHAIN X3KC q9 
@23
EXIT

CHAIN X3KC q10 
@24
END 
++ @25 + q11 
++ @15 + q1
++ @12 + q9

CHAIN X3KC q11 
@26
DO ~SetGlobal("X3KCTalk","LOCALS",2)~
EXIT 

CHAIN X3KC q12 
@27
EXIT 

// Chase down of Chester
CHAIN IF ~AreaCheck("AR0528")OR(2)Dead("X3KBRYCE")!See("X3KBRYCE")~ THEN X3KC house_conversation
@28
== X3KC @29
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ house_interject 
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KC hc_1 

CHAIN X3KalJ house_interject 
@30
== X3KC @31
EXTERN X3KC hc_1 

CHAIN X3KC hc_1 
@32
END 
++ @33 + hc_2
++ @34 + hc_3 
++ @35 + hc_4 
++ @36 + hc_5

CHAIN X3KC hc_2 
@37
END
++ @38 + hc_5
++ @39 + hc_6 
++ @40 + hc_7


CHAIN X3KC hc_3 
@41
END 
++ @38 + hc_5
++ @39 + hc_6 
++ @40 + hc_7

CHAIN X3KC hc_4 
@42
END 
++ @38 + hc_5
++ @39 + hc_6 
++ @40 + hc_7


CHAIN X3KC hc_6 
@43
END 
++ @38 + hc_5
++ @40 + hc_7

CHAIN X3KC hc_7 
@44
END 
++ @38 + hc_5
++ @39 + hc_6 


CHAIN X3KC hc_5 
@45
END 
IF ~IsValidForPartyDialogue("X3Kal")!Dead("X3KJIL")~ EXTERN X3KalJ kale_decision //No Kale route if Jillian dead, forced death route.
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3KC player_decision

CHAIN X3KC player_decision 
@46
END 
++ @47 + death_route 
++ @48 + death_route 
+~!Dead("X3KJIL")~+ @49 + imprison_route 
+~!Dead("X3KJIL")~+ @50 + imprison_route 
+~Dead("X3KJIL")~+ @51 + death_route

CHAIN X3KC death_route 
@52
DO ~Enemy()~ 
EXIT 

CHAIN X3KC imprison_route 
@53
DO ~SetGlobal("X3KalQuest","GLOBAL",9)SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("AR0332","",[349.373],NW))
ActionOverride(Player2,LeaveAreaLUA("AR0332","",[308.404],NW))
ActionOverride(Player3,LeaveAreaLUA("AR0332","",[266.435],NW))
ActionOverride(Player4,LeaveAreaLUA("AR0332","",[297.467],NW))
ActionOverride(Player5,LeaveAreaLUA("AR0332","",[335.443],NW))
ActionOverride(Player6,LeaveAreaLUA("AR0332","",[376.396],NW))	
MoveBetweenAreas("AR0332",[241.396],NE)
Wait(1)
SetInterrupt(TRUE)~
EXIT 

CHAIN X3KalJ kale_decision 
@54
== X3KalJ @55
END 
IF ~IsValidForPartyDialogue("MAZZY")~ EXTERN MAZZYJ Finale_Kale.Mazzy
+~GlobalGT("X3KalApp","GLOBAL",29)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)RandomNum(3,1)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)!RandomNum(3,1)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@300306)~ EXTERN X3KalJ no_trust
+~!GlobalGT("X3KalApp","GLOBAL",29)!CheckStatGT(Player1,15,CHR)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@300306)~ EXTERN X3KalJ no_trust
++ @57 DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ Finale_Kale_C_1
++ @58 DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ Finale_Kale_C_1 


CHAIN MAZZYJ Finale_Kale.Mazzy
@59
== X3KalJ @60
END 
+~GlobalGT("X3KalApp","GLOBAL",29)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)RandomNum(3,1)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ trust
+~!GlobalGT("X3KalApp","GLOBAL",29)CheckStatGT(Player1,15,CHR)!RandomNum(3,1)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@300306)~ EXTERN X3KalJ no_trust
+~!GlobalGT("X3KalApp","GLOBAL",29)!CheckStatGT(Player1,15,CHR)~+ @56 DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@300306)~ EXTERN X3KalJ no_trust
++ @57 DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ Finale_Kale_C_1
++ @58 DO ~IncrementGlobal("X3KalApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@300316)~ EXTERN X3KalJ Finale_Kale_C_1 

CHAIN X3KalJ Finale_Kale_C_1 
@61
EXTERN X3KC death_route 

CHAIN X3KalJ trust
@62
DO ~SetGlobal("X3KalLawful","GLOBAL",1)~ // Kale can become lawful if the PC encourages this shift in a talk later.
EXTERN X3KC imprison_route

CHAIN X3KalJ no_trust 
@63
EXTERN X3KC death_route 



