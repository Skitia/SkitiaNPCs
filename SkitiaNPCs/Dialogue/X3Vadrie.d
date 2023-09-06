BEGIN X3Vadrie 

CHAIN IF ~!GlobalLT("X3VieQuest","GLOBAL",11)~ THEN X3Vadrie ThankYou 
@40
DO ~EscapeArea()~
EXIT 

CHAIN IF ~GlobalLT("X3VieQuest","GLOBAL",11)GlobalGT("X3VieQuest","GLOBAL",6)~ THEN X3Vadrie Farewell 
@41
DO ~EscapeArea()~
EXIT 

CHAIN IF ~True()~ THEN X3Vadrie Greeting
@0
END 
++ @1 + GaladinSent
++ @2 + LostTome
++ @3 + LostTome

CHAIN X3Vadrie GaladinSent 
@4
EXTERN X3Vadrie LostTome 

CHAIN X3Vadrie LostTome  
@5
= @6
END 
++ @7 + FindTomeNotLike
++ @8 + WhyLie
++ @9 + WhereBandits

CHAIN X3Vadrie WhereBandits 
@10
EXTERN X3Vadrie TheExplanation

CHAIN X3Vadrie WhyLie 
@11
EXTERN X3Vadrie TheExplanation

CHAIN X3Vadrie FindTomeNotLike 
@12
EXTERN X3Vadrie TheExplanation

CHAIN X3Vadrie TheExplanation
@13
= @14
= @15
END 
IF ~IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaComment
++ @22 + Samir
++ @23 + TheUnderdark
++ @24 + Drow

CHAIN VICONIJ ViconiaComment 
@16
== X3Vadrie @17
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @18
== VICONIJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @19
END 
+~IsValidForPartyDialogue("X3Vie")~+ @20 EXTERN X3VieJ SheStarted
+~IsValidForPartyDialogue("X3Vie")~+ @21 EXTERN X3VieJ ThankYou
+~!IsValidForPartyDialogue("X3Vie")~+ @21 EXTERN VICONIJ Irritating 
++ @22 EXTERN X3Vadrie Samir
++ @23 EXTERN X3Vadrie TheUnderdark

CHAIN X3VieJ SheStarted 
@36
== VICONIJ @39
EXTERN X3Vadrie Samir

CHAIN X3VieJ ThankYou 
@37
EXTERN VICONIJ Irritating 

CHAIN VICONIJ Irritating 
@38
EXTERN X3Vadrie Samir

CHAIN X3Vadrie TheUnderdark 
@25
EXTERN X3Vadrie Samir 

CHAIN X3Vadrie Drow 
@26
EXTERN X3Vadrie Samir 

CHAIN X3Vadrie Samir 
@27
END 
++ @28 + NoHope
++ @29 + NoHope
++ @30 + SearchForHim 

CHAIN X3Vadrie SearchForHim
@31
EXTERN X3Vadrie NoHope 

CHAIN X3Vadrie NoHope 
@32
= @33
= @34
DO ~AddJournalEntry(@50004,QUEST)SetGlobal("X3VieQuest","GLOBAL",5)SetGlobal("X3VadrieTalk","GLOBAL",1)EscapeArea()~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN @35
EXIT 