// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebAERIEToB","GLOBAL",0)~ THEN BAERIE25 X3RebAERIE1
~Things seem more grim and horrible than ever, but I find your music Recorder has made things a bit more bearable.~ [X3Blank]
DO ~SetGlobal("X3RebAERIEToB","GLOBAL",1)~
== BX3Reb25 ~Do you know how to play, Aerie? With all of this fighting, I find music can be a nice escape.~
== BAERIE25 ~Oh, I've never tried it before. I've always been an admirer, but I was a bit shy.~
== BX3Reb25 ~Come on, why not give it a quick try now? Just hold it like this, part your lips slightly, and puff.~
== BAERIE25 ~Okay, I'll give it a try.~
== BAERIE25 ~Oh my. Thank you, Recorder. Even if it was just a note, that was nice.~
== BX3Reb25 ~If you want to learn some more later, I'd be glad to offer you it again. I think you'd be a natural.~
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Reb")
See("ANOMEN")
Global("X3RebANOMENToB","GLOBAL",0)~ THEN BX3Reb25 X3RebANOMEN1
~Gustav? Where are you? I knew I should have asked you to stay in my pack.~ [X3Blank]
DO ~SetGlobal("X3RebANOMENToB","GLOBAL",1)~
== BANOME25 ~Your pet is here, Recorder. He was devouring my rations. Keep it from happening again, I will not have myself starve on this adventure because of him.~
== BX3Reb25 ~I'm sorry. I thought I would have a bit more control over him by now. I guess he's still a bit of a free spirit. Here, I can give you some of mine.~
== BANOME25 ~What is this? What are you even buying from the locals here for food?~
== BX3Reb25 IF ~!InParty("X3Emi")~ THEN ~This is a classic Tethyrian dish. My friend Emily suggested I try it if I were ever around here.~
== BANOME25 IF ~!InParty("X3Emi")~ THEN  ~Your friend has pitifully poor taste. I'll make do, thank you.~
== BX3Reb25 IF ~InParty("X3Emi")~ THEN ~This is a classic Tethyrian dish. Emily suggested I try it if I were ever around here.~
== BANOME25 IF ~InParty("X3Emi")~ THEN BANOME25 ~Emily has pitifully poor taste. I'll make do, thank you.~
== BX3Emi25 IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I was not even part of the conversation, and somehow, he still finds a way to insult me. Impressive.~
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BX3Reb25 X3EmiCERND1
~I've been thinking, Cernd, that despite keeping a rather good tab of our travels and adventures, I don't often describe all of the different scenes of nature we've passed through. We've seen beautiful waterfalls and splendid trees. I think readers would like to know these things.~ [X3Blank]
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BCERND25 ~This book of yours will line up the shelves in cities, will it not? Few of them I find have the appreciation for nature's majesty.~
== BX3Reb25 ~But a few beautiful scenes could help them have a bit of awe and appreciation for it, no? Maybe they would even venture outside of their homes and walls to see it for themselves.~
== BCERND25 ~People tend to be static folk, Recorder. But I do appreciate your enthusiasm. Try me with a few of your passages, and perhaps I can remind you of the fauna and creatures that we saw.~
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebDornToB","GLOBAL",0)~ THEN BDORN25 X3RebDorn1
~You have grown quite powerful, Recorder, quite knowledgeable. And yet you still cling to playing with silly instruments and weak animals. Discard these things. Embrace power and ambition.~ [X3Blank]
DO ~SetGlobal("X3RebDornToB","GLOBAL",1)~
== BX3Reb25 ~The two greatest powers in all the realms, Dorn, are love and music. You should not so quickly look down on them.~
== BDORN25 ~Ha! Perhaps you have grown into a jester as well. Lest I believe you are truly blind to all that is the truth.~
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Reb")
See("Edwin")
Global("X3RebEDWINToB","GLOBAL",0)~ THEN BX3Reb25 X3RebEDWIN1
~I understand you aren't with your fellow Reds anymore, Edwin. Was it due to their practices? Do you understand why the rest of Faerun dislikes them so much?~ [X3Blank]
DO ~SetGlobal("X3RebEDWINToB","GLOBAL",1)~
== BEDWIN25 ~My business and reasons for the ceasing of contact with my associates is none of your business, lorekeeper. (Yes, we cannot allow it to be quilled into parchment.)~
== BX3Reb25 ~Why the secrets? They are certainly not going to stop you from revealing anything.~
== BEDWIN25 ~If you insist, it is not because of any practices or ideologies. No, I think the reason would be far above your comprehension.~
== BX3Reb25 ~So you don't see anything wrong with what they do? The slavery, the necromancy, everything else?~
== BEDWIN25 ~The only wrong doing was causing myself dissapointment. Take your concerns of morals and ethics to a monkey that cares.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("HAERDALIS")
Global("X3RebHAERDALISToB","GLOBAL",0)~ THEN BX3Reb25 X3RebHAERDALIS1
~Isn't it odd, Haer'dalis? We are both bards, but we have grown so differently.~ [X3Blank]
DO ~SetGlobal("X3RebHAERDALISToB","GLOBAL",1)~
== BHAERD25 ~No two actors take the same role, the winds of entropy carve each into their own mold, Recorder.~
== BX3Reb25 ~You've become this great warrior, fighting almost in this precise dance. And I a spellcaster. And yet our views are so different. You see the world as destroying itself someday, and I remain hopeful.~
== BHAERD25 ~But the path of death is true. All things become dust. All paths end.~
== BX3Reb25 ~Maybe. But history tells us that after even the most grim things, time continues. Life goes on. Empires fall but new ones rise in their place.~
== BHAERD25 ~And yet, they too, shall fall. If all life was able to begin, so all life can end just the same.~
== BX3Reb25 ~It is a grim way to think, Haer'dalis. How do you stay happy?~
== BHAERD25 ~You do not. You enjoy it's fleeting pleasures, and then when it lets you go, chase it once again until you can no more.~
== BX3Reb25 ~That sounds too hopeless for me. But I appreciate hearing your view all the same.~
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Reb")
See("Hexxat")
Global("X3RebHexxatToB","GLOBAL",0)Alignment("X3Reb",CHAOTIC_NEUTRAL)~ THEN BX3Reb25 RebHexxat1
~Isn't there a way to cure your condition, Hexxat?~ [X3Blank]
DO ~SetGlobal("X3RebHexxatToB","GLOBAL",1)~
== BHEXXA25 ~What condition are you talking about?~
== BX3Reb25 ~Your vampirism. You could be free of it, if you chose.~
== BHEXXA25 ~It isn't that simple.~
== BX3Reb25 ~Isn't it? I am certain we had a book on it back in the Temple of Oghma.~
== BHEXXA25 ~I have been a vampire for a long time. There is no going back, even if I wanted to.~
== BX3Reb25 ~I understand. I am sorry for bringing it up.~
== BHEXXA25 ~Don't be. You have nothing to apologize for.~
== BX3Reb25 ~But if you could...would you do it?~
== BHEXXA25 ~No. I am what I am.~
== BX3Reb25 ~I...I see. I guess it wouldn't matter anyway. I wish your answer were different.~
== BHEXXA25 ~I do not expect you to understand. But you may one day.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Reb")
See("IMOEN2")
Global("X3RebIMOENToB","GLOBAL",0)~ THEN BX3Reb X3RebIMOEN1
~Imoen, I don't think you remember, but I was at Candlekeep for a time, but really only have that small snippet of <CHARNAME>. Do you have any thing you can share about them?~ [X3Blank]
DO ~SetGlobal("X3RebIMOENToB","GLOBAL",1)~
== BIMOEN25 ~A lot, but can't you just ask <CHARNAME>?~
== BX3Reb25 ~Well, I could, but sometimes it's nice to get a different point of view.~
== BIMOEN25 ~Got it! So, what sort of stories do you want? I've got a few juicy ones if these are going into your records.~
== BX3Reb25 ~Erm. Is that right to hear?~
== BIMOEN25 ~<CHARNAME> will never know. And as a historian, you must record everything.~
== BX3Reb25 ~Okay. But if they glare at me later...~
== BIMOEN25 ~Ha, <PRO_HESHE> can't even hear us. But just in case, let's move a bit over here...~
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJanToB","GLOBAL",0)~ THEN BX3Reb25 X3RebJan1
~Jan, when this is over, I can't help but wonder what grand thing you will invent. I can imagine you creating something really fascinating.~ [X3Blank]
DO ~SetGlobal("X3RebJanToB","GLOBAL",1)~
== BJAN25 ~Like a turnip peeler? It would save many households such hassle. Dinner in half the time. Make it work with potatoes and it will even be grander. A true supper revolution.~
== BX3Reb25 ~Or maybe I should see the beauty in the simple things. Never change, Jan.~
EXIT 


// JAHEIRA
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebJAHEIRAToB","GLOBAL",0)~ THEN BJAHEI25 X3RebJAHEIRA1
~Tell me, Recorder. In all of your scrawls of our adventure so far, have you found a morale lesson for those who will read it after?~ [X3Blank]
DO ~SetGlobal("X3RebJAHEIRAToB","GLOBAL",1)~
== BX3Reb25 ~Oh, I could answer that in so many ways. I think though, that I would say one must be entirely unreasonable in mind to accomplish great things.~
== BJAHEI25 ~Is survival not a reasonable course? Much of <CHARNAME>'s path is because <PRO_HESHE> had little choice.~
== BX3Reb25 ~But one can always hide, and stay still. Buy a house far away. It would have caught up to them, but a reasonable mind would have never known why.~
== BJAHEI25 ~I believe that the moral should be on the weight of power, and important it is to bring all things to balance.~
== BX3Reb25 ~I am not a druid, so I could not draw that conclusion. But perhaps readers may read different things from my writing as a moral lesson, and I think that is beautiful in itself.~
EXIT 

// KELDORN 
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Reb")
See("KELDORN")
Global("X3RebKELDORNToB","GLOBAL",0)~ THEN BX3Reb25 X3RebKELDORN1
~Raban...I wish I were with you.~ [X3Blank]
DO ~SetGlobal("X3RebKELDORNToB","GLOBAL",1)~
== BKELDO25 ~Longing for your child, Recorder? I miss my daughters as well.~
== BX3Reb25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN ~I just wish I could know he made it okay to the village. I worry everyday.~
== BX3Reb25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN ~I just wish I even knew where he was.  Losing him like this...it is horrible.~
== BKELDO25 ~I know how you feel, young Recorder. Justice and right will find a way to set things true.~
== BX3Reb25 ~Do you really believe that, Keldorn?~
== BKELDO25 ~I must. It is my duty.~
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebKorganToB","GLOBAL",0)~ THEN BKORGA25 X3RebKorgan1
~Blast it! Where be something to kill? All of the critters of the forest are not enough. Give me the ferret! I got to gut something.~ [X3Blank]
DO ~SetGlobal("X3RebKorganToB","GLOBAL",1)~
== BX3Reb25 ~Don't you *dare* Korgan. I will turn you into a squirrel if you try.~
== BKORGA25 ~Hah! Ye weak, bile-less coward. Ye'd go screaming as soon as I touched it.~
== BX3Reb25 ~You are nothing but a brute. A squirrel would be quite a fitting lesson. All fluffy and helpless. You would know how frightened you make some of us for one day! Just try to touch him!~
== BKORGA25 ~Ye learning, girl. Perhaps my lessons are working after all.~
EXIT 


// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
See("Mazzy")
Global("X3RebMazzyToB","GLOBAL",0)~ THEN BX3Reb25 X3RebMazzy1
~Sometimes, I think you are getting closer and closer to becoming a paladin, Mazzy.~ [X3Blank]
DO ~SetGlobal("X3RebMazzyToB","GLOBAL",1)~
== BMAZZY25 ~It is not for me to speak of my own progress. It is Arvoreen's decision in the end.~
== BX3Reb25 ~There are very few gnomes that are bards. I don't even know of any. If...If I can break the mold, I know you can. It just is right.~
== BMAZZY25 ~Unfortunately, dear friend, it takes more than sheer will. But I do appreciate your support.~
== BX3Reb25 ~I know I have been mostly recording and writing about <CHARNAME>. But I have a few small pieces I've kept on the side about you. I think...I think you would be a good example for what a child should strive to be.~
== BMAZZY25 ~I strive forward so that they do not have to. But if I inspire them, then I will take honor in that. I trust your account will be fair, for I am not perfect.~
== BX3Reb25 ~Always. I swear by Oghma, I would do no less.~
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Reb")
See("Nalia")
Global("X3RebNALIAToB","GLOBAL",0)~ THEN BX3Reb25 X3RebNALIA1
~Nalia, I wanted to tell you something. I hope you don't take it the wrong way.~ [X3BLANk]
DO ~SetGlobal("X3RebNALIAToB","GLOBAL",1)~
== BNALIA25 ~If it is quick. I am trying to prepare my spells.~
== BX3Reb25 ~I know, the time for memorization and preparation is important. But I worry you are working at it too hard.~
== BNALIA25 ~Too hard? You use spells too, Recorder. You know focus and readiness is the difference between life and death.~
== BX3Reb25 ~But if you are so focused in your head, then you will lose focus of your surroundings. There is a balance. But you haven't failed us yet, Nalia. So maybe you don't need my advice.~
== BNALIA25 ~No, your words are meant well, Recorder. Thank you for looking out for me.~
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebNeeraToB","GLOBAL",0)~ THEN BNEERA25 X3RebNEERA1
~I've been watching you scrawl away in that journal of yours, Recorder.~ [X3Blank]
DO ~SetGlobal("X3RebNeeraToB","GLOBAL",1)~
== BX3Reb25 ~I try. Sometimes I really hope I am capturing everything. Some of our days are really eventful.~
== BNEERA25 ~How much am I featured in it?~
== BX3Reb25 ~Well, it is about <CHARNAME>, mostly. But...there is definitely a lot of passages about you.~
== BNEERA25 ~Really? Share! I'm excited. I've never been in a book.~
== BX3Reb25 ~Well, there was the time you made us all glow and glitter...and when our dinner was charred through, and, when Gustav got suddenly all puffy and purple.~
== BNEERA25 ~Oh. So you just put in the wild magic accidents.~
== BX3Reb25 ~Erm. Yes?~
== BNEERA25 ~Well, as long as I am remembered as the fun one in the party!~
== BX3Reb25 ~It isn't for me to say. But I think history will agree with you.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Reb")
See("RASAAD")
Global("X3RebRasaadToB","GLOBAL",0)~ THEN BX3Reb25 X3RebRasaad1
~Do you ever worry that this story wil lend poorly, Rasaad?~ [X3Blank]
DO ~SetGlobal("X3RebRasaadToB","GLOBAL",1)~
== BRASAA25 ~Not all tales end well, Recorder. But if I fret about how this journey will end, it will do nothing good for our spirits.~
== BX3Reb25 ~We have been incredibly fortunate at some turns. And we are stronger than ever. But sometimes...sometimes I wonder if we'll reach our limit.~
== BRASAA25 ~Limits are in the mind. When you see and push beyond, they fall, Recorder.~
== BX3Reb25 ~But logically, everyone has a limit. The body can only become so strong, you can only live for so long.~
== BRASAA25 ~Have you believed in such limits before you started this journey?~
== BX3Reb25 ~Yes.~
== BRASAA25 ~And did you surpass them?~
== BX3Reb25 ~Yes, actually.~
== BRASAA25 ~Then you know you can. Believe and you will see it.~
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebSAREVOKToB","GLOBAL",0)~ THEN BSAREV25 X3RebSAREVOK1
~Who exactly are you, gnome? Some scrawling historian? You spend more time quilling than being actually useful.~ [X3Blank]
DO ~SetGlobal("X3RebSAREVOKToB","GLOBAL",1)~
== BX3Reb25 ~I have proven my worth, Sarevok, many times. I do not need to do the same for you.~
== BSAREV25 ~You do not even know what worth is, girl.~
== BX3Reb25 ~Is it anger that makes you lash out? Disbelief that someone as simple as me can support a cause and still quill on while you spent so much time suffering in a state of death? I feel sorry for you.~
== BSAREV25 ~You speak as if you have any understanding of what your mouth voices. You do not. And you better hope you never come to know.~
EXIT 

// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebValygarToB","GLOBAL",0)~ THEN BVALYG25 X3RebValygar1
~You are a soft soul, Recorder. Gentle, even. Why do you use magic? It doesn't suit you.~ 
DO ~SetGlobal("X3RebValygarToB","GLOBAL",1)~
== BX3Reb25 ~Well...it's a beautiful tool. Illusion especially holds a place in my culture. I know you are afraid of the evil it does, but in some places, my people use it purely defensively.~
== BVALYG25 ~And in what way do they do that?~
== BX3Reb25 ~Well, when a gnome community is under threat, some use magic to make their force appear far larger than it actually is, or fire all of these terrifying looking fireworks into a visage of a dragon to scare them away.~
== BX3Reb25 ~It's not our aim to hurt anyone if we can avoid it. Many of us see it that they just need a bit of laughter. Killing them takes away the opportunity to fix them.~
== BVALYG25 ~You are a good soul, Recorder. I do not think I will worry about you being corrupted.~
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Reb")
See("Viconia")
Global("X3RebViconiaToB","GLOBAL",0)~ THEN BX3Reb25 X3RebViconia1
~Viconia, I know this is a strange question, but would you ever be able to teach me Xanalress?~ 
DO ~SetGlobal("X3RebViconiaTo","GLOBAL",1)~
== BVICON25 ~You speak of old names long forgotten. And I have no interest in teaching you words that do not belong in your lips.~
== BX3Reb25 ~But we could teach eachother. Perhaps you have wanted to know my own people's language? It is shared by the Svirfneblin.~
== BVICON25 ~Why would I learn a lesser language?~
== BX3Reb25 ~Do you still think us lesser, after all of this time?~
== BVICON25 ~I have gained respect of some people. But none are greater. Least of all yourself.~
== BX3Reb25 ~Well...the offer is always there. Just ask.~
== BVICON25 ~Don't bother. I never will.~
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Global("X3ReBX3VieToB1","LOCALS",0)~ THEN BX3Reb25 X3ReBX3Vie1
~Have you learned anything on your opportunity to see the world, Vienxay?~
DO ~SetGlobal("X3ReBX3VieToB1","LOCALS",1)~
== BX3Vie25 ~It was not a desired opportunity. I suppose...I have seen some things that Evermeet did not mention that are of interest. And other things that were certainly true.~
== BX3Reb25 ~Will you explore more of the land, when this is over?~
== BX3Vie25 ~Perhaps. It is not a question I have lingered much upon.~
== BX3Reb25 ~I could tell you about all sorts of place. There's Waterdeep to the north, and other islands to the west, and some very interesting civilizations in the east.~
== BX3Vie25 ~Let us not make such plans until it *is* over. The last thing I want is to lose my focus and get killed after surviving this long.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Global("X3ReBX3VieToB1","LOCALS",1)~ THEN BX3Reb25 X3ReBX3Vie252
~Our magical repertoire has grown so much, hasn't it, Vienxay? Do you ever find it difficult to keep track of every spell.~
DO ~SetGlobal("X3ReBX3VieToB1","LOCALS",2)~
== BX3Vie25 ~You better not be struggling. This is the difference between life and death.~
== BX3Reb25 ~I'm not, don't worry. I'm kind of shocked I am able to keep it all in line. I'm proud of myself, but a little worried that it will get to my head.~
== BX3Vie25 ~Well, for starters your magical knowledge is less than mine, so I suppose you would not be having a hard time.~
== BX3Reb25 ~Oh. Well, that makes me more curious about my original question.~
== BX3Vie25 ~The answer is obvious. I have it under control. Worry about you, and I will worry about me.~
EXIT 
