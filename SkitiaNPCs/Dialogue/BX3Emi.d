
// Aerie #1
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("AERIE")
Global("X3EmiAERIE","GLOBAL",0)~ THEN BX3Emi X3EmiAERIE1
~Aerie, you grew up in the circus. What sort of acts did you do?~ [X3Blank]
DO ~SetGlobal("X3EmiAERIE","GLOBAL",1)~
== BAERIE ~I didn't grow up in the circus, Emily. I am from Faenya-Dail. It was so grand and majestic, so beautiful.~
== BX3Emi ~You sound like you really miss it. Any plans to go back?~
== BAERIE ~I do not have my wings, Emily. I don't know if I could ever go back. I don't know if my people would accept me.~
== BX3Emi ~But you don't need wings to travel, and you are one of them! Surely you could try.~
== BAERIE ~Maybe one day. But...I don't have the heart for that right now.~
EXIT 

// Aerie #2
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("AERIE")
Global("X3EmiAERIE","GLOBAL",1)~ THEN BX3Emi X3EmiAERIE2
~You know, you didn't quite answer my question before, Aerie.~ [X3Blank]
DO ~SetGlobal("X3EmiAERIE","GLOBAL",2)~
== BAERIE ~What question was that, Emily?~
== BX3Emi ~Well, it was about what you did in the circus.~
== BAERIE ~It wasn't anything grand or anything like that. Sometimes I just assisted Quayle with his act. He had such a sparkle to his eyes when he would perform. I think he loved being a figure of awe.~
== BX3Emi ~Were there any acts of archery?  I heard of this archer that fired two bows at once at targets all the way across from him, blindfolded. He traveled with an Amnian circus, I was curious if it was yours.~
== BAERIE ~No, we didn't have any members who were like that.~
== BX3Emi ~Hrm, I guess I'll have to see if I yet find this mystical archer some day.~
EXIT 

// Aerie #3
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
!Global("X3EmiHeir","GLOBAL",1) 
Global("X3EmiAERIE","GLOBAL",2)~ THEN BAERIE X3EmiAERIE3
~I just want to say, Emily, that even if you don't become an heir or anything, I think you are still a good person.~ [X3Blank]
DO ~SetGlobal("X3EmiAERIE","GLOBAL",3)~
== BX3Emi ~Really, Aerie? I feel like that sometimes being that thing is my entire destiny.~
== BAERIE ~But what if the gods want you to follow a different path? Would you do that?~
== BX3Emi ~I've never thought of that. Not that I'm not religious, it's just...you are told about one path and no other choice.~
== BAERIE ~Even if you aren't an heir, I think the gods will find something that you would be happy with. I just feel it.~
== BX3Emi ~Your optimism is quite refreshing, Aerie. I should try to practice that some more without giving myself a glare.~
EXIT 

// ANOMEN #1
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Emi")
See("ANOMEN")
Global("X3EmiANOMEN","GLOBAL",0)~ THEN BX3Emi X3EmiANOMEN1
~Anomen, you are of house Delryn, are you not?~ [X3Blank]
DO ~SetGlobal("X3EmiANOMEN","GLOBAL",1)~
== BANOMEN ~And you are of House Castilla. What of it, my lady?~
== BX3Emi ~I just recall my father meeting a group of nobles, and one of them was from House Delryn, your father if I recall. It did not go very well.~
== BANOMEN ~If he was of the group my father hosted that I was thinking of, ha! You Tethyrians are not well known for your nobility's class.~
== BX3Emi ~And here I was trying to strike up a friendly conversation about grumbling fathers about ridiculous politics, and somehow I wind up insulted. Let's drop this.~
EXIT 

// ANOMEN #2
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiANOMEN","GLOBAL",1)~ THEN BANOMEN X3EmiANOMEN2
~I have a curious question to ask of you. What does a noble woman like yourself do on this adventurous path. Especially a possible heir.~ [X3Blank]
DO ~SetGlobal("X3EmiANOMEN","GLOBAL",2)~
== BX3Emi ~Well, there is little one can do for the world while still waiting for your destiny to be decided. And being forced into the politics of the estate only made me yearn more to get away. And I wanted to meet my birth mother.~
== BANOMEN ~Your parents separated?~
== BX3Emi ~Well...she was an elf, he was a human, he had an arrangement with another human, and rather than say "No", he...let her go.~
== BANOMEN ~But that would make you a b-~
== BX3Emi ~No need to say it out loud! But yes, it would. Still, shouldn't love matter more than duty, Anomen?~
== BANOMEN ~There is no such pressure in House Delryn to choose between such. Not that I would stoop to marry any low-born myself. Your father chose wisely.~
== BX3Emi ~So you're saying my mother is low-born? See Anomen? These talks start out so well and then you somehow insult me again.~
EXIT 

// CERND #1
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
AreaType(CITY)
Global("X3EmiCERND","GLOBAL",0)~ THEN BX3Emi X3EmiCERND1
~Oh, I do love the time in the city. The markets, and the wares...and so much to buy.~ [X3Blank]
DO ~SetGlobal("X3EmiCERND","GLOBAL",1)~
== BCERND ~The bustling of people and the chants of merchants for their wares disturbs me. Where is the balance of birds and whistles of little scurrying squirrels?~
== BX3Emi ~Whistles of squirrels? You know, I guess it could be called that. You never come into the city to buy anything?~
== BCERND ~Nature provides everything that a man needs. He need not take more than what comes from the mother's womb.~
== BX3Emi ~Well, if trees had nice clothes and belts and little pretty bags to help store our things, I wouldn't mind shopping out in nature.~
== BCERND ~Your heart is at home here, Emily. But do not forget nature's place.~
== BX3Emi ~I won't. I can promise that.~
EXIT 

// CERND #2
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiCERND","GLOBAL",1)~ THEN BCERND X3EmiCERND2
~I have not met an aasimar such as yourself. The heavens and the natural world are not meant to inter-mix.~ [X3Blank]
DO ~SetGlobal("X3EmiCERND","GLOBAL",2)~
== BX3Emi ~Well, when two people are enchanted with one another, odd things like that do happen.~
== BCERND ~When a horse and a donkey come together, they produce a mule. Such an unnatural joining is not able to continue. Yours have.~
== BX3Emi ~Yeah...it's weird, isn't it? To be honest Cernd, I would not mind just being a normal human.~
== BCERND ~You are as you were made. This cannot be shifted into what you are not.~
== BX3Emi ~Right. That. Honestly, I'm not sure what we are talking about anymore.~
== BCERND ~I accept you as you are, Emily, despite my initial thoughts. That is all.~
== BX3Emi ~Thank you Cernd. I wish more had come to that conclusion as you did.~
EXIT 

// EDWIN #1
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiEDWIN","GLOBAL",0)~ THEN BEDWIN X3EmiEDWIN1
~Tell me, Aasimar, is it the concubine mother or the dull father that has your celestial lineage?~ [X3Blank]
DO ~SetGlobal("X3EmiEDWIN","GLOBAL",1)~
== BX3Emi ~Why does that matter?~
== BEDWIN ~I am curious whether the flesh of your mother was given or taken. That all it sprouted was you is a severe disappointment. All you do is squawk and squawk.~
== BX3Emi ~Oh, because, it works only one way or another. I have learned so much, Edwin.~
== BEDWIN ~It matters not. You remain inferior despite whatever special blessing you foolishly believe you have. (Yes, quite inferior.)~
== BX3Emi ~Right. Great chat. Let's not have it again.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiHAERDALIS","GLOBAL",0)~ THEN BHAERDA X3EmiHAERDALIS1
~Tell me, golden eagle. Why is it you stare when I look away? Have I offended you?~ [X3Blank]
DO ~SetGlobal("X3EmiHAERDALIS","GLOBAL",1)~
== BX3Emi ~Well, you are a tiefling, Haer'dalis. And I am an aasimar.~
== BHAERDA ~The dance of two members of opposing planes joined in the prime. A duet of the ages.~
== BX3Emi ~But I am not from the planes. You are.~
== BHAERDA ~We are from where our feet are planted. Home shifts with the nest.~
== BX3Emi ~Right. You really don't feel it? When I look at you, I feel this...I don't know, inner feeling that you should be destroyed. Even if you've done nothing. It bothers me.~
== BHAERDA ~Do you wish to murder me, golden eagle?~
== BX3Emi ~No. I wouldn't do it. But I wonder if you feel the same.~
== BHAERDA ~No, my golden eagle. No destruction. Only a bit of innocent play, if you will but join the dance.~
== BX3Emi ~You are a charmer. But I will definitely not join in such a union with you.~
EXIT 

// HAERDALIS #2 
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiHAERDALIS","GLOBAL",1)~ THEN BHAERDA X3EmiHAERDALIS2
~Your archery is a delight to watch, golden eagle. Your arrows soar like the bird's talons to its mark, giving a swift, final chord to play from the victim's heart.~ [X3Blank]
DO ~SetGlobal("X3EmiHAERDALIS","GLOBAL",2)~
== BX3Emi ~That is a strangely poetic way to describe killing someone, Haer'Dalis.~
== BHAERDA ~Death is a beautiful symphony, where soloists join in the cacophony chords of the beyond. Is there a sweeter death, than by a maiden's arrow's kiss?~
== BX3Emi ~I don't think it's much of a kiss...but I guess there are worse ways to die. Why do you call me golden eagle? I'm not...I don't see the resemblance.~
== BHAERDA ~You stand proud and regal, like many aasimar, despite your quirks. And in battle you are focused on your mark, like the great hunter and his prey, before you swoop and your arrow pierces true.~
== BX3Emi ~I am not sure if I agree, as it makes me greater than I seem. But...I like it. I like eagle.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Emi")
See("IMOEN2")
Global("X3EmiIMOEN","GLOBAL",0)~ THEN BX3Emi X3EmiIMOEN1
~Why that look, Imoen? Do I have something on my face? Gods, I hope I don't have anything on my face.~
DO ~SetGlobal("X3EmiIMOEN","GLOBAL",1)~
== IMOEN2J ~Not exactly. But I've noticed you've done something different with your hair.~ [X3Blank]
== BX3Emi ~Oh did I? I must have brushed it in reverse. I sometimes comb with the other hand. No reason really.~
== IMOEN2J ~Is that the reason? Or are you trying to impress someone? Like <CHARNAME>?~
== BX3Emi IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~Haha, we're just friends. You're a bit of a mischief. Kind of surprising for a bhaalspawn. I thought you were all grimly.~
== BX3Emi IF ~OR(2)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~Ssshh! I'm sure he can hear us. You are such a mischief. Kind of surprising for a bhaalspawn. I thought you were all grimly.~
== IMOEN2J ~Oh, <CHARNAME> already has that all reserved up. No room for me to take that role.~
== BX3Emi ~Well, I like it. But if you really want to know, let's talk over uh, here...~
EXIT 
 

// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Emi")
See("Jan")
Global("X3EmiJan","GLOBAL",0)~ THEN BX3Emi X3EmiJan1
~Jan, your...gadgets, or such? What do you call them, the flasher?~ [X3Blank]
DO ~SetGlobal("X3EmiJan","GLOBAL",1)~
== BJAN ~Ah yes, my flashers. The finest fabulous flashing firing mechanism of the Jansen Family Household. No returns after thirty days.~
== BX3Emi ~...Okay. I was just curious why you would even use that as ammunition? It looks highly unstable.~
== BJAN ~Oh they are just fine. As long as you stand a respectable distance. My Uncle Flippy had quite the fright after getting too close to one.
Smoked up his hair and singed his best britches. Now wherever he walked, he always checked twice for a bit of powder, just in case one was too close.
Once we hid a keg behind his favorite sitting place as a trick. When he saw it he turned around and bolted and screamed. It brings quite the laugh on family get-togethers.~
== BX3Emi ~Okay. That answers *everything* I was asking. I feel enlightened. Say no more.~
== BJAN ~But I didn't even get t-~
== BX3Emi ~No more no more no more!~
EXIT 

// JAHEIRA #1
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Emi")
See("JAHEIRA")
Global("X3EmiJAHEIRA","GLOBAL",0)~ THEN BX3Emi X3EmiJAHEIRA1
~I am kind of surprised you seem so at ease when we are in the cities, Jaheira. I would think a druid would not find it so comfortable.~ [X3Blank]
DO ~SetGlobal("X3EmiJAHEIRA","GLOBAL",1)~
== BJAHEIR ~I would prefer you not presume my comfort, Emily. Sometimes nature and civilization must work together in harmony, after all.~
== BX3Emi ~Er, well I wasn't presuming. I was just looking and you seem okay.~
== BJAHEIR ~Should I be anything else? We have a task to focus on, do we not? This is not the time to think of luxuries.~
== BX3Emi ~Now I feel like I am being lectured.~
== BJAHEIR ~At least you are astute. Not everyone would come around to a realization so quickly.~
EXIT 

// JAHEIRA #2
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Emi")
See("JAHEIRA")
HPLT("X3Emi",25)
Global("X3EmiJAHEIRA","GLOBAL",1)~ THEN BX3Emi X3EmiJAHEIRA2
~Honestly, you think you are at safe range to launch arrows, and then the enemy finds some ways to make your day very painful.~ [X3Blank]
DO ~SetGlobal("X3EmiJAHEIRA","GLOBAL",2)~
== BJAHEIR ~Take more care of your positioning, Emily. Were we not so quick, you may not have lived to this moment.~
== BX3Emi ~It was one mistake, Jaheira. I didn't think-~
== BJAHEIR ~There are no second chances. And sometimes we cannot bring people back. Do you understand this?~
== BX3Emi ~I do, I do. You can stop now with the lesson, please.~
== BJAHEIR ~I feel you are trying to end it so you do not have to hear truth. But I will let it slide.~
EXIT 

// KELDORN #1
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("KELDORN")
Global("X3EmiKELDORN","GLOBAL",0)~ THEN BX3Emi X3EmiKELDORN1
~Keldorn, I have a question of you. Is duty always above personal happiness?~ [X3Blank]
DO ~SetGlobal("X3EmiKELDORN","GLOBAL",1)~
== BKELDOR ~Duty is always more important than the considerations and enjoyments of oneself. Sacrifices for the greater good, young Emily.~
== BX3Emi ~And what if that personal happiness was for the greater good, and one's duties just...duties?~
== BKELDOR ~You seek to do good beyond the callings of  your station, young Emily?~
== BX3Emi ~Yes. I have for years, but only in the last several months have I truly been able to travel and help people all over. It makes me happy.~
== BKELDOR ~And these duties you speak of, what are they that you speak of?~
== BX3Emi ~Duties to my family, Keldorn. To the keep, to my home.~
== BKELDOR ~The balance between duty and goodness is not an easy one to keep, young Emily. Even young initiates to the order can struggle with this lesson. I can teach and guide you, though the answer is not always so clear as you would like.~
== BX3Emi ~Whatever you can offer, Sir Keldorn. I would like that.~
EXIT 

// KELDORN #2
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("KELDORN")
Global("X3EmiKELDORN","GLOBAL",1)~ THEN BKELDOR X3EmiKELDORN2
~You are a good woman, Emily. I would like my daughters to follow in your steps someday.~ [X3Blank]
DO ~SetGlobal("X3EmiKELDORN","GLOBAL",2)~
== BX3Emi ~Oh, I don't know if I would want anyone to follow in my steps.~
== BKELDOR ~You walk true with purpose and heart to do great good, young Emily. A proper path for any person.~
== BX3Emi ~Maybe. But I'd not want anyone to pick up a weapon to do it.~
== BKELDOR ~To kill? The lives we have taken are the dark stains. At times necessary, but not the lasting imprint of good. No, that is in your ability to maintain virtuous and uncorrupted by the ever strong pull of evil's taint.~
== BX3Emi ~Maybe I misunderstood you, then. I guess I understand what you are saying. But are you sure I am really leaving that impression?~
== BKELDOR ~Absolutely. Have faith in yourself, Emily. The praise I give is not undeserved.~
== BX3Emi ~Thank you, Keldorn. That means a lot.~
EXIT 

// KELDORN #3
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Emi")
See("KELDORN")
Global("X3EmiHeir","GLOBAL",1)
Global("X3EmiKELDORN","GLOBAL",2)~ THEN BKELDOR X3EmiKELDORN3
~I understand congratulations are in order, Emily. Heir to your family's estate. Deserved.~ [X3Blank]
DO ~SetGlobal("X3EmiKELDORN","GLOBAL",3)~
== BX3Emi ~Thanks, Keldorn. I don't think the proving is over. I'm still...a half-elf, an aasimar, and such. They won't trust me.~
== BKELDOR ~Born with the blood of celestials and a heart proven to be virtuous? You have proven yourself to many, young Emily. Keep striving forward, and continue to prove yourself again.~
== BX3Emi ~I don't know if that will matter to everyone. It could become a problem when I finally return home.~
== BKELDOR ~The gods judge character, not your form. Elf, dwarf, human, they weigh what you do above all. Remember this well.~
== BX3Emi ~I hope others see it that way, Keldorn. But I'm glad that at least you do.~
EXIT

// Korgan #1
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Emi")
See("Korgan")
Global("X3EmiKorgan","GLOBAL",0)~ THEN BX3Emi X3EmiKorgan1
~Oh gods, the stench. Korgan please don't stand near me.~ [X3Blank]
DO ~SetGlobal("X3EmiKorgan","GLOBAL",1)~
== BKORGAN ~We be adventuring, Emily. Blood, soot, and filth. Go back to yer little keep if ye want clean hands.~
== BX3Emi ~Just take a bath.~
EXIT 

// Mazzy#1
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Emi")
See("Mazzy")
Global("X3EmiMazzy","GLOBAL",0)~ THEN BX3Emi X3EmiMazzy1
~Mazzy, I am curious about something, but I don't know how to ask you without coming off rude or mean or snobbish noble from Tethyr. Gods, I hope I don't come off as a snobbish noble from Tethyr.~ [X3Blank]
DO ~SetGlobal("X3EmiMazzy","GLOBAL",1)~
== BMAZZY ~What is your question, Emily? If I am offended I will let you know.~
== BX3Emi ~Right. That makes me feel better. Maybe. Okay. Well...does...being small make it more difficult to fight?~
== BMAZZY ~There are disadvantages. But perhaps the most difficult thing is perhaps how people treat me. They see it as comical, or weak, or worst of all, *cute*.~
== BX3Emi ~Well it is definitely cute! I mean...that wasn't the right thing to say. You can hit me now.~
== BMAZZY ~I am not going to hit you, Emily. But I would rather you not say that.~
== BX3Emi ~Then I will try to treat you as an equal, Mazzy. I think you deserve that. An adorable equal.~
== BMAZZY ~I don't know if you are being silly or insulting, but I will be forgiving.~
EXIT 
//Mazzy#2
CHAIN 
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Emi")
See("Mazzy")
Global("X3EmiMazzy","GLOBAL",1)~ THEN BX3Emi X3EmiMazzy2
~I know I was being a little foolish before with how I spoke about you, Mazzy, but I've been thinking, and are you sure you aren't an aasimar?~ [X3Blank]
DO ~SetGlobal("X3EmiMazzy","GLOBAL",2)~
== BMAZZY ~An aasimar? What brings up this turn?~
== BX3Emi ~It is just...you act as my bloodline is expected. Noble. Brave. Good. Pious. Uncorruptible. And honestly...I do not think I am any of those things.~
== BMAZZY ~I thought you were silly at first, but you have shown to me that you are many of those things you name of myself. Certainly noble and brave, but also true and pure of heart, even a little light-hearted, something our group needs.~
== BX3Emi ~You are really making your aasimar case even more compelling. Hrm. Maybe we could even be sisters.~
== BMAZZY ~Emily?~
== BX3Emi ~Yes?~
== BMAZZY ~I am honored to be your comrade in arms. But we are not sisters.~
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Emi")
See("MINSC")
Global("X3EmiMINSC","GLOBAL",0)~ THEN BX3Emi X3EmiMINSC1
~MINSC, are you okay? Sometimes, I really worry you have taken too many hits in the head.~ [X3Blank]
DO ~SetGlobal("X3EmiMINSC","GLOBAL",1)~
== BMINSC ~Minsc is fine, and raring to go. Boo is too.~
== BX3Emi ~Okay, I might have it wrong. Maybe Boo has taken too many hits in the head.~
== BMINSC ~Minsc thinks this is not right either. Boo has a soft head, so must fight all the harder to keep it safe.~
== BX3Emi ~Well, there's only one thing it can be. I hit my head.~
== BMINSC ~Ah, then you will be carved with the scars of battle. A worthy mark for a worthy warrior!~
== BX3Emi ~Right! Exactly. Gods, I hope I don't actually have facial scars!~
EXIT 
//Minsc#2
CHAIN 
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
HPLT("X3Emi",25)
Global("X3EmiMINSC","GLOBAL",1)~ THEN BMINSC X3EmiMINSC2
~The Archer! Our archer is wounded! Minsc will not let you fall!~ [X3Blank]
DO ~SetGlobal("X3EmiMINSC","GLOBAL",2)~
== BX3Emi ~I-I'll be fine, Minsc. Did you know that wounds *really* hurt though? I've relearned that lesson. Gngh!~
== BMINSC ~Minsc will let no one else hurt you! Evil will stay away, or meet my fist!~
EXIT 

//Nalia #1
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Emi")
See("Nalia")
Global("X3EmiNalia","GLOBAL",0)~ THEN BX3Emi X3EmiNalia2
~Oh, how I can't wait to get a bit of rest. Maybe stop by a few shops to browse some new clothes to wear under all this armor.~ [X3Blank]
DO ~SetGlobal("X3EmiNalia","GLOBAL",1)~
== BNALIA ~Emily, how can you be so concerned about what you are wearing when there are people starving?~
== BX3Emi ~One can shoot two birds with one arrow, so to speak.~
== BNALIA ~So you're going to find a beggar or two and give a few paltry coins to make yourself feel better?~
== BX3Emi ~Look, I'm not after the greatest silks from Calimshan or the finest vestments from Cormyr. There are all sorts of merchants who are struggling but making wonderful products. A few coins in their hands help both of us. I can't help all the poor Nalia. But I can be discreet in who I give my business.~
== BNALIA ~I...I am sorry for judging you so quickly, Emily. For a second, I thought you were not the person I thought you were.~
== BX3Emi ~Well, I am a person that likes good clothing. As long as we are mindful and caring, we need not feel guilty of pursuing a little bit of happiness.~
EXIT 

// Nalia#2 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Emi")
See("Nalia")
Global("X3EmiNalia","GLOBAL",1)~ THEN BX3Emi X3EmiNalia2
~You don't have siblings, do you Nalia?~ [X3Blank]
DO ~SetGlobal("X3EmiNalia","GLOBAL",2)~
== BNALIA ~I am an only child, Emily.~
== BX3Emi ~Sometimes I wish that was the case. It would make things a lot easier. None of this infighting of who gets to do what.~
== BNALIA ~It all sounds rather petty. There are so many other concerns and families just argue over who gets to rule.~
== BX3Emi ~It is important in a way. I am sure there are people you would not want ruling over your lands.~
== BNALIA ~You have a point. If Isaea Roenall ever took the De'Arnise lands I would be extremely displeased.~
== BX3Emi ~Exactly. Our parent's generation may be set in their ways, but not everything they do is so horrible. They've fought so we could have a good life. And now we can choose to step further, as will our own descendants.~
== BNALIA ~Each line improving the world one generation at a time.~
== BX3Emi ~Hopefully, at least. You know how the previous generation is always also saying we're messing things up. They may end up being right if we aren't careful.~
EXIT 

// Nalia#3 
CHAIN 
IF ~IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("X3Emi")
See("Nalia")
Global("X3EmiNalia","GLOBAL",2)~ THEN BNALIA X3EmiNalia3
~There has been something I have been meaning to ask you, Emily. What brought you into the life of adventure.~ [X3Blank]
DO ~SetGlobal("X3EmiNalia","GLOBAL",3)~
== BX3Emi ~Well, I think the core of it was just to meet my birth mother. But I keep to the road because there is so much to see and learn, and adventuring can bring that knowledge and the joy of making a difference.~
== BNALIA ~You really think we are making a difference?~
== BX3Emi ~Well I hope so! I am not traveling to just enjoy a vacation.~
== BNALIA ~It is just wherever we go, we still see poor. We still see suffering. We still see oppression.~
== BX3Emi ~I think that will take a very long time to do anything about, Nalia. But I honestly feel that it can only get better. It must.~
== BNALIA ~Your words make me a little more hopeful of things, Emily. I will have more faith.~
EXIT 

//Neera #1
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Emi")
See("Neera")
Global("X3EmiNeera","GLOBAL",0)~ THEN BX3Emi X3EmiNeera2
~Maybe this is just me, but did you ever have to hide your features growing up Neera? I know some people might take one side of your half-elf or the other poorly.~ [X3Blank]
DO ~SetGlobal("X3EmiNeera","GLOBAL",1)~
== BNEERA ~No, not really. If anything it was just being a wild mage that caught me attention I didn't want.~
== BX3Emi ~Right. Making things happen on innocent accidents must do that.~
== BNEERA ~The Red Wizards didn't seem to mind. It only made them more keen.~
== BX3Emi ~Really? Honestly I wonder why you can even use it. What makes it worth it?~
== BNEERA ~The mystery just makes it that much more wonderful. It makes magic really magical, not fully knowing if things will go as you planned. That is the feeling of magic I always want to know.~
== BX3Emi ~Hrm, you know, that's a rather thoughtful answer. I might have to reconsider magic entirely now.~
EXIT 

// Neera#2 
CHAIN 
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Emi")
See("Neera")
Global("X3EmiNeera","GLOBAL",1)~ THEN BX3Emi X3EmiNeera2
~Neera, Neera!~ [X3Blank]
DO ~SetGlobal("X3EmiNeera","GLOBAL",2)~
== BNEERA ~Emily, Emily!~
== BX3Emi ~I fletch arrows. With a bit of magic. You are a wild mage...what if...you and I worked together?~
== BNEERA ~That could be fun. What sort of idea do you have for your arrows? They could be pink, or turn into a ball of flame, or maybe have an arrowhead on each side.~
== BX3Emi ~An arrowhead on each side? Wait, why would I do that?~
== BNEERA ~It wouldn't happen on purpose. It would be one of the happy accidents.~
== BX3Emi ~Oh right. You know, that has to be useful, somehow.~
== BNEERA ~Really? Double Arrowheads would be useful?~
== BX3Emi ~Nope. This is a dumb idea. Especially if my entire supplies just vanished. That could happen right?~
== BNEERA ~Well, they could also double. It is wild magic. Anything can happen.~
== BX3Emi ~Hrm. Now I'm in circles and more undecided. Hold that thought. We'll return to this later.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaad","GLOBAL",0)~ THEN BX3Emi X3EmiRasaad1
~You seem so grim, Rasaad. For a Sunsoul monk, I expected you to be...sunnier?~ [X3Blank]
DO ~SetGlobal("X3EmiRasaad","GLOBAL",1)~
== BRASAAD ~Revenge clouds my mind, Emily. It has for some time.~
== BX3Emi ~I wish I could understand how that feels. I'm sorry. I don't know if that helps or means anything.~
== BRASAAD ~It is not your fault. You are not the source of my rage.~
== BX3Emi ~If you ever want to talk, I'm here, you know.~
== BRASAAD ~I do. I do know.~
EXIT 

// Rasaad#2 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaad","GLOBAL",1)~ THEN BX3Emi X3EmiRasaad2
~In all of my life, I didn't really come across any monks until I started traveling. All these different orders and philosophies, it's so interesting.~ [X3Blank]
DO ~SetGlobal("X3EmiRasaad","GLOBAL",2)~
== BRASAAD ~There are no monk orders where you come from?~
== BX3Emi ~Oh I am sure there are. It's just...well, they tend to be reclusive.~
== BRASAAD ~Many are away from societies, yes. Monasteries in high mountains or in forest clearings. Peaceful sanctuaries where silent contemplation can be free.~
== BX3Emi ~Were there many women monks?~
== BRASAAD ~There are women who are monks, yes. Perhaps not as many as the men.~
== BX3Emi ~It's just...well, in solitary, with other handsome men...I'd find that quite tempting.~
== BRASAAD ~We learned to resist such base desires. We were all there for understanding and thinking.~
== BX3Emi ~Well...I probably would definitely not have been a good monk, then.~
EXIT 

// Rasaad#3
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
Global("X3EmiRasaad","GLOBAL",2)~ THEN BX3Emi X3EmiRasaad3
~You loved your brother. I kind of wish Thomas and I had a relationship like yours.~ [X3Blank]
DO ~SetGlobal("X3EmiRasaad","GLOBAL",3)~
== BRASAAD ~You do not get along, I understand.~
== BX3Emi ~Oh, not one bit. It's kind of depressing sometimes. And yet when you see them in person, you get the anger rather than the sorrow.~
== BRASAAD ~It was not always harmony with my brother, either. We had our disputes...though...~
== BX3Emi ~Rasaad. It's okay. You can talk to me. I want to listen.~
== BRASAAD ~I know. You would have gotten along well with him, Emily. I am sorry I do not have the words to form to help yourself.~
== BX3Emi ~Oh that's fine. There may be little hope for Thomas and I but...I think we can find your brother justice, at least.~
EXIT 

// Rasaad#4
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Emi")
See("RASAAD")
OR(2)
Global("X3EmiRomanceActive","GLOBAL",0)
Global("X3EmiRomanceActive","GLOBAL",3)
OR(2)
Global("RasaadRomanceActive","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",3)
Global("X3EmiRasaad","GLOBAL",3)~ THEN BX3Emi X3EmiRasaad4
~I've been thinking on how to say this Rasaad...you are so distant. I just wish I could pull you close and say everything will be all right.~ [X3Blank]
DO ~SetGlobal("X3EmiRasaad","GLOBAL",4)~
== BRASAAD ~It has not. And it will not until my brother is avenged.~
== BX3Emi ~Oh I am sure there are. It's just...well, they tend to be reclusive.~
== BRASAAD ~I have been reflecting on your actions. I know what you are trying to say, Emily. I cannot give you what you seek.~
== BX3Emi ~Oh you...you know, then?~
== BRASAAD ~Vengeance clouds my heart. I cannot...I cannot burden it upon you.~
== BX3Emi ~I'm not sure if you understand. But maybe you do. I suppose then...it is unrequited. I'll...just leave you alone now.~
EXIT 



// Valygar #1
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
Global("X3EmiValygar","GLOBAL",0)~ THEN BX3Emi X3EmiValygar1
~You don't talk much, do you Valygar?~ 
DO ~SetGlobal("X3EmiValygar","GLOBAL",1)~
== BVALYGA ~My thoughts are for myself, Emily. I prefer it that way.~
== BX3Emi ~But shouldn't you get to know your companions? A little bit of chatting can go a long way for comradery.~
== BVALYGA ~Mmm.~
== BX3Emi ~Come on, we have to have something to talk about. We both have skill with the bow. Or...~
== BVALYGA ~I appreciate your intentions, Emily. But I would rather not right now.~
== BX3Emi ~Well, I see you are going to be a tough one to crack open their shell. Let's let the pot stir a bit and revisit it later.~
== BVALYGA ~As if I have a choice.~
== BX3Emi ~Nope. No choice at all, ha ha.~
EXIT 


// Valygar #2
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
Global("X3EmiValygar","GLOBAL",1)~ THEN BX3Emi X3EmiValygar2
~Do you have any brothers or sisters, Valygar?~ 
DO ~SetGlobal("X3EmiValygar","GLOBAL",2)~
== BVALYGA ~I am the last of my line, Emily. *Sigh*. Is this the "chatting" you are desiring.~
== BX3Emi ~I have a brother myself and...I can't say you are missing out at all.~
== BVALYGA ~A dispute, I understand. Be what your family asks of you, and you will do fine, Emily.~
== BX3Emi ~I want to help other people too, Valygar. There's only so much one can do in a keep.~
== BVALYGA ~There are the same evils here as there are in your home, is there not? One day a threat may come, and you may regret not being there.~
== BX3Emi ~I...well, you have a point there, Valygar. Thanks for your words.~
== BVALYGA ~As I said, I had no choice. You would have pressed me for hours had I not.~
== BX3Emi ~You know me so well!~
EXIT 


// Valygar #3
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Emi")
See("Valygar")
!Class("X3Emi",RANGER_ALL)
Global("X3EmiValygar","GLOBAL",2)~ THEN BX3Emi X3EmiValygar1
~Valygar, you know I use magic, don't you? Does it bother you?~ 
DO ~SetGlobal("X3EmiValygar","GLOBAL",3)~
== BVALYGA ~Why? Why must you, an aasimar of all people, use the art? There is no good in it.~
== BX3Emi ~It's a tool, Valygar. Like a sword. A warrior can murder, a cook can poison, and a really bad brother can drive you crazy.~
== BVALYGA ~You do not seem a traditional mage, Emily. That gives me a relief. But I worry all the same. Magic is very corrupting.~
== BX3Emi ~Well, I rest easy knowing if it goes horribly wrong, you will probably be the first person to kill me.~
== BVALYGA ~If that indeed happened, I would.~
== BX3Emi ~Em, I was hoping you would say "That would never happen". Now you've made me a little terrified.~
EXIT 

// Viconia #1
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Emi")
See("Viconia")
Global("X3EmiViconia","GLOBAL",0)~ THEN BX3Emi X3EmiViconia1
~I can relate to you, Viconia. All my life I had to hide some facet of myself. And everywhere you go, you have to do the same or people get frightened.~ 
DO ~SetGlobal("X3EmiViconia","GLOBAL",1)~
== BVICONI ~There is nothing to compare, half-elf. At worst, yours will erupt some small inconvenience or scandal from what I understand. I would be murdered.~
== BX3Emi ~Well, yes. Yours would take a more extreme reaction, but-~
== BVICONI ~What is the point of your words? Are you trying to express sympathy? I do not need it.~
== BX3Emi ~I was just trying to be a friend.~
== BVICONI ~We do not have a word for that. There are no true friends.~
== BX3Emi ~It doesn't mean you can't start. If we're going to travel together, we may as well get close.~
== BVICONI ~Seek your companionship elsewhere. I am not interested in your soft, weak, excitable drivel.~
== BX3Emi ~Well, and I thought those were my best traits. Well, have it your way.~
EXIT 

// Yoshimo #1
CHAIN
IF ~IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiYoshimo","GLOBAL",0)~ THEN BYOSHIM X3EmiYoshimo1
~Emily, is it? You have spoken to me little since we have joined company. Is there something that I have done to offend you? I swear I have meant it not.~ 
DO ~SetGlobal("X3EmiYoshimo","GLOBAL",1)~
== BX3Emi ~Well, I am not sure how to put it nicely, but...~
== BYOSHIM ~Lay it on me. I merely wish to know how we can mend the bridge.~
== BX3Emi ~Okay. Yoshimo, you are a rogue. A thief. A scoundrel. You are friendly but you are also...not quite trustable.~
== BYOSHIM ~Ah, weariness of Yoshimo, is it? Come now, I have never stolen or put you in harm. You can have faith in me.~
== BX3Emi ~See, on one hand that is comforting. On the other, it is somehow not. I suppose though, I ought to give you a chance.~
== BYOSHIM ~Good! We have put both feet forward, so to speak. Perhaps we can start with you telling me a little bit about that lovely necklace around your neck.~
== BX3Emi ~It was given to me by my mother. Wait...Isn't this exactly the first question a thief might ask after such a disarming statement?~
== BYOSHIM ~You are a clever lady, Emily. But I speak truthfully, never would I steal it.~
== BX3Emi ~I can't quite figure you out Yoshimo. But just in case, I might have to learn how to sleep with one eye open.~
EXIT 

// Skitia Companions
//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
!GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("X3EmiX3Reb1","LOCALS",0)~ THEN BX3Emi X3EmiX3Reb1
~You know, it's kind of grand we're back together so soon, Recorder. I thought for sure we would go our separate ways.~
DO ~SetGlobal("X3EmiX3Reb1","LOCALS",1)~
== BX3Reb ~I am glad that circumstance have brought us back together. But are you a little worried that you'll get behind in your bid for house heir?~
== BX3Emi ~Don't worry about it. I know I can find a way to balance it.~
== BX3Reb ~Are you sure, Emily? You are very far from home. I'm happy for everything you have done, I just do not want it to be at a sacrifice you wouldn't be happy with.~
== BX3Emi ~Your concern is touching. But if there's a will, there is a path as they say.~
== BX3Reb ~Erm. That isn't...quite the phrase. But if you are sure, I will drop it.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
GlobalGT("X3RebTalk","LOCALS",10)
Global("X3EmiX3Reb2","LOCALS",0)~ THEN BX3Emi X3EmiX3Reb2A
~Recorder, I hope this doesn't sound like I am angry at you when I say this but, why did you never tell me about your past?~
DO ~SetGlobal("X3EmiX3Reb2","LOCALS",1)~
== BX3Reb ~I didn't want you to look at me differently, Emily, or treat me differently. I enjoyed our friendship. I don't want the dynamics of it to change.~
== BX3Emi ~It wouldn't have changed anything, Recorder. Honestly, I think it would have made me look at you with even more respect, or maybe even want to help you.~
== BX3Reb ~It isn't a help that I wanted. For so long, Emily, I have been trying to forget, not remember. I know it hurts to not feel trusted, but I didn't mean to do that.~
== BX3Emi ~Okay. I just wish I could help in some way, Recorder.~
== BX3Reb ~It's in the past now. Just...just let it rest, please.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3RFAIL","GLOBAL",2)
Global("X3EmiX3Reb2","LOCALS",1)~ THEN BX3Emi X3EmiX3Reb2B
~How...how do you feel, Recorder? After what happened with your son.~
DO ~SetGlobal("X3EmiX3Reb2","LOCALS",2)~
== BX3Reb ~Bitter. Self-loathing. I can barely find reason to sleep.~
== BX3Emi ~We can find him. We can keep looking. He's got to be out there.~
== BX3Reb ~That was my second chance, Emily. There will never be a third.~
== BX3Emi ~Don't say that! We can try again.~
== BX3Reb ~If there's ever a whiff of information on him...I will. But I know better than to hope for the impossible again.~
== BX3Emi ~Is there anything at all I can do? Just tell me. I hate to say you like this.~
== BX3Reb ~Just...just keep being you, Emily. It's touching, even if I don't show it.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3Reb3","LOCALS",0)~ THEN BX3Emi X3EmiX3Reb3A
~Recorder. I think I'd like a pet I could bring around.~
DO ~SetGlobal("X3EmiX3Reb3","LOCALS",1)~
== BMINSC IF ~IsValidForPartyDialogue("Minsc")~ THEN ~A hamster, yes?~
== BX3Emi IF ~IsValidForPartyDialogue("Minsc")~ THEN ~No, not a hamster, Minsc. Something else!~
== BX3Reb ~The road isn't safe for any pets. I know I have Gustav and that's a little hypocritical to say, but you should keep that in mind.~
== BX3Emi ~I could still keep it safe. Hrm, but what if it could also protect itself?~
== BX3Reb ~Like a wolf, or a bear?~
== BX3Emi ~Uh no. Bears are terrifying. Especially when they are on two legs. Eugh. And A wolf is a bit wild...how about a dog?~
== BX3Reb ~Well if you trained a dog really well, wild or already domesticated, I could see that working out.~
== BX3Emi ~Maybe we can find one in the local markets. Hrm, their isn't a chance they'd run away, is there?~
== BX3Reb ~Well, Gustav runs away, but he's trained enough to scurry back. I'm sure a dog could learn the same after several months.~
== BX3Emi ~Several months, hmm? I guess that's too long to make this a reasonable thing to think about. Never mind then.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Reb")
Global("X3EmiX3Reb3","LOCALS",1)~ THEN BX3Emi X3EmiX3Reb3B
~Why don't you sing more, Recorder? You are always playing your flute. But your voice is amazing.~
DO ~SetGlobal("X3EmiX3Reb3","LOCALS",2)~
== BX3Reb ~I think the flute is a little less intrusive if someone didn't want to listen.~
== BX3Emi ~Listen? Recorder, you are a bard. Your entire career is about throwing out your songs despite any lack of agreement to your receptiveness.~
== BX3Reb ~Um, Emily? That usually gets rotten fruit thrown at you.~
== BX3Emi ~Okay, so maybe only part of your career.~
== BX3Reb ~If you...really want me to sing, I wouldn't mind doing that for you.~
== BX3Emi ~Ooh, yes. And we could sing as a duet. It will be such fun!~
== BX3Reb ~Oh dear. I think I am going to regret this...why do I like you so much?~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiRomanceActive","GLOBAL",2)
Global("X3EmiX3Reb4","LOCALS",0)~ THEN BX3Reb X3EmiX3Reb4A
~It's nice to see you so happy, Emily.~
DO ~SetGlobal("X3EmiX3Reb4","LOCALS",1)~
== BX3Emi ~What? I'm always happy. See, all smiles.~
== BX3Reb ~Um, I mean more so than usual. I think your closeness with <CHARNAME> has brought out something special.~
== BX3Emi ~Well, I will admit that he makes me feel safe and a little gleeful at times.~
== BX3Reb ~He probably sees what I see. Your beauty, inside and outside, the symmetry of your face and soft eyes...~
== BX3Emi ~Recorder? Why are you looking at me like that?~
== BX3Reb ~Oh uh...*blush* Sorry. I guess it doesn't mean anything now but, I was a little smitten with you before you got with <CHARNAME>.~
== BX3Emi ~I...don't know how to process that. I mean there's nothing wrong with it. And I'm flattered a little? But I also just don't know how to process that.~
== BX3Reb ~I'm sorry. I shouldn't have said that.~
== BX3Emi ~It's...a little awkward. But hey, we're best friends. We shouldn't keep secrets like that from each other.~
== BX3Reb ~Sometimes it's better to not say anything at all, Emily. Even to friends.~
== BX3Emi ~Hrm. I guess if you want that privacy, I understand. I'll respect it.~
EXIT 

// Helga 
CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3EmiX3Hel1","LOCALS",0)~ THEN BX3Emi X3EmiX3Hel1A
~How is your leg, Helga? I understand it has been giving you a bit of pain.~
DO ~SetGlobal("X3EmiX3Hel1","LOCALS",1)~
== BX3Hel ~Nay worse than giving birth. And I did that bloody twice. Thought it was less painful the second time. Lies, all of it.~
== BX3Emi ~So...I'm going to go off on a limb and say that it feels better. Oooh. Limb. Haha. That's kind of funny.~
== BX3Hel ~Ye got any more stupid jokes, girl?~
== BX3Emi ~Now that you mention it...I could probably think of a couple.~
== BX3Hel ~Drop it while yer ahead, lass.  My leg be fine, unless ye want to keep at it and kill it with yer atrocious humor.~
== BX3Emi ~Hrm, if my jokes are that powerful, I'll have to really reign in my ability. Just watch out, Helga. You never know when it will come.~
EXIT 


CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
!GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("X3EmiX3Hel2","LOCALS",0)~ THEN BX3Hel X3EmiX3Hel2
~So what's the point of all of this deliberation? Of who gets to be leader of yer house?~
DO ~SetGlobal("X3EmiX3Hel2","LOCALS",1)~
== BX3Emi ~Oh, you know. Complex human noble affairs that go above everyone else's head, apparently.~
== BX3Hel ~Hrmph. It would be simpler to put you both in a ring and have you fight to the death.~
== BX3Emi ~Gods, I hope that doesn't happen. Could it? Gods, please don't happen.~
== BX3Hel ~Ye best learn to fight with a melee weapon, just in case.~
== BX3Emi ~You are totally having me on, Helga. Nope. We'll just talk it out, sit in a large room, and argue about it for hours until one side gets tired of it and picks someone.~
== BX3Hel ~If that's how things will get run under ye, lass, ye'll be an awful leader.~
== BX3Emi ~If you took me seriously, maybe. Er, maybe I will be at first anyway. I hope I can do this.~
== BX3Hel ~I nay care one way or another. Just do yer best. Ye fight well enough, I'm sure ye can figure out the rest.~
EXIT 


CHAIN 
IF ~IsValidForPartyDialogue("X3Hel")
IsValidForPartyDialogue("X3Emi")
See("X3Hel")
Global("X3EmiX3Hel1","LOCALS",1)~ THEN BX3Emi X3EmiX3Hel1B
~Are you sure that leg of yours is getting any better, Helga? You look in such pain when we lay down and rest.~
DO ~SetGlobal("X3EmiX3Hel1","LOCALS",2)~
== BX3Hel ~And nay because of the long hours and battles, girl? That is yer conclusion.~
== BX3Emi ~I just want to make sure you are all right.~
== BX3Hel ~And what if I said if I wasn't? Do ye think I want yer coddling or advice about slowing down?~
== BX3Emi ~Well...hey! I'm just trying to be kind. Why are you so defensive about this?~
== BX3Hel ~Just leave me be, girl. The day I let pain command what I do or do not, is the day I'll start listening to yer damn mouth.~
== BX3Emi ~You know? You're quite rude, Helga. I'll just stop trying.~
== BX3Hel ~Ye do that. Had enough coddlers in my last group, don't need more of that.~
EXIT 

//Kale 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
!Global("X3KalRomanceActive","GLOBAL",2)
Global("X3EmiX3Kal1","LOCALS",0)~ THEN BX3Emi X3EmiX3Kal1
~Is it true what they say about halflings Kale? That you're always hungry, merry, or stealing something.~
DO ~SetGlobal("X3EmiX3Kal1","LOCALS",1)~
== BX3Kal ~Hey mate, that's a bit of a generalization there now.~
== BX3Emi ~Sorry, Catherine was insisting that was true. I'm not sure where she gets her ideas from.~
== BX3Kal ~Heh. Well, it's all true. I'm always damn hungry. But stealing, nah. I wouldn't rob a fly.~
== BX3Emi ~Right. Because flies have things of interest to rob.~
== BX3Kal ~Though I have robbed a few maidens from their gentlemen, so to speak. Speaking of, this Catherine, she spoken for?~
== BX3Emi ~What does that have to do with anything?~
== BX3Kal ~Never mind. Doesn't matter, doesn't matter at all.~
== BX3Emi ~Right. Warn Catherine about crazy halfling man on next meeting.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiX3Kal2","LOCALS",0)~ THEN BX3Emi X3EmiX3Kal2
~Did you know your father well, Kale, while he lived?~
DO ~SetGlobal("X3EmiX3Kal2","LOCALS",1)~
== BX3Kal ~Nah. Knew all I ever needed, really.~
== BX3Emi ~I see. I guess you didn't like him.~
== BX3Kal ~He left my mother high and dry to take care of two kids by herself. I hated him for years.~
== BX3Emi ~You aren't grieving at all? I didn't meet my birth mother for years. In your place I would be terribly sad.~
== BX3Kal ~Well that's you, Ems. I don't think or feel that way. Let's move on, shall we?~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Emi")
See("X3Kal")
Global("X3EmiX3Kal2","LOCALS",1)~ THEN BX3Emi X3EmiX3Kal3
~So I understand Kale, that you made your own cloak.~
DO ~SetGlobal("X3EmiX3Kal2","LOCALS",2)~
== BX3Kal ~Heh. Sure did. Most luxurious piece of garment this side of the Sword Coast, and you can tell every merchant and trader that you see.~
== BX3Emi ~Well, could you make me one?~
== BX3Kal ~Nah...all that sewing makes me feel less masculine, so I stopped that when I joined up with Helga's crew a while back.~
== BX3Emi ~There's nothing not masculine about tailoring.~
== BX3Kal ~You say that to a lady in an inn you are trying to impress. Let me tell you, Kale did not get his loins going that night.~
== BX3Emi ~Right. Honestly, I think she dodged an arrow there.~
== BX3Kal ~Nah. I ended up shacking with Gast. Both drunk out of our minds, heh. Would have invited her, she missed some memorable fun.~
== BX3Emi ~I...really did not need to know that.~
== BX3Kal ~You conservative noble types are so wound up. You ought to get that sweet release. I can suggest a few activities to help.~
== BX3Emi ~I can't hear you! Lalalala!~
EXIT 

//Vienxay 
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
Global("X3EmiX3Vie1","LOCALS",0)~ THEN BX3Emi X3EmiX3Vie1
~You know, I am a bit curious about something. The details regarding your incident in the Adventurer's Mart.~
DO ~SetGlobal("X3EmiX3Vie1","LOCALS",1)~
== BX3Vie ~And I am completely uninterested in whatever you are interested in, mutt.~
== BX3Emi ~Come on, Vienxay. Do we have to go to dog terms.~
== BX3Vie ~If you have to ask that question, your intelligence is certainly befitting of a label of one.~
== BX3Emi ~Wow, okay. I can completely see how you would get in trouble with the law by your mere personality.~
== BX3Vie ~I can show you more then that if you do not shut up. Bother somebody else if you must. I have no time for your worthless inquiries.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Vie")
Global("X3EmiX3Vie1","LOCALS",1)~ THEN BX3Emi X3EmiX3Vie2
~Vienxay, you've been wearing the same clothes for a while now. Why not buy something. There are so many lovely stores in Althkata.~
DO ~SetGlobal("X3EmiX3Vie1","LOCALS",2)~
== BX3Vie ~This is from Evermeet. The only article of clothing I came to this land with. The last reminder of what quality attire even is. Why would I lower myself to get anything else?~
== BX3Emi ~I am sure there are elven tailors, if we look around. Perhaps even from your island.~
== BX3Vie ~I highly doubt that. Althkata is a disgrace. My people would be appalled at the lack of nature.~
== BX3Emi ~You aren't very optimistic, are you?~
== BX3Vie ~Idealism gets you nowhere. Besides, I have already done my touring of clothiers and shopkeepers. I need not your advice.~
== BX3Emi ~Well...all right. Though are you *sure* you wouldn't want something else? I think you would love some Calimshan Silks.~
== BX3Vie ~I would love for you to stop pestering me, but we do not always get what we want.~
== BX3Emi ~Okay then. I guess that's a no, then.~
== BX3Vie ~You finally get it. You're not as simple as you look after all.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiRomanceActive","GLOBAL",1)
Global("X3VieRomanceActive","GLOBAL",1)
Global("X3EmiX3Vie2","LOCALS",0)~ THEN BX3Vie X3EmiX3Vie3
~Do you not know the meaning of "mine", Emily?~
DO ~SetGlobal("X3EmiX3Vie2","LOCALS",1)~
== BX3Emi ~Me? I don't think I took anything of yours, Vienxay.~
== BX3Vie ~You know very well who I am talking about.~
== BX3Emi ~I definitely didn't take a person from you. Actually now I'm concerned. Why do you have a person?~
== BX3Vie ~Ugh, you truly are a mutt. I mean *him*.~
== BX3Emi ~I...I don't know what you mean. What are you implying? You must be confused.~
== BX3Vie ~I am hardly confused. But take this warning well: Stay away. You will only find yourself broken with all of your drooling for naught.~
== BX3Emi ~Oookay. Someone is insecure.~
== BX3Vie ~Heed my words, or you will regret it.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Emi")
See("X3Emi")
Global("X3EmiRomanceActive","GLOBAL",2)
Global("X3EmiX3Vie2","LOCALS",1)~ THEN BX3Vie X3EmiX3Vie4
~Well done. You have achieved <CHARNAME>'s affections. But how disappointed he will become.~
DO ~SetGlobal("X3EmiX3Vie2","LOCALS",2)~
== BX3Emi ~What is your problem, Vienxay? Can't you be happy for anyone else?~
== BX3Vie ~Please. You offer him nothing. No experience, nothing but simplicity he'll soon grow bored with. You are a coin a dozen.~
== BX3Emi ~You are the most hateful, spiteful witch I have ever had the displeasure of meeting, Vienxay. No wonder why you are loathed, and no wonder why your own people banished you! You are entirely self-centered and self-absorbed. You think you are perfect.~
== BX3Vie ~And there it is. The little mutt's bark. So you do have your limits.~
== BX3Emi ~This discussion is over.~
== BX3Vie ~We'll see. I am sure in time you will be weeping in a broken heart.~
== BX3Emi ~I said it is over. Leave it or I will force it to end.~
== BX3Vie ~You have no bite, Emily. But you may have your wish.~
EXIT 