BEGIN X3HSCRY

// Abermon
CHAIN IF ~Global("X3HScried","GLOBAL",0)~ THEN X3HSCRY quest1
~What, what what?! If you are another person pestering me about wanting to see what is inside monastery for its secrets, I am not doing it.~
END 
+~Global("X3HelToBQuest","GLOBAL",3)~+ ~You are a scrier, then? We actually want your help locating someone.~ + locating 
++ ~You are able to see inside the monastery?~ + monastery 
++ ~Don't be rude, I just wanted to ask some questions.~ + questions 
++ ~Sorry for bothering you.~ EXIT 

CHAIN X3HSCRY questions 
~I am not interested in answering questions. I am not here out of my own desire.~
END 
++ ~What do you mean?~ + mean
+~Global("X3HelToBQuest","GLOBAL",3)~+ ~You are a scrier, then? We actually want your help locating someone.~ + locating
++ ~You are able to see inside the monastery?~ + monastery
++ ~Sorry for bothering you.~ EXIT 

CHAIN X3HSCRY monastery 
~I can, yes. Will I for you? No. Anywhere else, perhaps, for the right price, *just* in case you are lying, but no, I will not scry someone in the monastery.~
END 
+~Global("X3HelToBQuest","GLOBAL",3)~+ ~We actually want your help locating someone.~ + locating 
++ ~Sorry for bothering you.~ EXIT 

CHAIN X3HSCRY mean 
~Scrying is a risky bit of magic. Sometimes you get lost in the place you are seeing. Sometimes you find yourself so deeply attuned to your surroundings you physically move there.~
= ~I was scrying a smuggler here on behalf of a robbed client, when I found myself right in the smugglers den. I had to cloak myself in an illusion and hastily make my way out before they gutted me.~
= ~I was earning coin to make my way back home until one of these local fools had me scrying Balthazar in the monastery. The monks found out and I was nearly murdered until I pointed at the person who asked of it. Then they murdered him instead in their name of justice.~
END 
+~Global("X3HelToBQuest","GLOBAL",3)~+ ~We actually want your help locating someone.~ + locating 
++ ~Sorry for bothering you.~ EXIT 

CHAIN X3HSCRY locating 
~And who is this person? I need a name, and some details.~
END 
++ ~It is a dwarf named Berk. He was a soldier defending Saradush against invaders.~ + Berk
++ ~Never mind. Forget we asked.~ + forget 

CHAIN X3HSCRY forget 
~Easily done.~
EXIT 

CHAIN X3HSCRY Berk
~Good enough. I need eight thousand coin, something that he touched or belonged to him, and a scrying crystal.~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I can supply that, <CHARNAME>. I have an old pin of his on my armor. I think it will do.~
== X3HSCRY IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~That it will, if  you have the rest.~
END 
+~InParty("X3Hel")PartyHasItem("X3HGEM")PartyGoldGT(7999)~+ ~We have everything you seek.~ DO ~TakePartyGold(8000)TakePartyItem("X3HGEM")~ + everything
+~!InParty("X3Hel")~+ ~I don't have anything that belonged to him. Can it still work in someway?~ + Helgaless
++ ~What is a scrying crystal?~ + crystal
++ ~Eight thousand coin?! Is there no way to lower the cost?~ + lower 
++ ~We we will return when we have everything we need.~ + return 

CHAIN X3HSCRY return
~Yeah yeah. Come back then.~
EXIT 

CHAIN X3HSCRY lower 
~Eight thousand is exactly what I need to cover the fees and the ship back. The Moonshae Isles are nowhere near this rotten desert. So it is non-negotiatable!~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I could always attempt the spell in his place, <CHARNAME>. It would be cheaper, though his skill is more assured than mine.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Why bother with this mageling when I am perfectly capable of doing this myself? I may have never cast it, but I have the knowledge and the power to do it if you desire.~
END 
+~InParty("X3Hel")~+ ~We have everything you seek.~ + everything
+~!InParty("X3Hel")~+ ~I don't have anything that belonged to him. Can it still work in someway?~ + Helgaless
++ ~What is a scrying crystal?~ + crystal
++ ~We we will return when we have everything we need.~ + return 

CHAIN X3HSCRY crystal 
~It is a crystal attuned with the right magical energy to allow us to see from afar. There are other tools that can be used, mirrors, seeing orbs, but I am not at my home in the Moonshae Isles and they are not accessible for me to use.~
END 
+~InParty("X3Hel")~+ ~We have everything you seek.~ + everything
+~!InParty("X3Hel")~+ ~I don't have anything that belonged to him. Can it still work in someway?~ + Helgaless
++ ~Eight thousand coin?! Is there no way to lower the cost?~ + lower 
++ ~We we will return when we have everything we need.~ + return 

CHAIN X3HSCRY Helgaless 
~No. You need something. If you know of a relation of his, they tend to have what you need. Otherwise this won't go anywhere.~
END 
++ ~Is there no way to lower the cost?~ + lower 
++ ~What is a scrying crystal?~ + crystal
++ ~We we will return when we have everything we need.~ + return 

CHAIN X3HSCRY everything 
~Good. Give it here, and I will begin. No distance is too far for me. This time I will make sure nothing goes wrong, either...~
DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Hcut05")~ 
EXIT 

CHAIN IF ~Global("X3HScried","GLOBAL",1)~ THEN X3HSCRY quest2
~I...great. This time I have a headache. I should get a different profession.~
END 
++ ~Are you okay?~ + dead 
++ ~What did you see?~ + dead 
++ ~Well? Tell us already.~ + dead 

CHAIN X3HSCRY dead 
~I am afraid the dwarf is dead. I saw his body under many others in a tower. If he is a friend of yours, I am sorry.~
== X3Hel25J ~Berk...why son? Why? I should have stayed in Saradush and fought beside him. This brings me great pain. Perhaps I should have never asked ye to do this.~
END 
++ ~It is hard news, but it is better to know than always wonder, Helga.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ EXTERN X3Hel25J wonder2
++ ~It isn't your fault that he didn't fight hard enough.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@209)~ EXTERN X3Hel25J hard2 
++ ~Going with him would have been a waste of your life.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~ EXTERN X3Hel25J waste2

CHAIN X3Hel25J hard2
~Didn't fight hard enough? Why ye...nay, nay. Getting riled up on yer insensitive words will do nothing for him. Just leave me alone.~
EXTERN X3HSCRY end

CHAIN X3HSCRY end
~If I am done here, I will be traveling and getting out of this place. I am sorry my sights could not bring better tidings, but I must go.~
DO ~AddExperienceParty(6000)AddJournalEntry(@18,QUEST_DONE)SetGlobal("X3HelToBQuest","GLOBAL",5)EscapeArea()~
EXIT 

CHAIN X3Hel25J wonder2
~Aye...aye, that it is.~
EXTERN X3Hel25J time2

CHAIN X3Hel25J waste2
~Ye don't know that. That can never be known. And yet I will concede ye may be right. *sigh*. I regret that I nay had more time with him.~
EXTERN X3Hel25J time2

CHAIN X3Hel25J time2
~I need a bit time to meself. Just...leave me be for a while, <CHARNAME>.~
EXTERN X3HSCRY end