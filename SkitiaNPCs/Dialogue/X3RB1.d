
BEGIN X3RB 

CHAIN IF ~True()~ THEN X3RB One_Liner
~Watch yourself, or you'll wind up coinless and dead.~
EXIT 

BEGIN X3RB1 

CHAIN IF ~Global("X3RBanditSpawn","AR1700",2)~ THEN X3RB1 Only_Conversation 
~Well, what have we here? It's not free passage, you know. Hand over say...five hundred gold and you can be on your way.~
DO ~SetGlobal("X3RBanditSpawn","AR1700",3)~
END 
++ ~Really, you are going to rob me? Do you even know who I am?~ + Who
++ ~I am only here with interest regarding a purple iolite. Perhaps you can tell me if you've seen such a thing and then I'll be on my way.~ + Fee
+~PartyGoldGT(499)~+ ~No need for trouble, here is your gold.~ + Gold
++ ~I don't have that much gold.~ + Lying 
++ ~You'll have to get it from my body.~ + Attack 

CHAIN X3RB1 Attack 
~Really? I take no pleasure in killing, but you've forced my hand. At them!~
DO ~ActionOverride("X3RB2",Enemy())
	  ActionOverride("X3RB3",Enemy())
	  ActionOverride("X3RB4",Enemy())
	  ActionOverride("X3RB5",Enemy())
	  ActionOverride("X3RB6",Enemy())
	  Enemy()
	  ApplySpell(Myself,WARRIOR_POWER_ATTACK)~ EXIT 

CHAIN X3RB1 Lying 
~Lying, eh? We can beat you up and check for it. How rough do you want this to be?~
END 
++ ~Really, you are going to rob me? Do you even know who I am?~ + Who
++ ~I am only here with interest regarding a purple iolite. Perhaps you can tell me if you've seen such a thing and then I'll be on my way.~ + Fee
+~PartyGoldGT(499)~+ ~No need for trouble, here is your gold.~ + Gold
+~PartyGoldLT(500)~+ ~I'm really not lying! Have some sympathy.~ + Not_Lying 
++ ~You'll have to get it from my body.~ + Attack  

CHAIN X3RB1 Fee 
~Not until you pay up.~
END 
++ ~Really, you are going to rob me? Do you even know who I am?~ + Who
+~PartyGoldGT(499)~+ ~No need for trouble, here is your gold.~ + Gold
+~PartyGoldLT(500)~+ ~I'm really not lying! Have some sympathy.~ + Not_Lying 
++ ~You'll have to get it from my body.~ + Attack 

CHAIN X3RB1 Not_Lying 
~Tymora's golden locks, you're telling the truth. Well...I suppose we'll have to manage with everything you have equipped, then. Go on.~
END 
++ ~That is not happening! Do you even know who you are speaking to?~ + Who
++ ~I am afraid I can't allow that. I will defend myself if I must.~ + Attack 
++ ~You'll have to get it from my body.~ + Attack  

CHAIN X3RB1 Gold 
~Ah, finally someone sensible. Well, you've bought yourself safety. Pass in peace.~ 
DO ~TakePartyGold(500)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Hardly, necessary, if you ask me.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@503)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Cowardice.~ 
DO ~IncrementGlobal("X3HelApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@206)~
EXIT 


CHAIN IF ~Global("X3RBanditSpawn","AR1700",3)~ THEN X3RB1 Second_Conversation_Somehow 
~You can travel freely without further pay. For now.~
END 
++ ~Can you tell me if you've seen a purple iolite gem?~ + Gem 
++ ~Your terror here ends, bandit.~ + Attack 
++ ~Farewell, then.~ EXIT 

CHAIN X3RB1 Who 
~This will be rich. Who then, are you?~
END 
+~OR(2)ReputationGT(Player1,16)ReputationLT(Player1,5)~+ ~I am <CHARNAME>.~ + Scared 
+~!ReputationGT(Player1,16)!ReputationLT(Player1,5)~+ ~I am <CHARNAME>.~ + Careless 
++ ~I am your death!~ + Attack 
++ ~Well, actually, I'm not going to tell you.~ + Attack 

CHAIN X3RB1 Careless 
~Well, look at my face, does it look like that name means anything to me? Now payup, and make it quick.~
END 
+~PartyGoldGT(499)~+ ~No need for trouble, here is your gold.~ + Gold
++ ~You'll have to get it from my body.~ + Attack 
+~PartyGoldLT(500)~+ ~I don't even have enough to pay you!~ + Attack 

CHAIN X3RB1 Gem 
~More than seen it. Took this beauty from a coward who abandoned his entire trade wagon to get away on his horse.~
END 
++ ~Can you give it to us?~ + Not_For_Free 
++ ~How much will you give for it?~ + Not_For_Free
++ ~I see. Well, I will have to kill you for it.~ + Attack 

CHAIN X3RB1 Not_For_Free 
~Not for free. A thousand gold, maybe. We don't get many hits out here. Getting triple the fee in gold though? That will sate me.~
END 
++ ~I can't afford that.~ + Afford 
+~PartyGoldGT(999)~+ ~Here is your gold, then.~ + Trade 
++ ~I see. Well, I will have to kill you for it.~ + Attack 

CHAIN X3RB1 Trade 
~Here you are then. Thing is probably only worth half, so bargain goes my way. Let's get out of here.~
END 
IF ~~ DO ~TakePartyGold(1000)GiveItem("X3RGEM",Player1)ActionOverride("X3RB2",EscapeArea())ActionOverride("X3RB3",EscapeArea())ActionOverride("X3RB4",EscapeArea())
ActionOverride("X3RB5",EscapeArea())ActionOverride("X3RB6",EscapeArea())EscapeArea()~ UNSOLVED_JOURNAL @34
EXIT 

CHAIN X3RB1 Afford 
~Too bad. Move along, we need to keep an eye out for other marks.~
EXIT 

CHAIN X3RB1 Scared 
~Holy Mask's Bloody Dagger. <CHARNAME>? We've heard tales all about you in Althkata and even beyond.~
= ~So uh, forget that fee! In fact, take this gem as our condolences as we get out of your hair! And uh...good luck on your adventures.~
= ~All of you, get! Let's get far, far, far away from this <PRO_MANWOMAN> before they decide to put their skills against us!~
END 
IF ~~ DO ~GiveItem("X3RGEM",Player1)ActionOverride("X3RB2",EscapeArea())ActionOverride("X3RB3",EscapeArea())ActionOverride("X3RB4",EscapeArea())
ActionOverride("X3RB5",EscapeArea())ActionOverride("X3RB6",EscapeArea())EscapeArea()~ UNSOLVED_JOURNAL @34
EXIT 
