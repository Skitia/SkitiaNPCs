
// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzyToB","GLOBAL",0)Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN BX3Kal25 KaleMazzy1
~We've forged some fine stories on this road. Damn the battles have been good.~ [X3Blank]
DO ~SetGlobal("X3KalMazzyToB","GLOBAL",1)~
== BMAZZY25 ~Is it only the glory and stories that inspire you on, my friend?~
== BX3KAL25 ~Heh, they sure help. And if they don't work, well, I'll just tell the tale of how I slapped that dragon.~
== BMAZZY25 ~I am baffled on your need to continue exaggerating. I was there.~
== BX3KAL25 ~Everything I do gets eclipsed by <CHARNAME>, you know. I want to be great.~
== BMAZZY25 ~You are great, Kale. You have watched your companions in conflict and pushed through adversity. Have no fear.~
== BX3KAL25 ~All right. But I might still tell it once. Too fun of a tale to pass up.~
EXIT 

//Mazzy#2: Unlock's Kale Mazzy Ending.
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzyToB","GLOBAL",0)Alignment("X3Kal",LAWFUL_NEUTRAL)!Global("X3KalRomanceActive","GLOBAL",2)!Global("_bMazzyRomance","GLOBAL",2)~ THEN BX3Kal25 KaleMazzy2
~Sooo. We won't be going about with <CHARNAME> forever. Where are we going after this, Mazzy?~ [X3KSO]
DO ~SetGlobal("X3KalMazzyToB","GLOBAL",1)SetGlobal("X3KalMazzyEnd","GLOBAL",1)~
== BMAZZY25 ~We, Kale?~
== BX3Kal25 ~We compliment each other well enough. And we're both keen on traveling. Why split?~
== BMAZZY25 ~You are a brave fighter, Kale. I would not decline your offer, but do not take it for more than what it is.~
== BX3KAL25 ~And what do you think I'll take it for?~
== BMAZZY25 ~You know certainly well what I mean.~
== BX3KAL25 ~I don't know. I think I need you hear you say it.~
== BMAZZY25 ~If you are going to be just as infuriating in our travels, I will change my mind.~
== BX3KAL25 ~Heh, as the lady wishes, I'll be on my most *charming* behavior.~
== BMAZZY25 ~That, Kale, is what I am worried about most of all.~
EXIT 
//Mazzy#3: Only happens if all the original banters were seen. Not required to get Kale's Mazzy ending.
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzyToB","GLOBAL",1)Global("X3KalMazzy","GLOBAL",7)!Global("X3KalRomanceActive","GLOBAL",2)!Global("_bMazzyRomance","GLOBAL",2)~ THEN BX3Kal25 KaleMazzy3
~I've got to ask you this, Mazzy. It's been bugging me for days now.~ [X3Blank]
DO ~SetGlobal("X3KalMazzy","GLOBAL",2)~
== BMAZZY25 ~What is it, Kale? Speak and I will listen.~
== BX3KAL25 ~You think there could ever be a chance? Maybe a little room in that heart of yours for someone else?~
== BMAZZY25 ~Patrick was precious to me, Kale. He was noble and brave, and his loss will always weigh on me.~
== BX3KAL25 ~...Look, I wanted to say something about carrying on, and seeing what lies ahead, because it's a part of living.~
== BX3KAL25 ~But I guess that's selfish of me. I told you I'd leave it alone before. I mean it, this time.~
== BMAZZY25 ~...Perhaps there is one, Kale. You have...been impressive, and are charming, when you aren't infuriating. But I cannot give you an answer now.~
== BX3KAL25 ~Well, I don't mind waiting. You just let me know, eh? I'm persistent, you know.~
== BMAZZY25 ~That, I know all too well.~
EXIT 

// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalAERIEToB","GLOBAL",0)~ THEN BAERIE25 X3KalAERIE1
~Kale, I'm still not quite able to figure you out. Why do you feel the need to tell such wild re-tellings of our tales when we camp all the time.~ [X3Blank]
DO ~SetGlobal("X3KalAERIEToB","GLOBAL",1)~
== BX3Kal25 ~It's called reliving the moment. We've had some harrowing calls, exciting, blood pumping moments all over the place on our road together. You don't want to re-think of it just once?~
== BAERIE25 ~I...I think back on things, sometimes. It makes me happy that we're still all in one piece, but...your re-tellings are just non-sensical.~
== BX3Kal25 ~Well, think of it this way. We could barely believe we've made it sometimes. I'm just trying to recapture that emotion.~
== BAERIE25 ~I don't see how swinging a dragon into the air by its tail into a second dragon that was not even there recapturing anything.~
== BX3Kal25 ~Well, once I teach you the art of story-telling sometime, you'll get it all down.~
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("ANOMEN")
Global("X3KalANOMENToB","GLOBAL",0)~ THEN BX3Kal25 X3KalANOMEN1
~Soo. We make quite a good team, Anomen. I do the striking, and you do the healing.~ [X3Blank]
DO ~SetGlobal("X3KalANOMENToB","GLOBAL",1)~
== BANOME25 ~It isn't just your arm that is swinging forward, halfling. But we do work well together. What is your point?~
== BX3Kal25 ~Weeell. I was just thinking that when I tell this tale back in some tavern, I'll have to give you a bit of credit.~
== BANOME25 ~A bit? How many times have my healing spells kept you on your feet? You practically throw yourself into getting wounded constantly.~
== BX3Kal25 ~Come on, mate. I'd usually omit any names, especially <CHARNAME>. You mention them and I tell you everyone will be asking about them over you. Not that I mind terribly, but it takes all the fun of getting a bit of recognition.~
== BX3Kal25 ~So uh, saying I'd include yours is well, my way of saying "thanks", you understand?~
== BANOME25 ~As odd as your compliment may be, I will take it. I am glad to have my achievements properly recognized, even by someone like you.~
== BX3Kal25 ~You mate, are a proper ass sometimes.~
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalCERNDToB","GLOBAL",0)~ THEN BCERND25 X3KalCERND1
~Kale, I will always admire how you push yourself to the front. You are braver and different than what I have come to know of a halfling.~ [X3Blank]
DO ~SetGlobal("X3KalCERNDToB","GLOBAL",1)~
== BX3Kal25 ~Praise, now eh? Keep it coming.~
== BCERND25 ~You do however, have the penchant for their tall tales and eating, perhaps more intense than any I have met.~
== BX3Kal25 ~Heh. You can stop now.~
== BCERND25 ~I believe in fact, such is your apetitite that I found some of my own rations missing the night before.~
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~Who could it have been...oh, Mazzy! It was her!~
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~Please, show some maturity, Kale.~
== BX3Kal25 ~Damn. Guilty as charged, mate. Well. I'll buy you the next round of food when we get the chance, eh?~
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Kal")
See("Dorn")
Global("X3KalDornToB","GLOBAL",0)~ THEN BX3Kal25 X3KalDorn1
~You and me, we make quite the great warriors, Dorn.~ [X3Blank]
DO ~SetGlobal("X3KalDornToB","GLOBAL",1)~
== BDORN25 ~I had only thought that of one of us.~
== BX3Kal25 ~Heh, no need to put yourself down, mate. You're almost my equal.~
== BDORN25 ~We could put that to the test. See how many pieces you split into.~
== BX3Kal25 ~Eh, well, I'd take you on, but I work better next to someone. But don't underestimate me either, mate. I'm in knee-cap and groin range.~
== BDORN25 ~You think that will make a difference?~
== BX3Kal25 ~Not really, no. Nevermind.~
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Kal")
See("Edwin")
Global("X3KalEDWINToB","GLOBAL",0)~ THEN BX3Kal25 X3KalEDWIN1
~So, you ever think of a redesign of your fashion, Edwin? Red and gold is fine and all, but you got to mix it up.~ [X3Blank]
DO ~SetGlobal("X3KalEDWINToB","GLOBAL",1)~
== BEDWIN25 ~These are the colors of Thay, fool. I'll have none of your suggestions.~
== BX3Kal25 ~Come on, mate. What about purple? Royal, but it's not so loud. Plus I think it would go well with you.~
== BEDWIN25 ~(Don't listen, do not listen!) I said, no. Are your ears so stuffed with wax that you cannot register a simple command, halfling?~
== BX3Kal25 ~Heh. Now that you mention it...~
== BEDWIN25 ~(Fools, everywhere.) Begone, halfling. Go bother somebody else.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Kal")
See("HAERDALIS")
Global("X3KalHAERDALISToB","GLOBAL",0)~ THEN BX3Kal25 X3KalHAERDALIS1
~You know, I kind of like being called a hound by you, Haer'daelis. Reminds me of Urogalan.~ [X3Blank]
DO ~SetGlobal("X3KalHAERDALISToB","GLOBAL",1)~
== BHAERD25 ~And who is this actor who you introduce to the stage?. A hero? A friend?~
== BX3Kal25 ~He's the god of death of my people. I like to think I'm doing his work, on this bloody path of <CHARNAME>'s. Only way to really digest it all.~
== BHAERD25 ~The god of death? And you are his loyal hound.~
== BX3Kal25 ~Heh, Urogalan is the hound. I guess I am the hound's loyal hound, so to speak...it doesn't bother you, does it, mate? All of the endless killing? Glory and all is great, but we've taken a lot of lives.~
== BHAERD25 ~Or perhaps it is that many have simply deigned to try their luck against our storm. If a man steps into fire expecting to not be burned and he is burned, then is it the fire's fault?~
== BX3Kal25 ~Hard to say, mate. Fires don't start by themselves. But I'm not one for the deep thinking and we're slacking behind. Gives me something to think about though.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3KalIMOEN1
~So Kale, I've got one. A story you're bound to love.~ [X3Blank]
DO ~SetGlobal("X3KalIMOENToB","GLOBAL",1)~
== BX3Kal25 ~Heh, all right. I'm listening.~
== BIMOEN25 ~Well I'm just reminded of the old Harpy strikes back at Candlekeep. There were these crazy winged woman threatening the tops of the castles, and the monks were huddling inside, lest someone get 'napped by one of their claws.~
== BX3Kal25 ~All right, this is interesting. Go on, go on.~
== BIMOEN25 ~I was just hurrying <CHARNAME> into the door, when *hssk!*, a group of them swooped down and grabbed <PRO_HESHE> by the arm, whisking them away for certain without intervention. So in a spot of super quick thinking, with one book that I "borrowed" from the library, I bounced it off each of their faces, and they all screeched and bolted away.
Gorion was so proud, he let me keep the book without a lecture.~
== BX3Kal25 ~That's a good one. So what really happened?~
== BIMOEN25 ~I told it straight and true, just like you.~
== BX3Kal25 ~...Well damn. I can't retort without revealing myself a liar all this time. You've had me again, Imoen. Well played.~
EXIT 

// JAHEIRA 
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Kal")
See("JAHEIRA")
Global("X3KalJAHEIRAToB","GLOBAL",0)~ THEN BX3Kal25 X3KalJAHEIRA1
~Jaheira. Given my legend has quite grown, you think I could be a member of your "secret" organization.~ [X3Blank]
DO ~SetGlobal("X3KalJAHEIRAToB","GLOBAL",1)~
== BJAHEI25 ~You?~
== BX3Kal25 ~Yes.~
== BJAHEI25 ~Never.~
== BX3Kal25 ~...Not even a hint of a maybe? Come on. Give me something!~
== BJAHEI25 ~You take little seriously, and while you protect others, you think too much of yourself, not of others freedoms. No, I think you would fit very poorly with my people and their ideals.~
== BX3Kal25 ~Well, they're missing out, then. I'd have brought a lot of attention.~
== BJAHEI25 ~Precisely why you are unfitting. Keep to your life as it is. It suits you just fine.~
EXIT 

// KELDORN 
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("KELDORN")
Global("X3KalKELDORNToB","GLOBAL",0)~ THEN BX3Kal25 X3KalKELDORN1
~You ever miss home, Keldorn? We aren't close to Althkata anymore.~ [X3Blank]
DO ~SetGlobal("X3KalKELDORNToB","GLOBAL",1)~
== BKELDO25 ~I think of my daughters everyday. Time lost with them is the greatest sacrifice for my duty.~
== BX3Kal25 ~I miss mother. And Sam, a little. But mostly mom, and good ol' cooking. Gullykin, too. Can still see all the burrows and the faces of the locals. I hope it's all there, when I get back you know? Just like I left it.~
== BKELDO25 ~Time moves, young Kale. But know that your efforts here will make all the difference. We will return to our homes having made the land a better place.~
== BX3Kal25 ~I don't know about better. But at least a place where <CHARNAME> isn't getting someone to try to murder them every second.~
== BKELDO25 ~Such is the darkness in their path. We will shield them well, from both their foes and the evil in themselves.~
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("KORGAN")
Global("X3HelKorganToB","GLOBAL",0)~ THEN BX3Kal25 X3HelKorgan1
~Come on, Korgan. One more bout when we get to rest. I'll bet you at the drinking for sure.~ [X3Blank]
DO ~SetGlobal("X3HelKorganToB","GLOBAL",1)~
== BKORGA25 ~Ye be trying this whole venture, Kale. Nay, dwarves be the best at ale, and halflings at devouring many meals. Respect the difference and move on.~
== BX3Kal25 ~Heh. You're just afraid you'll lose this time mate.~
== BKORGA25 ~And ye'll regret riling this dwarf on, now, ye fool. I'll drink ye to blackness, and if ye don't wake up , then ye know you pushed yer halfling luck to its end.~
EXIT 


// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Kal")
See("MINSC")
Global("X3KalMINSC","GLOBAL",0)~ THEN BX3Kal25 X3KalMINSC1
~The new stories I've crafted will be worth a good fortune. Free drinks and attention will sure be coming.~ [X3Blank]
DO ~SetGlobal("X3KalMINSC","GLOBAL",1)~
== BMINSC25 ~And hamsters!~
== BX3Kal25 ~Eh...what?~
== BMINSC25 ~Good tale, good fight, good hamsters, no?~
== BX3Kal25 ~Heh. You bet, Minsc. You're an odd one fellow, but you can be my wing anytime if we're in an inn once this is all over. I think you and I will make a fun time.~
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Kal")
See("Hexxat")
Global("X3KalHexxatToB","GLOBAL",0)Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN BX3Kal25 KaleHexxat1
~Heh, when this is over, not many people are going to believe I traveled with a vampire, you know.~ [X3Blank]
DO ~SetGlobal("X3KalHexxatToB","GLOBAL",1)~
== BHEXXA25 ~Is that so?~
== BX3KAL25 ~You'll tell them the truth, won't you?~
== BHEXXA25 ~I doubt they would ask.~
== BX3KAL25 ~I don't know, maybe you get hungry one day and see a few people, just say something before you feed on them.~
== BHEXXA25 ~They do not tend to survive the feeding.~
== BX3KAL25 ~Uh...you know what? Nevermind. I might leave this part out.~
EXIT 
// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJanToB","GLOBAL",0)~ THEN BX3KAl25 X3KAlJan1
~Soo. You're a conneisuer of a good story, I bet Jan. You ever hear my tale about how I beat a dragon with one good slap?~ [X3KSO]
DO ~SetGlobal("X3KAlJanToB","GLOBAL",1)~
== BJAN25 ~Smacking a dragon? You know that reminds me of a time way back when Burt Wunderkind flew his griffon straight into what he thought was a wyvern, but was actually a dangerous green dragon. The creature took one look at him and nearly glomped his griffon in two. If it weren't for his quick thinking, there'd be two Burt Wunderkin's. And probably two Griffon's. Neither alive.~
== BX3KAl25 ~Pfft, but he didn't slap a dragon. He just nearly died. Not as great.~
== BJAN25 ~Well it ended there. You see, the dragon had so eagerly tried to chomp him, that it bit its own tongue. It was in such pain it dove and crashed right down in the ground in-between a lot of trees. He just flew down and gave it a bit of tap and off it went. With the help of his army of trained wyverns.~
== BX3KAl25 ~You kidding, mate? Trained wyverns?~
== BJAN25 ~It's actually not difficult at all. Far easier than to be so close to a dragon to clap it with your palm. Although disciplining a wyvern can be quite the task. Burt always preferred positive reinforcement over the knock in the head, and I'd say it was quite fruitful, though feeding them could be quite expensive.~
== BX3KAl25 ~Damn, this must be how I sound. Whelp, you know what Jan? I made it all up. Sorry. I never slapped anyone.~
== BJAN25 ~Really? Interesting. Burt really did train all those wyverns though.~
== BX3KAL25 ~Yeah, yeah. Just keep gloating, sheesh.~
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Kal")
See("Nalia")
Global("X3KalNALIAToB","GLOBAL",0)~ THEN BX3Kal25 X3KalNALIA1
~Soo. You're a powerful archmage now, Nalia. Magic's been looking mightily impressive, at least.~ [X3KSO]
DO ~SetGlobal("X3KalNALIAToB","GLOBAL",1)~
== BNALIA25 ~Not now, Kale. I am trying to concentrate.~
== BX3Kal25 ~Sheesh, so serious. You can't tell me you've never thought of using your spells just for fun.~
== BNALIA25 ~The only thing I am thinking of is using a spell on you so I can focus.~
== BX3Kal25 ~Heh, what does this spell do? Anything fun?~
== BNALIA25 ~Kale...I have asked nicely. Next time, I won't be so nice.~
== BX3Kal25 ~Eh. All right. Message received.~
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Kal")
See("Neera")
Global("X3KalNeeraToB","GLOBAL",0)~ THEN BX3Kal25 X3KalNEERA1
~Your magic's gotten pretty amazing lately, Neera. I'd stare in awe if there were time for it in battle.~ [X3Blank]
DO ~SetGlobal("X3KalNeeraToB","GLOBAL",1)~
== BNEERA25 ~Yeah, I've grown quite a lot, haven't I? It's kind of exciting to think about.~
== BX3Kal25 ~That ever scare you though? I mean with the scope of your power, something going wrong could be really bad.~
== BNEERA25 ~After everything we've gone through? I think that is the least of our worries.~
== BX3Kal25 ~Yeah, you got a point on that one. You know, come to think of it, I still feel safe with you. I trust you a lot, mate.~
== BNEERA25 ~I trust you too, you little halfling. We're friends, aren't we?~
== BX3Kal25 ~Eh, I'm not *that* little, you know. But friends? Yeah we're friends. Just don't turn my cloak into a baby cloak again.~
== BNEERA25 ~I said I was sorry for that. But *snicker* it was funny.~
== BX3Kal25 ~Yeah, yeah, laugh. Took me forever to fix that damn thing.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Kal")
See("RASAAD")
Global("X3KalRasaadToB","GLOBAL",0)~ THEN BX3Kal25 X3KalRasaad1
~Well, Rasaad, for a man of the fist, definitely don't mind you as a comrade. You think you could teach me some of your moves?~ [X3Blank]
DO ~SetGlobal("X3KalRasaadToB","GLOBAL",1)~
== BRASAA25 ~You would wish to know the way of the monk, Kale? Much of it is in the mind as well as the body.~
== BX3Kal25 ~Pfft. Forget the mind stuff and the weird philosophy talk. Just show me some moves.~
== BRASAA25 ~To perform the technique, one first must come to an understanding of how mind and body work in conjunction.~
== BX3Kal25 ~Aww, come on, I just want a cool move to show off when I tell one of my stories.~
== BRASAA25 ~You have your blade, do you not? You can perform what you did with it, for you have not fought with your fists.~
== BX3Kal25 ~Yeah, heh. Guess you are right, mate. Nevermind.~
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Kal")
See("SAREVOK")
Global("X3KalSAREVOKToB","GLOBAL",0)~ THEN BX3Kal25 X3KalSAREVOK1
~Sooo. Sarevok.~ [X3KSO]
DO ~SetGlobal("X3KalSAREVOKToB","GLOBAL",1)~
== BSAREV25 ~What is it, Kale? Make it quick or be silent.~
== BX3Kal25 ~So what's death like? Not often you get a first person perspective.~
== BSAREV25 ~I could kill you and you could find out.~
== BX3Kal25 ~Heh, no thanks. 'Sides, your death is different. Not the usual way.~
== BSAREV25 ~Ah, and you would be familiar with the difference, halfling.~
== BX3Kal25 ~Heh. Well if it has happened, that just makes me invaluable, eh?~
== BSAREV25 ~You annoy me, halfling. Go away before I really give you the answer you want.~
EXIT 

// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Kal")
See("Valygar")
Global("X3KalValygarToB","GLOBAL",0)~ THEN BX3Kal25 X3KalValygar1
~Sooo. I've been thinking, Valygar.~ 
DO ~SetGlobal("X3KalValygarToB","GLOBAL",1)~
== BVALYG25 ~*Sigh*. Just say it and get it over with.~
== BX3Kal25 ~Well, you and I, we're probably the greatest members of our party. I've got the flashiness, you have the calm and collected persona people like.~
== BVALYG25 ~And?~
== BX3Kal25 ~Well, given we're such a great pair, I figure we ought to get a name for our duo.~
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~He is my squire, Kale. He is spoken for.~
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~Aww, damn it. Though if you need a second squire, Mazzy, I'd love to take care of your needs.~
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~It is one squire, at a time, Kale. I am so sorry.~
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~PFft. As if. What does he got that I don't?~
== BVALYG25 IF ~!IsValidForPartyDialogue("MAZZY")~ THEN ~We are not a duo, Kale.~
== BX3Kal25 IF ~!IsValidForPartyDialogue("MAZZY")~ THEN ~The might half-man and his minion. The Killer Kale and his butler. The Warrior Warden and the silent ranger.~
== BVALYG25 IF ~!IsValidForPartyDialogue("MAZZY")~ THEN ~I am going to go...far away from you now.~
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Kal")
See("Viconia")
Global("X3KalViconiaToB","GLOBAL",0)~ THEN BX3Kal25 X3KalViconia1
~Sooo. Ye ever think where you could go after this? Given your association with <CHARNAME>, you could even go around Gullykin.~ [X3KSO] 
DO ~SetGlobal("X3KalViconiaToB","GLOBAL",1)~
END 
IF ~!Global("ViconiaRomanceActive","GLOBAL",2)~ EXTERN BVICON25 X3KalViconia1A
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ EXTERN BVICON25 X3KalViconia1B
CHAIN BVICON25 X3KalViconia1A
~That tiny halfling hamlet near Beregost? I have left behind enough in that place.~
== BX3Kal25 ~Huh. Sooo. No plans, then? Nothing at all?~
== BVICON25 ~Nothing that is yours to know, halfling. Pry in another's affairs.~
== BX3Kal25 ~No wonder why you drow struggle so hard to make friends.~
EXIT 
CHAIN BVICON25 X3KalViconia1B 
~That depends on <CHARNAME>'s choice.~
== BX3Kal25 ~Potentially losing your entire safety line. That's got to be scary.~
== BVICON25 ~I do not need <CHARNAME> for my survival. You on the other hand halfling, what would you do without the rest of the party?~
== BX3Kal25 ~...Well...eh... damn, I got nothing. I'll get back to you on that one.~
EXIT 

//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3RebToB1","LOCALS",0)~ THEN BX3Kal25 X3KalX3Reb1
~Been a long, journey, hasn't it, Recorder?~
DO ~SetGlobal("X3KalX3RebToB1","LOCALS",1)~
== BX3Reb25 ~I am a little worried I am going to run out of pages. Given where our travels are now, it's not likely I'll find parchment to add to th end if I run out.~
== BX3Kal25 ~You can keep it in your head. Long as people get the gist, that's all that matters..~
== BX3Reb25 ~Accuracy matters too, Kale. With all the spells and knowledge I know, now, I'd rather not keep too much in my head.~
== BX3Kal25 ~Well, what if I help keep everything memorized, eh?~
== BX3Reb25 ~If you did not have a penchant for exaggeration, maybe.~
== BX3Kal25 ~Aww, come on. It makes it more fun, you know?~
== BX3Reb25 ~Thank you, once again. But, definitely no. I'm sorry.~
== BX3Kal25 ~Criminy. There goes my chance at a proper book writing career. Ah well, I'll just be an orator.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3RebToB1","LOCALS",1)~ THEN BX3Kal25 X3KalX3Reb2
~Sooo. You sure you still don't need help with that book? I took a peek and you're almost at the end.~ [X3KSO]
DO ~SetGlobal("X3KalX3RebToB1","LOCALS",2)~
== BX3Reb25 ~Kale! That is private.~
== BX3Kal25 ~Don't worry, sheesh. I can barely read that fancy writing of yours. It's so tiny.~
== BX3Reb25 ~It has to be. I really want to have this done right.~
== BX3Kal25 ~Well, here. This is my journal. Thought it might be more use to you.~
== BX3Reb25 ~Um...it's empty?~
== BX3Kal25 ~Yeah...I never wrote in it. Just kept it for the looks. But I thought it might make your writing easier.~
== BX3Reb25 ~You are kind, Kale. Thank you. I'll find a way to repay you for this, I promise.~
== BX3Kal25 ~Weeeell. If you're mentioning it, I wouldn't mind a little bit more prominence. Maybe I could have a tiny bit of Bhaalspawn blood, or I don't know, godly strength?~
== BX3Reb25 ~Heehee, no. I won't do that. But...I can put an anecdote of one of the stories you've told around the fire. I think it will help people get a picture of what you are like more.~
== BX3Kal25 ~Deal! Woohoo! Fame is going to come my way!~
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
Global("X3KalX3VieToB1","LOCALS",0)~ THEN BX3Kal25 X3KalX3Vie1
~We've been together a long while Vienxay. Like a really long while.~
DO ~SetGlobal("X3KalX3VieToB1","LOCALS",1)~
== BX3Vie25 ~What do you want?~
== BX3Kal25 ~Who says that I want anything? Just making conversation.~
== BX3Vie25 ~Just say it already and stop making excuses.~
== BX3Kal25 ~I got to know. It's been bothering me for ages now. What does your name mean?~
== BX3Vie25 ~...This is *still* bothering you?~
== BX3Kal25 ~Yep. Like a bad rash on the arse that won't go away.~
== BX3Vie25 ~Ugh. Fine. It comes from a noble from Myth Drannor, whose father is a sailor who went to Kara-Tur, and claimed it was a name of a mystical elf race never seen before. It is considered a legend with little fact behind it, but my father enjoyed sea tales, and loved the name.~
= ~For he too, was away on a journey when he returned to find out his wife was with child, and he found it...a fitting name to pass on.~
== BX3Kal25 ~That's...beautiful, actually. Damn, worth the wait, too. But why'd you make me suffer for so long?~
== BX3Vie25 ~It amused me. Agonizing you makes my day.~
== BX3Kal25 ~Heh. Well, I know now! Although now I have another burning question...Oh. With that look you're giving me, I'll just ask way later.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
!Global("X3VieEvermeet","GLOBAL",1)
Global("X3KalX3VieToB1","LOCALS",1)~ THEN BX3Kal25 X3KalX3Vie2
~Sooo. You going to keep traveling? Or going to go home one day.~ [X3KSO]
DO ~SetGlobal("X3KalX3VieToB1","LOCALS",2)~
== BX3Vie25 ~For as long as my forehead is marked, there is no going home.~
== BX3Kal25 ~Sheesh. I'd hate to have that ugly thing on my head.~
== BX3Vie25 ~Please, it is prettier than your face.~
== BX3Kal25 ~Well...I don't mind that, actually. I'd not want to be pretty.~
== BX3Vie25 ~Whatever.~
== BX3Kal25 ~...If I could never go back to Gullykin, I think...I don't think I could bear it.~
== BX3Vie25 ~Don't sympathize with me, halfling. The feeling is far worse than you can imagine.~
== BX3Kal25 ~Is there anything you can do, mate?~
== BX3Vie25 ~It doesn't matter. What's done is done. And that is the way things will be.~
EXIT 