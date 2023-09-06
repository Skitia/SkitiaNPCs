EXTEND_BOTTOM FATESP 6 #9
+~!Dead("X3Emi")!Dead("X3mily")!InMyArea("X3Emi")Global("X3EmiSummoned","GLOBAL",0)GlobalGT("X3EmiApp","GLOBAL",-89)ReputationGT(Player1,7)~+ @0
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("X3Emi25",[1999.1228],0) 
SetGlobal("X3EmiSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("X3Emi")!Dead("X3mily")!InMyArea("X3Emi")Global("X3EmiSummoned","GLOBAL",0)!Global("X3EmiRomanceActive","GLOBAL",3)Gender(Player1,MALE)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)GlobalGT("X3EmiApp","GLOBAL",-89)ReputationGT(Player1,7)Gender(Player1,MALE)~ + @1
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("X3EmiRomanceActive","GLOBAL",2)
CreateCreature("X3Emi25",[1999.1228],0) 
SetGlobal("X3EmiSummoned","GLOBAL",1)~ GOTO 8
END
EXTEND_BOTTOM FATESP 6 #9
+~!Dead("X3Hel")!Dead("X3Helga")!InMyArea("X3Hel")Global("X3HelSummoned","GLOBAL",0)GlobalGT("X3HelApp","GLOBAL",-89)ReputationGT(Player1,2)~+ @2
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("X3Hel25",[1999.1228],0) 
SetGlobal("X3HelSummoned","GLOBAL",1)~ GOTO 8
END
EXTEND_BOTTOM FATESP 6 #9
+~!Dead("X3Kal")!Dead("X3Kale")!InMyArea("X3Kal")Global("X3KalSummoned","GLOBAL",0)GlobalGT("X3KalApp","GLOBAL",-89)ReputationGT(Player1,3)~+ @3
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("X3Kal25",[1999.1228],0) 
SetGlobal("X3KalSummoned","GLOBAL",1)~ GOTO 8
+ ~!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",3)!Global("X3IsaRomanceActive","GLOBAL",2)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)!Dead("X3Kal")!Dead("X3Kale")!InMyArea("X3Kal")Global("X3KalSummoned","GLOBAL",0)GlobalGT("X3KalApp","GLOBAL",-89)ReputationGT(Player1,7)~ + @4
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("X3KalRomanceActive","GLOBAL",2)
CreateCreature("X3Kal25",[1999.1228],0) 
SetGlobal("X3KalSummoned","GLOBAL",1)~ GOTO 8
END
EXTEND_BOTTOM FATESP 6 #9
+~!Dead("X3Reb")!Dead("X3Rec")!InMyArea("X3Reb")Global("X3RebSummoned","GLOBAL",0)GlobalGT("X3RebApp","GLOBAL",-89)ReputationGT(Player1,7)~+ @5
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("X3Reb25",[1999.1228],0) 
SetGlobal("X3RebSummoned","GLOBAL",1)~ GOTO 8
+ ~!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3IsaRomanceActive","GLOBAL",2)!Global("X3RebRomanceActive","GLOBAL",3)!Global("X3VieRomanceActive","GLOBAL",2)!Dead("X3Reb")!Dead("X3Rec")!InMyArea("X3Reb")Global("X3RebSummoned","GLOBAL",0)GlobalGT("X3RebApp","GLOBAL",-89)ReputationGT(Player1,7)~ + @6
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("X3RebRomanceActive","GLOBAL",2)
CreateCreature("X3Reb25",[1999.1228],0) 
SetGlobal("X3RebSummoned","GLOBAL",1)~ GOTO 8
END
EXTEND_BOTTOM FATESP 6 #9
+~!Dead("X3Vie")!Dead("X3Vien")!InMyArea("X3Vie")Global("X3VieSummoned","GLOBAL",0)GlobalGT("X3VieApp","GLOBAL",-89)~+ @7
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("X3Vie25",[1999.1228],0) 
SetGlobal("X3VieSummoned","GLOBAL",1)~ GOTO 8
+ ~!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3IsaRomanceActive","GLOBAL",2)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",3)!Dead("X3Vie")!Dead("X3Vien")!InMyArea("X3Vie")Global("X3VieSummoned","GLOBAL",0)GlobalGT("X3VieApp","GLOBAL",-89)ReputationGT(Player1,7)~ + @8
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("X3VieRomanceActive","GLOBAL",2)
CreateCreature("X3Vie25",[1999.1228],0) 
SetGlobal("X3VieSummoned","GLOBAL",1)~ GOTO 8
END
EXTEND_BOTTOM FATESP 6 #9
+~!Dead("X3Isa")!Dead("X3Isaac")!InMyArea("X3Isa")Global("X3IsaSummoned","GLOBAL",0)GlobalGT("X3IsaApp","GLOBAL",-89)~+ @9
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("X3Isa25",[1999.1228],0) 
SetGlobal("X3IsaSummoned","GLOBAL",1)~ GOTO 8
+ ~Gender(Player1,FEMALE)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3IsaRomanceActive","GLOBAL",3)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)!Dead("X3Isa")!Dead("X3Isaac")!InMyArea("X3Isa")Global("X3IsaSummoned","GLOBAL",0)GlobalGT("X3IsaApp","GLOBAL",-89)ReputationGT(Player1,7)~ + @10
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("X3IsaRomanceActive","GLOBAL",2)
CreateCreature("X3Isa25",[1999.1228],0) 
SetGlobal("X3IsaSummoned","GLOBAL",1)~ GOTO 8
END