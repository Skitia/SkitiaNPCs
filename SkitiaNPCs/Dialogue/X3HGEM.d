BEGIN X3HGEM

CHAIN IF ~True()~ THEN X3HGEM TalkOnly
@0
END 
++ @1 DO ~StartStore("X3HGEM",LastTalkedToBy())~ EXIT // Opens the Jewelry's Store. Contains gems, necklaces, rings, and the special Engagement Ring and Scrying Crystal.
+~Global("X3HelToBQuest","GLOBAL",3)!PartyHasItem("X3HGEM")~+ @2 DO ~AddJournalEntry(@20017,QUEST)~  + HelgaGem
+~Global("X3HelToBQuest","GLOBAL",3)~+ @3 + HelgaScrier
++ @4 EXIT  



CHAIN X3HGEM HelgaScrier 
@5
END 
++ @1 DO ~StartStore("X3HGEM",LastTalkedToBy())~ EXIT  // Open Store
+~Global("X3HelToBQuest","GLOBAL",3)!PartyHasItem("X3HGEM")~+ @2 DO ~AddJournalEntry(@20017,QUEST)~  + HelgaGem
++ @4 EXIT 

CHAIN X3HGEM HelgaGem 
@6
END 
++ @1 DO ~StartStore("X3HGEM",LastTalkedToBy())~ EXIT  // Open Store
+~Global("X3HelToBQuest","GLOBAL",3)~+ @3 + HelgaScrier
++ @4 EXIT 
