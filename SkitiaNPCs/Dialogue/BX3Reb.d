// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebAERIE","GLOBAL",0)~ THEN BAERIE X3RebAERIE1
~Why are you always writing, Recorder? Is it a journal or a diary?~ [X3Blank]
DO ~SetGlobal("X3RebAERIE","GLOBAL",1)~
== BX3Reb ~Of a sorts. I have a record of <CHARNAME>'s journey in Baldur's Gate, and it's fitting to continue to chronicle their journeys here.~
== BAERIE ~Is <CHARNAME> okay with that?~
== BX3Reb ~Erm...they haven't complained. Even if I didn't, someone might, and I want to make sure they and their companions are presented fairly.~
== BAERIE ~Companions? You have written about me as well? I...I don't know how I feel about being written in a book.~
== BX3Reb ~Don't worry! It's nothing too bad.~
== BAERIE ~If...if you say so, Recorder.~
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("AERIE")
Global("X3RebAERIE","GLOBAL",0)~ THEN BX3REB X3RebAERIE2
~Aerie, I would like to apologize. I should have mentioned my work to you sooner.~ [X3Blank]
DO ~SetGlobal("X3RebAERIE","GLOBAL",1)~
== BAERIE ~My reaction may have been a little silly. You are just trying to tell the story of our adventures. I shouldn't have felt so offended.~
== BX3Reb ~No, your reaction is understandable. I um, was thinking, maybe I could ask you some questions about your thoughts of the things we've gone through.~
== BAERIE ~My opinions? What for?~
== BX3Reb ~Often personal quotes can really help enrich a story or people to understand how you were thinking or feeling. And, it might be easier if you know that your own words are being preserved.~
== BAERIE ~You are really kind to try to take in account of my feelings. I wouldn't mind doing that for you sometimee. Just ask.~
EXIT 

// Aerie #3
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebAERIE","GLOBAL",0)~ THEN BAERIE  X3RebAERIE3
~I know the pain you feel, Recorder. I understand why you don't talk about being taken. I don't like to talk about it either.~ [X3Blank]
DO ~SetGlobal("X3RebAERIE","GLOBAL",1)~
== BX3Reb ~Aerie...~
== BAERIE ~But maybe we should? With eachother, I mean. Now that I know, I can't help but want to see if you are okay.~
== BX3Reb ~It was a long time ago, Aerie. I... would rather forget about it.~
== BAERIE ~I can't forget about. One look at my back and...~
== BX3Reb ~You are right. Forgetting doesn't work. S-so if you are serious about listening...I can try sometime. I trust you.~
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebANOMEN","GLOBAL",0)~ THEN BANOMEN X3RebANOMEN1
~Recorder, your voice is so soft. Why do you not raise it?~ [X3Blank]
DO ~SetGlobal("X3RebANOMEN","GLOBAL",1)~
== BX3Reb ~Not everyone has a love of music. Outside of when it is needed, I try to keep my playing and humming soft.~
== BANOMEN ~I say raise your voice so all may hear it. I quite enjoy your bard's play, my lady.~
== BX3Reb ~Your compliment is kind, Anomen. Perhaps I can play a little louder, just for you.~
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebANOMEN","GLOBAL",1)~ THEN BANOMEN X3RebANOMEN2
~You are a quiet gnome, Recorder. Around the fire, you play music but do not share many tales like I would think of a bard.~ [X3Blank]
DO ~SetGlobal("X3RebANOMEN","GLOBAL",2)~
== BX3Reb ~Well, I am rather  young at this trade, Anomen. I have been following <CHARNAME>'s exploits for so long, maybe a little too exclusively.~
== BANOMEN ~I could tell you many a tale that would be suitable for the occasion. The long march against the Hillgnasher's ten feet tall giants in chilling weather. It will get anyone's spines tingling.~
== BX3Reb ~Is it a sad tale?~
== BANOMEN ~'Tis not, for I came away slaying twenty of the beasts that day alongside my brothers and we sent them far away, ending their threat against Amn.~
== BX3Reb ~A tale of might, then? I could hear it, though I would not want to have your ego swell when it begins to spread. Are you sure?~
== BANOMEN ~Any praise I receive from future listeners would be well deserved, and still would I remain knightly in demeanor. Fear not, my lady Recorder, though ensure your heart is ready to listening. It is quite the thriller.~
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Reb")
See("CERND")
Global("X3RebCERND","GLOBAL",0)~ THEN BX3Reb X3RebCERND1
~Cernd, do druids keep pets?~ [X3Blank]
DO ~SetGlobal("X3RebCERND","GLOBAL",1)~
== BCERND ~Pets? Animals are our equals, Recorder. They are not to be caged for amusement or kept in the stone wall's of a home.~
== BX3Reb ~Am I wrong for keeping Gustav, then?~
== BCERND ~Is the dog less happy to have an alpha that keeps him well fed? No it is not wrong. Only unnatural.~
== BX3Reb ~So you do not approve, then.~
== BCERND ~It is not my approval that you need to seek, Recorder. Only his. If he is happy, all is well.~
EXIT 

// CERND #2
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Reb")
See("Cernd")
Global("X3RebCERND","GLOBAL",1)~ THEN BX3Reb X3RebCERND2
~I've been thinking of our last conversation, Cernd. About Gustav's happiness. That maybe, I should release him.~ [X3Blank]
DO ~SetGlobal("X3RebCERND","GLOBAL",2)~
== BCERND ~You feel a pang of guilt, Recorder, I can see it on your face. While the mother eventually must see her cubs away, you and Gustav are more like a proper pack. Without you, he may not survive.~
== BX3Reb ~So we are tied together, then. He could not rejoin nature.~
== BCERND ~He could try. But nature can be cruel, and to one who has been away and unprepared for its ways, a predator would have its day.~
== BX3Reb ~I do feel a bit guilty, but I do not want him to die. I think I will reconsider.~
== BCERND ~Perhaps my earlier words may have put you at unease. But I repeat that you should think of your happiness together. So long as it lasts, you need do nothing to break it.~
EXIT 

//Dorn #1
CHAIN
IF ~IsValidForPartyDialogue("DORN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebDORN","GLOBAL",0)~ THEN BDORN X3RebDORN1
~Gnome.~ [X3Blank]
DO ~SetGlobal("X3RebDORN","GLOBAL",1)~
== BX3Reb ~Erm. Yes?~
== BDORN ~You hesitate and tremble. How did you become to join this party? We do not need the baggage.~
== BX3Reb ~I am not baggage. I barely want to stay with a murderer...but I do so for <CHARNAME>.~
== BDORN ~If you do not have stomach to kill, bard, then you do not have the stomach for adventuring..~
== BX3Reb ~I have killed before, Dorn. I hate it everytime we must.~
== BDORN ~And yet you still do. Why?~
== BX3Reb ~Because...because...of my friends. Of ideals you have long discarded and burned in your service to horrible creatures. No, I will talk to you no more of this.~
EXIT

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Reb")
See("Edwin")
Global("X3RebEDWIN","GLOBAL",0)~ THEN BX3Reb X3RebEDWIN1
~...~ [X3RFL1]
DO ~SetGlobal("X3RebEDWIN","GLOBAL",1)~
== BEDWIN ~Gnome, there are a reasons why there are no bard practitioners amongst your race. You have just proven it with your atrocious performance.~
== BX3Reb ~I am sorry, Edwin. If there is any music you know from Thay, I could play that instead.~
== BEDWIN ~Would that I know nor cared to tell you anything. I do not. (Nor do I think this monkey could even comprehend taste.)~
== BX3Reb ~Um...I can hear  you Edwin.~
== BEDWIN ~(She's onto us!) I said go away, gnome. Be silent. (Yes, that will do, that will do.)~ [X3Blank]
EXIT 

// EDWIN #2
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Reb")
See("Edwin")
Global("X3RebEDWIN","GLOBAL",1)
Gender("Edwin",FEMALE)  // Edwin~ THEN BX3Reb X3RebEDWIN2
~Heeheehee! I'm sorry, Edwin...I can't help it. You look so...so...heeheehee!~ [X3RFL1]
DO ~SetGlobal("X3RebEDWIN","GLOBAL",2)~
== BEDWIN ~Insolence! Stop your giggling. I will tolerate no more laughing at my expense!~
== BX3Reb ~I'm sorry. I really am I just...oh gods, heehee! ~
== BEDWIN ~I said stop, you little monkey! When I am free of this form you will pay for every laugh.~
== BX3Reb ~Oh come now, Edwin. Many times have I warned knowledge seekers of curses they find in dark places. This will be a good, entertaining lesson for us all.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3RebHAERDALIS1
~Recorder, my goldfinch! Lay down your flute for a while, songbird.~ [X3Blank]
DO ~SetGlobal("X3RebHAERDALIS","GLOBAL",1)~
== BX3Reb ~Hrm? What is it, Haer'dalis?~
== BHAERDA ~Your music is sweet and short. Have you thought to carry a story in your tune?~
== BX3Reb ~A story? The flute doesn't produce words.~
== BHAERDA ~Words do not create the story, Recorder. Sound can carry it all on his own.~
== BX3Reb ~If you are willing to show me how to do that, Haer'dalis, I am willing to learn.~
== BHAERDA ~Then come my goldfinch, a bit away from the others, and I shall show you the secrets of an enthralling tune.~
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3RebHAERDALIS2
~Play on, Goldfinch, play on! Sweet sorrowful music, I can hear your story sing from the sound of your flute.~ [X3Blank]
DO ~SetGlobal("X3RebHAERDALIS","GLOBAL",2)~
== BX3Reb ~You like it, then?~
== BHAERDA ~Yes, quite so. But now I wonder what deep tale you are evoking from your lovely instrument.~
== BX3Reb ~To be honest I was...remembering something sad. Holding something for the last time...I think I got carried away.~
== BHAERDA ~Tell me more, gold finch of this ache, this tragedy. What happened?~
== BX3Reb ~I can't...I'd rather not, Haer'dalis. Thank you for your guidance and instruction, but...I am going to keep that to myself.~
EXIT 

// HAERDALIS #3 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Reb")
See("HEARDALIS")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebHAERDALIS","GLOBAL",2)~ THEN BX3Reb X3RebHAERDALIS3
~I am sorry for being so...withdrawn from you before, Haer'dalis.~ [X3Blank]
DO ~SetGlobal("X3RebHAERDALIS","GLOBAL",3)~
== BHAERDA ~Have you found your voice, goldfinch? Do you wish to tell this sparrow of your sorrow?~
== BX3Reb ~When I was playing before, I was thinking of the last time I held my son.~
== BHAERDA ~The mother goldfinch's last moment with her chick. So sweet and precious.~
== BX3Reb ~Am I horrible, Haer'dalis? Am I a monster to you?~
== BHAERDA ~No, my gold finch. You are beautiful. Shackled by grief, but still you fly on the wings of music, the world mourning your mourning.~
== BX3Reb ~Mourning my mourning...that sounds hauntingly beautiful. Thank you though, Haer'dalis.~
EXIT


// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Reb")
See("IMOEN2")
Global("X3RebIMOEN","GLOBAL",0)~ THEN BX3Reb X3RebIMOEN1
~Gustav, did you knock around my book? It has all the records in it. Why can't I find it anywhere?~ [X3Blank]
DO ~SetGlobal("X3RebIMOEN","GLOBAL",1)~
== IMOEN2J ~Heya, Recorder. I think you dropped this.~
== BX3Reb ~Oh thank goodness! Thank you, Imoen. Where did you find it?~
== IMOEN2J ~Not important. But I couldn't help but notice some of the things you were writing.~
== BX3Reb ~...You didn't...take it, did you?~
== IMOEN2J ~Hey, I gave it back, didn't I? What kind of thief would return goods? Anyway, I saw a rather interesting poem written between the margins.~
== BX3Reb IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~Oh. Oh dear. I feel so embarrased.~
== IMOEN2J IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~I never saw that side of you. You can be a saucy poet. Do you have more?~
== BX3Reb IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~No no no. Thank you, but we should focus! On anything else!~
== IMOEN2J IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~You won't get out of this that easy, Recorder. Just wait.~
== BX3Reb IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~Oh. Oh dear. Oh no.~
== IMOEN2J IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~That was some saucy poetry. And about my <PRO_BROTHERSISTER> too.~
== BX3Reb IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~Please don't tell them, please don't tell them.~
== IMOEN2J IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~I won't. As long as you share any more that you have with me. It was quite interesting, I want to read the rest.~
== BX3Reb IF ~OR(2)Global("X3RebRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~*Sigh*. What have I gotten myself into?~
EXIT 


 


// Hexxat#1
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebHexxat","GLOBAL",0)~ THEN BHEXXAT X3RebHexxat1
~Why do you always look away from me, Recorder? Is there something wrong?~ 
DO ~SetGlobal("X3RebHexxat","GLOBAL",1)~
== BX3Reb ~N-n-no. I j-just...~
== BHEXXAT ~You are stuttering. You are afraid of me.~
== BX3Reb ~I am t-terrified of you.~
== BHEXXAT ~We are allies, friends even, if you give it a chance.~
== BX3Reb ~N-no! Never. I am glad to be by <CHARNAME>'s side...even if it means you share the space. But I cannot be your friend.~
== BHEXXAT ~I am sorry I make you nervous. But if you change your mind...I will be here.~
EXIT 

// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",0)~ THEN BX3Reb X3RebJan1
~Jan, you tell such grand stories. Have you ever considered the bards trade?~ [X3Blank]
DO ~SetGlobal("X3RebJan","GLOBAL",1)~
== BJAN ~Well, Recorder, I did make an attempt at the trade way back. Back when I was a younger gnome, sailing to the distant waterdeep, I took a gander at one of the colleges. There was an instrument shortage, and I had very few things on my person, so I decided to pick up a ale mug as my try out instrument.~
== BX3Reb ~I...~
== BJAN ~Now, my skills with any instrument were not the best, but an ale mug was a real challenge. The music of the glass was quite resonating, a pretty little peppery spew of air that had the sound of a turnip being lightly plucked from the soil.~
== BX3Reb ~Did you make it?~
== BJAN ~They closed the door right in front of my face. Quite rude. And so ended my bard career before it could even begin.~
== BX3Reb ~Heehee, you are quite funny, Jan. You may not know what is a proper instrument, but you do weave quite the tale.~
EXIT 

// Jan #2
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",1)~ THEN BX3Reb X3RebJan2
~Gustav, stop it! Sometimes you are such a baby.~ [X3RF1]
DO ~SetGlobal("X3RebJan","GLOBAL",2)~
== BJAN ~Well now, look at him! Quite the cuddly Ferret, you have there.~
== BX3Reb ~That is Gustav. I'm not sure if I properly introduced you.~
== BJAN ~Gustav, is it? I think we'll get along quite well. Why don't you let me hold him for a while.~
== BX3Reb ~You really want to hold him? Just be careful, he can bite.~
== BJAN ~I am great with animals. Mother says I just have the perfect t- ow!~
== BX3Reb ~Sorry! Maybe we can try this again some other time.~
EXIT 

// Jan #3
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",2)~ THEN BX3Reb X3RebJan3
~I can't believe it, but...Gustav is really starting to be comfortable with your presence. I guess after the first few bites he's started to trust you.~ 
DO ~SetGlobal("X3RebJan","GLOBAL",3)~
== BJAN ~Gustav loves his Uncle Jan. Don't you, Gustav? He likes his new best friend.~
== BX3Reb ~Um, are you going to give him back at some point?~
== BJAN ~Give who back? I didn't take anything from you.~
== BX3Reb ~Um...nevermind. You two look so adorable together I won't pry him away.~
== BMINSC IF ~IsValidForPartyDialogue("Minsc")~ THEN ~Better the ferret than you, Boo.~
EXIT 

// Jan #4
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Reb")
See("Jan")
Global("X3RebJan","GLOBAL",2)~ THEN BX3Reb X3RebJan4
~Jan...have you considered getting your own Ferret? You've even taken to have Gustav sleep next to you.~ 
DO ~SetGlobal("X3RebJan","GLOBAL",3)~
== BJAN ~Well now, are you offering to give up your ferret? I would gladly take him off your hands.~
== BX3Reb ~No! Never that. I was being considerate. But he is my companion. If we ever seperate, he isn't going with you, but you seem to enjoy having an animal around.~
== BJAN ~You make a good point there, Recorder. But I don't think there would be any ferret like Gustav.~
== BX3Reb ~You're a good friend, Jan, even if you're stranger than I am. So maybe I could at least help you find a pet. Maybe if not a ferret, a dog or those griffons you always talk about.~
== BJAN ~Well, my ex-brother in law, Burt Wunderkind, didn't buy his griffons in a store. Why, he baited them, dove right into their nest with a wyvern as a steed, and threw some really fine insults. Ah, definitely not appropriate to recount them.~
== BX3Reb ~Not with Gustav in earshot. We'll find you a friend that enjoys your stories as much as he does, heehee.~
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Reb")
See("JAHEIRA")
Global("X3RebJAHEIRA","GLOBAL",0)~ THEN BX3Reb X3RebJAHEIRA1
~Gustav! Okay, just one more snack, and then that's it.~ [X3Blank]
DO ~SetGlobal("X3RebJAHEIRA","GLOBAL",1)~
== BJAHEIR ~Take care of your distractions, Recorder. You would not want to be caught unawares.~
== BX3Reb ~If something happened, I would be ready right away, I swear.~
== BJAHEIR ~Would you now? If it is not the pet, it is your music, or your books. I swear your eyes are almost never on the road ahead.~
== BX3Reb ~I know it may seem a bit dangerous but...I am juggling a lot of responsiblities. Gustav needs love, it can be easy to forget small details if you don't write them down quickly, and music eases my own nerves.~
== BJAHEIR ~Perhaps at least keep close to the party, then. I will keep a second eye on you, but find a better time for things where you can.~
== BX3Reb ~Yes, Jaheira. I will keep your words in mind.~
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Reb")
See("JAHEIRA")
Global("X3RebJAHEIRA","GLOBAL",1)~ THEN BX3Reb X3RebJAHEIRA2
~Jaheira, could I ask some questions about the Harpers, for my book?~ [X3BLANK]
DO ~SetGlobal("X3RebJAHEIRA","GLOBAL",2)~
== BJAHEIR ~You may note that I am a member, but I would give little else, child. Secrets must remain secret. Some knowledge is not wisely given.~
== BX3Reb ~That sounds more vague than I would like.~
== BJAHEIR ~The Temple of Oghma has its own secrets, no? It's true naming rite ceremonies. Would you have those names given to the world?~
== BX3Reb ~I-no. If it is like that, then I think I understand your reasons of rejection. I will press no more.~
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3ReBKELDOR","GLOBAL",0)~ THEN BKELDOR X3ReBKELDOR1
~Recorder, your music is beautiful. Why are you tragically on the road, and not delighting the thousands with your music in a prestigous house or castle for entertainment?~ [X3Blank]
DO ~SetGlobal("X3ReBKELDOR","GLOBAL",1)~
== BX3Reb ~I am a bard, Keldorn, but no performer. I have a duty to history first.~
== BKELDOR ~Duty, then. This I can understand. Duty before all else.~
== BX3Reb ~Your duty is much greater though, Keldorn. Is it hard?~
== BKELDOR ~It is difficult to be away from those who are precious to you, aye. But that is also what compels me to push forward in my calling: a better world for them.~
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Reb")
See("KELDORN")
Alignment("X3Reb",LAWFUL_NEUTRAL)
Global("X3ReBKELDOR","GLOBAL",1)~ THEN BX3Reb X3ReBKELDOR2
~Does the Order have many bards of their own, Keldorn?~ [X3Blank]
DO ~SetGlobal("X3ReBKELDOR","GLOBAL",2)~
== BKELDOR ~Nay. None but the street performers who try to tempt away squires and knights with hedonistic temptation.~
== BX3Reb ~Not all bards are like that. Some are knowledge-seekers, or poets, or even graceful dancers. But...I guess some are also er...never'do'wells.~
== BKELDOR ~There are good bards, yes. But those I have seen on the order's streets have not made a fine example of the profession.~
== BX3Reb ~I hope I can make to you a better example.~
== BKELDOR ~You do, Recorder. Despite how you seem too precious for a life on the road, your courage and music has been inspiring.~
EXIT 

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Kal")
See("X3Reb")
Global("X3RebKorgan","GLOBAL",0)~ THEN BKORGAN X3KalKorgan1
~This be no place for a gnome maiden. Ye weak, shorter than me, and lack any strength.~ [X3Blank]
DO ~SetGlobal("X3RebKorgan","GLOBAL",1)~
== BX3Reb ~Um...I have spells, and, well a bit of music. I know I can find a way to make mysef useful.~
== BKORGAN ~Ye can cook the stew and play the evening entertainment. All things I can do just fine, hah. Useless.~
== BX3Reb ~I don't know if your voice was very in-tune the last time you tried to sing, but...~
== BKORGAN ~Ye insulting me, girl?~
== BX3Reb ~No! I was...nevermind. I didn't say anything.~
== BKORGAN ~Coward. When this one gets wasted, <CHARNAME>, don't waste yer coin on reviving them.~
EXIT 


//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebNalia","GLOBAL",0)
AreaType(CITY)~ THEN BNALIA X3RebNalia2
~I hate seeing inns around the city. They are the source of so much ill. Drunkedness and draining of wealth.~ [X3Blank]
DO ~SetGlobal("X3RebNalia","GLOBAL",1)~
== BX3Reb ~They are also places of rest and a bit of music. A small reprieve from the day's labor.~
== BNALIA ~At what cost, Recorder?~
== BX3Reb ~Some indulge too much, but this is the same for all ranks of people and class. I think for some, happiness is worth any price.~
== BNALIA ~It is a price far too steep for them to pay. Better for them to be without it.~
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Reb")
See("Nalia")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebNalia","GLOBAL",1)~ THEN BX3Reb X3RebNalia2
~You look curious about something, Nalia. You can ask.~
DO ~SetGlobal("X3RebNalia","GLOBAL",2)~
== BNALIA ~I was wanting to ask what your life was like...while you were enslaved, if that is all right.~ [X3Blank]
== BX3Reb ~Oh. I... would rather not, Nalia.~
== BNALIA ~If I am to understand the poor's suffering, I need to know. I want to listen.~
== BX3Reb ~But I do not want to tell. I am not poor, Nalia. Do you want to hear it was horrible? It was. Somedays gave false hope, some days I laughed, some days I cried. Some days I smiled, and others I desired to die. In the end, it's just one collection of horrible memories.~
== BNALIA ~I... am sorry, Recorder. It is wrong of me to press.~
== BX3Reb ~It isn't you. Just thinking about it makes me so...angry. Let us speak no more of it.~
EXIT 

// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
See("Mazzy")
Global("X3RebMazzy","GLOBAL",0)~ THEN BX3Reb X3RebMazzy1
~Ow! Gustav, stop it. We need to stay focused. Biting me isn't going to get you any more attention.~ [X3RF1] 
DO ~SetGlobal("X3RebMazzy","GLOBAL",1)~
== BMAZZY ~I have never seen such a creature. From where did it come from, Recorder?~
== BX3Reb ~You've never seen a ferret? Mine came from one of the stalls here in Athkatla. I guess most of them tend to come from the north.~
== BX3Reb ~When I was first here with my mother, I...needed someone to take care of, I guess. And I needed love. It was good for both of us.~
== BMAZZY ~That is peculiar thing to say, what do you mean that you needed love?~
== BX3Reb ~I may have spoken too much. I'm sorry. I'd rather not talk about it.~
== BMAZZY ~As you wish. But if you ever need someone to listen, I am always here for you.~
== BX3Reb ~I know. Thank you Mazzy.~
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
GlobalGT("X3RebTalk","LOCALS",10)
See("MAZZY")
Global("X3RebMazzy","GLOBAL",1)~ THEN BX3Reb X3RebMazzy2
~Is there something on your mind, Mazzy? I can feel your gaze on me.~ [X3Blank]
DO ~SetGlobal("X3RebMazzy","GLOBAL",2)~
== BMAZZY ~Is there a reason that you hide who you are, Recorder?~ 
== BX3Reb ~What do you mean, hide?~
== BMAZZY ~I understand your name is Rebecca. You do not need to be afraid of your enemies. There is a strength in defiance of the fear of evil.~
== BX3Reb ~I didn't do it out of just fear, Mazzy. I hate myself for everything I went through.~
== BMAZZY ~You cannot blame yourself for the evil you suffered unto others. That sin is theirs alone.~
== BX3Reb ~How can I? I lost someone I loved, Mazzy...I do not think you can imagine what that is like.~
== BMAZZY ~I too have lost someone I hold dear to my heart, Recorder. But perhaps I have mistepped. If this is truly difficult for you, then I will let it be.~
== BX3Reb ~I know what you are trying to say though. I'm just not strong enough to do that. And I don't think I ever will be.~
EXIT 
//Mazzie#3
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Reb")
See("MAZZY")
Global("X3RebMazzy","GLOBAL",2)~ THEN BX3Reb X3RebMazzy3
~Is their a day that good will truly triumph, Mazzy? It seems no matter how much I hope, bad things still happen.~ [X3Blank]
DO ~SetGlobal("X3RebMazzy","GLOBAL",3)~
== BMAZZY ~The path of good and righteousness is a difficult one. But it is worse to not try at all. The right path is rarely the easy path.~
== BX3Reb ~I don't mean to be so down about this. I am a bard, and I share tales of people defying the odds and prevailing against dark beasts and monsters.~
== BX3Reb ~And when we do prevail, it is so satisfying. I truly feel like I make a difference. And then just so shortly after, there's more darkness around the corner.~
== BMAZZY ~The fight may last lifetimes longer than our own. But I truly believe that each place we step into is a bit brighter when we depart.~
== BX3Reb ~You are a beautiful soul, Mazzy. I am glad you are here next to me.~
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Reb")
See("MINSC")
Global("X3RebMINSC","GLOBAL",0)~ THEN BX3Reb X3RebMINSC1
~Gustav, no! Don't chase the good hamster.~ [X3RF2]
DO ~SetGlobal("X3RebMINSC","GLOBAL",1)~
== BMINSC ~Ah, Boo booped his nose! Gustav just thought it meant to play.~
== BX3Reb ~Sorry. I'm just a bit worried since Gustav is much bigger.~
== BMINSC ~Boo may seem small but his heart is big. He is not afraid of the ferret. No, ferret is friend.~
== BX3Reb ~Okay...I'll not be so restrictive of them, then.~
== BMINSC ~Good, let them play! See, let them go. It is just fine, they are...and Boo is mad. No, this will not work.~
== BX3Reb ~Gustav! You are such a bad ferret!~
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebMINSC","GLOBAL",1)~ THEN BMINSC X3RebMINSC2
~Recorder! Boo has a request.~ [X3Blank]
DO ~SetGlobal("X3RebMINSC","GLOBAL",2)~
== BX3Reb ~Oh? Well, tell Boo I am listening.~
== BMINSC ~Well, Boo is most interested in you replaying that song of yours.~
== BX3Reb ~Which one? I think I've played a few recently.~
== BMINSC ~Ah, Boo can't quite pull a good hum. But Minsc knows it was the one with the flute, yes.~
== BX3Reb ~I think they are all with the flute, Minsc. I'll play them all, and when we come around to it, just nod. Then I'll give a nice encore for the fuzzy adorable hamster, heehee.~
== BMINSC ~Boo gives his best thanks. Look at him do the little dance.~
== BX3Reb ~He brings such a smile. He is the perfect audience.~
EXIT 


//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Reb")
See("Neera")
Global("X3RebNeera","GLOBAL",0)~ THEN BX3Reb X3RebNeera2
~Neera, could you teach me wild magic?~ [X3Blank]
DO ~SetGlobal("X3RebNeera","GLOBAL",1)~
== BNEERA ~You are a bard, Recorder. I don't think that would work.~
== BX3Reb ~But I do know some spells, and understand magic rudimentary and fundamentals.~
== BNEERA ~But wild magic is more then that. And honestly, I wouldn't be a good teacher.~
== BX3Reb ~All right. I was just curious, I guess.~
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Reb")
See("Neera")
Global("X3RebNeera","GLOBAL",1)~ THEN BX3Reb X3RebNeera2
~I know you said you couldn't teach me, Neera, but are there books on it?~ [X3Blank]
DO ~SetGlobal("X3RebNeera","GLOBAL",2)~
== BNEERA ~I've never read of a book on wild magic. Everything I learned was directly from other wild mages.~
== BX3Reb ~Could they teach me?~
== BNEERA ~I don't know. Why are you so eager to learn?~
== BX3Reb ~I just want to be more useful. I see how you cast your magic and want to be more like you.~
== BNEERA ~You...want to be more like me? No one's ever said that to me before.~
== BX3Reb ~Is it silly to say? I know it's dangerous but...it's amazing at the same time. Actual raw magic.~
== BNEERA ~It's not. And maybe someday, someone could help you. But you are useful, Recorder. Your music definitely gets me going.~
== BX3Reb ~Really?~
== BNEERA ~Yes. And it gets stuck in my head for hours afterwards. You know some catchy tunes.~
== BX3Reb ~Thank you, Neera. You are kind. But I do hope I can learn someday. I always want to grow.~
== BNEERA ~Well, you've got a long way to go. You're awfully short.~
== BX3Reb ~Heehee, I guess I am.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Reb")
See("RASAAD")
Global("X3RebRasaad","GLOBAL",0)~ THEN BRASAAD X3RebRasaad1
~Sometimes I wish I kept a journal as you, Recorder. To push my thoughts from mind to paper, it must be soothing.~ [X3Blank]
DO ~SetGlobal("X3RebRasaad","GLOBAL",1)~
== BX3Reb ~Well, it is more of a record of our adventures than a proper journal, but I guess it is quite close.~
== BRASAAD ~Do you share everything in it?~
== BX3Reb ~Everything I can. Not every action to the letter. I know what is not so interesting...and what might be a bit intrusive. I've not put anything personal about you in the records so far, out of respect.~
== BRASAAD ~No, please do. You are creating a historical record. I would want it to be an honest recollection. If we are unable to face who we are, then we cannot see our own darkness.~
== BX3Reb ~Very well then, Rasaad. I'll make a note to write what I understand tonight. Perhaps you can be avalaible for some questions when we next make camp?~
== BRASAAD ~I would be honored.~
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Reb")
See("RASAAD")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3RebRasaad","GLOBAL",1)~ THEN BX3Reb X3RebRasaad2
~Sometimes, I wish I was more like you, Rasaad.~ [X3Blank]
DO ~SetGlobal("X3RebRasaad","GLOBAL",2)~
== BRASAAD ~I am honored, though what do you mean by that, Recorder?~
== BX3Reb ~I never sought revenge against my husband when I escaped him. I just sought to try to live.~
== BRASAAD ~There is no shame in that, Recorder. Perhaps  you took the high road, even, to continue to live on your life as you could.~
== BX3Reb ~But you don't do that. If it is the better road in your mind, why?~
== BRASAAD ~Love. Rage. I have lost too much. And so I cannot take the road you chose.~
== BX3Reb ~I don't know if I want to say that I hope you get your revenge...but I do hope you get closure.~
EXIT 

// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebValygar","GLOBAL",0)~ THEN BVALYGA X3RebValygar1
~Recorder, can you put down that flute? I desire quiet.~ 
DO ~SetGlobal("X3RebValygar","GLOBAL",1)~
== BX3Reb ~Oh. I am sorry, I will stop for a while. Was it...was it displeasing?~
== BVALYGA ~Mmm. I just...I just need some silence to think.~
== BX3Reb ~You are different than me in that way. I think I play so I don't have to think when something troubles me. I just want to be a little  at ease.~
== BVALYGA ~Something is on your mind then?~
== BX3Reb ~All the time recently. I'm trying to write and keep this tale in one piece, but my own contributions or lack thereof influence the very records I am keeping. It makes me question my own bias.~
== BVALYGA ~Being truly neutral is an impossibility. We all have a judgement one way or another.~
== BX3Reb ~Perhaps you are right, Valygar. I shouldn't let it bother my mind.~
== BVALYGA ~Why don't you...pick up your flute and play again? It was not a bad tune.~
== BX3Reb ~I will, Valygar. But I will play just a bit quieter. I wish for you to have solace as much as I.~
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Global("X3RebViconia","GLOBAL",0)~ THEN BVICONI X3RebViconia1
~<CHARNAME>, why do you pitifully drag this bard about? Pleasure, talents? I see none of it.~ 
DO ~SetGlobal("X3RebViconia","GLOBAL",1)~
== BX3Reb ~*Sigh*.~
== BVICONI ~Speak up, bard. I can barely hear you breathing. Are you dying of fright?~
== BX3Reb ~Whatever I did, I am sorry. Please, leave me alone.~
== BVICONI ~How meek. You would not survive the dark for a day. I barely see how you survive the surface.~
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Reb")
See("Yoshimo")
Global("X3RebYoshimo","GLOBAL",0)~ THEN BX3Reb X3RebYoshimo1
~Yoshimo? You are from Kara-Tur, are you not? Oh, I have so many questions I could ask.~ 
DO ~SetGlobal("X3RebYoshimo","GLOBAL",1)~
== BYOSHIM ~Indeed I am, lovely Recorder. And I have many questions I could ask of yourself. How is it someone like yourself came into the bard's trade?~
== BX3Reb ~I always had a passion for the arts. I know it's odd for a gnome, and most of us like to focus in some sort of artifice, but I just find music to be so beautiful and powerful.~
== BYOSHIM ~I fine answer friend. Tell me, do you not find music to be rigid? Here I have found it based on numbers and rhythym over the natural human breath.~
== BX3Reb ~Are you suggesting the music of your homeland doesn't focus on patterns and rhythms? That's quite interesting.~
== BYOSHIM ~If you ever get the chance to meet the bards of Kara-Tur, my lovely friend, you may certainly find an entire differing philosophy to the art of music.~
== BX3Reb ~I would love the opportunity to go there. Someday.~
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Global("X3RebX3Vie1","LOCALS",0)~ THEN BX3Reb X3RebX3Vie1
~Vienxay, I know you call yourself a Shadowmage, but what exactly is that?~
DO ~SetGlobal("X3RebX3Vie1","LOCALS",1)~
== BX3Vie ~I am a mage who knows shadow magic. Simple as that.~
== BX3Reb ~How can you use Mystra's weave and Shar's weave at the same time?~
== BX3Vie ~You can't and I don't. Most Shadowmages are admittedly of Shar's bend, but I have not fallen so far as to become like them.~
== BX3Reb ~I see. Is it like the weave, this Shadow magic?~
== BX3Vie ~It is the weave, just another aspect of it's many sections. Think it of as a special discipline of illusion, perhaps. I use it to amplify my skulking talents and the like.~
== BX3Reb ~Oh my, that is really fascinating. You wouldn't mind if I asked more questions? We don't have anything on this sort of thing in the temple.~
== BX3Vie ~I do mind. I am not here to be interviewed. Perhaps later, if I feel like it.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Global("X3RebX3Vie1","LOCALS",1)~ THEN BX3Reb X3RebX3Vie2
~Vienxay, would it be possible to learn Shadow Magic? Could I use it?~
DO ~SetGlobal("X3RebX3Vie1","LOCALS",2)~
== BX3Vie ~It requires some innate grasp. Very little is written, and what is written is in the hands of people you would not do well speaking with.~
== BX3Reb ~And what about you? Could...you teach me?~
== BX3Vie ~I could not. I would not.~
== BX3Reb ~Why? I can work hard, I am smart like you. We could at least make an attempt.~
== BX3Vie ~It is not your capability. Yes, you could learn. It is my lack of desire. Given my last mentor-student relationship, I would hardly want to do that again.~
== BX3Reb ~I am sorry. I shouldn't have brought it up.~
== BX3Vie ~Good. Let us discuss it no more.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Vie")
Alignment("X3Vie",NEUTRAL)
Global("X3RebX3Vie1","LOCALS",2)~ THEN BX3Reb X3RebX3Vie3
~Vienxay, you did a good thing passing on that book. I kind of wish I got to read it though.~
DO ~SetGlobal("X3RebX3Vie1","LOCALS",3)~
== BX3Vie ~It was in elven. You would not have understood a word.~
== BX3Reb ~I do speak elven, Vienxay. As well as a few other languages.~
== BX3Vie ~Whatever. Regardless, it was not for your eyes. It is for my people's...as it should be.~
== BX3Reb ~You've walked on the continent for this long. Do you still distrust everyone?~
== BX3Vie ~In all of my expereince, yes, only more cause to distrust humans. And while you may be trustable, you would share knowledge, and that can get into dangerous hands.~
== BX3Reb ~But if we keep all knowledge a secret, wouldn't we deter progress? There is so much we could learn.~
== BX3Vie ~Given present times? I think that is best. Perhaps one day human kind can be trusted. But that is not now.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Reb")
See("X3Reb")
Dead("X3RPhel")
Global("X3RebX3Vie3","LOCALS",0)~ THEN BX3Vie X3RebX3Vie4
~Did it feel good, killing your husband?~ [X3Blank]
DO ~SetGlobal("X3RebX3Vie3","LOCALS",1)~
== BX3Reb ~It doesn't change anything. It wasn't all bad, the time spent with him. Some of it was happy, unbelievable as it sounds. I hate him but...I hate myself more, I think.~
== BX3Vie ~...I suppose I know what you mean. The self-loathing. Rise above it. You are better than anyone else.~
== BX3Reb ~Is that what you tell yourself?~
== BX3Vie ~It's true. I hardly need to say it.~
== BX3Reb ~I think I understand you a little more, Vienxay. Sometimes you have been...difficult but...now I think I sympathize so much with your situation.~
== BX3Vie ~Please. I was checking on you, don't turn this around and pity me. Ugh.~
== BX3Reb ~You're...sweet in your own way, Vienxay. Thank you. I think I will be okay.~
EXIT 