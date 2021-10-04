BEGIN X3RPIR1

CHAIN IF ~Dead("X3RPHEL")~ THEN X3RPIR1 Fight 
@0
DO ~ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT

CHAIN IF ~!IsValidForPartyDialogue("X3Reb")~ THEN X3RPIR1 Talk 
@1
EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Reb")~ THEN X3RPIR1 Talk_Recorder
@2
== X3RebJ @3
== X3RPIR1 @4
== X3RebJ @5
== X3RPIR1 @6
END 
+~Global("AsylumPlot","GLOBAL",10)~+ @7 + Pirate.1
++ @8 + Pirate.2
++ @9 + Pirate.3
++ @10 EXTERN X3RebJ Pirate.4

CHAIN X3RebJ Pirate.4
@11
== X3RPIR1 @12
DO ~AddJournalEntry(@40010,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 

CHAIN X3RPIR1 Pirate.3 
@13
DO ~AddJournalEntry(@40010,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 

CHAIN X3RPIR1 Pirate.2 
@14
DO ~AddJournalEntry(@40010,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 

CHAIN X3RPIR1 Pirate.1
@15
 DO ~AddJournalEntry(@40010,QUEST)ActionOverride("X3RPIR2",Enemy())ActionOverride("X3RPIR3",Enemy())Enemy()~
EXIT 
