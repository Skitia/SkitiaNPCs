BEGIN X3HSCRY

// Abermon
CHAIN IF ~Global("X3HScried","GLOBAL",0)~ THEN X3HSCRY quest1
@0
END 
+~Global("X3HelToBQuest","GLOBAL",3)~+ @1 + locating 
++ @2 + monastery 
++ @3 + questions 
++ @4 EXIT 

CHAIN X3HSCRY questions 
@5
END 
++ @6 + mean
+~Global("X3HelToBQuest","GLOBAL",3)~+ @1 + locating
++ @2 + monastery
++ @4 EXIT 

CHAIN X3HSCRY monastery 
@7
END 
+~Global("X3HelToBQuest","GLOBAL",3)~+ @8 + locating 
++ @4 EXIT 

CHAIN X3HSCRY mean 
@9
= @10
= @11
END 
+~Global("X3HelToBQuest","GLOBAL",3)~+ @8 + locating 
++ @4 EXIT 

CHAIN X3HSCRY locating 
@12
END 
++ @13 + Berk
++ @14 + forget 

CHAIN X3HSCRY forget 
@15
EXIT 

CHAIN X3HSCRY Berk
@16
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @17
== X3HSCRY IF ~IsValidForPartyDialogue("X3Hel")~ THEN @18
END 
+~InParty("X3Hel")PartyHasItem("X3HGEM")PartyGoldGT(7999)~+ @19 DO ~TakePartyGold(8000)TakePartyItem("X3HGEM")~ + everything
+~!InParty("X3Hel")~+ @20 + Helgaless
++ @21 + crystal
++ @22 + lower 
++ @23 + return 

CHAIN X3HSCRY return
@24
EXIT 

CHAIN X3HSCRY lower 
@25
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @26
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @27
END 
+~InParty("X3Hel")~+ @19 + everything
+~!InParty("X3Hel")~+ @20 + Helgaless
++ @21 + crystal
++ @23 + return 

CHAIN X3HSCRY crystal 
@28
END 
+~InParty("X3Hel")~+ @19 + everything
+~!InParty("X3Hel")~+ @20 + Helgaless
++ @22 + lower 
++ @23 + return 

CHAIN X3HSCRY Helgaless 
@29
END 
++ @30 + lower 
++ @21 + crystal
++ @23 + return 

CHAIN X3HSCRY everything 
@31
DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Hcut05")~ 
EXIT 

CHAIN IF ~Global("X3HScried","GLOBAL",1)~ THEN X3HSCRY quest2
@32
END 
++ @33 + dead 
++ @34 + dead 
++ @35 + dead 

CHAIN X3HSCRY dead 
@36
== X3Hel25J @37
END 
++ @38 DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@200216)~ EXTERN X3Hel25J wonder2
++ @39 DO ~IncrementGlobal("X3HelApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@200209)~ EXTERN X3Hel25J hard2 
++ @40 DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@200206)~ EXTERN X3Hel25J waste2

CHAIN X3Hel25J hard2
@41
EXTERN X3HSCRY end

CHAIN X3HSCRY end
@42
DO ~AddExperienceParty(6000)AddJournalEntry(@20018,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)EscapeArea()~
EXIT 

CHAIN X3Hel25J wonder2
@43
EXTERN X3Hel25J time2

CHAIN X3Hel25J waste2
@44
EXTERN X3Hel25J time2

CHAIN X3Hel25J time2
@45
EXTERN X3HSCRY end