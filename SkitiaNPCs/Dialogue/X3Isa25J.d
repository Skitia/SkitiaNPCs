//Pre-Saradush 

I_C_T SAREV25A 0 X3RebSAREV25A
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")Global("X3IsaPartyBG1","GLOBAL",1)~ THEN @0
END

// Saradush Essential Interjections
EXTEND_BOTTOM SARPROVM 0
IF ~Global("X3IsaRomanceActive","GLOBAL",2)IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J SARPROVM-Care
END

CHAIN X3Isa25J SARPROVM-Care 
@1
EXTERN SARPROVM 1

EXTEND_BOTTOM SARVOLO 9
+ ~InParty("X3Isa")!Global("X3IsaRomanceActive","GLOBAL",2)~ + @2 + X3IsaVoloBio1
+ ~InParty("X3Isa")Global("X3IsaRomanceActive","GLOBAL",2)~ + @2 + X3IsaVoloBio2
END

CHAIN SARVOLO X3IsaVoloBio1
@3
END 
IF ~!IsValidForPartyDialogue("X3Isa")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J X3IsaVoloBio


CHAIN SARVOLO X3IsaVoloBio2
@4
END 
IF ~!IsValidForPartyDialogue("X3Isa")~ EXTERN SARVOLO 9
IF ~IsValidForPartyDialogue("X3Isa")~ EXTERN X3Isa25J X3IsaVoloBio



CHAIN X3Isa25J X3IsaVoloBio
@5
EXTERN SARVOLO 9


// non-romanced

I_C_T FINSOL01 27 X3IsaSolarFriend1
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")!Global("X3IsaRomanceActive","GLOBAL",2)Alignment("X3ISA",LAWFUL_NEUTRAL)~ THEN @65
END

I_C_T FINSOL01 27 X3IsaSolarFriend2
== X3Isa25J IF ~IsValidForPartyDialogue("X3Isa")!Global("X3IsaRomanceActive","GLOBAL",2)!Alignment("X3ISA",LAWFUL_NEUTRAL)~ THEN @66
END

// romanced, Vienxay and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Isa")Global("X3IsaRomanceActive","GLOBAL",2) Global("X3IsaSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3IsaSolarPers","GLOBAL",1)~ EXTERN X3Isa25J X3IsaSolarPers
END

CHAIN X3Isa25J X3IsaSolarPers
@67
END
+~Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @68 + FinalChoice.1A
+~!Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @68 + FinalChoice.1B
+~Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @69 + FinalChoice.1A
+~!Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @69 + FinalChoice.1B
+~Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @70 + FinalChoice.1A
+~!Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @70 + FinalChoice.1B
+~Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @71 + FinalChoice.1A
+~!Alignment("X3ISA",LAWFUL_NEUTRAL)~+ @71 + FinalChoice.1B

CHAIN X3Isa25J FinalChoice.1A 
@72
EXTERN X3Isa25J FinalChoice.2

CHAIN X3Isa25J FinalChoice.1B
@73
EXTERN X3Isa25J FinalChoice.2

CHAIN X3Isa25J FinalChoice.2
@74
END 
IF ~!PartyHasItem("X3RingI")~ EXTERN X3Isa25J FinalChoice.3
IF ~PartyHasItem("X3RingI")~ EXTERN X3Isa25J FinalChoice.4

CHAIN X3Isa25J FinalChoice.4
@75
END
COPY_TRANS FINSOL01 27

CHAIN X3Isa25J FinalChoice.3
@76
END
COPY_TRANS FINSOL01 27



// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Isa") Global("X3IsaRomanceActive","GLOBAL",2) Global("X3IsaSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3IsaSolarLeave","GLOBAL",1)~ EXTERN X3Isa25J X3IsaSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Isa") Global("X3IsaRomanceActive","GLOBAL",2) Global("X3IsaSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3IsaSolarLeave","GLOBAL",1)~ EXTERN X3Isa25J X3IsaSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Isa") Global("X3IsaRomanceActive","GLOBAL",2) Global("X3IsaSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3IsaSolarLeave","GLOBAL",1)~ EXTERN X3Isa25J X3IsaSolarLeave
END

CHAIN X3Isa25J X3IsaSolarLeave
@77
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Isa") Global("X3IsaRomanceActive","GLOBAL",2) Global("X3IsaSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3IsaSolarStay","GLOBAL",1)~ EXTERN X3Isa25J X3IsaSolarStay
END

CHAIN X3Isa25J X3IsaSolarStay
@78
END
++ @79 EXTERN X3Isa25J X3IsaSolarStay1.1
++ @80 EXTERN X3Isa25J X3IsaSolarStay1.1
++ @81 EXTERN X3Isa25J X3IsaSolarStay1.1

CHAIN X3Isa25J X3IsaSolarStay1.1
@82
END
IF ~PartyHasItem("X3RingI")~ EXTERN X3Isa25J StayChoice.1
IF ~!PartyHasItem("X3RingI")~ EXTERN X3Isa25J StayChoice.2


CHAIN X3Isa25J StayChoice.1 
@83
END 
COPY_TRANS FINSOL01 32

CHAIN X3Isa25J StayChoice.2
@84
END 
COPY_TRANS FINSOL01 32

//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25J engagement 
@6
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @7 + engagement_doubts
++ @8 + engagement_yes 
++ @9 + engagement_yes 

CHAIN X3Isa25J engagement_yes 
@11
EXTERN X3Isa25J engagement_yes2 

CHAIN X3Isa25J engagement_doubts
@10
EXTERN X3Isa25J engagement_yes2 

CHAIN X3Isa25J engagement_yes2 
@12
DO ~TransformItem("X3ERING","X3RINGE")~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @13
== X3Vie25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @14
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3IsaRomanceActive","GLOBAL",2)~ THEN X3Isa25J engagement_auto_fail 
@15
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @16 + eaf.1 
++ @17 + eaf.2
++ @18 + eaf.2

CHAIN X3Isa25J eaf.1 
@19
EXTERN X3Isa25J eaf.3 

CHAIN X3Isa25J eaf.2 
@25
EXTERN X3Isa25J eaf.3

CHAIN X3Isa25J eaf.3
@20
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN @21
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN @22
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN @23
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN @24
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

// Group Kiss from PID 
CHAIN X3Isa25J Group.Kiss 
@26
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN @27
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN @28
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN @29
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN @30
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN @31
== X3Isa25J @32
== X3Isa25J @33
EXIT 

APPEND X3Isa25J 

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY @49
= @50
= @51
++ @52 + LBreak.1
++ @53 + LBreak.2 
++ @54 + LBreak.3 
END 

IF ~~ LBreak.1 
SAY @55
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3IsaRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY @56
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3IsaRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY @57
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3IsaRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY @58
++ @59 + LBreak.5 
++ @60 + LBreak.6 
++ @61 + LBreak.7
END 

IF ~~ LBreak.5 
SAY @62
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY @63
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY @64
IF ~~ EXIT 
END 

// -40 Approval 

IF ~Global("X3Break","LOCALS",1)~ Break
SAY @34
= @35
++ @36 + Break.1 
++ @37 + Break.2 
++ @38 + Break.1
END 

IF ~~ Break.1
SAY @40
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @39
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @41
++ @42 + Break.5
++ @43 + Break.4
++ @44 + Break.6 
END 

IF ~~ Break.5 
SAY @48
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.4 
SAY @47
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.6
SAY @45
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)IncrementGlobal("X3IsaacApp","GLOBAL",15)DisplayStringNoNameDlg(Player1,@600619)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @46
= @47
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 



END 