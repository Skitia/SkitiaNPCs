/*Petsy--------------14
Each character should have:
3 SoA General Banters 
1 Specific Banter (Quest, Romance, etc.) 
1 ToB Banter General 
1 Optional Specific*/

//Petsy-Emily #1
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("L3Petsy")
Global("X3EmiPetsy","GLOBAL",0)~ THEN BX3Emi X3EmiPetsy1
~You are so cute, Petsy! "Gingerbread, rargh!"~ [X3Blank]
DO ~SetGlobal("X3EmiPetsy","GLOBAL",1)~
== L3PetsyB ~Hey! Are you making fun of me?~
== BX3Emi ~No, no, I think it is great! Honestly, I'm thinking of naming my weapon now.~
== L3PetsyB ~Really? What sort of name?~
== BX3Emi ~Well...I'm a bit stuck, actually. I don't swing my ranged weapon, and it needs something...fitting. Do you have any ideas?~
== L3PetsyB ~Hmm. Let me get back to you! I bet I can come up with something.~
EXIT 

// Petsy-Emily #2
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiPetsy","GLOBAL",0)~ THEN L3PetsyB X3EmiPetsy1
~Hey, I got an idea, Emily! For a name.~ [X3Blank]
DO ~SetGlobal("X3EmiPetsy","GLOBAL",1)~
== BX3Emi ~Oooh! What is it?~
== L3PetsyB ~Oakwood! Since it's made out of trees, you can use the name of the tree.~
== BX3Emi ~Rargh, Oakwood?~
== L3PetsyB ~Oh. Maybe not.~
== BX3Emi ~What about...Missile Fire!~
== L3PetsyB ~Because it fires missiles?~
== BX3Emi ~Right, I think that is a bit of an odd name too. This is so hard!~
== L3PetsyB ~Let's come back to it later. Maybe a bit more time is all we need.~
== BX3Emi ~Agreed! With a bit of luck, I think we'll come up with something brilliant.~
EXIT 

//Petsy-Emily #3 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiPetsy","GLOBAL",0)~ THEN L3PetsyB X3EmiPetsy1
~Sorry Emily, I just haven't been able to come up with a name that didn't sound stupid.~ [X3Blank]
DO ~SetGlobal("X3EmiPetsy","GLOBAL",1)~
== BX3Emi ~That's okay. In my head, I think I'm being taken with the name "Mr. Bow."~
== L3PetsyB ~Mr. Bow?~
== BX3Emi ~Yes! Go Mr. Bow! It sounds so formal!~
== L3PetsyB ~What if it's a miss bow?~
== BX3Emi ~Now that you mention it...~
== BX3Hel IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~For the love of Haela, will ye two sheesh this game?~
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You two are like idiotic little girls. Are you incapable of chattering about anything intellectual?~
== BX3Kal IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft. It's cloaks that matter. Not very glorious to go around screaming your weapon anme anyhow.~
== BX3Emi ~Well, nevermind. I don't think our present company is very uh, appreciative of our guessing.~
== L3PetsyB ~Aww. Well, it was fun, anyway.~
== BX3Emi ~Yes! Maybe we can name arrows instead. I let fly so many of them, it could be fun to just shout out someone's random name.~
== L3Petsy ~Yeah! Or...wait, that could quickly become stupid too.~
== BX3Emi ~I guess you are right. Sorry, Quiver and Friends! Another time.~
EXIT 

// Petsy-Helga #1
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsy","GLOBAL",0)~ THEN BX3Hel X3HelPetsy1
~We got to get you a proper weapon, lass. Not a stick that smells like food.~ [X3Blank]
DO ~SetGlobal("X3HelPetsy","GLOBAL",1)~
== L3PetsyB ~What's wrong with Gingerbread?~
== BX3Hel ~Ye wish to strike fear into yer enemy, lass. Not hunger.~
== L3PetsyB ~Hee, I am a little bit hungry right now. Can I have some of your cooking later?~
== BX3Hel ~Bah. Bloody hopeless.~
EXIT 

//Petsy-Helga #2
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsy","GLOBAL",0)~ THEN BX3Hel X3HelPetsy1
~Hrrngh.~ [X3Blank]
DO ~SetGlobal("X3HelPetsy","GLOBAL",1)~
== L3PetsyB ~Why are you glaring that way at Gingerbread?~
== BX3Hel ~Lass...I be going to get ye a proper weapon. A sword or a hammer. Maybe an axe.~
== L3PetsyB ~Uh, does it matter? Besides, Gingerbread is special.~
== BX3Hel ~It be bloody primitive! A proper warrior in me company needs a proper weapon.~
== L3PetsyB ~Isn't this <CHARNAME>'s company?~
== BX3Hel ~Hrrngh.~
== L3PetsyB ~I'll use whatever <CHARNAME> thinks is best, but I like Gingerbread. Oh! Speaking of food, do you have any leftovers from your meal last night? I'm really hungry.~
== BX3Hel ~Bah!~
EXIT 


// Petsy-Kale Special
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
Global("X3KalPartyBG1","GLOBAL",1)
See("L3Petsy")
Global("X3KalPetsy","LOCALS",0)~ THEN BX3Kal X3KalPetsySpecial
~Soo. Imoen, huh? There was a much smaller, more famous companion next to <CHARNAME>'s side you could have pretended to be.~ [X3Blank]
DO ~SetGlobal("X3KalPetsy","LOCALS",1)~
== L3PetsyB ~I was only familiar with Imoen, and her hair. We have the same ginger hair, and she sounded so interesting.~
== BX3Kal ~Come on! She can't be half as interesting as my feats. Saved the entire gang single-handedly once from a giant wyvern. Best story, I tell you.~
== L3PetsyB ~I'm sorry, I didn't know you traveled with <CHARNAME> before.~
== BX3Kal ~Damn. Talk about being overshadowed, I really got to ask <CHARNAME> to give me more of the credit.~
== L3PetsyB ~Heh, I'd love to hear it sometime, Kale. I love stories! We could swap tales, I could share a few of my family with you. You'd love my great-grandfather!~
== BX3Kal ~Sure, sure. But I've got to warn you, my stories are never beat with their excitement.~
== BX3Vien IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, are all halflings so talkative about nothing of substance?~
== L3PetsyB IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Is she always this grumpy?~
== BX3Kal IF ~IsValidForPartyDialogue("X3Vie")!Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Eh, she's probably just jealous. Not enough halfling in her life. We'll have to make up for that absence she's suffered.~
== BX3Kal IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Pfft, this is her on a good day. I'll tell you, her bad days are even more charming.~
EXIT 

// Petsy-Kale #1
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsy","GLOBAL",0)~ THEN BX3Kal X3KalPetsy1
~Say, weren't you my neighbor in Gullykin? I think you left sometime before I did.~ [X3Blank]
DO ~SetGlobal("X3KalPetsy","GLOBAL",1)~
== L3PetsyB ~I did! Your mother always had something good smelling coming from your burrow.~
== BX3Kal ~Heh, kind of funny that two halflings from Gullykin are both by <CHARNAME>'s side, eh? Guess they've good taste.~
== L3PetsyB ~When did you leave Gullykin?~
== BX3Kal ~A few months after you did. Picked up a weapon and started trying to make a name for myself. I've stopped back a time or two, but it's not changed much.~
== L3PetsyB ~Gullykin was always quiet and slow. I like it that way. I miss it.~
== BX3Kal ~Yeah...I miss home too.~
EXIT 

// Petsy-Kale #2 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsy","GLOBAL",1)~ THEN L3PetsyB X3KalPetsy1
~Do you sometimes think how things would be if you never left Gullykin, Kale?~ [X3Blank]
DO ~SetGlobal("X3KalPetsy","GLOBAL",2)~
== BX3Kal ~Duller than watching grass grow in a garden.~
== L3PetsyB ~But we'd be with our families. We'd have them, and it would be safer.~
== BX3Kal ~Sure, sure, but we both know the thrill of the road is its own reward. 'Sides, hard to ignore the call once you get the itch eh?~
== L3PetsyB ~I guess. I just knew I had to know what happened to grandma. But I was also excited to be on my own, and see things I have never seen before.~
== BX3Kal ~Exactly. And a bit of fame, good food, and a wench or two doesn't hurt either.~
== L3Petsy ~Right! Well, to only some of that. Especially the food. Well, only some of that too~
== BX3Kal ~You just have to know what taverns to go to. It sure ain't the one in the Docks district, let me tell you that.~
EXIT 

//Petsy-Recorder #1 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RebPetsy","GLOBAL",0)~ THEN BX3Reb X3RebPetsy1
~Before you Petsy, I have never met a halfling bard before. I'm glad more of us small folk are picking up the occupation.~ [X3Blank]
DO ~SetGlobal("X3RebPetsy","GLOBAL",1)~
== L3PetsyB ~And I've never met a gnome bard before, or a lorekeeper. Anything tall folk can do, we can do.~
== BX3Reb ~Heehee, I'd love to play a duet with you sometime. Do you have an instrument you play?~
== L3PetsyB ~Oh, I can play the flute. A little.~
== BX3Reb ~You have a flute too? I would love to see it.~
== L3PetsyB ~Oh, I don't have a flute, actually.~
== BX3Reb ~Oh. Do you perform in some other way?~
== L3PetsyB ~I can dance. A little. Okay, I can "dance".~
== BX3Reb ~Um. Okay! That is...something. Do you keep a record of our journey?~
== L3PetsyB ~Do you mean write? I like the idea! But I haven't.~
== BX3Reb ~Oh. Well...there's bound to be something we can bond over. I guess I just have to think on it.~
EXIT 

//Petsy-Recorder #2
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RebPetsy","GLOBAL",1)~ THEN BX3Reb X3RebPetsy2
~Hrm.~ [X3Blank]
DO ~SetGlobal("X3RebPetsy","GLOBAL",2)~
== L3PetsyB ~Are you still thinking of things we have in common, Recorder?~
== BX3Reb ~Yes, actually. I was wondering, do you like to read and learn about things?~
== L3PetsyB ~I love a good book! Poetry, and that sort of thing.~
== BX3Reb ~Really? Do you know any languages? Like Elven or draconic?~
== L3PetsyB ~No, just the normal trade language and halfling.~
== BX3Reb ~Oh. Well, we were closer this time. I'm afraid spent a lot more time on history and music than poetry when I learned the trade.~
== L3PetsyB ~We'll find it sooner or later, I'm sure!~
EXIT 

//Petsy-Vienxay #1
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("L3Petsy")
Global("X3ViePetsy","GLOBAL",0)~ THEN BX3Vie X3ViePetsy1
~Tiny one! Stop tripping me.~ [X3Blank]
DO ~SetGlobal("X3ViePetsy","GLOBAL",1)~
== L3PetsyB ~Sorry. And the name is Petsy.~
== BX3Vie ~Whatever. Just get out of my way. I am the mage. I do everything important. You...do whatever bards do.~
== BX3Reb IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~*Sigh.* Bards do magic as well, Vienxay.~
== L3PetsyB ~There is no need to be so rude.~
== BX3Vie ~When my ankles recover from the inconvenience of your sloppy steps, I will re-consider my tone. Until then, watch your step!~
EXIT 

//Petsy-Vienxay #2
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("L3Petsy")
Global("X3ViePetsy","GLOBAL",1)~ THEN BX3Vie X3ViePetsy2
~How many times do I have to say it? Stop tripping me, Petsy! Clearly the long form for pest.~ [X3Blank]
DO ~SetGlobal("X3ViePetsy","GLOBAL",2)~
== L3PetsyB ~I am not even near you!~
== BX3Vie IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What? Hrmph. It was Kale, then.~
== BX3Kal IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Yep. Totally.~
== BX3Vie IF ~!IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("Mazzy")~ THEN ~What? Hrmph. It was Mazzy, then.~
== BMAZZY IF ~!IsValidForPartyDialogue("X3Kal")IsValidForPartyDialogue("Mazzy")~ THEN ~Perhaps if you looked where you were going and kept your nose down, you would not step into me. Now leave Petsy alone.~
== BX3Vie IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ THEN ~Please. Who else could it have been, hmm?~
== L3PetsyB IF ~!IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("Mazzy")~ THEN ~You are crazy, Vienxay. Completely crazy!~
== BX3Vie ~Ugh! Halflings! I *will* be watching you closely.~
EXIT 

//Petsy-Vienxay #3 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3ViePetsy","GLOBAL",2)~ THEN L3PetsyB X3ViePetsy3
~Ooph! Ow, what was that for, Vienxay?~ [X3Blank]
DO ~SetGlobal("X3ViePetsy","GLOBAL",3)~
== BX3Vie ~Sweet revenge. You've tripped me, and I've tripped you. That is all.~
== L3PetsyB ~Oh for Sheela's sake! I am your companion. You really are asking for a kick to your shin.~
== BX3Vie ~Please, you hardly have t- ow! You prat!~
== L3PetsyB ~I warned you!~
== BKORGAN ~IsValidForPartyDialogue("Korgan")~ THEN ~Aye, good kick on the elf, lassie. I taught ye well.~
== BX3Vie ~Hrmph. I suppose I underestimated your spine, halfling. Consider this settled. You are less worthless than I thought you were.~
== L3PetsyB ~Um, thank- hey! You tripped me again!~
== BX3Vie ~I couldn't leave your attack without a response. *Now* we are settled.~
EXIT 

//Petsy-Vienxay Special 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("L3Petsy")
Dead("L3Zane")
Global("X3ViePetsy","LOCALS",0)~ THEN BX3Vie X3ViePetsySpecial
~So the target of all your woes is dead. You must be happy.~ [X3Blank]
DO ~SetGlobal("X3ViePetsy","LOCALS",1)~
== L3PetsyB ~Zane? His death isn't what I wanted.~
== BX3Vie ~Please, it would have been better if it was by your own hand, but it is what it is.~
== L3PetsyB ~I am not like you, Vienxay. I am not about returning every slight with revenge.~
== BX3Vie ~It is justice, and it is sating. Still, I hardly care about halfling affairs. I don't even know why I mentioned anything.~
== L3PetsyB ~Wait, are you...asking how I am? In your Vienxay way?~
== BX3Vie ~Whatever.~
== L3PetsyB ~You are being sweet to me. That's rare. And a bit uncomfortable.~
== BX3Vie ~I said whatever! Ugh.~
EXIT 