// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Vie")
See("AERIE")
Global("X3VieAERIEToB","GLOBAL",0)~ THEN BX3Vie25 X3VieAERIE1
~I do not quite understand one thing about you, Aerie. It has me horribly bothered and puzzled.~ [X3Blank]
DO ~SetGlobal("X3VieAERIEToB","GLOBAL",1)~
== BAERIE25 ~What is it? I haven't offended you, have I Vienxay?~
== BX3Vie25 ~Your insistence on being this high priestess of a gnome god does bother me. Is there something wrong with our own people's Father? Of the Seldarine?~
== BAERIE25 ~It isn't like that, Vienxay. But I feel as if Baervan has been there, when there wasn't anyone else. He sent Quayle, to me, and he saved my life. But I still do care for the other Seldarine.~
== BX3Vie25 ~A debt then? I suppose I can accept that. I will admit that..your path is your path and I should not berate you for it. Forget I brought it up at all.~
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Vie")
See("ANOMEN")
Global("X3VieANOMENToB","GLOBAL",0)~ THEN BX3Vie25 X3VieANOMEN1
~This chaos would never happen in Evermeet. All of this death and destruction. Humans are as ever, hopeless.~ [X3Blank]
DO ~SetGlobal("X3VieANOMENToB","GLOBAL",1)~
== BANOME25 ~Talking like you are so great again, Vienxay? If it weren't for the Order, many of these so called threats you dismiss as laughable would be at your doorstep.~
== BX3Vie25 ~Oh, such blind bragging. If Evermeet was not watching the seas, what horrible fates would be at your harbors? We could very well live without the Order, and perhaps be better for it.~
== BANOME25 ~And yet where is Evermeet now? Nowhere. But they seemed to have enough sense to be rid of your nonsense.~
== BX3Vie25 ~Predictable. Stooping so low. If you have no other insult to use, I believe we're done here.~
EXIT 

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BX3Vie25 X3EmiCERND1
~Of all the humans I have met...you are the only one I can say I actually like, Cernd.~ [X3Blank]
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BCERND25 ~And you are no bad apple, Vienxay. When you let down your thorns and show your inner rose, you are resplendent and lovely.~
== BX3Vie25 ~That is probably the kindest thing I have heard from an outsider. I will remember you well when this is over.~
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieDornToB","GLOBAL",0)~ THEN BDORN25 X3VieDorn1
~That such an annoying elf brat as yourself Vienxay came to such magical power is...irritating~ [X3Blank]
DO ~SetGlobal("X3VieDornToB","GLOBAL",1)~
== BX3Vie25 ~I did not do it to please you. I am hardly sorry your ego is suffering.~
== BDORN25 ~You are also terribly unamusing.~
== BX3Vie25 ~And you are ugly, hideous, and a horrible murderer.~
== BDORN25 ~And you think your murders are less than my own?~
== BX3Vie25 ~I regret mine. You do not.~
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Vie")
See("Edwin")
Global("X3VieEDWINToB","GLOBAL",0)~ THEN BX3Vie25 X3VieEDWIN1
~We are equals in magic, Edwin. I, master of illusions and shadow magic, and you...conjuration. I am more virtuoso, and you...specialized. Surely however, one of us is the better.~ [X3Blank]
DO ~SetGlobal("X3VieEDWINToB","GLOBAL",1)~
== BEDWIN25 ~There is no competition, elf. Have we not had this conversation before? If we were to enter the same room, it would be I who would be served by obsequious servants. You, would be ignored. Such is the metaphorical differentiation in our ability.~
== BX3Vie25 ~Please. Clearly there is only one way to know. One day I would really like this spell duel. Surely it need not be lethal?~
== BEDWIN25 ~I do not hold back my power, Vienxay. Magic has no training swords. Even a fraction would be too much for someone as simple as you to handle.~
== BX3Vie25 ~Then it will be as it was before. The day your loyalties diverge against us, we shall truly know who is the greater power. How I look forward to it.~
EXIT 

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Vie")
See("HAERDALIS")
Global("X3VieHAERDALISToB","GLOBAL",0)~ THEN BX3Vie25 X3VieHAERDALIS1
~Hrmph. It is so strange how these human civilizations can spill so much blood in so short time. A single death in Evermeet is a shock. Here, it feels like the norm.~ [X3Blank]
DO ~SetGlobal("X3VieHAERDALISToB","GLOBAL",1)~
== BHAERD25 ~Chaos and entropy storm the horizons of these lands, my raven hound.~
== BX3Vie25 ~Evermeet never had such storms. Our people were able to create a true peace, Haer'dalis. You however, would probably find that horribly dull.~
== BHAERD25 ~And you would not, my raven hound? You who have a drive and a thirst for knowledge.~
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~Perhaps. But that is neither your business nor your place to speak of.~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~No. I long for a true peace. Someday, I hope Correlon lets me have it.~
EXIT 

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3VieIMOEN1
~So Vienxay. You seem a bit down. Your head isn't lifted as high as you usually carry it. Or maybe it's grown smaller.~ [X3Blank]
DO ~SetGlobal("X3VieIMOENToB","GLOBAL",1)~
== BX3Vie25 ~Please. I am dealing with enough as is. I don't need your chipmunk voice to add to the annoyances.~
== BIMOEN25 ~Ooh. Funny. You aren't jealous that the rest of us are all realizing our potential or stepping into our destinies and you are...ever just Vienxay?~
== BX3Vie25 ~I said I don't need your opinion!~
== BIMOEN25 ~And bullseye! Nice chat. We should talk again soon.~
== BX3Vie25 ~I hate you so much.~
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieHexxatToB","GLOBAL",0)~ THEN BHEXXA25 RebHexxat1
~You have become a powerful archmage of Shadows, Vienxay.~ [X3Blank]
DO ~SetGlobal("X3VieHexxatToB","GLOBAL",1)~
== BX3Vie25 ~Of course I have. I hardly need your acknowledgment of the obvious.~
== BHEXXA25 ~You have also become even more prideful. Beware.~
== BX3Vie25 ~Please. The last person I need a warning from is a vampire.~
== BHEXXA25 ~If you are not careful, I will be the last person you get a warning from.~
EXIT 
// Jan #1
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Vie")
See("Jan")
Global("X3VieJanToB","GLOBAL",0)~ THEN Bx3Vie25 X3VieJan1
~Jan. I am an archmage. I am *tired* of your stupid stories. Unless you have a tale of a glorious elf, please cease with your annoyances.~ [X3Blank]
DO ~SetGlobal("X3VieJanToB","GLOBAL",1)~
== BJAN25 ~A story about an elf, eh? I can think of one. My Aunt Petunia had gone into a trek into the forest to hunt a poacher hunting the rare grizzled Ur-Bear.~
== Bx3Vie25 ~...Ur-Bear?~
== BJAN25 ~Yes, a beautiful, albino grizzly. Never seen before of its kind. Nature walkers swore it was a spirit, or an avatar of some god. But poachers were always keen to bring its fur home first. My Aunt Petunia however was keen to make sure it was safe. So she brought over her followers, the Hydra, the Shadow Dragon, and a Solar to take care of him.~
== Bx3Vie25 ~A ranger. Please, what the hell does this have to do with a glorious elf?~
== BJAN25 ~Well, it just so happens while she was moving to catch up with the poacher she ran into an elf, who shouted "Glorious", and then fainted. Quite the scare, it must have been for the poor fellow.~
== Bx3Vie25 ~Grr! I hate you *so* much, gnome.~
EXIT 

// JAHEIRA #25
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieJAHEIRAToB","GLOBAL",0)~ THEN BJAHEI25 X3VieJAHEIRA1
~Your power in magic has grown, immensely, Vienxay.~ [X3Blank]
DO ~SetGlobal("X3VieJAHEIRAToB","GLOBAL",1)~
== BX3Vie25 ~Yes, yes, thank you, what is your point?~
== BJAHEI25 ~I only wonder if your caution and responsibility over your power has grown with it as well.~
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~My power is my business, mutt. I care not for your opinion.~
== BJAHEI25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~Then I have much I could lecture you on. But you will learn nothing, and so I will say nothing..~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~I try. I am not the same elf as I was all that time ago, Jaheira. There is more than just myself in this world.~
== BJAHEI25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~Then I have nothing to lecture you on. I will say nothing.~
EXIT 

// KELDORN 
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Vie")
See("KELDORN")
Global("X3VieKELDORNToB","GLOBAL",0)~ THEN BX3Vie25 X3VieKELDORN1
~Paladin human, I find all of your beliefs foolish, and absolutely nothing in common with you.~ [X3Blank]
DO ~SetGlobal("X3VieKELDORNToB","GLOBAL",1)~
== BKELDO25 ~We both serve to aid <CHARNAME>. That is the only thing we have in common.~
== BX3Vie25 ~Your counsel is hardly to <CHARNAME>'s interest. They should do as they please, not as you deem "right and good".~
== BKELDO25 ~Your presence is why I counsel <CHARNAME> all the more strongly on the right path. But if you ever push them into the path of darkness, we will be at odds.~
== BX3Vie25 ~...Perhaps I was wrong. I do not want <CHARNAME> to repeat my mistakes, even if I do not believe in your ridiculous black and white ideals.~
== BKELDO25 ~Grey is the excuse to do nothing. Evil festers at actionless men.~
== BX3Vie25 ~Evil festers because people are denied anything at all by the tyranny of order. But I see we will not change each other's minds. Let us drop this and catch up to <CHARNAME> before they get angry at our bickering.~ 
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Vie")
See("X3Reb")
Global("X3VieKorganToB","GLOBAL",0)~ THEN BKORGA25 X3VieKorgan1
~I suppose despite my entire loathing of your being Korgan, we are not so different~ [X3Blank]
DO ~SetGlobal("X3VieKorganToB","GLOBAL",1)~
== BKORGA25 ~Hah. Yer whining is nay at all like me, ye blasted witch elf.~
== BX3Reb25 ~We destroy our enemies with our talents, mine the art of magic and yours...the primitive slashing of an axe, and we do it well.~
== BKORGA25 ~Perhaps a great capacity for the horrible and dark, Vienxay. But nay anything else. Now shut yer trap. Yer compliments make me unsettled.~
EXIT 


// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Vie")
See("X3Vie")
Global("X3VieNALIAToB","GLOBAL",0)~ THEN BNALIA25 X3VieNALIA1
~Vienxay, you have been glaring at me for hours now. If you have something to say, say it like an adult.~ [X3BLANk]
DO ~SetGlobal("X3VieNALIAToB","GLOBAL",1)~
== BX3Vie25 ~Ugh. Well, despite your *stupid* ideals, I have always considered you a rival. And yet I am forced to admit you are the superior mage, despite my more numerous years of experience.~
== BNALIA25 ~That was surprisingly mature of you, Vienxay. But this isn't a competition. We work together, after all.~
== BX3Vie25 ~Of course it is a competition. I am not going to let you remain supreme. Your mantle will be mine soon enough.~
== BNALIA25 ~If I am what drives you to do better, Vienxay, then...I won't say anything. Do your best.~
== BX3Vie25 ~Ugh, and now I feel like I am being treated like a child. You will rue this day, Nalia. Yes, you will rue this day.~
EXIT 



// Mazzy
CHAIN
IF ~IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("X3Vie")
See("Mazzy")
Global("X3VieMazzyToB","GLOBAL",0)~ THEN BX3Vie25 X3VieMazzy1
~I will begrudgingly admit, that you are barely worth my respect, halfling.~ [X3Blank]
DO ~SetGlobal("X3VieMazzyToB","GLOBAL",1)~
== BMAZZY25 ~Half hearted compliments, Vienxay? I am uninterested in any concealed vile you spew.~
== BX3Vie25 ~Take it for what it is worth. You push with the tenacity of the best warriors of Evermeet. I care nothing for your ideals, but I do appreciate your skill.~
== BMAZZY25 ~What worth is our strength if we do not have the character? I will take your compliment for what it is, but perhaps you could learn to place value in how you treat others.~
== BX3Vie25 ~It is too late for that. I have done the damage.~
== BMAZZY25 ~Redemption is not out of sight. Realize your failings and reach out. You may find the path back to right is far closer than you think.~
EXIT 

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Vie")
See("MINSC")
Global("X3VieMINSC","GLOBAL",0)~ THEN BX3Vie25 X3VieMINSC1
~Minsc. I will say this only once more. Get that horrible creature away from me. Nowhere near my sleeping bed, nowhere near me, and especially nowhere near my grimoire. It bit a page! My magic is needed for our success.~ [X3Blank]
DO ~SetGlobal("X3VieMINSC","GLOBAL",1)~
== BMINSC25 ~That bite does not look like Boo. Boo did not do this, witch lady.~
== BX3Vie25 ~I am not a witch lady, I am a shadowmage, you- whatever! Just keep him away!~
== BMINSC25 ~Boo has no interest in being close to you. No, Boo is wary, though...he does like the snacks he saw.~
== BX3Vie25 ~Away, away, away! Or I will toast him myself with a fire spell.~
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Vie")
See("Neera")
Global("X3VieNeeraToB","GLOBAL",0)~ THEN BX3Vie25 X3VieNEERA1
~Mutt! What did you do with my spell components? I needed them!~ [X3Blank]
DO ~SetGlobal("X3VieNeeraToB","GLOBAL",1)~
== BNEERA25 ~For the last time Vienxay, I have a name!~
== BX3Vie25 ~They are *melted*. What did you do?~
== BNEERA25 ~Are you even sure it was m- oh. That looks like my work.~
== BX3Vie25 ~Give me some of yours, right now!~
== BNEERA25 ~Why? Just make some more. Accidents happen.~
== BX3Vie25 ~How you have the skill of an archmage is beyond me.~
== BNEERA25 ~How you have lived this long is beyond me. Fine. Take this. But Neera. Neeera. Just say it.~
== BX3Vie25 ~Hrmph. Melt them again, and I will never call you "Neera" at all, mutt.~
== BNEERA25 ~Well, that's progress. Soon we'll get past basic pronunciation of simple words.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Vie")
See("RASAAD")
Global("X3VieRasaadToB","GLOBAL",0)~ THEN BX3Vie25 X3VieRasaad1
~We are light and dark. Master of the sun, and myself, master of shadow.~ [X3Blank]
DO ~SetGlobal("X3VieRasaadToB","GLOBAL",1)~
== BRASAA25 ~But there is a light in you, Vienxay. You are more than shadow.~
== BX3Vie25 ~Please, what are you talking about?~
== BRASAA25 ~You regret your evils. Your art is shadow but not your heart.~
== BX3Vie25 ~I think you are foolish, monk, and say things that you do not know.~
== BRASAA25 ~You deny it, but I know you see what I am telling you.~
== BX3Vie25 ~...and if I did?~
== BRASAA25 ~Then I only ask you to let it shine.~
== BX3Vie25 ~Hrmph. I'd rather continue to treat you as if you were foolish. Leave me be.~
EXIT 

// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Vie")
See("SAREVOK")
Global("X3VieSAREVOKToB","GLOBAL",0)~ THEN BX3Vie25 X3VieSAREVOK1
~I do not understand. We are resurrecting and bringing along former enemies now? It seems pitiful.~ [X3KSO]
DO ~SetGlobal("X3VieSAREVOKToB","GLOBAL",1)~
== BSAREV25 ~If you have something to say, elf, say it to my face.~
== BX3Vie25 ~Why? That would make you feel better. I have no desire to do that.~
== BSAREV25 ~You test your luck. Were <CHARNAME> not here, you would be killed in an instant.~
== BX3Vie25 ~Please. I am a master of magic and shadows. I could evade you if I wished, or burn you if I tried. Do not speak of power as if you are the lord of it all. You have died, and I have not.~
== BSAREV25 ~That can change quickly. Test me.~
== BX3Vie25 ~It can. But never by your hand.~
EXIT 


// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Vie")
See("Valygar")
Global("X3VieValygarToB","GLOBAL",0)~ THEN BX3Vie25 X3VieValygar1
~After all of our time together, Valygar, do you still think magic so horrible, when it has saved our lives many times?~ 
DO ~SetGlobal("X3VieValygarToB","GLOBAL",1)~
== BVALYG25 ~It has also nearly ended it, many more. Far more than I would consider it good.~
== BX3Vie25 ~A disappointing response. And what of me? I use magic. Do you think myself evil?~
== BVALYG25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~You've not changed, Vienxay. My opinion of you remains the same as it ever will, only more reinforced.~
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~And I thought you had potential human. You are another disappointment.~
== BVALYG25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~You've...changed. Perhaps my first perceptions were fortunate wrong, or battle injuries have knocked sense into you.~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~The former. I have always been sensible, and like I would ever risk scars to my beauty.~
EXIT 

// Viconia
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Vie")
See("Viconia")
Global("X3VieViconiaToB","GLOBAL",0)~ THEN BX3Vie25 X3VieViconia1
~I must admit after traveling with you, Viconia, that a thought has crept to my mind. In thousands and thousands of years, perhaps if more and more of your kind prove themselves like yourself and a handful of others, the Father may see you redeemed.~ 
DO ~SetGlobal("X3VieViconiaToB","GLOBAL",1)~
== BVICON25 ~You? Spouting such ideals, darthiir?~
== BX3Vie25 ~Ugh, fine. Your kind are doomed to wander the surface hated forever.~
== BVICON25 ~That is more like the normal you.~
== BX3Vie25 ~Just shut up. I was trying to say that I have become to tolerate you.~
== BVICON25 ~You are not like the other darthiir, abbil. And your talents with shadows shows Shar's approval.~
== BX3Vie25 ~Don't push it. My magic is a gift of Mystra, not Shar. Never will I make the mistake of trying her darkness again.~
EXIT 
