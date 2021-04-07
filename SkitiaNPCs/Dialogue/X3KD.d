BEGIN X3KD

CHAIN IF ~Global("X3KDallieTopic","LOCALS",0)~ THEN X3KD first_encounter 
@0
END 
+~Global("X3KalQuest","GLOBAL",5)~+@1 DO ~IncrementGlobal("X3KDallieTopic","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + fe.1
++@2 EXIT 

CHAIN X3KD fe.1 
@3
END 
++ @4 + fe.2 
++ @5 + fe.3
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ @6 + fe.4
++ @7 + fe.5
++ @8 + fe.6

CHAIN X3KD fe.2
@9
== X3KD @10
END 
++ @5 + fe.3
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ @6 + fe.4
++ @7 + fe.5
++ @8 + fe.6

CHAIN X3KD fe.3 
@11
== X3KD @12
END 
++ @4 + fe.2 
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ @6 + fe.4
++ @7 + fe.5
++ @8 + fe.6

CHAIN X3KD fe.4 
@13
END 
++ @14 + fe.7
++ @15 + fe.8
++ @16 + fe.9
++ @8 + fe.6

CHAIN X3KD fe.5 
@17
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @18 + fe.11 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @19 + fe.12
++ @16 + fe.9
++ @8 + fe.6

CHAIN X3KD fe.6
@20
EXIT 

CHAIN X3KD fe.7
@21
DO ~SetGlobal("X3KOffended","LOCALS",1)~
EXTERN X3KD fe.8

CHAIN X3KD fe.8 
@22
EXIT 

CHAIN X3KD fe.9
@23
END 
++ @4 + fe.2 
++ @5 + fe.3
+~Global("X3KnowledgeAffair","GLOBAL",1)~+ @6 + fe.4
++ @7 + fe.5
++ @8 + fe.6

CHAIN X3KD fe.11 
@24
END 
++ @19 + fe.12
++ @25 + fe.9
++ @26 + fe.6

CHAIN X3KD fe.12 
@27
END 
++ @16 + fe.9
++ @8 + fe.6

CHAIN IF ~Global("X3KDallieTopic","LOCALS",1)~ THEN X3KD second_encounter 
@28
END 
+~Global("X3KalQuest","GLOBAL",5)!Global("X3KOffended","LOCALS",1)~+ @29 + fe.9
+~Global("X3KalQuest","GLOBAL",5)Global("X3KOffended","LOCALS",1)~+ @29 + fe.13
++@30 EXIT 

CHAIN X3KD fe.13 
@31
EXIT 