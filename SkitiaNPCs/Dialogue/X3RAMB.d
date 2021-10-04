 BEGIN X3RAMB1 

/* Recorder's first ambush */
/* Both groups should already be hostile. The first group's letter is vague, but the second indicates Recorder in more detail and who to return to. Recorder will pipe up when that item is picked up, but not the first.*/

CHAIN IF ~True()~ THEN X3RAMB1 ambush 
@0
END 
++ @1 + who
++ @2 + blades
++ @3 + who

CHAIN X3RAMB1 who 
@4
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ recognize 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3RAMB1 strike 

CHAIN X3RAMB1 blades
@5
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ recognize 
IF ~!IsValidForPartyDialogue("X3Reb")~ EXTERN X3RAMB1 strike 

CHAIN X3RAMB1 strike 
@6
DO ~AddJournalEntry(@40004,QUEST)~
EXIT 

CHAIN X3RebJ recognize 
@7
== X3RAMB1 @8
DO ~AddJournalEntry(@40004,QUEST)~
EXIT 

BEGIN X3RAMB2 

CHAIN IF ~True()~ THEN X3RAMB2 ambush2 
@9
END 
+~IsValidForPartyDialogue("X3Reb")~+ @10 + confused_is 
+~!IsValidForPartyDialogue("X3Reb")~+ @10 + confused_isnt 
+~IsValidForPartyDialogue("X3Reb")~+ @11 + who_is 
+~!IsValidForPartyDialogue("X3Reb")~+ @11 + confused_isnt 
+~IsValidForPartyDialogue("X3Reb")~+ @12 + confused_is 
+~!IsValidForPartyDialogue("X3Reb")~+ @12 + confused_isnt 

CHAIN X3RAMB2 confused_is 
@13
EXTERN X3RebJ Recorder_Rebecca 

CHAIN X3RAMB2 who_is 
@14
EXTERN X3RebJ Recorder_Rebecca 

CHAIN X3RebJ Recorder_Rebecca
@15
== X3RAMB2 @16
EXIT 

CHAIN X3RAMB2 confused_isnt 
@17
== X3Ramb2 @18
EXIT 
