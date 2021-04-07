BEGIN X3KF

CHAIN IF ~GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KF store_con_two 
@0
END 
++ @1 + store_open
++ @2 EXIT 

CHAIN IF ~!GlobalGT("X3KalQuest","GLOBAL",6)~ THEN X3KF store_con
@3
END 
+~Global("X3KFTalk","LOCALS",0)Global("X3KalQuest","GLOBAL",5)~+ @4 DO ~SetGlobal("X3KFTalk","LOCALS",1)IncrementGlobal("X3KSuspectTalk","GLOBAL",1)~ + q1
+~Global("X3KFTalk","LOCALS",1)Global("X3KalQuest","GLOBAL",5)!Global("X3KOffended","LOCALS",1)~+ @5 + question_again
++ @1 + store_open
++ @2 EXIT 

CHAIN X3KF store_open
@6
DO ~StartStore("X3KP",LastTalkedToBy())~ // Custom potion store, similar to Roger's but no cursed items.
EXIT 

CHAIN X3KF q1 
@7
END 
++ @8 + q2
++ @9 + q3 
++ @10 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @11 + q5
++ @12 + q6
++ @13 + q7 
++ @14 + q8 
++ @15 + q9


CHAIN X3KF question_again 
@16
END 
++ @8 + q2
++ @9 + q3 
++ @10 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @17 + q5
++ @12 + q6
++ @13 + q7 
++ @14 + q8 
++ @15 + q9

CHAIN X3KF q2 
@18
END 
++ @19 + q10 
++ @20 + question_again
++ @15 + q9

CHAIN X3KF q3 
@21
END 
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @22 + q5
++ @20 + question_again
++ @15 + q9

CHAIN X3KF q4 
@23
DO ~SetGlobal("X3KnowledgeAffair","GLOBAL",1)~
END 
++ @19 + q10 
++ @20 + question_again
++ @15 + q9

CHAIN X3KF q5 
@24
END 
++ @20 + question_again
++ @15 + q9

CHAIN X3KF q6 
@25
END 
++ @8 + q2
++ @9 + q3 
++ @10 + q4
+~Global("X3KnowledgeCheese","GLOBAL",1)~+ @17 + q5
++ @13 + q7 
++ @14 + q8 
++ @15 + q9

CHAIN X3KF q7 
@26
END 
++ @27 + q11
++ @20 + question_again
++ @15 + q9

CHAIN X3KF q8 
@28
END 
++ @29 + q12
++ @20 + question_again
++ @15 + q9

CHAIN X3KF q9 
@30
EXIT 

CHAIN X3KF q10 
@31
== X3KF @32
EXIT 

CHAIN X3KF q11 
@33
END 
++ @20 + question_again
++ @15 + q9

CHAIN X3KF q12 
@34
END 
++ @20 + question_again
++ @15 + q9

