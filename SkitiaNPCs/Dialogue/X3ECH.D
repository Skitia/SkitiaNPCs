
BEGIN X3ECH 
BEGIN X3EGOD 
// The Hornkeeper family should leave after the heir is selection, so they need no comment afterwards.
// They will also not be present for the duel, believing it "uncouth".

CHAIN IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3ECH heir_selection 
@0
EXIT 

CHAIN IF ~Global("X3ECHQuest","GLOBAL",2)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN X3ECH support_done_already 
@1
EXIT 

// Emily not seen or not valid for dialogue, less than chapter 6, and quest never initiated.
CHAIN IF ~Global("EmilyNotPresent","LOCALS",0)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",0)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3ECH no_emily
@2
END 
++ @3 + no_emily.1 
++ @4 + no_emily.2
++ @5 EXIT 

CHAIN X3ECH no_emily.2
@6
== X3ECH @7
END 
++ @8 + no_emily.3 
++ @9 + no_emily.4
++ @10 EXIT 

CHAIN X3ECH no_emily.3 
@11
DO ~SetGlobal("EmilyNotPresent","LOCALS",1)~
EXIT 

CHAIN X3ECH no_emily.4 
@12
EXIT 

CHAIN X3ECH no_emily.1
@13 
END 
++ @14 + no_emily.3 
++ @15 + no_emily.2
++ @10 EXIT 

CHAIN IF ~Global("EmilyNotPresent","LOCALS",1)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)GlobalLT("X3ECHQuest","GLOBAL",2)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3ECH no_emily_again
@16
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",0)See("X3Emi")IsValidForPartyDialogue("X3Emi")~ THEN X3ECH charmaine_quest_start
@17
== X3EmiJ @18
== X3ECH @19
== X3EmiJ @20
END 
IF ~ReputationGT(Player1,16)~ EXTERN X3ECH my_support 
IF ~!ReputationGT(Player1,16)~ EXTERN X3ECH no_support 

CHAIN X3ECH no_support 
@21
END 
++ @22 + not_yet
++ @23 EXTERN X3EmiJ my_argument
++ @24 + argument 
++ @25 + not_yet

CHAIN X3ECH argument 
@26
EXTERN X3ECH support_requires

CHAIN X3ECH not_yet
@27
EXTERN X3ECH support_requires

CHAIN X3EmiJ my_argument
@28
== X3ECH @29
EXTERN X3ECH support_requires

CHAIN X3ECH support_requires 
@30
== X3EmiJ @31
== X3ECH @32
== X3ECH @33
END 
++ @34 + ask 
++ @35 EXTERN X3EmiJ so_terrible 
++ @36 + thomas_instead 

CHAIN X3ECH ask 
@37
END 
++ @38 + not_count 
++ @35 EXTERN X3EmiJ so_terrible 
++ @36 + thomas_instead 

CHAIN X3ECH not_count 
@39
END 
++ @40 + return_later
++ @41 EXTERN X3EmiJ so_terrible 
++ @36 + thomas_instead 

CHAIN X3ECH thomas_instead 
@42
== X3EmiJ @43
== X3ECH @44
== X3EmiJ @45
== X3ECH @46
DO ~AddJournalEntry(@3,QUEST)SetGlobal("X3ECHQuest","GLOBAL",1)~
EXIT 

CHAIN X3EmiJ so_terrible 
@47
== X3ECH @48
== X3EmiJ @49
== X3ECH @50
DO ~AddJournalEntry(@3,QUEST)SetGlobal("X3ECHQuest","GLOBAL",1)~
EXIT 

CHAIN X3ECH return_later 
@51
DO ~AddJournalEntry(@3,QUEST)SetGlobal("X3ECHQuest","GLOBAL",1)~
EXIT 

CHAIN X3ECH my_support 
@52
== X3EmiJ @53
== X3ECH @54
== X3EmiJ @55
== X3ECH @56
END 
IF ~OR(2)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_active // Romance at 1 or 2
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_not_active // Romance not at 1 or 2

CHAIN X3EmiJ romance_active 
@57
== X3ECH @58
== X3EmiJ @59
== X3ECH @60
EXTERN X3EmiJ quest_Charmaine_end 

CHAIN X3EmiJ quest_Charmaine_end 
@61
== X3ECH @62
DO ~AddJournalEntry(@4,QUEST)SetGlobal("X3ECHQuest","GLOBAL",2)SetGlobal("X3ECHVote","GLOBAL",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
EXIT 

CHAIN X3EmiJ romance_not_active
@63
== X3ECH @64
EXTERN X3EmiJ quest_Charmaine_end 


CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",1)See("X3Emi")IsValidForPartyDialogue("X3Emi")!ReputationGT(Player1,16)~ THEN X3ECH not_enough
@65
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3ECHQuest","GLOBAL",1)See("X3Emi")IsValidForPartyDialogue("X3Emi")ReputationGT(Player1,16)~ THEN X3ECH enough_prestige
@66
== X3EmiJ @67
EXTERN X3ECH my_support 
// Godfrey lines here 
CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGODBanter","LOCALS",1)See("X3Emi")IsValidForPartyDialogue("X3Emi")~THEN X3EGOD one_liner_one 
@68
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)OR(2)!See("X3Emi")!IsValidForPartyDialogue("X3Emi")~ THEN X3EGOD one_liner_two
@69
EXIT 

CHAIN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)Global("X3EGODBanter","LOCALS",0)See("X3Emi")IsValidForPartyDialogue("X3Emi")~ THEN X3EGOD Godfrey_Emily_Banter
@70
DO ~SetGlobal("X3EGODBanter","LOCALS",1)~
== X3EmiJ @71
== X3EGOD @72
== X3EmiJ @73
== X3EGOD @74
== X3EmiJ @75
== X3EGOD @76
END 
IF ~OR(2)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_active_Godfrey // Romance at 1 or 2
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ romance_not_active_Godfrey // Romance not at 1 or 2

CHAIN X3EmiJ romance_active_Godfrey 
@77
EXTERN X3EGOD Godfrey_Emily_end_banter

CHAIN X3EGOD Godfrey_Emily_end_banter
@78
== X3EmiJ @79
EXIT 

CHAIN X3EmiJ romance_not_active_Godfrey 
@80
EXTERN X3EGOD Godfrey_Emily_end_banter

