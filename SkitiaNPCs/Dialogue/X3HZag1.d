BEGIN X3HZag1

//Can only happen if Zavatar is killed and Contact is charmed. Is mostly just a cut surrender route, just not likely he'd be the last alive.
CHAIN IF ~Dead("X3HZava")Dead("X3HZag2")!Global("X3HZavatarWon","GLOBAL",2)~ THEN X3HZag1 InformLocation2 
@71
DO ~SetGlobal("X3ZagSurrender","LOCALS",1)DestroyItem("X3HNote2")SetGlobal("X3HZavatarQuest","GLOBAL",2)~
= @72
END 
++ @73 + IfLying 
++ @74 + Go
++ @75 + KillAnyway

CHAIN X3HZag1 IfLying 
@78
DO ~ChangeEnemyAlly(Myself,NEUTRAL)
ClearAllActions()EscapeArea()~
EXIT 

CHAIN X3HZag1 Go 
@77
DO ~ChangeEnemyAlly(Myself,NEUTRAL)
ClearAllActions()EscapeArea()~
EXIT 

CHAIN X3HZag1 KillAnyway
@76
DO ~Enemy()~
EXIT 

CHAIN IF ~Dead("X3HZava")Global("X3HZavatarWon","GLOBAL",2)~ THEN X3HZag1 InformLocation1
@69
= @70
DO ~SetGlobal("X3HZavatarQuest","GLOBAL",2)DestroyItem("X3HNote2")ActionOverride("X3HZag2",EscapeArea())EscapeArea()~
EXIT 

CHAIN IF ~Global("X3HGame","LOCALS",0)~ THEN X3HZag1 FirstCon
@0
END 
++ @1 + IWish
++ @2 + IWish
++ @3 + GetOut
++ @4 + Zavatar
++ @5 + GetOut 
++ @6 + Exit 

CHAIN X3HZag1 Exit 
@7
EXIT 

CHAIN X3HZag1 GetOut
@8
EXIT 

CHAIN X3HZag1 IWish 
@9
EXIT 

CHAIN X3HZag1 Zavatar
@10
DO ~SetGlobal("X3HGame","LOCALS",1)~
END 
++ @11 + Wrong
++ @12 + Wrong
++ @13 + Wrong
++ @14 + Wrong
++ @15 + Wrong
++ @16 + Wrong
++ @17 + Wrong
++ @18 + Wrong
++ @19 + Right
++ @20 + Wrong
++ @21 + Wrong
++ @22 + NoGames
++ @26 + DoNotKnow

CHAIN X3HZag1 DoNotKnow 
@54
EXIT 

CHAIN IF ~Global("X3HGame","LOCALS",1)~ THEN X3HZag1 PasswordGuess1
@30
END 
++ @11 + Wrong
++ @12 + Wrong
++ @13 + Wrong
++ @14 + Wrong
++ @15 + Wrong
++ @16 + Wrong
++ @17 + Wrong
++ @18 + Wrong
++ @19 + Right
++ @20 + Wrong
++ @21 + Wrong
++ @22 + NoGames
++ @26 + DoNotKnow

CHAIN IF ~Global("X3HGame","LOCALS",2)~ THEN X3HZag1 PasswordGuess2
@31
END 
++ @11 + Dumb
++ @12 + Dumb
++ @13 + Dumb
++ @14 + Dumb
++ @15 + Dumb
++ @16 + Dumb
++ @17 + Dumb
++ @18 + Dumb
++ @19 + Right
++ @20 + Dumb
++ @21 + Dumb
++ @34 + Clue
++ @22 + NoGames
++ @26 + DoNotKnow

CHAIN X3HZag1 Clue
@35
= @55
EXIT 

CHAIN X3HZag1 NoGames 
@23
END 
++ @24 + StaysGone 
++ @28 + ThreatenViolence

CHAIN X3HZag1 StaysGone 
@25
END 
++ @28 + ThreatenViolence
++ @27 + WillNotPlay
++ @56 + LetMeThink
++ @57 + OnBoard

CHAIN X3HZag1 OnBoard 
@58
END 
IF ~Global("X3HGame","LOCALS",1)~ EXTERN X3HZag1 PasswordGuess1
IF ~!Global("X3HGame","LOCALS",1)~ EXTERN X3HZag1 PasswordGuess2

CHAIN X3HZag1 LetMeThink 
@59
EXIT 

CHAIN X3HZag1 ThreatenViolence 
@29
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @61
== X3KalJ IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Kal")~ THEN @62
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @63
== MAZZYJ IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("Mazzy")~ THEN @64
END 
++ @56 EXTERN X3HZag1 LetMeThink
++ @27 EXTERN X3HZag1 WillNotPlay
++ @57 EXTERN X3HZag1 OnBoard
++ @60 EXTERN X3HZag1 Fight 

CHAIN X3HZag1 Fight 
@44
DO ~Enemy()~ EXIT 

CHAIN X3HZag1 WillNotPlay
@33
EXIT 

CHAIN X3HZag1 Wrong 
@32
DO ~SetGlobal("X3HGame","LOCALS",2)~
END 
++ @11 + Dumb
++ @12 + Dumb
++ @13 + Dumb
++ @14 + Dumb
++ @15 + Dumb
++ @16 + Dumb
++ @17 + Dumb
++ @18 + Dumb
++ @19 + Right
++ @20 + Dumb
++ @21 + Dumb
++ @34 + Clue
++ @22 + NoGames
++ @26 + DoNotKnow

CHAIN X3HZag1 Dumb 
@36
END 
++ @37 + OrElse
++ @38 + MockUs
++ @39 + Next

CHAIN X3HZag1 MockUs
@65
EXTERN X3HZag1 Next

CHAIN X3HZag1 OrElse 
@40
EXTERN X3HZag1 Next 

CHAIN X3HZag1 Next 
@41 
= @42
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ Angry
IF ~!IsValidForPartyDialogue("X3Hel")~ DO ~SetGlobal("X3HContactEscapeAttempt","GLOBAL",1)EscapeArea()~ EXIT //If he escapes, the quest ends! 

CHAIN X3HelJ Angry
@43
EXTERN X3HZag1 Fight

CHAIN X3HZag1 Right
@45
== JANJ IF ~IsValidForPartyDialogue("Jan")~ THEN @66
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @46
== X3HZag1 IF ~IsValidForPartyDialogue("X3Reb")~ THEN @47
== X3HZag1 @67
END 
++ @48 + Traps
++ @49 + AfterYou
++ @50 + Impatient

CHAIN X3HZag1 Traps 
@51 
EXTERN X3HZag1 AfterYou 

CHAIN X3HZag1 Impatient
@52
EXTERN X3HZag1 AfterYou 

CHAIN X3HZag1 AfterYou 
@53
DO ~SetGlobal("X3HGame","LOCALS",3)AddJournalEntry(@20026,QUEST)SetGlobal("X3HZavatarSpawn","GLOBAL",1)~ 
EXIT 

CHAIN IF ~Global("X3HGame","LOCALS",3)Global("X3HZavatarQuest","GLOBAL",0)~ THEN X3HZag1 NotToMe 
@68
EXIT 

//Catch all line.
CHAIN IF ~True()~ THEN X3HZag1 CatchAll
@79
EXIT 