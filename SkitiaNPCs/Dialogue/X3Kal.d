/* Note: START.d initiates the Five's NPC dialogues, but no one else. */

// Kale in the temple of Amaunator
//Going to leave it here for ease of use.
APPEND X3KalP

IF ~Global("X3KalVampire","GLOBAL",4)~ v1
SAY @0
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
SetGlobal("X3KalVampire","GLOBAL",5)~ SOLVED_JOURNAL @32 + v1.1 
END

IF ~~ v1.1
SAY @1
IF ~~ DO ~EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Kale.  Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible.  I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!%)~ + v1.1a
END

IF ~~ v1.1a
SAY @2
++ @3 DO ~ActionOverride("X3Kal",JoinParty())~ EXIT
++ @4 + v1.2
END

IF ~~ v1.2
SAY @5
= @6
IF ~~ DO ~SetGlobal("X3KalKickedOut","LOCALS",1) MoveGlobal("AR0406","X3Kal",[615.1399])~ EXIT
END

END // for the APPEND X3KalP

CHAIN IF ~ReputationLT(Player1,2)~ THEN X3Kal rep-low 
@7
EXIT 

CHAIN IF ~Global("X3KalMet","GLOBAL",0)~ THEN X3KAl m1 
@8
DO ~SetGlobal("X3KalMet","GLOBAL",1)~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ m2a
IF ~!IsValidForPartyDialogue("X3Hel")~ EXTERN X3Kal m2b

CHAIN X3HelJ m2a 
@9
== X3Kal @10
== X3HelJ @11
EXTERN X3Kal m2b 

CHAIN X3Kal m2b 
@12
END 
++ @13 DO ~SetGlobal("X3KalPartyBG1","GLOBAL",1)~ + m3
++ @14 + m4 
++ @15 + m0a 

CHAIN X3Kal m0a
@16
 DO ~EscapeAreaMove("AR0406",615,1399,SW)~ EXIT 
 
 CHAIN X3Kal m0b 
 @17
 DO ~EscapeAreaMove("AR0406",615,1399,SW)~ EXIT 
 
CHAIN X3Kal m3 
@18
EXTERN X3Kal m5

CHAIN X3Kal m4 
@19
EXTERN X3Kal m5 

CHAIN X3Kal m5 
@20
== X3Kal @21
== X3Kal @22
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ m5b 
++ @23 + m6 
++ @24 + m7
++ @25 EXTERN X3Kal Gast
++  @26 + m0b 

CHAIN X3HelJ m5b 
@27
END 
++ @23 EXTERN X3Kal m6 
++ @24 EXTERN X3Kal m7
++ @25 EXTERN X3Kal Gast
++  @26 EXTERN X3Kal m0b 

CHAIN X3Kal Gast 
@28
END 
++ @29 EXTERN X3Kal m6 
++ @30 EXTERN X3Kal m7
++  @31 EXTERN X3Kal m0b 


CHAIN X3Kal m6 
@32
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3KalPartyBG1","GLOBAL",1)Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7a 
IF ~IsValidForPartyDialogue("X3Reb")OR(2)!Global("X3KalPartyBG1","GLOBAL",1)!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7b  
IF ~!IsValidForPartyDialogue("X3Reb")~ + m8

CHAIN X3Kal m7 
@33
END 
IF ~IsValidForPartyDialogue("X3Reb")Global("X3KalPartyBG1","GLOBAL",1)Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7a 
IF ~IsValidForPartyDialogue("X3Reb")OR(2)!Global("X3KalPartyBG1","GLOBAL",1)!Global("X3RebPartyBG1","GLOBAL",1)~ EXTERN X3RebJ m7b  
IF ~!IsValidForPartyDialogue("X3Reb")~ + m8

CHAIN X3RebJ m7a 
@34
== X3Kal @35
== X3RebJ @36
EXTERN X3Kal m8 

CHAIN X3RebJ m7b 
@37
== X3Kal @38
== X3RebJ @39
EXTERN X3Kal m8 

CHAIN X3Kal m8 
@40
DO ~AddJournalEntry(@30001,QUEST)JoinParty()~
EXIT

CHAIN IF ~Global("X3KalMet","GLOBAL",1)~ THEN X3Kal remeet
@41
END 
++ @42 + remeet1 
++ @43 EXIT 

CHAIN X3Kal remeet1 
@44
EXTERN X3Kal m8 

// Normal.
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
!Global("X3KalRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP p1
@45
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @46 + p2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @46 + p2b 
++ @47 + p3

CHAIN X3KalP p2a 
@48
END 
+~!IsValidForPartyDialogue("X3Hel")~+ @49 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
+~IsValidForPartyDialogue("X3Hel")~+ @49 EXTERN X3HelJ p2c
++ @50  DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP p2b 
@51
END
++ @52 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ @53 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3HelJ p2c 
@54
== X3KalP @55  
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT

CHAIN X3KalP p3 
@56
DO ~JoinParty()~ EXIT 

// Underdark 
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
!Global("X3KalRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP u1
@57
DO ~SetGlobal("X3KalApp","GLOBAL",6)~
END 
++ @58 + u2 
++ @59 DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)~ + u3 
++ @60 DO ~IncrementGlobal("X3KalApp","GLOBAL",-3)~ + u3 
++ @61 + p3 

CHAIN X3KalP u2 
@62
DO ~SetGlobal("X3KalKickedOut","LOCALS",0)~
EXIT 

CHAIN X3KalP u3 
@63
END 
IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ u5a 
IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ u5b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ EXTERN X3KalP u6 


CHAIN X3RebJ u5a 
@64
END
++ @65 + u7a 
+~GlobalGT("X3RebApp","GLOBAL",44)~+ @66 + u8a
+~GlobalLT("X3RebApp","GLOBAL",45)~+ @66 + u9a
++ @67 EXTERN X3KalP p3

CHAIN X3EmiJ u5b
@68
END
++ @69 + u7b 
+~GlobalGT("X3EmiApp","GLOBAL",44)~+ @70 + u8b
+~GlobalLT("X3EmiApp","GLOBAL",45)~+ @70 + u9b
++ @67 EXTERN X3KalP p3

CHAIN X3RebJ u7a
@71
DO ~LeaveParty()SetGlobal("X3KalKickedOut","LOCALS",1)SetGlobal("X3RebKickedOut","LOCALS",1)EscapeAreaMove("AR0319",516,330,S)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-6)~ EXIT

CHAIN X3RebJ u8a 
@72
== X3KalP @73
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-9)~ EXIT 

CHAIN X3RebJ u9a 
@74
END 
++ @75 + u7a 
++ @76 EXTERN X3KalP p3

CHAIN X3EmiJ u7b
@77
DO ~LeaveParty()SetGlobal("X3KalKickedOut","LOCALS",1)SetGlobal("X3EmiKickedOut","LOCALS",1)EscapeAreaMove("AR0704",531,622,SW)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-6)~ EXIT

CHAIN X3EmiJ u8b 
@78
== X3KalP @79
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))IncrementGlobal("X3KalApp","GLOBAL",-9)~ EXIT 

CHAIN X3EmiJ u9b 
@80
END 
++ @81 + u7b 
++ @76 EXTERN X3KalP p3

CHAIN X3KalP u6
@82
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)EscapeAreaMove("AR0406",615,1399,SW)IncrementGlobal("X3KalApp","GLOBAL",-9)~ EXIT


// Romance
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
Global("X3KalRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP rp1
@83
END 
+~!Global("Chapter","GLOBAL",%bg2_chapter_4%)!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @84 + rp2a
+~OR(2)Global("Chapter","GLOBAL",%bg2_chapter_4%)Global("Chapter","GLOBAL",%bg2_chapter_7%)~+ @84 + rp2b 
++ @85 DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + rp2c 
++ @86 + rp3

CHAIN X3KalP rp2a 
@87
END 
++ @88 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ @89 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP rp2b 
@90
END
++ @91 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ @89 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP rp2c 
@92
END
++ @93 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT
++ @89 DO ~SetGlobal("X3KalKickedOut","LOCALS",1)~ EXIT 

CHAIN X3KalP rp3 
@94
DO ~JoinParty()~ EXIT 

// Underdark Romance
CHAIN IF 
~Global("X3KalKickedOut","LOCALS",0)
Global("X3KalRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN X3KalP ru1
@95
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @96 + ru2 
++ @97 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + ru3 
++ @98 DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalAppChange","GLOBAL",-5)~ + ru4
++ @99 + rp3a 

CHAIN X3KalP ru2 
@100
DO ~SetGlobal("X3KalKickedOut","LOCALS",0)~
EXIT 

CHAIN X3KalP ru3 
@101
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5a
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ ru5b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ DO ~SetGlobal("X3KalKickedOut","LOCALS",0)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT

CHAIN X3KalP ru4 
@102
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ ru5a
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ ru5b
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ DO ~SetGlobal("X3KalKickedOut","LOCALS",0)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT

CHAIN X3RebJ ru5a
@64
END
++ @65 + u7a 
+~GlobalGT("X3RebApp","GLOBAL",44)Global("X3KalRomanceActive","GLOBAL",2)~+ @66 + ru8a
+~GlobalGT("X3RebApp","GLOBAL",44)!Global("X3KalRomanceActive","GLOBAL",2)~+ @66 + u8a
+~GlobalLT("X3RebApp","GLOBAL",45)~+ @66 + ru9
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3b

CHAIN X3EmiJ ru5b
@103
END
++ @104 + u7b
+~GlobalGT("X3RebApp","GLOBAL",44)Global("X3KalRomanceActive","GLOBAL",2)~+ @66 + ru8b
+~GlobalGT("X3RebApp","GLOBAL",44)!Global("X3KalRomanceActive","GLOBAL",2)~+ @66 + u8b
+~GlobalLT("X3RebApp","GLOBAL",45)~+ @66 + ru9
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3b

CHAIN X3RebJ ru8a 
@72
== X3KalP @105
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT 

CHAIN X3EmiJ ru8b 
@78
== X3KalP @106
DO ~SetGlobal("X3KalKickedOut","LOCALS",1)ActionOverride("X3Kal",EscapeAreaMove("AR0406",615,1399,SW))~ EXIT 


CHAIN X3RebJ ru9 
@74
END 
++ @107 + u7a
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3b

CHAIN X3EmiJ ru9 
@80
END 
++ @108 + u7b
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3a
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @67 EXTERN X3KalP rp3b

CHAIN X3KalP rp3a 
@109 
DO ~JoinParty()~ EXIT 

CHAIN X3KalP rp3b 
@110 
DO ~JoinParty()~ EXIT 

// Kale will join any rep above 1.
CHAIN IF ~ReputationGT(Player1,1)GlobalGT("X3KalApp","GLOBAL",-90)Global("X3KalKickedOut","LOCALS",1)!Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3KalP rj
@111
END 
++ @112 + rj1
++ @113 + rj2

// Romance is a lot more forgiving with reputation, no number limit.
CHAIN IF ~Global("X3KalKickedOut","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3KalP rr
@114
END 
	++ @115 + rj3
	++ @116 + rj4


CHAIN X3KalP rj1
@117
DO ~SetGlobal("X3KalKickedOut","LOCALS",0) JoinParty()~ EXIT


CHAIN X3KalP rj2
@118
EXIT


CHAIN X3KalP rj3
@119
DO ~SetGlobal("X3KalKickedOut","LOCALS",0) JoinParty()~ EXIT

CHAIN X3KalP rj4
@120
EXIT

CHAIN IF ~GlobalLT("X3KalApp","GLOBAL",-89)~ THEN X3KalP nothinga
@121 
EXIT 


CHAIN IF ~ReputationLT(Player1,2)~ THEN X3KalP rep-low-not-partied 
@122
EXIT 