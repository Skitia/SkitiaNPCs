BEGIN X3RFER

CHAIN IF ~IsGabber(Player1)~ THEN X3RFER t1
@0
END 
++ @1 + tpack 
++ @2 + tpick 
+~RandomNum(3,1)~+ @3 + pet1
+~RandomNum(3,2)~+ @3 + pet2
+~RandomNum(3,3)~+ @3 + pet3
+~RandomNum(3,1)~+ @4 + hold1
+~RandomNum(3,2)~+ @4 + hold2
+~RandomNum(3,3)~+ @4 + hold3
+~RandomNum(3,1)~+ @5 + feed1
+~RandomNum(3,2)~+ @5 + feed2
+~RandomNum(3,3)~+ @5 + feed3
++ @6 EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,1)~ THEN X3RFER r1
@7
EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,2)~ THEN X3RFER r2
@8 
EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,3)~ THEN X3RFER r3
@9
EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,4)~ THEN X3RFer r4
@10
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,5)~ THEN X3RFER r5
@11
EXIT 

CHAIN X3RFER tpack 
@12
DO ~GivePartyAllEquipment()DestroySelf()~ EXIT 

CHAIN X3RFER tpick 
@13
DO ~GivePartyAllEquipment()~ EXIT 

CHAIN X3RFER pet1 
@14
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN X3RFER pet2 
@15
EXIT 

CHAIN X3RFER pet3 
@16
EXIT 


CHAIN X3RFER hold1 
@17
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN X3RFER hold2 
@18
EXIT 

CHAIN X3RFER hold3 
@19
EXIT 


CHAIN X3RFER feed1 
@20
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN X3RFER feed2 
@21
EXIT 

CHAIN X3RFER feed3 
@22
EXIT 

CHAIN IF ~!IsGabber("X3Reb")!IsGabber(Player1)~ THEN X3RFER flee 
@23
DO ~MoveToObject("X3Reb")~ EXIT 
