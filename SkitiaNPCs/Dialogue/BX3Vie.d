// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIE","GLOBAL",0)~ THEN BX3Vie X3VieAERIE1
~Chin up, Aerie. There's no reason to be looking down.~ [X3Blank]
DO ~SetGlobal("X3VieAERIE","GLOBAL",1)~
== BAERIE ~I...Yes ma'am.~
== BX3Vie ~Please, you are equals. And you are perhaps the only creature superior to myself. An Avariel is perhaps the most regal of elves.~
== BAERIE ~I don't have my wings, anymore, Vienxay. No one will see me that way.~
== BX3Vie ~Please, I think you would only be more loved. Have a bit of confidence in yourself. You deserve nothing less.~
== BAERIE ~I...I am not sure what to say to that. Thank you?~
== BX3Vie ~The truth needs no thanks, Aerie. But please, do keep your chin up.~
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIE","GLOBAL",1)~ THEN BAERIE X3VieAERIE2
~Why are you so mean to everyone, Vienxay?~ [X3Blank]
DO ~SetGlobal("X3VieAERIE","GLOBAL",2)~
== BX3Vie ~Did I say something cruel to you?~
== BAERIE ~Not to me, but I've seen how you treat others. You look down on everyone.~
== BX3Vie ~As we should. We are elves, Aerie. First born and of longer life. Meanwhile, these humans are ungrateful brats, and don't let me get started on the dwarves.~
== BX3Hel IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Or ye could shut it while ye be already making a fool of yerself.~
== BAERIE ~But some of them are kind. Uncle Quayle took me in and saved my life. They aren't less or bad, Vienxay.~
== BX3Vie ~Given everything that has happened to you, Aerie. I can understand why you think as you do. But remember the slavers of this world are human. Those who destroy our land are human. Those who destroy forests? Human.~
== BAERIE ~I know, I just...I just don't see the need to be so hateful.~
== BX3Vie ~We won't agree, Aerie. But I swear to protect you from their ways all the same.~
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieANOMEN","GLOBAL",0)~ THEN BANOMEN X3VieANOMEN1
~Watch how you fire your spells in combat, elf. If you singe me at all with a miscast...~ [X3Blank]
DO ~SetGlobal("X3VieANOMEN","GLOBAL",1)~
== BX3Vie ~If you step in the way of my spells, then you get what you deserve.~
== BANOMEN ~I will not be treated like a child, Vienxay. Watch yourself or I will take care of you myself.~
== BX3Vie ~Fine. But if you die because I did not cast a spell, then you still are getting what you deserve.~
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieANOMEN","GLOBAL",1)~ THEN BANOMEN X3VieANOMEN2
~If I am to understand right, you are a criminal and a murderer.~ [X3Blank]
DO ~SetGlobal("X3VieANOMEN","GLOBAL",2)~
== BX3Vie ~We have all killed for the party. Fling such an accusation at all of us.~
== BANOMEN ~We are not all lowly thieves or heartless killers, elf. Both of which describe you quite aptly.~
== BX3Vie ~Please. Do you wish to know, then? I took a life because I was scared, and my people banished me for it. I did not do it because I enjoyed it, or because I wanted to. I was trying to survive, or so I felt. Take care before you judge someone well above your station, Anomen, especially when they are a wizard and can very well do the same to you as they have done to them.~
== BANOMEN ~You may have <CHARNAME> fooled, Vienxay. But not I. I will be watching you.~
== BX3Vie ~Stare as you please. But I am needed here, and you will give my space for it.~
EXIT 


// Aerie #3
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIE","GLOBAL",2)~ THEN BAERIE X3VieAERIE2
~I understand you are exiled from your homeland, Vienxay, because of murder.~ [X3Blank]
DO ~SetGlobal("X3VieAERIE","GLOBAL",3)~
== BX3Vie ~As if I need another reminder of that miserable fact.~
== BAERIE ~Do you...regret it?~
== BX3Vie ~Everyday when I wake up. Everyday when I go to sleep. There is no go back in time spell, Aerie.~
== BAERIE ~If you want to talk about, want someone to listen, I-~
== BX3Vie ~Words won't make it better. I see what you are trying to do, but it won't work. Leave me.~
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Vie")
See("CERND")
Global("X3VieCERND","GLOBAL",0)~ THEN BX3Vie X3VieCERND1
~Ugh. I have no love of these lands. You are probably the only one in this group to share my loathing of them, druid human.~ [X3Blank]
DO ~SetGlobal("X3VieCERND","GLOBAL",1)~
== BCERND ~If you speak of the cities, I wish Althkata learned to balance and welcome trees in its place, over endless stone and walls.~
== BX3Vie ~You would like Evermeet, then. The entire land is a perfect harmony with the natural world around it. Such lack of consideration would never be tolerated there.~
== BCERND ~Perhaps one day I may visit this Evermeet you speak of.~
== BX3Vie ~You could not. Never has an outsider ever stepped foot.~
== BCERND ~There are no absolutes. The trees, animals, and especially people are not governed by rules. Someday, someone shall be the first.~
== BX3Vie ~I pray that such a day never comes to pass.~
EXIT 

// CERND #2
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Vie")
See("Cernd")
Global("X3VieCERND","GLOBAL",1)~ THEN BX3Vie X3VieCERND2
~How dreadfully I miss home. The lush forests and trees and the little walkways between each tree home.~ [X3Blank]
DO ~SetGlobal("X3VieCERND","GLOBAL",2)~
== BCERND ~You lived much as some of the druids here live, then.~
== BX3Vie ~Lived, yes. Exiled now. How I regret all that came to that consequence.~
== BCERND ~Banishments are but a mean of a lesson, not an eternal barment. Perhaps once you have learned what they seek, you may find their arms open once more.~
== BX3Vie ~If I knew, I would do it in an instant. But I do not. Do not give me any more false hope, human. I am crushed enough as it is.~
EXIT 


//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Vie")
See("DORN")
Global("X3VieDORN","GLOBAL",0)~ THEN BX3Vie X3VieDORN1
~It seems you and I are the only one who understands power, Dorn.~ [X3Blank]
DO ~SetGlobal("X3VieDORN","GLOBAL",1)~
== BDORN ~You? An elf who whines and moans about long hours of walking and the lack of luxurious food. We are not equals, witch.~
== BX3Vie ~No, we are not. My blood is not a mix of two lesser races, and my power comes from the art, not from a benefactor.~
== BDORN ~The definition of lesser only applies to those who do not stand after a fight. Do you wish to be taught who is right, elf?~
== BX3Vie ~You truly are a brute. Let us leave it at that. <CHARNAME> would be displeased if we squabbled.~
== BDORN ~I would be doing <PRO_HIMHER> a favor. Watch your words carefully.~
EXIT 

//Dorn #2
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Alignment("X3Vie",NEUTRAL)
Global("X3VieDORN","GLOBAL",1)~ THEN BDORN X3VieDORN2
~You disappoint me, Vienxay. For one previously driven to seek power, you have practically cast it into a scholar's hands.~ [X3Blank]
DO ~SetGlobal("X3VieDORN","GLOBAL",2)~
== BX3Vie ~My people have received something precious to them.~
== BDORN ~And still you will never be taken back. You have shown your true weakness. Chained by your own love for your people.~
== BX3Vie ~Please. Do not speak to me of chains. I have walked away from such dark entanglements where you have taken them. I truly believe I know who is lesser now, and you have shown it.~
== BDORN ~You risk much, elf. Do not test me further.~
== BX3Vie ~I won't. But know that only reinforces our divide.~
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieEDWIN","GLOBAL",0)~ THEN BEDWIN X3VieEDWIN1
~Elf, I find you loud, annoying, and a complete waste of our air. At least you are not tiresome to look at.~ [X3RFL1]
DO ~SetGlobal("X3VieEDWIN","GLOBAL",1)~
== BX3Vie ~Can you repeat that, lesser? I could not hear you. It sounded like some squeaky mutter.~
== BEDWIN ~Lesser? I have grasped the art of magic in years in the time it took you to grasp it in decades. Care who you throw your words at, your place is far below me.~
== BX3Vie ~One of these days, I will give you the duel of spells you so desire, human. I will just wait for your change of allegiance. Underestimate my shadow magic at your own risk.~
== BEDWIN ~Your ignorance will be your undoing. When you are ready for a proper education, I will gladly give you a taste of my power.~ [X3Blank]
EXIT 

// EDWIN #2
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Vie")
See("Edwin")
Global("X3VieEDWIN","GLOBAL",1)
Gender("Edwin",FEMALE)  // Edwin~ THEN BX3Vie X3VieEDWIN2
~Gods. If you are going to meander about, at least walk properly.~ [X3RFL1]
DO ~SetGlobal("X3VieEDWIN","GLOBAL",2)~
== BEDWIN ~I am walking properly!~
== BX3Vie ~Please. You walk like a man who has been turned into a woman.~
== BEDWIN ~You ignorant idiot! I am a man who has been turned into a woman.~
== BX3Vie ~That is what I am saying. At least take the time to improve your form and grace. The way you humans compose yourself is so horrid.~
== BEDWIN ~Sleep with one eye open, elf. My tolerance is at an end for your jokes, and I will have none of it.~
== BX3Vie ~Yes, yes, make your pointless threats. With your lack of effort to change, I'll surely hear your uncultured stomping coming right to me.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3VieHAERDALIS1
~Vienxay, your shadow drags behind yourself. What toils the spirit of yours?~ [X3Blank]
DO ~SetGlobal("X3VieHAERDALIS","GLOBAL",1)~
== BX3Vie ~I long for Evermeet, Haer'dalis. It has been a long time now, but still I miss it.~
== BHAERDA ~Ah, the tragedy of banishment. Rooted from your home, in foreign lands, seeking your new home.~
== BX3Vie ~There is no place worthy here to be called a new home, Tiefling. There never will be.~
== BHAERDA ~Then always will you be lost. A tragic piece, retold once more.~
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3VieHAERDALIS2
~Vienxay, I wonder, if you are more raven or hound.~ [X3Blank]
DO ~SetGlobal("X3VieHAERDALIS","GLOBAL",2)~
== BX3Vie ~Please, I hardly know what you even mean by this.~
== BHAERDA ~You are darkness, mystery, shadow, but also angry, like a bursting flame that must be put out.~
== BX3Vie ~Speak plainly or do not speak to me at all, tiefling.~
== BHAERDA ~Listen to my words. You are not alone, Vienxay. Your pain is not singular to yourself. You can find comfort in this sparrow's arms if only you were to ask.~
== BX3Vie ~I can't believe it, but your lines actually do lighten my heart. You are...irritatingly soothing, tiefling.~
== BHAERDA ~I only aim to please the lady.~
== BX3Vie ~I imagine you are very good at that.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Vie")
See("IMOEN2")
Global("X3VieIMOEN","GLOBAL",0)~ THEN BX3Vie X3VieIMOEN1
~<CHARNAME>, why are we keeping Imoen around? Beyond that she's your sister, I'd say she holds us back.~ [X3Blank]
DO ~SetGlobal("X3VieIMOEN","GLOBAL",1)~
== IMOEN2J ~Someone's a bit moody. Got shaken up in the last fight, lack of sleep?~
== BX3Vie ~Please human. If I wanted your opinion, I would have asked.~
== IMOEN2J ~But you were talking about me. Look, <CHARNAME> isn't even listening to you anymore. So you may as well point your question to me.~
== BX3Vie ~Ugh! I suppose I will simply pick up where you will be slacking.~
== IMOEN2J ~I would love to introduce you to Winthrop, Vienxay. I can just *imagine* how it would go.~
== BX3Vie ~Is he human?~
== IMOEN2J ~You betcha. You should hear his comments about elven bottoms.~
== BX3Vie ~Ugh. This conversation is over. How in the world you are this light-hearted is beyond reason.~
EXIT 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHexxat","GLOBAL",0)~ THEN BHEXXAT X3VieHexxat1
~What have I done to earn your stare, Vienxay?~ 
DO ~SetGlobal("X3VieHexxat","GLOBAL",1)~
== BX3Vie ~You remind me of my mentor when I first met her. Calm...unsuspecting...what are you planning?~
== BHEXXAT ~I am planning nothing.~
== BX3Vie ~You are a vampire. A monster, traveling with us. Surely you have a motive.~
== BHEXXAT ~Our goals are aligned. We seek the same ends.~
== BX3Vie ~For now. For all we know. But I will be watching.~
== BHEXXAT ~Let me know what you find.~
EXIT 

// Hexxat#2
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHexxat","GLOBAL",1)~ THEN X3VieJ X3VieHexxat2
~I suppose I owe you an apology, vampire.~ 
DO ~SetGlobal("X3VieHexxat","GLOBAL",2)~
== BHEXXAT ~For what?~
== BX3Vie ~You seem to be telling the truth. Whatever your reasons, you wish to do well by this party.~
== BHEXXAT ~I am glad we got this resolved.~
== BX3Vie ~But I will never be your friend. My people have no tolerance for the undead.~
== BHEXXAT ~Did they not exile you? Do you owe them anything?~
== BX3VIE ~What would you even be able to comprehend of my people's culture? I trust you. But that does not mean we will talk of my personal issues.~
== BX3VIE ~...But to answer your question. No, I do not owe them anything.~
== BHEXXAT ~Perhaps we can just do this slowly. A few questions here and there, until you are comfortable.~
== BX3VIE ~Ugh. Fine. But if *any* elf asks why I am in your company, I am blaming <CHARNAME>.~
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Vie")
See("JAHEIRA")
Global("X3VieJAHEIRA","GLOBAL",0)~ THEN BX3Vie X3VieJAHEIRA1
~Watch where your eyes, linger, mutt. I've little time for the glares of half-bloods~ [X3Blank]
DO ~SetGlobal("X3VieJAHEIRA","GLOBAL",1)~
== BJAHEIR ~Your arrogance does you no favors, Vienxay. I disapprove that <CHARNAME> ever helped you out. A prison humbles you well.~
== BX3Vie ~I tire of human imprisonment as it is. Besides, don't you find them most unnatural? Metal bars that trap you. It is no different than hunters keeping animals in cages.~
== BJAHEIR ~Do not speak of me of natural order, Vienxay. Not until your head is several sizes smaller.~
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Vie")
See("JAHEIRA")
Alignment("X3Vie",NEUTRAL)
Global("X3VieJAHEIRA","GLOBAL",1)~ THEN BX3Vie X3VieJAHEIRA2
~I thought we had spoken about this, but I see you looking my way again, Jaheira. Leer elsewhere.~ [X3BLANK]
DO ~SetGlobal("X3VieJAHEIRA","GLOBAL",2)~
== BJAHEIR ~I only wished to say it was good of you to give up the power of the tome and hand it to the sage.~
== BX3Vie ~A compliment? That is surprising.~
== BJAHEIR ~I had far lower expectations, and you surpassed them. The praise is deserved.~
== BX3Vie ~I will take it for what it is, if it will stop your glances...but thank you.~
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieKELDORN","GLOBAL",0)~ THEN BKELDOR X3VieKELDORN1
~Vienxay, with your past brushes against the law, I must warn you, I will not tolerate such misbehavior in <CHARNAME>'s company.~ [X3Blank]
DO ~SetGlobal("X3VieKELDORN","GLOBAL",1)~
== BX3Vie ~What? You are not my father, Keldorn. Do not dare try to tell me what to do.~
== BKELDOR ~This is not the path of redemption, Vienxay, to run afoul of the law and order of the land.~
== BX3Vie ~My people's punishments are harsh and unforgiving. There is no such thing as redemption, Keldorn.~
== BKELDOR ~Even for you, Vienxay, there is a path that leads back to wholeness and goodness. But if you never take that step, you will ever be in the darkness.~
EXIT 

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
See("Korgan")
Global("X3VieKorgan","GLOBAL",0)~ THEN BX3Vie X3VieKorgan1
~Ugh. Must we have a dwarf in the party? They stink. They are filthy. And they do much to diminish our class.~ [X3Blank]
DO ~SetGlobal("X3VieKorgan","GLOBAL",1)~
== BX3HEL IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~She never shuts up.~
== BKORGAN ~A dwarf would do you good, elf girl. Skilled with many weapons. I can show ye one that is long, hard and waiting for yer touch.~
== BX3Vie ~Sick sick sick! Ugh! Filthy creature!~
== BKORGAN ~Hah. Ye cower and cry out like the privileged gal ye are. But ye all bleed the same red blood when it's gutted out of ye.~
EXIT 

// Korgan #2
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieKorgan","GLOBAL",1)~ THEN BKORGAN X3VieKorgan2
~Worthless elf, stop staring at me back.~ [X3Blank]
DO ~SetGlobal("X3VieKorgan","GLOBAL",2)~
== BX3Vie ~Please, you are far too short to look at all.~
== BKORGAN ~Watch yer tongue, for my axe be dry, and yer mouth be the perfect coat for its steel.~
== BX3Vie ~Ugh! This is torture. Corellon kill me now.~
== BKORGAN ~Corellon nay be necessary for that if ye keep staring at me.~
EXIT 

// Korgan #3
CHAIN
IF ~InPartyAllowDead("Korgan")
IsValidForPartyDialogue("X3Vie")
Dead("Korgan")
Global("X3VieKorgan","GLOBAL",2)~ THEN BX3Vie X3VieKorgan3
~Finally. Praise all of the Seldarine. I cared nothing for that dwarf. Now we can sleep in peace.~ [X3Blank]
DO ~SetGlobal("X3VieKorgan","GLOBAL",3)~
EXIT 

// Korgan #4
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
!Dead("Korgan")
Global("X3VieKorgan","GLOBAL",3)~ THEN BX3Vie X3VieKorgan4
~Ugh, what are you thinking?! We could have done without him.~ [X3Blank]
DO ~SetGlobal("X3VieKorgan","GLOBAL",4)~
== BKORGAN ~Ye miss me, elf?~
== BX3Vie ~Please. I miss you as much as I miss the most annoying cramps. Never.~
== BKORGAN ~Ye be dying for the dwarf erotic arts, girl. Admit it!~
== BX3Vie ~The only thing you give me is a lack of sleep.~
== BKORGAN ~It be that bad girl? Ye just come to Korgan.~
== BX3Vie ~Ugh!~
EXIT 

// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Vie")
See("Mazzy")
Global("X3VieMazzy","GLOBAL",0)~ THEN BX3Vie X3VieMazzy1
~If you step on my feet one more time, halfling, I will lose it.~ [X3Blank] 
DO ~SetGlobal("X3VieMazzy","GLOBAL",1)~
== BMAZZY ~I have not even touched your feet. Perhaps look before you throw baseless accusations.~
== BX3Vie ~Please, I know perfectly well it was you. Aren't you trying to be a pretend paladin? You are not allowed to lie.~
== BMAZZY ~You will not get a rise out of me, Vienxay. I know how you play this game.~
== BX3Vie ~Please, if you were a paladin of worth, perhaps you would not have lost your companions.~
== BMAZZY ~Listen very carefully, Vienxay. Throw whatever vile you wish to spew on myself. But speak not of my companions memory. I will not tolerate it.~
== BX3Vie ~And you truly believed I couldn't get a rise out of you. Just stay well away from my feet, and I won't speak another word about them.~
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Vie")
See("MINSC")
Global("X3VieMINSC","GLOBAL",0)~ THEN BX3Vie X3VieMINSC1
~Minsc, please. Stop shouting so much at the enemy. Some of us need to focus our magic so we stay alive.~ [X3Blank]
DO ~SetGlobal("X3VieMINSC","GLOBAL",1)~
== BMINSC ~Minsc sees evil, Minsc shouts his battle cry. Evil flees or is kicked, yes?~
== BX3Vie ~Ugh. You are such an empty-headed oaf. Can you not think of any strategical merit with your actions?~
== BMINSC ~Minsc does not know what this "strategical" is, but he thinks it must be about his swing. He can swing harder.~
== BX3Vie ~This is getting nowhere. Forget it. I have better things to do than try to educate a hopeless human.~
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJan","GLOBAL",0)~ THEN BX3Vie X3KAlJan1
~Why are you even in our group, gnome? I can do everything you can better. You don't even have a grasp of shadow magic.~ [X3Blank]
DO ~SetGlobal("X3KAlJan","GLOBAL",1)~
== BJAN ~Ah, I didn't know you were an inventor, Vienxay. Have you figured out the design of the perfect turnip peeler?~
== BX3Vie ~What? Why would I even bother with inventing. Magic is Mystra's gift. Artifice and invention are worthless.~
== BJAN ~Why, I thought you would have the intelligence to make things with your hands. That's disappointing, I guess you are ugly and stupid as they say about the elves of the island.~
== BX3Vie ~What did you say?! Do you wish to test my power, you idiot gnome?!~
== BJAN ~Well you said you have not bothered with inventing, and they say the elves of the island have magic whisk everything for them. They don't lift a finger or think with their mind. Are they so little trusted with anything, I wonder? No one has told me if they suffer from some strange disease of mind yet.~
== BX3Vie ~Shut up for your own good! Ugh! You are the most intolerable creature I have ever met!~
EXIT 

//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Vie")
See("Nalia")
Global("X3VieNalia","GLOBAL",0)
~ THEN BX3Vie X3VieNalia2
~Let me give you a valuable lesson, Nalia. Your opinions and ideals of aiding the poor are foolish. You believe you aid them, but you are only hindering them.~ [X3Blank]
DO ~SetGlobal("X3VieNalia","GLOBAL",1)~
== BNALIA ~Vienxay, how unsurprising that you would hold such an opinion. You don't care about anyone other than yourself.~
== BX3Vie ~Determination is the way of life. If the poor cannot learn to take care of themselves, they are not worthy. The great rise from rags to riches. Others can scrap up a status quo. The rest are not meant to be hand-walked when they should be in a grave.~
== BNALIA ~And how does aiding them hurt you, Vienxay? Live the way you want to live, but do not tell others how they should walk.~
== BX3Vie ~I have had everything taken from me, Nalia. When I was put at the shores of this coast, banished from my homeland, I only had the clothes on my back and a few belongings. I had no income. I had no friends. And yet here I am, with no one's hand but my own. Take away that determinism, and you leave them weaker, less capable, and dependent on that very aid. What when that aid runs out? Do you even think so far?~
== BNALIA ~I've heard enough, Vienxay. Your words are only full of hate and anger.~
== BX3Vie ~You have hardly listened, human. I won't bother trying to teach you again. Your kind are stubborn, and doom themselves for it.~
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Vie")
See("Nalia")
Global("X3VieNalia","GLOBAL",1)~ THEN BNALIA X3VieNalia2
~You said you weren't aided by anyone in our last talk, Vienxay, but that isn't true. Without <CHARNAME> you would still be in a cell.~ [X3Blank]
DO ~SetGlobal("X3VieNalia","GLOBAL",2)~
== BX3Vie ~Amusing. You have been thinking of our last talk for this long? Perhaps you are listening.~
== BNALIA ~You are hypocritical, Vienxay. You accepted aid. People do need help. You know I am right.~
== BX3Vie ~I accepted the opportunity, and am repaying it. A true poor person would never do this. And I am a shadowmage. I was perfectly capable of escape.~
== BNALIA ~You would be on the run, then. And you didn't want that. If it wasn't the guards catching up, perhaps the cowled wizards might have.~
== BX3Vie ~Do not compare me to the weak, the poor, and the hopeless, Nalia. It is as I said: I am returning a favor I could have well done on my own. But only a fool says no to a better opportunity. Now let us be done with this.~
EXIT 


//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Vie")
See("Neera")
Global("X3VieNeera","GLOBAL",0)~ THEN BX3Vie X3VieNeera2
~Tell me mutt, why do you bother with wild magic? You're not good at it.~ [X3Blank]
DO ~SetGlobal("X3VieNeera","GLOBAL",1)~
== BNEERA ~Mutt? I don't see any dogs.~
== BX3Vie ~Please, you know who I am talking about.~
== BNEERA ~I really don't know. I'm pretty sure my name is Neera.~
== BX3Vie ~Are you changing the subject because you actually agree your wild magic talents are worthless?~
== BNEERA ~I can't hear you Vienxay. It's like your voice is this mousy screech.~
== BX3Vie ~Play deaf all you want. It hardly denies the truth.~
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Vie")
See("Neera")
Global("X3VieNeera","GLOBAL",1)~ THEN BX3Vie X3VieNeera2
~Are you yet ready to acknowledge my superiority, mutt?~ [X3Blank]
DO ~SetGlobal("X3VieNeera","GLOBAL",2)~
== BNEERA ~Are you still going on about this? Are you that insecure, Vienxay?~
== BX3Vie ~Hardly. I am just confused on why <CHARNAME> would even let you around.~
== BNEERA ~Why don't you ask <PRO_HIMHER>? They are right over there.~
== BX3Vie ~Please. The answer would probably just be disappointing.~
== BNEERA ~Are you always this jealous?~
== BX3Vie ~Of what? Your unpredictable, dangerous surges? I think not.~
== BNEERA ~Say whatever you want. But I somehow am getting under your skin, and you clearly don't like it.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieRasaad","GLOBAL",0)~ THEN BRASAAD X3VieRasaad1
~Forgive me Vienxay ,for I cannot help but notice. What does that marking mean on your forehead? Is it cultural?~ [X3Blank]
DO ~SetGlobal("X3VieRasaad","GLOBAL",1)~
== BX3Vie ~It means I am unwelcome in Evermeet, should I ever try to deceive my kin, they would see it and know.~
== BRASAAD ~It is beautiful almost. The markings of some spell?~
== BX3Vie ~It is old elven magic. Beyond your understanding and beyond my desire to talk about. Point your questions at someone else, human.~
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Vie")
See("RASAAD")
Global("X3VieRasaad","GLOBAL",1)~ THEN BX3Vie X3VieRasaad2
~I understand you are trying to avenge your brother~ [X3Blank]
DO ~SetGlobal("X3VieRasaad","GLOBAL",2)~
== BRASAAD ~It is so, yes. I seek to avenge my brother, Gamaz.~
== BX3Vie ~I know such feelings quite well. Still, I find it surprising someone like yourself would seek it. Hrmph. Lathander's monks are liars after all.~
== BRASAAD ~Pardon? That is quite an accusation. You do not know my order, Vienxay.~
== BX3Vie ~More interesting is that I understand your brother's death was by your own hand...as was the same death I blamed my own master, a death by my own hand.~
== BRASAAD ~Why do you compare us, Vienxay? I have never said that I was your better.~
== BX3Vie ~No. That is what I am saying: That I am *your* better, because I do not hide behind pointless virtues that in practice seem beautiful, but in life, only bring misery and pain.~
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("Valygar")
Global("X3VieValygar","GLOBAL",0)~ THEN BX3Vie X3VieValygar1
~Are you going to glower at me all day, mage?~ [X3Blank]
DO ~SetGlobal("X3VieValygar","GLOBAL",1)~
== BVALYGA ~You are an arrogant mage with no care of her companions. I should be watching you carefully.~
== BX3Vie ~You peer at me like a suitor who desires me but is too shy to speak. You could probably tell me what my most desirable feature is.~
== BVALYGA ~Your lips, when they are closed.~
== BX3Vie ~Please. My lovers have much preferred them open.~
== BVALYGA ~I have nothing I want to say to that.~
== BX3Vie ~I didn't think you would.~
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("Valygar")
Global("X3VieValygar","GLOBAL",1)~ THEN BX3Vie X3VieValygar2
~From what I understand Valygar, you are capable of magic. But you actively refuse to embrace it.~ 
DO ~SetGlobal("X3VieValygar","GLOBAL",2)~
== BVALYGA ~It is evil, Vienxay. And I will have no part in it.~
== BX3Vie ~Please, magic is not evil. Is a sword evil? No. Then neither can magic.~
== BVALYGA ~A sword does not corrupt. A sword does not make a mage think one more spell.~
== BX3Vie ~Please. How else do you think blacksmiths stay in business? Breaking swords and soldiers always wanting a better, bigger one.~
EXIT 

// Valygar #3
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Alignment("X3Vie",NEUTRAL)
Global("X3VieValygar","GLOBAL",2)~ THEN BVALYGA X3VieValygar2
~You've changed since we've started our travels. I've seen more thoughtful use in your abilities, and less taunting.~ 
DO ~SetGlobal("X3VieValygar","GLOBAL",3)~
== BX3Vie ~And what comes next? Some insult? Your intentions are quite clear.~
== BVALYGA ~No. Only my thanks for...being a better mage, and a better person.~
== BX3Vie ~I don't know where this comes from, human...but I accept your thanks, whatever they may mean.~
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Vie")
See("Viconia")
Global("X3VieViconia","GLOBAL",0)~ THEN BX3Vie X3VieViconia1
~You may have charmed your way into our company, dhaerrow, but I am no fool.~ 
DO ~SetGlobal("X3VieViconia","GLOBAL",1)~
== BVICONI ~I am not your enemy, darthiir. Keep your gaze off of my back.~
== BX3Vie ~Please. My people die everyday from the cruelty of yours. You are marked forever by the Father as exile. You can never redeem yourself.~
== BVICONI ~Are you so different? Are you not here because you are exiled from your your pathetic home?~
== BX3Vie ~I regret what I did. There is a difference.~
== BVICONI ~And I have no sway on how people see me, darthiir. I regret nothing because I did nothing. Ponder that before you spew your venom.~
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieYoshimo","GLOBAL",0)~ THEN BYOSHIM X3VieYoshimo1
~Ah, Vienxay. Master of shadows and sudden disappearance. But how fare your skills with wire and trap? They are the bane of many a wandering company.~ 
DO ~SetGlobal("X3VieYoshimo","GLOBAL",1)~
== BX3Vie ~I am perfectly capable of disarming a mere wire, Yoshimo.~
== BYOSHIM ~And what of setting?~
== BX3Vie ~That is an awfully foolish question. Why would I want to set a trap when I have the art as a tool?~
== BYOSHIM ~I meant no offense, but the better one understands how a trap is set, the better one understands how it is disarmed.~
== BX3Vie ~Please, I hardly need a lesson on this. If I wanted a tutor, I would ask an elf.~
== BYOSHIM ~Your charm is as enriching as always, Vienxay. If your mind changes, you only need to let me know.~
EXIT 