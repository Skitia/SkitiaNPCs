BEGIN X3HSON 

CHAIN IF ~Global("X3HMomTalk","LOCALS",1)~ THEN X3HSON mom_talk 
@0
DO ~SetGlobal("X3HMomTalk","LOCALS",2)~
== X3Hel25J @1
== X3HSON @2
== X3Hel25J @3
END 
++ @4 + my_son
++ @5 + no_escape 
++ @6 + no_time 
++ @7 + no_time 


CHAIN X3HSON my_son 
@8
== X3Hel25J @9
== X3HSON @10
== X3Hel25J @11
== X3HSON @12
== X3Hel25J @13
END 
++ @14 + no_escape 
++ @15 + no_time 
++ @16 + no_time 


CHAIN X3HSON no_escape 
@17
== X3Hel25J @18
== X3HSON @19
== X3Hel25J @20
EXTERN X3HSON gods_willing 

CHAIN X3HSON gods_willing 
@21
DO ~AddJournalEntry(@20012,INFO)~
EXIT 


CHAIN X3HSON no_time 
@22
== X3Hel25J @23
== X3HSON @24
== X3Hel25J @25
EXTERN X3HSON gods_willing 

CHAIN IF ~Global("X3HMomTalk","LOCALS",2)!IsGabber("X3Hel")~ THEN X3HSON one_liner_mom 
@26
EXIT 

CHAIN IF ~Global("X3HMomTalk","LOCALS",2)IsGabber("X3Hel")~ THEN X3HSON one_liner_mom_speaker 
@27
EXIT 

CHAIN IF ~True()~ THEN X3HSON one_liner
@28
EXIT 
