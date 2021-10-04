 // This dialogue file handles all final conversation files for Emily's finale.
//It starts when Charles Castilla is spoken to.

// Catherine represents House Shieldheart

// Cut scene before should have the lines:
/* Thomas: How much longer are we going to wait, father? She does not care about the estate or your lands.~
   Thomas's Lover: If she is not here soon, I say that should disqualify her.
   Thomas: Speak of the Devil...
   
*/ 



CHAIN IF ~GlobalLT("X3EmiQuest","GLOBAL",5)~ THEN X3EFATH where_is_emily
@0
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",5)IsValidForPartyDialogue("X3Emi")~ THEN X3EFATH finale.2
@1
== X3EFATH @2
== X3EmiJ @3
== X3EBRO @4
== X3EFATH @5
== X3ECATH @6
== X3EDAR @7
== X3ECATH @8
== X3EFATH @9
END 
IF ~Global("X3ECHVote","GLOBAL",1)~ EXTERN X3ECH vote_Emily 
IF ~!Global("X3ECHVote","GLOBAL",1)~ EXTERN X3ECH vote_Thomas

CHAIN X3ECH vote_Emily 
@10
== X3EmiJ @11
== X3EBRO @12
== X3ECH @13
== X3EFATH @14
END 
// Gregory Von Jurgenson will vote no irregardless here. 
IF ~Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ vote_betrayed // Betrayed Vote 
IF ~!Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ no_vote // no vote 

CHAIN X3ECH vote_Thomas 
@15
== X3EBRO @16
== X3EmiJ @17
== X3ECH @18
== X3EFATH @19
END 
IF ~Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ vote_betrayed // Betrayed Vote 
IF ~!Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ no_vote// No Vote 

CHAIN X3EGVJ vote_betrayed 
@20
END 
++ @21 + judge 
++ @22 + traitor
++ @23 EXTERN X3EBRO tie_barbaric 

CHAIN X3EGVJ traitor 
@24
EXTERN X3EmiJ tie_tie 

CHAIN X3EGVJ judge 
@25
EXTERN X3EmiJ tie_tie

//Cutting
/*
CHAIN X3EGVJ yes_vote 
~I support your daughter, Thomas. I will not forget how she assisted with a dispute between two merchants in service to me. Such diplomacy and grace will be key to a successful leadership of House Castilla.~
== X3EBRO ~I thought I could count on you, Jurgenson. It seems you fell for her gentle demeanor.~
== X3EGVJ ~If you were less arrogant, Thomas, perhaps I would have voted differently. Learn well.~
END 
++ ~This makes it a tie. Does your father break it, Emily?~ EXTERN X3EmiJ tie_tie
++ ~Thank you for supporting Emily, Jurgenson.~ EXTERN X3EmiJ tie_tie
++ ~What happens now?~ EXTERN X3EmiJ tie_tie
*/
CHAIN X3EGVJ no_vote 
@26
END 
+~!Global("X3ECHVote","GLOBAL",1)~ + @27 EXTERN X3EFATH thomas_wins
+~Global("X3ECHVote","GLOBAL",1)~ + @28 EXTERN X3EmiJ tie_tie
+~!Global("X3ECHVote","GLOBAL",1)~ + @29 EXTERN X3EmiJ thomas_won
+~Global("X3ECHVote","GLOBAL",1)~ + @29 EXTERN X3EBRO tie_barbaric
++ @30 EXTERN X3EmiJ thomas_won_2 

CHAIN X3EmiJ thomas_won 
@31
EXTERN X3EFATH thomas_wins 

CHAIN X3EmiJ thomas_won_2 
@32
EXTERN X3EFATH thomas_wins 

CHAIN X3EBRO tie_barbaric 
@33
EXTERN X3EmiJ tie_tie 

CHAIN X3EmiJ tie_tie 
@34
EXTERN X3EFATH tie_breaker 

CHAIN X3EFATH thomas_wins
@35
== X3EmiJ @36
== X3EBRO @37
== X3EFATH @38
== X3EBRO @39
== X3EFATH @40
== X3EBRO @41
== X3EFATH @42
== X3EmiJ @43
== X3ECATH @44
== X3EmiJ @45
== X3EBRO @46
DO ~AddJournalEntry(@10014,QUEST_DONE)SetGlobal("X3EmiQuest","GLOBAL",11) 
ActionOverride("X3ECH",EscapeArea())
ActionOverride("X3ECATH",EscapeArea())
ActionOverride("X3EGVJ",EscapeArea())ActionOverride("X3EDAR",EscapeArea())ActionOverride("X3EFATH",EscapeArea())EscapeArea()~ EXIT 
// 10 = Done.

CHAIN X3EFATH tie_breaker 
@47
== X3EBRO @48
== X3EBRO @49
END 
IF ~Global("X3EGVJVote","GLOBAL",1)Global("X3ECHVote","GLOBAL",1)~ EXTERN X3EBRO vote_sway 
IF ~OR(2)!Global("X3EGVJVote","GLOBAL",1)!Global("X3ECHVote","GLOBAL",1)~ EXTERN X3EBRO background_reveal

CHAIN X3EBRO vote_sway 
@50
END 
++ @51 + changed_vote
++ @52 + father_daughter
++ @53 EXTERN X3ECH no_change 

CHAIN X3EBRO background_reveal 
@54
== X3EBRO @55
END 
++ @56 + judge 
++ @52 + father_daughter
++ @53 EXTERN X3ECH no_change 

CHAIN X3EBRO changed_vote 
@57
EXTERN X3ECH no_change 

CHAIN X3EBRO father_daughter 
@58
EXTERN X3EBRO duel_call

CHAIN X3EBRO judge 
@59
EXTERN X3EBRO duel_call 

CHAIN X3ECH no_change 
@60
EXTERN X3EBRO duel_call 

CHAIN X3EBRO duel_call 
@61
== X3EFATH @62
== X3EBRO @63
== X3EGVJ @64
END 
++ @65 EXTERN X3EmiJ we_do
++ @66 + duel_ring
++ @67 EXTERN X3EFATH stop 

CHAIN X3EFATH stop 
@68
== X3EBRO @69
== X3EmiJ @70
EXTERN X3EBRO duel_ring 

CHAIN X3EBRO duel_ring 
@71
DO ~AddJournalEntry(@10015,QUEST)SetGlobal("X3EmiQuest","GLOBAL",6)
ActionOverride("X3EBRO",EscapeAreaMove("AR0406",1440,1928,SW))
ActionOverride("X3EFATH",EscapeAreaMove("AR0406",1339,1912,SE))
ActionOverride("X3ECH",EscapeArea())
ActionOverride("X3ECATH",EscapeArea())
ActionOverride("X3EGVJ",EscapeArea())ActionOverride("X3EDAR",EscapeArea())~ EXIT 


CHAIN X3EmiJ we_do 
@72
EXTERN X3EBRO duel_ring 

// The Duel 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)~ THEN X3EFATH sad_duel 
@73
EXIT 
