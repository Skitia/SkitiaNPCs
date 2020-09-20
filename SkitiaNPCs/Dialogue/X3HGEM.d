BEGIN X3HGEM

CHAIN IF ~True()~ THEN X3HGEM TalkOnly
~You seeking some fine gems and jewels for your lover, or just have a fine eye for beauty? Gigi's Gems has everything you could dream of.~
END 
++ ~Let me see what you have for sale.~ DO ~StartStore("X3HGEM",LastTalkedToBy())~ EXIT // Opens the Jewelry's Store. Contains gems, necklaces, rings, and the special Engagement Ring and Scrying Crystal.
+~Global("X3HelToBQuest","GLOBAL",3)!PartyHasItem("X3HGEM")~+ ~Do you perhaps have a Scrying Crystal?~ DO ~AddJournalEntry(@17,QUEST)~  + HelgaGem
+~Global("X3HelToBQuest","GLOBAL",3)~+ ~Do you know of any scriers in the area?~ + HelgaScrier
++ ~No thank you.~ EXIT  



CHAIN X3HGEM HelgaScrier 
~Only Abermon. He is a gruff old mage that usually visits the inn. After an incident with the monks, he only provides his divination services for a large fee.~
END 
++ ~Let me see what you have for sale.~ DO ~StartStore("X3HGEM",LastTalkedToBy())~ EXIT  // Open Store
+~Global("X3HelToBQuest","GLOBAL",3)!PartyHasItem("X3HGEM")~+ ~Do you perhaps have a Scrying Crystal?~ DO ~AddJournalEntry(@17,QUEST)~  + HelgaGem
++ ~No thank you.~ EXIT 

CHAIN X3HGEM HelgaGem 
~Only one. If you have the coins, you can buy it from my wares. Whether you wish it for its magic or beauty, it will serve you well.~
END 
++ ~Let me see what you have for sale.~ DO ~StartStore("X3HGEM",LastTalkedToBy())~ EXIT  // Open Store
+~Global("X3HelToBQuest","GLOBAL",3)~+ ~Do you know of any scriers in the area?~ + HelgaScrier
++ ~No thank you.~ EXIT 
