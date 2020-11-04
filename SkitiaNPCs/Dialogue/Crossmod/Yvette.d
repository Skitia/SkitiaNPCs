/*Yvette-------------- 16
Each character should have:
3 SoA General Banters 
1 Specific Banter (Quest, Romance, etc.) 
1 ToB Banter General 
Optional Specific if it makes sense*/

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
== YxYveB ~*Giggles* There is nothing to be embarrased about. I think you should follow your heart. Perhaps we can try something different with your hair, or you can make a poem, and then you can find a moment to get them alone.~
== BX3Emi ~Theoritically! I didn't necessarily m- Wait, is my hair bad?!~
== YxYveB ~Oh, Emily. It is beautiful. You wear it well.~
== BX3Emi ~Ha, I understand what you are saying now. Thanks. I'll take your advice, Yvette. Hopefully it works. I mean. In the future.~
EXIT

// Yvette-Helga #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelYxYve","GLOBAL",0)~ THEN YxYveB X3HelYvette1 
~Are you upset, Helga? You seem to be in a foul mood.~ [X3Blank]
DO ~Global("X3HelYxYve","GLOBAL",1)~
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
~I be suprised you fight at all, girl. They nay seem the work of a priestess of your particular faith.~ [X3Blank]
DO ~Global("X3HelYxYve","GLOBAL",2)~
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
DO ~Global("X3HelYxYve","GLOBAL",3)~
== YxYveB ~I do not fall in love, easily, Helga.~
== BX3Hel ~From all the talk of yer folk I heard, that be bloody suprising. I've had children and married before ye did, heh.~
== YxYveB ~You have a husband? I...never expected that. Can you tell me about him?~
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
DO ~Global("X3HelYxYve","LOCALS",1)~
== YxYveB ~What are you speaking about, Helga?~
== Bx3Hel ~<CHARNAME>. They're a Bhaalspawn. Yer a bigger mark than any of us now, and they themselves are in danger.~
== YxYveB ~I think that is between us, isn't it? And <CHARNAME> can hear us.~
== BX3Hel ~Bah, look at them. Focused ahead as they should be, nay on our bantering.~
== YxYveB ~I do not want to abandon love out of fear, Helga. I just wish I had met them even sooner.~
== BX3Hel ~Hrngh. I be feeling this will nay end well. But do as ye wish. I'll do me best to see everyone alive through this mess.~
== YxYveB ~I won't hurt them. If that is your concern. I would never.~
== BX3Hel ~Nay by choice, I know. But it be what is outside yer control that be the true danger. But I will leave it be, my warning be delivered.~
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
== BX3Kal ~On the contrary! Gast would hate this, he was alway sensitive about his nose.~
EXIT 
//Yvette-Recorder Special 
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Reb")
See("YxYve")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebYxYve","GLOBAL",0)~ THEN BX3Reb X3RebYvette1
~Is Sune okay with all types of love, Yvette?~ [X3Blank]
DO ~SetGlobal("X3RebYxYve","GLOBAL",1)~
== YxYveB ~What do you mean, Recorder? All love in its foundation is the same.~
== BX3Reb ~But some relationships are...well, you form them because you have no choice. Or there are arranged marriages.~
== YxYveB ~That is not so much forming a relationship out of love, than necessity?~
== BX3Reb ~I guess not. I'm sorry, forget I asked.~
== YxYveB ~Is something bothering you, Recorder?~
== Bx3Reb ~I just...I just thought my actions in the past, to be a wife, a man's possession out of necessity, might seem shameful to you. I've been so worried you'd think less of me.~
== YxYveB ~No, dear Recorder. I wouldn't. I just know, in the future, you will find a husband who really loves you, and not someone who will take advantage of you.~
== BX3Reb ~I hope so, Yvette. But I guess only time will truly tell.~
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
== BX3Reb ~It's just...I stil can't remember his name, the bard of the song I played for you. And it's really bothering me.~
== YxYveB ~There, there. It is a name, yes? What is better to preserve is what he gave you: his gift of music.~
== BX3Reb ~But his name should be credited to that. So many people in history are just forgotten: All the emphasis is put on the one governing, or the hero. Never those who might have played a small part, even giving a traveler a bit of song as they rested.~
== BX3Reb ~I...I just feel it is nice to give a little bit of dedication.~
== YxYveB ~I see. But still, smile, and keep playing. Maybe someone will recognize the tune's origin as they gaze at the beautiful performer wearing a pretty ribbon.~
== BX3Reb ~Ribbon...Robin! His name was the same as the bird. Heehee, you helped me figure it out. Thank you, Yvette.~
== YxYveB ~It was my pleasure, my friend.~
EXIT 

//Yvette-Vienxay #1
CHAIN
IF ~IsValidForPartyDialogue("YxYve")
IsValidForPartyDialogue("X3Vie")
See("YxYve")
Global("X3VieYxYve","GLOBAL",0)~ THEN BX3Vie X3VieYvette1
~So far, I have been quite unimpressed with you, paper girl. No impressive power, hardly worthy of a god's chosen.~ [X3Blank]
DO ~SetGlobal("X3VieYxYve","GLOBAL",1)~
== YxYveB ~I am no "chosen", Vienxay. I am grateful to be free, but I am not as special as you think.~
== BX3Vie ~Oh, you are as special as I think, which is not at all. Dull and misguided, even.~
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
== BX3Vie ~And next you will speak some words of judgement. Spit it out if you wish.~
== YxYveB ~No. I just wish to say...try to smile. You failed, but you should not let your sadness weigh you down. Redemption, love, these are always in reach.~
== BX3Vie ~Unexpected. And...appreciated. Forgive me for my judgements, now and...in the past.~
== YxYveB ~I forgive you, Vienxay. Perhaps we can be friends, then?~
== BX3Vie ~If you are lucky, perhaps. Just don't push it. 
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