// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Hel")
See("AERIE")
Global("X3HelAERIE","GLOBAL",0)~ THEN BX3Hel X3HelAERIE1
~Ye sure you can manage yerself, elf? You look as frail as a stick.~ [X3Blank]
DO ~SetGlobal("X3HelAERIE","GLOBAL",1)~
== BAERIE ~M-me? Are you talking to me?~
== BX3Hel ~Aye. Not much muscle on ye. And ye don't look like ye could take a good hit at all.~
== BAERIE ~My uncle Quayle taught me well. I know I am not a warrior like others, but I am of use to you.~
== BX3Hel ~Pah. I have my doubts, lass. But I'll prepare a few extra healing spells for yer sake.~
== BAERIE ~I am a healer too, Helga. I can take care of myself.~
== BX3Hel ~We will see about that, won't we?~
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Hel")
See("AERIE")
Global("X3HelAERIE","GLOBAL",1)~ THEN BX3Hel X3HelAERIE2
~Pah. I hate to say it, but I may have been wrong about ye, Aerie.~ [X3Blank]
DO ~SetGlobal("X3HelAERIE","GLOBAL",2)~
== BAERIE ~What do you mean, Helga?~
== BX3Hel ~All the clerics I be knowing have been warriors. Tough and sturdy and good with a hammer. Nay spell flingers. So when I watched ye, I thought less of ye. But ye've saved me a time or two, and it's changed my tune.~
== BAERIE ~Thank you for saying, that Helga. I appreciate it.~
== BX3Hel ~Now that nay mean ye shouldn't work on yer combat or strength. I know a few exercises ye could be doing daily to bulk up a bit.~
== BAERIE ~I...I think I am fine, Helga.~
== BX3Hel ~Pah. Ye elves and yer desire to be so damn lean.~
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelANOMEN","GLOBAL",0)~ THEN BANOMEN X3HelANOMEN1
~You are an interesting sight in battle, Helga. Your primtive god must be pleased by whatever blood sacrifices you have given up.~ [X3Blank]
DO ~SetGlobal("X3HelANOMEN","GLOBAL",1)~
== BX3Hel ~What, you don't give your god the head of your foes at the foot of her altar? I didn't know yer human gods were behind with the times.~
== BANOMEN ~Helm is above the sacrifice of beast and foe for blessing. You are jealous. I would be to, in your position.~
== BX3Hel ~Jealous of some noble, temple boy? Ye listen well. I've been fighting for three times as long as ye've been alive, and Haela Brightaxe has kept me true through all of it. Ye become a veteran Anomen, and then ye can mouth at me.~
== BANOMEN ~I see you wallow in a deep lake of self-frustration. I'll listen to it no longer.~
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelANOMEN","GLOBAL",1)~ THEN BANOMEN X3HelANOMEN2
~I take back my earlier comments, Helga. You have proven your worth despite the choice of god you serve.~ [X3Blank]
DO ~SetGlobal("X3HelANOMEN","GLOBAL",2)~
== BX3Hel ~Bah. I was nay serious before either, Anomen. I don't throw dead heads of fallen ogres at her altar at night either. We both be serving our gods through adventure. Can we nay respect one another's faiths?~
== BANOMEN ~We could. Have you considered service to Helm?~
== BX3Hel ~Pah. Ye answered my question for me with that.~
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Hel")
See("CERND")
Global("X3HelCERND","GLOBAL",0)~ THEN BX3Hel X3HelCERND1
~Bah. Where is yer revel in the battle, Cernd? Is the road even a place for ye?~ [X3Blank]
DO ~SetGlobal("X3HelCERND","GLOBAL",1)~
== BCERND ~The raging cheetah quickly tires herself if she charges forward with no cunning or pause of following steps. Prey lives when the predator does not think.~
== BX3Hel ~Ye and yer ravings. We of Torstultok charge in with a scream and a slam. Intimidate! Revel in fighting!~
== BCERND ~Let go of your rage, dwarf, and keep peace in your heart. Else the blood is knotted and the breath winded after the brief storm.~
== BX3Hel ~Keep yer advice and stuff it in a tree. I'll have none of it.~
EXIT 

//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelDORN","GLOBAL",0)~ THEN BDORN X3HelDORN1
~You are giving me a look, dwarf. Speak.~ [X3Blank]
DO ~SetGlobal("X3HelDORN","GLOBAL",1)~
== BX3Hel ~I nay mind being in a warrior's presence, especially a fine one. But what ye've killed puts me at pause, blackguard.~
== BDORN ~I kill who I am directed. You kill who <CHARNAME> asks of you. There is no difference.~
== BX3Hel ~I do not kill innocents. Nay the same as ye have.~
== BDORN ~Innocent is often a protest by victims. It means little. All have done sin.~
== BX3Hel ~The weight of that is determined by gods.~
== BDORN ~Or patrons. It is all the same.~
EXIT 

//Dorn #2
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelDORN","GLOBAL",1)~ THEN BDORN X3HelDORN2
~You have something more to say to me, dwarf?~ [X3Blank]
DO ~SetGlobal("X3HelDORN","GLOBAL",2)~
== BX3Hel ~Ye ever think of a life in service of proper gods, Dorn?~
== BDORN ~Have you ever thought of serving a patron who could give you proper power?~
== BX3Hel ~Nay.~
== BDORN ~Then you have mine and your answer.~
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelEDWIN","GLOBAL",0)~ THEN BEDWIN X3HelEDWIN1
~Tell me, Helga, I assume you to be a warrior born. What do you think of the purpose of conflict and tribulation?~ [X3Blank]
DO ~SetGlobal("X3HelEDWIN","GLOBAL",1)~
== BX3Hel ~If ye speak of battle, finger-waggler, it exists to be conquered or cowered from. And a proper dwarf nay cowers.~
== BEDWIN ~True, true. We think much the same. Much different than other monkeys I have come across.~
== BX3Hel ~I've decades of experience, wizard. Ye survive long by fighting hard and dying harder. Preferably with a hammer. Ye spellcasters though...ye lot do some crazy things. I nay know if ye'll come at the top of what ye seek in the end.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3HelHAERDALIS1
~My hound Helga, you are a storm in battle. Age has done nothing to dull your steel.~ [X3Blank]
DO ~SetGlobal("X3HelHAERDALIS","GLOBAL",1)~
== BX3Hel ~Ye were expecting otherwise? I am old, but nay as old as one may think.~
== BHAERDA ~But while you push with your strength, your moves are a bit slow and lacking grace. Dramatic and fitting for theater, however. Perhaps you may let me watch?~
== BX3Hel ~Nay. Slow and hard is how I like it. Even if you block a slam of a hammer, still will bloody ring.~
== BHAERDA ~And yet you leave yourself open to counter-attack with such lack of grace.~
== BX3Hel ~They can try. They will regret it.~
== BHAERDA ~I will have to watch how you take blows, then, and still stand. It will be an interesting sight.~
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3HelHAERDALIS2
~You have changed, Helga. No longer have I seen your rough, open-making blows.~ [X3Blank]
DO ~SetGlobal("X3HelHAERDALIS","GLOBAL",2)~
== BX3Hel ~I'll bloody admit that yer words got under my skin, tiefling.~
== BHAERDA ~Dwarven pride, is it? Like a fine fire enraging at the slightest prod, but yours shifted and did not resist the wind.~
== BX3Hel ~Tell me true, tiefling. Is it as clumsy as before?~
== BHAERDA ~Do you wish honesty, my hound?~
== BX3Hel ~Aye, and nothing less.~
== BHAERDA ~Not by much. But it is certainly a good effort.~
EXIT 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Hel")
See("Hexxat")
Global("X3HelHexxat","GLOBAL",0)~ THEN BX3Hel X3HelHexxat1
~Watch yer distance, vampire. Get any closer and I might smash yer head in.~ 
DO ~SetGlobal("X3HelHexxat","GLOBAL",1)~
== BHEXXAT ~I mean you no harm, Helga.~
== BX3Hel ~Ye think I care? Yer a bloody vampire. Ye've probably thought about drinking my blood.~
== BHEXXAT ~I am not as horrible as you think.~
== BX3Hel ~Ye'll not convince me. Keep yer distance, and I'll keep barely tolerating ye. But don't think I won't be watching.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Hel")
See("IMOEN2")
Global("X3HelIMOEN","GLOBAL",0)~ THEN BX3Hel X3HelIMOEN1
~Lass Imoen. Let me know if ye need any healing. I could try a gander at some of those scars even, if ye like.~ [X3Blank]
DO ~SetGlobal("X3HelIMOEN","GLOBAL",1)~
== IMOEN2J ~I'm fine. Did <CHARNAME> put you up to this?~
== BX3Hel ~Nay. I am a cleric. It be me job to check on ye. Yer a tough girl, but ye ain't immune.~
== IMOEN2J ~Well thanks Helga. But I think I am holding up just fine. <CHARNAME> though, <PRO_HESHE> looks like they are putting more support on one leg. You might want to look at that.~
== BX3Hel ~Nay! I know what yer up to girl. Going to get me yelled at by our group leader, ye are.~
== IMOEN2J ~Me? No, why would I do that?~
== BX3Hel ~Bah. Yer heart's more than fine, at least. Yer going to make this dwarf smile, and I won't have it!~
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Hel")
See("Jan")
Global("X3HelJan","GLOBAL",0)~ THEN BX3Hel X3HelJan1
~Ye ever eat your meats, Jan? All I ever hear is ye speak of turnips.~ [X3Blank]
DO ~SetGlobal("X3HelJan","GLOBAL",1)~
== BJAN ~Why they are the most prized food and vegetable in all the realms. There is even an entire pirate trade over smuggling some of the finest speciments of the vegetable to well paying ports and merchants. Turnip transporters had to hire protection just to ensure the product is safe.~
== BX3Hel ~...Bah. Doesn't mean ye need to neglect yer damn meats. Ye haven't even tried my stew.~
== BJAN ~Well, your stew reminds me of what they served on the turnip trade vessels. We couldn't eat any of the cargo, though it was very tempting. So the cooks had to garble up whatever they could muster, put it all in a pot, and somehow make it edible. Quite the experience, I would say. Never seek fine dining in the ocean.~
== BX3Hel ~Ye better not be insulting my cooking, gnome.~
== BJAN ~Not at all! The bland, boring taste only increased our appreciation and value of turnips. Though potatoes are a close second. They are even better together. My mother makes a very good potato turnip stew, if you would like lessons.~
== BX3Hel ~The only lesson I would like from yer mother is how she put up with ye, I'd have gone bloody mad.~
EXIT 


// Jan #2
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Hel")
See("Jan")
Global("X3HelJan","GLOBAL",1)~ THEN BX3Hel X3HelJan2
~Ye pick a mage's art, gnome. Ye're small but not weak. Ye ever consider the feel of a weapon?~ [X3Blank]
DO ~SetGlobal("X3HelJan","GLOBAL",2)~
== BJAN ~Now that you mention it, perhaps you would consider purchasing one of my flashers? Refunds guaranteed for the first thirty days. But only if returned in the exact same condition as purchased. I assure you they're-~
== BX3Hel ~That is not a real weapon, ye oaf. Axe. Hammer. Those are real weapons.~
== BJAN ~Now there's an idea. An Axe Flasher. A hammer flasher. A turnip flasher...we could be business partners.~
== BX3Hel ~Moradin kill me now.~
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Hel")
See("JAHEIRA")
Global("X3HelJAHEIRA","GLOBAL",0)~ THEN BX3Hel X3HelJAHEIRA1
~My damn weapon grows restless. Where be the next fight? Haela demands blood.~ [X3Blank]
DO ~SetGlobal("X3HelJAHEIRA","GLOBAL",1)~
== BJAHEIR ~Sometimes, your bloodlust disturbs me, dwarf priest. It is almost abhorrent how you take glee in your killing.~
== BX3Hel ~Abhorrent? There be nothing wrong with the enjoyment of battle.~
== BJAHEIR ~Life has a purpose. The taking of it should be weighed not for pleasure but out of necessity.~
== BX3Hel ~I kill threats. If ye want to make weight of it, go ask someone else. Nay me or my goddess makes it complicated.~
== BJAHEIR ~If that is how you will have it.~
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Hel")
See("JAHEIRA")
Global("X3HelJAHEIRA","GLOBAL",1)~ THEN BX3Hel X3HelJAHEIRA2
~How ye holding up, Jaheira girl?~ [X3Blank]
DO ~SetGlobal("X3HelJAHEIRA","GLOBAL",2)~
== BJAHEIR ~I am just fine. Why do you ask?~
== BX3Hel ~I lost my spouse once. It cannot be easy.~
== BJAHEIR ~If you know it, then you also know why I have no desire to talk about this further with you.~
== BX3Hel ~Bah. Close off if you wish. Only offering experience and support.~
== BJAHEIR ~And if I want it, I will come to you. But do not count on it.~
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
Global("X3HelKELDORN","GLOBAL",0)~ THEN BX3Hel X3HelKELDORN1
~Most Holy Order of the Radiant, eh? Sounds like a fine order of warriors if they all have yer might, Keldorn.~ [X3Blank]
DO ~SetGlobal("X3HelKELDORN","GLOBAL",1)~
== BKELDOR ~Warriors of righteous resolve who fight for good, Helga.~
== BX3Hel ~Nay glory? Nay wealth?~
== BKELDOR ~We do not fight for such self-centered ideals or self-forwarding, no.~
== BX3Hel ~My opinion is lowered, then, paladin. But ye are still a warrior. And for that my respect is maintained.~
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
Global("X3HelKELDORN","GLOBAL",1)~ THEN BKELDOR X3HelKELDORN2
~You fight like a savage, Helga. Where is your discipline in battle?~ [X3Blank]
DO ~SetGlobal("X3HelKELDORN","GLOBAL",2)~
== BX3Hel ~There is no honor or fairness in battle, Keldorn. Fight dirty or die dirty.~
== BKELDOR ~You lower yourself to the standards of the very monsters we face, Helga. Are these not the creatures you oppose?~
== BX3Hel ~Aye, and good folk die 'cause they cling too much to such virtues.~
== BKELDOR ~Goodness and strength, Helga are not mutually exclusive. Do you believe otherwise?~
== BX3Hel ~Aye, I do. And you will nay change my mind. Nor I yours. So nay push it, paladin. I have nay desire to be lectured like this.~
== BKELDOR ~Then I will not speak on it further. It is clear you will not learn.~
EXIT 

// KELDORN #3
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
GlobalGT("X3HelQuest","GLOBAL",1)
Global("X3HelKELDORN","GLOBAL",2)~ THEN BKELDOR X3HelKELDORN3
~We should have never fought in that vile tourney. The fight was only for personal gain.~ [X3Blank]
DO ~SetGlobal("X3HelKELDORN","GLOBAL",3)~
== BX3Hel ~Nay. An arena is a proper test of any warrior. To be in the sight of the public and put forth all of your might. There is no greater glory.~
== BKELDOR ~And the lives that were taken? What test does this prove?~
== BX3Hel ~If death is not the risk, a warrior will not fight hard as she might. Fear of death, to fight when there is no flight...that will put forth the best of anyone.~
EXIT

// KELDORN #4
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Hel")
See("KELDORN")
Global("X3HelKELDORN","GLOBAL",3)~ THEN BKELDOR X3HelKELDORN3
~I must ask, Helga, despite my former word to not speak on it further, do you still believe one cannot fight well with virtue and honor?~ [X3Blank]
DO ~SetGlobal("X3HelKELDORN","GLOBAL",4)~
== BX3Hel ~Bah. It has its merits if that is what you want to say. I have watched you fight and fight, and it seems to work for you. But would you nay consider a kick to the groin or a bash into the eye?~
== BKELDOR ~I am an old man, Helga. I will not change my ways, certainly not to be any less virtuos.~
== BX3Hel ~Then if yer god be pleased with that, fight on like that. We can agree at least, that duty to our gods is the most important of all.~
== BKELDOR ~That we can, comrade. That we can.~
EXIT

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("Korgan")
Global("X3HelKorgan","GLOBAL",0)~ THEN BX3Hel X3HelKorgan1
~Ye and I, Korgan, both long for battle like the thirst for water. Without it, we be dehydrated.~ [X3Blank]
DO ~SetGlobal("X3HelKorgan","GLOBAL",1)~
== BKORGAN ~To the next grand fight, eh? May it be a gruesome and bloody slaughter.~
== BX3Hel ~Ye keep to the sharp blades. I'll lay down the hammer.~
EXIT 

// Korgan #2
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("Korgan")
Global("X3HelKorgan","GLOBAL",1)~ THEN BX3Hel X3HelKorgan2
~Korgan, do ye have family?~ [X3Blank]
DO ~SetGlobal("X3HelKorgan","GLOBAL",2)~
== BKORGAN ~Mother dead. Father dead. Three brothers dead.~
== BX3Hel ~Ye have my condolences, Korgan. Being without blood and clan is hard for any dwarf.~
== BKORGAN ~Hah. I killed my brothers myselves. The inheritance was too meager to split around.~
== BX3Hel ~Ye what? What about the love of clan?~
== BKORGAN ~It was clan versus clan where I was from. Brother against brother. It was about surviving or dying. Nay any place to care lest ye end up on the wrong side of an axe, and I would not be the one to bleed out my innards.~
== BX3Hel ~Moradin would ask ye repent, Korgan.~
== BKORGAN ~Moradin has turned a blind eye long ago. Speak not of the gods to me, Helga. I nay need them.~
EXIT 

// Korgan #3
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("Korgan")
Global("X3HelKorgan","GLOBAL",1)~ THEN BX3Hel X3HelKorgan3
~Korgan, ye are nay right. Moradin has nay abandoned his son.~ [X3Blank]
DO ~SetGlobal("X3HelKorgan","GLOBAL",2)~
== BKORGAN ~Hah! Ye still on this, priestess?~
== BX3Hel ~In every battle he follows you. He and Haela both. Ye fight fiercely. Nay always for what you should, but no champion is perfect.~
== BKORGAN ~I be no sniveling servant of anyone, Helga. I am my own dwarf, and I'll battle anyone who tries to chain me otherwise.~
== BX3Hel ~I nay mean you live in service. But ye still fight for Haela's ideals, in a small way. And that gives me some relief.~
== BKORGAN ~I care not for your feelings, old dwarf. Drop it, and nay speak of it again, lest we have a problem.~
EXIT 





// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Hel")
See("Mazzy")
Global("X3HelMazzy","GLOBAL",0)~ THEN BX3Hel X3HelMazzy1
~From what I understand, you once were part of a different adventuring group, Mazzy.~ 
DO ~SetGlobal("X3HelMazzy","GLOBAL",1)~
== BMAZZY ~I was. I lost them at the hand of the shades. I will honor their memory always.~
== BX3Hel ~You have my condolences, lass. I lost a few of my own companions from my last company. Loss is never easy.~
== BX3Hel ~Had I met you sooner with my folks, we would have tried to join forces. I heard of your company and was eager to meet. There is not many earthkin led companies on this land.~
== BMAZZY ~Earthkin? That is not a word I am familiar with.~
== BX3Hel ~Children of the earth. Dwarves, gnomes, and halflings such as yourself.~
== BMAZZY ~I would have probably have been glad to do so. If only circumstances had been different.~
== BX3Hel ~Aye. If only circumstances were different.~
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelMazzy","GLOBAL",1)~ THEN BMAZZY X3HelMazzy2
~Helga, I am noticing your are limping. Do you require aid?~ 
DO ~SetGlobal("X3HelMazzy","GLOBAL",2)~
== BX3Hel ~Bah, just a slight limp. I will be fine.~
== BMAZZY ~I have noticed you have slightly limped since I have been in your company, though it appears worse than usual.~
== BX3Hel ~The pain of battle. I just need a bit of rest and it will be almost as good as new.~
== BMAZZY ~Is your healing unable to restore your strength?~
== BX3Hel ~Nay. After a fight with a damn giant, 'fraid it hasn't been the same even with healing. If it be a test from my goddess, I be intending to pass.~
== BMAZZY ~I do not know much of your goddess. You have mentioned it was Haela Brightaxe.~
== BX3Hel ~Aye. Luckmaiden, Bloodmaiden. Where there be battle, we fight. To protect all dwarven kind be our goal.~
== BMAZZY ~Arvoreen is similiar. The Defender asks that I protect my people. I fight for his cause, and I hope one day to receive the honor of being his paladin.~
== BX3HEL ~It seems we both have difficult tests ahead of us, lass. I pray that we both pass them.~
EXIT 
//Mazzy#3
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Hel")
See("Mazzy")
Global("X3HelMazzy","GLOBAL",2)~ THEN BX3Hel X3HelMazzy3
~You took quite the beating in our last skirmish, Mazzy. Healed up all right?~ 
DO ~SetGlobal("X3HelMazzy","GLOBAL",3)~
== BMAZZY ~It is a bit sore. I am grateful for your healing.~
== BX3Hel ~I am nay ready to lose another comrade. You may wish to learn to favor your other limb, just in case.~
== BMAZZY ~Equal competence in both arms? That could be useful knowledge. I thank you for the suggestion.~
== BX3Hel ~Aye, we can practice sometime if ye wish. Though ye will easily beat me even with an unfavored arm. You have the fire of youth on your side.~
== BMAZZY ~I will treasure whatever lesson you wish to impart. I see you almost as a mentor in combat.~
== BX3Hel ~Just don't beat me too easily, or I'll have none to impart.~
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Hel")
See("MINSC")
Global("X3HelMINSC","GLOBAL",0)~ THEN BX3Hel X3HelMINSC1
~Yer berseker strength and rage are as tough as twin dwarves, Minsc. Ye sure ye don't have dwarve's blood in you.~ [X3Blank]
DO ~SetGlobal("X3HelMINSC","GLOBAL",1)~
== BMINSC ~Minsc is Minsc, and Boo is Boo. No dwarf, friend Helga, for I am a big man.~
== BX3Hel ~Hah. Perhaps nay in body, but certainly spirit. May evil ever fear ye.~
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
HPLT("BMINSC",25)
Global("X3HelMINSC","GLOBAL",1)~ THEN BMINSC X3HelMINSC2
~Argh! Minsc will not fall from this! Minsc will fight on and on! Run while you can evil!~ [X3Blank]
DO ~SetGlobal("X3HelMINSC","GLOBAL",2)~
== BX3Hel ~The battle is over. Stand still so I can heal yer wounds.~
== BMINSC ~Helga? Ah, the good dwarf is here to aid us, Boo. The battle is won!~
== BX3Hel ~Nay if ye twitch about. Bloody hells, big men make a lot of big blood.~
== BMINSC ~It is all Minsc's yes? None of Boo's?~
== BX3Hel ~That hamster is too clever, fear not. Though hopefully it doesn't litter yer wounds with it's fur.~
EXIT 

//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Hel")
See("Nalia")
Global("X3HelNalia","GLOBAL",0)~ THEN BX3Hel X3HelNalia2
~Nalia lass, I nay know how to say this nicely, but ye don't seem cut out for this sort of life.~ [X3Blank]
DO ~SetGlobal("X3HelNalia","GLOBAL",1)~
== BNALIA ~Because I am a noble, Helga? I have proven myself to be as capable as the rest of you.~
== BX3Hel ~Aye, because you're a gal with little experience and little understanding of how the world works.~
== BNALIA ~I have left my keep to see the outside world, before Helga. I have seen the suffering and the hardship beyond my walls.~
== BX3Hel ~Ye've nay seen enough death yet, lass. When ye get to my age, which ye'll never at yer rate, ye'll find you understand.~
== BNALIA ~And how am I to understand unless I never venture? If I listened to you, nothing would be gained.~
== BX3Hel ~And that will be the hardest lesson of all for ye. What ye seek out to do, ye will come back with no returns for your investment.~
EXIT 

//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Hel")
See("Neera")
Global("X3HelNeera","GLOBAL",0)~ THEN BX3Hel X3HelNeera2
~Neera lass, 'fraid I need to ask a favor of you. I need you to stay away from the cookpot when I'm firing something up in the evening.~ [X3Blank]
DO ~SetGlobal("X3HelNeera","GLOBAL",1)~
== BNEERA ~What? How am I going to eat? You want me to just eat dry rations all the time unless we're in an inn? What did I even do?~
== BX3Hel ~I believe one of your wild surges ruined the last meal I cooked. Charred up all the good meat.~
== BNEERA ~So that's why your soup tasted so bad. But it wasn't me. I would have remembered if I surged.~
== BX3Hel ~Hate to say it lass, but you're the only culprit. We don't have a second wild mage.~
== BNEERA ~How are you even sure it was wild magic at all? You could have just burnt it!~
== BX3HEL ~Just heed my advice, lass. I nay intend to hurt your feelings.~
== BNEERA ~But I didn't eve- ugh!~
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Hel")
See("Neera")
Global("X3HelNeera","GLOBAL",1)~ THEN BX3Hel X3HelNeera2
~I should apologize to you lass, and thank you.~ [X3Blank]
DO ~SetGlobal("X3HelNeera","GLOBAL",2)~
== BNEERA ~You should, but what are you thanking me for?~
== BX3Hel ~Your last surge made the last meal stupendous. Best flavors I've ever tasted.~
== BNEERA ~Uh...what?~
== BX3Hel ~I thought it was an odd color, but by Moradin's beard, I've never tasted anything so wondrous.~
== BNEERA ~Uh...right! Yes! I...totally did that.~
== BX3Hel ~Come 'round the pot anytime. Especially if you can do that again.~
== BNEERA ~You...um...if it makes you more confident, sure! Besides, I like your cooking. Better than dry tasting biscuits all the time.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Hel")
See("RASAAD")
Global("X3HelRasaad","GLOBAL",0)~ THEN BX3Hel X3HelRasaad1
~Ye do right by seeking revenge for your family, Rasaad. I did the same for my husband.~ [X3Blank]
DO ~SetGlobal("X3HelRasaad","GLOBAL",1)~
== BRASAAD ~You had a husband?~
== BX3Hel ~Aye, killed by ogres. Now I hate them more than anything. Kill everyone I see with no mercy and as much suffering.~
== BRASAAD ~I want it to be quick. Rage is in my heart, but I will not forget my principles.~
== BX3Hel ~Ye say that now. But in the moment, everything will be different. Ye'll see.~
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Hel")
See("RASAAD")
Global("X3HelRasaad","GLOBAL",1)~ THEN BX3Hel X3HelRasaad2
~Bah, ye aggravate me, Rasaad. Get a real weapon!~ [X3Blank]
DO ~SetGlobal("X3HelRasaad","GLOBAL",2)~
== BRASAAD ~The body is a weapon, Helga. With precision and form, it is much like a blade.~
== BX3Hel ~Hrngh. Unless yer play wrestling, a fist has no place in battle but dirty, desperate fighting.~
== BRASAAD ~Each blow with my fists and feet are not made in desperation. There is a calculation and precision, an art.~
== BX3Hel ~If ye say so, monk. If it works for ye, it works for ye.~
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Hel")
See("Valygar")
Global("X3HelValygar","GLOBAL",0)~ THEN BX3Hel X3HelValygar1
~Yer are too calm in battle, Valygar. Would it kill ye to show some emotion?~ 
DO ~SetGlobal("X3HelValygar","GLOBAL",1)~
== BVALYGA ~I fight the way I fight, Helga. It isn't for show or to please.~
== BX3Hel ~Battlefield is as much a theater as a playwright's telling, lad.~
== BVALYGA ~I am not here to fight for glory or fame, Helga. Look elsewhere if that is what you are hoping to find.~
== BX3Hel ~Have yer wish. More glory for the rest of us then.~
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Hel")
See("Valygar")
Global("X3HelValygar","GLOBAL",1)~ THEN BX3Hel X3HelValygar2
~Ye know, Valygar. I don't think much of finger-wagglers either.~ 
DO ~SetGlobal("X3HelValygar","GLOBAL",2)~
== BVALYGA ~You speak of mages, Helga?~
== BX3Hel ~Aye. It's honorless and gloryless. Flinging a spell...there ain't no skill in that.~
== BVALYGA ~That's not why I think so poorly of magic, Helga. It's corrupting, and evil. I need to only look at my own family to see what it is capable of.~
== BX3Hel ~Either way ye look at it, it be an enemy to best eh?~
== BVALYGA ~I do not look at it your way, Helga. Only mine.~
== BX3HEL ~Pah. Be the way ye want to be. Damn yer difficult to talk to.~
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Hel")
See("Viconia")
Global("X3HelViconia","GLOBAL",0)~ THEN BX3Hel X3HelViconia1
~Ye may have won our leader's heart, drow, but not mine. I expect a betrayal.~ 
DO ~SetGlobal("X3HelViconia","GLOBAL",1)~
== BVICONI ~I have no reason to betray, <CHARNAME>. Your mistrust is misplaced, dwarf.~
== BX3Hel ~Bah, trusting a drow is as foolish as claiming to be Moradin himself. I'd sooner believe the former.~
== BVICONI ~Keep your disbeliefs, then. But you are a mad woman if you start to believe any claims of your god being in yourself.~
== BX3HEL ~Drunk, more likely.~
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelYoshimo","GLOBAL",0)~ THEN BYOSHIM X3HelYoshimo1
~You seem ill, wise Helga. Is something the matter?~ 
DO ~SetGlobal("X3HelYoshimo","GLOBAL",1)~
== BX3Hel ~Hrngh. Aye, aye. The bloody ale was bad last eve. Nay good for drinking.~
== BYOSHIM ~Ah, and my dwarven friend is ale deprived, then?~
== BX3Hel ~Deprived? I drank it anyway. Still tasted good.~
== BYOSHIM ~You are a brave one, my friend. Or is it that a dwarf can really not go a day without a stout, cold drink?~
== BX3Hel ~If a dwarf doesn't drink, then they are either an imposter or from an opressive, far too strict kingdom. Never go to such places, Yoshimo. There be no greater crime than the barring of good, or bad, ale.~
== BYOSHIM ~I will gladly take your advice, my friend!~
EXIT 

//Skitia NPCS 
//Kale 
 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal1","LOCALS",0)~ THEN BX3Hel X3HelX3Kal1
~Back on the road together again, Kale. Nay thought we'd be back together so soon.~
DO ~SetGlobal("X3HelX3Kal1","LOCALS",1)~
== BX3Kal ~Yeah. Figured you'd be in a bed. Maybe even retiring.~
== BX3Hel ~A bed? Nay. For as long as I breathe, I will nay serve Haela from a bed.~
== BX3Kal ~That leg isn't ever going to get better the way you work it.~
== BX3Hel ~I'll worry about the leg, lad.~
== BX3Kal ~Heh. If I let you worry about the leg, Helga, you won't worry about it at all.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal1","LOCALS",1)~ THEN BX3Hel X3HelX3Kal2
~I nay know what to think of yer new way of fighting since we first adventured about Amn together, Kale.~
DO ~SetGlobal("X3HelX3Kal1","LOCALS",2)~
== BX3Kal ~What's wrong with it? I say it suits me perfectly. Nice and heroic.~
== BX3Hel ~Aye, ye have more discipline. But ye've dropped yer anger, letting that raw rage keep ye on yer feet.~
== BX3Kal ~Took a lot of hits fighting that way. Worked when I was backin Gullykin, but that can get you killed with what we face now.~
== BX3Hel ~Living is by raw will. You die when you give in. I've seen dwarven berserkers slay an entire army before they let their wounds take them down.~
== BX3Kal ~Well I want to live to take down many armies, not just one. Got to fight a little smarter for that, you know.~
== BX3Hel ~Hrngh.~
== BX3KAl ~Heh, don't worry Helga. I always appreciate your advice.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal2","LOCALS",0)~ THEN BX3Kal X3HelX3Kal3
~Soooo. Been a while for you Helga, hasn't it?~ [X3KSO]
DO ~SetGlobal("X3HelX3Kal2","LOCALS",1)~
== BX3Hel ~Been a while for what, lad?~
== BX3Kal ~Well your husband's been passed on for several years now, hasn't he?~
== BX3Hel ~Aye, in Moradin's halls for almost a decade now.~
== BX3Kal ~A decade? No desire to buck the old saddle, as it were?~
== BX3Hel ~What are ye even saying, Kale? Speak plainly.~
== BX3Kal ~Heh, well in present company, I don't know if I'd want to offend any more sensitive ears.~
== BX3Hel ~Then maybe ye should keep yer trap shut?~
== BX3Kal ~Uh, I think your response sure answers my question. I think I'm all in my curiousity.~
== BX3Hel ~Hrngh. Halflings.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3Kal2","LOCALS",1)~ THEN BX3Kal X3HelX3Kal4
~You ever think of the guys before, Helga? Gast and Stormaxe.~ [X3KSO]
DO ~SetGlobal("X3HelX3Kal2","LOCALS",2)~
== BX3Hel ~Aye, them and many others I've lost over the years. Haela see they rest in peace, all of them.~
== BX3Kal ~Yeah...rest in peace.~
== BX3Hel ~They did not die in vain, Kale. Died warrior's deaths. Nay mourn them for what they died for. Praise them for how they lived.~
== BX3Kal ~Aye. I will remember to do that, Helga.~
== BX3Hel ~Do that, fight hard, and they will live look on with pride, as they should be.~
== BX3Kal ~Eh, I figured Stormaxe would be more busy drinking as much as he can rather than paying attention.~
== BX3Hel ~Hrngh...true, but nay the point. Nay need to find fault with me wisdom like this.~
== BX3KAl ~No need? Nah, I live for it!~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3KalRomanceActive","GLOBAL",1)
Global("X3RebRomanceActive","GLOBAL",1)
Global("X3EmiRomanceActive","GLOBAL",1) //
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3HelX3Kal1","LOCALS",2)~ THEN BX3Hel X3HelX3Kal5
~Tell me, Kale, why the bloody hell is everyone leaning on <CHARNAME> so much.~
DO ~SetGlobal("X3HelX3Kal1","LOCALS",3)~
== BX3Kal ~You know he can hear you, right?~
== BX3Hel ~Nay, he ain't paying attention. Every gal in this party's got a hand on him.~
== BX3Kal ~I 'unno. You sure you ain't seeing things?~
== BX3Hel ~Now that I think of it, ye ain't much different.~
== BX3Kal ~Heh, now you are definitely seeing things.~
== BX3Hel ~Bah. I don't like it. We should be fighting, not flirting.~
== BX3KAl ~Jealous in your age, eh? Sure there's a limb you can attach yourself too.~
== BX3Hel ~Maybe a few hammers in those limbs to knock some sense. That's all the interest I have.~
EXIT 

//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3Reb1","LOCALS",0)~ THEN BX3Hel X3HelX3Reb1
~For a bard, ye are a quiet one, Recorder.~
DO ~SetGlobal("X3HelX3Reb1","LOCALS",1)~
== BX3Reb ~Hrm? Sorry, I always prefer letting my music do the talking. Most people are just interested in the story and song, and not the performer.~
== BX3Hel ~That couldn't be further from the truth. There be a reason why some bards are famous.~
== BX3Reb ~For their songs and tales?~
== BX3Hel ~...Aye, that be why.~
== BX3Reb ~Heehee. I do enjoy talking to you though, Helga. I'll try to find a reason to engage in conversation more often.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3Reb1","LOCALS",1)
HPPercentLT("X3Reb",50)~ THEN BX3Hel X3HelX3Reb2
~Stand still, Recorder. That be a painful one.~
DO ~SetGlobal("X3HelX3Reb1","LOCALS",2)~
== BX3Reb ~It...it hurts.~
== BX3Hel ~Aye, that will sting, but we'll get you all better now.~
== BX3Reb ~Do I deserve it?~
== BX3Hel ~Don't say such rubbish girl. Stay still.~
DO ~ForceSpell("X3Reb",CLERIC_CURE_SERIOUS_WOUNDS)~
== BX3Reb ~Oh...that feels better. Thank you.~
== BX3Hel ~Aye. But what was that rubbish you were saying earlier?~
== BX3Reb ~N-nothing. The pain was probably makign me a little delirious.~
== BX3Hel ~Hrngh. Something weighing on you?~
== BX3Reb ~No. Nothing. Thank you...I feel better.~
== BX3Hel ~Don't sound like it lass. But keep to the back at least. Nay want to see you injured like that anytime soon.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3Reb2","LOCALS",0)~ THEN BX3Reb X3HelX3Reb3
~Are there any gnomes where you come from, Helga?~ [X3BLANK]
DO ~SetGlobal("X3HelX3Reb2","LOCALS",1)~
== BX3Hel ~Nay. Torstultok is about lands surrounded by ol' dwarf kingdoms. Way back there were stories of encounters with Svirfneblin with some of the miners, but nay anything else.~
== BX3Reb ~So your first encounters with gnomes happened when you left?~
== BX3Hel ~Aye. Nay thought of yer people as fighters or adventurers, but Gast changed that.~
== BX3Reb ~And how did he do that?~
== BX3Hel ~Fought like the finest strategist I've ever seen. Could charge like an aggressive dog or hold himself like the best dwarven defender.~
== BX3Hel ~He fell protecting the group against a storm of arrows. Changed my entire opinion of gnomes that day.~
== BX3Reb ~I wish I got to meet him.~
== BX3Hel ~Aye. Ye'd have been smitten. A good lad, and ye a good lass.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3HelX3Reb2","LOCALS",1)~ THEN BX3Reb X3HelX3Reb4
~Can I ask you a question, Helga? How do you bear being so far from your children?~ [X3KSO]
DO ~SetGlobal("X3HelX3Reb2","LOCALS",2)~
== BX3Hel ~My pups be grown now, lassie. Proper warriors, even. They've proven themselves well and are probably bringing glory to the family name.~
== BX3Reb ~You don't worry about them?~
== BX3Hel ~If I did lassie, I'd be racing to and from their locations in distress. Wouldn't get anything done.~
== BX3Reb ~Oh. That's good then.~
== BX3Hel ~Yer thinking about your boy, aren't you?~
== BX3Reb ~Y-yes...I...~
== BX3Hel ~Don't cry. Shh, shh. Motherhood is damn hard. You think I was perfect? Ye made mistakes. Ye'll get yer second chance.~
== BX3Reb ~I don't know...if I could even think of a child in the future after everything else.~
== BX3Hel ~I didn't either. Berk was my accident. Blessed he. I thought I made a lot of mistakes on Helen. I got to do better the second time around. Just have faith, little lass. Ye'll get yer chance someday.~
== BX3Reb ~I...I'll try. I'll try to be strong.~
== BX3Hel ~That is all I ask.~
EXIT 

//Vienxay 
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3HelX3Vie1","LOCALS",0)~ THEN BX3Hel X3HelX3Vie1
~Ye nay much of an honorable fighter, elf. If it not finger waggling, it's stabs in the back and shadows.~
DO ~SetGlobal("X3HelX3Vie1","LOCALS",1)~
== BX3Vie ~And? You hardly fight with any concept of honor yourself.~
== BX3Hel ~Bah. That's different. Fighting with a blade is its own honor, nay this "discipline" knights will yammer about. But magic? Daggers? Pah!~
== BX3Vie ~You sound so very hypocritical, dwarf. We each have our own tools and contributions to the lay at hand. Mine are simply more complex and intelligent than basic swinging.~
== BX3Hel ~Hrngh! Don't test me, elf.~
== BX3Vie ~Please. If I did, you would fail any rudimentary magical understanding. Now please, let me focus. My spells keep us alive.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelX3Vie1","LOCALS",1)
HPPercentLT("X3Vie",50)~ THEN BX3Vie X3HelX3Vie2
~Someone heal me, now!~
DO ~SetGlobal("X3HelX3Vie1","LOCALS",2)~
== BX3Hel ~Shut yer trap. I get to ye when I get to ye.~
== BX3Vie ~Dwarf, now!~
== BX3Hel ~Bah. Hold still. This will hurt...and not because it has to, cause yer a damn nuisance.~
DO ~ForceSpell("X3Vie",CLERIC_CURE_SERIOUS_WOUNDS)~
== BX3Vie ~Ow! Do you have to press so hard? Healers are supposed to be gentle.~
== BX3Hel ~If they want to be. Now shut it. Another battle could be around the corner. Keep yer chin up like ye always do.~
== BX3Vie ~Ugh! You are so irritable.~
== BX3Hel ~Yer welcome for the healing, spoiled brat.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3HelX3Vie1","LOCALS",1)~ THEN BX3Hel X3HelX3Vie3
~I saw ye do that earlier, Vienxay. When ye thought no one was looking.~
DO ~SetGlobal("X3HelX3Vie1","LOCALS",2)~
== BX3Vie ~What are you talking about?~
== BX3Hel ~We passed one of the poor folk when we were in the city, a young girl if I recall. Ye gave her something out of yer pocket.~
== BX3Vie ~Am I not allowed to give what I wish, dwarf?~
== BX3Hel ~Ye nay seem the type.~
== BX3Vie ~She was an elf, and I know more than anyone how difficult that can be, especially so young, when you are not around more of your kind. Althkata has few enough of our kind.~
== BX3Hel ~An elf, then? That makes it make more sense. Still a bit odd for ye.~
== BX3Vie ~Whatever. It is hardly your business. Go back to bothering somebody else.~
EXIT 

