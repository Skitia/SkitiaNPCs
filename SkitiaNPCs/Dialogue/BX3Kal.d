// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Kal")
See("AERIE")
Global("X3KalAERIE","GLOBAL",0)~ THEN BX3Kal X3KalAERIE1
~Ow. You stepped on me, Aerie.~ [X3Blank]
DO ~SetGlobal("X3KalAERIE","GLOBAL",1)~
== BAERIE ~I'm so sorry! I didn't mean to.~
== BX3Kal ~Haha, easy. You're way too easy to trick. Easier than taking candy from a child...trust me.~
== BAERIE ~I don't see what is so funny about that, Kayle.~
== BX3Kal ~Sheesh. You tall folk need a better sense of humor.~
== BAERIE ~Just...just don't startle me like that again.~
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Kal")
See("AERIE")
Global("X3KalAERIE","GLOBAL",0)~ THEN BAERIE X3KalAERIE1
~Kayle, I've noticed you've been picking at that wound I healed recently. You should let it rest.~ [X3Blank]
DO ~SetGlobal("X3KalAERIE","GLOBAL",1)~
== BX3Kal ~It's being fussy. Can't a guy scratch his itch.~
== BAERIE ~If you disturb it too much, I will have to heal it again.~
== BX3Kal ~Well, maybe you can heal it so it doens't itch next time, eh? Heh.~
== BAERIE ~Sometimes, I don't know what to make of you, Kayle.~
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalANOMEN","GLOBAL",0)~ THEN BANOMEN X3KalANOMEN1
~I've yet to meet a challenge. I've fallen twenty giants in a single campaign. When will our mettle truly be tested?~ [X3Blank]
DO ~SetGlobal("X3KalANOMEN","GLOBAL",1)~
== BX3Kal ~Twenty, eh? Well, did I tell you about the time I bested a dragon with one move, eh Anomen?~
== BANOMEN ~You are having me on. I am to seriously believe you, a lowly halfling, bested a dragon on his own, with one move?~
== BX3Kal ~Yep. Want to know what I did?~
== BANOMEN ~I'll entertain it. What did you do?~
== BX3Kal ~I cried out "Here comes halfling death, made the longest jump you have ever seen, and slapped it right in the cheek with my hand. Snapped out its teeth and broke its face. Slammed right down into the floor, it did.~
== BANOMEN ~Oh really? Show me the jump you did.~
== BX3Kal ~Nah.~
== BANOMEN ~Your honor is being challenged halfling. Show it or be declared a liar!~
== BX3Kal ~Nah.~
== BANOMEN ~Then a liar you are! I actually killed twenty giants, which I can show you the precise stroke of my weapon I did.~
== BX3Kal ~Well, if we ever see twenty giants, I'll tell everyone to hold back and let you at them. We'll see who is lying then.~
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("X3KalANOMEN","GLOBAL",1)~ THEN BX3Kal X3KalANOMEN2
~So, you failed your test. Guess you aren't as great as you made yourself out to be.~ [X3Blank]
DO ~SetGlobal("X3KalANOMEN","GLOBAL",2)~
== BANOMEN ~Silence! Silence your tongue or I will do it for you.~
== BX3Kal ~Sheesh. Was just making a joke. At your expense.~
== BANOMEN ~I said silence! Or draw your blade and let us be done with it.~
== BX3Kal ~Calm down mate. Have it your way, then. Silence.~
EXIT 

// ANOMEN #3
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("AnomenIsKnight","GLOBAL",1)
Global("X3KalANOMEN","GLOBAL",1)~ THEN BANOMEN X3KalANOMEN3
~What is that smug grin you are giving me, halfling?~ [X3Blank]
DO ~SetGlobal("X3KalANOMEN","GLOBAL",2)~
== BX3Kal ~Heh. Just thinking, you're a knight and all of that, right?~
== BANOMEN ~I am. What of it?~
== BX3Kal ~Well, it seems kind of great to be a knight. You think they'll take me?~
== BANOMEN ~Halfling, if this is one of your jokes--~
== BX3Kal IF ~Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~Heh, all right, all right, you got me. Could never see myself so tied to the order like that.~
== BX3Kal IF ~!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~Nah, I'm serious. You think they'll take a halfling like me.~
== BANOMEN IF ~!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~In all seriousness, Kale? I would say no. We have never had a halfling in the order. But that does not mean it will always be that way. Strive as you are, and maybe, one day, far from now, you may have your chance.~
== BX3KAL IF ~!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~That's the nicest way of saying no I have ever heard, mate. Thanks though.~
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Kal")
See("CERND")
Global("X3KalCERND","GLOBAL",0)~ THEN BX3Kal X3KalCERND1
~How do you become a druid, Cernd? You just find a tree and say, "I love you", or is it more complicated then that?~ [X3Blank]
DO ~SetGlobal("X3KalCERND","GLOBAL",1)~
== BCERND ~Mockery, Kale? Most become when they find their ideals and purpose are aligined with nature, and their love for the plants and animals that also call this world home makes them realize they need guardians.~
== BX3Kal ~Heh, sounds like I was pretty close.~
== BCERND ~You too quickly draw conclusions, Kale. Have you thought who aids the land in times of drought or famine, or floods and storms?~
== BX3Kal ~Huh. You bring a very good point. All right. Doesn't sound so bad after all now.~
EXIT 


//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalDORN","GLOBAL",0)~ THEN BDORN X3KalDORN1
~Halfling.~ [X3Blank]
DO ~SetGlobal("X3KalDORN","GLOBAL",1)~
== BX3Kal ~Huh? What is it mate?~
== BDORN ~Stop tripping me.~
== BX3Kal ~Heh. Stop tripping yourself.~
== BDORN ~If you were worth my notice, I wouldn't be stepping on you.~
== BX3Kal ~Eh...well...your father's an orc!~
== BDORN ~Dissapointing.~
== BX3Kal ~Had to think of something on the spot.~
EXIT 

//Dorn #2
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Kal")
See("Dorn")
Global("X3KalDORN","GLOBAL",1)~ THEN BX3Kal X3KalDORN2
~Soo. In the serving business, Dorn.~ [X3KSO]
DO ~SetGlobal("X3KalDORN","GLOBAL",2)~
== BDORN ~You have a questoin?~
== BX3Kal ~Not really. Just making a statement.~
== BDORN ~Then stay silent.~
== BX3Kal ~Well. That was not very fun.~
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Kal")
See("Edwin")
Global("X3KalEDWIN","GLOBAL",0)~ THEN BX3Kal X3KalEDWIN1
~You know mate, we got all sorts of secret tomes hidden about good ol' Gullykin and the ruins about. Suprised you haven't staked out a place like that.~ [X3Blank]
DO ~SetGlobal("X3KalEDWIN","GLOBAL",1)~
== BEDWIN ~Gullykin? No doubt you speak of books made for the small height of toddlers containing cooking recipes fit for their great obesity.~
== BX3Kal ~Eh. Well. You aren't wrong, mate. But you're also entirely wrong.~
== BEDWIN ~No matter, leave me be. If I require assistance for finding artifacts and magic of utmost interest and quality, I will be going to you last, halfling.~
== BX3Kal ~All right mate. But I'm telling you, some of those recipes are the stuff of tasty memories.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Kal")
See("IMOEN2")
Global("X3KalIMOEN","GLOBAL",0)~ THEN BX3Kal X3KalIMOEN1
~What's that glint in your eye, Imoen? I don't recall anoyne making jokes but you got a grin on that face of yours.~
DO ~SetGlobal("X3KalIMOEN","GLOBAL",1)~
== IMOEN2J ~I'm thinking of that story you told me. Tell me it again, Kale. About how you dived through all of those arrows just to save your morning meal.~ [X3Blank]
== BX3Kal ~Ye want that story? Not the one where I swung one dragon by the tail into another.~
== IMOEN2J ~The bacon one is a lot more fun. Who knew that the hero had to dive in to rescue the poor meal from the maws of orcs.~
== BX3Kal ~See? Now you're just making fun of me.~
== IMOEN2J ~Me? I don't think I am. I didn't say it.~
== BX3Kal ~I knew I should have never shared that story.~
EXIT 


// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3KalHAERDALIS1
~My hound Kale, I have heard the stories you tell others. Might I offer a suggestion?~ [X3Blank]
DO ~SetGlobal("X3KalHAERDALIS","GLOBAL",1)~
== BX3Kal ~Is it about giving some greater pause before I resolve the tension of surviving a near doomed situation.~
== BHAERDA ~No my hound, it is about suspension of disbelief. A good actor does not overact.~
== BX3Kal ~Pfft. That's the entire point about acting. You're over-acting, and people are laughing.~
== BHAERDA ~A comedian, perhaps. But the master of drama knows to convey a believable performance to the audience, he must balance his acting to not be so over-the-top.~
== BX3Kal ~I think I'll do it my way, mate.~
== BHAERDA ~As you will. It is only a little advice, my hound.~
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Kal")
See("HAERDALIS")
Global("X3KalHAERDALIS","GLOBAL",1)~ THEN X3Kal X3KalHAERDALIS2
~Ye know, Haer'dalis, I have heard the stories you tell others. Might I offer *you* a suggestion?~ [X3Blank]
DO ~SetGlobal("X3KalHAERDALIS","GLOBAL",2)~
== BHAERDA ~A flash of wit, my hound. Perhaps you are truly considering the comedic act as your next business?~
== BX3Kal ~Heh. Maybe. But seriously mate, all your words are so doom and gloomy. Why not try a bit of laughter?~
== BHAERDA ~I am a Doomguard, Kale. But I do find a bit of amusement in the endless chaotic mess that are your stories. I will leave the comedians work to you.~
== BX3Kal ~Heh. I feel comlimented and insulted. You're pretty good at this, mate.~
EXIT 


// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Kal")
See("JAHEIRA")
Global("X3KalJAHEIRA","GLOBAL",0)~ THEN BX3Kal X3KalJAHEIRA1
~So what's all this balance you're always talking about. Does it even apply to us? Is it a nature thing?~ [X3Blank]
DO ~SetGlobal("X3KalJAHEIRA","GLOBAL",1)~
== BJAHEIR ~All things are of nature, Kale, and all should consider balance in their lives. Too much of anything is ill for anyone.~
== BX3Kal ~Really? 'Cause if I had "too much" gold, I think I'd be pretty happy.~
== BJAHEIR ~Excessive wealth often permeates more greed, and a bit of unecessary cruelty. Does the fat animal not inspire envy?~
== BX3Kal ~Ah, I see, I see. Great wealth inspires thieves, which brings coins back in balance.~
== BJAHEIR ~Perhaps a very simple version of it. Not quite, but it will do for your understanding.~
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Kal")
See("JAHEIRA")
Global("X3KalJAHEIRA","GLOBAL",1)~ THEN BX3Kal X3KalJAHEIRA2
~Sooo. Jaheira. I understand you're newly single?~ [X3KSO]
DO ~SetGlobal("X3KalJAHEIRA","GLOBAL",2)~
== BJAHEIR ~Kale?~
== BX3Kal ~Yes mate?~
== BJAHEIR ~No. Not now. Not ever.~
== BX3Kal ~I didn't even ask my question I- sheesh.~
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalKELDORN","GLOBAL",0)~ THEN BKELDOR X3KalKELDORN1
~Kale, I must have a word with you. You strike me as a scoundrel, a liar. Why do you not speak the truth when you talk of yourself?~ [X3Blank]
DO ~SetGlobal("X3KalKELDORN","GLOBAL",1)~
== BX3Kal ~What are you talking about, old fellow? I'm not a liar.~
== BKELDOR ~You tell tales full of wild lies and stretched half-truths to all who would hear them. ALl for the wretched act of self-attention. Do you not know humility, young Kale?~
== BX3Kal ~Why are you taking it so seriously? Can't a young fellow have some fun? 'sides, it's all true, you know.~
== BKELDOR ~A dishonest man, young halfling, will grow ever more distrustable. There will be a day where you seek others to believe your words, and none will hear of anything you have to say.~
== BX3Kal ~Pfft. Like that will ever happen. You see how charming I am?~
== BKELDOR ~Heed my warning, young halfling. If you will not listen now, think on my words later. They may well save your reputation.~
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("KELDORN")
Alignment("X3Kal",LAWFUL_NEUTRAL)
Global("X3KalKELDORN","GLOBAL",1)~ THEN BKELDOR X3KalKELDORN2
~You have changed, young man. Ever do you stand as a man of honor. Do you seek to walk the knight's path?~ [X3Blank]
DO ~SetGlobal("X3KalKELDORN","GLOBAL",2)~
== BX3Kal ~I just got to believing that, well, maybe order is the right of things. Doing things for the people, for my people.~
== BKELDOR ~Well done, boy. We may make a proper warrior out of you, yet.~
== BX3Kal ~Thanks mate. Just don't get too excited. Still going to tell those great stories you hate.~
== BKELDOR ~I will continue to have faith you will take a step forward at a time to the path of right and virtue.~
EXIT 

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalKorgan","GLOBAL",0)~ THEN BKORGAN X3KalKorgan1
~Ye fight like a true son of a dwarf, Kale. I bet yer father had more of a beard, girth, and charm than yer mother remembers.~ [X3Blank]
DO ~SetGlobal("X3KalKorgan","GLOBAL",1)~
== BX3Kal ~Heh. I wish that were true. My father's dead anyhow.~
== BKORGAN ~We have that in common, Dead father's, that is.~
== BX3Kal ~Was yours good for nothing?~
== BKORGAN ~Nay. He fought hard and died hard.~
== BX3Kal ~Eh, sorry about that mate. Thought it would be some useless drunkard that alway skipped.~
== BKORGAN ~Nay, my father deserved his warrior's death. Yours deserved his murder.~
EXIT 

// Korgan #2
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Kal")
See("Korgan")
Global("X3KalKorgan","GLOBAL",1)~ THEN BX3Kal X3KalKorgan2
~Heh, you know Korgan, I bet I could drink you under.~ [X3Blank]
DO ~SetGlobal("X3KalKorgan","GLOBAL",2)~
== BKORGAN ~Hah! That's a bold bet ye make, child. Ye won't last five glasses.~
== BX3Kal ~I'll match ye ale for ale and then some. We halflings don't have voracious appetites for nothing.~
== BKORGAN ~I'll take yer challenge on. But if <CHARNAME> be glaring at ye for drooling in your own vomit and walking like a blind dizzy mole, yer own fault for it.~
EXIT 


//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Kal")
See("Nalia")
Global("X3KalNalia","GLOBAL",0)~ THEN BX3Kal X3KalNalia2
~You know, I don't quite get you Nalia. Why the obession with the poor and all?~ [X3Blank]
DO ~SetGlobal("X3KalNalia","GLOBAL",1)~
== BNALIA ~Because we squander our wealth on things they don't need while they suffer, Kale. I want to find a way to make their lives easier.~
== BX3Kal ~But all of the poor want to be like you. If you start doing that, then what the hell are we all working towards?~
== BNALIA ~A better world. We do not need wealth to live happily. If I can give what I do not need, and everyone else did, we all would be better off.~
== BX3Kal ~Yeah, but you earned that. If you just give it up, it's got no value. 'Sides, I'd find the charity insulting myself.~
== BNALIA ~Well don't worry Kale. It's obvious you are not in need.~
== BX3Kal ~Well...but if you want to give a few coins my way, I'm not complaining.~
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalNalia","GLOBAL",1)~ THEN BNALIA X3KalNalia2
~There isn't a fiber of truth in you Kale. Can't you share an honest tale for once?~ [X3Blank]
DO ~SetGlobal("X3KalNalia","GLOBAL",2)~
== BX3Kal ~Who says my last tale was dishonest?~
== BNALIA ~It is impossible for a halfling without magic to throw his shield like a boomerang and knock down an entire legion of bandits.~
== BX3Kal ~All right. Maybe that was a little exaggerated, but I did throw it.~
== BNALIA ~Can you say any story of yours without lying?.~
== BX3Kal ~Well, there was this one time back in my ol' company with Helga. Got ambushed while we were camping by a lot of orc archers and went for cover. We had some good bacon sizzling in the pot though, and I didn't want it to get burned. So I ran back out there, dodged arrow-fire, and saved the bacon. Was a good breakfast, that morning, shared by us all.~
== BNALIA ~You did all of that...just for a bit of food?~
== BX3Kal ~Hey, you wanted a true story. A halfling's got to eat, you know.~
== BNALIA ~Well, I liked that tale. I think you should tell more like that.~
== BX3Kal ~Damn. Because I was about to say that we went back out there and stormed them all by throwing our shields, but I guess that's out of the question.~
EXIT 


// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",0)~ THEN BX3Kal KaleMazzy1
~Sooo. You and me Mazzy. Two halfling warriors on the road of adventure. I think we'll weave quite a tale.~ [X3KSO]
DO ~SetGlobal("X3KalMazzy","GLOBAL",1)~
== BMAZZY ~I find it odd you find a need to tell high-tales if your intent is to forge your own.~
== BX3KAL ~High Tales? What are you talking about?~
== BMAZZY ~It is utterly impossible to "fell a dragon with a slap to the face."~
== BX3KAL ~That's what makes it so incredible! I tell you, the creature didn't see it coming. Still got a slight scar from it.~
== BMAZZY ~Is the truth so hard? I find it frustrating how some of my kinsman have a complete inability for truth-telling.~
== BX3KAL ~Is believing so hard, toots?~
== BMAZZY ~If you are not going to take this seriously, then we are done talking. And do not call me toots!~
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",1)~ THEN BX3Kal KaleMazzy2
~Sooo. Toots. Did I tell you when?-~ [X3KSO]
DO ~SetGlobal("X3KalMazzy","GLOBAL",2)~
== BMAZZY ~Do *not* call me Toots! And I have no desire to listen to another one of your made up tales, Kale.~
== BX3Kal ~And I thought we got along so well. Or is it my good looks that draw your longing gaze?~
== BMAZZY ~I am not giving you a longing gaze, Kale. The mere thought of it is preposterous.~
== BX3KAL ~You didn't deny that I have good looks, though.~
== BMAZZY ~Are you even listening to me, Kale?~
== BX3KAL ~Yep. Loud and clear.~
== BMAZZY ~You are very infuriating.~
== BX3KAL ~Heh. I'll take that as a compliment.~
EXIT 
//Mazzy#3
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",2)~ THEN BX3Kal KaleMazzy3
~Sooo-~ [X3KSO]
DO ~SetGlobal("X3KalMazzy","GLOBAL",3)~
== BMAZZY ~By your tone, I see you are about to launch into one of your stories. It is not the time.~
== BX3KAL ~Nah. Just a question this time, toots.~
== BMAZZY ~If you stop calling me that, I will let you ask.~
== BX3KAL ~From what I understand, you were sweet on a fellow. What was his name, uh, Peter, or something?~
== BMAZZY ~Patrick. He died nobly. He will always have a place in my heart.~
== BX3KAL ~Well damn. My condolences. Though perhaps you have a tale or two to tell about him.~
== BMAZZY ~If you are interested Kale, I would be glad to. I would want to preserve my comrades memories.~
== BX3KAL ~Definitely. I got to see if this guy's feats are as amazing as mine.~
== BMAZZY ~He did not feel the need to lie about slapping a wyvern.~
== BX3KAL ~Eh, well...damn. I got nothing.~
EXIT 
//Mazzy#4
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMazzy","GLOBAL",3)~ THEN BMAZZY KaleMazzy4
~You have been awfully quiet, Kale. Odd especially for you.~ [X3Blank]
DO ~SetGlobal("X3KalMazzy","GLOBAL",4)~
== BX3KAL ~It's damn rotten what's happening to our people. You not noticing it?~
== BMAZZY ~You will have to explain what you mean, Kale.~
== BX3KAL ~What else? The tall folk. If they aren't accusing us of thievery they're beating us over a suspicion of it, or exploiting us for our land. We don't live as well in the cities as they do.~
== BMAZZY ~Your frustration is too generalized, Kale. You cannot see them all as evil or misguided. Our people do not have it easy, but hatred against all tall folk will help no one.~
== BX3KAL ~And ignoring it will?~
== BMAZZY ~We stand against the evil when we see it. But we cannot have our emotions color it falsely.~
== BX3KAL ~I don't hate them all, Mazzy. I know they aren't all responsible. It just gets under my skin.~
== BMAZZY ~I understand, my friend. I am always here to support you if you need an ear.~
== BX3KAL ~Friend eh? That's a start.~
== BMAZZY ~Must you always insert one of your unnecessary comments like that? You almost came through with a completely serious conversation.~
== BX3KAL ~Heh, maybe. Part of my charm.~
EXIT  
//Mazzy#5
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",4)~ THEN BX3Kal KaleMazzy5
~Well, I'm going to admit something, Mazzy. Something that has been on my mind a long time.~ [X3Blank]
DO ~SetGlobal("X3KalMazzy","GLOBAL",5)~
== BMAZZY ~*Sigh*. I will listen, but if this is one of your flirts, jokes or crazy tales I swear by Arvoreen...~
== BX3Kal ~Nah, none of that. Though I could if you want me t-~
== BMAZZY ~Just say what you were going to tell me, Kale.~
== BX3Kal ~You are a better halfling than me, Mazzy. I've never met a kin like you. I profess to be great and grand and make up a little bit but...you *are* great. Heck you have Arvoreen's blessing, even if you aren't his paladin.~
== BMAZZY ~I am not better than you, Kale. It is not something that is a competition. I have seen you in battle and you truly work to protect the others, sometimes at your own expense.~
== BMAZZY ~There is good in you, Kale. Just be honest with yourself and who you are. There is no need to lie out of shame.~
== BX3Kal ~Yeah, maybe you are right. Thanks, toots. You know how to cheer up a fellow, don't you.~
== BMAZZY ~For once I will let that slide. But please, just call me Mazzy.~
EXIT 
//Mazzy#6 CN  
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",5)Dead("X3KC")Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN BMAZZY KaleMazzy6C // CN version.
~Kale, I have been wanting to speak to you for some time about what happened with Chester.~ [X3Blank]
DO ~SetGlobal("X3KalMazzy","GLOBAL",6)~
== BX3Kal ~Why the hell would you do that? He's dead. And good riddance. You better not think killing him was wrong.~
== BMAZZY ~We were asked to bring him alive. Death is a justice, but it was not what we were requested to do.~
== BX3KAL ~Well, who cares? We can't all be perfect like Mazzy, blessed by Arvoreen, the most special halfling in the land.~
== BMAZZY ~I am only trying to help you Kale. But if you wish to throw insults out of unnecessary jealousy, then I will halt my attempt.~
== BX3Kal ~I told you were better than me...didn't realize it really bothered me until you asked that question and set me off.~
== BMAZZY ~I hope you can look inside yourself Kale and see what is truly wrong. I do not think it is myself you need to direct your anger at.~ 
EXIT 

//Mazzy#6 LN  
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMazzy","GLOBAL",5)!Dead("X3KC")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN BMAZZY KaleMazzy6L// LN version.
~I've noticed a difference in you Kale, since we've traveled.~  [X3Blank]
DO ~SetGlobal("X3KalMazzy","GLOBAL",6)~
== BX3Kal ~Finally falling for me?~
== BMAZZY ~Can you take anything seriously? I was trying to pay you a compliment.~
== BX3KAL ~Heh, all right, all right, what were you going to say?~
== BMAZZY ~You seem as of late to hold a regard to actual values. Even the way you hold yourself in battle is more honorable than it was before.~
== BX3KAL ~What can I say? I'm trying to emulate the best: You.~
== BMAZZY ~Kale, I am hardly a-~
== BX3KAL ~I was always jealous. I thought admitting you were great would make me feel better, or having a bit of fun, but I figured if I stopped dragging my feet on it and tried to be better myself, I'd be a better person.~
== BX3KAL ~And after dealing with my father and his murderer, I'm starting to belief your beliefs and justice aren't so bad, really. That they maybe even resonate.~
== BMAZZY ~I am proud of you, Kale. I could tell you more about my beliefs later, if you like.~
== BX3KAL ~Heh. I'd like that.~
EXIT 

//Mazzy#7 LN only.
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Kal")
See("Mazzy")
Global("X3KalMazzy","GLOBAL",6)Alignment("X3Kal",LAWFUL_NEUTRAL)!Global("X3KalRomanceActive","GLOBAL",2)~ THEN BX3KAL KaleMazzy7// LN only
~We've been together a long time now, haven't we Mazzy?~ [X3Blank]
DO ~SetGlobal("X3KalMazzy","GLOBAL",7)~
== BMAZZY ~The road has been a long one. And it has been nothing short of a joy to experience.~
== BX3KAL ~A joy, eh? We could be fated, you know.~
== BMAZZY ~Again with the jokes, Kale. I like you well enough, but must you always turn our conversation into jests or flirts?~
== BX3KAL ~What if I am being serious?~
== BMAZZY ~You are truly being serious, Kale?~
== BX3KAL ~You're pretty, and strong, and the most heroic lass I've ever met, halfling or otherwise. Why wouldn't I be serious?~
== BMAZZY ~You flatter me, Kayle. But you should know my heart belongs to Patrick, and only he.~
== BX3KAL ~I figured that. I'll back off, then. Fun as it is, you don't deserve to be pushed to something you don't want.~
== BMAZZY ~Thank you Kale. Perhaps I have misjudged you.~
== BX3KAL ~Heh. Didn't say I wouldn't stop a few jests though.~
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Kal")
See("MINSC")
Global("X3KalMINSC","GLOBAL",0)~ THEN BX3Kal X3KalMINSC1
~You ever think about fighting with more discipline, Minsc?~ [X3Blank]
DO ~SetGlobal("X3KalMINSC","GLOBAL",1)~
== BMINSC ~Discipline? Fighting is simple. Minsc sees evil. Minsc hits evil.~
== BX3Kal ~Eh. Well, I guess. But I'm serious, mate. I used to fight with that sort of emotion you put in. Learned to steady myself, and I think I'm better for it.~
== BMINSC ~But Minsc fights as Minsc fights. Minsc does not think like others, but Minsc is strong and can swing hard.~
== BX3Kal ~Huh. I guess being so tall brute force can work for you. Well mate, you do you, eh? And I'll keep with my defensive style so you can go wham it up.~
== BMINSC ~Minsc approves. Hamster and halfling death, together!~
== BX3Kal ~You bet, mate.~
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMINSC","GLOBAL",1)~ THEN BMINSC X3KalMINSC2
~Minsc has wondered, why does Kale have no sidekick friend? Perhaps someone small, and fury? Maybe a hamster?~ [X3Blank]
DO ~SetGlobal("X3KalMINSC","GLOBAL",2)~
== BX3Kal ~I can't risk another animal taking the lights attention from me. You? You're big enough that it doesn't matter. Me? I'm kind of small.~
== BMINSC ~Boo is also small, though he cares nothing of lights.~
== BX3Kal ~Right. Plus, no offense mate, I'd rather not smell of hamster.~
== BMINSC ~Hrm. Perhaps a Giant Space Hamster?~
== BX3Kal ~Heh. No thanks, mate. That's all you. I think Kale and Cloak are just fine.~
== BMINSC ~Minsc has never heard your cloak speak. But he will listen harder.~
== BX3Kal ~Uh...don't try too hard, mate. Yeah, forget I said that.~
EXIT 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Kal")
See("Hexxat")
Global("X3KalHexxat","GLOBAL",0)~ THEN BX3Kal X3KalHexxat1
~So...how did you become a vampire anyway? Just curious.~ 
DO ~SetGlobal("X3KalHexxat","GLOBAL",1)~
== BHEXXAT ~I could share, though 'tis no grand tale.~
== BX3Kal ~Aww, come on. It's got to be interesting. Tragic accident? Dark temptation? Diseased bat?~
== BHEXXAT ~Nothing like that.~
== BX3Kal ~Hrm, playing it down, eh? I bet you just want to hide the truth.~
== BHEXXAT ~If that is what you think.~
== BX3Kal ~With the way you talk, you sure tempt a guy to give up while he is behind. Nevermind.~
EXIT 

// Hexxat#2
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Kal")
See("Hexxat")
Global("X3KalHexxat","GLOBAL",1)~ THEN BX3Kal X3KalHexxat2
~Sooo. You ever think of taking my blood, Hexxat?~ [X3KSO]
DO ~SetGlobal("X3KalHexxat","GLOBAL",2)~
== BHEXXAT ~No.~
== BX3Kal ~Never? Not once? You know, given just how legendary my tales are, I bet my blood is delicious.~
== BHEXXAT ~What is the point of your question?~
== BX3Kal ~Just admit it. You are curious, aren't you? Come on! Say it.~
== BHEXXAT ~If that is what you really wish.~
== BX3KAL ~Err. You know what? I think I've changed my mind. Going over there now!~
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJan","GLOBAL",0)~ THEN BX3KAl X3KAlJan1
~I don't get it. Ye gnomes grow a nice bit of beard so easily. Takes me years to grow a tiny bit of anything.~ [X3Blank]
DO ~SetGlobal("X3KAlJan","GLOBAL",1)~
== BJAN ~Perhaps you have the condition of Harson's Hair disfunction. Harson the wizard couldn't grow much hair either, so he developed a tonic to grow it all back.~
== BX3KAl ~Eh? Well, mind if you get me some of that?~
== BJAN ~Why yes, I do. I happen to have one remaining after I sold the rest to a good customer. Just dab it on your face once in the morning, once at night, and you'll have a beard as fine as Harson the wizard.~
== BX3KAL ~A wizard's beard eh? I'll take it. Can't wait to feel some real good hair.~
EXIT 


// Jan #2
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3KAl")
See("Jan")
Global("X3KAlJan","GLOBAL",1)~ THEN BX3KAl X3KAlJan2
~Hey, Jan. Your mixture didn't work. Gave me a damn mark on my skin. What the hell, mate?~ [X3Blank]
DO ~SetGlobal("X3KAlJan","GLOBAL",2)~
== BJAN ~Really? That is misfortunate. Did you use it as I instructed? Oh, that's a fine mark. It reminds me o-~
== BX3KAl ~Mate. Fix it.~
== BJAN ~But I can't. I'm sure it will go away by itself.~
== BX3KAL ~This is one of your pranks, isn't it mate?~
== BJAN ~I have no idea what you are talking about. You asked for help and I delivered, and it was my best sample.~
== BX3KAL ~Yeah, I'll remember that if you ever get a funny mark on your skin. No antidotes from me, that's for sure. Gnomes.~
EXIT 


//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Kal")
See("Neera")
Global("X3KalNeera","GLOBAL",0)~ THEN BX3Kal X3KalNeera2
~Neera. Think you could give my cloak a quick redesign?~ [X3Blank]
DO ~SetGlobal("X3KalNeera","GLOBAL",1)~
== BNEERA ~I'm not a tailor or a clothier, Kale. Isn't that what you do?~
== BX3Kal ~Hey, not so loud. Trying to appear tough, you know.~
== BNEERA ~Right. Like if anyone is paying attention to us.~
== BX3Kal ~Just cast one of your spells at it and see what you can do.~
== BNEERA ~That's...not a good idea. Are you sure? It could be fun, but don't yell at me if it's not what you expect.~
== BX3Kal ~Yeah, yeah, go for it.~
== BNEERA ~Okay, here goes...uh-oh.~
== BX3KAL ~What the?! How did you make it smaller, mate?! Now it looks like a baby cloak.~
== BNEERA ~Uh, it still fits! And it looks cute on you.~
== BX3KAL ~If I were a baby! Damn, I brought this on myself.~
== BNEERA ~I don't know. I think it's an improvement. *Snicker*. I'll try to fix it, give it here.~
== BX3KAL ~Nope. I'll just have to stitch something together by hand now. Lesson well learned!~
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Kal")
See("Neera")
Global("X3KalNeera","GLOBAL",1)~ THEN BX3Kal X3KalNeera2
~I'm betting you feel pretty safe with me in tow, eh Neera?~ [X3Blank]
DO ~SetGlobal("X3KalNeera","GLOBAL",2)~
== BNEERA ~Safe? I'd credit that more to <CHARNAME>, but we kind of dive into danger, don't you think?~
== BX3Kal ~Aww, come on. I've been protecting your rear quite well.~
== BNEERA ~Okay, okay. You've been a help too.~
== BX3Kal ~Heh. Pretty easy when you're at rear level.~
== BNEERA ~Now you've made this sound really creepy.~
== BX3Kal ~Not my fault your gods made you so tall.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Kal")
See("RASAAD")
Global("X3KalRasaad","GLOBAL",0)~ THEN BRASAAD X3KalRasaad1
~I admire how light and easy your heart is Kale, despite your own suffering. Such does not come so easy to me.~ [X3Blank]
DO ~SetGlobal("X3KalRasaad","GLOBAL",1)~
== BX3Kal ~Really? Well, I'm legendary for many things, but that's something minor to pick. Why that?~
== BRASAAD ~My thoughts often weigh heavily on me. To still find a bit of joy, to be able to think other thoughts. That is a strength that I do not have.~
== BX3Kal ~Eh. Truth is mate, I don't know if I've really suffered. I lost my father, but we were never close. Lost a few companions in the past but...well, they hurt. But I don't think in the end I've ever felt the pain you have. Probably would be just as gloomy.~
== BRASAAD ~Forgive me. I did not mean to compare our circumstances in this way.~
== BX3Kal ~Nah, don't worry. No competition, as you said...ah, damn it. I still felt I lost in some way.~
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Kal")
See("RASAAD")
Global("X3KalRasaad","GLOBAL",1)~ THEN BX3Kal X3KalRasaad2
~Sooo. You're a monk, Rasaad.~ [X3KSO]
DO ~SetGlobal("X3KalRasaad","GLOBAL",2)~
== BRASAAD ~Yes, I am a monk, Kale.~
== BX3Kal ~You make any vows? I got to say if you did, there's got to be a *lot* of pent up desires.~
== BRASAAD ~I...did not, no.~
== BX3Kal ~Well then...heh, I've got a lot of questions now.~
== BRASAAD ~Perhaps these can occur at another time.~
== BX3Kal ~Yeah, sure. Wait a minute...what if you say that next time?~
== BRASAAD ~And if I do?~
== BX3Kal ~Well, I am a persistent halfling. We'll see who is more stubborn, eh?~
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Kal")
See("Valygar")
Global("X3KalValygar","GLOBAL",0)~ THEN BX3Kal X3KalValygar1
~Sooo. You and me, seems we both have a bit of dad issues. Mine wasn't a crazy mage, though. Just a boring old abandoner of his child.~ 
DO ~SetGlobal("X3KalValygar","GLOBAL",1)~
== BVALYGA ~This isn't a contest, Kale.~
== BX3Kal ~Now hold on, I wasn't making anything a contest, mate. Though, figuratively, if we both told our stories, who do you think has the more interesting one?~
== BVALYGA ~The thought isn't crossing my mind.~
== BX3Kal ~Aww, come on! Hard to steal some bits of your story for mine if you don't tell it.~
== BVALYGA ~This isn't a game, Kale. And my story isn't some entertainment for you to make use of. If you cared more than just about yourself, you might see that.~
== BX3Kal ~Eh...all right, all right mate. I'll drop it. Sheesh, you know how to make a fellow feel bad.~
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Kal")
See("Valygar")
Global("X3KalValygar","GLOBAL",1)~ THEN BX3Kal X3KalValygar2
~You look a bit tense, Valygar. Quite bothered, even.~ 
DO ~SetGlobal("X3KalValygar","GLOBAL",2)~
== BVALYGA ~A lot weighs on my mind. It is for me to know, alone.~
== BX3Kal ~Well, sure, you don't have to talk about it. But no need to be tense, fellow. You know what I do to relax?~
== BVALYGA ~I have no interest.~
== BX3Kal ~Get a nice, good mug, a pretty lass, or lad, and have a good time.~
== BVALYGA ~If that works for you.~
== BX3Kal ~Talk about a fun killer, mate. You'll never be my wing, that's for sure.~
EXIT 


// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalViconia","GLOBAL",0)~ THEN BX3Kal X3KalViconia1
~You're a dusky beauty, Viconia. There ever be any unions between halflings and drow?~ 
DO ~SetGlobal("X3KalViconia","GLOBAL",1)~
== BVICONI ~With you toy sized people? We would never use you as pleasure slaves. Perhaps boot cleaners.~
== BX3Kal ~Well, size isn't everything. There are advantages to being small you know. I could show you.~
== BVICONI ~If I am ever desperate for whatever is the nothing you offer, halfling, you will be the first to know.~
== BX3KAL IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Well, too bad for you. My heart is <CHARNAME>'s, through and through. Nice to know I would have a chance, though.~
== BX3KAL IF ~!Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Heh. Well, that's not a rejection. I'll take it.~
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalYoshimo","GLOBAL",0)~ THEN BYOSHIM X3KalYoshimo1
~You look so amusing in battle, young Kale. Like an adorable little mouse swinging about. Strong like a samurai, for one so small.~ 
DO ~SetGlobal("X3KalYoshimo","GLOBAL",1)~
== BX3Kal ~Hey, I'm not that little, mate. It's just that you are like this big clumsy bear, swinging his blade here and there.~
== BYOSHIM ~Yoshimo the bear, then? Ah, it does have a ring to it, doesn't it my friend?~
== BX3Kal ~Yeah...damn I got to work on my insults.~
EXIT 

//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalPartyBG1","GLOBAL",1)
Global("X3KalX3Reb1","LOCALS",0)~ THEN BX3Kal X3KalX3Reb1
~Recorder, I was wondering, where does one find a copy of that tome you wrote of <CHARNAME>'s adventure's in Baldur's Gate? Curious how much I'm in it.~
DO ~SetGlobal("X3KalX3Reb1","LOCALS",1)~
== BX3Reb ~I don't think it's been published widely, yet. Maybe at the temple, if they've started making copies.~
== BX3Kal ~Criminy. Wait, aren't I owed a free book? I'm partly responsible for its succesful making.~
== BX3Reb ~I...don't see how that is the case.~
== BX3Kal ~Clearly, you don't remember where I saved <CHARNAME> by bashing an ogre in the knee, and then throwing it across into another ogre in the Iron Throne's headquarters.~
== BX3Reb ~I...don't have any recollection of that.~
== BX3KAl ~Well then, guess you have some more work to do before you let this circulate, eh?~
== BX3Reb ~Thank you but...I'm confident my version of events are safe to publish.~
== BX3Kal ~Pfft. When you see the sales drop, I warned you.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3Reb2","LOCALS",0)
GlobalGT("X3RebTalk","LOCALS",10)~ THEN BX3Kal X3KalX3Reb2
~So you're a liar, eh? You always did seem too nice to be true.~
DO ~SetGlobal("X3KalX3Reb2","LOCALS",1)~
== BX3Reb ~I'm sorry. I didn't think any of it would ever come back.~
== BX3Kal ~How do we even know you're who you say you are still? Far as I know, you could be Elminster's daughter.~
== BX3Reb ~Kale, that's ridiculous. I'm a *gnome*.~
== BX3Kal ~Elminster the father, some goddess as the mother. That'd make it work. Also gives you the power to charm all of us with your part godliness. That's why no one's giving you suspicios eyes.~
== BX3Reb ~Kale, I said I am sorry. Can we um, not stretch this out of proportion? Your accusation makes no sense.~
== BX3Kal ~Pfft. As I always say, the most unbelievable idea always tends to be the truth.~
== BX3Reb ~I...don't think that makes any sense. Maybe if you start with finding some evidence of that we can...come back to this.~
== BX3Kal ~You'll see. Kale can sleuth anything up. Just got to find your lost-sister. Or brother.~
== BX3Reb ~Sorry but...I think I am going to stop listening now..~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3KalX3Reb3","LOCALS",0)~ THEN BX3Reb X3KalX3Reb3
~It's sad. All the halflings I see in the cities seem...well they don't seem to be doing so well.~ [X3KSO]
DO ~SetGlobal("X3KalX3Reb3","LOCALS",1)~
== BX3Kal ~In Althkata? Nah, they get by. All that matters really, right?~
== BX3Reb ~The ones I've met in little farming villages always seem to be a bit happier and brighter. Close-knit too.~
== BX3Kal ~Well, it's different in the city. Maybe a little harder, but it provides all of its own misadventures. Especially for the you know, "borrowing" type.~
== BX3Reb ~I hope you don't condone that.~
== BX3Kal IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~Of course I do. Live how you want. Long as you don't get caught.~
== BX3Reb IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~You believe that? Even with what happened to your father?~
== BX3Kal IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~Eh, life's short, who cares. Let's move on.~
== BX3Reb IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~But...~
== BX3Kal IF ~!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~I said let's move on. And that's the end of it.~
== BX3Kal IF ~Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~No. I think that brings more trouble. We can be better then that. More of us got to be like Jillian.~
== BX3Reb IF ~Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~I think given time that will happen. Things have changed so much in the last centuries. I think even more shifts and turns and changes are on the horizon.~
== BX3Kal IF ~Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~Like a new evolved version of halflings? I look forward to it. And the version after, too. That's always the better one.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3RebQuest","GLOBAL",15)
Global("X3KalX3Reb2","LOCALS",1)~ THEN BX3Reb X3KalX3Reb4
~Do you miss your mother, Kale? I understand she's in the north in your home village.~ [X3Blank]
DO ~SetGlobal("X3KalX3Reb2","LOCALS",2)~
== BX3Kal ~Yeah. What boy doesn't miss his mother? Why do you ask anyway?~
== BX3Reb ~Oh...nothing! Just wondering.~
== BX3Kal ~Well, call me a monkey's uncle, you're missing your son and wondering if he cares.~
== BX3Reb ~...A little, I confess.~
== BX3Kal ~Well, the cold hard truth is that I don't think of my mother *all* the time. Not always appropriate when you're trying to do certain things, if you know what I mean.~
== BX3Reb ~Kale, please-~
== BX3Kal ~Wait, hold on, hold on. Point is...you saved him, Recorder. I bet he's thinking of you everyday. Waiting. Probably wants some answers, but yeah. I think he misses you.~
== BX3Reb ~You really think so?~
== BX3Kal ~Heh, I know so. How old is he anyway? Given you're a lady and all, you might want me to take care of some of the more manly topics.~
== BX3Reb ~I think I will be...fine. Thank you, though.~
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
Global("X3KalX3Vie1","LOCALS",0)~ THEN BX3Kal X3KalX3Vie1
~Vienxay. You know, that's a bit of an odd name for an elf, don't you think?~
DO ~SetGlobal("X3KalX3Vie1","LOCALS",1)~
== BX3Vie ~You, whose name is literally cabbage, is calling my name odd?~
== BX3Kal ~Heh. People like to eat me. I'm that delightful.~
== BX3Vie ~Ugh, you'd probably taste putrid.~
== BX3Kal ~Got an arm right here you can sample if you like.~
== BX3Vie ~If I feel the need to sample anything of yours, you'll be the first to know.~
== BX3Kal ~Eghn. Suddenly I am horrified.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Vie")
Global("X3KalX3Vie1","LOCALS",1)~ THEN BX3Kal X3KalX3Vie2
~Really now. Vienxay. Is it really elven?~
DO ~SetGlobal("X3KalX3Vie1","LOCALS",2)~
== BX3Vie ~Are we really back to this again? I thought I made it clear how uninterested I was in entertaining you with an answer.~
== BX3Kal ~I'm curious, mate, can you blame me? A halfling's got to know these things.~
== BX3Vie ~I hardly see why you need to know anything.~
== BX3Kal ~Why such the wall? It's a bloody name.~
== BX3Vie ~It is more then that. But your pointed pain over it amuses me. My stance remains unchanged.~
== BX3Kal IF ~InParty("X3Reb")~ THEN ~Damn it, I'll just ask Recorder. She ought to know.~
== BX3Kal IF ~!InParty("X3Reb")~ THEN ~Damn it, I'll just ask around. Someone ought to know.~
== BX3Vie ~I doubt it. Good luck~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Alignment("X3Kal",LAWFUL_NEUTRAL)
Global("X3KalX3Vie2","LOCALS",0)~ THEN BX3Vie X3KalX3Vie3
~I would have taken revenge. Even if you weren't close to him, family is family.~ [X3KSO]
DO ~SetGlobal("X3KalX3Vie2","LOCALS",1)~
== BX3Kal ~He's behind bars. For a long time, maybe for good. That works for me.~
== BX3Vie ~Does it? People can get out. People get free. Guards can be bribed.~
== BX3Kal ~You were screaming for help about imprisonment, if I'm not mistaken.~
== BX3Vie ~There are inconveniences with breaking out, if that is your point. But it is still possible.~
== BX3Kal ~If he escapes...well he knows the consequences. But I trust Jills. I trust the system. As messed up as the city has been, we've been able to do some change. That makes me hopeful, mate.~
== BX3Vie ~No, that makes me less hopeful about your future. You are more dissapointing than I thought.~
== BX3Kal ~Heh, that's 'cause you haven't had me in your bedroll.~
== BX3Vie ~And now you show your primitive intellect and base needs. You can keep your lonely cold nights.~
== BX3Kal IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Pfft. I got <CHARNAME>, I'll be just fine...unless saying that got me in trouble. Criminy.~
EXIT 