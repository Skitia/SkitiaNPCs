/*Petsy  */

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
Global("X3EmiPetsy","GLOBAL",1)~ THEN L3PetsyB X3EmiPetsy2
~Hey, I got an idea, Emily! For a name.~ [X3Blank]
DO ~SetGlobal("X3EmiPetsy","GLOBAL",2)~
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
Global("X3EmiPetsy","GLOBAL",2)~ THEN L3PetsyB X3EmiPetsy3
~Sorry Emily, I just haven't been able to come up with a name that didn't sound stupid.~ [X3Blank]
DO ~SetGlobal("X3EmiPetsy","GLOBAL",3)~
== BX3Emi ~That's okay. In my head, I think I'm being taken with the name "Mr. Bow."~
== L3PetsyB ~Mr. Bow?~
== BX3Emi ~Yes! Go Mr. Bow! It sounds so formal!~
== L3PetsyB ~What if it's a miss bow?~
== BX3Emi ~Now that you mention it...~
== BX3Hel IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~For the love of Haela, will ye two sheesh this game?~
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You two are like idiotic little girls. Are you incapable of chattering about anything intellectual?~
== BX3Kal IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft. It's cloaks that matter. Not very glorious to go around screaming your weapon name anyhow.~
== BX3Emi ~Well, never mind. I don't think our present company is very uh, appreciative of our guessing.~
== L3PetsyB ~Aww. Well, it was fun, anyway.~
== BX3Emi ~Yes! Maybe we can name arrows instead. I let fly so many of them, it could be fun to just shout out someone's random name.~
== L3Petsy ~Yeah! Or...wait, that could quickly become stupid too.~
== BX3Emi ~I guess you are right. Sorry, Quiver and Friends! Another time.~
EXIT 

//Petsy-Emily Special 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
GlobalGT("X3EGVJQuest","GLOBAL",0)
Global("X3EmiPetsy","LOCALS",0)~ THEN BX3Emi X3EmiPetsy1
~Halfling families always seem so close, the ones that I have seen.~ [X3Blank]
DO ~SetGlobal("X3EmiPetsy","LOCALS",1)~
== L3PetsyB ~Most, maybe! But I don't really miss my parents. I love them, and I wonder what they are doing, but I love this life.~
== BX3Emi ~That's surprising, but not unexpected. I guess I just wish my family was as close as what I've seen from others.~
== L3PetsyB ~You can really only be as close as people want you to be. We might seem more tight-knit than human folk, but even my parents exasperated me sometimes.~
== BX3Emi ~It's just my brother. I just wish we weren't so...against each other.~
== L3PetsyB ~Well I don't think you can shorten your legs and become a halfling, Emily.~
== BX3Emi ~I wish. Then not only would we be closer, I could eat all the time and still look great! Benefits.~
EXIT 

//Petsy Emily ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiPetsyToB","GLOBAL",0)~ THEN L3Pet25B X3EmiPetsyToB
~You look down, Emily. More down than usual.~ [X3Blank]
DO ~SetGlobal("X3EmiPetsyToB","GLOBAL",1)~
== BX3Emi25 ~This is my homeland, Petsy. And it's completely engulfed in this conflict. It's...not the homecoming I was expecting.~
== BX3Emi25 ~Imagine if your home was like this. It's devastating.~
== L3Pet25B ~It will get better! It can only get better. That's why we are with <CHARNAME>.~
== BX3Emi25 ~I really hope so, Petsy. There are so many places I could show you otherwise that are busting with people and joy. I'll just have to hope things get that way when its all over.~
EXIT 

//Petsy Emily ToB Special 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("TethyrBattleStart","GLOBAL",1)
Global("X3EmiPetsyToB","GLOBAL",1)~ THEN L3Pet25B X3EmiePetsyToBSpecial
~Are you okay Emily? You look even more upset than before.~ [X3Blank]
DO ~SetGlobal("X3EmiPetsyToB","GLOBAL",2)~
== BX3Emi25 ~I grew up admiring the queen, Petsy. It's...frustrating to be seen as an enemy by your own ruler.~
== L3Pet25B ~They just don't know that <CHARNAME> is one of the good ones, that's all.~
== BX3Emi25 ~A queen has many duties. It's probably just some advisor who has no understanding and is advising to be paranoid against all Bhaalspawn. It's terrible.~
== L3Pet25B ~Well we showed them we aren't a good target! At least they'll leave us alone now.~
== BX3Emi25 ~Gods, I hope so. I don't want to spill any more blood of my people. My heart's suffered enough.~
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
Global("X3HelPetsy","GLOBAL",1)~ THEN BX3Hel X3HelPetsy2
~Hrngh.~ [X3Blank]
DO ~SetGlobal("X3HelPetsy","GLOBAL",2)~
== L3PetsyB ~Why are you glaring that way at Gingerbread?~
== BX3Hel ~Lass...I be going to get ye a proper weapon. A sword or a hammer. Maybe an axe.~
== L3PetsyB ~Uh, does it matter? Besides, Gingerbread is special.~
== BX3Hel ~It be bloody primitive! A proper warrior in me company needs a proper weapon.~
== L3PetsyB ~Isn't this <CHARNAME>'s company?~
== BX3Hel ~Hrngh.~
== L3PetsyB ~I'll use whatever <CHARNAME> thinks is best, but I like Gingerbread. Oh! Speaking of food, do you have any leftovers from your meal last night? I'm really hungry.~
== BX3Hel ~Bah!~
EXIT 

//Petsy-Helga #3 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsy","GLOBAL",2)~ THEN BX3Hel X3HelPetsy3
~I be having to admit, I be wrong about ye all this time.~ [X3Blank]
DO ~SetGlobal("X3HelPetsy","GLOBAL",3)~
== L3PetsyB ~What are you saying, Helga? Wrong about what?~
== BX3Hel ~When I saw how ye split that last lad's skull with that club, I be having full respect for yer weapon.~
== L3PetsyB ~Oh, that was a bit of an accident, I didn't mean to smash his head that hard, but he had it coming.~
== Bx3Hel ~Ye bloody spilled his gray matter all over the place. It nay be a hammer, but it's brought ye glory, girl. Rejoice.~
== L3PetsyB ~Eheh. Thanks, Helga.~
== BX3Hel ~Aye. Now just keep doing it again. Damn sight it was, and I'd love to see it again.~
EXIT 

//Petsy-Helga Special 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("L3PetsyRomanceActive","GLOBAL",2)
Global("X3HelPetsy","GLOBAL",2)~ THEN BX3Hel X3HelPetsySpecial
~Yer taking a big risk, little one. I hope ye know what ye are doing.~ [X3Blank]
DO ~SetGlobal("X3HelPetsy","GLOBAL",3)~
== L3PetsyB ~What risk?~
== BX3Hel ~Ye and <CHARNAME>. Friendship is one thing. Yer relationship skews past this. A risk.~
== L3PetsyB ~Weren't you married once, Helga? Besides, doesn't getting close make us stronger?~
== BX3Hel ~Nay when it is to someone like <CHARNAME>. They be a fierce soul, but there be blood all in their path. I be loving it...but it nay the path for romance, lass.~
== L3PetsyB ~It isn't going to be like that forever. Or always. There's the nice spots! The calm of the night, cuddling beneath a breeze...~
== BX3Hel ~Hold on to those thoughts if ye wish. Ye'll need it.~
EXIT 

//Petsy-Helga ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("X3HelPetsyToB","GLOBAL",0)~ THEN BX3Hel25 X3KalPetsyToB
~What's that in yer little hand there, bard lass?~ [X3Blank]
DO ~SetGlobal("X3HelPetsyToB","GLOBAL",1)~
== L3Pet25B ~Oh this? It's just some cheese I've been saving. Arabellan Cheddar! It's tasty on anything.~
== BX3Hel25 ~Good. Give it here.~
== L3Pet25B ~What? But it's my cheese!~
== BX3Hel25 ~Aye, but I need an ingredient to cook with and we aren't exactly in pastures to just pick out things, and that cheese will do perfectly.~
== L3Pet25B ~What will I eat then? I'm hungry.~
== BX3Hel25 ~Yer always bloody hungry. Nay worry, when I'm done cooking it, ye'll have a hearty serving and be mighty thankful.~
== L3Pet25B ~Oh all right. As long as its two servings, and not one!~
== BX3Hel25 ~Hrngh. Greedy bloody stomach. Have it yer way, then.~
EXIT 

//Petsy-Helga ToB Special 
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Hel")
See("L3Petsy")
Global("L3PetsyRomanceActive","GLOBAL",2)
Global("X3HelPetsy","GLOBAL",1)~ THEN BX3Hel25 X3HelPetsyTobSpecial
~Bloody hells. I was not just wrong about ye and <CHARNAME>, but heavily so. Ye make a fine pair.~ [X3Blank]
DO ~SetGlobal("X3HelPetsyToB","GLOBAL",2)~
== L3Pet25B ~That's really nice of you, Helga! I'm glad your thoughts turned around.~
== BX3Hel25 ~That nay means rest on your laurels. The damn road to the end of this bloody mess is only going to get bloodier. Fight hard enough and ye may just get that bright light ye be wanting.~
== L3Pet25B ~I hope so! Though I've been hoping there's a lot more than just light. A nice comfortable bed, and food. Lots of food.~
== BX3Hel25 ~We make it through this lass? Aye, there will probably be all of the food ye want in the world.~
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
Global("X3KalPetsy","GLOBAL",1)~ THEN L3PetsyB X3KalPetsy2
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
//Petsy-Kale #3
CHAIN 
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsy","GLOBAL",2)~ THEN BX3Kal X3KalPetsy3
~Damn, Petsy. I think you're the best bard I've ever had the honor to travel with. And the best halfling too, to boot!~ [X3Blank]
DO ~SetGlobal("X3KalPetsy","GLOBAL",3)~
== L3PetsyB ~Really Kale? That makes me feel great. Really great.~
== BX3Kal IF ~!InParty("MAZZY")!Race(Player1,"HALFLING")~ ~Well, you deserve it, eh? Kin ought to appreciate kin. Lost too many good friends who I've never given that to enough.~
== BX3Kal IF ~OR(2)InParty("MAZZY")Race(Player1,"HALFLING")~ ~Well...second best.~
== L3PetsyB IF ~OR(2)InParty("MAZZY")Race(Player1,"HALFLING")~ ~Hey. Second best? That's not much of a compliment.~
== BX3Kal IF ~OR(2)InParty("MAZZY")Race(Player1,"HALFLING")~ ~Heh, don't get mad at me, get mad at them.~
== BX3Kal IF ~!IsValidForPartyDialogue("MAZZY")~ ~'sides, you're still amazing, eh? Been with plenty of other halflings. Arvora for example was stiff. You're all fun instead! And from Gullykin to boot! Much better.~
== BX3Kal IF ~!IsValidForPartyDialogue("MAZZY")~ ~Heh, speaking of fun, you're definitely the most fun eh? How's that sound.~
== L3PetsyB IF ~!IsValidForPartyDialogue("MAZZY")~ ~Thanks Kale. That sounds more genuine.~
== BX3Kal IF ~!IsValidForPartyDialogue("MAZZY")~ ~Well, now that I think about it some more, there might be someone more f- ow, hey, I'm kidding! Damn,that's a good ankle kick. Lesson learned.~
== BMAZZY IF ~IsValidForPartyDialogue("MAZZY")~ ~Kale please, there is no reason to put someone up and then put them down.~
== BX3Kal IF ~IsValidForPartyDialogue("MAZZY")~ ~All right, all right...first best.~
== BMAZZY IF ~IsValidForPartyDialogue("MAZZY")~ ~Arvoreen, give me patience...~
EXIT 

// Petsy-Kale Special
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
Global("X3KalPartyBG1","GLOBAL",1)
See("L3Petsy")
Global("X3KalPetsy","LOCALS",0)~ THEN BX3Kal X3KalPetsySpecial
~Sooo. Imoen, huh? There was a much smaller, more famous companion next to <CHARNAME>'s side you could have pretended to be.~ [X3Blank]
DO ~SetGlobal("X3KalPetsy","LOCALS",1)~
== L3PetsyB ~I was only familiar with Imoen, and her hair. We have the same ginger hair, and she sounded so interesting.~
== BX3Kal ~Come on! She can't be half as interesting as my feats. Saved the entire gang single-handedly once from a giant wyvern. Best story, I tell you.~
== L3PetsyB ~I'm sorry, I didn't know you traveled with <CHARNAME> before.~
== BX3Kal ~Damn. Talk about being overshadowed, I really got to ask <CHARNAME> to give me more of the credit.~
== L3PetsyB ~Heh, I'd love to hear it sometime, Kale. I love stories! We could swap tales, I could share a few of my family with you. You'd love my great-grandfather!~
== BX3Kal ~Sure, sure. But I've got to warn you, my stories are never beat with their excitement.~
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, are all halflings so talkative about nothing of substance?~
== L3PetsyB IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Is she always this grumpy?~
== BX3Kal IF ~IsValidForPartyDialogue("X3Vie")!Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Eh, she's probably just jealous. Not enough halfling in her life. We'll have to make up for that absence she's suffered.~
== BX3Kal IF ~IsValidForPartyDialogue("X3Vie")Global("X3ViePartyBG1","GLOBAL",1)~ THEN ~Pfft, this is her on a good day. I'll tell you, her bad days are even more charming.~
EXIT 

//Petsy-Kale ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsyToB","GLOBAL",0)~ THEN BX3Kal25 X3KalPetsyToB
~Sooo. We've been making some fame for ourselves, haven't we Petsy?~ [X3Blank]
DO ~SetGlobal("X3KalPetsyToB","GLOBAL",1)~
== L3Pet25B ~It's had its exciting moments. But I wish I wasn't always so hungry.~
== BX3Kal25 ~Pfft. That's <CHARNAME>'s fault. Doesn't stop enough for food breaks.~
== L3Pet25B ~I could use something to eat just about now.~
== BX3Kal25 ~Heh. You know...we're a lot stronger than we used to be. We could do a coup. Take over. Install eat at any-time rules!~
== L3Pet25B ~Uh...I don't want to do that. We'd never see the light of tomorrow.~
== BX3Kal25 ~Aww, come on! Just wiggle your eyebrows a bit, I'll tie their hands, and then we can become the group leaders.~
== L3Pet25B ~What would you even do as leader?~
== BX3Kal25 ~Eat, tell stories, and have a good time.~
== L3Pet25B ~Isn't that what you do all the time?~
== BX3Kal25 ~Damn. Forget it. Plan canceled. Status quo it is.~
EXIT 

//Petsy-Kale TOB Special
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Kal")
See("L3Petsy")
Global("X3KalPetsyToB","GLOBAL",0)~ THEN BX3Kal25 X3KalPetsyToB
~Sooo. You and <CHARNAME>.~ [X3Blank]
DO ~SetGlobal("X3KalPetsyToB","GLOBAL",1)~
== L3Pet25B ~Me and <CHARNAME>?~
== BX3Kal25 ~Heh. Just wanted to say it. Don't got really anything else to add, unless you do.~
== L3Pet25B ~What's that supposed to mean?~
== BX3Kal25 ~Nothing.~
== L3Pet25B ~You are making it seem like something!~
== BX3Kal25 ~It is. Kind of jealous. Makes me wish I had something like it in these times. Makes a halfling think. Cherish it, eh?~
== L3Pet25B ~Wow that's...actually thoughtful of you. I thought there was a joke in this somewhere.~
== BX3Kal25 ~Eh, it started out as one. But hell, got to be serious once in a while.~
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

//Petsy-Recorder #3
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RebPetsy","GLOBAL",2)~ THEN BX3Reb X3RebPetsy3
~Here, I have something for  you Petsy.~ [X3Blank]
DO ~SetGlobal("X3RebPetsy","GLOBAL",3)~
== L3PetsyB ~Oh? Hey, this is a drawing of me...I was doing the same thing, except for you!~
== BX3Reb ~I saw you looking at me when you were sketching, and devised that was what you were up to, so I wanted to do the same.~
== L3PetsyB ~This is amazing. And it looks just like me. Except I don't think my ears are pointed.~
== BX3Reb ~Oops, heehee. I've been thinking all of this time for what we have common, and I guess I was thinking too specific. We love art, and I think that is such an important thing to cherish.~
== BX3Reb ~We can write and write about history, but sometimes...forming the moment in a picture, or a song does such wonders to put out the feeling that words can't do alone.~
== L3PetsyB ~I'm glad we found something we are both passionate about, Recorder. I knew there had to be something.~
== BX3Reb ~We just had to believe, yes? Wait...is my nose that big?~
== L3PetsyB ~Oops. I'll fix it next time!~
EXIT 

//Petsy-Recorder Special 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("X3RFAIL","GLOBAL",2)
Global("X3RebPetsy","GLOBAL",3)~ THEN BX3Reb X3RebPetsySpecial
~*Sigh*~ [X3Blank]
DO ~SetGlobal("X3RebPetsy","GLOBAL",4)~
== L3PetsyB ~Recorder...you're thinking about your son, aren't you? It's not your fault those meanies took him.~
== BX3Reb ~It is Petsy. I know you only want to cheer me up, and I appreciate it but...I don't think you can.~
== L3PetsyB ~Not even with a little bit of wine?~
== BX3Reb ~Oh, I will take that offer of wine later, miss Petsy, but...right now isn't the time.~
== L3PetsyB ~Just ask later, okay? I've still got a bit of it. And some snacks I've saved from the last inn. You aren't going to bear this weight alone.~
== BX3Reb ~I will. I promise.~
EXIT 

//Petsy Recorder ToB 
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebPetsyToB","GLOBAL",0)~ THEN L3Pet25B X3RebPetsySpecial
~Hey, you little ferret!~ [X3Blank]
DO ~SetGlobal("X3RebPetsy","GLOBAL",1)~
== BX3Reb25 ~Oh I am so sorry, Petsy. I can't believe he got out of my pack again.~
== L3Pet25B ~Well, if he's hungry, he can have it. I guess we weren't the only ones who have gotten stronger.~
== BX3Reb25 ~I don't know about stronger...but he has gotten a bit fatter. And we don't even have much food with us.~
== L3Pet25B ~Well he has been stealing my food for a while. He's a skilled thief!~
== BX3Reb25 ~How much food do you keep on you, Petsy?~
== L3Pet25B ~As much as I can between my pockets and my pack. You never know when a bit of a hunger pain comes around.~
== BX3Reb25 ~Oh. That explains everything, heehee. I'm going to have to find a better place to put Gustav so he doesn't go on his stealing runs.~
EXIT 

CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Reb")
See("L3Petsy")
Global("L3PetsyRomanceActive","GLOBAL",2)
Global("X3RebPetsyToB","GLOBAL",1)~ THEN BX3Reb25 X3RebPetsySpecial
~Could I interview you sometime, Petsy? Whenever we stop for camp, or the like?~ [X3Blank]
DO ~SetGlobal("X3RebPetsy","GLOBAL",2)~
== L3Pet25B ~Of course, Recorder! Though I think I've told you almost everything about myself.~
== BX3Reb25 ~Well my records are about <CHARNAME>, as you know. And it's helpful to get the views of those who are closest to them.~
== L3Pet25B ~Oh I see. So it's not about me, you want to ask about <CHARNAME>.~
== BX3Reb25 ~Yes! Oh, I hope that does not sound rude or unkind.~
== L3Pet25B ~No, it just caught me off guard. I've never been interviewed before.~
== BX3Reb25 ~It will be just like talking like we always have. Just more focused questions. I promise it won't be anything intrusive.~
== L3Pet25B ~Okay! I look forward to it then, Recorder!~
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
== BKORGAN IF ~IsValidForPartyDialogue("Korgan")~ THEN ~Aye, good kick on the elf, lassie. I taught ye well.~
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

//Petsy-Vienxay Throne of Bhaal
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3ViePetsyToB","GLOBAL",0)~ THEN L3Pet25B X3ViePetsyToB
~What is with that glare, Vienxay? I didn't do anything to you.~ [X3Blank]
DO ~SetGlobal("X3ViePetsyToB","GLOBAL",1)~
== BX3Vie25 ~You are being careless. You may be strong, but my spells are still capable of incinerating you.~
== L3Pet25B ~Oh. That. I didn't think you would do anything, really.~
== BX3Vie25 ~Because I was careful. Do not think that what we may face ahead will provide you the same luck.~
== L3Pet25B ~I have my own tricks, Vienxay. I'm not helpless!~
== BX3Vie25 ~Whatever. Heed the warning as you wish, friend.~
== L3Pet25B ~O- wait. Friend? We are friends?~
== BX3Vie25 ~I am beginning to reconsider it. But yes. Barely.~
== L3Pet25B ~(Laughs). It's weird...but when it comes from you, Vienxay, that means a lot more than it would from someone else.~
EXIT 

//Petsy-Vienxay Special
CHAIN
IF ~IsValidForPartyDialogue("L3Petsy")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieEvermeet","GLOBAL",1)
Global("X3ViePetsyToB","GLOBAL",1)~ THEN L3Pet25B X3ViePetsyToBSpecial
~You must be happy, Vienxay. You can finally go home.~ [X3Blank]
DO ~SetGlobal("X3ViePetsyToB","GLOBAL",2)~
== BX3Vie25 ~And do you think everything is just suddenly better because of it, halfling?~
== L3Pet25B ~You aren't happy about it?~
== BX3Vie25 ~Ugh. I am. More than I can show. But that does not mean I will be accepted. I could be ignored by my kin for all I know, still a disgrace.~
== L3Pet25B ~But they allowed you to come back. It's a step.~
== BX3Vie25 ~A step. But for as long as this mark is on my forehead, each step will be as difficult as it was to finally have the opportunity to return home.~
EXIT 