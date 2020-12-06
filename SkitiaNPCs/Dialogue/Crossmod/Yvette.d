/*Yvette*/

//Yvette-Emily #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","GLOBAL",0)~ THEN BX3Emi X3EmiYvette1
~You are a priestess of Sune, Yvette.~ [X3Blank]
DO ~SetGlobal("X3EmiYxYve","GLOBAL",1)~
== YxYveB ~That I am. Is there something you wished to ask?~
== BX3Emi ~Well you must have all sorts of stories to tell! Beautiful sights, passionate affairs in the night, little tragic stories of first love...~
== YxYveB ~I...I don't actually, Lady Emily.~
== BX3Emi ~Really?! How long were you paper or in parchment or...well, whatever your situation was?~
== YxYveB IF ~GlobalLT("YvetteRomanceTalk","GLOBAL",21)~ THEN ~I don't know, Lady Emily. Months, years? I cannot say.~
== YxYveB IF ~!GlobalLT("YvetteRomanceTalk","GLOBAL",21)~ THEN ~Too long. I wish I could take back all that time that I lost.~
== BX3Emi ~That is...terrifying. Well, I'm glad you're free now. Er, but I guess we should focus ahead. I think <CHARNAME> is glaring at me for being behind. They do that sometimes.~
EXIT 

//Yvette-Emily #2
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","GLOBAL",1)~ THEN BX3Emi X3EmiYvette2
~So you really don't have any stories to share? Not even a tale of your first love?~ [X3Blank]
DO ~SetGlobal("X3EmiYxYve","GLOBAL",2)~
== YxYveB ~I have never had such an experience, Lady Emily.~
== BX3Emi ~Wait, really? That's...quite surprising. Very surprising.~
== YxYveB ~It was not a focus of mine when I was younger. Or perhaps I just did not see someone who was meant to be.~
== BX3Emi ~Well, you're not supposed to see someone who is meant to be. It's usually an infatuation, or a future arrangement. Or the fling that you later regret.~
== YxYveB ~Is that what happened to yourself, Lady Emily?~
== BX3Emi ~Oh no. Completely boring. Not that there weren't attractive men, but...you know, sometimes having a father constantly around and being stuck in the keep isn't exactly beckoning to anyone.~
== YxYveB ~Truly? I would believe some may find it a challenge worth the effort.~
== BX3Emi ~Oh, only if it was someone pursuing Thomas. A complete double standard. Gods, I can still see Darlene's pasty naked skin. *Shiver*.~
== YxYveB ~Your brother had someone then?~
== BX3Emi ~Still has. But...let's not talk about that. I don't want to dwell on the memory.~
EXIT 

//Yvette-Emily #3
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","GLOBAL",1)~ THEN BX3Emi X3EmiYvette2
~So love is wonderful. Usually. But...do you think people can be wrong for each other?~ [X3Blank]
DO ~SetGlobal("X3EmiYxYve","GLOBAL",2)~
== YxYveB ~I am a priestess of Sune, Lady Emily, but I am not as much an expert as you believe.~
== BX3Emi ~Oh. I hope I haven't offended you. It's just you're so easy to talk to. And there isn't really anyone else in the party that talks about things like this.~
== BX3Emi IF ~InParty("X3Reb")~ THEN ~Recorder just nods along usually. She listens, and she's my best friend, but not very interested in the topic.~
== BX3Emi IF ~InParty("X3Hel")~ THEN ~Helga always just growls and says to focus preparing for the next battle. It's all she thinks about.~
== BX3Hel IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~The road's no bloody place for blither blather. Pah.~
== BX3Emi IF ~InParty("L3Petsy")~ THEN ~And when I brought up with Petsy, somehow the subject came right back to what we will be eating soon. Kind of weird.~
== BX3Emi IF ~InParty("X3Vie")~ THEN ~Vienxay just...well she's Vienxay.~
== BX3Vie IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I can hear you. Ugh.~
== YxYveB ~Well...what do you mean by bad?~
== BX3Emi ~Oh, encourage the worst in them. Greed, selfishness, destructive tendencies, taking advantage for their own ambitions?~
== YxYveB ~I do not think love can be bad, or is the culprit. Untrue love, though, can provoke... difficult situations. Is there any specific situation we're speaking of?~
== BX3Emi ~Well, sort of. Darlene and Thomas. Darlene specifically. I know she's trouble. Beyond the visual nightmare! I feel like she just helps reinforces the worst in my brother. Ambition, power...those sort of things.~
== YxYveB ~Have you given her a chance, lady Emily?~
== BX3Emi ~I...no. Honestly? I don't know if I could.~
== YxYveB ~Perhaps the problem is not what you behold, but the eye of the beholder.~
== Bx3Emi ~...You're probably right. Forget I said anything.~
EXIT 


//Yvette-Emily Special
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Emi")
See("YxYve")
Global("X3EmiYxYve","LOCALS",0)Global("X3EmiRomanceActive","GLOBAL",1)~ THEN Bx3Emi X3EmiYvetteSpecial
~I have a question for you, Yvette. About romance.~ [X3Blank]
DO ~SetGlobal("X3EmiYxYve","LOCALS",1)~
== YxYveB ~Ask, Lady Emily. What is on your mind?~
== BX3Emi ~Right. So, I feel you understand the normal conventions, about being pursued in love and returning signals. But...what if you wanted to make the first move yourself? I'm taught to wait for the man, but is it wrong not to?~
== YxYveB ~There is someone that interests you, Lady Emily?.~
== BX3Emi ~Did I say that? I meant theoretically.~
== YxYveB ~There is nothing to be embarrassed about, Emily. It is good to talk freely of your emotions and desires. Maybe you should consider writing your thoughts on a parchment... in a form of some poem, perhaps? And then you can find a moment to get that someone alone and share your words and talk. Just like us.~
== BX3Emi ~You should have seen my poetry back in the estate. Lady Evera was livid about one of them. Not the most appropriate, in hindsight. Still, are you sure that's a good idea?~
== YxYveB ~Put your heart in it, into the words, the little rhythms and play of the sounds. If you try Emily, I believe you will create something beautiful. What matters most is that your heart is in it, for the reader will see that above all else.~
== BX3Emi ~I understand what you are saying now. Thanks. I'll take your advice, Yvette. Hopefully it works. I mean. In the future.~
EXIT

//Yvette-Emily ToB 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3EmiYxYveToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiYvetteTob
~Gods, I can't help but want to just keep my memories of Tethyr pure. The little cries from the market or bustling of shoppers passing by store to store. It was happy. And lively. And...as it should be.~ [X3Blank]
DO ~SetGlobal("X3EmiYxYveToB","GLOBAL",1)~
== YxYv25B ~Cherish that, Emily. And believe that it will come again. I do not think the beauty of your land will die just because of this crisis.~
== BX3Emi25 ~Oh, Tethyr isn't the most gorgeous place ever. You also had the drunkard streaking out of a tavern and a couple getting a little too intimate in an alley. Father would always push me along when something weird like that happened.~
== BX3Emi25 ~Honestly, I almost never got to see the cities. I only have a few memories. I just want to hope that is how things will be, and not changed forever because of these other Bhaalspawn.~
== YxYv25B ~Sometimes, getting a little dirty helps comes before everything gets washed up. I know Sune will be here for the people of Tethyr when this is over. She always will be.~
== BX3Emi25 ~Thanks Yvette. Your heart is too golden for this world.~
EXIT 

//Yvette-Emily ToB Special
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3EmiHeir","GLOBAL",1)
Global("YvetteRomanceActive","GLOBAL",1)
Global("X3EmiYxYveToB","GLOBAL",1)~ THEN BX3Emi25 X3EmiYvetteTob
~I've been thinking Yvette. You don't have a home, do you?~ [X3Blank]
DO ~SetGlobal("X3EmiYxYveToB","GLOBAL",2)~
== YxYv25B ~I do not need one, Lady Emily. My home is where <CHARNAME> is.~
== BX3Emi25 ~Aww, that is romantic. But still, lovers need a roof. And I could give you one, there's plenty of space in the estate back in Tethyr until you know what you want to do.~
== YxYv25B ~That's very kind of you Lady Emily, but-~
== BX3Emi25 ~And you could even get married there. If that's your plan. Is he going to propose? Wait, is this prying?~
== YxYv25B ~A little, Lady Emily, but-~
== BX3Emi25 ~If he's hesitant, you could always counter propose. Though that could be embarrassing.~
== YxYv25B ~Lady Emily! He can hear us.~
== BX3Emi25 ~Oh. Oh! Hey <CHARNAME>. I said nothing at all. Look! I'm even looking ahead. You just never know these days, people can just jump out of anywhere.~
== YxYv25B ~Heehee. Give it time, Lady Emily. Give it time.~
EXIT 

// Yvette-Helga #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelYxYve","GLOBAL",0)~ THEN YxYveB X3HelYvette1 
~Are you upset, Helga? You seem to be in a foul mood.~ [X3Blank]
DO ~SetGlobal("X3HelYxYve","GLOBAL",1)~
== BX3Hel ~Aye, 'tis these long marches and this blasted leg. There be only one foe a dwarf can nay beat, and that is time.~
== YxYveB ~I can take a look at it if you like, and heal it for you.~
== BX3Hel ~Nay. Not everything in the realms can be fixed with blessings or magic, girl. Enjoy the beauty of yer youth while it lasts.~
== YxYveB ~I do not know what you were like in your youth, but I think you are pretty, Helga.~
== BX3Hel ~Then there ain't enough blood in me hair. Save such compliments for others. They mean naught to me.~
EXIT 
// Yvette-Helga #2 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3HelYxYve","GLOBAL",1)~ THEN BX3Hel X3HelYvette2 
~I be surprised you fight at all, girl. They nay seem the work of a priestess of your particular faith.~ [X3Blank]
DO ~SetGlobal("X3HelYxYve","GLOBAL",2)~
== YxYveB ~I do not fight, Helga. I protect. I guard all things beautiful.~
== BX3Hel ~Bah, spare the gibberish for someone who is deceived. These be the same things. Me faith just see it as it is: Battle!~
== YxYveB ~There is a difference between taking a life and guarding a life.~
== BX3Hel ~To protect life, ye have to take another. It be how it is. Flowery language ain't going to change the reality.~
== YxYveB ~But I would not take anyone's life, if I can. If love or conversation or understanding can achieve that, isn't that the best recourse?~
== BX3Hel ~Nay. Better to crush yer enemy than to be betrayed or deceived by them. Ye will learn this someday, lass.~
== YxYveB ~We...will have to disagree, I think.~
== BX3Hel ~Nay makes a difference. But as ye wish.~
EXIT  
// Yvette-Helga #3 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3HelYxYve","GLOBAL",2)~ THEN BX3Hel X3HelYvette3 
~For all of ye posturings as a priestess of love, nay have I heard of ye speak of past loves.~ [X3Blank]
DO ~SetGlobal("X3HelYxYve","GLOBAL",3)~
== YxYveB ~I do not fall in love, easily, Helga.~
== BX3Hel ~From all the talk of yer folk I heard, that be bloody surprising. I've had children and married before ye did, heh.~
== YxYveB ~You have a husband? Can you tell me about him?~
== BX3Hel ~Aye. Nay the finest warrior, but damn he had a heart. Stubborn like a mule, but cooked like a king's prized chef. A son of one, even. I miss him everyday.~
== YxYveB ~Where is he now? Is he-~
== BX3Hel ~Dead, in the finest way: Battle.~
== YxYveB ~I am sorry. That must be hard.~
== BX3Hel ~Don't be. I wish to die in battle, too. I'll be seeing him one day, and there will be tales to tell when that time comes.~
EXIT  

// Yvette-Helga Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("YvetteRomanceActive","GLOBAL",2)
Global("X3HelYxYve","LOCALS",0)~ THEN BX3Hel X3HelYvetteSpecial 
~Ye be taking a risk. With this relationship of yours.~ [X3Blank]
DO ~SetGlobal("X3HelYxYve","LOCALS",1)~
== YxYveB ~What are you speaking about, Helga?~
== Bx3Hel ~<CHARNAME>. They're a Bhaalspawn. Yer a bigger mark than any of us now, and they themselves are in danger.~
== YxYveB ~I think that is between us, isn't it? And <CHARNAME> can hear us.~
== BX3Hel ~Bah, look at them. Focused ahead as they should be, nay on our bantering.~
== YxYveB ~I do not want to abandon love out of fear, Helga. I just wish I had met them even sooner.~
== BX3Hel ~Hrngh. I be feeling this will nay end well. But do as ye wish. I'll do me best to see everyone alive through this mess.~
== YxYveB ~I won't hurt them. If that is your concern. I would never.~
== BX3Hel ~Nay by choice, I know. But it be what is outside yer control that be the true danger. But I will leave it be, my warning be delivered.~
EXIT

//Yvette-Helga Tob1 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("YxYve")
Global("X3HelYxYveToB","GLOBAL",0)~ THEN BX3Hel25 X3HelYvetteToB
~Ye be too thin for yer own bloody good, Yvette.~ [X3Blank]
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",1)~
== YxYv25B ~I just do not often feel the urge to eat or the like.~
== Bx3Hel ~Ye aren't even trying a bite of my cooking. Would make ye strong and the proper girth.~
== YxYv25B ~I am not a dwarf, Helga. I fear what you view as girth may be too wide.~
== BX3Hel ~Bah. It was worth a bloody try. At least ye ain't as thin as the bloody elves.~
== BX3Vie25 IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~If we were all as thick as dwarves this would be a very hideous world.~
EXIT
//Helga Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelToBQuest","GLOBAL",6)
Global("X3HelYxYveToB","GLOBAL",1)~ THEN YxYv25B X3HelYvetteToBSpecial
~Your son, Helga. I am sorry for what happened to him. Are you coping okay?~ [X3Blank]
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",2)~
== BX3Hel25 ~Nay be like everyone else. Don't feel sorry for me. And he can nay be brought back. Nay from the wreckage of that damn city would there be a thing to find.~
== YxYv25B ~If you wish, I could s-~
== BX3Hel25 ~Nay lass. I know ye got lucky, and ye may think all can be blessed like yer own situation if ye try...but dying...it nay be so bad.~
== BX3Hel25 ~He died with honor, died making his mother proud. I could ask nothing better.~
== YxYv25B ~I...If you insist, Lady Helga. I will respect your wishes.~
== BX3Hel25 ~Thank ye lass. Ye've a good heart.~
EXIT 

// Yvette-Kale #1 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalYxYve","GLOBAL",0)~ THEN BX3Kal X3KalYvette1
~Sooo. The drawing that came to life. Must be nice to be upgraded from a simple piece of parchment, eh?~ [X3Blank]
DO ~SetGlobal("X3KalYxYve","GLOBAL",1)~
== YxYveB ~It is lovely to feel air, and hear laughter, and be in the company of good people.~
== BX3Kal ~Just good? You're with one of the best, you know. Say, that reminds me of a question I had for you.~
== YxYveB ~Yes, Kale? What is it you wished to ask me?~
== BX3Kal ~If I made a drawing, could I make it come to life?~
== YxYveB ~You can draw, mister Kale? I have never seen you make art when we camp.~
== BX3Kal ~Heh, I've never made art and never will. There's no might or glory in art.~
== YxYveB ~That is not true, mister Kale. Art can be beautiful, moving, and powerful in its own way.~
== BX3Kal ~Well, if I see a piece of art nearby in our next battle, I'll let you know how powerful it is.~
EXIT 

// Yvette-Kale #2
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalYxYve","GLOBAL",1)~ THEN BX3Kal X3KalYvette2
~I never quite got the answer I was looking from you before, Yvette.~ [X3Blank]
DO ~SetGlobal("X3KalYxYve","GLOBAL",2)~
== YxYveB ~I'm sorry, I don't remember. What were you asking, Kale?~
== BX3Kal ~It was about a drawing. If I made one, could it come to life?~
== YxYveB ~I...I think it is complicated, Kale. I don't have an answer to that.~
== BX3Kal ~Aww damn. Would have been nice to be bring back Gast and Stormaxe.~
== YxYveB ~I...I'm sorry, Kale. They must have meant so much to you.~
== BX3Kal ~Yeah. They really did.~
== YxYveB ~Smile. Smile at their memory, and let yourself feel again their love. Even in death, you can always find strength there.~
== BX3Kal ~Heh, no need to get weird and sappy, Yvette! My drawing would have probably made them ugly anyway~
EXIT 

// Yvette-Kale #3 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalYxYve","GLOBAL",2)~ THEN BX3Kal X3KalYvette3
~Sooo. I made this drawing. What do you think, Yvette?~ [X3Blank]
DO ~SetGlobal("X3KalYxYve","GLOBAL",3)~
== YxYveB ~This is beautiful, Kale. These...these are your old friends, aren't they?~
== BX3Kal ~Yeah. That's Gast. Got a bit of a big nose. And Stormaxe. His entire face is pure beard, heh.~
== YxYveB ~Kale, you aren't trying to bring them back?~
== BX3Kal ~Nah. Just immortalizing them in my own way.~
== YxYveB ~That is lovely, Kale. I think if they were able to see it, they would feel honored.~
== BX3Kal ~On the contrary! Gast would hate this, he was always sensitive about his nose.~
EXIT 

//Yvette-Kale Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3KalRomanceActive","GLOBAL",1)
Global("YvetteRomanceActive","GLOBAL",1)
Global("X3KalYxYve","LOCALS",0)~ THEN BX3Kal X3KalYvetteSpecial
~I don't get you, Yvette.~ [X3Blank]
DO ~SetGlobal("X3KalYxYve","GLOBAL",1)~
== YxYveB ~Is something wrong, Kale?~
== BX3Kal ~Things were fine before you showed up is all. Now it seems paper girl is all the obsession.~
== YxYveB ~That is a bit rude, Kale. And I do not think that is the case.~
== BX3Kal ~Pfft. Always <CHARNAME>'s side and showing off. I don't get your long-game.~
== YxYveB ~There isn't any game, Kale. Please, let us move on.~
== BX3Kal ~Damn. Not even admitting it. This is going to be harder than I thought.~
EXIT 

//Yvette-Kale ToB 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("YxYve")
Global("X3HelYxYveToB","GLOBAL",0)~ THEN BX3Kal25 X3KalYvetteToB
~Damn, this has been fun, eh? Just wait Yvette. Everyone back home for you is going to be jealous of what you have achieved.~ [X3Blank]
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",1)~
== YxYv25B ~Memories of my home are... blurry, Mr. Kale.~
== BX3Kal25 ~Pfft, just Kale. And really? Who are you going to brag about all of our feats too?~
== YxYv25B ~Oh, I am just happy to try to be making a difference, Kale. And to be alive, and to be by <CHARNAME>'s side.~
== BX3Kal25 ~Eh, suit yourself. But since you aren't going to taking it...I might have to take some of your feats for my own now, heh.~
EXIT 

//Yvette-Kale Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Kal")
See("X3Kal")
Global("X3KalMazzyEnd","GLOBAL",1)
Global("X3HelYxYveToB","GLOBAL",1)~ THEN YxYv25B X3KalYvetteToBSpecial
~You keep watching her, with great interest it seems. Is there something wrong?~ [X3Blank]
DO ~SetGlobal("X3HelYxYveToB","GLOBAL",2)~
== BX3Kal25 ~Heh, I've watched you the same way.~
== YxYv25B ~Kale that's a little...~
== BX3Kal25 ~Hey, it was a joke! Eh, sort of. Anyway...looking at her just reminds me of something I lost.~
== YxYv25B ~What did you lose, Kale?~
== BX3Kal25 ~An opportunity for an entirely different life for starters. Damn if that happens again.~
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~What are you two talking about, if I may ask?~
== YxYv25B  IF ~IsValidForPartyDialogue("MAZZY")~ ~Mazzy? We were...just...~
== BX3Kal25 IF ~IsValidForPartyDialogue("MAZZY")~ ~Talking about the sky. It's female, if you didn't know.~
== BMAZZY25 IF ~IsValidForPartyDialogue("MAZZY")~ ~That is...ridiculous. Forget I asked.~
EXIT 

//Yvette-Recorder #1 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("YxYve")
Global("X3RebYxYve","GLOBAL",0)~ THEN BX3Reb X3RebYvette1
~I have been staying diligent on having an entry on every one of <CHARNAME>'s companions, but...I find it so hard to make your entry believable, Yvette.~ [X3Blank]
DO ~SetGlobal("X3RebYxYve","GLOBAL",1)~
== YxYveB ~I understand, it must be a bit strange to you, Recorder.~
== BX3Reb ~With <CHARNAME> all sorts of things happen that are strange, but this is definitely up there.~
== BX3Reb ~Still, I endeavor to keep to the truth. Do you remember your time as a drawing, before?~
== YxYveB ~A little. Time flew in its own way. You forget your senses, the smell of a light breeze or the forest, and only have what you see.~
== BX3Reb ~Oh that sounds so horrible. To never hear music again...I don't think I could bear it.~
== YxYveB ~When I heard yours for the first time, I think I wept a little. I took such delights for granted, and so for that you have my thanks.~
== BX3Reb ~I would always be glad to play for you then. You need only ask.~
EXIT 

//Yvette-Recorder #2 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebYxYve","GLOBAL",1)~ THEN YxYveB X3RebYvette2
~Can you play that tune again, Recorder? The one you were performing earlier?~ [X3Blank]
DO ~SetGlobal("X3RebYxYve","GLOBAL",2)~
== BX3Reb ~The slow one? Or the lively one?~
== YxYveB ~The slower one. Something about it was so moving.~
== BX3Reb ~Oh! That one is about how things live beyond us. Memories. Music. Stories. Art. Love.~
== YxYveB ~Did you create the song yourself?~
== BX3Reb ~No. I heard it from another bard. I...can't remember his name. I thought I had written the name down, but I didn't.~
== YxYveB ~It is lovely. Will you play it again?~
== BX3Reb ~Gladly. I think you are my favorite listener, Yvette.~
EXIT 
//Yvette-Recorder #3
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebYxYve","GLOBAL",2)~ THEN YxYveB X3RebYvette3
~You seem more somber than usual, Recorder. Smile. Your face is too lovely for that.~ [X3Blank]
DO ~SetGlobal("X3RebYxYve","GLOBAL",3)~
== BX3Reb ~It's just...I still can't remember his name, the bard of the song I played for you. And it's really bothering me.~
== YxYveB ~There, there. It is a name, yes? What is better to preserve is what he gave you: his gift of music.~
== BX3Reb ~But his name should be credited to that. So many people in history are just forgotten: All the emphasis is put on the one governing, or the hero. Never those who might have played a small part, even giving a traveler a bit of song as they rested.~
== BX3Reb ~I...I just feel it is nice to give a little bit of dedication.~
== YxYveB ~I see. But still, smile, and keep playing. Maybe someone will recognize the tune's origin as they gaze at the beautiful performer wearing a pretty ribbon.~
== BX3Reb ~Ribbon...Robin! His name was the same as the bird. Heehee, you helped me figure it out. Thank you, Yvette.~
== YxYveB ~It was my pleasure, my friend.~
EXIT 

//Yvette-Recorder Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("YxYve")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebYxYve","LOCALS",0)~ THEN BX3Reb X3RebYvetteSpecial
~Is Sune okay with all types of love, Yvette?~ [X3Blank]
DO ~SetGlobal("X3RebYxYve","LOCALS",1)~
== YxYveB ~What do you mean, Recorder? All love in its foundation is the same.~
== BX3Reb ~But some relationships are...well, you form them because you have no choice. Or there are arranged marriages.~
== YxYveB ~That is not so much forming a relationship out of love, than necessity?~
== BX3Reb ~I guess not. I'm sorry, forget I asked.~
== YxYveB ~Is something bothering you, Recorder?~
== Bx3Reb ~I just...I just thought my actions in the past, to be a wife, a man's possession out of necessity, might seem shameful to you. I've been so worried you'd think less of me.~
== YxYveB ~No, dear Recorder. I wouldn't. I just know, in the future, you will find a husband who really loves you, and not someone who will take advantage of you.~
== BX3Reb ~I hope so, Yvette. But I guess only time will truly tell.~
EXIT 

//Yvette-Recorder ToB 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("YxYve")
Global("X3RebYxYveToB","GLOBAL",0)~ THEN BX3Reb25 X3RebYvetteToB
~Sometimes, I think of all of the blood I've spilled since I've traveled with <CHARNAME>. I know you prefer to not take a life when you don't have to. How do you bear it, Yvette?~ [X3Blank]
DO ~SetGlobal("X3RebYxYve","GLOBAL",1)~
== YxYv25B ~I don't know. Sometimes, I want to say it is the strength of our leader, and the hope that at the end of their goal, things will get better.~
== YxYv25B ~Other times, I worry that I will grow too used to it, that I will forget the spark of hope and love that comes from every life.~
== BX3Reb25 ~Even the common brigands?~
== YxYv25B ~Especially them. I like to think that the people furthest from the good road are in the greatest need of a bit of fire to lead them back.~
== BX3Reb25 ~I don't know if I could extend my heart to care about such people. I admire your strength, Yvette. I hope it never wavers.~
EXIT 

//Yvette-Recorder Special 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
Global("X3RebRomanceActive","GLOBAL",2)
See("YxYve")
Global("X3RebYxYveToB","GLOBAL",0)~ THEN BX3Reb25 X3RebYvetteToB
~Oh dear, my hand is so sore.~ [X3Blank]
DO ~SetGlobal("X3RebYxYveToB","GLOBAL",1)~
== YxYv25B ~Would you like me to tend to it, Recorder?~
== BX3Reb25 ~Oh you don't have to. It's not a battle wound. I've just been trying very hard to write small enough so I don't use the rest of my parchment.~
== YxYv25B ~You are always working so hard on that. I'm sure it's going to turn out to be a lovely recording.~
== BX3Reb25 ~Well...as of late, I am a bit worried about my own bias. I'm very close to <CHARNAME>, and I worry I don't depict them very neutrally.~
== YxYv25B ~If it is a recording, don't the feelings of the moment also need to be preserved? It may not be a trouble at all, Recorder.~
== BX3Reb25 ~Maybe. I suppose I can always true bias is impossible...and there is so much poor word out there of all the bhaalspawn that a bit of glowing words about who I think my hero really is good for this world.~
== YxYv25B ~A beautiful idea, Recorder. I think you have solved your own problem.~
== BX3Reb25 ~I have. Thank you! Now I just hope I don't run out of parchment.~
EXIT 

//Yvette-Vienxay #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieYxYve","GLOBAL",0)~ THEN BX3Vie X3VieYvette1
~So far, I have been quite unimpressed with you, paper girl. No impressive power, nothing worthy remark at all. I think <CHARNAME> overpaid.~ [X3Blank]
DO ~SetGlobal("X3VieYxYve","GLOBAL",1)~
== YxYveB ~I am grateful to be free, but I'm not an object, Vienxay. I'm a person.~
== BX3Vie ~You *were* an object. Now you're just a dull, misguided naive girl. What a disappointment.~
== YxYveB ~I don't understand why you are cruel, Vienxay. Have I offended you?~
== BX3Vie ~Too soft. Too gentle. Too foolish. You are all of these things, and so are definitely offending me.~
== YxYveB ~I would walk in quiet, Vienxay, and not speak with you.~
== BX3Vie ~Whatever. Have it your way, human.~
EXIT 

//Yvette-Vienxay #2
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieYxYve","GLOBAL",1)~ THEN BX3Vie X3VieYvette2
~Ugh. How I tire being around humans and their pitiful civilization.~ [X3Blank]
DO ~SetGlobal("X3VieYxYve","GLOBAL",2)~
== YxYveB ~Why do you have such hatred, Vienxay? What toils at your heart so much?~
== BX3Vie ~You would not understand. You *are* human. And explaining would be a waste of time.~
== YxYveB ~I want to understand, Vienxay. Maybe I can help.~
== BX3Vie ~You cannot help. Can you restore the empires that have fallen at the wayside at the greed of human ambition? Can you restore all of the lives of my people who were murdered when humans stretched their borders and eyes into my people's forests?~
== BX3Vie ~No, you cannot do any of those things. So let us speak no further.~
EXIT 

//Yvette-Vienxay #3 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieYxYve","GLOBAL",2)~ THEN YxYveB X3VieYvette3
~Vienxay...if being here in Amn makes you so sad and angry, why do you stay?~ [X3Blank]
DO ~SetGlobal("X3VieYxYve","GLOBAL",3)~
== BX3Vie ~I have nowhere to go. I am exiled. Banished for murder. Presumably for the rest of my life.~
== YxYveB ~Can...I ask why you did it?~
== BX3Vie ~Because I was afraid. Foolish. Naive. Does it matter? I took away the life of one I loved. I am sure your goddess and yourself would despise someone for this.~
== YxYveB ~It is wrong. Terrible. But you regret it, don't you? It is why you are so bitter towards others...because you feel this way towards yourself.~
== BX3Vie ~And next you will speak some words of judgment. Spit it out if you wish.~
== YxYveB ~No. I just wish to say...I'm sorry. But you shouldn't let your sadness weigh you down. Redemption, love, these are always in reach.~
== BX3Vie ~Unexpected. And...appreciated. Forgive me for my judgments, now and...in the past.~
== YxYveB ~I forgive you, Vienxay. Perhaps we can be nicer to each other, then?~
== BX3Vie ~If you are lucky, perhaps. Just don't push it.~ 
EXIT 

//Yvette-Vienxay Special 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("YvetteRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieYxYve","LOCALS",0)~ THEN BX3Vie X3VieYvetteSpecial
~I don't like you much, human. But now you are treading on something that isn't yours.~ [X3Blank]
DO ~SetGlobal("X3VieYxYve","LOCALS",1)~
== YxYveB ~Vienxay, I have not touched any of your things. I have done everything to respect you.~
== BX3Vie ~Please. Let me make this clearer: I don't share my men. And I do not appreciate it when a harlot tries to woo them away with pitiful glances and fake tears.~
== YxYveB ~You are...vile, Vienxay.~
== BX3Vie ~I don't care what you think. Know your place, and we won't have a problem. Continue, and someone's heart will be breaking. And paper breaks very easily.~
EXIT 

//Yvette-Vienxay ToB 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieYxYveToB","LOCALS",0)~ THEN YxYv25B X3VieYvetteSpecial
~If only the people we saw in the cities knew more of compassion. Of love. We've seen so much conflict, but if they understood one another just a little more...~ [X3Blank]
DO ~SetGlobal("X3VieYxYveToB","LOCALS",1)~
== BX3Vie25 ~They are almost all humans. For as long as that remains a fact, the suffering will remain.~
== YxYv25B ~But they suffer just like you would in their place, Vienxay. We bleed the sane red, we feel the same sensations with our hands when we hold one another, weep the same wet tears. I fear it is not seeing the similarities and only finding the differences that have sparked all of this conflict.~
== BX3Vie25 ~And yet the majority of people who die by our hands are human. Do you have an explanation for this?~
== YxYv25B ~Many did not give us a choice.~
== BX3Vie25 ~I thought not. When humans put their ambition in check, only then will that suffering you so despise be lessened.~
EXIT 

//Yvette-Vienxay ToB Special 
CHAIN 
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3VieYxYveToB","LOCALS",1)~ THEN YxYv25B X3VieYvetteSpecial
~You truly love <PRO_HIMHER>, don't you?~ [X3Blank]
DO ~SetGlobal("X3VieYxYveToB","LOCALS",2)~
== BX3Vie25 ~Who? Am I supposed to know who you are speaking of?~
== YxYv25B ~<CHARNAME>, of course. When I see you together, you seem so relaxed, so composed. So almost unlike yourself. It's lovely.~
== BX3Vie25 ~Ugh, you are entirely seeing things.~
== YxYv25B ~I saw you lean against them last night at camp. You were so peaceful.~
== BX3Vie25 ~Be glad that was the only thing you saw. Not everything we do is tame for the eyes. Now please, enough of this gibberish jabber.~
EXIT 