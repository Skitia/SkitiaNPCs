// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("AERIE")
Global("X3EmiAERIEToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiAERIE1
~Aerie, you're quite the powerful priestess now. Do you think...that you could restore your lost wings now, if you tried?~ [X3Blank]
DO ~SetGlobal("X3EmiAERIEToB","GLOBAL",1)~
== BAERIE25 ~I wish it were that easy, Emily. But I've come to accept things as they are. And there are lovely things on the ground too.~
== BX3Emi25 ~Really? Like what?~
== BAERIE25 ~Well, you have your lakes and rivers. You could never see the aquatic creatures up close from the sky. And the bustling towns and flowers and high trees hiding the forest creatures...the world is lovely in many different ways.~
== BX3Emi25 ~I think you've matured more than I have on this adventure. You're like a role model to me.~
== BAERIE25 ~Oh, you're too kind, Emily. But we're falling behind from the others. Maybe we can talk more some other time.~
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Emi")
See("ANOMEN")
Global("X3EmiANOMENToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiANOMEN1
~Why are you looking at me like that, Anomen? Is there dirt on my face?~ [X3Blank]
DO ~SetGlobal("X3EmiANOMENToB","GLOBAL",1)~
== BANOME25 ~No. I am merely examining your features, my lady. For someone who claims to be an aasimar, I see the beauty but not the demeanor.~
== BX3Emi25 ~I'm not even sure how to process that. "Claims"?~
== BANOME25 ~There was a member of an order with blood like yours. Tales rang richly of their zealousness and commitment. Their judgement of all things evil was cold and swift. No mercy. No hesitation.~
== BX3Emi25 ~We aren't all the same. Honestly, I have met so few of people like me I could not even tell what you are like. Some of us are like that, and...others I've met aren't. Honestly? I think I am probably a poor example.~
== BANOME25 ~You stand here and fight evil with us, Emily. But if you seek guidance and counsel, I would be glad to part you my wisdom.~
== BX3Emi25 ~Right. You know? I think I'm fine being an imperfect example. But thanks.~
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BCERND25 X3EmiCERND1
~You seem down, Emily. Your face has turned to the clouds many times this day.~ [X3Blank]
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BX3Emi25 ~All the fighting. The conflict. The killing. Does it...bother you sometimes, Cernd?~
== BCERND25 ~Duty weighs heavily on you, as it does me. For not only do the events weigh heavily on the cities and people, but the natural world as well.~
== BX3Emi25 ~Do you worry that things will get worse before they get better?~
== BCERND25 ~All things right their way back to balance. After dawn comes morning, after morning dusk, after dusk, night, after night, the dawn.~
== BX3Emi25 ~So it is just a matter of waiting, then?~
== BCERND25 ~And moving. For nothing is accomplished while one idles in the center of the forest.~
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiEDWINToB","GLOBAL",0)~ THEN BEDWIN25 X3EmiEDWIN1
~I have observed you for a while, Emily. You may not have the power expected of your lineage, but you have proven competent (And are still quite beautiful).~ [X3Blank]
DO ~SetGlobal("X3EmiEDWINToB","GLOBAL",1)~
== BX3Emi25 ~Oh, really. Well, your flatter makes me swoon, Edwin, my head is spinning with nothing but you in my head. Now, can we get back to business now?~
== BEDWIN25 ~Just watch. I have left harlots panting for less. All have enjoyed my conquering and frankly, fulfilling indulgence.~
== BX3Emi25 ~For someone who is noble like myself your words sometimes are...I'm not even going to finish the thought.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiHAERDALISToB","GLOBAL",0)~ THEN BHAERD25 X3EmiHAERDALIS1
~You have changed, my golden eagle, amazing aasimar, your arrows rain death and bring about the destruction of all your foes. A true angel of doom.~ [X3Blank]
DO ~SetGlobal("X3EmiHAERDALISToB","GLOBAL",1)~
== BX3Emi25 ~I am not an "angel" of doom, Haer'dalis. All of this death...the blood and destruction, it's horrible.~
== BHAERD25 ~It is beautiful. Entropy and chaos whirling into a great maelstrom. Times bring about such enthralling forces.~
== BX3Emi25 ~This is why we can never be friends, Haer'dalis. Comrades in arms...but no more.~
== BHAERD25 ~If that is where you wish the state of things. But chaos has its way.~
== BX3Emi25 ~It may. But never on my heart on this.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3EmiIMOEN1
~Are you going to go back home to your keep when this is all over, Emily?~ [X3Blank]
DO ~SetGlobal("X3EmiIMOENToB","GLOBAL",1)~
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN BX3Emi25 X3EmiImoenHeir
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN BX3Emi25 X3EmiImoenExile 

CHAIN BX3Emi25 X3EmiImoenHeir 
~Yes. I would need to assume my duties. I don't know if I'll be as good as a leader as my father, but I want to try.~
== BIMOEN25 ~Ooh. You sound nervous. Are you sure you can handle it?~
== BX3Emi25 ~Honestly? I'm not. I've always felt like I've slightly resisted it because I enjoy the road so much.~
== BIMOEN25 ~Why not stay on the road?~
== BX3Emi25 ~I can't be selfish. And as much as I enjoy traveling, I am needed, and I will heed the call when this is over.~
== BIMOEN25 ~Well, there are people there already running it in your absence, right? I don't think you have to.~
== BX3Emi25 ~Well my friend Imoen, some of us have to grow up.~
== BIMOEN25 ~Oooh, a shot at little old me. Someone is getting a little testy.~
== BX3Emi25 ~I didn't mean it that way! I just meant-~
== BIMOEN25 ~Haha, I'm just teasing you, Emi.~
== BX3Emi25 ~Emi...that's the first I've heard of that nickname. And I have a feeling not the last from you.~
EXIT 

CHAIN BX3Emi25 X3EmiImoenExile 
~I can't. I'm banished from my duties...from my family, as per my brother's wishes.~
== BIMOEN25 ~Well that's unfortunate. You have any plans made to do now?~
== BX3Emi25 ~Honestly? I'm still not sure. But I've always felt like I belonged on the road. There's something so freeing, when you can set your own life and help anyone and everyone.~
== BIMOEN25 ~You seem happy when you say that, Emi. I think you should do that.~
== BX3Emi25 ~Emi? Er, well, I'll still miss home terribly. Maybe...maybe someday I'll get to step foot in home again.~
== BIMOEN25 ~Oooh. You really think so?~
== BX3Emi25 ~No. Most likely I'd probably get attacked. Probably a terrible idea. Unfortunate but the reality. Some of us have to grow up.~
== BIMOEN25 ~Oooh, a shot at little old me. Someone is getting a little testy.~
== BX3Emi25 ~No no no! That was not meant for you.-~
== BIMOEN25 ~Haha, I'm just teasing you, Emi.~
== BX3Emi25 ~Emi...I have a feeling Im' going to have to get used to this nickname now.~
EXIT 

// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiJanToB","GLOBAL",0)~ THEN BJAN25 X3EmiJan1
~Your archery is rather impressive, Emily. It reminds me of my Aunt Petunia. She was a ranger, you see.~ [X3Blank]
DO ~SetGlobal("X3EmiJanToB","GLOBAL",1)~
== BX3Emi25 ~Uh, which one was that? You have a lot of aunts and uncles, Jan. Are they even real?~
== BJAN25 ~Oh definitely. Although I have had my suspicions of Uncle Stinky. He's resting peacefully, but he could rise up. He met a rather tormented end.~
== BJAN25 ~We believe it had something to do with all the fish heads he liked to carry around, along as his progressively worsening diaper rash.~
== BX3Emi25 ~Okay. Circle back. What does this have to do with your Aunt Petunia?~
== BJAN25 ~Well she had a fondness for the bow, arrows too, just like yours. Even fletched her own from the bark of a tree. But there was this one tree that was particularly displeased when she tried to pull some of its bark.~
== BJAN25 ~It started sprouting limbs and whacked away her bow. Had to leave it behind. Never fired an arrow after that.~
== BX3Emi25 ~How is this even...?~
== BJAN25 ~Her ranger skills kept her alive. She bolted and screamed through the forest until she made it to the first town. You would think a tree would be slow, but this one was particularly angry. It must have not eaten its daily dose of soil. Or the bark she ripped off was part of its face.~
== BX3Emi25 ~Right. Well. Don't worry. If I ever feel the need to take supplies from a tree, I will ask super nicely and very fondly remember this tale of yours.~
EXIT 


// JAHEIRA #25
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiJAHEIRAToB","GLOBAL",0)~ THEN BJAHEI25 X3EmiJAHEIRA1
~You seem uneasy, Emily. A copper for your thoughts?~ [X3Blank]
DO ~SetGlobal("X3EmiJAHEIRAToB","GLOBAL",1)~
== BX3Emi25 ~Is it that obvious? Well, I just feel we have seen more and more people die. Throughout all of my ventures, I have seen so many people die. I can't help but think, was it justified? Was there another way?~
== BJAHEI25 ~Such thoughts serve you well, child. Some would have you believe the choice is black and white. But there is much grey in the world. If you seek a bloodless path, you will have to be thoughtful with your words, and more with your actions.~
== BX3Emi25 ~That seems impossible with <CHARNAME>. Despite my affections for them, I can't deny theirs has been a bloody path.~
== BJAHEI25 ~Do you judge them worse for it?~
== BX3Emi25 ~No, I don't think I could. I acknowledge their strength. I just hope this ends well for them and us all.~
EXIT 

// KELDORN #25
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiKELDORNToB","GLOBAL",0)~ THEN BKELDO25 X3EmiKELDORN1
~The path is dark, and the course, darker still. Torm, give us strength.~ [X3Blank]
DO ~SetGlobal("X3EmiKELDORNToB","GLOBAL",1)~
== BX3Emi25 ~You think he is listening? It is hard to think the gods are...allowing so much death.~
== BKELDO25 ~The war of the Bhaalspawn is a bloody affair. <CHARNAME>'s course often troubles me. But I am here to keep the ship righted. The road is black, but the light is not as far ahead as you fear, lady Emily.~
== BX3Emi25 ~I was more afraid that the light was not there at all.~
== BKELDO25 ~The light is in you, and all of those who push and hope for a virtuos end. Do not let your fears dull your spirit. You have proven yourself again and again. Keep strong.~
== BX3Emi25 ~I'll try. I'm glad we've had this discussion.~
== BKELDO25 ~As am I, Emily. You are not the only one who needed to hear these words.~
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiKorganToB","GLOBAL",0)~ THEN BKORGA25 X3EmiKorgan1
~Aasimar. Put yer back in. What good are ye and yer plucky sticks?~ [X3Blank]
DO ~SetGlobal("X3EmiKorganToB","GLOBAL",1)~
== BX3Emi25 ~Plucky? A bow is not an instrument to play music with. You do know that, I hope.~
== BKORGA25 ~Don't think to imply I'm stupid, girl. I've an axe with yer name on it.~
== BX3Emi25 ~Ooh, death threat. That's a new one.~
== BKORGA25 ~Ye push yer luck, girl. Keep it up and my axe will be in yer face.~
== BX3Emi25 ~Come on, try a little originality. To the e- oh. You were serious.~
== BKORGA25 ~A fine catch, lass. Yer reflexes are as keen as ever. Hah! Ye live safely this day.~
== BX3Emi25 ~Wow. You Korgan, are insane.~
EXIT 

// Mazzy
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Emi")
See("Mazzy")
Global("X3EmiMazzyToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiMazzy1
~You know Mazzy, through all of the adversity, long, long days of walking, and near death experiences, I am so glad that you were one of the people I have been alongside. I'll never forget you.~ [X3Blank]
DO ~SetGlobal("X3EmiMazzyToB","GLOBAL",1)~
== BMAZZY25 ~You honor me, Emily. I am equally glad to have fought beside someone with a good heart like yourself.~
== BX3Emi25 ~Do you think we would cross paths again someday when this is over?~
== BMAZZY25 ~Your home is here, is it not? I had thoughts of traveling north. I cannot say if I would ever return here.~
== BX3Emi25 ~Aww. Well, so be it. But if you are ever do, I definitely have a lot of plans of things we could do together.~
== BMAZZY25 ~Sometimes your heart is too much of a young girl, my friend. But I may take you up on that if I do.~
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Emi")
See("MINSC")
Global("X3EmiMINSC","GLOBAL",0)~ THEN Bx3Emi25 X3EmiMINSC1
~Minsc, will you return to your homeland when this is over?~ [X3Blank]
DO ~SetGlobal("X3EmiMINSC","GLOBAL",1)~
== BMINSC25 ~To Rashemen? If my people will have me, yes.~
== Bx3Emi25 ~Are you nervous?~
== BMINSC25 ~Boo is not concerned. But Minsc...Minsc wonders if they will remember him.~
== Bx3Emi25 ~Oh, I think a man like you is quite unforgettable! With all the evil you've kicked and still to kick? I'd have heard of you from a mile away..~
== BMINSC25 ~Minsc and Boo appreciate the praise. Boo especially. He would hug you, but his arms are too small.~
== BX3Emi25 ~Aww. I'd hug him, but, let's not cause an accident.~
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiNALIAToB","GLOBAL",0)~ THEN BNALIA25 X3EmiNALIA1
~You know a bit of magic, Emily. You have the ability to be a good mage. Why not invest more of your time learning and mastering the magical arts?~ [X3Blank]
DO ~SetGlobal("X3EmiNALIAToB","GLOBAL",1)~
== BX3Emi25 ~Beyond what I already use in my arrows? I don't know, Nalia. We've fought so many mages. I'd be kind of afraid of taking a wrong turn.~
== BNALIA25 ~Emily, you, a wrong turn? And you have met me, haven't you? You're quite capable of taking magic as responsibly as I am.~
== BX3Emi25 ~Even an aasimar isn't immune to corruption. Besides, I think Archery is always going to be my best tool.~
== BNALIA25 ~You should never rest on your laurels, Emily. You should always try to become progressively better.~
== BX3Emi25 ~Maybe. It is something I will have to think about. I'll think on it, Nalia.~
== BNALIA25 ~That is all I ask.~
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Emi")
See("Neera")
Global("X3EmiNeeraToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiNEERA1
~You know Neera, I don't know what your plans are when this is over, but you should definitely meet the elves in the forest near my estate.~ [X3Blank]
DO ~SetGlobal("X3EmiNeeraToB","GLOBAL",1)~
== BNEERA25 ~You want me to meet who? Just some elf friends of yours?~
== BX3Emi25 ~Not just any elves. These are wood elves, and I think some of them trade in the exact same magic you do.~
== BNEERA25 ~Wild magic? How do you know that?~
== BX3Emi25 ~Well, it's a magic I don't understand, so it's a good guess?~
== BNEERA25 ~I don't think it is the same thing, Emily. Isn't this where you learned how to blend magic with your arrows.~
== BX3Emi25 ~Well not there, but from someone who was there... well I guess I understand it a bit more. I just thought your wild magic came from the elves.~
== BNEERA25 ~My tutors have all been humans, actually. Not that it matters. Anyone can learn it. But the forest of yours you mention? I wouldn't mind seeing it.~
== BX3Emi25 ~Great. If I ever see you around the area, I will be your personal guide. I'm sure it will be fun. Hopefully.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaadToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiRasaad1
~Have you thought of your path after this, Rasaad?~ [X3Blank]
DO ~SetGlobal("X3EmiRasaadToB","GLOBAL",1)~
== BRASAA25 ~No. My thoughts have not in some time pushed past the time when my vengeance is achieved.~
== BX3Emi25 ~So no plans at all? I would hope take a long, soothing bath and get some well earned relaxation is step number one.~
== BRASAA25 ~Rest for the weary? There would be enjoyment in that. But there is always something around the corner. Any such rest would be brief.~
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Emi")
See("SAREVOK")
Global("X3EmiSAREVOKToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiSAREVOK1
~I'm still not sure who you are. Your return was from no proper resurrection. Ghost? Some other form of undead?~ [X3Blank]
DO ~SetGlobal("X3EmiSAREVOKToB","GLOBAL",1)~
== BSAREV25 ~I am more than you, aasimar. Drop your scrutiny.~
== BX3Emi25 ~Hrm, I think it warrants an experiment! A touch to see if my hand goes through.~
== BSAREV25 ~If you touch me girl, you will lose that hand.~
== BX3Emi25 ~You say that, but you know you wouldn't. Still, I won't push my teasing further.~
EXIT 


// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
Global("X3EmiValygarToB","GLOBAL",0)~ THEN BX3Emi25 X3EmiValygar1
~Sometimes I think there is something very right about your fear of magic, Valygar.~ 
DO ~SetGlobal("X3EmiValygarToB","GLOBAL",1)~
== BVALYG25 ~I do not fear it, Emily, for its danger, but for how it turns people corrupt, how it makes them evil.~
== BX3Emi25 ~That is what I meant. The most terrible foes we have faced always know magic, and they are very deadly with it. And they wield spells we aren't even quite familiar with.~
== BVALYG25 ~Such is mages and magic. Always one more spell. Always one more mistake.~
== BX3Emi25 ~And yet, a world without magic. Can we really comprehend it? It changes people's lives. It makes life admittedly easier.~
== BVALYG25 ~There are many people who live life without being touched or using a spell, Emily. Do not take our experiences as the default for all people.~
== BX3Emi25 ~I guess you have a point yet again, Valygar. But there is still good magic, no? Some of these people live easy knowing that if something terrible happened, there would be a priest for them.~
== BVALYG25 ~Sometimes. But we would all perhaps be better if we did not act recklessly or foolishly because we thought magic our netting for our mistakes.~
== BX3Emi25 ~You are really wise, Valgar. I can find nothing to say to refute what you point out. I guess silence does bestow wisdom, as father said. I probably should talk less and see if it works!~
== BVALYG25 ~That would be nice, miss Emily. That would be nice.~
EXIT 

// Viconia
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Emi")
See("Viconia")
Global("X3EmiViconiaToB","GLOBAL",0)~ THEN BVICON25 X3EmiViconia1
~An aasimar like yourself would be a valuable slave. More valuable if you were male.~ 
DO ~SetGlobal("X3EmiViconiaToB","GLOBAL",1)~
== BX3Emi25 ~Oh. Well, before you go further with that? No interest. At all. In being a slave.~
== BVICON25 ~Rarely were the slaves we took willing.~
== BX3Emi25 ~Well, good thing I am very good with my arrows now, aren't I?~
== BVICON25 ~Your skill reminds me of the darthiir of the woods, cowardly hiding behind bushes during surface raids, or creeping behind rocks when they dared venture below for retribution. You would perhaps, survive capture. At least a while.~
== BX3Emi25 ~I have no idea how to take that. You know, I'm just going to smile and then walk away. Too disturbing for me to think about.~
EXIT 

// Skitia Companions
//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3RebToB","LOCALS",0)~ THEN BX3Reb25 X3EmiX3Reb1
~Are you all right, Emily? Since we've been in and around Tethyr, you've seemed a bit distant.~
DO ~SetGlobal("X3EmiX3RebToB","LOCALS",1)~
== BX3Emi25 ~Well. To be honest, Recorder? I've been a little worried you would interview me about home when it's just not a good time to say how wonderful Tethyr is.~
== BX3Reb25 ~Tethyr is still beautiful, Emily. Despite all of the tragedy happening. It would happen wherever we went, from what I am beginning to truly comprehend about <CHARNAME> and the bhaalspawn.~
== BX3Emi25 ~I know, I know, but...I would have wanted to show you Tethyr in its proper beauty. Peaceful and...without Bhaalspawn attacking eachother and everyone in-between.~
== BX3Reb25 ~Such a time could still come. Your home is further to the north, isn't it? I would like to see it someday.~
== BX3Emi25 IF ~Global("X3EmiHeir","GLOBAL",1)~ THEN ~Oh you are *definitely* going to see it someday. No getting out of that.~
== BX3Emi25 IF ~!Global("X3EmiHeir","GLOBAL",1)~ THEN ~I can't even show you that anymore, Recorder. I hope you aren't dissapointed that I'm not...not as great as you thought.~
== BX3Reb25 IF ~!Global("X3EmiHeir","GLOBAL",1)~ THEN ~It doesn't change my mind, my friend. We can still go and just see everything else about it. I think I would like that.~
== BX3Emi25 IF ~!Global("X3EmiHeir","GLOBAL",1)~ THEN ~It's a promise, then. I'd be glad to show you the sights.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3RebToB","LOCALS",1)~ THEN BX3Reb25 X3EmiX3Reb2
~Everyday I get a little nervous that something happened to the ship we sent Raban on. I wish I could see him.~
DO ~SetGlobal("X3EmiX3Reb2","LOCALS",2)~
== BX3Emi25 ~Oh, he's fine. He's probably fishing in Urgoth's beard. Can he fish at his age? Hrm. Or...well hopefully not listening to the town stories. I heard there was some rampant disease caused by a little too much intimiacy going around-~
== BX3Reb25 ~Emily!~
== BX3Emi25 ~Sorry. I probably should start reigning my thoughts in. I've forgotten a lot of my gentlewoman lessons. It will be fine, Recorder. Just imagine the moment where you reuinte again.~
== BX3Reb25 ~I worry that he won't even love me.~
== BX3Emi25 ~I...well I honestly don't know what to say to reassure you. But you are a good person, Recorder. He'll see that and...I think given time, you'll make up for lost ground.~
== BX3Reb25 ~I pray it is so, Emily. The thought that he might not worries me so much.~
EXIT 
//Helga
CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3EmiX3HelToB1","LOCALS",0)~ THEN BX3Hel25 X3EmiX3Hel1
~Many battles we have fought, and many arrows ye have wasted. Yer a fine warrior now, lass, why not expand yerself.~
DO ~SetGlobal("X3EmiX3HelToB1","LOCALS",1)~
== BX3Emi25 ~If something works, Helga, why change it?~
== BX3Hel25 ~For the day it nay works, girl.~
== BX3Emi25 ~Right. That's a good answer. Isn't this why we travel together? Each of us gives a different set of skills someone else doesn't.~
== BX3Hel25 ~Bah. Why do ye resist getting up close and personal?~
== BX3Emi25 ~Oh, oh I know. Why don't you attack from afar? See? A question with a question. I got you.~
== BX3Hel25 ~Moradin's beard. Yer lack of seriousness is a damn annoyance. Forget it if that is what ye wish. I nay pressing further.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3HelToBQuest","GLOBAL",6)
Global("X3EmiX3HelToB2","LOCALS",0)~ THEN BX3Emi25 X3EmiX3Hel1
~I wished to say that I am sorry for what happened to your son, Helga. I can't imagine how hard it must be.~
DO ~SetGlobal("X3EmiX3HelToB2","LOCALS",1)~
== BX3Hel25 ~Nay...nay you can't girl.~
== BX3Emi25 ~Is there a way to possibly raise him? You are a high priestess now.~
== BX3Hel25 ~Aye, a high priestess, but nay a goddess. Of all the mothers who nay have their sons return home, I know too well when one is at a point of no return.~
== BX3Emi25 ~We could search Saradush together when this is over. He could be in the ruins.~
== BX3Hel25 ~Nay. I never want to set foot back in that damn place. Yer heart is sweet, Emily, but ye touch a sore spot.~
== BX3Emi25 ~I understand, Helga. I will give you privacy.~
EXIT 
//Kale 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiX3KalToB1","LOCALS",0)~ THEN BX3Kal25 X3EmiX3Kal1
~Soooo. This is your homeland, eh?~ [X3KSO]
DO ~SetGlobal("X3EmiX3KalToB1","LOCALS",1)~
== BX3Emi25 ~Yes. This is Tethyr. The south, at least. I'm from the north.~
== BX3Kal25 ~Heh. Doesn't compare at all to Gullykin.~
== BX3Emi25 ~Kale, it's not a competition. Do you always need to glorify yourself?~
== BX3Kal25 ~Need to? You mean want to, Em.~
== BX3Emi25 ~Right. Let's drop the nickname, please.~
== BX3Kal25 ~No need to get snappy just 'cause you're jealous, Em.~
== BX3Emi25 ~Jealous? Annoyed, maybe. Thinking of an arrow to arse at this point.~
== BX3Kal25 ~Well, if that's what gets you going.~
== BX3Emi25 ~Right. I'm going to go over there before you really drive me crazy.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiRomanceActive","GLOBAL",2)
Global("X3EmiX3KalToB2","LOCALS",0)~ THEN BX3Kal25 X3EmiX3Kal1
~You feeling all right, Emily? You seemed a bit nauseous this morning.~
DO ~SetGlobal("X3EmiX3KalToB2","LOCALS",1)~
== BX3Emi25 ~What? No, I'm just fine. What makes you say such a thing?~
== BX3Kal25 ~Looked like you were gagging over by a bush when we were getting up from rest.~
== BX3Emi25 ~Er. That was just...something from the night before.~
== BX3Kal25 ~I don't remember you eating or drinking last night. In fact, you and <CHARNAME> went straight to good ol' fun, if you know what I mean.~
== BX3Emi25 ~That's private.~
== BX3Kal25 ~Experimenting with some sort of...wacky herbs?~
== BX3Emi25 ~Are you really talking about us? Do you have no sense of personal space?~
== BX3Kal25 ~Not when it involves juicy things.~
== BX3Emi25 ~Well, I'm going to put up a wall. You can talk to the cold shoulder.~
== BX3Kal25 ~Sheesh. It was just a question. Tallfolk are so sensitive, heh.~
EXIT 

//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
!Global("X3EmiHeir","GLOBAL",1)
Global("X3EmiX3VieToB1","LOCALS",0)~ THEN BX3Vie25 X3EmiX3Vie1
~I know how it is to be banished, Emily. You and I are not so different, now.~ [X3Blank]
DO ~SetGlobal("X3EmiX3VieToB1","LOCALS",1)~
== BX3Emi25 ~Really. Now you are being nice to me? Or is this going to follow up with some condescending.~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~No. For what it is worth, I am sorry. You did not do anything wrong.~
== BX3Emi25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~Okay, what did you do with Vienxay?~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~I am Vienxay. Is it so hard to understand that I might empathize?~
== BX3Emi25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~It's...nice, admittedly. Thank you. You should be like this more often. It's nice.~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~I will...try. It is not me. But I admit, I do want to be better.~
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~What do you think, mutt?~
== BX3Emi25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~Right. Just leave me alone.~
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~And that is why you are so unworthy. Perhaps when you are ready to grasp strength and not hide behind walls of morals, you may yet turn your path around.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
Global("X3VieEvermeet","GLOBAL",1)
Global("X3EmiX3VieToB2","LOCALS",0)~ THEN BX3Emi25 X3EmiX3Vie2
~So. You are finally able to return home. You must feel so happy, Vienxay.~
DO ~SetGlobal("X3EmiX3VieToB2","LOCALS",1)~
== BX3Vie25 ~Yes. I can see my family again. My sisters, my parents, my people.~
== BX3Emi25 ~I am happy for you. You've come a long way, even if you've been difficult to be around sometimes.~
== BX3Vie25 ~I should...apologize for that, Emily. I have called you things you did not deserve and treated you less than I should have.~
== BX3Emi25 ~Thank you Vienxay. I forgive you. Maybe I could even visit you there someday!~
== BX3Vie25 ~I am unsure. The people of Evermeet do not trust outsiders, even half-elves. But there is always a chance. And if it could happen, I...would like that.~
== BX3Emi25 ~Ooh. I look forward to it. And meeting your sisters. It will be *so* interesting to see what they are like.~
== BX3Vie25 ~Don't get your hopes up. They have none of my brilliance.~
== BX3Emi25 ~Well then. They sound a lot more likeable! Definitely can't wait.~
EXIT 