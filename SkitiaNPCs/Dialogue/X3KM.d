BEGIN X3KM

CHAIN IF ~GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KM chester_caught 
@0
EXIT 

CHAIN IF ~Global("X3KMTalk","LOCALS",0)!GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KM first_talk 
@1
END 
++ @2 + nq.1
+~Global("X3KalQuest","GLOBAL",5)~+ @3 DO ~SetGlobal("X3KMTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q.1
+~PartyGoldGT(0)~+ @4 DO ~TakePartyGold(1)~ + nq.4
++ @5 + nq.3

CHAIN IF ~Global("X3KMTalk","LOCALS",1)!GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KM second_talk 
@6
END 
+~Global("X3KalQuest","GLOBAL",5)!Global("X3KOffended","LOCALS",1)~+ @7 + q.11
+~Global("X3KalQuest","GLOBAL",5)Global("X3KOffended","LOCALS",1)~+ @7 + q.14
+~PartyGoldGT(0)~+ @4 DO ~TakePartyGold(1)~ + nq.2 
++ @5 + nq.3 

CHAIN X3KM nq.1
@8
END 
+~Global("X3KalQuest","GLOBAL",5)~+ @3 DO ~SetGlobal("X3KMTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q.1
+~PartyGoldGT(0)~+ @4 DO ~TakePartyGold(1)~ + nq.4
++ @5 + nq.3

CHAIN X3KM nq.2 
@9
EXIT 

CHAIN X3KM nq.3 
@10
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @11
EXIT 

CHAIN X3KM nq.4
@9
END 
++ @3 DO ~SetGlobal("X3KMTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q.1


CHAIN X3KM q.1
@12
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @13
END 
++ @14 + q.2
++ @15 + q.3
++ @16 + q.4 
++ @17 + q.5
++ @18 + q.6
++ @19 + q.7
++ @20 + q.8
++ @21 + q.9

CHAIN X3KM q.2
@22
END 
++ @15 + q.3
++ @16 + q.4 
++ @17 + q.5
++ @18 + q.6
++ @19 + q.7
++ @20 + q.8
++ @21 + q.9

CHAIN X3KM q.3 
@23
END 
++ @24 + q.10 
++ @25 + q.11
++ @21 + q.9

CHAIN X3KM q.4 
@26
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @27 + q.12
++ @25 + q.11
++ @21 + q.9

CHAIN X3KM q.5
@28
END 
++ @29 + q.13
++ @25 + q.11
++ @21 + q.9

CHAIN X3KM q.6 
@30
END 
++ @14 + q.2
++ @15 + q.3
++ @16 + q.4 
++ @17 + q.5
++ @19 + q.7
++ @20 + q.8
++ @21 + q.9

CHAIN X3KM q.7
@31
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @32 + q.12
++ @25 + q.11
++ @21 + q.9

CHAIN X3KM q.8
@33
END 
++ @14 + q.2
++ @15 + q.3
++ @16 + q.4 
++ @17 + q.5
++ @18 + q.6
++ @19 + q.7
++ @21 + q.9

CHAIN X3KM q.9
@34
EXIT 

CHAIN X3KM q.10 
@35
DO ~SetGlobal("X3KOffended","LOCALS",1)~
== X3KM @36
EXIT 

CHAIN X3KM q.11 
@37
END 
++ @14 + q.2
++ @15 + q.3
++ @16 + q.4 
++ @17 + q.5
++ @18 + q.6
++ @19 + q.7
++ @20 + q.8

CHAIN X3KM q.12 
@38
END 
++ @25 + q.11
++ @21 + q.9

CHAIN X3KM q.13
@39
END 
++ @25 + q.11
++ @21 + q.9

CHAIN X3KM q.14 
@40
EXIT 