
/* Note: START.d initiates the Five's NPC dialogues, but no one else. */

// Kale in the temple of Amaunator
//Going to leave it here for ease of use.
APPEND X3IsaP

IF ~Global("X3IsaVampire","GLOBAL",4)~ v1
SAY @50
IF ~~ DO ~EraseJournalEntry(32084)  
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
SetGlobal("X3IsaVampire","GLOBAL",5)~ SOLVED_JOURNAL @60063 + v1.1 
END

IF ~~ v1.1
SAY @51
IF ~~ DO ~EraseJournalEntry(@60062)~ + v1.1a
END

IF ~~ v1.1a
SAY @52
++ @53 DO ~ActionOverride("X3Isa",JoinParty())~ + v1.3
++ @54 + v1.2
END

IF ~~ v1.2
SAY @55
IF ~~ DO ~SetGlobal("X3IsaKickedOut","LOCALS",1) MoveGlobal("AR0406","X3Isa",[1207.1424])~ EXIT
END

IF ~~ v1.3
SAY @56
IF ~~ EXIT 
END 

END // for the APPEND X3IsaP

CHAIN IF ~Global("X3IsaMeet","LOCALS",0)~ THEN X3Isa Meet 
@0
END 
++ @1 DO ~SetGlobal("X3IsaPartyBG1","GLOBAL",1)~ + IsaacLostMavisWon
++ @2 + IAmIsaac 
++ @3 + IsaacLostMavisWon 

CHAIN X3Isa IsaacLostMavisWon 
@5
END 
++ @6 + WillBeAvenged 
++ @7 + WillBeAvenged
++ @8 + WillBeAvenged

CHAIN X3Isa WillBeAvenged 
@9
= @10 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ @22
== X3Isa IF ~IsValidForPartyDialogue("X3Emi")~ @23
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ @24
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ @25
END 
++ @11 + Yes 
++ @12 + No

CHAIN X3Isa Yes 
@14 
= @15
DO ~AddJournalEntry(@6001,QUEST)~
END 
+~Global("X3IsaPartyBG1","GLOBAL",1)~+ @16 + IsaImoenKnow
+~!Global("X3IsaPartyBG1","GLOBAL",1)~+ @16 + IsaImoen
++ @17 + IsaIrenicus
++ @18 DO ~JoinParty()~ EXIT 

CHAIN X3Isa IsaImoenKnow
@19
EXTERN X3Isa LetsTrackThemDown 

CHAIN X3Isa IsaImoen
@20
EXTERN X3Isa LetsTrackThemDown 

CHAIN X3Isa IsaIrenicus 
@21
EXTERN X3Isa LetsTrackThemDown 

CHAIN X3Isa LetsTrackThemDown 
@26
DO ~JoinParty()~
EXIT 


CHAIN X3Isa No
@13
DO ~EscapeAreaMove("AR0406",1207,1424,SW)~
EXIT 

CHAIN X3Isa IAmIsaac 
@4
EXTERN X3Isa IsaacLostMavisWon 

CHAIN IF ~!Dead("X3IMavis")!Dead("X3IPHL")Global("X3IsaKickedOut","LOCALS",0)~ THEN X3IsaP QuestNotDoneReleased
@27
END 
++ @33 + depart
++ @34 DO ~JoinParty()~ EXIT 

CHAIN X3IsaP depart
@39
DO ~SetGlobal("X3IsaKickedOut","LOCALS",1)~
END 
+~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_5%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @35 + ccmidchapters
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_5%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @35 + ccstandard
+~OR(3)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_5%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @36 + waitmidchapters
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_5%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @36 + waitstandard

CHAIN X3IsaP waitmidchapters 
@37
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ FarewellInterject
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ FarewellInterject
IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Emi")~ EXIT 

CHAIN X3IsaP ccstandard
@38
DO ~EscapeAreaMove("AR0406",1207,1424,SW)~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ FarewellInterject
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ FarewellInterject
IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Emi")~ EXIT 

CHAIN X3IsaP waitstandard
@40
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ FarewellInterject
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ FarewellInterject
IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Emi")~ EXIT 

CHAIN X3IsaP ccmidchapters
@41
DO ~EscapeAreaMove("AR0406",1207,1424,SW)~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ FarewellInterject
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ FarewellInterject
IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Emi")~ EXIT 

CHAIN X3KalJ FarewellInterject 
@46
EXIT 

CHAIN X3EmiJ FarewellInterject 
@48
EXIT 

CHAIN IF ~OR(2)Dead("X3IMavis")Dead("X3IPHL")!Global("X3IsaRomanceActive","GLOBAL",2)Global("X3IsaKickedOut","LOCALS",0)~ THEN X3IsaP QuestNormalReleased 
@28
END 
++ @33 + depart
++ @34 DO ~JoinParty()~ EXIT 

CHAIN IF ~OR(2)Dead("X3IMavis")Dead("X3IPHL")Global("X3IsaRomanceActive","GLOBAL",2)Global("X3IsaKickedOut","LOCALS",0)~ THEN X3IsaP QuestRomanceReleased 
@29
END 
++ @33 + depart
++ @34 DO ~JoinParty()~ EXIT 

CHAIN IF ~!Dead("X3IMavis")!Dead("X3IPHL")Global("X3IsaQuest","GLOBAL",0)Global("X3IsaKickedOut","LOCALS",1)~ THEN X3IsaP QuestNotDoneReturn
@30
END 
++ @42 + join
++ @43 + stay

CHAIN IF ~OR(2)Dead("X3IMavis")Dead("X3IPHL")!Global("X3EmiRomanceActive","GLOBAL",2)Global("X3IsaKickedOut","LOCALS",1)~ THEN X3IsaP PlayerReturnPostReleaseNormal
@31
END 
++ @42 + join
++ @43 + stay


CHAIN IF ~OR(2)Dead("X3IMavis")Dead("X3IPHL")Global("X3EmiRomanceActive","GLOBAL",2)Global("X3IsaKickedOut","LOCALS",1)~ THEN X3IsaP PlayerReturnPostReleaseRomance
@32
END 
++ @42 + join
++ @43 + stay

CHAIN X3IsaP join 
@45
DO ~SetGlobal("X3IsaKickedOut","LOCALS",0)JoinParty()~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ RejoinInterject
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ RejoinInterject
IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Emi")~ EXIT 

CHAIN X3KalJ RejoinInterject 
@47
EXIT 

CHAIN X3EmiJ RejoinInterject
@49
EXIT 

CHAIN X3IsaP stay 
@44
EXIT 