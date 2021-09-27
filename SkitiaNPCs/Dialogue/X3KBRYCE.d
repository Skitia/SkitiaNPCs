BEGIN X3KBRYCE

CHAIN IF ~!AreaCheck("AR0527")Global("X3PreTalk","LOCALS",1)!Race(Player1,HALFLING)!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ THEN X3KBRYCE default 
@0
END 
++ @1 + jillian_talk
++ @2 + do_here
++ @3 EXIT 

CHAIN IF ~!AreaCheck("AR0527")Global("X3PreTalk","LOCALS",1)OR(3)Race(LastTalkedToBy(),HALFLING)IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("Mazzy")~ THEN X3KBRYCE halfling
@4
END 
IF ~IsValidForPartyDialogue("Mazzy")~ EXTERN MAZZYJ Mazzy_pick
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ EXTERN X3KalJ Kale_pick
++ @5 + jillian_talk
++ @6 + fool_me 
+~!Class(Player1,THIEF_ALL)!Class(Player1,BARD_ALL)~+ @7 + fool_me 
+~OR(2)Class(Player1,THIEF_ALL)Class(Player1,BARD_ALL)~+ @8 + fool_me 

CHAIN X3KalJ Kale_pick 
@9
EXTERN X3KBRYCE fool_me  

CHAIN MAZZYJ Mazzy_pick 
@10
EXTERN X3KBRYCE fool_me 

CHAIN X3KBRYCE fool_me 
@11
END 
++ @5 + jillian_talk
++ @2 + do_here
++ @3 + nevermind_me

CHAIN X3KBRYCE do_here 
@12
END 
++ @5 + jillian_talk
++ @3 + nevermind_me

CHAIN X3KBRYCE jillian_talk
@13
EXIT 

CHAIN X3KBRYCE nevermind_me 
@14
EXIT 

CHAIN IF ~AreaCheck("AR0527")~ THEN X3KBRYCE final_meeting 
@15
END 
++ @16 + fm_1 
++ @17 + fm_2 
++ @18 + fm_3 

CHAIN X3KBRYCE fm_1 
@19
END 
IF ~IsValidForPartyDialogue("MAZZY")~ EXTERN MAZZYJ fm_reaction_mazzy
IF ~IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KalJ fm_reaction_kale
IF ~!IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KBRYCE fm_3

CHAIN X3KBRYCE fm_2 
@20
END 
IF ~IsValidForPartyDialogue("MAZZY")~ EXTERN MAZZYJ fm_reaction_mazzy
IF ~IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KalJ fm_reaction_kale
IF ~!IsValidForPartyDialogue("X3Kal")!ISValidForPartyDialogue("MAZZY")~ EXTERN X3KBRYCE fm_3 

CHAIN X3KBRYCE fm_3 
@21
DO ~Enemy()AddJournalEntry(@30015,QUEST)~ 
EXIT 

CHAIN MAZZYJ fm_reaction_mazzy 
@22
== X3KBRYCE @23
EXTERN X3KBRYCE fm_3 

CHAIN X3KalJ fm_reaction_kale
@24
== X3KBRYCE @25
EXTERN X3KBRYCE fm_3 


