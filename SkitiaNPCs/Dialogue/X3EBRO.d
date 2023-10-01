BEGIN X3EBRO 
BEGIN X3EDAR 
BEGIN X3EFATH

CHAIN IF ~True()~ THEN X3EDAR one_liner 
@0
EXIT 

// Happens after handling the merchant's quest, one way or another. 
CHAIN IF ~GlobalLT("X3EmiQuest","GLOBAL",6)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO first_meeting 
@1
== X3EmiJ @2
END 
++ @3 EXTERN X3EmiJ brother 
++ @4 EXTERN X3EmiJ brother
++ @5 EXTERN X3EmiJ brother

CHAIN X3EmiJ brother
@6
END 
IF ~Gender(Player1,MALE)~ EXTERN X3EBRO male 
IF ~Gender(Player1,FEMALE)~ EXTERN X3EBRO female 

CHAIN X3EBRO male 
@7
== X3EmiJ @8
== X3EDAR @9
END 
++ @10 + mighty 
++ @11 EXTERN X3EDAR make_sure 
++ @12 + exit_area 
++ @13 + violence  

CHAIN X3EBRO female 
@14
== X3EmiJ @15
== X3EBRO @16
END 
++ @10 + mighty 
++ @11 EXTERN X3EDAR make_sure 
++ @12 + exit_area 
++ @13 + violence  

CHAIN X3EBRO mighty 
@17
EXTERN X3EBRO exit_area 

CHAIN X3EDAR make_sure 
@18
DO ~SetGlobal("X3EmiAppChange","GLOBAL",7)~
EXTERN X3EBRO exit_area 

CHAIN X3EBRO exit_area 
@19
DO ~ActionOverride("X3EDAR",EscapeArea())EscapeArea()~
EXIT 

CHAIN X3EBRO violence 
@20
DO ~SetGlobal("X3EmiAppChange","GLOBAL",5)~
== X3EmiJ @21
== X3EBRO @22
EXTERN X3EBRO exit_area 

CHAIN IF ~GlobalLT("X3EmiQuest","GLOBAL",6)GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)!IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO first_meeting_no_Emily
@23
DO ~ActionOverride("X3EDAR",EscapeArea())EscapeArea()~
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)!IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO duel_wait 
@24
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)IsValidForPartyDialogue("X3Emi")~ THEN X3EBRO duel 
@25
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
== X3EmiJ @26
== X3EBRO @27
== X3EBRO @28
END 
++ @29 + fight 
++ @30 + fight 
++ @31 + insult 

CHAIN X3EBRO insult 
@32
EXTERN X3EBRO fight 

CHAIN X3EBRO fight 
@33
END 
++ @34 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ EXTERN X3EmiJ stands_for_herself
++ @35 EXTERN X3EmiJ champion
++ @36 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ EXTERN X3EmiJ champion

CHAIN X3EmiJ stands_for_herself
@37
== X3EBRO @38 
DO ~SetGlobal("X3EmiQuest","GLOBAL",7)SetGlobal("X3EmiDuel","GLOBAL",1)
FadeToColor([30.0],0)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
		Wait(1)
		ActionOverride("X3Emi",JumpToPoint([769.1728]))
		ActionOverride("X3EBRO",JumpToPoint([462.1673]))
		ActionOverride("X3Emi",FaceObject("X3EBRO"))
		ActionOverride("X3EBRO",FaceObject("X3Emi"))
		MoveViewPoint([608.1747],INSTANT)	
		StartCutScene("X3ECut02")~ EXIT // 1 = Emily


CHAIN X3EmiJ champion
@39
EXTERN X3EBRO cowardly 

CHAIN X3EBRO cowardly 
@40
DO ~SetGlobal("X3EmiQuest","GLOBAL",7)
FadeToColor([30.0],0)
		Wait(2)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
        Wait(1)
		ActionOverride(Player1,JumpToPoint([769.1728]))
		ActionOverride("X3EBRO",JumpToPoint([462.1673]))
		ActionOverride(Player1,FaceObject("X3EBRO"))
		ActionOverride("X3EBRO",FaceObject(Player1))
		MoveViewPoint([608.1747],INSTANT)	
		StartCutScene("X3ECut02")~ EXIT

// Post Duel, Thomas defeated - Emily fighting him. 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",7)Global("X3EmiDuel","GLOBAL",1)!Dead("X3Emi")~ THEN X3EBRO Thomas_defeated_Emily 
@41
== X3EmiJ @42
== X3EBRO @43
== X3EmiJ @44
== X3EBRO @45
== X3EmiJ @46
== X3EBRO @47
== X3EmiJ @48
== X3EBRO @49
DO ~SetGlobal("X3EmiQuest","GLOBAL",8)FadeToColor([30.0],0)Wait(1)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
		DestroySelf()
		ActionOverride(Player1,JumpToPoint([1337.1969]))
		ActionOverride("X3Emi",JumpToPoint([1304.1945]))
		MoveViewObject("X3EFATH",INSTANT)	
		ActionOverride(Player1,Face(NW))
		ActionOverride("X3Emi",Face(SE))
		StartCutScene("X3ECut03")~
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",7)!Global("X3EmiDuel","GLOBAL",1)~ THEN X3EBRO Thomas_defeated_player 
@50
END 
++ @51 + not_want_kill
++ @52 + you_want 
++ @53 + death_battle  // Battle resumes. 

CHAIN X3EBRO not_want_kill
@54
EXTERN X3EBRO you_want 

CHAIN X3EBRO you_want
@55
END 
++ @56 + redemption
++ @57 + death_battle

CHAIN X3EBRO redemption
@58
== X3EBRO @59
== X3EBRO @60
DO ~SetGlobal("X3EmiQuest","GLOBAL",8)FadeToColor([30.0],0)Wait(2)
		SetInterrupt(FALSE)
		ClearAllActions()
		StartCutSceneMode()
		MultiPlayerSync()
		DestroySelf()
		ActionOverride(Player1,JumpToPoint([1337.1969]))
		ActionOverride("X3Emi",JumpToPoint([1304.1945]))
		MoveViewObject("X3EFATH",INSTANT)	
		ActionOverride(Player1,FaceObject("X3Emi"))
		ActionOverride("X3Emi",FaceObject(Player1))
		StartCutScene("X3ECut03")~  EXIT 

CHAIN X3EBRO death_battle 
@61
DO ~ActionOverride("X3EBRO",DestroyItem("MINHP20"))~ EXIT


// Post Duel, Emily died 
//ChangeEnemyAlly(Myself,NEUTRAL)
CHAIN IF ~Global("X3EmiQuest","GLOBAL",7)Global("X3EmiDuel","GLOBAL",1)Dead("X3Emi")~ THEN X3EBRO Emily_Died // (For good)
@62
DO ~AddJournalEntry(@10016,QUEST_DONE)SetGlobal("X3EmiQuest","GLOBAL",10)AddexperienceParty(14875)~
== X3EFATH @63
== X3EBRO @64
END 
++ @65 + did_you_have_to 
++ @66 + worthy_of_ruling
++ @67 + not_merciful 
++ @68 + revenge 

CHAIN X3EBRO worthy_of_ruling
@69
DO ~ActionOverride("X3EFATH",EscapeArea())EscapeArea()~ EXIT 

CHAIN X3EBRO did_you_have_to
@70
EXTERN X3EBRO worthy_of_ruling 

CHAIN X3EBRO not_merciful 
@71
EXTERN X3EBRO worthy_of_ruling 

CHAIN X3EBRO revenge 
@72
DO ~ActionOverride("X3EFATH",EscapeArea())DestroyItem("MINHP20")Enemy()~
EXIT 