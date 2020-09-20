// Aerie
CHAIN
IF ~IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("X3Hel")
See("AERIE")
Global("X3HelAERIEToB","GLOBAL",0)~ THEN BX3Hel25 X3HelAERIE1
~You're an odd one, lass Aerie. Serving Baervan Wildwander rather than one of the elven folk.~ [X3Blank]
DO ~SetGlobal("X3HelAERIEToB","GLOBAL",1)~
== BAERIE25 ~Quayle taught me much of his people and culture when I was under his care. I just...feel closer to them.~
== BX3Hel25 ~If ye were a priestess of Haela Brightaxe, I confess I may have treated you less for it. My heart is rather set in me ways.~
== BAERIE25 ~But we can learn from one another's gods, Helga. Just because we are different does not mean we cannot find solace or comfort in the lessons of another people.~
== BX3Hel25 ~In an ideal world, perhaps. But this world is becoming less and less ideal, lass. Still, yer point is made.~
EXIT 

// ANOMEN
CHAIN
IF ~IsValidForPartyDialogue("ANOMEN")
IsValidForPartyDialogue("X3Hel")
See("ANOMEN")
Global("X3HelANOMENToB","GLOBAL",0)~ THEN BX3Hel25 X3HelANOMEN1
~Ye aren't aggressive enough in battle, Anomen. Move with weapon forward, nay the shield.~ [X3Blank]
DO ~SetGlobal("X3HelANOMENToB","GLOBAL",1)~
== BANOME25 ~I have fought in countless battles. I do not need a lecture from you on how I should approach every fight.~
== BX3Hel25 ~If ye wish to live to my age, you should. Then again, I doubt ye could anyway.~
== BANOME25 ~I will survive many more battles, dwarf. Your poor teaching, however, is the only threat that will be the end of that.~
== BX3Hel25 ~Have it yer way. I've met few humans who could broach a hundred. Ye get close to that, and I'll be mightily impressed.~
EXIT

// CERND
CHAIN
IF ~IsValidForPartyDialogue("CERND")
IsValidForPartyDialogue("X3Emi")
See("CERND")
Global("X3EmiCERNDToB","GLOBAL",0)~ THEN BX3HEL25 X3EmiCERND1
~Ye have shown yer love of the natural world well enough, Cernd. But what of the depths and caves?~ [X3Blank]
DO ~SetGlobal("X3EmiCERNDToB","GLOBAL",1)~
== BCERND25 ~Mankind is not suited for such a place. I prefer the open trees and air.~
== BX3Hel25 ~Bah. There be no cave huggers, as it were?~
== BCERND25 ~Nature is everywhere, but her guardians are not required in the caverns where civilization does not intrude with their homes.~
== BX3Hel25 ~Ye don't know enough dwarves, lad, else ye would be quite concerned of how untrue that was.~
EXIT 

// Dorn 
CHAIN
IF ~IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("X3Hel")
See("Dorn")
Global("X3HelDornToB","GLOBAL",0)~ THEN BX3Hel25 X3HelDorn1
~Bah. I have no love of ye, orc.~ [X3Blank]
DO ~SetGlobal("X3HelDornToB","GLOBAL",1)~
== BDORN25 ~I do not fight for your "love", dwarf.~
== BX3HEL25 ~Ye are the sort of kind my hammer goes against.~
== BDORN25 ~And do you raise that hammer now?~
== BX3Hel25 ~Nay. Not while <CHARNAME> wills ye welcome. But if that changes...~
== BDORN25 ~Then I look forward to the clash. You would be a good kill.~
EXIT 

// EDWIN
CHAIN
IF ~IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelEDWINToB","GLOBAL",0)~ THEN BEDWIN25 X3HelEDWIN1
~I understand, Helga, you come from a keep where you guard all sorts of secrets from lost ruins and empires. Tell me of them.~ [X3Blank]
DO ~SetGlobal("X3HelEDWINToB","GLOBAL",1)~
== BX3Hel25 ~Guard? Somewhat, perhaps, or at least guide adventurers who visit carefully. Why yer interest?~
== BEDWIN25 ~Purely academic, of course. Did these monkeys you send bring back anything of interest? Tomes, magical artifacts?~
== BX3Hel25 ~Why would I tell ye? Your interest is the precise sort of people we don't want going there.~
== BEDWIN25 ~They have no use for the dead. Surely a dwarf of your standing can spill a small secret.~
== BX3HEL25 ~I could also smash yer head in. And if ye have to ask which is more likely, ye aren't as smart as I thought you were.~
== BEDWIN25 ~(Monkeys, all of them. I will get my way soon enough. Yes, soon enough.)~
EXIT  

// HAERDALIS #1
CHAIN
IF ~IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelHAERDALISToB","GLOBAL",0)~ THEN BHAERD25 X3HelHAERDALIS1
~Death and battle cloud the air, as precipitation from a recent storm. This is your element, is it not, Helga?~ [X3Blank]
DO ~SetGlobal("X3HelHAERDALISToB","GLOBAL",1)~
== BX3Hel25 ~Aye. There is much evil and battle to be done. More still before we get to the resolution. Our hearts will be tested. The gods will see us through.~
== BHAERD25 ~You are a true bloodhound, Helga. You would do well on the endless battle in the planes.~
== BX3Hel25 ~I bet I would. But the demons and devils if they wish a piece of me can come here. I've plenty to give.~
EXIT 

// Hexxat
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Hel")
See("Hexxat")
Global("X3HelHexxatToB","GLOBAL",0)~ THEN BX3Hel25 X3HelHexxat1
~Bah. I will admit it, vampire, of all of the monsters I have seen, ye are the one I hate the least.~ [X3Blank]
DO ~SetGlobal("X3HalHexxatToB","GLOBAL",1)~
== BHEXXA25 ~What changed your view of me?~
== BX3HEL25 ~Ye fight as hard as the rest of us. And ye may have saved my life a few times now.~
== BHEXXA25 ~I am glad I have won your respect.~
== BX3HEL25 ~Aye. Enough that if I ever see you after this is over, I'll spare ye once, and only once. Be grateful for it.~
EXIT

// IMOEN #1
CHAIN
IF ~IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelIMOENToB","GLOBAL",0)~ THEN BIMOEN25 X3HelIMOEN1
~You're getting a little old, aren't you Helga? You sure you can keep up with the rest of us?~ [X3Blank]
DO ~SetGlobal("X3HelIMOENToB","GLOBAL",1)~
== BX3HEL25 ~Old?! By human standards, mayhaps. But I am a dwarf. And a dwarf fights on until her hammer hand breaks, her legs fail her, and her shield arm can't swing. Even then, she's still got her head.~
== BIMOEN25 ~That sounds pretty extreme. Are you sure you will be okay? I wouldn't want our kind grandma of the group to run into trouble.~
== BX3Hel25 ~You're having me on, girl. Grandma?!~
== BNEERA25 IF ~IsValidForPartyDialogue("Neera")~ THEN ~I see it too! I'm glad I'm not the only one.~
== BX3Hel25 ~Moradin's bloody damn axe, bloody kids these days!~
== BIMOEN25 ~I'm just teasing, Helga. You are so easy to rile up.~
EXIT 

// Jan 
CHAIN
IF ~IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("X3Hel")
See("Jan")
Global("X3HelJanToB","GLOBAL",0)~ THEN BX3Hel25 X3HelJan1
~Despite yer lack of skill with arms, ye've proven to be a damn good companion, Jan Jansen. Maybe I'll have to introduce ye to my daughter.~ [X3Blank]
DO ~SetGlobal("X3HelJanToB","GLOBAL",1)~
== BJAN25 ~You have a daughter? I thought you were well past that age. I do remember having quite the outing with a lovely female dwarf once. Completely bald. Hairless from head to toe, and proud of it too.
Sober too, and never drank a single glass of ale. Entirely remarkable for her kind, and a sweet soul. Unfortunately she had gotten into the smuggling business with sweet potatoes, and wound up in one jail and then another. Dangerous business, but excellent profits if you're clever enough.
It was in fact in-between her imprisoned states that I met her, trying to sell me some sweet potatoes to take back home for dinner that night. I couldn't even finish deciding whether to take the deal before the guards came right up on her. And I thought they were there for me. Convenient, that.~
== BX3HEL25 ~Ye know what? Nevermind. I love my daughter too much to bring yer endless prattling hell into her world.~
EXIT 

// JAHEIRA #25
CHAIN
IF ~IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("X3Hel")
See("JAHEIRA")
Global("X3HelJAHEIRAToB","GLOBAL",0)~ THEN BX3HEL25 X3HelJAHEIRA1
~The times are bloodier. More battles. More killings. More ways to die.~ [X3Blank]
DO ~SetGlobal("X3HelJAHEIRAToB","GLOBAL",1)~
== BJAHEI25 ~Not everyone is going to revel in death, Helga.~
== BX3Hel25 ~Aye, there is little reason to revel in death, but triumph and living. I am a high bloodmaiden of Haela, now. And I will continue to fight for me people until my hand fails me.~
== BJAHEI25 ~Not all battles are won by weapons. You would do well to open your thinking.~
== BX3Hel25 ~Bah, I don't have time for your speak. Battle is around the corner one way or another. Best ye bring your best fighting to it.~
EXIT 

// KELDORN #25
CHAIN
IF ~IsValidForPartyDialogue("KELDORN")
IsValidForPartyDialogue("X3Kal")
See("KELDORN")
Global("X3KalKELDORNToB","GLOBAL",0)~ THEN BX3Kal25 X3KalKELDORN1
~You ever miss home, Keldorn? We aren't close to Althkata anymore.~ [X3Blank]
DO ~SetGlobal("X3KalKELDORNToB","GLOBAL",1)~
== BKELDO25 ~I think of my daughters everyday. Time lost with them is the greatest sacrifice for my duty.~
== BX3Kal25 ~I miss mother. And Sam, a little. But mostly mom, and good ol' cooking. Gullykin, too. Can still see all the burrows and the faces of the locals. I hope it's all there, when I get back you know? Just like I left it.~
== BKELDO25 ~Time moves, young Kale. But know that your efforts here will make all the difference. We will return to our homes having made the land a better place.~
== BX3Kal25 ~I don't know about better. But at least a place where <CHARNAME> isn't getting someone to try to murder them every second.~
== BKELDO25 ~Such is the darkness in their path. We will shield them well, from both their foes and the evil in themselves.~
EXIT 

// Korgan #25
CHAIN
IF ~IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelKorganToB","GLOBAL",0)~ THEN BKORGA25 X3HelKorgan1
~My axe is bloody dry. Ye come out where you hide! So ye can be picked and die!~ [X3Blank]
DO ~SetGlobal("X3HelKorganToB","GLOBAL",1)~
== BX3Hel25 ~Trying out some new rhymes, Korgan?~
== BKORGA25 ~I grew tired and restless waiting for the next slaughter, Helga. Ye have the bloodlust as I. Ye know the pain of waiting.~
== BX3Hel25 ~Aye, the waiting can be long. But if you are going to try and rhyme about it, do it a bit quieter. Your poetry is lacking.~
EXIT 

// Mazzy
CHAIN
IF ~IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("X3Hel")
See("Hexxat")
Global("X3HelHexxatToB","GLOBAL",0)~ THEN BX3Hel25 X3HelHexxat1
~Hail to the battles had and the battles to come. The outcome will all be the same.~ [X3Blank]
DO ~SetGlobal("X3HalHexxatToB","GLOBAL",1)~
== BHEXXA25 ~While I admire your confidence in yourself, Helga, it is bordering on arrogance.~
== BX3HEL25 ~And do we not deserve a bit of pride, lass? The number of battles I have been in borders on the hundreds.~
== BHEXXA25 ~I value your experience and your strength, Helga. But if we let our success get to our head, it alone can be our undoing.~
== BX3HEL25 ~I did nay think of that. I will try to humble myself, lass. Ye could be a priestess, you know, with that sort of wisdom.~
== BHEXXA25 ~I am a Truesword, but it is my hope that one day I may be a proper paladin of Arvoreen.~
== BX3HEL25 ~I will pray lass, that you get the chance.~
EXIT

// Minsc#1
CHAIN
IF ~IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("X3Reb")
See("MINSC")
Global("X3RebMINSC","GLOBAL",0)~ THEN BX3Reb25 X3RebMINSC1
~Look Minsc! Gustav and Boo seem to be finally getting along.~ [X3Blank]
DO ~SetGlobal("X3RebMINSC","GLOBAL",1)~
== BMINSC25 ~Ah! Friends they are, yes Recorder?~
== BX3Reb25 ~I'll miss this, I think, when we go our seperate ways. In all of the danger we go through, their play and arguments always brings a bright spot.~
== BMINSC25 ~Boo will forever remember the brave ferret, yes. But not his swiping. No, Boo did not appreciate the swiping.~
== BX3Reb25 ~Oh, trust me, Recorder also does not appreciate it when Gustav gets grabby. I have no idea where he got that thieving habits from.~
EXIT 

// Nalia#1
CHAIN
IF ~IsValidForPartyDialogue("NALIA")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelNALIAToB","GLOBAL",0)~ THEN BNALIA25 X3HelNALIA1
~As a member of a dwarven church, Helga, does your funds go to the same end as others? Towards lavish temples and splendorous homes.~ [X3Blank]
DO ~SetGlobal("X3HelNALIAToB","GLOBAL",1)~
== BX3Hel25 ~Splendorous homes? The only thing I have is the Keep way at Torstultok, more a fortress than a grand hall. There be only a few of my kin there, but they be some of the finest dwarves in the realms.~
== BNALIA25 ~That sounds a lot different than the temples back in Amn. I had thought you would be more the same, with a longing of gold and luxury. I will change that when I return to Amn.~
== BX3Hel25 ~Nay, all dwarves are cautioned of greed when they are wee ones. As for yer desire of change, I wish ye luck. Old traditions die hard. With deep roots, harder still.~
== BNALIA25 ~It sounds like you are discouraging me from trying at all. I'll have none of it.~
== BX3Hel25 ~Nay. I'd have discouraged you from traveling a while ago, but you've proved yourself. Just keep yer head clear, and ye'll prevail.~
== BNALIA25 ~Thank you Helga. That means something to me.~
EXIT 

// Neera
CHAIN
IF ~IsValidForPartyDialogue("Neera")
IsValidForPartyDialogue("X3Hel")
See("Neera")
Global("X3HelNeeraToB","GLOBAL",0)~ THEN BX3Hel25 X3HelNEERA1
~You going to continue adventuring when this is over, lass?~ [X3Blank]
DO ~SetGlobal("X3HelNeeraToB","GLOBAL",1)~
== BNEERA25 ~There's so much world to see out there. Why settle down now?~
== BX3Hel25 ~Heh. I settled down sooner than ye would think. No regrets either, two good children out of that.~
== BNEERA25 ~And now you are being all motherly to us. That makes you almost grandmotherly to me.~
== BX3Hel25 ~What the bloody hells are ye saying?~
== BNEERA25 ~Grandmotherly. Except with a weird enjoyment of making people bleed.~
== BX3Hel25 ~Neera?~
== BNEERA25 ~Yes grandmother?~
== BX3Hel25 ~Never. Call. Me. That. Again.~
EXIT 

// Rasaad#1 
CHAIN 
IF ~IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("X3Hel")
See("RASAAD")
Global("X3HelRasaadToB","GLOBAL",0)~ THEN BX3Hel25 X3HelRasaad1
~Hrngh. Bloody, god damn waiting...~ [X3Blank]
DO ~SetGlobal("X3HelRasaadToB","GLOBAL",1)~
== BRASAA25 ~You seem restless, Helga. What ails you?~
== BX3Hel25 ~I itch for action, Rasaad. A high priestess of Haela does not sit on her laurels.~
== BRASAA25 ~Perhaps a bit of meditation and inner focus will put you at ease.~
== BX3Hel25 ~I nay want to *be* at ease, monk.~
== BRASAA25 ~And yet focus and the clearing of mind can do well for battle. Distractions can be dangerous, as well as frustration.~
== BX3Hel25 ~Nay if yer frustration be for the lack of it. But I'll stop me groveling.~
EXIT 


// SAREVOK
CHAIN
IF ~IsValidForPartyDialogue("SAREVOK")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelSAREVOKToB","GLOBAL",0)~ THEN BSAREV25 X3HelSAREVOK1
~Do you have something to say to me dwarf? It seems everyone must make some comment of me.~ [X3Blank]
DO ~SetGlobal("X3HelSAREVOKToB","GLOBAL",1)~
== BX3Hel25 ~Nay. <CHARNAME> said you live, and so you live. I nay have issues with a fine warrior's company.~
== BSAREV25 ~You and your god takes no issue with my existence?~
== BX3Hel25 ~Quite the opposite. A true warrior should be allowed to fight on. Ye may fight violently, but in that I am yer sister, for I do as well. So long as our weapons fight as one, I am quite comfortable.~
== BSAREV25 ~Your words are an interesting suprise, cleric. I will quite enjoy fighting next to you, I think.~
EXIT 

// Valygar
CHAIN
IF ~IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("X3Hel")
See("Valygar")
Global("X3HelValygarToB","GLOBAL",0)~ THEN BX3Hel25 X3HelValygar1
~The amount of battles and bloodshed only increase. Bring on the next!~ 
DO ~SetGlobal("X3HelValygarToB","GLOBAL",1)~
== BVALYG25 ~Do you have to scream to the heavens, Helga? Some peace and quiet would be appreciated.~
== BX3Hel25 ~If ye want peace and quiet, being next to <CHARNAME> is a poor choice.~
== BVALYG25 ~*Sigh*. Just one moment of silence for reflection is all I may ask.~
== BX3Hel25 ~And may I ask what ye wish to reflects on?~
== BVALYG25 ~No, you may not.~
== BX3Hel25 ~Bah. Ye'll be a lonely man if ye don't share what goes on in that head of yers, lad. But I'll quiet down until the next battle.~
EXIT 

// Viconia
CHAIN
IF ~IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("X3Hel")
See("Viconia")
Global("X3HelViconiaToB","GLOBAL",0)~ THEN BX3Hel25 X3HelViconia1
~I still nay like ye, drow. Nay ye or yer dark god.~ 
DO ~SetGlobal("X3HelViconiaToB","GLOBAL",1)~
== BVICON25 ~Is this where you spout how much holier and greater your own goddess is? Don't waste your breath.~
== BX3Hel25 ~The priesthood of Haela Brightaxe be full of the best berserkers and priests of the dwarves. Where there be battle, we be at the front. Always will be.~
== BVICON25 ~Battle is all you ever think about, dwarf. I find both you and your faith terribly simple.~
== BX3Hel25 ~And I find yer coven pathetic and foul. Test me not, lest ye wish to see whose faith is stronger  yet.~
EXIT 
//Kale 
CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Kal")
Global("X3HelX3KalToB1","LOCALS",0)~ THEN BX3Hel25 X3HelX3Kal1
~Heh, I just wished to say Kale, been a grand time traveling with you all this time.~
DO ~SetGlobal("X3HelX3KalToB1","LOCALS",1)~
== BX3Kal25 ~Grand? We've had some near death moments, and some thrills. But I suppose it's been a grand adventure.~
== BX3Hel25 ~I don't know where we'll end up after all of this is done with, but...ye're always welcome to be by my side, you know that?~
== BX3Kal25 ~Damn, that's the sweetest thing you've ever said. And it came out of you.~
== BX3Hel25 ~Bah. I mean it Kale...yer a fine warrior. Ye'll always have my support.~
== BX3Kal25 ~Heh, thanks Helga. I'll remember all of the memories.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Kal")
IsValidForPartyDialogue("X3Hel")
See("X3Hel")
Global("X3HelX3KalToB2","LOCALS",0)~ THEN BX3Kal25 X3HelX3Kal2
~Ye've not spoken much about yer leg in a while. Guess it's gotten better.~
DO ~SetGlobal("X3HelX3KalToB2","LOCALS",1)~
== BX3Hel25 ~Aye, 'least my healing has. Bless Haela, the trials were a worthy endeavor to prove such worth if that was the necessity.~
== BX3Kal25 ~Pfft. If Yondalla said I'd have to suffer pain in the leg for more power, no thanks.~
== BX3Hel25 ~Ye sure? Ye've suffered through a lot Kale to get to where you are now. And ye're still kicking, I'd reckon yer halfling gods be looking out for you.~
== BX3Kal25 ~Well...I wouldn't mind if Brandobaris was giving me a bit of attention, now that you mention it...~
== BX3Hel25 ~And with that look in yer eye, I'll just leave it at that.~
EXIT 
//Recorder 
CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelX3RebToB1","LOCALS",0)~ THEN BX3Hel25 X3HelX3Reb1
~Ye seem distracted, Recorder. THinking about yer little boy?~
DO ~SetGlobal("X3HelX3RebToB1","LOCALS",1)~
== BX3Reb25 ~...Yes. Is it that obvious?~
== BX3Hel25 ~Heh. I'm a mother ye know. Had the same expression when I felt my own children were in great danger.~
== BX3Reb25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN ~I really wish I could have done more. Maybe I should have gone with him.~
== BX3Hel25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN ~Yer boy's gone on without ye for a while, lass. A little longer won't kill him. Ye'll have a world of time to make up for it when ye get back.~
== BX3Reb25 IF ~Global("X3RebQuest","GLOBAL",15)~ THEN ~I hope so. I really do.~
== BX3Reb25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN ~He is in great danger. And worse...I don't even know where.~
== BX3Hel25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN ~Ye can always go look, lass. Ye needn't stay with us. Yer a lot stornger than ye used to be.~
== BX3Reb25 IF ~!Global("X3RebQuest","GLOBAL",15)~ THEN ~I need to finish what I started with <CHARNAME>...but when it's over? I think I will do just that, Helga, no matter how long it takes.~
EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Reb")
IsValidForPartyDialogue("X3Hel")
See("X3Reb")
Global("X3HelToBQuest","GLOBAL",6)
Global("X3HelX3RebToB2","LOCALS",0)~ THEN BX3Hel25 X3HelX3Reb2
~I think of Berk everyday. This what it feels like, lass? To lose a child?~
DO ~SetGlobal("X3HelX3RebToB2","LOCALS",1)~
== BX3Reb25 ~Yes...like your world is empty and you only have a pit of self loathing for yourself.~
== BX3Hel25 ~...Damn. Going to find a right grave and give him a proper send off. He'll be honored as he should be.~
== BX3Reb25 ~I can be there, if you like. I think I would want to.~
== BX3Hel25 ~Yer a sweet lass. Yeah. Ye can join me. When I get a chance one of these nights and find a fine enough place, we'll honor his memory.~
EXIT 
//Vienxay
CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3HelX3VieToB1","LOCALS",0)~ THEN BX3Hel25 X3HelX3Vie1
~Took a while elf, but ye've finally come slightly more bearable with that usefulness.~
DO ~SetGlobal("X3HelX3VieToB1","LOCALS",1)~
== BX3Vie25 ~Oh, I suppose you enjoy your witless remarks. Your leg limp must have finally dissapeared.~
== BX3Hel25 ~Aye, observant of thee. Haela's blessed me to finally take care of it with all of the glorious battles I've done in her name.~
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~Battles which *I* have kept you alive with. Where is my reward?~
== BX3Hel25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~Yer reward is that ye can pray with me to Haela this night if ye wish.~
== BX3Vie25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~Please. I'd rather be caught dead than praying to some dwarven deity.~
== BX3Hel25 IF ~!Alignment("X3Vie",NEUTRAL)~ THEN ~Heh. Win-win for Haela either way.~

== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~I...am glad for you. No one deserves to be in constant pain.~
== BX3Hel25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~Who are ye and what happened with Vienxay?~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~Ugh, if you are going to question me then forget it.~
== BX3Hel25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~Nay, nay. Thanks, elf. Never would have expected of you. Bah, in fact it bothers me. Ye must have something planned.~
== BX3Vie25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~There is nothing planned.~
== BX3Hel25 IF ~Alignment("X3Vie",NEUTRAL)~ THEN ~Hrngh. That nay sits well with me either! Bah. This is going to bother me for days.~

EXIT 

CHAIN 
IF ~IsValidForPartyDialogue("X3Vie")
IsValidForPartyDialogue("X3Hel")
See("X3Vie")
Global("X3VieEvermeet","GLOBAL",1)
Global("X3HelX3VieToB2","LOCALS",0)~ THEN BX3Hel25 X3HelX3Vie2
~So yer own people are finally taking ye back. Faerûn is saved.~
DO ~SetGlobal("X3HelX3VieToB2","LOCALS",1)~
== BX3Vie25 ~Must you be so rude all the time? Especially as I have been trying to treat you better.~
== BX3Hel25 ~Aye, aye, ye are right. But it be strange to see you mature after all this time. Hate to say it lass, never thought ye'd get a chance like this.~
== BX3Vie25 ~I didn't either. I am overjoyed it has happened.~
== BX3Hel25 ~Well...I be glad for thee. I take back what I said. I think I'll...bah, I'll miss ye.~
== BX3Vie25 ~I will miss you too. Now let us never say those words again to eachother.~
== BX3Hel25 ~Agreed!~
EXIT 