BEGIN X3Rest
// X3Rest is a custom player dialogue. The player's dialogue file is temporarily set to X3Rest for this to fire.
// This allows other mods to add their own rest talks without fear of position as this will always be the first one.
CHAIN IF ~Global("X3RestActivated","GLOBAL",1)~ THEN X3Rest restTalk
~As you make to rest your mind wanders to think about a few of your companions.~ [X3BLANK]
END // If RestInvite was activated via PID by my NPC's, it will do a special go to direct. Only possible with PID NPCs or some dialogue invitation.
IF ~Global("X3RestInvite","GLOBAL",1)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest EmilySet
IF ~Global("X3RestInvite","GLOBAL",2)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest HelgaSet
IF ~Global("X3RestInvite","GLOBAL",3)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest KaleSet
IF ~Global("X3RestInvite","GLOBAL",4)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest RecorderSet 
IF ~Global("X3RestInvite","GLOBAL",5)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest VienxaySet
IF ~!GlobalGT("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest restTalkNoSet

CHAIN X3Rest restTalkNoSet
~Perhaps you could take a bit of time with one of them?~ 
// Set timer to 6000, 
DO ~RealSetGlobalTimer("X3RestTimer","GLOBAL",6000)~
END
+~IsValidForPartyDialogue("X3Emi")~+ ~(Seek out Emily.)~ + EmilyNoSet
+~IsValidForPartyDialogue("X3Hel")~+ ~(Seek out Helga.)~ + HelgaNoSet
+~IsValidForPartyDialogue("X3Kal")~+ ~(Seek out Kale.)~ + KaleNoSet
+~IsValidForPartyDialogue("X3Reb")~+ ~(Seek out Recorder.)~ + RecorderNoSet
+~IsValidForPartyDialogue("X3Vie")~+ ~(Seek out Vienxay.)~ + VienxayNoSet 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

/*Emily*/
CHAIN X3Rest EmilyNoSet 
~You move to find Emily.~
END 
IF ~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3EmiJ Inn1
IF ~RandomNum(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3EmiJ Inn2
IF ~RandomNumGT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3EmiJ Inn3
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3EmiJ Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3EmiJ Outdoor2
IF ~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Emi25J Inn
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Emi25J Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Emi25J Outdoor2

CHAIN X3Rest EmilySet  
~You remember you asked Emily to spend a bit of time together before you rested.~
END 
+~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Emily.)~ EXTERN X3EmiJ Inn1
+~RandomNum(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Emily.)~ EXTERN X3EmiJ Inn2
+~RandomNumGT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Emily.)~ EXTERN X3EmiJ Inn3
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Emily.)~ EXTERN X3EmiJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Emily.)~ EXTERN X3EmiJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Emily.)~ EXTERN X3Emi25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Emily.)~ EXTERN X3Emi25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Emily.)~ EXTERN X3Emi25J Outdoor2 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3EmiJ Inn1 
~(You find Emily in a bedroom, the door ajar, fiddling with her supplies.)~
= ~Ah, <CHARNAME>! Nice to have a proper bed, isn't it?~
END 
++ ~Do you have time to talk?~ + Talks 
+~GlobalGT("X3ECraft","GLOBAL",0)GlobalLT("X3ECraft","GLOBAL",14)~+ ~What is the state of your fletching supplies?~ + FletchGood
+~!GlobalLT("X3ECraft","GLOBAL",14)~+ ~What is the state of your fletching supplies?~ + FletchLow
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Move to hold her close.)~ + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Move to hold her close.)~ + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Move to hold her close.)~ + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Kiss her.)~ + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Kiss her.)~ + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Kiss her.)~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~ + Snuggle.4 // Always Rejects and suggests snuggling instead unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3EmiJ Hug1
~(She embraces you in turn, resting her head against you.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3EmiJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3EmiJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Hug2
~I've not run off on you, you don't have to hold me so tight. At least, not yet.~
END 
IF ~RandomNum(3,1)~ EXTERN X3EmiJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3EmiJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Hug3 
~(She lets out a sigh of comfort as you hold her.) I like this.~
END  
IF ~RandomNum(3,1)~ EXTERN X3EmiJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3EmiJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss1 
~(You feel her breath release against your lips as you kiss one another, warm and ticklish. Her lips form into a grin as she moves in for a second.)~
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss2 
~(Her mouth seems to mold perfectly against yours, as if yearning to never let go. You think you hear the whisper of her name from her lips.)~
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss3 
~Mmm. Your kisses never grow boring. It's like sweet delicious cake.~
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss4 
~(With little warning, she moves her lips to yours, giving you the warmth of a kiss, and then a second, and then a third.)~
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Snuggle 
~Cuddle with me? I'd like your warmth next to me when I rest.~
END 
++ ~I'd be glad to.~ + Snuggle.1 
++ ~I was hoping we could do...more then that.~ + Snuggle.2
++ ~I think I'd rather sleep alone.~ + Snuggle.3 // Ouch. Probably a minor loss here, but no break.

CHAIN X3EmiJ Snuggle.1 
~(She pulls you to the bedding, then cuddles closely to you, the comfort of eachother's presence lulling you to sleep.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3EmiJ Snuggle.3 
~I...I see. Rest well, then.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3EmiJ Snuggle.4 
~I'm...I'm not ready for that. But I wouldn't mind cuddling, if that is okay with you.~
END 
++ ~I'd be glad to.~ + Snuggle.1 
++ ~I think I'd rather sleep alone.~ + Snuggle.3 // Ouch. Probably a minor loss here, but no break.


CHAIN X3EmiJ Snuggle.2 
~I...am not ready. Not yet. But when I am, there isn't anyone else I would rather do that with. If you don't want to stay for the night still, I understand.~
END 
++ ~I'd be glad to.~ + Snuggle.1
++ ~I don't. I'll sleep alone.~ + Snuggle.3 // No loss in this version.

CHAIN X3EmiJ Sleep 
~(Her hands begin to remove your clothes, kissing open parts of your skin as they reveal themselves to her.)~
END 
++ ~(Let her finish.)~ + Sleep.1
++ ~(Start taking off her own clothes.)~ + Sleep.2 
++ ~(Stop her.) Not tonight, Emily.~ + Sleep.3

CHAIN X3EmiJ Sleep.1
~(She tugs off your clothes, admiring you for a moment with her eyes, before reaching to take off her own clothes.)~
EXTERN X3EmiJ Sleep.4 

CHAIN X3EmiJ Sleep.2 
~(She lets your hands trail to unlace and taken down her garments, laying peppered kisses while you work.)~
EXTERN X3EmiJ Sleep.4 

CHAIN X3EmiJ Sleep.4 
~(Once you are both relieved from the burden of garment, she tugs you over to the bedding.)~
END
++ ~(Let her lead.)~ + Sleep.5 
++ ~(Take the lead.)~ + Sleep.6

CHAIN X3EmiJ Sleep.5
~(Emily brings you on to the bedding, kissing down, down, down...before she suddenly jerks back up and moves back to kiss your lips, straddling you with her legs.)~
= ~(Emily merges you with her, whispering your name several times through your joined passion, until you are both a sweaty mess panting beside one another.)~
EXTERN X3EmiJ Sleep.7

CHAIN X3EmiJ Sleep.6
~(She gasps as you push her to the bedding, her eyes watching you as your bodies set to align together, her arms wrapping around your back.)~
= ~(You merge with her, and you feel her whisper your name into your ear several times through your joined passion, until you are both a sweaty, panting mess beside one another.)~
EXTERN X3EmiJ Sleep.7

CHAIN X3EmiJ Sleep.7
~(Her head rests on your chest, and eventually the rhythm of your joined breathing lulls you to sleep.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3EmiJ Sleep.8
~I thought you would never ask.~
= ~(She kisses you, slowly, with a hungry yearning as her hands wander over you, before wrapping you close.)~
EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Sleep.3 
~Oh. I...understand. Can we still cuddle?~
END 
++ ~Gladly.~ + Snuggle.1
++ ~I think I'd rather sleep alone.~ + Snuggle.3 // Ouch. Probably a minor loss here, but no break.


CHAIN X3EmiJ FletchGood 
~Pretty good. I haven't used too much of my supplies. It couldn't hurt to get more though.~
END 
++ ~Good, just making sure your supplies are good.~ + Fletch.Exit 
++ ~What would you need to get more supplies?~ + Fletch.2 

CHAIN X3EmiJ FletchLow 
~I am getting a little low. I'll craft more whenever you ask, just be mindful I only have a little bit of supplies left.~
END 
++ ~Thanks for letting me know, Emily.~ + Fletch.Exit 
++ ~What would you need to get more supplies?~ + Fletch.3

CHAIN X3EmiJ Fletch.2 
~Hrm. I think with fifteen hundred gold I could buy what I need. It is up to you.~
END 
+~PartyGoldGT(1499)~+ ~Let's do it. Here's fifteen hundred.~ DO ~TakePartyGold(1500)SetGlobal("X3ECraft","GLOBAL",0)~ + Fletch.4
++ ~That's a bit too much.~ + Fletch.Exit 
++ ~I'll think about it and get back to you later.~ + Fletch.Exit 

CHAIN X3EmiJ Fletch.3
~Hrm. I think with fifteen hundred gold I could buy what I need. It is up to you.~
END 
+~PartyGoldGT(1499)~+ ~Let's do it. Here's fifteen hundred.~ DO ~TakePartyGold(1500)IncrementGlobal("X3ECraft","GLOBAL",-15)~ + Fletch.4
++ ~That's a bit too much.~ + Fletch.Exit 
++ ~I'll think about it and get back to you later.~ + Fletch.Exit 

CHAIN X3EmiJ Fletch.4 
~Great! I'll find some time to go and get more supplies, see if there are any stores open.~
EXTERN X3EmiJ RestExit 

CHAIN X3EmiJ Fletch.Exit 
~Anything else, then?~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~ + Snuggle.4 // Always Rejects and suggests snuggling instead unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 


CHAIN X3EmiJ Inn2
~(You find Emily standing outside the baths.)~
= ~Were you fancying a bath too? Call me vain, but I like a good wash when I can.~
END 
++ ~Do you have time to talk?~ + Talks
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~(Move to hold her close.)~ + BathHug
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Kiss her.)~ + BathKiss
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~Why don't we bathe together?~ + BathNo // Always Rejects and says next time in SoA unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~Why don't we bathe together?~ + BathYes // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you enjoy your bath.~ + RestExit 

CHAIN X3EmiJ BathHug
~(She lets you embrace her, putting her arms around you. She smells of sweat and grime from your adventures.)~
END 
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ BathOffer
++ ~Do you have time to talk?~ + Talks
+~OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+ ~You look beautiful.~ + compliment 
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~Why don't we bathe together?~ + BathNo // Always Rejects and says next time in SoA unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~Why don't we bathe together?~ + BathYes // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you enjoy your bath.~ + RestExit 

CHAIN X3EmiJ BathYes 
~Why not? Come.~
EXTERN X3EmiJ BathJoin 

CHAIN X3EmiJ BathNo 
~I...am not ready for that. Maybe someday. Someday soon, I promise.~
END 
++ ~Perhaps we could talk for a while before you get in, then?~ + Talks
++ ~I will let you enjoy yourself and get some rest.~ + RestExit 


CHAIN X3EmiJ BathOffer 
~Join me?~
END 
++ ~I'd love to.~ + BathJoin 
++ ~Sorry, I need to rest.~ + RestExit 

CHAIN X3EmiJ BathKiss 
~(Your lips tingle as they graze hers, and she sneaks a small nibble with her teeth against your lower lip before giving you a mischevious grin.~
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ BathKiss.1 
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ BathKiss.2

CHAIN X3EmiJ BathKiss.1 
~Sorry. I couldn't help it, all in good fun, hmm?~
END 
++ ~Do you have time to talk?~ + Talks
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~Why don't we bathe together?~ + BathNo // Always Rejects and says next time in SoA unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~Why don't we bathe together?~ + BathYes // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you enjoy your bath.~ + RestExit 

CHAIN X3EmiJ BathKiss.2 
~(She moves her head slowly to whisper in your ear.) Come join me.~
EXTERN X3EmiJ BathJoin 

CHAIN X3EmiJ BathJoin
~(She joins your hand with hers as she takes you to the inn's baths, bringing you with her into a prepared tub.)~
= ~(When she climbs into the water, you are suprised to find she neither moves to act on intimacy or to wash, but instead relaxes her body and leans her head against you.)~
END 
++ ~Tired, are we?~ + BathJoin.1 
++ ~Shouldn't be washing?~ + BathJoin.2 
++ ~(Put your arm around her.)~ + BathJoin.3

CHAIN X3EmiJ BathJoin.1 
~Yeah. That and...~
EXTERN X3EmiJ BathJoin.2 

CHAIN X3EmiJ BathJoin.2
~I just want to take in this feeling. Warm and safe and comfortable. It won't last for long. Soon we'll be out on the road again.~
= ~(Her hand grazes your cheek as she turns to look at you. Her eyes flicker downward.)~
END 
++ ~We'll make it.~ + BathJoin.5
++ ~(Lift her face upwards to look at yours.)~ + BathJoin.4 
++ ~Are you all right?~ + BathJoin.6

CHAIN X3EmiJ BathJoin.5
~I hope so.~
EXTERN X3EmiJ BathJoin.4

CHAIN X3EmiJ BathJoin.4 
~(Her eyes look to yours, before she leans forward and gives you a short, sweet kiss, before her hands move quietly to wash you with water and soap. She remains quiet, focused entirely on her task before guiding you to do the same.)~
= ~(She moves her head back to lean against you when you are done, for several long moments. Your skins have become soft and wrinkled from the water by the time you leave to rest for the eve to snuggle up together for sleep.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
END 

CHAIN X3EmiJ BathJoin.6 
~I am. Or at least I will be.~
EXTERN X3EmiJ BathJoin.4

CHAIN X3EmiJ BathJoin.3 
~(She closes her eyes at your touch, exhaling softly.)~
EXTERN X3EmiJ BathJoin.2

CHAIN X3EmiJ Inn3
~(You find Emily drinking wine from a goblet at a table.)~
= ~I know, typical noble drinking wine. Don't make fun of me, it's not fancy, I promise.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Drink","LOCALS",0)~+ ~Mind if I have a drink with you?~ DO ~SetGlobal("X3Drink","LOCALS",1)~ + Drink1
+~Global("X3Drink","LOCALS",1)~+ ~Mind if I have a drink with you?~ DO ~SetGlobal("X3Drink","LOCALS",2)~  + Drink2 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Kiss her~ + KissWine
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your drink.~ + RestExit 

CHAIN X3EmiJ Drink1 
~I don't! Maybe you'd like to try this. It's imported from Tethyr, if I remember right, a nice sweet tasting red.~
END 
++ ~Sure, I'll take some of that.~ + Drink1.1 
++ ~I'm going to order something else, actually.~ + Drink1.2

CHAIN X3EmiJ Drink1.1
~There. Rich and sweet, isn't it?~
END 
++ ~Definitely.~ + Drink1.4 
++ ~Er, it's not that good, actually.~ + Drink1.5
++ ~Do you like it this sweet?~ + Drink1.6

CHAIN X3EmiJ Drink1.4 
~Well, you know what you should start getting then, hmm?~
EXTERN X3EmiJ Drink1.3 

CHAIN X3EmiJ Drink1.5
~Ah, that's dissapointing. I'll have to think of something else for you to try next time.~
EXTERN X3EmiJ Drink1.3 

CHAIN X3EmiJ Drink1.6
~Me? Oh definitely. The sweeter, the better.~
EXTERN X3EmiJ Drink1.3

CHAIN X3EmiJ Drink1.2 
~As you wish, then.~
EXTERN X3EmiJ Drink1.3 

CHAIN X3EmiJ Drink1.3
~I guess I like drinking this wine to bring me thoughts of home. I remember when I had my first, I kind of spit it out just from the taste.~
= ~My stepmother gave me such a look. I eventually learned to appreciate it, though.~
END 
++ ~I imagine it to be part of what nobles do.~ + Drink1.7
++ ~So you drink it even if it doesn't taste good?~ + Drink1.8
++ ~It sounds like you have a lot of decorum and rules.~ + Drink1.9

CHAIN X3EmiJ Drink1.7
~It is more expensive, and it does bring images of nobleness, good taste, wealth, and strength. But I don't really drink it for those reasons.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink1.8
~Well, it tastes good to me now. It just grew on me. It might just be one of those child to adult transitions.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink1.9
~Haha, oh <CHARNAME>, you have *no* idea. Let us just say I learned to better deal with odd tasting things in my mouth. Some of the things the cooks made, sometimes...~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink2
~Make yourself comfortable!~
= ~It's nice to have a glass when we have the opportunity. Just something to simmer down and relax from our quest and all the danger it entails.~
END 
++ ~Is this how you would relax back home?~ + Drink2.1 
++ ~You could drink wine while on the road, too.~ + Drink2.2
++ ~We can never get too comfortable, Emily. We always have to be alert.~ + Drink2.3

CHAIN X3EmiJ Drink2.1 
~Erm, with friends. But you are always comfortable in the estate, unless there was some family fight that had just happened. So I never felt the need.~
EXTERN X3EmiJ Drink2.4

CHAIN X3EmiJ Drink2.2 
~Ha, I know. But it's not the same as relaxing in an actual inn or home.~
EXTERN X3EmiJ Drink2.4

CHAIN X3EmiJ Drink2.3 
~I know why you say that. I don't think I could live with a mindset that was always looking behind her. I guess that's why I'm glad to be traveling in a group and not alone.~
EXTERN X3EmiJ Drink2.4

CHAIN X3EmiJ Drink2.4
~But I don't regret leaving home. No matter what happens, I don't think that will change. Do you feel the same?~
END 
++ ~I never had the choice to regret, Emily.~ + Drink2.5 
++ ~About you leaving home? I definitely am happy that you did.~ DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@113)~ + Drink2.6 
++ ~Sometimes I wish I had a more comfortable life.~ + Drink2.7

CHAIN X3EmiJ Drink2.5
~I see. I forget that the choice isn't always there for everyone.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink2.6
~Uh, I meant you! Not me. Oh nevermind. I'm glad for your response all the same.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink2.7
~I think one day, you may get that chance. Maybe.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ KissWine
~(Her lips taste of the sweetness of wine. She withdraws after she allows you a shortwhile, too short for your liking.)~
= ~Mmm. If we weren't in public I'd have let you have a few more of those.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Drink","LOCALS",0)~+ ~Mind if I have a drink with you?~ DO ~SetGlobal("X3Drink","LOCALS",1)~ + Drink1
+~Global("X3Drink","LOCALS",1)~+ ~Mind if I have a drink with you?~ DO ~SetGlobal("X3Drink","LOCALS",2)~  + Drink2 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your drink.~ + RestExit 

CHAIN X3EmiJ compliment
~Ha. Charming flatterer. Not that I mind.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@113)~
= ~What did you want to talk about?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit

CHAIN X3EmiJ StayTalk
~Stay and talk for a while?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~Tell me a story about yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Tell me a story about yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~Tell me a story about yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice about our journey?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice about our journey?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice about our journey?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice about our journey?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I'm sorry. I should get some rest.~ + RestExit 


CHAIN X3EmiJ Talks
~Well, I'm game. What do you want to talk about?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3EmiJ HealthHigh1 
~Just fine. I appreciate you checking on me.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ HealthHighLove1 
~Just fine, love. I appreciate you checking on me.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthHigh2
~No lingering wounds, just some minor things at the most.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ HealthHighLove2
~I love it when you worry about me. But I'm fine, I promise.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthLow1 
~A few scratches and bruises. This one here looks like it will form into a pretty scar.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ HealthLowLove1 
~I'm definitely sore from my wounds. I hope I still look pleasing to you.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthLowLove2 
~I'm in a bit of pain to be honest. But seeing you makes it a little easier to smile despite that.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthLow2 
~I'm in a bit of pain, but it will take care of itself with some rest.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ PlayerHealthy1 
~You seem to be doing well. I'm glad for that.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3EmiJ PlayerHealthy2 
~You seem to be okay yourself. It seems no matter how many times you get knocked, you seem to just keep going though. Definitely impressive.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3EmiJ PlayerHealthyLove1 
~I am just glad you are all right. I am here to help you, my love. I'd be a failure if you were seriously hurt or killed.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3EmiJ PlayerHealthyLove2 
~As long as you are well, <CHARNAME>, then my heart is happy irregardless of if I'm hurt or not. Though definitely more happy if I'm not hurt.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3EmiJ PlayerHurt1 
~I know you are worried about me...your injuries are pretty strenuous. I hope you take some time to tend to them.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3EmiJ PlayerHurt2 
~But don't worry about me. You're pretty hurt yourself. But I guess we're both alive.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3EmiJ PlayerHurtLove1 
~But here you are asking me but look at you. I'm amazed at how much you can bear and still walk, my love.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3EmiJ PlayerHurtLove2 
~I am more worried about you, love. I know you can take almost anything, but sometimes your injuries scare me.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3EmiJ Story1 
~Well, I could tell you about my travels from Tethyr all the way to Beregost long ago, when I first began my search for my mother.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
= ~I had a horse. I don't think I ever told you. His name was Pesky. Yes, he was pesky, but noble and brave, too. I wasn't the best rider, but the journey is otherwise terribly long on foot.~
= ~We were just about to cross the border out of Amn when I came upon a merchant couple who were ambushed by a couple of brigands. Their own horse has been slain and they were either about to lose their goods or their life.~
= ~I managed to take down one with two good shots and scared the other away, but the merchant couple had no way to pull their cart anymore.~
END 
++ ~Did you offer to help them?~ + Story1.1 
++ ~That was noble of you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + Story1.2 
++ ~They should have hired protection.~ + Story1.3

CHAIN X3EmiJ Story1.1 
~Yes. I gave them Pesky.~
END 
++ ~That must have been hard, to go without your horse.~ + Story1.4
++ ~Sometimes you are too selfless, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ ~You traveled the rest of the way alone on foot?~ + Story1.5

CHAIN X3EmiJ Story1.2 
~I don't know about that. It's not so hard to shoot an arrow at an unmoving bandit when the aren't paying attention.~
= ~When they were dealt with, I decided to give them Pesky, so they wouldn't be stuck or forced to leave without their goods.~
END 
++ ~That must have been hard, to go without your horse.~ + Story1.4
++ ~Sometimes you are too selfless, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ ~You traveled the rest of the way alone on foot?~ + Story1.5

CHAIN X3EmiJ Story1.3 
~I doubt they could afford it and turn a profit. I almost thought of offering myself but I really needed to get north, and they were going back towards Tethyr.~
= ~So I gave them Pesky. It wasn't an easy decision, but I didn't want them to have to leave their goods behind with no one to carry the wagon.~
END 
++ ~That must have been hard, to go without your horse.~ + Story1.4
++ ~Sometimes you are too selfless, Emily.~ + Story1.4
++ ~You traveled the rest of the way alone on foot?~ + Story1.5

CHAIN X3EmiJ Story1.4
~I like to believe that one day I'll run into the merchant couple and see Pesky again. Being a good horse. And pesky, of course.~
EXTERN X3EmiJ RestLate 
 
CHAIN X3EmiJ Story1.5
~My legs were less appreciative, but it was amazing to be able to explore the country on foot. I learned a lot about staying out of sight and surviving the wilderness.~
= ~I think it helped really prepare me for well, my time with you.~
EXTERN X3EmiJ Story1.4

CHAIN X3EmiJ Story2
~Well, I can tell you one of my childhood stories of how I embarrased myself and nearly revealed my heritage to everyone.~
= ~So, as a member of a noble house, we were always required to attend social occasions we didn't always desire to. Father was entertaining a rival noble house to try to ease some tensions.~
= ~There was a bard playing music and fine cooked wine and food, but their entire family was so old. One of them was trying to be friendly and asked me to dance.~
= ~I kept stepping on his shoes over and over again, I did it so many times he started to get angry and thought I was doing it on purpose.~
END 
++ ~Were you that clumsy?~ + Story2.4
++ ~His poor feet.~ + Story2.5
++ ~If you need dance lessons, I could help.~ + Story2.6

CHAIN X3EmiJ Story2.1 
~Clumy? No. Nervous? Very!~
EXTERN X3EmiJ Story2.4

CHAIN X3EmiJ Story2.2 
~Yeah...poor feet.~
EXTERN X3EmiJ Story2.4

CHAIN X3EmiJ Story2.3
~I wouldn't mind. But I've gotten much better. I was pretty much forced to have lessons for weeks after that.~
EXTERN X3EmiJ Story2.4

CHAIN X3EmiJ Story2.4
~He had moved to slap me but hit the hat I was wearing. Father was mortified, and Thomas had charged over to pull him away.~
= ~I slipped it on before anyone could notice and never told my brother thank you...I wish I did. It wasn't long after that we began to grow apart.~
END 
++ ~You could have done it anytime afterwards.~ + Story2.5
++ ~Is your brother really that bad?~ + Story2.6
++ ~Could you be sure no one saw anything?~ + Story2.7

CHAIN X3EmiJ Story2.5
~I should have. Maybe I forgot or just wanted to forget that I didn't remember to be grateful for him.~
EXTERN X3EmiJ RestLate

CHAIN X3EmiJ Story2.6
~He wasn't then. And he isn't...evil now. Just...just not as caring of others.~
EXTERN X3EmiJ RestLate

CHAIN X3EmiJ Story2.7
~Part of me thinks Thomas did. But I also think he always knew. I wonder if he protected me for the family than myself, sometimes, but I still appreciated what he did.~
= ~I just wish we were still as close.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Story3 
~Oh, I can definitely think of one.~
= ~A noble lady was before her lover. She desired him greatly, but did not know how to say it without being too forward.~
= ~So she tapped her fingers on her lips and thought and thought, giving him a look that she hoped he could read.~
END 
++ ~Oh? And how did he respond?~ + Story3.1 
++ ~Wait, are you...~ + Story3.1
++ ~If you want to bed me, you only need to say so.~ + Story3.2

CHAIN X3EmiJ Story3.1
~You tell me.~
END  
++ ~I am guessing he asked her what was wrong, confused still?~ + Story3.3
++ ~(Kiss her.)~ + Sleep.10 
++ ~Perhaps we should...retire and see how this plays out?~ + Sleep.8

CHAIN X3EmiJ Story3.2
~That wouldn't be as cute, would it?~
END 
++ ~(Kiss her.)~ + Sleep.10 
++ ~Perhaps we should...retire and see how this plays out?~ + Sleep.8
++ ~Another time though. I am a bit weary.~ + Story3.4

CHAIN X3EmiJ Story3.3
~Oh, <CHARNAME>.~
= ~(She pulls you to her, giving you a fierce kiss, biting your lip slightly.)~
END 
++ ~(Kiss her back.)~ + Sleep.10 
++ ~Oh, so that's what you mean. Let's...retire, then.~ + Sleep.8
++ ~I love you dearly, Emily. But let's do this another night.~ + Story3.4

CHAIN X3EmiJ Story3.4
~I understand. But I hope that I am not kept wanting forever though, my love.~
EXTERN X3EmiJ RestExit

CHAIN X3EmiJ advice2 
~Well, we are trying to raise money, aren't we? There are all sorts of people who need help. It may take some time, but you could use this opportunity to really make a difference.~
END 
++ ~Not everyone who needs help has money, Emily.~ + advice2.1 
++ ~I plan to.~ + advice2.2
++ ~I need to get the coin as fast as I can. Time is of the essence.~ + advice2.3

CHAIN X3EmiJ advice2.1 
~I know. But even those who can pay less shouldn't be ignored.~
= ~You are our leader in the end, though. I'll do whatever you think is best. But I would be happy if we could make a good difference while we can.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice2.2
~I am glad. I know not everyone can pay well, but...it is good to help these people while we can.~
= ~And we'll want to be prepared if we're going to go against Cowled Wizards. Which is a very poor idea, if you are wondering. But I'll follow you wherever you point. Just don't point off a cliff.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice2.3
~You must really care for her...or really despise the mage you were facing, then. I guess I can understand how you feel.~
= ~That gold alone won't necessarily also buy us equipment. It could do well to be prepared. Getting killed trying to save her or even trying to earn the gold won't do anyone any good.~
EXTERN X3EmiJ RestLate 
//Emily is the only one without a split here.
CHAIN X3EmiJ advice3 
~I am not really comfortable working with these thieves. I am a bit worried we're even being conned.~
END 
++ ~There isn't any other way, Emily.~ + advice3a.1 
++ ~I don't think the other option was any better.~ + advice3a.1 
++ ~They'll follow through or suffer the consequences.~ + advice3a.2

CHAIN X3EmiJ advice3a.1 
~You are right. I do agree. Hopefully our faith in them isn't misplaced.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice3a.2
~I am not sure they are a group so easily wrangled to suffer the consequences. But! I hope it doesn't come to that.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice4 
~You know, if it were any other time, and there weren't pirates and criminals here, and there were at least some more decent people...this could be a nice spot for relaxation.~
= ~But it's not. Honestly, the only advice I have? Just get our business done and get out of this place.~
END 
++ ~That I can agree with.~ + advice4.1 
++ ~Not fond of pirates, then?~ + advice4.2
++ ~I can see what you are saying. This would be a nice island if it wasn't pirate infested.~ + advice4.3

CHAIN X3EmiJ advice4.1
~Well then, we are two arrows in a quiver, aren't we?~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice4.2 
~People who grope and rob you and smell of alcohol? Nope. Not one bit.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice4.3
~Exactly...and maybe if you changed all the buildings. And took away the giant prison in the distance. Hrm, maybe it is hopeless.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice6
~I don't think you need my advice on this, do you, <CHARNAME>.~
= ~We have to stop Irenicus, and get back what you lost. There might be somethings to do first but...honestly as far as I know you are on borrowed time.~
END 
++ ~Don't worry about me. I will be okay.~ + advice6.1
++ ~Then we are in agreement on this.~ + advice6.2
++ ~You are certain we can best him?~ + advice6.3

CHAIN X3EmiJ advice6.1
~I hope so, <CHARNAME>. We can't do this without you.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice6.2
~Good. I like it when we agree on things!~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice6.3
~I don't know. I know that if we don't try, that we definitely can't. But that if we do, we *might* succeed, and that is good enough.~
EXTERN X3EmiJ RestLate 


CHAIN X3EmiJ RestLove 
~Do you wish to erm...sleep with me?~
END
++ ~I would love to.~ + Sleep.9 
++ ~I would rather sleep alone.~ + Snuggle.3

CHAIN X3EmiJ RestLove3 
~Do you wish to cuddle with me?~
END 
++ ~I would love to.~ + Snuggle.5
++ ~I would rather sleep alone.~ + Snuggle.3

CHAIN X3EmiJ Sleep.10 
~(You capture her lips with hers, and she eagerly tugs you over to her resting place.)~
EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Sleep.9 
~(She grins and tugs you over to her resting place, before she hungrily moves to capture your lips with hers.)~
EXTERN X3EmiJ Sleep 

CHAIN X3EmiJ Snuggle.5
~(She grins and tugs you over to her resting place, before she gives you a short, chaste kiss on the lips.)~
EXTERN X3EmiJ Snuggle.1 

CHAIN X3EmiJ Snuggle.6
~I understand. Come. (She takes your hand and tugs you over to her resting place, before she gives you a short, chaste kiss on the lips.)~
EXTERN X3EmiJ Snuggle.1

CHAIN X3EmiJ RestLove2
~Rest then!~
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle.5
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ RestLove2B 

CHAIN X3EmiJ RestLove2B 
~Or, are you up for something..."else"?~ 
END 
++ ~I can't say no to a beautiful lady.~ + Sleep.9
++ ~I'm down if you are.~ + Sleep.9
++ ~Let's just get some actual rest.~ + Snuggle.6
++ ~As tempting as that sounds, we need sleep.~ + Snuggle.6



CHAIN X3EmiJ RestLate 
~It's getting late though. We should get some sleep.~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ RestLove
IF ~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ RestLove3
IF ~!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ RestExit

CHAIN X3EmiJ RestExit 
~Rest well, <CHARNAME>.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 
// Outdoor 
CHAIN X3EmiJ Outdoor1
~(You watch Emily draw back a bow string, arrow in hand. She takes a deep breath and lets it whisk off towards one of three target's she's quickly set up for herself. She turns and flashes a small smile as you approach.)~
= ~I thought to get in some repetitions. Maybe to find a part of my form to improve on.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Mind training me a bit with a bow?~ + Activity
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Kiss her.)~ + KissActivity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together in your tent?~ + Snuggle.4 
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together in our tent?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you practice.~ + RestExit 

CHAIN X3EmiJ KissActivity 
~(She grins after your display of affection, stroking your cheek.) I can't shoot if you are kissing me. But I guess I can take a break.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Mind training me a bit with a bow?~ + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you practice.~ + RestExit 

CHAIN X3EmiJ Activity 
~Sure! Take my bow here.~
= ~So. See that targets over there? Draw it back, keep it level with your shoulder, and then as you draw the arrow, hold your breathe. Once you release it, let both your air and the arrow fly.~
= ~You can pick the far range, mid range, or close range target, whichever you want. Let's see how you do.~
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
++ ~Ah, on second thought, I'm rather tired. I'll let you shoot.~ + RestExit 

CHAIN X3EmiJ MissNear 
~Hrm, you missed. Care for another try? Remember, take a deep breath, and focus. Let it out when you are ready.~
END 
+~CheckStatLT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
++ ~I think I'm too tired for this. I'll let you shoot on your own.~ + RestExit 

CHAIN X3EmiJ HitNear 
~Ah, perfect! Perhaps you want to try one of the further ones, now?~
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you keep shooting and get some rest.~ + RestExit 

CHAIN X3EmiJ MissMiddle 
~Ah, that was a bad miss. Give it a second try. Remember to focus and know how the arrow arches and curves, and keep in mind any wind.~
END 
+~CheckStatLT(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + HitMiddle 
+~CheckStatGT(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + HitMiddle
++ ~I think I'm too tired for this. I'll let you shoot on your own.~ + RestExit 

CHAIN X3EmiJ HitMiddle 
~Great work! Now if you dare, take on the furthest target as a challenge.~
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you keep shooting and get some rest.~ + RestExit 

CHAIN X3EmiJ MissFar
~It's a challenge, isn't it? Focus and take your time. Think of where your shot landed and adjust your position accordingly. You can do this.~
END 
+~CheckStatLT(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the furthest target.)~ + HitFar
+~CheckStatGT(Player1,15,DEX)~+ ~(Let another arrow fly to the furthest target.)~ + HitFar
++ ~I think I'm too tired for this. I'll let you shoot on your own.~ + RestExit 

CHAIN X3EmiJ MissTwice
~Ah, well, that one was closer. I think you're just a bit tired. With more practice you'll have it down for sure.~
END 
++ ~Ha, I don't think I'm cut out for archery.~ + Activity.1 
++ ~Thanks, Emily. I'll be sure to get it next time.~ + Activity.2
++ ~I'll let you keep shooting and get some rest.~ + RestExit

CHAIN X3EmiJ HitFar 
~Wow, that was impressive! It always takes me a couple to land that kind of distance.~
DO ~SetGlobal("X3Activity","LOCALS",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
END 
IF ~OR(2)!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~ + Activity.3
IF ~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~ + Activity.4

CHAIN X3EmiJ Activity.3 
~I might have to start learning from you at this rate!~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Activity.1 
~I guess it's not easy to get down in a day, but you didn't do that bad, honest.~
EXTERN X3EmiJ RestLate  

CHAIN X3EmiJ Activity.2 
~I know you will. You are brilliant, you know.~
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Activity.4 
~(After taking back her bow, she takes you by the hand.) You are coming with me after that performance.~
END 
++ ~Where are we going?~ + Sleep.9
++ ~(Let her lead.)~ + Sleep.9
++ ~I know what you are up to, but I really want to just get some rest.~ + Activity.6



CHAIN X3EmiJ Activity.6
~Oh. Well, do you wish to cuddle with me instead?~
END 
++ ~I would love to.~ + Snuggle.5
++ ~I would rather sleep alone.~ + Snuggle.3

CHAIN X3EmiJ Outdoor2
~(You find Emily inside her tent, sliding off her weapons and equipment against the sides as she prepares for resting.)~
= ~Oh, hey!~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Move to hold her close.)~ + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Move to hold her close.)~ + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Move to hold her close.)~ + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Kiss her.)~ + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Kiss her.)~ + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Kiss her.)~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together in your tent?~ + Snuggle.4 
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together in our tent?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you practice.~ + RestExit 
// ToB Emily
CHAIN X3Emi25J Inn
~(You find Emily in a bedroom, the door ajar, fiddling with her supplies.)~
== X3Emi25J IF ~AreaCheck("AR5003")~ THEN ~Ah, <CHARNAME>! Nice to have a proper bed...as long as the ceiling doesn't suddenly collapse.~
== X3Emi25J IF ~!AreaCheck("AR5003")~ THEN ~Ah, <CHARNAME>! Nice to have a proper bed...though the inn here is humbler than others.~
END 
++ ~Do you have time to talk?~ + Talks 
+~GlobalGT("X3ECraft","GLOBAL",0)GlobalLT("X3ECraft","GLOBAL",14)~+ ~What is the state of your fletching supplies?~ + FletchGood
+~!GlobalLT("X3ECraft","GLOBAL",14)~+ ~What is the state of your fletching supplies?~ + FletchLow
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Move to hold her close.)~ + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Move to hold her close.)~ + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Move to hold her close.)~ + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Kiss her.)~ + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Kiss her.)~ + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Kiss her.)~ + Kiss3
+~Global("X3EmiRomanceActive","GLOBAL",2)~+~Would you like to bathe with me?~+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How about we spend the night together?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3Emi25J Hug1
~(She embraces you in turn, resting her head against you.)~
END 
IF ~RandomNum(4,1)~ EXTERN X3Emi25J StayTalk
IF ~RandomNum(4,2)~ EXTERN X3Emi25J Kiss4
IF ~RandomNum(4,3)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(4,4)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Hug2
~I've not run off on you, you don't have to hold me so tight. At least, not yet.~
END 
IF ~RandomNum(4,1)~ EXTERN X3Emi25J StayTalk
IF ~RandomNum(4,2)~ EXTERN X3Emi25J Kiss4
IF ~RandomNum(4,3)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(4,4)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Hug3 
~(She lets out a sigh of comfort as you hold her.) I like this.~
END  
IF ~RandomNum(4,1)~ EXTERN X3Emi25J StayTalk
IF ~RandomNum(4,2)~ EXTERN X3Emi25J Kiss4
IF ~RandomNum(4,3)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(4,4)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss1 
~(You feel her breath release against your lips as you kiss one another, warm and ticklish. Her lips form into a grin as she moves in for a second.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss2 
~(Her mouth seems to mold perfectly against yours, as if yearning to never let go. You think you hear the whisper of her name from her lips.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss3 
~Mmm. Your kisses never grow boring. It's like sweet delicious cake.~
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss4 
~(With little warning, she moves her lips to yours, giving you the warmth of a kiss, and then a second, and then a third.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Snuggle 
~Cuddle with me?~
END 
++ ~I'd be glad to.~ + Snuggle.1 
++ ~I was hoping we could do...more then that.~ + Sleep.10
++ ~I think I'd rather sleep alone.~ + Snuggle.3 // Ouch. Probably a minor loss here, but no break.

CHAIN X3Emi25J Snuggle.1 
~(She pulls you to the bedding, then cuddles closely to you, the comfort of eachother's presence lulling you to sleep.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Emi25J Snuggle.3 
~I...I see. Rest well, then.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 




CHAIN X3Emi25J Snuggle.2 
~I...am not ready. Not yet. But when I am, there isn't anyone else I would rather do that with. If you don't want to stay for the night still, I understand.~
END 
++ ~I'd be glad to.~ + Snuggle.1
++ ~I don't. I'll sleep alone.~ + Snuggle.3 // No loss in this version.

CHAIN X3Emi25J Sleep.10
~Hrm. I don't know...let me think...~
EXTERN X3Emi25J Sleep.9

CHAIN X3Emi25J Sleep 
~(Her hands begin to remove your clothes, kissing open parts of your skin as they reveal themselves to her.)~
END 
++ ~(Let her finish.)~ + Sleep.1
++ ~(Start taking off her own clothes.)~ + Sleep.2 
++ ~(Stop her.) Not tonight, Emily.~ + Sleep.3

CHAIN X3Emi25J Sleep.1
~(She tugs off your clothes, admiring you for a moment with her eyes, before reaching to take off her own clothes.)~
EXTERN X3Emi25J Sleep.4 

CHAIN X3Emi25J Sleep.2 
~(She lets your hands trail to unlace and taken down her garments, laying peppered kisses while you work.)~
EXTERN X3Emi25J Sleep.4 

CHAIN X3Emi25J Sleep.4 
~(Once you are both relieved from the burden of garment, she tugs you over to the bedding.)~
END
++ ~(Let her lead.)~ + Sleep.5 
++ ~(Take the lead.)~ + Sleep.6

CHAIN X3Emi25J Sleep.5
~(She brings you on to the bedding, kissing down, down, down...before she suddenly jerks back up and moves back to kiss your lips, straddling you with her legs.)~
= ~(She merges you with her, whispering your name several times through your joined passion, until you are both a sweaty mess panting beside one another.)~
EXTERN X3Emi25J Sleep.7

CHAIN X3Emi25J Sleep.6
~(She gasps as you push her to the bedding, her eyes watching you as your bodies set to align together, her arms wrapping around your back.)~
= ~(You merge with her, and you feel her whisper your name into your ear several times through your joined passion, until you are both a sweaty, panting mess beside one another.)~
EXTERN X3Emi25J Sleep.7

CHAIN X3Emi25J Sleep.7
~(Her head rests on your chest, and eventually the rhythm of your joined breathing lulls you to sleep.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Emi25J Sleep.8
~I thought you would never ask.~
= ~(She kisses you, slowly, with a hungry yearning as her hands wander over you, before wrapping you close.)~
EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Sleep.3 
~Oh. I...understand. Can we still cuddle?~
END 
++ ~Gladly.~ + Snuggle.1
++ ~I think I'd rather sleep alone.~ + Snuggle.3 // Ouch. Probably a minor loss here, but no break.


CHAIN X3Emi25J FletchGood 
~Pretty good. I haven't used too much of my supplies. It couldn't hurt to get more though.~
END 
++ ~Good, just making sure your supplies are good.~ + Fletch.Exit 
++ ~What would you need to get more supplies?~ + Fletch.2 

CHAIN X3Emi25J FletchLow 
~I am getting a little low. I'll craft more whenever you ask, just be mindful I only have a little bit of supplies left.~
END 
++ ~Thanks for letting me know, Emily.~ + Fletch.Exit 
++ ~What would you need to get more supplies?~ + Fletch.3

CHAIN X3Emi25J Fletch.2 
~Hrm. I think with fifteen hundred gold I could buy what I need. It is up to you.~
END 
+~PartyGoldGT(1499)~+ ~Let's do it. Here's fifteen hundred.~ DO ~TakePartyGold(1500)SetGlobal("X3ECraft","GLOBAL",0)~ + Fletch.4
++ ~That's a bit too much.~ + Fletch.Exit 
++ ~I'll think about it and get back to you later.~ + Fletch.Exit 

CHAIN X3Emi25J Fletch.3 
~Hrm. I think with fifteen hundred gold I could buy what I need. It is up to you.~
END 
+~PartyGoldGT(1499)~+ ~Let's do it. Here's fifteen hundred.~ DO ~TakePartyGold(1500)IncrementGlobal("X3ECraft","GLOBAL",-15)~ + Fletch.4
++ ~That's a bit too much.~ + Fletch.Exit 
++ ~I'll think about it and get back to you later.~ + Fletch.Exit 

CHAIN X3Emi25J Fletch.4 
~Great! I'll find some time to go and get more supplies, see if there are any stores open.~
EXTERN X3Emi25J RestExit 

CHAIN X3Emi25J Fletch.Exit 
~Anything else, then?~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How about we spend the night together?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3Emi25J BathYes 
~I'd like that.~
EXTERN X3Emi25J BathJoin 

CHAIN X3Emi25J BathJoin
~(She joins your hand with hers as she takes you to the inn's baths, bringing you with her into a prepared tub.)~
= ~(When she climbs into the water, you are suprised to find she neither moves to act on intimacy or to wash, but instead relaxes her body and leans her head against you.)~
END 
++ ~Tired, are we?~ + BathJoin.1 
++ ~Shouldn't be washing?~ + BathJoin.2 
++ ~(Put your arm around her.)~ + BathJoin.3

CHAIN X3Emi25J BathJoin.1 
~Yeah. That and...~
EXTERN X3Emi25J BathJoin.2 

CHAIN X3Emi25J BathJoin.2
~I just want to take in this feeling. Warm and safe and comfortable. It won't last for long. Soon we'll be out on the road again.~
= ~(Her hand grazes your cheek as she turns to look at you. Her eyes flicker downward.)~
END 
++ ~We'll make it.~ + BathJoin.5
++ ~(Lift her face upwards to look at yours.)~ + BathJoin.4 
++ ~Are you all right?~ + BathJoin.6

CHAIN X3Emi25J BathJoin.5
~I hope so.~
EXTERN X3Emi25J BathJoin.4

CHAIN X3Emi25J BathJoin.4 
~(Her eyes look to yours, before she leans forward and gives you a short, sweet kiss, before her hands move quietly to wash you with water and soap. She remains quiet, focused entirely on her task before guiding you to do the same.)~
= ~(She moves her head back to lean against you when you are done, for several long moments. Your skins have become soft and wrinkled from the water by the time you leave to rest for the eve to snuggle up together for sleep.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
END 

CHAIN X3Emi25J BathJoin.6 
~I am. Or at least I will be.~
EXTERN X3Emi25J BathJoin.4

CHAIN X3Emi25J BathJoin.3 
~(She closes her eyes at your touch, exhaling softly.)~
EXTERN X3Emi25J BathJoin.2

CHAIN X3Emi25J compliment
~Ha. Charming flatterer. Not that I mind.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@113)~
= ~What did you want to talk about?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit

CHAIN X3Emi25J StayTalk
~Stay and talk for a while?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How are you doing?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~Tell me a story about yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Tell me a story about yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Tell me a story about yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice about our journey?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice about our journey?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I'm sorry. I should get some rest.~ + RestExit 


CHAIN X3Emi25J Talks
~Well, I'm game. What do you want to talk about?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3Emi25J HealthHigh1 
~Just fine. I appreciate you checking on me.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J HealthHighLove1 
~Just fine, love. I appreciate you checking on me.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthHigh2
~No lingering wounds, just some minor things at the most.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J HealthHighLove2
~I love it when you worry about me. But I'm fine, I promise.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthLow1 
~A few scratches and bruises. This one here looks like it will form into a pretty scar.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J HealthLowLove1 
~I'm definitely sore from my wounds. I hope I still look pleasing to you.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthLowLove2 
~I'm in a bit of pain to be honest. But seeing you makes it a little easier to smile despite that.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthLow2 
~I'm in a bit of pain, but it will take care of itself with some rest.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J PlayerHealthy1 
~You seem to be doing well. I'm glad for that.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~I should get some rest.~ + RestExit 

CHAIN X3Emi25J PlayerHealthy2 
~You seem to be okay yourself. It seems no matter how many times you get knocked, you seem to just keep going though. Definitely impressive.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~I should get some rest.~ + RestExit 

CHAIN X3Emi25J PlayerHealthyLove1 
~I am just glad you are all right. I am here to help you, my love. I'd be a failure if you were seriously hurt or killed.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~Let's get some rest.~ + RestLove2


CHAIN X3Emi25J PlayerHealthyLove2 
~As long as you are well, <CHARNAME>, then my heart is happy irregardless of if I'm hurt or not. Though definitely more happy if I'm not hurt.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~Let's get some rest.~ + RestLove2


CHAIN X3Emi25J PlayerHurt1 
~I know you are worried about me...your injuries are pretty strenuous. I hope you take some time to tend to them.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~I should get some rest.~ + RestExit 

CHAIN X3Emi25J PlayerHurt2 
~But don't worry about me. You're pretty hurt yourself. But I guess we're both alive.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~I should get some rest.~ + RestExit 

CHAIN X3Emi25J PlayerHurtLove1 
~But here you are asking me but look at you. I'm amazed at how much you can bear and still walk, my love.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~Let's get some rest.~ + RestLove2

CHAIN X3Emi25J PlayerHurtLove2 
~I am more worried about you, love. I know you can take almost anything, but sometimes your injuries scare me.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ ~Let's get some rest.~ + RestLove2

CHAIN X3Emi25J Story1 
~Well, I could tell you about my travels from Tethyr all the way to Beregost long ago, when I first began my search for my mother.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
= ~I had a horse. I don't think I ever told you. His name was Pesky. Yes, he was pesky, but noble and brave, too. I wasn't the best rider, but the journey is otherwise terribly long on foot.~
= ~We were just about to cross the border out of Amn when I came upon a merchant couple who were ambushed by a couple of brigands. Their own horse has been slain and they were either about to lose their goods or their life.~
= ~I managed to take down one with two good shots and scared the other away, but the merchant couple had no way to pull their cart anymore.~
END 
++ ~Did you offer to help them?~ + Story1.1 
++ ~That was noble of you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~  + Story1.2 
++ ~They should have hired protection.~ + Story1.3

CHAIN X3Emi25J Story1.1 
~Yes. I gave them Pesky.~
END 
++ ~That must have been hard, to go without your horse.~ + Story1.4
++ ~Sometimes you are too selfless, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ ~You traveled the rest of the way alone on foot?~ + Story1.5

CHAIN X3Emi25J Story1.2 
~I don't know about that. It's not so hard to shoot an arrow at an unmoving bandit when the aren't paying attention.~
= ~When they were dealt with, I decided to give them Pesky, so they wouldn't be stuck or forced to leave without their goods.~
END 
++ ~That must have been hard, to go without your horse.~ + Story1.4
++ ~Sometimes you are too selfless, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ ~You traveled the rest of the way alone on foot?~ + Story1.5

CHAIN X3Emi25J Story1.3 
~I doubt they could afford it and turn a profit. I almost thought of offering myself but I really needed to get north, and they were going back towards Tethyr.~
= ~So I gave them Pesky. It wasn't an easy decision, but I didn't want them to have to leave their goods behind with no one to carry the wagon.~
END 
++ ~That must have been hard, to go without your horse.~ + Story1.4
++ ~Sometimes you are too selfless, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ ~You traveled the rest of the way alone on foot?~ + Story1.5

CHAIN X3Emi25J Story1.4
~I like to believe that one day I'll run into the merchant couple and see Pesky again. Being a good horse. And pesky, of course.~
EXTERN X3Emi25J RestLate 
 
CHAIN X3Emi25J Story1.5
~My legs were less appreciative, but it was amazing to be able to explore the country on foot. I learned a lot about staying out of sight and surviving the wilderness.~
= ~I think it helped really prepare me for well, my time with you.~
EXTERN X3Emi25J Story1.4

CHAIN X3Emi25J Story2
~Well, I can tell you one of my childhood stories of how I embarrased myself and nearly revealed my heritage to everyone.~
= ~So, as a member of a noble house, we were always required to attend social occasions we didn't always desire to. Father was entertaining a rival noble house to try to ease some tensions.~
= ~There was a bard playing music and fine cooked wine and food, but their entire family was so old. One of them was trying to be friendly and asked me to dance.~
= ~I kept stepping on his shoes over and over again, I did it so many times he started to get angry and thought I was doing it on purpose.~
END 
++ ~Were you that clumsy?~ + Story2.4
++ ~His poor feet.~ + Story2.5
++ ~If you need dance lessons, I could help.~ + Story2.6

CHAIN X3Emi25J Story2.1 
~Clumy? No. Nervous? Very!~
EXTERN X3Emi25J Story2.4

CHAIN X3Emi25J Story2.2 
~Yeah...poor feet.~
EXTERN X3Emi25J Story2.4

CHAIN X3Emi25J Story2.3
~I wouldn't mind. But I've gotten much better. I was pretty much forced to have lessons for weeks after that.~
EXTERN X3Emi25J Story2.4

CHAIN X3Emi25J Story2.4
~He had moved to slap me but hit the hat I was wearing. Father was mortified, and Thomas had charged over to pull him away.~
= ~I slipped it on before anyone could notice and never told my brother thank you...I wish I did. It wasn't long after that we began to grow apart.~
END 
++ ~You could have done it anytime afterwards.~ + Story2.5
++ ~Is your brother really that bad?~ + Story2.6
++ ~Could you be sure no one saw anything?~ + Story2.7

CHAIN X3Emi25J Story2.5
~I should have. Maybe I forgot or just wanted to forget that I didn't remember to be grateful for him.~
EXTERN X3Emi25J RestLate

CHAIN X3Emi25J Story2.6
~He wasn't then. And he isn't...evil now. Just...just not as caring of others.~
EXTERN X3Emi25J RestLate

CHAIN X3Emi25J Story2.7
~Part of me thinks Thomas did. But I also think he always knew. I wonder if he protected me for the family than myself, sometimes, but I still appreciated what he did.~
= ~I just wish we were still as close.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J Story3 
~Oh, I can definitely think of one.~
= ~A noble lady was before her lover. She desired him greatly, but did not know how to say it without being too forward.~
= ~So she tapped her fingers on her lips and thought and thought, giving him a look that she hoped he could read.~
END 
++ ~Oh? And how did he respond?~ + Story3.1 
++ ~Wait, are you...~ + Story3.1
++ ~If you want to bed me, you only need to say so.~ + Story3.2

CHAIN X3Emi25J Story3.1
~You tell me.~
END  
++ ~I am guessing he asked her what was wrong, confused still?~ + Story3.3
++ ~(Kiss her.)~ + Sleep.11
++ ~Perhaps we should...retire and see how this plays out?~ + Sleep.8

CHAIN X3Emi25J Story3.2
~That wouldn't be as cute, would it?~
END 
++ ~(Kiss her.)~ + Sleep.11
++ ~Perhaps we should...retire and see how this plays out?~ + Sleep.8
++ ~Another time though. I am a bit weary.~ + Story3.4

CHAIN X3Emi25J Story3.3
~Oh, <CHARNAME>.~
= ~(She pulls you to her, giving you a fierce kiss, biting your lip slightly.)~
END 
++ ~(Kiss her back.)~ + Sleep.11
++ ~Oh, so that's what you mean. Let's...retire, then.~ + Sleep.8
++ ~I love you dearly, Emily. But let's do this another night.~ + Story3.4

CHAIN X3Emi25J Story3.4
~I understand. But I hope that I am not kept wanting forever though, my love.~
EXTERN X3Emi25J RestExit

CHAIN X3Emi25J Sleep.11 
~(You capture her lips with hers, and she eagerly tugs you over to her resting place.)~
EXTERN X3Emi25J Sleep

CHAIN X3Emi25J advice8 
~Well, after all of our time in Suldanessellar? Surviving. From what I am understanding we are certainly going to have a bountiful amount of danger.~
END 
++ ~Are you suggesting we run?~ + advice8.1 
++ ~We'll survive. Don't worry about that.~ + advice8.2
++ ~Nothing we haven't dealt with before, then.~ + advice8.3

CHAIN X3Emi25J advice8.1 
~There is nowhere to run. We can only see this through. We've been to hell and back. I think we'll find a way. Hopefully, anyway.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice8.2
~We've been to hell and back. I think I stopped worrying about surviving and started being baffled about our very interesting life choices we make.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice8.3
~Exactly? Crazy, completely risky, and unreasonable decision-making that we somehow always make it with. If we can make it to hell and back, I think we can handle anything, now.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice9
~It seems simple. Stop the Five, remain alive. And I didn't mean to rhyme there, it just happened.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
= ~Each one of these bhaalspawn though are probably not going to be easy. We've already seen the extent of that.~
END 
++ ~I agree with you on that.~ + advice9.1 
++ ~Not doubting us, are you?~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + advice9.2
++ ~We'll stop them all. I am the greatest of the bhaalspawn.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + advice9.3

CHAIN X3Emi25J advice9.1
~I'd hope so. It would be silly to underestimate them. But I think we can do this.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice9.2 
~I'm not. But I don't want to lose anyone either because we got a bit arrogant. We're more powerful than ever...we just can't let that get to our heads.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice9.3
~You are very strong, <CHARNAME>. But if you let that get to your head, you'll do more harm than good for any of us. And I'm not keen on dying from underestimating my enemy if we can avoid it.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J RestLove 
~Do you wish to...sleep together?~
END 
++ ~I would love to.~ + Sleep.9 
++ ~I would rather sleep alone.~ + Snuggle.3

CHAIN X3Emi25J RestLove3 
~Do you wish to cuddle with me?~
END 
++ ~I would love to.~ + Snuggle.5
++ ~I was hoping we could do...more then that.~ + Sleep.10
++ ~I would rather sleep alone.~ + Snuggle.3

CHAIN X3Emi25J Sleep.9 
~(She grins and tugs you over to her resting place, before she hungrily moves to capture your lips with hers.)~
EXTERN X3Emi25J Sleep 

CHAIN X3Emi25J Snuggle.5
~(She grins and tugs you over to her resting place, before she gives you a short, chaste kiss on the lips.)~
EXTERN X3Emi25J Snuggle.1 

CHAIN X3Emi25J Snuggle.6
~I understand. Come. (She takes your hand and tugs you over to her resting place, before she gives you a short, chaste kiss on the lips.)~
EXTERN X3Emi25J Snuggle.1

CHAIN X3Emi25J RestLove2
~Just some rest? Or are you thinking of...something else?~
END 
++ ~I can't say no to a beautiful lady.~ + Sleep.9
++ ~I'm down if you are.~ + Sleep.9
++ ~Let's just get some actual rest.~ + Snuggle.6
++ ~As tempting as that sounds, we need sleep.~ + Snuggle.6



CHAIN X3Emi25J RestLate 
~It's getting late though. We should get some sleep.~
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J RestLove
IF ~RandomNum(2,2)~ EXTERN X3Emi25J RestLove3
IF ~~ EXTERN X3Emi25J RestExit

CHAIN X3Emi25J RestExit 
~Rest well, <CHARNAME>.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 
// Outdoor 
CHAIN X3Emi25J Outdoor1
~(You watch Emily draw back a bow string, arrow in hand. She takes a deep breath and lets it whisk off towards one of three target's she's quickly set up for herself. She turns and flashes a small smile as you approach.)~
= ~I thought to get in some repetitions. Maybe to find a part of my form to improve on.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Mind training me a bit with a bow?~ + Activity
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Kiss her.)~ + KissActivity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How about we spend the night together in our tent?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you practice.~ + RestExit 

CHAIN X3Emi25J KissActivity 
~(She grins after your display of affection, stroking your cheek.) I can't shoot if you are kissing me. But I guess I can take a break.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Mind training me a bit with a bow?~ + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you practice.~ + RestExit 

CHAIN X3Emi25J Activity 
~Sure! Take my bow here.~
= ~So. See that targets over there? Draw it back, keep it level with your shoulder, and then as you draw the arrow, hold your breathe. Once you release it, let both your air and the arrow fly.~
= ~You can pick the far range, mid range, or close range target, whichever you want. Let's see how you do.~
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
++ ~Ah, on second thought, I'm rather tired. I'll let you shoot.~ + RestExit 

CHAIN X3Emi25J MissNear 
~Hrm, you missed. Care for another try? Remember, take a deep breath, and focus. Let it out when you are ready.~
END 
+~CheckStatLT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ ~(Let the arrow fly to the nearest target.)~ + HitNear 
++ ~I think I'm too tired for this. I'll let you shoot on your own.~ + RestExit 

CHAIN X3Emi25J HitNear 
~Ah, perfect! Perhaps you want to try one of the further ones, now?~
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ ~(Let the arrow fly to the middle target.)~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you keep shooting and get some rest.~ + RestExit 



CHAIN X3Emi25J MissMiddle 
~Ah, that was a bad miss. Give it a second try. Remember to focus and know how the arrow arches and curves, and keep in mind any wind.~
END 
+~CheckStatLT(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + HitMiddle 
+~CheckStatGT(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + HitMiddle
++ ~I think I'm too tired for this. I'll let you shoot on your own.~ + RestExit 

CHAIN X3Emi25J HitMiddle 
~Great work! Now if you dare, take on the furthest target as a challenge.~
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ ~(Let the arrow fly to the furthest target.)~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you keep shooting and get some rest.~ + RestExit 

CHAIN X3Emi25J MissFar
~It's a challenge, isn't it? Focus and take your time. Think of where your shot landed and adjust your position accordingly. You can do this.~
END 
+~CheckStatLT(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the midddle target.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ ~(Let another arrow fly to the furthest target.)~ + HitFar
+~CheckStatGT(Player1,15,DEX)~+ ~(Let another arrow fly to the furthest target.)~ + HitFar
++ ~I think I'm too tired for this. I'll let you shoot on your own.~ + RestExit 

CHAIN X3Emi25J MissTwice
~Ah, well, that one was closer. I think you're just a bit tired. With more practice you'll have it down for sure.~
END 
++ ~Ha, I don't think I'm cut out for archery.~ + Activity.1 
++ ~Thanks, Emily. I'll be sure to get it next time.~ + Activity.2
++ ~I'll let you keep shooting and get some rest.~ + RestExit

CHAIN X3Emi25J HitFar 
~Wow, that was impressive! It always takes me a couple to land that kind of distance.~
DO ~SetGlobal("X3Activity","LOCALS",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
END 
IF ~!Global("X3EmiRomanceActive","GLOBAL",2)~ + Activity.3
IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ + Activity.4

CHAIN X3Emi25J Activity.3 
~I might have to start learning from you at this rate!~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J Activity.1 
~I guess it's not easy to get down in a day, but you didn't do that bad, honest.~
EXTERN X3Emi25J RestLate  

CHAIN X3Emi25J Activity.2 
~I know you will. You are brilliant, you know.~
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J Activity.4 
~(After taking back her bow, she takes you by the hand.) You are coming with me after that performance.~
END 
++ ~Where are we going?~ + Sleep.9
++ ~(Let her lead.)~ + Sleep.9
++ ~I know what you are up to, but I really want to just get some rest.~ + Activity.6



CHAIN X3Emi25J Activity.6
~Oh. Well, do you wish to cuddle with me instead?~
END 
++ ~I would love to.~ + Snuggle.5
++ ~I would rather sleep alone.~ + Snuggle.3

CHAIN X3Emi25J Outdoor2
~(You find Emily inside her tent, sliding off her weapons and equipment against the sides as she prepares for resting.)~
= ~Oh, hey!~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Move to hold her close.)~ + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Move to hold her close.)~ + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Move to hold her close.)~ + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~(Kiss her.)~ + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~(Kiss her.)~ + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~(Kiss her.)~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  ~You look beautiful.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~How about we spend the night together in our tent?~ + Sleep.8 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you practice.~ + RestExit 

/*Helga*/

CHAIN X3Rest HelgaNoSet 
~You move to find Helga.~
END 
IF ~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3HelJ Inn1
IF ~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3HelJ Inn2
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3HelJ Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3HelJ Outdoor2
IF ~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Hel25J Inn
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Hel25J Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Hel25J Outdoor2

CHAIN X3Rest HelgaSet  
~You remember you asked Helga to spend a bit of time together before you rested.~
END 
+~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Helga.)~ EXTERN X3HelJ Inn1
+~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Helga.)~ EXTERN X3HelJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Helga.)~ EXTERN X3HelJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Helga.)~ EXTERN X3HelJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Helga.)~ EXTERN X3Hel25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Helga.)~ EXTERN X3Hel25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Helga.)~ EXTERN X3Hel25J Outdoor2 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

// SoA Helga

CHAIN X3HelJ Inn1 
~(You find Helga sitting on the floor in her room, stretching her leg.)~
= ~Nay a fan of these inns. Be a home or the road, but it be nice to give me back some comfort.~
END 
+~Global("X3Story","LOCALS",0)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3HelJ Inn2 
~(You find Helga sitting at a table, drinking a mug of ale.)~
= ~Hrm. Dwarven brew here isn't half bad. Wonder which hall imported this.~
END 
+~Global("X3Drink","LOCALS",0)~+ ~Mind if I have a drink with you?~ DO ~SetGlobal("X3Drink","LOCALS",1)~ + Drink1
+~Global("X3Drink","LOCALS",1)~+ ~Mind if I have a drink with you?~ DO ~SetGlobal("X3Drink","LOCALS",2)~  + Drink2 
+~Global("X3Story","LOCALS",0)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I'm a bit tired, I'm going to get some sleep.~ + RestExit 

CHAIN X3HelJ Outdoor1 
~(Helga is preparing dinner, setting out a variety of ingredients for what appears to be a stew near a pot.)~
= ~Isn't ready yet. But damn am I tired of rations. Been saving this until I had everything prepared.~
END 
+~Global("X3Activity","LOCALS",0)~+ ~How about I cook for a change?~ + Activity
+~Global("X3Story","LOCALS",0)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3HelJ Outdoor2 
~(You find Helga praying quietly in her tent. She rises when she hears you step in.)~
= ~Haela is pleased with our fights, I'd say. What do ye need?~
END 
+~Global("X3Story","LOCALS",0)~+ ~Do you have a tale to share to pass the time?~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Do you have a tale to share to pass the time?~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice on our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3HelJ Story1 
~Aye, I do. Perhaps what every dwarf of Torstultok remembers most: their first kill.~
END 
++ ~A grim story, I reckon.~ + Story1.1 
++ ~That sounds exciting, go on.~ + Story1.2
++ ~On second thought, I'll just get some rest.~ + RestExit 

CHAIN X3HelJ Story1.1 
~Nay. A triumph.~
EXTERN X3HelJ Story1.2 

CHAIN X3HelJ Story1.2
~To become one of the priest's of Torstultok, one must prove their competency in battle. I had trained night and day with them, swinging and praying and working to earn Haela's favor.~
DO ~SetGlobal("X3Story","LOCALS",1)~
= ~When it is time, they send you out with a torch, a shield and a hammer. Nay shield, for the way of the ruin is too dark to see. The mark: a cave troll.~
END 
++ ~A troll? That's an insane creature to ask anyone to face without experience.~ + Story1.3 
++ ~Interesting, go on.~ + Story1.4 
++ ~They sent you to fight that alone?~ + Story1.3

CHAIN X3HelJ Story1.3
~Aye. But those who serve in Turstoltok were trained hard and well. We studied and learned of all the creatures of the Forlorn Hills. Trolls were nay uncommon, and I had studied them well from the stories of the others there.~
EXTERN X3HelJ Story1.4

CHAIN X3HelJ Story1.4
~These trolls were independent and liked to be dominant unless courting one another. Fire was your friend, but the torch also made you an easy mark. Right when I thought my cave was empty save the echo of bats, ready to turn back and inform the keep there was nothing in sight, my torch went flying and my skin was cut with claws right here.~
= ~I turned around and the beast was already going for a killing strike. I put up my shield arm and went for my hammer, ignoring the blood. Five hundred pounds of pure force that thing was. Dented me shield with his second hit. Keeping up a defense was impossible, and asking a blessing, more impossible still.~
= ~I turned around a small corner with a few rock upcroppings to create distance. Ye think its weight made it slow? Damn thing was fast. Couldn't even get a cure spell to ease my pain for a moment finished without having to cease my incantation and block again.~
= ~It beat my shield down to about nothing. Was thinking that it would be over soon. Thing was bent and battered like a bent fork.~
END 
++ ~How did you prevail?~ + Story1.7
++ ~That's not good.~ + Story1.7 
++ ~You had that difficult of a time?~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ + Story1.8

CHAIN X3HelJ Story1.8
~It was me first proper real battle. Ye remember yers? Nay so easy if you put a troll in the place of that.~
EXTERN X3HelJ Story1.7

CHAIN X3HelJ Story1.7
~I decided to be aggresive after that. Slammed my hammer in its face and any open flesh that seemed a good mark. Suprised it at first, especially with a good slam on its knee, but one counter attack with its arm sent me flying back. Damn that wall I hit hurt.~
= ~The creature was slowed though that I could make a quick blessing. Healing maybe, but I thought of Flamebolt instead. Called a burning sword into my hand, forced myself to my feet and met the creature in its charge.~
= ~His arm was long, but my blade long itself and just a little faster. Cut its arm off with one good strike. Screamed like a shrill harpy it did, then mercifully took its head.~
= ~I brought it back to Torstultok, and they helped heal the wounds I couldn't. Still proud of that day. Became an adult, in a way.~
END 
++ ~A fine tale. Thank you, Helga.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + Story1.5 
++ ~I suppose it passed the time. Thanks.~ + Story1.5
++ ~That's it? I was expecting it to be more exciting.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ + Story1.6

CHAIN X3HelJ Story1.5
~Ye be welcome.~
EXTERN X3HelJ RestLate

CHAIN X3HelJ Story1.6
~Nay sure how ye get more exciting then that. But as ye say.~
EXTERN X3HelJ RestLate

CHAIN X3HelJ RestLate 
~The night grows long. Best we turn in. But thank ye for the company. Rest well.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3HelJ RestExit 
~Rest well. May Haela bless us in the battles to come.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3HelJ Story2
~Aye, I do. Another first, if ye like.~
END 
++ ~Sounds intriguing. Go on.~ + Story2.1 
++ ~What happens this time?~ + Story2.2
++ ~On second thought, I'm more tired than I thought. I'll just get some rest.~ + RestExit 

CHAIN X3HelJ Story2.2 
~Ye'll see.~

EXTERN X3HelJ Story2.1 

CHAIN X3HelJ Story2.1
~As I told ye before, after my first kill I became a full fledged priest, which we call First Blood from my former novice rank, unblooded.~
DO ~SetGlobal("X3Story","LOCALS",1)~
= ~A wandering priest of Dumathoin had strong knowledge of a lost crown in one of the ruins desired by a surviving heir of the former empire, and had tasked the Hall of Torstultok to get it.~
= ~Trolls had pushed back previous attempts, but we were troll killers, blood maidens and luck maidens collectivley at that. Our seniors accepted without pause, and our juniors gladly filled the ranks.~
= ~I was put in a crew of four meself, tasked with searching a particular vault once we were well inside. When we opened the door, scores and scores of lost gold filled the ground. Shining jewels and necklaces and rings. A thief's dream.~
END 
++ ~A lucky find.~ + Story2.3
++ ~What happened next?~ + Story2.5
++ ~I hope you took some of it for yourself.~ + Story2.4

CHAIN X3HelJ Story2.3
~So it seemed. But we were deceived.~
EXTERN X3HelJ Story2.5

CHAIN X3HelJ Story2.4
~The temptation was there, aye. But my passion is battle, nay gold.~
EXTERN X3HelJ Story2.5

CHAIN X3HelJ Story2.5
~Our highest standing priest, the rank of Sharp Axe, had run into one of the chests thinking it might hold what we were looking for within. Soon as we all searched a different corner, we heard a scream and the clanking of metal. The chest was eating Sharp Axe. It was a mimic.~
= ~The Trolls had created them we think to keep their gold safe and make it unnecessary for them to watch the vaults. And it worked. The Sharp Axe was gone by the time we got over to it. We killed the Mimic with a vengeance...but it did nay bring Sharp Axe back.~
= ~You can nay raise a dead creature that is not intact. We'd have raised a dwarf that was only pieces and he'd have died again, and we had no priests in the area who could resurrect, they were far away. I felt damn guilty for not keeping a watchful eye...and so that was my first experience of loss.~
END 
++ ~Was he eventually resurrected?~ + Story2.6 
++ ~This is what you mean by first, then.~ + Story2.7
++ ~A tragic story, but thank you for the tale.~ + Story2.8

CHAIN X3HelJ Story2.6
~Nay. They ruled it was best not to do so. Resurrection has a price, ye know. Ye age or the victim weakens. Hardly a price for an elf or a dwarf, but those who were capable of it were too old. Still, it reminds me to always look out for yer comrades. Losing them hurts more than anything.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Story2.7
~Aye. That it did. First Blood is often followed soon by loss. Youth grows arrogant and thinks it self invulnerable. I did...and when I saw a comrade truly die, I quickly learned that it could have easily been me.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Story2.8
~Aye. Perhaps not the best story to rest after, but...sometimes I like to rest with some simmering thoughts.~
EXTERN X3HelJ RestLate 


CHAIN X3HelJ Story3 
~Aye. Perhaps a lighter telling this time.~
= ~There was a small group of dwarves who had traveled to Torstultok to learn from the crusaders. One of them was a mite arrogant and prideful, so the crusaders pointed him to me for a challenge.~
= ~And ye can bet I humbled him. This dwarf scoffed at the preference of a hammer over an axe, and claimed he could best any hammer wielder. In each of our skirmishes, I defeated him in less than ten moves.~
= ~I got so tired of his pathetic complaining I hit him a bit hard on the last hit. Had to get his nose healed, heh.~
END 
++ ~Remind me to never fight you, then.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + Story3.1 
++ ~That's not very nice.~ + Story3.2 
++ ~I'm sure he learned well from that.~ + Story3.3

CHAIN X3HelJ Story3.1 
~Heh. I was a terror when I was younger. Faster on my feet. I long for the legs I had then.~
EXTERN X3HelJ Story3.4

CHAIN X3HelJ Story3.2 
~Nice? Training is nay the time to be nice. Besides, he bloody deserved it. A dwarf should know when to be humble and let his damn pride go.~
EXTERN X3HelJ Story3.4

CHAIN X3HelJ Story3.3 
~Aye. Very.~
EXTERN X3HelJ Story3.4

CHAIN X3HelJ Story3.4
~He came around later that evening rather bitter. Offered to cook as some sort of reconcilatory gesture. I let him thinking it would be another opportunity to humble him again.~
= ~But he was the finest cook I've ever tasted from. Knew his meats and seasonings and did some beautiful cuts. Father was a chef who cooked for kings and the finest dwarven knights of the realm. Taught him everything.~
= ~Now, I may have not liked his fighting, but I'm not dumb. Didn't let him out of my sight until he was properly my husband.~
END 
++ ~Now that's amusing.~ + Story3.5
++ ~Oh. This is the dwarf you had married.~ + Story3.6
++ ~All along, this was another first story, isn't it?~ + Story3.5

CHAIN X3HelJ Story3.5
~Heh. Ye always remember your firsts. He taught me my own cooking, here. I try to do my best, though I'm not as skilled as he was. I'll always miss the bloody bastard.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Story3.6
~Aye. Though it was more than his cooking. I suppose I was moved by his earnestness to improve things and talk of things beyond fighting. It was nice to have a friend that was nay just a battle friend, and eventually someone more then that. I miss him.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ HealthHigh1 
~I am fine. And me leg is holding up. That's all that matters.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ HealthHigh2 
~Raring to go after some rest. This dwarf is meant for swinging.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ HealthLow1 
~Nay worry. Injuries mean a good battle was fought, and I'll be able to heal myself to full recovery in short time.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ HealthLow2 
~Pain that can be mended, aye. The worst bother is my leg. Wish I were younger.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ PlayerHealthy1 
~Ye seem to have a knack for coming out well enough. Ye are made of stern stuff.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3HelJ PlayerHealthy2 
~Ye don't seem to be needing any healing yerself. Good.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3HelJ PlayerHurt1 
~If ye need me to give ye some healing before ye rest, just let me know.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3HelJ PlayerHurt2 
~Ye got some festering wounds. I'll see to them later.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3HelJ advice2 
~Ye really need advice? I think it's simple. Let's get filthy rich! Can stock up on some fine equipment while we're at it.~
END 
++ ~That sounds like a good idea.~ + advice2.1 
++ ~Any suggestions on how though?~ + advice2.2
++ ~I'd rather just get the money as fast as we can.~ + advice2.3

CHAIN X3HelJ advice2.1 
~Bah. Ye are probably wanting particulars though.~
EXTERN X3HelJ advice2.2

CHAIN X3HelJ advice2.2
~In places like this, you could make a killing fighting. For show or for business. That be my suggestion on how we get the gold.~
= ~The better equipment we have, the better we fight, and the more we can take on. Ye might think on rushing, but take yer time. The best battles are well prepared for.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice2.3
~She be in a prison. Ain't going anywhere.~
EXTERN X3HelJ advice2.2

CHAIN X3HelJ advice3 
~Hrng. Ye ask a good question.~
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3HelJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3HelJ advice3b

CHAIN X3HelJ advice3a 
~We choose these thieves so we are stuck with them, I suppose. Damn shame there wasn't any other option.~
END 
++ ~We could have sided with the vampires.~ + advice3a.1 
++ ~We'll make do.~ + advice3a.1 
++ ~They'll follow through or suffer the consequences.~ + advice3a.2

CHAIN X3HelJ advice3a.1 
~Bah. As I said: nay other option.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice3a.2
~I would bet they employ some dangerous killers. A good battle either way. Hopefully that will nay be necessary.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice3b
~Bah. We should be destroying not helping these creatures. I nay like it much, but the thieves were nay much better.~
END 
++ ~They were the best choice to get where we need to.~ + advice3b.1
++ ~We can't destroy them. They are our only way.~ + advice3b.2
++ ~There wasn't much of a choice.~ + advice3b.3

CHAIN X3HelJ advice3b.1 
~Hrngh. I nay be so sure, but as ye say.~
EXTERN X3HelJ advice3b.4

CHAIN X3HelJ advice3b.2 
~Bah.~
EXTERN X3HelJ advice3b.4

CHAIN X3HelJ advice3b.3
~There was the original choice, as pitiful that was.~
EXTERN X3HelJ advice3b.4

CHAIN X3HelJ advice3b.4 
~Let's just finish working with them and get to this bloody island, I say.~
EXTERN X3HelJ RestLate 


CHAIN X3HelJ advice4 
~Find this Irenicus. And smack him hard with a hammer.~
END 
++ ~That I can agree with, except the weapon of choice.~ + advice4.1 
++ ~I doubt it will be so easy~ + advice4.2
++ ~Definitely.~ + advice4.3

CHAIN X3HelJ advice4.1
~Bah. Ye get my meaning.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice4.2 
~The best battles are never easy. I look all the more forward to it.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice4.3
~Aye. Nay true advice needed on this.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice6
~It sounds simple to me.~
= ~We chase down this git Irenicus and get yer soul back before ye rot into nothing. Neither natural to take or lose such things and live.~
END 
++ ~I will be okay.~ + advice6.1
++ ~Then we are in agreement on this.~ + advice6.2
++ ~It won't be easy to beat him, Helga.~ + advice6.3

CHAIN X3HelJ advice6.1
~Nay. With enough time, ye won't be. I wouldn't dawdle around too much. ~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice6.2
~I'd be concerned if ye disagreed, but aye. We agree.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice6.3
~Nay. But ye've no choice if ye want to live.~
EXTERN X3HelJ RestLate 


CHAIN X3HelJ Drink1 
~Aye, aye! Take a seat. This is good ale, as I said. Pale and bitter, as it should be.~
END 
++ ~I'll take a taste of it then.~ + Drink1.1 
++ ~I'm going to order something else, actually.~ + Drink1.2

CHAIN X3HelJ Drink1.1
~Drink up! What do you think?~
END 
++ ~It's not bad.~ + Drink1.4 
++ ~I think I'm going to regret that sip.~ + Drink1.5
++ ~It's unique. Is this what you usually drink?~ + Drink1.6

CHAIN X3HelJ Drink1.4 
~Good, good!~
EXTERN X3HelJ Drink1.6

CHAIN X3HelJ Drink1.5
~Bah. I suppose nay all have the stomach for a fine brew.~
EXTERN X3HelJ Drink1.3 

CHAIN X3HelJ Drink1.6
~This is the stuff I try to get when I travel. Always satisfies before rest.~
EXTERN X3HelJ Drink1.3

CHAIN X3HelJ Drink1.2 
~Yer choice. A drink is a drink.~
EXTERN X3HelJ Drink1.3 

CHAIN X3HelJ Drink1.3
~Nay as tasty as the proper barreled stuff in a good dwarven hall.~
= ~Strong and rich, ah I miss the good stuff. Been several good years since the last.~
END 
++ ~You certainly seem to enjoy it.~ + Drink1.7
++ ~You might find its match.~ + Drink1.8
++ ~You can cook, but can you also brew?~ + Drink1.9

CHAIN X3HelJ Drink1.7
~Aye. Anyting that brings back memories of good times. I can remember all the comrades who have come and gone that I've shared a good table and ale with. I'll remember this moment well and good, too.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink1.8
~Bah! Never. Not unless it be from a dwarf themselves.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink1.9
~Nay. I don't carry the right things to brew on the road, and it's poor taste at best from those who do. Takes great skill to be a master brewer. Nay complaints if you find one to join us.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink2
~Aye, sit sit!~
= ~Ye like to reflect on the day's work when ye drink? My mind oft drifts to the hours before.~
END 
++ ~I'd rather not think of anything like that. I just want to enjoy the moment.~ + Drink2.1 
++ ~Yes. I often try to reflect.~ + Drink2.2
++ ~What's done is done. I'd rather be thinking ahead.~ + Drink2.3

CHAIN X3HelJ Drink2.1 
~Hrngh. I suppose if it is a hard day, I can see. But nay reflection means little means to improve oneself.~
EXTERN X3HelJ Drink2.4

CHAIN X3HelJ Drink2.2 
~Aye. Mistakes, and the victory. Difficult not to swell with pride when their are no faults to recall.~
EXTERN X3HelJ Drink2.4

CHAIN X3HelJ Drink2.3 
~Aye, I can see the merit in that. Suppose one does nay want to go unplanned.~
EXTERN X3HelJ Drink2.4

CHAIN X3HelJ Drink2.4
~It ever burden ye? The weight of everything ye have to carry, being you.~
END 
++ ~Often, yes.~ + Drink2.5 
++ ~No, I'm just fine.~ + Drink2.6 
++ ~I don't know. I've never really thought about it.~ + Drink2.7

CHAIN X3HelJ Drink2.5
~Ye do it better than most. I'll say that much, if it helps put ye at ease even a little bit.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink2.6
~Ye say that convincingly. But I nay know if I would feel that way in yer boots.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink2.7
~Hrngh. I can nay imagine ever not thinking about it. I suppose there be a bit of bliss if ye can ignore it.~
EXTERN X3HelJ RestLate 


CHAIN X3HelJ Activity 
~Ye? Cook? We'll see if ye got what it takes.~
= ~Got three differenet things ye can help with. The slicing of these vegetables, the seasoning, and the cooking of the meat.~
= ~Now this particular type of meat is easy to undercook or burn. Pot will get hot fast. Just a warning if ye want to take the hardest challenge.~
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
++ ~Ah, on second thought, I'll spare everyone's food and let you handle the cooking. I'll get some rest.~ + RestExit 


CHAIN X3HelJ MissNear 
~Nay, nay, nay. Yer slicing is a mess. Ye think we eat slices like that. And ye'll ruin the flavor that way. I've got one more here, you can try one more time if ye like.~
END 
+~CheckStatLT(Player1,13,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ ~(Try again.)~ + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ ~(Try again.)~ + HitNear 
++ ~I think I'm too tired to get this right. I'll let you handle this.~ + RestExit 

CHAIN X3HelJ HitNear 
~Aye, looking good. Perhaps ye won't be hopeless if ye ever retire to a house.~
= ~Ye want to keep helping? Could season yer work, or take on the meat cooking if ye like.~
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you handle the rest of this.~ + RestExit 

CHAIN X3HelJ MissMiddle 
~Hrngh. Nay dump the seasoning like that. Take a taste...taste like ye grabbed water from a well of rubbish, I bet.~
= ~I got one more slab here. If ye want to try again, be careful this time.~
END 
+~CheckStatLT(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + HitMiddle 
+~CheckStatGT(Player1,15,WIS)~+ ~(Try again.)~ + HitMiddle
++ ~I think I'm too tired to get this right. I'll let you handle this.~ + RestExit 

CHAIN X3HelJ HitMiddle 
~Aye, aye. Now it be looking presentable.~
= ~All that remains is the cooking, if yer up for the challenge.~
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you handle the rest of this.~ + RestExit 

CHAIN X3HelJ MissFar
~Bah, ye bloody burnt it. I got one more slab here...give it another try if ye like. But don't mess it up, else we'll be stuck with awful supplements for our rations for the next few days.~
END 
+~CheckStatLT(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + HitFar
+~CheckStatGT(Player1,15,WIS)~+ ~(Try again.)~ + HitFar
++ ~I think I'm too tired to get this right. I'll let you handle this.~ + RestExit 

CHAIN X3HelJ MissTwice
~Bah. Ye ruined enough food, I think. I'll take care of it from here.~
END 
++ ~Sorry. I guess cooking isn't as easy as I thought.~ + Activity.1 
++ ~Maybe if you were a better teacher, I could have done it.~ + Activity.2
++ ~Thanks. I'm going to get some sleep. I'll try some of your food in the morning.~ + RestExit

CHAIN X3HelJ HitFar 
~Perfect! I think everyone will like this when they've a bite to eat. Taste it...aye, perfect, as I said.~
DO ~SetGlobal("X3Activity","LOCALS",1)IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@219)~
EXTERN X3HelJ Activity.3

CHAIN X3HelJ Activity.3 
~Now that be a good dinner. Thank ye for the hand.~
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Activity.1 
~Nay, it isn't. But with practice, ye get it down like anything else. Just takes a bit of wisdom to understand the bit of tricks involved.~
EXTERN X3HelJ RestLate  

CHAIN X3HelJ Activity.2 
~Grouch if ye please. Ye'll change yer tune once ye've had some rest and some actually well-done cooking when ye waken.~
EXTERN X3HelJ RestLate 

// ToB Helga 

CHAIN X3Hel25J Inn 
~(You find Helga sitting on the floor in her room, stretching her leg.)~
= ~Glad my leg is finally better now. But damn do our battles sure test that fortune.~
END 
+~Global("X3Story","LOCALS",0)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthLow2
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3Hel25J Outdoor1 
~(Helga is preparing dinner, setting out a variety of ingredients for what appears to be for a soup near a pot.)~
= ~Isn't ready yet. But damn am I bloody tired of rations. Probably said that many times now.~
END 
+~Global("X3Activity","LOCALS",0)~+ ~How about I cook for a change?~ + Activity
+~Global("X3Story","LOCALS",0)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthLow2
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3Hel25J Outdoor2 
~(You find Helga praying quietly in her tent. She rises when she hears you step in.)~
= ~Haela bless us. Ye need something?~
END 
+~Global("X3Story","LOCALS",0)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~Do you have a tale to share to pass the time?~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ ~I wanted to see if you were all right.~ + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ ~I wanted to see if you were all right.~ + HealthLow2
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3Hel25J Story1 
~Aye, I do. Perhaps what every dwarf of Torstultok remembers most: their first kill.~
END 
++ ~A grim story, I reckon.~ + Story1.1 
++ ~That sounds exciting, go on.~ + Story1.2
++ ~On second thought, I'll just get some rest.~ + RestExit 

CHAIN X3Hel25J Story1.1 
~Nay. A triumph.~
EXTERN X3Hel25J Story1.2 

CHAIN X3Hel25J Story1.2
~To become one of the priest's of Torstultok, one must prove their competency in battle. I had trained night and day with them, swinging and praying and working to earn Haela's favor.~
= ~When it is time, they send you out with a torch, a shield and a hammer. Nay shield, for the way of the ruin is too dark to see. The mark: a cave troll.~
END 
++ ~A troll? That's an insane creature to ask anyone to face without experience.~ + Story1.3 
++ ~Interesting, go on.~ + Story1.4 
++ ~They sent you to fight that alone?~ + Story1.3

CHAIN X3Hel25J Story1.3
~Aye. But those who serve in Turstoltok were trained hard and well. We studied and learned of all the creatures of the Forlorn Hills. Trolls were nay uncommon, and I had studied them well from the stories of the others there.~
EXTERN X3Hel25J Story1.3 

CHAIN X3Hel25J Story1.4
~These trolls were independent and liked to be dominant unless courting one another. Fire was your friend, but the torch also made you an easy mark. Right when I thought my cave was empty save the echo of bats, ready to turn back and inform the keep there was nothing in sight, my torch went flying and my skin was cut with claws right here.~
= ~I turned around and the beast was already going for a killing strike. I put up my shield arm and went for my hammer, ignoring the blood. Five hundred pounds of pure force that thing was. Dented me shield with his second hit. Keeping up a defense was impossible, and asking a blessing, more impossible still.~
= ~I turned around a small corner with a few rock upcroppings to create distance. Ye think its weight made it slow? Damn thing was fast. Couldn't even get a cure spell to ease my pain for a moment finished without having to cease my incantation and block again.~
= ~It beat my shield down to about nothing. Was thinking that it would be over soon. Thing was bent and battered like a bent fork.~
END 
++ ~How did you prevail?~ + Story1.7
++ ~That's not good.~ + Story1.7 
++ ~You had that difficult of a time?~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ + Story1.8

CHAIN X3Hel25J Story1.8
~It was me first proper real battle. Ye remember yers? Nay so easy if you put a troll in the place of that.~
EXTERN X3Hel25J Story1.7

CHAIN X3Hel25J Story1.7 
~I decided to be aggresive after that. Slammed my hammer in its face and any open flesh that seemed a good mark. Suprised it at first, especially with a good slam on its knee, but one counter attack with its arm sent me flying back. Damn that wall I hit hurt.~
= ~The creature was slowed though that I could make a quick blessing. Healing maybe, but I thought of Flamebolt instead. Called a burning sword into my hand, forced myself to my feet and met the creature in its charge.~
= ~His arm was long, but my blade long itself and just a little faster. Cut its arm off with one good strike. Screamed like a shrill harpy it did, then mercifully took its head.~
= ~I brought it back to Torstultok, and they helped heal the wounds I couldn't. Still proud of that day. Became an adult, in a way.~
END 
++ ~A fine tale. Thank you, Helga.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + Story1.5
++ ~I suppose it passed the time. Thanks.~ + Story1.5
++ ~That's it? I was expecting it to be more exciting.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ + Story1.6

CHAIN X3Hel25J Story1.5
~Ye be welcome.~
EXTERN X3Hel25J RestLate

CHAIN X3Hel25J Story1.6
~Nay sure how ye get more exciting then that. But as ye say.~
EXTERN X3Hel25J RestLate

CHAIN X3Hel25J RestLate 
~The night grows long. Best we turn in. But thank ye for the company. Rest well.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Hel25J RestExit 
~Rest well. May Haela bless us in the battles to come.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Hel25J Story2
~Aye, I do. Another first, if ye like.~
END 
++ ~Sounds intriguing. Go on.~ + Story2.1 
++ ~What happens this time?~ + Story2.2
++ ~On second thought, I'm more tired than I thought. I'll just get some rest.~ + RestExit 

CHAIN X3Hel25J Story2.2 
~Ye'll see.~
EXTERN X3Hel25J Story2.1 

CHAIN X3Hel25J Story2.1
~As I told ye before, after my first kill I became a full fledged priest, which we call First Blood from my former novice rank, unblooded.~
DO ~SetGlobal("X3Story","LOCALS",1)~
= ~A wandering priest of Dumathoin had strong knowledge of a lost crown in one of the ruins desired by a surviving heir of the former empire, and had tasked the Hall of Torstultok to get it.~
= ~Trolls had pushed back previous attempts, but we were troll killers, blood maidens and luck maidens collectivley at that. Our seniors accepted without pause, and our juniors gladly filled the ranks.~
= ~I was put in a crew of four meself, tasked with searching a particular vault once we were well inside. When we opened the door, scores and scores of lost gold filled the ground. Shining jewels and necklaces and rings. A thief's dream.~
END 
++ ~A lucky find.~ + Story2.3
++ ~What happened next?~ + Story2.5
++ ~I hope you took some of it for yourself.~ + Story2.4


CHAIN X3Hel25J Story2.3
~So it seemed. But we were deceived.~
EXTERN X3Hel25J Story2.5

CHAIN X3Hel25J Story2.4
~The temptation was there, aye. But my passion is battle, nay gold.~
EXTERN X3Hel25J Story2.5

CHAIN X3Hel25J Story2.5
~Our highest standing priest, the rank of Sharp Axe, had run into one of the chests thinking it might hold what we were looking for within. Soon as we all searched a different corner, we heard a scream and the clanking of metal. The chest was eating Sharp Axe. It was a mimic.~
= ~The Trolls had created them we think to keep their gold safe and make it unnecessary for them to watch the vaults. And it worked. The Sharp Axe was gone by the time we got over to it. We killed the Mimic with a vengeance...but it did nay bring Sharp Axe back.~
= ~You can nay raise a dead creature that is not intact. We'd have raised a dwarf that was only pieces and he'd have died again, and we had no priests in the area who could resurrect, they were far away. I felt damn guilty for not keeping a watchful eye...and so that was my first experience of loss.~
END 
++ ~Was he eventually resurrected?~ + Story2.6
++ ~This is what you mean by first, then.~ + Story2.7
++ ~A tragic story, but thank you for the tale.~ + Story2.8

CHAIN X3Hel25J Story2.6
~Nay. They ruled it was best not to do so. Resurrection has a price, ye know. Ye age or the victim weakens. Hardly a price for an elf or a dwarf, but those who were capable of it were too old. Still, it reminds me to always look out for yer comrades. Losing them hurts more than anything.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Story2.7
~Aye. That it did. First Blood is often followed soon by loss. Youth grows arrogant and thinks it self invulnerable. I did...and when I saw a comrade truly die, I quickly learned that it could have easily been me.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Story2.8
~Aye. Perhaps not the best story to rest after, but...sometimes I like to rest with some simmering thoughts.~
EXTERN X3Hel25J RestLate 


CHAIN X3Hel25J Story3 
~Aye. Perhaps a lighter telling this time.~
= ~There was a small group of dwarves who had traveled to Torstultok to learn from the crusaders. One of them was a mite arrogant and prideful, so the crusaders pointed him to me for a challenge.~
= ~And ye can bet I humbled him. This dwarf scoffed at the preference of a hammer over an axe, and claimed he could best any hammer wielder. In each of our skirmishes, I defeated him in less than ten moves.~
= ~I got so tired of his pathetic complaining I hit him a bit hard on the last hit. Had to get his nose healed, heh.~
END 
++ ~Remind me to never fight you, then.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + Story3.1 
++ ~That's not very nice.~ + Story3.2 
++ ~I'm sure he learned well from that.~ + Story3.3

CHAIN X3Hel25J Story3.1 
~Heh. I was a terror when I was younger. Faster on my feet. I long for the legs I had then.~
EXTERN X3Hel25J Story3.4

CHAIN X3Hel25J Story3.2 
~Nice? Training is nay the time to be nice. Besides, he bloody deserved it. A dwarf should know when to be humble and let his damn pride go.~
EXTERN X3Hel25J Story3.4

CHAIN X3Hel25J Story3.3 
~Aye. Very.~
EXTERN X3Hel25J Story3.4

CHAIN X3Hel25J Story3.4
~He came around later that evening rather bitter. Offered to cook as some sort of reconcilatory gesture. I let him thinking it would be another opportunity to humble him again.~
= ~But he was the finest cook I've ever tasted from. Knew his meats and seasonings and did some beautiful cuts. Father was a chef who cooked for kings and the finest dwarven knights of the realm. Taught him everything.~
= ~Now, I may have not liked his fighting, but I'm not dumb. Didn't let him out of my sight until he was properly my husband.~
END 
++ ~Now that's amusing.~ + Story3.5
++ ~Oh. This is the dwarf you had married.~ + Story3.6
++ ~All along, this was another first story, isn't it?~ + Story3.5

CHAIN X3Hel25J Story3.5
~Heh. Ye always remember your firsts. He taught me my own cooking, here. I try to do my best, though I'm not as skilled as he was. I'll always miss the bloody bastard.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Story3.6
~Aye. Though it was more than his cooking. I suppose I was moved by his earnestness to improve things and talk of things beyond fighting. It was nice to have a friend that was nay just a battle friend, and eventually someone more then that. I miss him.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J HealthHigh1 
~I am fine. And me leg is holding up. That's all that matters.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J HealthHigh2 
~Raring to go after some rest. This dwarf is meant for swinging.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J HealthLow1 
~Nay worry. Injuries mean a good battle was fought, and I'll be able to heal myself to full recovery in short time.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J HealthLow2 
~Pain that can be mended, aye. The worst bother is my leg. Wish I were younger.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J PlayerHealthy1 
~Ye seem to have a knack for coming out well enough. Ye are made of stern stuff.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 ++ ~I should get some rest.~ + RestExit 

CHAIN X3Hel25J PlayerHealthy2 
~Ye don't seem to be needing any healing yerself. Good.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 ++ ~I should get some rest.~ + RestExit 

CHAIN X3Hel25J PlayerHurt1 
~If ye need me to give ye some healing before ye rest, just let me know.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 ++ ~I should get some rest.~ + RestExit 

CHAIN X3Hel25J PlayerHurt2 
~Ye got some festering wounds. I'll see to them later.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ ~I should get some rest.~ + RestExit 


CHAIN X3Hel25J advice8 
~Nay. I have little to advice ye on.~
END 
++ ~Really? That's surprising.~ + advice8.1 
++ ~I'll make do without it then.~ + advice8.2
++ ~Oh? I was counting on your help.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + advice8.3

CHAIN X3Hel25J advice8.1 
~The path forming seems more of necessity than choice. Thus I have nay advice. Ye've done well this far. Ye'll figure out the way for us all.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice8.2
~Aye, ye will and just fine. You've done well this far. Ye'll figure out the rest of the way for us all.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice8.3
~Ye don't need it anymore. Ye've been leading us for a long time, and done well by us. Ye'll be fine.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice9
~I say kill the five and let us be done with it.~
= ~We killed that bloody giant. Nay any of the others will be unstoppable if he fell.~
END 
++ ~I agree with you on that.~ + advice9.1 
++ ~You seem eager to be through with this.~ + advice9.2
++ ~Yes. None of the Bhaalspawn can best me.~ + advice9.3

CHAIN X3Hel25J advice9.1
~Aye, ye have little choice to. Ignoring them seems like a fool's choice.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice9.2 
~Aye, it's been a long journey. But I be desiring a new path soon enough. But let us first survive this challenge.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice9.3
~Aye. Nay any of them can. Believe that. Ye'll need it to pierce through any intimidation or fear they try to break you down with.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Activity 
~Ye? Cook? We'll see if ye got what it takes.~
= ~Got three differenet things ye can help with. The slicing of these vegetables, the seasoning, and the cooking of the meat.~
= ~Now this particular type of meat is easy to undercook or burn. Pot will get hot fast. Just a warning if ye want to take the hardest challenge.~
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ ~I'll try my hand at slicing.~ + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
++ ~Ah, on second thought, I'll spare everyone's food and let you handle the cooking. I'll get some rest.~ + RestExit 


CHAIN X3Hel25J MissNear 
~Nay, nay, nay. Yer slicing is a mess. Ye think we eat slices like that. And ye'll ruin the flavor that way. I've got one more here, you can try one more time if ye like.~
END 
+~CheckStatLT(Player1,13,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ ~(Try again.)~ + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ ~(Try again.)~ + HitNear 
++ ~I think I'm too tired to get this right. I'll let you handle this.~ + RestExit 

CHAIN X3Hel25J HitNear 
~Aye, looking good. Perhaps ye won't be hopeless if ye ever retire to a house.~
= ~Ye want to keep helping? Could season yer work, or take on the meat cooking if ye like.~
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ ~Let me try the seasoning.~ + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you handle the rest of this.~ + RestExit 

CHAIN X3Hel25J MissMiddle 
~Hrngh. Nay dump the seasoning like that. Take a taste...taste like ye grabbed water from a well of rubbish, I bet.~
= ~I got one more slab here. If ye want to try again, be careful this time.~
END 
+~CheckStatLT(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + HitMiddle 
+~CheckStatGT(Player1,15,WIS)~+ ~(Try again.)~ + HitMiddle
++ ~I think I'm too tired to get this right. I'll let you handle this.~ + RestExit 

CHAIN X3Hel25J HitMiddle 
~Aye, aye. Now it be looking presentable.~
= ~All that remains is the cooking, if yer up for the challenge.~
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ ~I can take a crack at this meat.~ + HitFar 
++ ~I'm a bit too tired to continue. I'll let you handle the rest of this.~ + RestExit 

CHAIN X3Hel25J MissFar
~Bah, ye bloody burnt it. I got one more slab here...give it another try if ye like. But don't mess it up, else we'll be stuck with awful supplements for our rations for the next few days.~
END 
+~CheckStatLT(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ ~(Try again.)~ + HitFar
+~CheckStatGT(Player1,15,WIS)~+ ~(Try again.)~ + HitFar
++ ~I think I'm too tired to get this right. I'll let you handle this.~ + RestExit 

CHAIN X3Hel25J MissTwice
~Bah. Ye ruined enough food, I think. I'll take care of it from here.~
END 
++ ~Sorry. I guess cooking isn't as easy as I thought.~ + Activity.1 
++ ~Maybe if you were a better teacher, I could have done it.~ + Activity.2
++ ~Thanks. I'm going to get some sleep. I'll try some of your food in the morning.~ + RestExit

CHAIN X3Hel25J HitFar 
~Perfect! I think everyone will like this when they've a bite to eat. Taste it...aye, perfect, as I said.~
DO ~SetGlobal("X3Activity","LOCALS",1)IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@219)~
EXTERN X3Hel25J Activity.3

CHAIN X3Hel25J Activity.3 
~Now that be a good dinner. Thank ye for the hand.~
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Activity.1 
~Nay, it isn't. But with practice, ye get it down like anything else. Just takes a bit of wisdom to understand the bit of tricks involved.~
EXTERN X3Hel25J RestLate  

CHAIN X3Hel25J Activity.2 
~Grouch if ye please. Ye'll change yer tune once ye've had some rest and some actually well-done cooking when ye waken.~
EXTERN X3Hel25J RestLate 

/*Kale*/

CHAIN X3Rest KaleNoSet 
~You move to find Kale.~
END 
IF ~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3KalJ Inn1
IF ~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3KalJ Inn2
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3KalJ Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3KalJ Outdoor2
IF ~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Kal25J Inn
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Kal25J Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Kal25J Outdoor2

CHAIN X3Rest KaleSet  
~You remember you asked Kale to spend a bit of time together before you rested.~
END 
+~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Kale.)~ EXTERN X3KalJ Inn1
+~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Kale.)~ EXTERN X3KalJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Kale.)~ EXTERN X3KalJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Kale.)~ EXTERN X3KalJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Kale.)~ EXTERN X3Kal25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Kale.)~ EXTERN X3Kal25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Kale.)~ EXTERN X3Kal25J Outdoor2 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
//SoA 
CHAIN X3KalJ Inn1 
~(You find Kale in his room, taking off his armor and tunic and setting it aside).~
= ~How's it going? Took a check, and it's a shame, I don't think I got any new scars.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Kale your affections.~ + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Kale your affections.~ + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Kale your affections.~ + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss him~ + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss him~ + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss him~ + Kiss3
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+~Would you like to bathe with me?~+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~  + Sleep3 // Same as below, except sets slept to 1.
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~ + Sleep3 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3KalJ Talks
~'Course. Speak away.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3KalJ compliment 
~Handsome, eh? I get that a lot. But it means a bit more coming from you.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
= ~Soooo. What did you want to speak to me about?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3KalJ StayTalk 
~Want to talk about anything?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3KalJ HealthHigh1 
~Me mate? Couldn't be better.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ HealthHighLove1 
~I'm in one piece, love. A good looking piece, I might add.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthHigh2
~Don't worry about me, mate. I'm all chipper.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ HealthHighLove2
~Don't stress love. Kale's hearty and healthy.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthLow1 
~A bit beat up, but no scars. Shame really.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ HealthLowLove1 
~Heh, all of these wounds just means I was doing my job protecting folks. You can kiss them better later.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthLowLove2 
~Well. Not dead, love. That's what counts, eh?~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthLow2 
~Well. Can't come out all right out of every misadventure we have. Sure some rest will do the trick~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ PlayerHealthy1 
~You seem all right though. Good for you, mate.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3KalJ PlayerHealthy2 
~We're here to help you succeed though, and you seem to be coming around fine enough thanks to us, eh?~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3KalJ PlayerHealthyLove1 
~But that doesn't matter. Long as I keep you well, I'm happy.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3KalJ PlayerHealthyLove2 
~You look hearty and happy. Means I'm being a good lover, heh.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3KalJ PlayerHurt1 
~You though, don't look so good, mate. Definitely get some good rest in.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3KalJ PlayerHurt2 
~You take a beating well. I'll not say what I wanted about your face right now. I'm joking, mate!~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3KalJ PlayerHurtLove1 
~What about you, love? Gotta say...I don't like it when you take that much of a beating. But I know you'll be fine.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3KalJ PlayerHurtLove2 
~You're a bit too hurt for my liking. I'll have to stay closer to you next time, and not just to admire you.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3KalJ Story1 
~Me? A story? When do I not, mate?~
= ~Let me tell you the time that I crossed paths with a good ol' chimera. That's right. Fire breathing dragon head. The horned goat head. And the ferocious lion head.~
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Okay, go on.~ + Story1.1
++ ~You are having me on.~ + Story1.2
++ ~Kale, can you tell something with truth in it?~ + Story1.2

CHAIN X3KalJ Story1.2
~Heh, there is truth in it, mate. Just keep listening, eh?~
EXTERN X3KalJ Story1.1 

CHAIN X3KalJ Story1.1 
~Now, most folk think you should just watch out for the dragon's head, which can spew fire. But it's the lion you have to watch out for. You forget to pay attention and it snaps your neck.~
= ~I kept my shield up and went in. Hot flames singed and crisped my outer shield but I kept my head down, spinning side to side as it tried to lunge at me with its lion's maw.~
= ~I waited and waited, and moved to the perfect position and then strike! Three heads pierced through with my blade all at once.~
END 
++ ~That's impressive.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story1.3 
++ ~That's inconceivable.~ + Story1.4
++ ~That doesn't sound as difficult for you as I thought it would.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story1.5

CHAIN X3KalJ Story1.3
~Heh. What was impressive was the tavern that night. I'll uh, keep that part to myself though.~
EXTERN X3KalJ Story1.6

CHAIN X3KalJ Story1.4 
~Pfft. What, you think my blade wasn't long enough? Trust me, it's plenty long.~
EXTERN X3KalJ Story1.6

CHAIN X3KalJ Story1.5
~Hey now, I'm a skilled warrior, you know. They just require a bit of tricking. Kind of stupid, Chimeras are, but a fearsome tale.~
EXTERN X3KalJ Story1.6

CHAIN X3KalJ Story1.6
~I think that was the day I had walked away from Helga and crew. I needed that day. Nothing like facing a bit of danger after learning you lost your father.~
= ~But don't worry about that. I'm fine. I don't need words of comfort. Heh, don't really want them, even. Got to be tough to live, inside and out.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story2 
~A story eh? You know I can always deliver the finest tale.~
= ~Let me tell my finest tale. The story where I defeated a wandering wyvern near Gullykin with a slap to the face. You're probably asking how. Well, let me just share the details1~
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Kale...~ + Story2.1
++ ~Okay, this sounds interesting.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.2
++ ~This is already more ridiculous then the last one. And why do your tales always have some sort of scaled creature?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3

CHAIN X3KalJ Story2.1
~What?~
END 
++ ~Nevermind, just go on.~ + Story2.2
++ ~You can't kill a wyvern by slapping it in the face. And are wyverns even around your village? Can you at least try a semi-believable tale?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3
++ ~I think I'll take a break from hearing your tales today.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + Story2.4

CHAIN X3KalJ Story2.3
~Pfft. Just wait till you get the details. You'll see how it worked!~
EXTERN X3KalJ Story2.2 

CHAIN X3KalJ Story2.4 
~Aww, come on. Well, damn shame. I'll just have to save it for another time.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story2.2
~Now the most scary thing about a wyvern is its stinging, poisonous tale. Good ol' Kale didn't have anything but a sword in those days, so the goal was to give it a hard swing to take that tail away. Even if it lived, couldn't endanger my folks, eh?~
= ~I waited for it to lunge with its tail, missing just slightly to my right, and moved my sword in for the chop. But it didn't dismember the tail, it just got stuck, left my grip too, damn thing.~
= ~So now it was an unarmed halfling against a really angry wyvern that was staring at me while waving its tail and range, lunging its head forward for some teeth action. I wasn't having none of it.~
= ~I grabbed its face just as its head moved forward, and gave it the biggest slap I could with my hand. Knocked out. Not sure where I came up with the idea, but it was great!~
END 
++ ~Very...interesting. Thank you for the story.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.5
++ ~That's silly. It died just from that?~ + Story2.6 
++ ~Now that's humorous! Haha, well done!~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + Story2.5

CHAIN X3KalJ Story2.5 
~Anytime, anytime! Always my favorite tale to retell.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story2.6 
~I've got rough palms, I've heard. Hard to believe, but I still have that wyvern's head somewhere in Gullykin to show for it. Unless ma threw it out.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story3 
~Eh, I could tell you a story. Or we could *make* a story.~
END 
++ ~What do you mean?~ + Story3.1 
++ ~Make one? What do you have in mind?~ + Story3.1 
++ ~I really just wanted to hear a story.~ + Story3.2 

CHAIN X3KalJ Story3.1 
~Easier to show you than to tell you.~
EXTERN X3KalJ Story3.5

CHAIN X3KalJ Story3.2 
~Don't take this the wrong way, but you're a bit dense at times, you know that?~
END 
++ ~Hey, that's not very nice.~ + Story3.3 
++ ~Oh. You meant...~ + Story3.4
++ ~I am definitely taking it the "wrong" way. Why would you say that?~ + Story3.3 

CHAIN X3KalJ Story3.4 
~Heh, now you are getting it.~
EXTERN X3KalJ Story3.5

CHAIN X3KalJ Story3.3 
~Sorry, sorry, sheesh. Allow me to make it up to you...~
EXTERN X3KalJ Story3.5

CHAIN X3KalJ Story3.5
~(He pulls you to him, tugging your hand, pulling you close to giving you a longing kiss.)~
END 
++ ~(Kiss him back.)~ + Sleep4 
++ ~Mmm. Let's head to bed and continue there.~ + Sleep2
++ ~Oh. This is sweet, Kale, but maybe another time.~ + Story3.6

CHAIN X3KalJ Story3.6 
~Right, right. Damn, I feel rejected. But I bet you'll make the waiting worth while.~
EXTERN X3KalJ RestExit 

CHAIN X3KalJ advice2 
~Well! Glory brings fame, which brings opportunity, which brings wealth. I say do some small deeds to get ourselves notices, land ourselves a big gig, and we'll have coin in no time..~
END 
++ ~You make it sound a little too easy.~ + advice2.1 
++ ~I guess that is as good a plan as any.~ + advice2.2
++ ~That doesn't sound like it will be very fast. We need the money swiftly.~ + advice2.3

CHAIN X3KalJ advice2.1 
~Heh, well, we'll probably have to get a little dirty. But that's what we do, eh?~
EXTERN X3KalJ advice2.4 

CHAIN X3KalJ advice2.4
~Now, if we get a little extra gold, I wouldn't mind spending it on a few luxuries. Nothing we can't afford! Just a few garments to look extra impressive. I'm just kidding! Eh nevermind, I'm not.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice2.2
~I'd hope so mate, 'tis my plan!~
EXTERN X3KalJ advice2.4

CHAIN X3KalJ advice2.3
~Well, unless you're the most daring gambler, you don't make money that fast. And let me say it now: Don't gamble.~
EXTERN X3KalJ advice2.4

CHAIN X3KalJ advice3 
~That's a good question, mate.~
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3KalJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3KalJ advice3b

CHAIN X3KalJ advice3a 
~Well, mate if you trust these thieves, I do. You sure they aren't conning us, though?~
END 
++ ~We have to take the risk.~ + advice3a.1 
++ ~Do you think it would be any better with the vampires?~ + advice3a.1 
++ ~They better not be.~ + advice3a.2

CHAIN X3KalJ advice3a.1 
~Heh, you're probably right.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice3a.2
~Well if they are, I've a feeling there isn't much we can do. That's the worrying part, mate.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice3b
~I got to say, these vampire are better looking. But damn do they smell. You sure this was the best idea?~
END 
++ ~We have to take the risk.~ + advice3b.1
++ ~It was them or the shadow thieves. I think they were the better choice~ + advice3b.1
++ ~It better be.~ + advice3b.3

CHAIN X3KalJ advice3b.1 
~You're probably right. But it is definitely a risk, mate. Hopefully it pays off.~
EXTERN X3KalJ advice3b.4

CHAIN X3KalJ advice3b.3
~I sure hope so. Glad I didn't have to make the choice.~
EXTERN X3KalJ advice3b.4

CHAIN X3KalJ advice3b.4 
~Well, the sooner we finish doing as they want, the sooner we get to wherever we need to be.~
EXTERN X3KalJ RestLate 


CHAIN X3KalJ advice4 
~Heh, seems pretty obvious, doesn't it mate? We came to this island for one reason.~
END 
++ ~Yes, I'm after Irenicus.~ + advice4.1 
++ ~To save Imoen.~ + advice4.2
++ ~It was to enjoy the beach, but it doesn't seem that inviting.~ + advice4.3

CHAIN X3KalJ advice4.1
~Well, seems like we should just go find him.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice4.2 
~I hope we'll make it in time. Considering it's a prison...guessing she'll be okay, eh?~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice4.3
~Heh, that is true, mate!~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice6
~Oh, I 'unno.~
= ~You're soul-less, and need it back. Seems like you're more or less forced to go after Irenicus now.~
END 
++ ~He will pay a thousand times for this.~ + advice6.1
++ ~It is our only path.~ + advice6.2
++ ~Unfortunately, yes.~ + advice6.3

CHAIN X3KalJ advice6.1
~Well, you only got to kill him once. But yes. We'll take him down, mate.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice6.2
~Shame, really. After all that time in the underdark, would be nice to take it easy!~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice6.3
~Not fun when destiny pushes you on one path. I would have liked a simpler route, but this mage sure has other plans.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Hug1
~(You reach out to embrace Kale, and he embraces you in turn, stroking your head gently.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3KalJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Hug2
~(You reach out to squeeze Kale's hand, and he gently squeezes yours in turn.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3KalJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Hug3
~(When you give him an affectionate swap at his hindquarters, he smirks.) Sooo. Someone's feeling touchy today.~
END 
IF ~RandomNum(3,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3KalJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss1 
~(There's a prickle of shaved hair that tickles your lips when you kiss. A devilish grin forms on Kale's face afterwards.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss2 
~Mmm. No complaints about one of those.~
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss3 
~Heh. Pucker me up anytime.~
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss4 
~(With little warning, Kale tugs you to him, pressing his lips to yours in earnest, before breaking apart for a breath)~
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ BathYes 
~What fool would say no to that?~
EXTERN X3KalJ BathJoin 

CHAIN X3KalJ BathJoin
~(You move together to the inn's baths, where a bath is prepared for you. When you step in, the water is delightfully warm to your skin.)~
= ~Phew. This is relaxation! I wish we had water this warm back in Gullykin.~
END 
++ ~You didn't boil your water?~ + BathJoin.1 
++ ~I'm glad you are enjoying yourself.~ + BathJoin.2 
++ ~(Pull him close.)~ + BathJoin.3

CHAIN X3KalJ BathJoin.1 
~Well, it took forever. And we halflings always like to move to doing something else. Like eating.~
EXTERN X3KalJ BathJoin.2 

CHAIN X3KalJ BathJoin.2
~This is nice. How it should be, you know? Hard work, great reward.~
= ~If we aren't always going to get the recognition, would be nice to get the luxury once in a while.~
END 
++ ~It it just the fame that you want, Kale?~ + BathJoin.5
++ ~Forget that for a while. Let's enjoy this.~ + BathJoin.4 
++ ~I recognize you, Kale. And I'm thankful for you.~ + BathJoin.6

CHAIN X3KalJ BathJoin.5
~It would be nice. But eh, as long as I have you? I'll manage.~
EXTERN X3KalJ BathJoin.4

CHAIN X3KalJ BathJoin.4 
~(Your hands wander over eachother, cleaning, or sometimes being playful, grinning, laughing, until eventually temptation proves the stronger force.)~
= ~(When you are done, you leave warm, happy, and satisfied, as you move to your room for rest.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 


CHAIN X3KalJ BathJoin.6 
~Damn. I don't know what I did to deserve you, mate.~
EXTERN X3KalJ BathJoin.4

CHAIN X3KalJ BathJoin.3 
~(He pecks your cheek in turn, giving you a playful grin.)~
EXTERN X3KalJ BathJoin.2

CHAIN X3KalJ RestLate 
~*Yawn*. I'm all tuckered out. We should get some rest.~
END 
IF ~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ RestLove
IF ~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~!Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN X3KalJ RestExit

CHAIN X3KalJ Sleep1
~You...sure, mate? I'm game if you are but...I just want you to be sure.~
END 
++ ~Why wouldn't I be?~ + Sleep3
++ ~I am if  you are.~ + Sleep3
++ ~I think I want to wait then, just a little longer.~ + Snuggle 

CHAIN X3KalJ Sleep1B
~I know we haven't done this before but...I'd like to have you stay the night with me. If you don't mind, mate.~
END 
++ ~I'd like that. A lot.~ + Sleep3 
++ ~If you are ready, then so am I.~ + Sleep3 
++ ~I don't know if I am ready for that yet, Kale.~ + Snuggle 

CHAIN X3KalJ Sleep2 
~Heh, I'll never say no to that.~
EXTERN X3KalJ Sleep4

CHAIN X3KalJ Sleep 
~You are mine, <CHARNAME>.~
END 
++ ~Always.~ + Sleep4
++ ~I know what you intend, but perhaps we can just get some rest instead.~ + Snuggle

CHAIN X3KalJ Sleep4 
~(He tugs you towards his resting place, before undressing you eagerly, giving a small affectionate touch to each new revealed portion of skin.)~
= ~(He then undresses himself, giving you a smug grin.). Shall we get started, then?~
END 
++ ~Definitely. But I'll take the lead.~ + Sleep9
++ ~Yes.~ + Sleep8
+~!Global("X3Slept","LOCALS",2)~+ ~Er...I don't think I'm ready yet.~ + Sleep5 

CHAIN X3KalJ Sleep5 
~Aww, damn it. Was I moving too fast? Be honest.~
END 
++ ~No, it's nothing you did. I just wasn't ready like I thought.~ + Sleep6
++ ~A little, yes.~ + Sleep6
++ ~No. I just...I think I'm ready.~ + Sleep7

CHAIN X3KalJ Sleep6 
~Well, why don't we just cuddle then? We can always get to the good part another time.~
END 
++ ~Sure, I'd like that.~ + Snuggle2 
++ ~I'd rather sleep alone.~ + Snuggle3 //Minor Loss. 

CHAIN X3KalJ Sleep7
~Say the word, and I'll pause, eh?~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3KalJ Sleep8F 
IF ~Gender(Player1,MALE)~ EXTERN X3KalJ Sleep8M 

CHAIN X3KalJ Sleep9 
~Well then. I'm yours to command.~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3KalJ Sleep9F 
IF ~Gender(Player1,MALE)~ EXTERN X3KalJ Sleep9M 

CHAIN X3KalJ Sleep9F 
~(He lets himself fall on his back, ushering you over him. The bliss of joining is terribly satisfying, and urges and needs unknown take over your movements from there.)~
EXTERN X3KalJ Sleep10A

CHAIN X3KalJ Sleep9M 
~(He lets himself fall on his front, ushering you over him. The bliss of joining is terribly satisfying, and urges and needs unknown take over your movements from there.)~
EXTERN X3KalJ Sleep10A

CHAIN X3KalJ Sleep10A 
~(When your energy is exhausted, your chest rising and falling after finding sweet release, you feel the comfort of your hand being squeezed, as fatigue draws your body into sleep.)~
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3KalJ Sleep8 
~You're going to enjoy this, love.~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3KalJ Sleep8F 
IF ~Gender(Player1,MALE)~ EXTERN X3KalJ Sleep8M 

CHAIN X3KalJ Sleep8F 
~(You lay down on your back, as he moves towards you. The bliss of joining is terribly satisfying, and urges and needs unknown speak to you in their compelling whispers.)~
EXTERN X3KalJ Sleep10B 

CHAIN X3KalJ Sleep8M 
~(You lay down on your front, as he moves towards you. The bliss of joining is terribly satisfying, and urges and needs unknown speak to you in their compelling whispers.)~
EXTERN X3KalJ Sleep10B

CHAIN X3KalJ Sleep10B 
~(When Kale's energy is exhausted, both sated as your chest rises and falls, you feel the comfort of your hand being squeezed, fatigue drawing your body to sleep.)~ 
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3KalJ RestLove 
~We could settle in right to bed...or not, if you've got a bit of energy.~
END 
++ ~Let's get some rest.~ + Snuggle2 
++ ~I have some energy. I want you.~ + Sleep4

CHAIN X3KalJ RestExit 
~Rest well, mate.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3KalJ RestLove2 
~Just some rest, eh? Or do you think you have some energy?~
END 
+~!Global("X3Slept","LOCALS",2)~+ ~I'm always up for some fun.~ + Sleep2 
+~Global("X3Slept","LOCALS",2)~+ ~We've...never done that before, Kale. But I'd like that.~ + Sleep1 
++ ~I just want to get some rest.~ + Snuggle 

CHAIN X3KalJ Sleep3
~I am a little nervous. But damn...I'd be a fool to not push through for you.~
EXTERN X3KalJ Sleep4 

CHAIN X3KalJ Snuggle 
~Well, why don't we just share a bed, then? I won't do anything funny.~
END 
++ ~Sure, I'd like that.~ + Snuggle2 
++ ~I'd rather sleep alone.~ + Snuggle3 //Minor Loss. 

CHAIN X3KalJ Snuggle2 
~(You settle in together, cuddling close as weariness pulls you into slumber.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3KalJ Snuggle3 
~Damn...well, good night then, mate.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 
// Inn 2 
CHAIN X3KalJ Inn2
~(You find Kale drinking a tankard of ale from an inn table.)~
= ~Hey there. Tempted to challenge some of these folk to a drinking 'bout. Easy coin if you pick the right folk.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~You know, I think I could out drink you.~ + Drink1
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Kiss him~ + KissWine
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your drink.~ + RestExit 

CHAIN X3KalJ KissWine
~(His lips taste bitter, the ale he was drinkign quite strong.)~
= ~Damn I'm lucky. Now all of these folk will know your are mine.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~You know, I think I could out drink you.~ + Drink1
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your drink.~ + RestExit 

CHAIN X3KalJ Drink1 
~Heh, you're on. Let's start with something easy, eh? Dark Ale. Bottoms up.~
END 
+~CheckStatLT(Player1,13,CON)~+ ~(Drink)~ + DrinkFail1
+~CheckStatLT(Player1,13,CON)~+ ~To us.~ + DrinkFail1 
+~RandomNum(2,1)CheckStat(Player1,13,CON)~+ ~(Drink)~ + DrinkFail1
+~RandomNum(2,1)CheckStat(Player1,13,CON)~+ ~To us.~ + DrinkFail1
+~RandomNum(2,2)CheckStat(Player1,13,CON)~+ ~(Drink)~ + DrinkPass1 
+~RandomNum(2,2)CheckStat(Player1,13,CON)~+ ~To us.~ + DrinkPass1
+~CheckStatGT(Player1,13,CON)~+ ~(Drink)~ + DrinkPass1 
+~CheckStatGT(Player1,13,CON)~+ ~To us.~ + DrinkPass1
++ ~Nevermind, I forfeit. I want to stay cognitive.~ + DrinkExit 

CHAIN X3KalJ DrinkFail1
~Sheesh, you're already down after just one drink. We'll have to work on that, heh.~
END 
++ ~That's embarrasing.~ + DrinkFail2 
++ ~I'll win next time.~ + DrinkFail3 
++ ~How do you even drink something so strong?~ + DrinkFail4 

CHAIN X3KalJ DrinkFail5 
~And sooo close. You look dazed now, heh. Not a bad try, though.~
END 
++ ~That's embarrasing.~ + DrinkFail2 
++ ~I'll win next time.~ + DrinkFail3 
++ ~How do you even drink something so strong?~ + DrinkFail4 

CHAIN X3KalJ DrinkFail2 
~Heh, I bet it is. But it's nice to outshine you in something for once.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkFail3 
~Heh. You can try. I think I'll enjoy beating you again.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkFail4 
~I'm a natural, eh? Can't give out my secrets.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkPass1 
~Not bad! That's what I usually use to filter out really easy competition. Let me order something stronger...~
= ~There we go. Good ol' Dragon Breath's Beer. You up for the challenge?~
END 
+~CheckStatLT(Player1,15,CON)~+ ~(Drink)~ + DrinkFail5
+~CheckStatLT(Player1,15,CON)~+ ~Bring it.~ + DrinkFail5 
+~RandomNum(2,1)CheckStat(Player1,15,CON)~+ ~(Drink)~ + DrinkFail5
+~RandomNum(2,1)CheckStat(Player1,15,CON)~+ ~Bring it.~ + DrinkFail5
+~RandomNum(2,2)CheckStat(Player1,15,CON)~+ ~(Drink)~ + DrinkPass2
+~RandomNum(2,2)CheckStat(Player1,15,CON)~+ ~Bring it.~ + DrinkPass2
+~CheckStatGT(Player1,15,CON)~+ ~(Drink)~ + DrinkPass2
+~CheckStatGT(Player1,15,CON)~+ ~Bring it.~ + DrinkPass2
++ ~Nevermind, I forfeit. I want to stay cognitive.~ + DrinkExit 

CHAIN X3KalJ DrinkPass2
~All right...Damn ,you're good. Well, time to bring out the knocker...~
= ~There it is. Iriaeboran Spirits. This gets anyone. You brave enough?~
END 
+~CheckStatLT(Player1,17,CON)~+ ~(Drink)~ + DrinkFail5
+~CheckStatLT(Player1,17,CON)~+ ~Enough talk. Let's drink.~ + DrinkFail5 
+~RandomNum(2,1)CheckStat(Player1,17,CON)~+ ~(Drink)~ + DrinkFail5
+~RandomNum(2,1)CheckStat(Player1,17,CON)~+ ~Enough talk. Let's drink.~ + DrinkFail5
+~RandomNum(2,2)CheckStat(Player1,17,CON)~+ ~(Drink)~ + DrinkPass3
+~RandomNum(2,2)CheckStat(Player1,17,CON)~+ ~Enough talk. Let's drink.~ + DrinkPass3
+~CheckStatGT(Player1,17,CON)~+ ~(Drink)~ + DrinkPass3
+~CheckStatGT(Player1,17,CON)~+ ~Enough talk. Let's drink.~ + DrinkPass3
++ ~Nevermind, I forfeit. I want to stay cognitive.~ + DrinkExit 

CHAIN X3KalJ DrinkPass3 
~Bloody hell, you're drinking like it's nothing! I'll have to forfeit. One more and I'll barely be able to stand.~
= ~Well done. Damn, glad I didn't bet coin over this, but I'm not sure what to give you as a reward.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@313)~
END 
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~I have some ideas, if you want to head to our room.~ + Sleep2 
+~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~I have some ideas, if you want to head to our room.~ + Sleep1
++ ~Just keep serving me well. It's all I want.~ + Drink3
++ ~Oh, then you owe me big, then.~ + Drink4 

CHAIN X3KalJ Drink4 
~I know, I know. Or I'll just have to win next time.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Drink3 
~Always, mate. Always.~ 
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkExit 
~Ha, I win again!~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your drink.~ + RestExit +~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your drink.~ + RestExit 

// Outdoor 
CHAIN X3KalJ Outdoor1
~(You watch Kale sitting near a tree, eating from a small bowl.)~
= ~Good stuff, eh?~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Food","LOCALS",0)~+ ~Mind if I have a bite?~ DO ~SetGlobal("X3Food","LOCALS",1)~ + Food1
+~Global("X3Food","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind if I have a bite?~ DO ~SetGlobal("X3Food","LOCALS",2)~ + Food2
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Kiss him~ + KissFood
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your meal.~ + RestExit 

CHAIN X3KalJ KissFood
~(You can taste the soup on his lips, slightly sweet. He smirks as you pull away.) You just wanted a taste of my meal, eh?~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your meal.~ + RestExit 

CHAIN X3KalJ Food1 
~Sure! (He hands you his soup bowl for you to taste.)~
= ~How is it?~
END 
+~InParty("X3Hel")~+ ~Not bad. Who made this?~ + Food3 
+~!InParty("X3Hel")~+ ~Not bad. Who made this?~ + Food6 
+~InParty("X3Hel")~+ ~A little too sweet.~ + Food4 
+~!InParty("X3Hel")~+ ~A little too sweet.~ + Food5 
++ ~Not any better than our rations.~ + Food7

CHAIN X3KalJ Food3 
~Heh, Helga. Wish I could cook this well.~
EXTERN X3KalJ Food8

CHAIN X3KalJ Food6
~Heh, I might have a shot as a cook then. This is my work. Glad you liked it.~
EXTERN X3KalJ Food8

CHAIN X3KalJ Food4 
~Heh, Helga hates it when I ask it to be sweetened too. But it makes it bearable, I don't like the ingredients she picks otherwise.~
EXTERN X3KalJ Food8

CHAIN X3KalJ Food5 
~Well, that's the way I like it. Sorry about that.~
EXTERN X3KalJ Food8

CHAIN X3KalJ Food7 
~Eh...well...I'll remember that. Damn. There goes my cooking future.~
EXTERN X3KalJ Food8

CHAIN X3KalJ Food8 
~(Kale finishes his meal, before giving a satisfied sigh.) Good stuff, good stuff.~
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Food2 
~You bet. (Kale takes his spoon, and puts it gently towards you to taste.)~
= ~Now, how does it compare to a Kale kiss? Not as sweet, I bet.~
END 
++ ~This is way too sweet, actually.~ + Food9 
++ ~I might need one to remind myself.~  + Food10 
++ ~Nothing can replace your affections.~ + Food11

CHAIN X3KalJ Food9 
~I...overdid it with the sweet flavor then. Whoops.~
EXTERN X3KalJ Food8 

CHAIN X3KalJ Food10 
~(He obliges, giving you a peck of his lips.) You better never forget, mate.~
EXTERN X3KalJ Food8

CHAIN X3KalJ Food11 
~Heh, good. It should stay that way.~
EXTERN X3KalJ Food8 
// Outdoor2 
CHAIN X3KalJ Outdoor2
~(You find Kale inside his tent, stitching up his cloak.)~
= ~Wish they wouldn't tear it up with their blades. I got to keep this thing looking great.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Kale your affections.~ + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Kale your affections.~ + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Kale your affections.~ + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss him~ + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss him~ + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss him~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~  + Sleep1 // Same as below, except sets slept to 1.
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ ~How about we spend the night together?~ + Sleep2 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you be.~ + RestExit 

//ToB Kale 
CHAIN X3Kal25J Inn
~(You find Kale in a bedroom, carefully setting his supplies around the room.)~
== X3Kal25J IF ~AreaCheck("AR5003")~ THEN ~Nothing like sleeping in an inn during a siege, eh <CHARNAME>?~
== X3Kal25J IF ~!AreaCheck("AR5003")~ THEN ~Sheesh. This place is like a desert. At least it's cool in here.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Kale your affections.~ + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Kale your affections.~ + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Kale your affections.~ + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss him~ + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss him~ + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss him~ + Kiss3
+~Global("X3KalRomanceActive","GLOBAL",2)~+~Would you like to bathe with me?~+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Let's spend the night together.~ + Sleep2 
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3Kal25J Talks
~'Course. Speak away.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3Kal25J compliment 
~Handsome, eh? I get that a lot. But it means a bit more coming from you.~
= ~Soooo. What did you want to speak to me about?~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3Kal25J StayTalk 
~Want to talk about anything?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3Kal25J HealthHigh1 
~Me mate? Couldn't be better.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J HealthHighLove1 
~I'm in one piece, love. A good looking piece, I might add.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthHigh2
~Don't worry about me, mate. I'm all chipper.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J HealthHighLove2
~Don't stress love. Kale's hearty and healthy.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthLow1 
~A bit beat up, but no scars. Shame really.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J HealthLowLove1 
~Heh, all of these wounds just means I was doing my job protecting folks. You can kiss them better later.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthLowLove2 
~Well. Not dead, love. That's what counts, eh?~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthLow2 
~Well. Can't come out all right out of every misadventure we have. Sure some rest will do the trick~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J PlayerHealthy1 
~You seem all right though. Good for you, mate.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Kal25J PlayerHealthy2 
~We're here to help you succeed though, and you seem to be coming around fine enough thanks to us, eh?~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Kal25J PlayerHealthyLove1 
~But that doesn't matter. Long as I keep you well, I'm happy.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3Kal25J PlayerHealthyLove2 
~You look hearty and happy. Means I'm being a good lover, heh.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3Kal25J PlayerHurt1 
~You though, don't look so good, mate. Definitely get some good rest in.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Kal25J PlayerHurt2 
~You take a beating well. I'll not say what I wanted about your face right now. I'm joking, mate!~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Kal25J PlayerHurtLove1 
~What about you, love? Gotta say...I don't like it when you take that much of a beating. But I know you'll be fine.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3Kal25J PlayerHurtLove2 
~You're a bit too hurt for my liking. I'll have to stay closer to you next time, and not just to admire you.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3Kal25J Story1 
~Me? A story? When do I not, mate?~
= ~Let me tell you the time that I crossed paths with a good ol' chimera. That's right. Fire breathing dragon head. The horned goat head. And the ferocious lion head.~
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Okay, go on.~ + Story1.1
++ ~You are having me on.~ + Story1.2
++ ~Kale, can you tell something with truth in it?~ + Story1.2

CHAIN X3Kal25J Story1.2
~Heh, there is truth in it, mate. Just keep listening, eh?~
EXTERN X3Kal25J Story1.1 

CHAIN X3Kal25J Story1.1 
~Now, most folk think you should just watch out for the dragon's head, which can spew fire. But it's the lion you have to watch out for. You forget to pay attention and it snaps your neck.~
= ~I kept my shield up and went in. Hot flames singed and crisped my outer shield but I kept my head down, spinning side to side as it tried to lunge at me with its lion's maw.~
= ~I waited and waited, and moved to the perfect position and then strike! Three heads pierced through with my blade all at once.~
END 
++ ~That's impressive.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story1.3 
++ ~That's inconceivable.~ + Story1.4
++ ~That doesn't sound as difficult for you as I thought it would.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story1.5

CHAIN X3Kal25J Story1.3
~Heh. What was impressive was the tavern that night. I'll uh, keep that part to myself though.~
EXTERN X3Kal25J Story1.6

CHAIN X3Kal25J Story1.4 
~Pfft. What, you think my blade wasn't long enough? Trust me, it's plenty long.~
EXTERN X3Kal25J Story1.6

CHAIN X3Kal25J Story1.5
~Hey now, I'm a skilled warrior, you know. They just require a bit of tricking. Kind of stupid, Chimeras are, but a fearsome tale.~
EXTERN X3Kal25J Story1.6

CHAIN X3Kal25J Story1.6
~I think that was the day I had walked away from Helga and crew. I needed that day. Nothing like facing a bit of danger after learning you lost your father.~
= ~But don't worry about that. I'm fine. I don't need words of comfort. Heh, don't really want them, even. Got to be tough to live, inside and out.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story2 
~A story eh? You know I can always deliver the finest tale.~
= ~Let me tell my finest tale. The story where I defeated a wandering wyvern near Gullykin with a slap to the face. You're probably asking how. Well, let me just share the details1~
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Kale...~ + Story2.1
++ ~Okay, this sounds interesting.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.2
++ ~This is already more ridiculous then the last one. And why do your tales always have some sort of scaled creature?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3

CHAIN X3Kal25J Story2.1
~What?~
END 
++ ~Nevermind, just go on.~ + Story2.2
++ ~You can't kill a wyvern by slapping it in the face. And are wyverns even around your village? Can you at least try a semi-believable tale?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3
++ ~I think I'll take a break from hearing your tales today.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + Story2.4

CHAIN X3Kal25J Story2.3
~Pfft. Just wait till you get the details. You'll see how it worked!~
EXTERN X3Kal25J Story2.2 

CHAIN X3Kal25J Story2.4 
~Aww, come on. Well, damn shame. I'll just have to save it for another time.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story2.2
~Now the most scary thing about a wyvern is its stinging, poisonous tale. Good ol' Kale didn't have anything but a sword in those days, so the goal was to give it a hard swing to take that tail away. Even if it lived, couldn't endanger my folks, eh?~
= ~I waited for it to lunge with its tail, missing just slightly to my right, and moved my sword in for the chop. But it didn't dismember the tail, it just got stuck, left my grip too, damn thing.~
= ~So now it was an unarmed halfling against a really angry wyvern that was staring at me while waving its tail and range, lunging its head forward for some teeth action. I wasn't having none of it.~
= ~I grabbed its face just as its head moved forward, and gave it the biggest slap I could with my hand. Knocked out. Not sure where I came up with the idea, but it was great!~
END 
++ ~Very...interesting. Thank you for the story.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.5
++ ~That's silly. It died just from that?~  + Story2.6 
++ ~Now that's humorous! Haha, well done!~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + Story2.5

CHAIN X3Kal25J Story2.5 
~Anytime, anytime! Always my favorite tale to retell.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story2.6 
~I've got rough palms, I've heard. Hard to believe, but I still have that wyvern's head somewhere in Gullykin to show for it. Unless ma threw it out.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story3 
~Eh, I could tell you a story. Or we could *make* a story.~
END 
++ ~What do you mean?~ + Story3.1 
++ ~Make one? What do you have in mind?~ + Story3.1 
++ ~I really just wanted to hear a story.~ + Story3.2 

CHAIN X3Kal25J Story3.1 
~Easier to show you than to tell you.~
EXTERN X3Kal25J Story3.5

CHAIN X3Kal25J Story3.2 
~Don't take this the wrong way, but you're a bit dense at times, you know that?~
END 
++ ~Hey, that's not very nice.~ + Story3.3 
++ ~Oh. You meant...~ + Story3.4
++ ~I am definitely taking it the "wrong" way. Why would you say that?~ + Story3.3 

CHAIN X3Kal25J Story3.4 
~Heh, now you are getting it.~
EXTERN X3Kal25J Story3.5

CHAIN X3Kal25J Story3.3 
~Sorry, sorry, sheesh. Allow me to make it up to you...~
EXTERN X3Kal25J Story3.5

CHAIN X3Kal25J Story3.5
~(He pulls you to him, tugging your hand, pulling you close to giving you a longing kiss.)~
END 
++ ~(Kiss him back.)~ + Sleep4 
++ ~Mmm. Let's head to bed and continue there.~ + Sleep2
++ ~Oh. This is sweet, Kale, but maybe another time.~ + Story3.6

CHAIN X3Kal25J Story3.6 
~Right, right. Damn, I feel rejected. But I bet you'll make the waiting worth while.~
EXTERN X3Kal25J RestExit 

CHAIN X3Kal25J advice8
~You know mate, it's never been less clear. I guess it's whatever your destiny commands. Frustrating, eh?~
END 
++ ~What do you mean?~ + advice8.1 
++ ~A little, yes. It would be nice for some rest.~ + advice8.2
++ ~Not at all. The adventure goes on.~ + advice8.3

CHAIN X3Kal25J advice8.1
~Just saying you don't seem to have much of a choice in what direction to go to. Yet the exact direction is...vague. I don't know if I'm making sense. Probably too tired to.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice8.2 
~Wouldn't it? You finally get some recognition and thrown right out into traveling again. What can we do, eh?~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice8.3
~If you're happy mate, I guess it isn't so bad. Guess it can't hurt to add to our accolades.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice9
~Well, we take out all of these other bhaalspawn who, coincidentally, want to kill you.~
= ~Murder begets murder. Doubt there's going to be any way around that.~
END 
++ ~I don't think any of them are even redeemable, Kale.~ + advice9.1
++ ~You're losing the stomach for killing now?~ + advice9.2
++ ~Unfortunately, no.~ + advice9.3

CHAIN X3Kal25J advice9.1
~Yeah probably not. And to think a fire giant was one of them. Bhaal really had gotten busy!~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice9.2
~Pfft. Nah. That's not it. Just a bloody path. Gets to your conscience a little. But nevermind me, mate.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice9.3
~Right? I don't mind killing, lots of it even. But our adventure has had it in more amounts than I've ever heard of. Chilling, almost, the number of monsters I've seen dead around us. Not sure if it's luck or rotten luck, but I'm glad we're still standing.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Hug1
~(You reach out to embrace Kale, and he embraces you in turn, stroking your head gently.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Kal25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Hug2
~(You reach out to squeeze Kale's hand, and he gently squeezes yours in turn.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Kal25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Hug3
~(When you give him an affectionate swap at his hindquarters, he smirks.) Sooo. Someone's feeling touchy today.~
END 
IF ~RandomNum(3,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Kal25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss1 
~(There's a prickle of shaved hair that tickles your lips when you kiss. A devilish grin forms on Kale's face afterwards.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss2 
~Mmm. No complaints about one of those.~
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss3 
~Heh. Pucker me up anytime.~
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss4 
~(With little warning, Kale tugs you to him, pressing his lips to yours in earnest, before breaking apart for a breathe)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J BathYes 
~What fool would say no to that?~
EXTERN X3Kal25J BathJoin 

CHAIN X3Kal25J BathJoin
~(You move together to the inn's baths, where a bath is prepared for you. When you step in, the water is delightfully warm to your skin.)~
= ~Phew. This is relaxation! I wish we had water this warm back in Gullykin.~
END 
++ ~You didn't boil your water?~ + BathJoin.1 
++ ~I'm glad you are enjoying yourself.~ + BathJoin.2 
++ ~(Pull him close.)~ + BathJoin.3

CHAIN X3Kal25J BathJoin.1 
~Well, it took forever. And we halflings always like to move to doing something else. Like eating.~
EXTERN X3Kal25J BathJoin.2 

CHAIN X3Kal25J BathJoin.2
~This is nice. How it should be, you know? Hard work, great reward.~
= ~If we aren't always going to get the recognition, would be nice to get the luxury once in a while.~
END 
++ ~It it just the fame that you want, Kale?~ + BathJoin.5
++ ~Forget that for a while. Let's enjoy this.~ + BathJoin.4 
++ ~I recognize you, Kale. And I'm thankful for you.~ + BathJoin.6

CHAIN X3Kal25J BathJoin.5
~It would be nice. But eh, as long as I have you? I'll manage.~
EXTERN X3Kal25J BathJoin.4

CHAIN X3Kal25J BathJoin.4 
~(Your hands wander over eachother, cleaning, or sometimes being playful, grinning, laughing, until eventually temptation proves the stronger force.)~
= ~(When you are done, you leave warm, happy, and satisfied, as you move to your room for rest.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 


CHAIN X3Kal25J BathJoin.6 
~Damn. I don't know what I did to deserve you, mate.~
EXTERN X3Kal25J BathJoin.4

CHAIN X3Kal25J BathJoin.3 
~(He pecks your cheek in turn, giving you a playful grin.)~
EXTERN X3Kal25J BathJoin.2

CHAIN X3Kal25J RestLate 
~*Yawn*. I'm all tuckered out. We should get some rest.~
END 
IF ~Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN X3Kal25J RestLove
IF ~~ EXTERN X3Kal25J RestExit

CHAIN X3Kal25J Sleep 
~You are mine, <CHARNAME>.~
END 
++ ~Always.~ + Sleep4
++ ~I know what you intend, but perhaps we can just get some rest instead.~ + Snuggle

CHAIN X3Kal25J Sleep2 
~Heh, I'll never say no to that.~
EXTERN X3Kal25J Sleep4

CHAIN X3Kal25J Sleep4 
~(He tugs you towards his resting place, before undressing you eagerly, giving a small affectionate touch to each new revealed portion of skin.)~
= ~(He then undresses himself, giving you a smug grin.). Shall we get started, then?~
END 
++ ~Definitely. But I'll take the lead.~ + Sleep9
++ ~Yes.~ + Sleep8

CHAIN X3Kal25J Sleep9 
~Well then. I'm yours to command.~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Kal25J Sleep9F 
IF ~Gender(Player1,MALE)~ EXTERN X3Kal25J Sleep9M 

CHAIN X3Kal25J Sleep9F 
~(He lets himself fall on his back, ushering you over him. The bliss of joining is terribly satisfying, and urges and needs unknown take over your movements from there.)~
EXTERN X3Kal25J Sleep10A

CHAIN X3Kal25J Sleep9M 
~(He lets himself fall on his front, ushering you over him. The bliss of joining is terribly satisfying, and urges and needs unknown take over your movements from there.)~
EXTERN X3Kal25J Sleep10A

CHAIN X3Kal25J Sleep10A 
~(When your energy is exhausted, your chest rising and falling after finding sweet release, you feel the comfort of your hand being squeezed, as fatigue draws your body into sleep.)~
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Kal25J Sleep8 
~You're going to enjoy this, love.~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Kal25J Sleep8F 
IF ~Gender(Player1,MALE)~ EXTERN X3Kal25J Sleep8M 

CHAIN X3Kal25J Sleep8F 
~(You lay down on your back, as he moves towards you. The bliss of joining is terribly satisfying, and urges and needs unknown speak to you in their compelling whispers.)~
EXTERN X3Kal25J Sleep10B 

CHAIN X3Kal25J Sleep8M 
~(You lay down on your front, as he moves towards you. The bliss of joining is terribly satisfying, and urges and needs unknown speak to you in their compelling whispers.)~
EXTERN X3Kal25J Sleep10B

CHAIN X3Kal25J Sleep10B 
~(When Kale's energy is exhausted, both sated as your chest rises and falls, you feel the comfort of your hand being squeezed, fatigue drawing your body to sleep.)~ 
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Kal25J RestLove 
~We could settle in right to bed...or not, if you've got a bit of energy.~
END 
++ ~Let's get some rest together.~ + Snuggle
++ ~I have some energy. I want you.~ + Sleep4

CHAIN X3Kal25J RestExit 
~Rest well, mate.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Kal25J RestLove2 
~Just some rest, eh? Or do you think you have some energy?~
END 
++ ~I'm always up for some fun.~ + Sleep2 
++ ~I just want to get some rest.~ + Snuggle 

CHAIN X3Kal25J Snuggle 
~I'd be happy to do that, love.~
EXTERN X3Kal25J Snuggle2 

CHAIN X3Kal25J Snuggle2 
~(You settle in together, cuddling close as weariness pulls you into slumber.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

// ToB Outdoor1 
CHAIN X3Kal25J Outdoor1
~(You watch Kale sitting near a tree, eating from a small bowl.)~
= ~Good stuff, eh?~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Food","LOCALS",0)~+ ~Mind if I have a bite?~ DO ~SetGlobal("X3Food","LOCALS",1)~ + Food1
+~Global("X3Food","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind if I have a bite?~ DO ~SetGlobal("X3Food","LOCALS",2)~ + Food2
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Kiss him~ + KissFood
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your meal.~ + RestExit 

CHAIN X3Kal25J KissFood
~(You can taste the soup on his lips, slightly sweet. He smirks as you pull away.) You just wanted a taste of my meal, eh?~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll let you enjoy your meal.~ + RestExit 

CHAIN X3Kal25J Food1 
~Sure! (He hands you his soup bowl for you to taste.)~
= ~How is it?~
END 
+~InParty("X3Hel")~+ ~Not bad. Who made this?~ + Food3 
+~!InParty("X3Hel")~+ ~Not bad. Who made this?~ + Food6 
+~InParty("X3Hel")~+ ~A little too sweet.~ + Food4 
+~!InParty("X3Hel")~+ ~A little too sweet.~ + Food5 
++ ~Not any better than our rations.~ + Food7

CHAIN X3Kal25J Food3 
~Heh, Helga. Wish I could cook this well.~
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food6
~Heh, I might have a shot as a cook then. This is my work. Glad you liked it.~
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food4 
~Heh, Helga hates it when I ask it to be sweetened too. But it makes it bearable, I don't like the ingredients she picks otherwise.~
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food5 
~Well, that's the way I like it. Sorry about that.~
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food7 
~Eh...well...I'll remember that. Damn. There goes my cooking future.~
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food8 
~(Kale finishes his meal, before giving a satisfied sigh.) Good stuff, good stuff.~
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Food2 
~You bet. (Kale takes his spoon, and puts it gently towards you to taste.)~
= ~Now, how does it compare to a Kale kiss? Not as sweet, I bet.~
END 
++ ~This is way too sweet, actually.~ + Food9 
++ ~I might need one to remind myself.~  + Food10 
++ ~Nothing can replace your affections.~ + Food11

CHAIN X3Kal25J Food9 
~I...overdid it with the sweet flavor then. Whoops.~
EXTERN X3Kal25J Food8 

CHAIN X3Kal25J Food10 
~(He obliges, giving you a peck of his lips.) You better never forget, mate.~
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food11 
~Heh, good. It should stay that way.~
EXTERN X3Kal25J Food8 

// ToB Outdoor2 

CHAIN X3Kal25J Outdoor2
~(You find Kale inside his tent, stitching up his cloak.)~
= ~Not sure how my cloak keeps surviving every skirmish. But damn does it still look good.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Kale your affections.~ + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Kale your affections.~ + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Kale your affections.~ + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss him~ + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss him~ + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss him~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  ~You look handsome.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Let's spend the night together.~ + Sleep2 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you practice.~ + RestExit 

/*Recorder*/

CHAIN X3Rest RecorderNoSet 
~You move to find Recorder.~
END 
IF ~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3RebJ Inn1
IF ~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3RebJ Inn2
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3RebJ Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3RebJ Outdoor2
IF ~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Reb25J Inn
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Reb25J Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Reb25J Outdoor2

CHAIN X3Rest RecorderSet  
~You remember you asked Recorder to spend a bit of time together before you rested.~
END 
+~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Recorder.)~ EXTERN X3RebJ Inn1
+~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Recorder.)~ EXTERN X3RebJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Recorder.)~ EXTERN X3RebJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Recorder.)~ EXTERN X3RebJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Recorder.)~ EXTERN X3Reb25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Recorder.)~ EXTERN X3Reb25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Recorder.)~ EXTERN X3Reb25J Outdoor2 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

//SoA 
CHAIN X3RebJ Inn1 
~(You find Recorder in her room, writing in a thick tome. She doesn't notice you until she finishes and closes it shut.)~
= ~Oh. <CHARNAME>, what do you need?~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Recorder your affections.~ + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Recorder your affections.~ + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Recorder your affections.~ + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3RebRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+~Would you like to bathe with me?~+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~How about we spend the night together?~  + Sleep1 // Same as below, except sets slept to 1.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3RebJ Talks
~Yes, of course. What do you want to speak of?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~As a bard, you probably have many wonderful stories to share. Can you tell one?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3RebJ Story1 
~I would not mind doing that for you. Please, make yourself comfortable.~
= ~There was an inspiring performer, a young girl who loved the sounds of the plucked strings of the harp. But it never made the sounds that she heard in inns and taverns.~
= ~Her family too poor to afford lessons, she wandered distraught into the forest, wondering if her destiny was set to be common and unadventerous. While she wept, a little forest pixie heard her weeping and came to flutter beside her.~
= ~"Wipe your eyes, little girl", she said. "I have heard your cries and bring you a gift. Take this key into the tree's hollow. You will find a hole where it fits. Inside shall be a golden harp. Play it everday, and its magic will make you more skilled. But its magic is broken if you stop the daily routine."~
= ~Overjoyed, the girl thanked the creature profusely, and promised that she would keep true to her directions.~
END 
++ ~This sounds almost like a children's tale.~ + Story1.1
++ ~What happened next?~ + Story1.2
++ ~I was hoping for something more adventurous.~ + Story1.6

CHAIN X3RebJ Story1.1 
~It is, in a way. One of my favorites.~
EXTERN X3RebJ Story1.2

CHAIN X3RebJ Story1.6
~I am sorry. I will tell something like that next time.~
EXTERN X3RebJ Story1.2 

CHAIN X3RebJ Story1.2 
~Over the years, she kept to the fey's direction. Soon she mastered little harmonies and melodies, but her work never quite matched even the novice local performers that would visit the taverns. Her father had passed away and the family income was now the responsibility of her mother, who found her daughter's hobby unhelpful to the new burden.~
= ~Her friends made fun of her for being cooped up in her tree for so long, and one day, frustrated by her music's to match the serene perfection of the great performers she heard, she dropped the harp on the ground and curled into the corner, distraught.~
= ~The pixie visited her that night, and told her "I will take back the gift, if it so displeases you.". But the young girl, with time having passed to ease her pain, pleaded for her to keep it, for another chance. The pixie granted this, and another gift, a small ring, which shimmered a silver light, and was engraved with the word 'belief'.~
= ~"This is from my sister". Wear it, and the magic will be all the stronger.~
= ~She always wore the ring after that, even to the day she dissapeared from the village altogether, no longer needing the old gifted harp. Her music had become angelic, and people from all around invited her to play. Fame and riches came to her, as well as suitors, but she had never thanked the creature.~
= ~One day in her dreams, she saw the pixie again. She exclaimed her thanks, but distressed she had no gift worthy to give her. So she asked her name, so she could immortalize it in song.~
= ~'My name', the creature said, 'is persistence'.~
END 
++ ~That was a beautiful story.~ + Story1.4 
++ ~That was a rather long tale.~ + Story1.3 
++ ~Was anything in that story really magic?~ + Story1.5

CHAIN X3RebJ Story1.4 
~Thank you. It is a story I shared once with someone special. And you are special, so I thought it would be fitting if you heard it.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story1.5 
~It could be, but it doesn't have to, either. Faith and perseverance are real forces. We can conjure up this magic with our minds, but it takes much discipline to truly retain their power.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story1.3 
~I am sorry. It is a bit of a longer tale, but I thought since there was time, it would work. I will keep brevity in mind next time.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2 
~I would love to. Perhaps I can tell you of another early adventure. Before I met you. Before I even crossed the border from Amn to Baldur's Gate.~
= ~I had left Althkata to make my way to a local town where a caravan would make a route north. There were caravans like that in Althkata, but they were expensive, and some were a bit suspicious.~
= ~I had rested near a cave, thinking it free of anyting, when this enormous swarm of dire rats came bustling out. Alone they aren't too worrisome, a crossbow bolt usually scares them off, but in a swarm they could take down a grown gnome like myself.~
END 
++ ~Did you run?~ + Story2.1 
++ ~What happened next?~ + Story2.2 
++ ~Did you fight?~ + Story2.6

CHAIN X3RebJ Story2.1 
~I did run a little, and fired at whatever got too close.~
EXTERN X3RebJ Story2.2 

CHAIN X3RebJ Story2.2
~They were getting closer and closer, and one of them had managed to nip through my dress. Then Gustav jumped out of my pack and hissed at all of them, standing his ground.~
= ~I couldn't believe it. They had the numbers. They could either swarm or back off...and somehow Gustav's cry was intimidating enough they all went back into the cave.~
= ~I always knew from that day on we would protect eachother. Although I still hate it when he does something so foolish like that.~
END 
++ ~You have a good pet, Recorder.~ + Story2.3 
++ ~I'm suprised you just let him do that.~ + Story2.4 
++ ~Thank you for the tale.~ + Story2.5

CHAIN X3RebJ Story2.3 
~More than a pet. A true friend.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2.4 
~I wanted to scoop him up. But they way he just acted...something told me to trust him. I'm glad I did.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2.5 
~Anytime you wish, <CHARNAME>. I am glad to share stories, even if they are about myself like this.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2.6 
~I did fight back a little, and made movement away from the cave whenever it was safe to take steps away.~
EXTERN X3RebJ Story2.2

CHAIN X3RebJ Story3 
~Another one? Well...I guess I could tell you of my trip from Brynnlaw to Amn.~
= ~I believe I told you in the past I was put in a barrel. It was difficult to breathe, it was stuffed with fish of all things.~
= ~I guess it was a free bit of sustenance, but it was a high risk to go anywhere while on board.~
END 
++ ~That sounds highly uncomfortable.~ + Story3.1 
++ ~This was after you thought you had killed your son?~ + Story3.1 
++ ~How did you endure?~  + Story3.2

CHAIN X3RebJ Story3.1 
~It was...I remember just being in misery. But life before then had been terrible. It was endure or die.~
EXTERN X3RebJ Story3.2 

CHAIN X3RebJ Story3.2 
~I ate what I needed, and slept when I could. Sleeping made time go faster. And sometimes, when it was quiet, I would test the lid of the barrel, but only will kept me from looking around.~
= ~In some ways...I did want to die then. Raban should have been with me, but he wasn't. The only thing that gave me any sense of hope was in Amn, was a temple of Oghma, and with it, a way to my mother.~
= ~I didn't leave the fish barrel until they opened it themselves, a fishing merchant. It was terrifying to be in someone else's mercy, especially as I had eaten what I had to live. The Temple of Oghma was but steps away, just at Althkata's docks, and he could have given me to the guards or worse, back to Brynnlaw.~
= ~I will never forget his kindness. He let me go, with a promise that he would stop by the temple later to see if my story was true. He got some clothes from his wife for me, a bit large, but...fitting enough. Mine smelled like fish and were wet.~
= ~They healed me at the temple, and eventually got word to my mother. She paid the fisherman very well at my request. If it was another one, I may never have been here.~
= ~I  know this is a weird story to tell. It's not heroic just...about enduring and surviving.~
END 
++ ~I was curious how you made it to Amn in one piece. I found it interesting.~ + Story3.3 
++ ~Think nothing of it.~ + Story3.3 
++ ~Just make your next one more exciting.~ + Story3.4

CHAIN X3RebJ Story3.3 
~I am glad then. I found it embarrasing to think about. But being in the hands of others...I think there is a true fear in that. When all you can do is plead with your eyes, and try to speak with only your body.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story3.4 
~I will try on your behalf. It is just something that surfaced on my mind.~
EXTERN X3RebJ RestLate 


CHAIN X3RebJ HealthHigh1 
~I am faring just fine, <CHARNAME>.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ HealthHighLove1 
~I am doing well, my love. Gustav is too.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthHigh2
~I am in one piece. Thank you for checking on me.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ HealthHighLove2
~With you around, my love, I am strong.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthLow1 
~A little injured. Some rest will help.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ HealthLowLove1 
~It hurts...but I am glad to be alive by your side.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthLowLove2 
~I am in some pain, my love. But with you here, it is a little better.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthLow2 
~Injured, but still standing. It could be worse.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ PlayerHealthy1 
~You look to be okay, <CHARNAME>. That makes me glad.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3RebJ PlayerHealthy2 
~You seem to be strong as ever. Inspiring.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3RebJ PlayerHealthyLove1 
~You seem to be okay, my love. That makes me glad.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3RebJ PlayerHealthyLove2 
~You seem to be as strong as ever, darling. That makes me happy.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3RebJ PlayerHurt1 
~I hope you get some rest. Your injuries look painful.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3RebJ PlayerHurt2 
~Are you all right though? I can see some of the wounds you've sustained. They look worrying, but I know you'll say you'll endure.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3RebJ PlayerHurtLove1 
~I hope you don't mind if I look over your wounds. I can't heal them, I just want to make sure they're not threatening...Hrm. I suppose they seem fine.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3RebJ PlayerHurtLove2 
~You are hurt, my love. You don't need to hide it. I'd rather know than always wonder. Some rest will do you good.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3RebJ advice2 
~Hrm. The problem ahead is to gather money for a group you are not even sure of, is that correct?~
END 
++ ~More or less correct.~ + advice2.1 
++ ~I can't think of any other path.~ + advice2.1
++ ~Them, or anyone else who can assist us.~ + advice2.1

CHAIN X3RebJ advice2.1 
~I would try to listen for people who ask for help. Many offer monetary reward, because their troubles are a bit too significant for simple volunteer work.~
= ~Find them, and then assist as many as you can. I am sure given enough time, we can have enough gold.~
= ~We just have to be mindful of what we spend: Spend too little, and we may be underequipped. Spend too much, and it will take us a long time. That is my advice.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ RestLate 



CHAIN X3RebJ advice3 
~You ask a difficult question, <CHARNAME>.~
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3RebJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3RebJ advice3b

CHAIN X3RebJ advice3a 
~The Shadow Thieves are always looking for opportunity, and we could just be their pawns. But I do not see much of another option. Do you trust them?~
END 
++ ~I have no choice.~ + advice3a.1 
++ ~I do.~ + advice3a.1 
++ ~They'll regret it if they cross me.~ + advice3a.2

CHAIN X3RebJ advice3a.1 
~That is what I see, too. We have to have faith, and perhaps the path will prove true.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3a.2
~I would hold onto that, then. Have faith, and the path will prove true.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3a.3
~I don't know, I do not think they intend to cross us. Perhaps use us, but I have faith they will prove true.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3b
~To work with vampires, undead and evil must have been a very difficult decision...do you trust them?~
END 
++ ~I have no choice.~ + advice3b.1 
++ ~I do.~ + advice3b.2
++ ~They'll regret it if they cross me.~ + advice3b.3

CHAIN X3RebJ advice3b.1 
~We did have a choice. But I wonder if the other one is truly any better. I hope the path at the end has a light.~
DO ~DisplayStringNoNameDlg(Player1,@403)IncrementGlobal("X3RebApp","GLOBAL",-3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3b.2
~I am less sure. I do not trust them, but I will still walk with you~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3b.3
~They would, though I wonder if that is their plan all along. We can only move forward and see.~
EXTERN X3RebJ RestLate 



CHAIN X3RebJ advice4 
~I'm not the best person to ask. I...really want out of here.~
END 
++ ~We'll not be here long.~ + advice4.1 
++ ~Be strong, Recorder.~ + advice4.2
++ ~Just answer my question.~ + advice4.3

CHAIN X3RebJ advice4.1
~Thank you...I wished I could give proper advice but...~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ advice4.3

CHAIN X3RebJ advice4.2 
~That is the right thing to do. But it is far, far too difficult to accomplish.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ advice4.3

CHAIN X3RebJ advice4.3
~I'm sorry. That is all I can suggest...that we leave quickly.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice6
~Irenicus seems to be forming the path for you. No matter how many walls are in your way, it is climbing and climbing until he is before us.~
END 
++ ~I will have my revenge.~ + advice6.1
++ ~We will make it past them all.~ + advice6.2
++ ~Do you expect more such obstacles?~ + advice6.3

CHAIN X3RebJ advice6.1
~You scare me when you say that but...with what he did to you, I can think of no reason why anyone shouldn't seek revenge.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice6.2
~Your faith inspires me. I truly believe we  can survive, and last long enough that you can get your soul back in time.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice6.3
~Many. But I do believe that we can get through each of them. We have to.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ compliment
~Oh, thank you. You look um, nice, too, despite the day's affairs.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
= ~Did you want to talk?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~As a bard, you probably have many wonderful stories to share. Can you tell one?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3RebJ Hug1
~(You reach out to embrace Recorder, and she leans into your touch welcomingly.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3RebJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Hug2
~(You stroke Recorder's cheek, and she leans into your touch with a content sigh.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3RebJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Hug3
~(You reach forward to grasp her hand, slightly cool to the touch. Her fingers grasp around it and squeeze back.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3RebJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss1 
~(A smile forms on her lips as you kiss her. She gives a longing sigh when you pull away.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss2 
~Heehee. I love you too.~
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss3 
~Mmm. This was nice.~
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss4 
~(Recorder pulls you to her, and you find her lips on yours, warm, slow pecks.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ StayTalk 
~Stay and talk to me for a while? I enjoy your presence dearly.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~As a bard, you probably have many wonderful stories to share. Can you tell one?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 
 

CHAIN X3RebJ BathYes 
~I'd love to, <CHARNAME>.~
EXTERN X3RebJ BathJoin 

CHAIN X3RebJ BathJoin
~(You and Recorder embark together to the inn's baths, where an attendant prepares warm water before giving you privacy.)~
= ~*Sigh*. This is so relaxing. I didn't realize how sore I was.~
END 
++ ~Would you like a massage?~ + BathJoin.1 
++ ~I thought you might like this.~ + BathJoin.2 
++ ~(Pull her close.)~ + BathJoin.3

CHAIN X3RebJ BathJoin.1 
~That sounds nice. Please, go ahead.~
= ~(She turns with her back facing and allows you to move your hands to relieve her back.)~
END 
++ ~(Continue the massage.)~ + BathJoin.4
++ ~(Let your hands wander playfully.)~ + BathJoin.7

CHAIN X3RebJ BathJoin.2 
~Definitely. This is...utterly relaxing.~
EXTERN X3RebJ BathJoin.3 

CHAIN X3RebJ BathJoin.3
~(She sets her head to your side, closing her eyes.)~
END 
++ ~(Massage her back.)~ + BathJoin.4 
++ ~(Let your hands wander playfully.)~ + BathJoin.7

CHAIN X3RebJ BathJoin.4 
~(For a while you massage her back, moving her hands to soothe tense muscle and sores, while cleaning with the water. She turns and gives you a thankful peck of her lips when you are done.)~
= ~I am lucky to have you, <CHARNAME>. You have no idea.~
END 
++ ~And I you.~ + BathJoin.5 
++ ~Quite lucky, I'd say.~ + BathJoin.6
++ ~Perhaps you can return the favor?~ + BathJoin.5

CHAIN X3RebJ BathJoin.5 
~(She twirls a finger, gesturing for you to turn around as she now massages and cleans you. The water grows slightly cold when all is done, and you return to your room to rest together.)~
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
 CHAIN X3RebJ BathJoin.6
 ~Quite? Maybe I am. It is your turn now, I believe.~
 EXTERN X3RebJ BathJoin.5

CHAIN X3RebJ BathJoin.7
~What are yo- oh. Is that what you want, then?~
= ~(She laughs and pulls you to her, kissing, sighing, and exhaling in bliss given and taken. The water grows cold when all is done, and you return to your room to rest together.)~ 
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3RebJ Sleep 
~I desire you so much. Join me, please.~
END 
+~Global("X3Slept","LOCALS",2)~+ ~I'd love to, normally. But let's just get some rest.~ + Snuggle4
++ ~Gladly, my love.~ + Sleep3 
++ ~If that is your wish.~ + Sleep3 
+~!Global("X3Slept","LOCALS",2)~+ ~Not today, Recorder. I want to take this slow.~ + Snuggle 

CHAIN X3RebJ RestLove2
~To rest, then. But...I desire you, <CHARNAME>, and if you wanted to, well...~
END 
+~Global("X3Slept","LOCALS",2)~+ ~I'd love to, normally. But let's just get some rest.~ + Snuggle4
+~!Global("X3Slept","LOCALS",2)~+ ~Are you sure about this?~ + Sleep2
++ ~Of course, Recorder. Come here.~ + Sleep3
++ ~Gladly, my love.~ + Sleep3
+~!Global("X3Slept","LOCALS",2)~+ ~Not today, Recorder. I want to take this slow.~ + Snuggle 

CHAIN X3RebJ Snuggle 
~Can you still stay with me? I want to feel you beside me, if that is all right.~
END 
++ ~That I would like a lot.~ + Snuggle2 
++ ~I'd rather sleep alone.~ + Snuggle3 

CHAIN X3RebJ Snuggle3 
~Oh...have a good rest, then.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3RebJ Snuggle4 
~I understand. Hold me close. It makes me feel safe.~
EXTERN X3RebJ Snuggle2 

CHAIN X3RebJ Snuggle2
~(You fall together in your resting place, Recorder leaning against you all the while as your eyes drift into rest and dreams.)~
EXIT

CHAIN X3RebJ Sleep1 
~That sounds lovely, <CHARNAME>. I would be glad to.~
EXTERN X3RebJ Sleep3  

CHAIN X3RebJ Sleep2 
~Very sure, <CHARNAME>. I cannot think of a more worthy <PRO_MANWOMAN>.~
EXTERN X3RebJ Sleep3 

CHAIN X3RebJ Sleep3 
~(She guides you to her resting place, before moving her fingers to undo your clothing. She gives you a long, yearning kiss, sweet and slow, before stepping away to undo her own clothes.)~
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3RebJ Sleep4 
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3RebJ Sleep9 

CHAIN X3RebJ Sleep4 
~(She slows down, as if hesitating, before slipping off her tunic. A hand covers what is a noticeable scar on her abdomen.)~
= ~I'm sorry. I don't know why I am so...nervous suddenly. It's nothing.~
END 
++ ~How did you get it?~ + Sleep5 
++ ~Don't hide it. You are all beautiful.~ + Sleep7
++ ~(Kiss her.)~ + Sleep7

CHAIN X3RebJ Sleep5 
~Phelgrim. In a different time, when I was younger and prettier but...not truly in love. This is silly. I love you. And...you love me. I want this.~
END 
++ ~I want this too.~ + Sleep7
++ ~Maybe we should wait. You don't need to force something you are uncomfortable with.~ + Sleep8 
++ ~I don't think I can see this everyday, I'm sorry.~ + Sleep6

CHAIN X3RebJ Sleep6 
~I...I am glad you told me that now. (She turns away from you, clearly embarrased, as she puts her clothes on.) Please leave...I'm sorry for...I don't even know. Just leave me alone.)~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3RebJ Sleep7 
~Oh, you make me blush. You are a blessing from Garl. I just feel it.~
EXTERN X3RebJ Sleep9 

CHAIN X3RebJ Sleep8 
~You are very sweet, <CHARNAME>. But I will be fine. I promise you.~
EXTERN X3RebJ Sleep9 

CHAIN X3RebJ Sleep9 
~(She lays herself down, letting you take the lead, guiding you to her mouth for more slow, sweet yearning kisses. Her fingers graze into your hair as she sighs.)~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3RebJ Sleep10M 
IF ~Gender(Player1,MALE)~ EXTERN X3RebJ Sleep10F 

CHAIN X3RebJ Sleep10M 
~(She guides your fingers across herself, before beckoning you into her. You join with a slow, sweet passion, a slow, growing wave, that eventually builds into a full momentum before crashing down from a blissful high.)~
EXTERN X3RebJ Sleep11 

CHAIN X3RebJ Sleep10F 
~(She guides your fingers across herself, before beckoning one of them into her. You watch your tender loving grow into a wave, that eventually builds into a full momentum before it comes crashing down from a blissful high.)~
EXTERN X3RebJ Sleep11 

CHAIN X3RebJ Sleep11 
~(When you are done, you find her panting, and glowingly happy. She pulls you to her side and leans her head against yours. Soon the call of sleep takes you both into slumber.)~
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT  

CHAIN X3RebJ RestExit 
~Have a good rest <CHARNAME>.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3RebJ Inn2
~(You find Recorder writing into her tome, notes sprawled out on a table.)~
= ~It is so hard to keep track of everything. I'm glad we stopped in an inn, the lighting makes it easier to write.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Records","LOCALS",0)~+ ~How goes your records?~ DO ~SetGlobal("X3Records","LOCALS",1)~ + Record1
+~Global("X3Records","LOCALS",1)~+ ~How goes your records?~ DO ~SetGlobal("X3Records","LOCALS",2)~ + Record11
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Kiss her~ + KissWrite
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your writing.~ + RestExit 

CHAIN X3RebJ KissWrite
~(She allows you a peck, before shifting back to focus on her work.)~
= ~You are distracting, <CHARNAME>. I appreciate your affections dearly though.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Records","LOCALS",0)~+ ~How goes your records?~ DO ~SetGlobal("X3Records","LOCALS",1)~ + Record1
+~Global("X3Records","LOCALS",1)~+ ~How goes your records?~ DO ~SetGlobal("X3Records","LOCALS",2)~ + Record11
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your writing.~ + RestExit 

CHAIN X3RebJ Record1 
~Well, actually. Would you mind if I asked you a question while you are here? This is for the records.~
END 
++ ~Certainly.~ + Record2 
++ ~If you want to.~ + Record2 
++ ~A little. I'd rather not be interviewed right now.~ + Record3 

CHAIN X3RebJ Record3 
~I understand. I will let you be then, <CHARNAME>. Have a good rest.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3RebJ Record2 
~Do you find it difficult to retain your beliefs and ideologies on things as you have traveled? I imagine when a situation reveals itself, how you are taught might be difficult to apply to what is happening.~
END 
++ ~I don't actually. I stand by everything Gorion taught me to this day.~ + Record4 
++ ~I've had to make compromises, yes. Sometimes it is a matter of choosing what is the least evil when there are no good choices.~ + Record5 
++ ~I've not cared about any of that. Such things only hold you back.~ + Record6

CHAIN X3RebJ Record4 
~He would be proud of you for trying. I didn't know him well. But I do believe that.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ Record7

CHAIN X3RebJ Record5 
~That must be a bit frustrating. But I believe if you keep trying, you may find you do not have to sacrifice good things to do necessary things.~
EXTERN X3RebJ Record7

CHAIN X3RebJ Record6 
~I can...understand why someone may come to that mindset. It isn't one I share, but it isn't one I can find fault with either.~
DO ~DisplayStringNoNameDlg(Player1,@403)IncrementGlobal("X3RebApp","GLOBAL",-1)~
EXTERN X3RebJ Record7

CHAIN X3RebJ Record7 
~I think readers will like being able to see a little bit more of your thinking from your own words. If I ever live to see this published.~
END 
++ ~You will. I promise.~ + Record8 
++ ~I am sure I can finish writing it for you if you do.~ + Record9 
++ ~There are plenty of others who have witnessed my travels, I am sure.~ + Record10 

CHAIN X3RebJ Record8 
~You always just have this way of inspiring people. I really enjoy that.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Record9 
~Um...while you could do that, it would make it more of an autobiography. I suppose it could be interesting.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Record10 
~I hope not. Not that I mind others contributing! I just...nevermind, I am just being silly again.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Record11 
~Well! Though I think another question has formed on my mind, if you don't mind me asking.~
= ~Why do you adventure, <CHARNAME>?~
END 
++ ~Honestly, I've felt more forced to the road than anything else.~ + Record12 
++ ~I want to make lives better. Make the world a better place.~ + Record13 
++ ~For the fame and glory. I want to be remembered.~ + Record14 
++ ~I want to show how strong I am, and become even more powerful.~ + Record15 
++ ~I just want to be rich, really.~ + Record16 
++ ~I'd rather not say.~ + Record3 

CHAIN X3RebJ Record12
~From a sort of destiny call? Knowing who you are...I can understand where that answer comes from. I think it suits you, though I do believe you have some crafting of your own road. You are not entirely beholden to fate. But maybe I'm just being quirky.~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record13 
~That is a beautiful thing to do. There is so much suffering and trauma in the world. Just a single soul doing even something small can cause a beautiful ripple that inspires.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record14 
~I understand. Many adventurers wish to carve something out for themselves. To leave their mark on the world, so that they feel their lives have a purpose.~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record15 
~For power? Knowledge and power can be a worthy pursuit if tempered with caution and wisdom. Not that you have done poorly. I hope I do not come across like I am judging.~
DO ~DisplayStringNoNameDlg(Player1,@403)IncrementGlobal("X3RebApp","GLOBAL",-2)~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record16 
~Just...riches? I suppose it is one path to take. Quicker, if also deadlier.~
DO ~DisplayStringNoNameDlg(Player1,@403)IncrementGlobal("X3RebApp","GLOBAL",-2)~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record17 
~Thank you for your answer. It gives me more understanding of you, or at least how you see yourself. Even if it turned out to be something different than what I thought, I think people's self-perceptions can be interesting to someone reading about you.~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ RestLate 
~Oh, I had no idea how late it was getting. We should get some rest.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ RestLove2
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ RestExit

// Recorder Outdoor
CHAIN X3RebJ Outdoor1
~(You watch Recorder sitting near the fire, playing a tune from her flute. She pauses for a moment at your approach.)~
= ~Hello, <CHARNAME>.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Could you teach me to play?~ DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Kiss her~ + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your playing.~ + RestExit 

CHAIN X3RebJ KissOutdoor 
~Mmm. I enjoy your little bits of affection a lot, <CHARNAME>.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Could you teach me to play?~ DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your playing.~ + RestExit 

CHAIN X3RebJ Activity 
~I would be glad to. I'll give you my flute to play. We could start with something simple, like form and playing a note, or a few scales, or maybe even a full tune.~
END 
++ ~Teach me about form and posture.~ + Activity1 
++ ~Let me practice a few scales.~ + Activity2 
++ ~I'd like to play a song.~ + Activity3 

CHAIN X3RebJ Activity1 
~Very well. Extend your arm out, form your lips like a diamond, put your fingers into this position, and blow your air gently. Give it a stream of your breath.~
END 
+~CheckStatLT(Player1,13,CHR)~+ ~(Play a note.)~ + MissLow 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play a note.)~ + MissLow 
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play a note.)~ + HitLow
+~CheckStatGT(Player1,13,CHR)~+ ~(Play a note.)~ + HitLow 

CHAIN X3RebJ MissLow 
~Oh...um...that's not quite it. Do you want to try again?~
END  
+~CheckStatLT(Player1,13,CHR)~+ ~(Play a note again.)~ + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play a note again.)~ + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play a note again.)~ + HitLow
++ ~Ah, this may not be for me. I'll let you keep playing.~ + PlayGiveUp 

CHAIN X3RebJ HitLow 
~That was wonderful. Would you like to try to play a scale?~ 
END 
++ ~Certainly.~ + Activity2 
++ ~Maybe some other time. I'll let you keep playing.~ + PlayStop2 

CHAIN X3RebJ Activity2 
~Let me demonstrate you the positions first. Fingers here...and fingers here, move them just like this, one hole open at a time, and then reverse it, covering them down, until you're back to the first note.~
= ~Now, give it a try.~
END 
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the scale.)~ + MissMid 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the scale.)~ + MissMid  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the scale.)~ + HitMid 
+~CheckStatGT(Player1,13,CHR)~+ ~(Play the scale.)~ + HitMid

CHAIN X3RebJ MissMid 
~Um, that was close. Maybe just a little more practice. Let me demonstrate my positions, and then try again.~
END  
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the scale again.)~ + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the scale again.)~ + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the scale again.)~ + HitMid 
++ ~Ah, this may not be for me. I'll let you keep playing.~ + PlayGiveUp 

CHAIN X3RebJ HitMid 
~Beautiful. You are learning faster than I did. Would you like to try to play a song? I can teach you something simple.~
END 
++ ~I'm up for the challenge.~ + Activity3 
++ ~Maybe some other time. I'll let you keep playing.~ + PlayStop2 

CHAIN X3RebJ Activity3 
~Let me play it first. Watch my positions carefully. I'll demonstrate them to you...I'm playing a little slowly so you can catch it.~
= ~Okay. Let's have you give it a try, <CHARNAME>. It's okay if you aren't perfect. I hope I wasn't going too fast.~
END 
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the song back.)~ + MissHigh
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the song back.)~ + MissHigh  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the song back.)~ + HitHigh  
+~CheckStatGT(Player1,13,CHR)~+ ~(Play the song back.)~ + HitHigh 

CHAIN X3RebJ MissHigh 
~You made a lot of errors on your song. Do you want to try one more time?~
END  
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the song again.)~ + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the song again.)~ + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the song again.)~ + HitHigh 
++ ~Ah, this may not be for me. I'll let you keep playing.~ + PlayGiveUp 

CHAIN X3RebJ HitHigh 
~That was beautiful. You may be a savant of sorts.~
END 
++ ~All thanks to my amazing teacher.~ + Activity4 
++ ~Thanks, Recorder.~ + Activity5 
++ ~This is quite easy.~ + Activity6

CHAIN X3RebJ Activity4 
~You'll make me blush. It was more the student. But you have my thanks.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ Activity7 

CHAIN X3RebJ Activity5
~You are welcome, <CHARNAME>. It was a pleasure to share the gift of music with you.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",2)~
EXTERN X3RebJ Activity7 

CHAIN X3RebJ Activity6
~There are so many songs I could show you sometime. We could maybe even play a duet sometime. That would be wonderful.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ Activity7

CHAIN X3RebJ Activity7 
~I'm going to retire for the night.~ 
END 
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ Activity8
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ Activity9

CHAIN X3RebJ Activity8 
~Have a pleasant rest, <CHARNAME>.~
EXIT 

CHAIN X3RebJ Activity9
~Would you...join me?~
END 
+~Global("X3Slept","LOCALS",2)~+ ~I'd love to, normally. But let's just get some rest.~ + Snuggle4
+~!Global("X3Slept","LOCALS",2)~+ ~Are you sure about this?~ + Sleep2
++ ~Of course, Recorder. Come here.~ + Sleep3
++ ~Gladly, my love.~ + Sleep3
+~!Global("X3Slept","LOCALS",2)~+ ~Not today, Recorder. I want to take this slow.~ + Snuggle 


CHAIN X3RebJ MissFail2 
~Still not quite it, but maybe after some rest, we can get it down some other time.~
EXTERN X3RebJ PlayStop 

CHAIN X3RebJ PlayGiveUp 
~We can try some more some other time. I will try to be a better teacher, then.~
EXTERN X3RebJ PlayStop 

CHAIN X3RebJ PlayStop2 
~Let me know if you are interested in learning some more again.~
EXTERN X3RebJ PlayStop 

CHAIN X3RebJ PlayStop 
~I will let you get some rest. Oghma's blessings to you.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

//Outdoor2
CHAIN X3RebJ Outdoor2
~(You find Recorder inside her tent, kneeling down to give her ferret Gustav a meal.)~
= ~Oh, hello <CHARNAME>. Just feeding Gustav before I fall asleep.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Recorder your affections.~ + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Recorder your affections.~ + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Recorder your affections.~ + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~How about we spend the night together?~  + Sleep1 // Same as below, except sets slept to 1.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 
 
//ToB Recorder 
CHAIN X3Reb25J Inn
~(You find Recorder in a bedroom, carefully safeguarding her tome into her pack.)~
== X3Reb25J IF ~AreaCheck("AR5003")~ THEN ~I hope nothing is destroyed in the night. I would hate to lose everything.~
== X3Reb25J IF ~!AreaCheck("AR5003")~ THEN ~My tome is almost full. Our travels have truly been long.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Recorder your affections.~ + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Recorder your affections.~ + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Recorder your affections.~ + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3RebRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+~Would you like to bathe with me?~+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~How about we spend the night together?~ + Sleep1 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 


CHAIN X3Reb25J Talks
~Yes, of course. What do you want to speak of?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~As a bard, you probably have many wonderful stories to share. Can you tell one?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3Reb25J Story1 
~I would not mind doing that for you. Please, make yourself comfortable.~
= ~There was an inspiring performer, a young girl who loved the sounds of the plucked strings of the harp. But it never made the sounds that she heard in inns and taverns.~
= ~Her family too poor to afford lessons, she wandered distraught into the forest, wondering if her destiny was set to be common and unadventerous. While she wept, a little forest pixie heard her weeping and came to flutter beside her.~
= ~"Wipe your eyes, little girl", she said. "I have heard your cries and bring you a gift. Take this key into the tree's hollow. You will find a hole where it fits. Inside shall be a golden harp. Play it everday, and its magic will make you more skilled. But its magic is broken if you stop the daily routine."~
= ~Overjoyed, the girl thanked the creature profusely, and promised that she would keep true to her directions.~
END 
++ ~This sounds almost like a children's tale.~ + Story1.1
++ ~What happened next?~ + Story1.2
++ ~I was hoping for something more adventerous.~ + Story1.6

CHAIN X3Reb25J Story1.1 
~It is, in a way. One of my favorites.~
EXTERN X3Reb25J Story1.2

CHAIN X3Reb25J Story1.6
~I am sorry. I will tell something like that next time.~
EXTERN X3Reb25J Story1.2 

CHAIN X3Reb25J Story1.2 
~Over the years, she kept to the fey's direction. Soon she mastered little harmonies and melodies, but her work never quite matched even the novice local performers that would visit the taverns. Her father had passed away and the family income was now the responsibility of her mother, who found her daughter's hobby unhelpful to the new burden.~
= ~Her friends made fun of her for being cooped up in her tree for so long, and one day, frustrated by her music's to match the serene perfection of the great performers she heard, she dropped the harp on the ground and curled into the corner, distraught.~
= ~The pixie visited her that night, and told her "I will take back the gift, if it so displeases you.". But the young girl, with time having passed to ease her pain, pleaded for her to keep it, for another chance. The pixie granted this, and another gift, a small ring, which shimmered a silver light, and was engraved with the word 'belief'.~
= ~"This is from my sister". Wear it, and the magic will be all the stronger.~
= ~She always wore the ring after that, even to the day she dissapeared from the village altogether, no longer needing the old gifted harp. Her music had become angelic, and people from all around invited her to play. Fame and riches came to her, as well as suitors, but she had never thanked the creature.~
= ~One day in her dreams, she saw the pixie again. She exclaimed her thanks, but distressed she had no gift worthy to give her. So she asked her name, so she could immortalize it in song.~
= ~'My name', the creature said, 'is persistence'.~
END 
++ ~That was a beautiful story.~ + Story1.4 
++ ~That was a rather long tale.~ + Story1.3 
++ ~Was anything in that story really magic?~ + Story1.5

CHAIN X3Reb25J Story1.4 
~Thank you. It is a story I shared once with someone special. And you are special, so I thought it would be fitting if you heard it.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story1.5 
~It could be, but it doesn't have to, either. Faith and perseverance are real forces. We can conjure up this magic with our minds, but it takes much discipline to truly retain their power.~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story1.3 
~I am sorry. It is a bit of a longer tale, but I thought since there was time, it would work. I will keep brevity in mind next time.~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2 
~I would love to. Perhaps I can tell you of another early adventure. Before I met you. Before I even crossed the border from Amn to Baldur's Gate.~
= ~I had left Althkata to make my way to a local town where a caravan would make a route north. There were caravans like that in Althkata, but they were expensive, and some were a bit suspicious.~
= ~I had rested near a cave, thinking it free of anyting, when this enormous swarm of dire rats came bustling out. Alone they aren't too worrisome, a crossbow bolt usually scares them off, but in a swarm they could take down a grown gnome like myself.~
END 
++ ~Did you run?~ + Story2.1 
++ ~What happened next?~ + Story2.2 
++ ~Did you fight?~ + Story2.6
CHAIN X3Reb25J Story2.1 
~I did run a little, and fired at whatever got too close.~
EXTERN X3Reb25J Story2.2 

CHAIN X3Reb25J Story2.2
~They were getting closer and closer, and one of them had managed to nip through my dress. Then Gustav jumped out of my pack and hissed at all of them, standing his ground.~
= ~I couldn't believe it. They had the numbers. They could either swarm or back off...and somehow Gustav's cry was intimidating enough they all went back into the cave.~
= ~I always knew from that day on we would protect eachother. Although I still hate it when he does something so foolish like that.~
END 
++ ~You have a good pet, Recorder.~ + Story2.3 
++ ~I'm suprised you just let him do that.~ + Story2.4
++ ~Thank you for the tale.~ + Story2.5

CHAIN X3Reb25J Story2.3 
~More than a pet. A true friend.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2.4 
~I wanted to scoop him up. But they way he just acted...something told me to trust him. I'm glad I did.~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2.5 
~Anytime you wish, <CHARNAME>. I am glad to share stories, even if they are about myself like this.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2.6 
~I did fight back a little, and made movement away from the cave whenever it was safe to take steps away.~
EXTERN X3Reb25J Story2.2

CHAIN X3Reb25J Story3 
~Another one? Well...I guess I could tell you of my trip from Brynnlaw to Amn.~
= ~I believe I told you in the past I was put in a barrel. It was difficult to breathe, it was stuffed with fish of all things.~
= ~I guess it was a free bit of sustenance, but it was a high risk to go anywhere while on board.~
END 
++ ~That sounds highly uncomfortable.~ + Story3.1 
++ ~This was after you thought you had killed your son?~ + Story3.1 
++ ~How did you endure?~  + Story3.2

CHAIN X3Reb25J Story3.1 
~It was...I remember just being in misery. But life before then had been terrible. It was endure or die.~
EXTERN X3Reb25J Story3.2 

CHAIN X3Reb25J Story3.2 
~I ate what I needed, and slept when I could. Sleeping made time go faster. And sometimes, when it was quiet, I would test the lid of the barrel, but only will kept me from looking around.~
= ~In some ways...I did want to die then. Raban should have been with me, but he wasn't. The only thing that gave me any sense of hope was in Amn, was a temple of Oghma, and with it, a way to my mother.~
= ~I didn't leave the fish barrel until they opened it themselves, a fishing merchant. It was terrifying to be in someone else's mercy, especially as I had eaten what I had to live. The Temple of Oghma was but steps away, just at Althkata's docks, and he could have given me to the guards or worse, back to Brynnlaw.~
= ~I will never forget his kindness. He let me go, with a promise that he would stop by the temple later to see if my story was true. He got some clothes from his wife for me, a bit large, but...fitting enough. Mine smelled like fish and were wet.~
= ~They healed me at the temple, and eventually got word to my mother. She paid the fisherman very well at my request. If it was another one, I may never have been here.~
= ~I  know this is a weird story to tell. It's not heroic just...about enduring and surviving.~
END 
++ ~I was curious how you made it to Amn in one piece. I found it interesting.~ + Story3.3 
++ ~Think nothing of it.~ + Story3.3 
++ ~Just make your next one more exciting.~ + Story3.4

CHAIN X3Reb25J Story3.3 
~I am glad then. I found it embarrasing to think about. But being in the hands of others...I think there is a true fear in that. When all you can do is plead with your eyes, and try to speak with only your body.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story3.4 
~I will try on your behalf. It is just something that surfaced on my mind.~
EXTERN X3Reb25J RestLate 


CHAIN X3Reb25J HealthHigh1 
~I am faring just fine, <CHARNAME>.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J HealthHighLove1 
~I am doing well, my love. Gustav is too.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthHigh2
~I am in one piece. Thank you for checking on me.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J HealthHighLove2
~With you around, my love, I am strong.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthLow1 
~A little injured. Some rest will help.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J HealthLowLove1 
~It hurts...but I am glad to be alive by your side.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthLowLove2 
~I am in some pain, my love. But with you here, it is a little better.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthLow2 
~Injured, but still standing. It could be worse.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J PlayerHealthy1 
~You look to be okay, <CHARNAME>. That makes me glad.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Reb25J PlayerHealthy2 
~You seem to be strong as ever. Inspiring.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Reb25J PlayerHealthyLove1 
~You seem to be okay, my love. That makes me glad.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3Reb25J PlayerHealthyLove2 
~You seem to be as strong as ever, darling. That makes me happy.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3Reb25J PlayerHurt1 
~I hope you get some rest. Your injuries look painful.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Reb25J PlayerHurt2 
~Are you all right though? I can see some of the wounds you've sustained. They look worrying, but I know you'll say you'll endure.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3Reb25J PlayerHurtLove1 
~I hope you don't mind if I look over your wounds. I can't heal them, I just want to make sure they're not threatening...Hrm. I suppose they seem fine.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3Reb25J PlayerHurtLove2 
~You are hurt, my love. You don't need to hide it. I'd rather know than always wonder. Some rest will do you good.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3Reb25J advice8 
~I think our first objective is to get a grasp of the situation. The more we understand, the more sound decisions we can make.~
END 
++ ~That sounds like good advice.~ + advice8.1 
++ ~Nothing more specific to suggest?~ + advice8.2
++ ~So far, I'm only getting more questions than answers.~ + advice8.3

CHAIN X3Reb25J advice8.1 
~I hope so. I am not sure how to help further, I am sure the route will eventually become clearer to us as we learn more information.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice8.2
~I am sorry, but I do not. I am sure as we gather knowledge, the route will be revealed to us.~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice8.3
~It may take time for things to be clearer, but...I am sure as we gather knowledge, the route will be revealed to us.~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice9
~We are fighting a war, almost, over your destiny.~
= ~Each of these bhaalspawn enemies are going to be different, and strong. But like the giant, they are bound to have something we can use to defeat them.~
END 
++ ~That is a good thought, Recorder.~ + advice9.1 
++ ~If only things were simpler like they used to be.~ + advice9.2
++ ~None of them can best our might.~ + advice9.3

CHAIN X3Reb25J advice9.1
~All power can be defeated. They may think they are gods, or close to one, but that pride could be their downfall, as long as you don't gain the hubris yourself.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice9.2 
~Heehee, I am not sure I would ever call your adventures simple. But the stakes have never seemed higher.~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice9.3
~Our might is strong, <CHARNAME>. But beware the hubris of pride. As it was others undoing, so it could be our own.~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J compliment
~Oh, thank you. You look um, nice, too, despite the day's affairs.~
= ~Did you want to talk?~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~As a bard, you probably have many wonderful stories to share. Can you tell one?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3Reb25J Hug1
~(You reach out to embrace Recorder, and she leans into your touch welcomingly.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Reb25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Hug2
~(You stroke Recorder's cheek, and she leans into your touch with a content sigh.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Reb25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Hug3
~(You reach forward to grasp her hand, slightly cool to the touch. Her fingers grasp around it and squeeze back.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Reb25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss1 
~(A smile forms on her lips as you kiss her. She gives a longing sigh when you pull away.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss2 
~Heehee. I love you too.~
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss3 
~Mmm. This was nice.~
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss4 
~(Recorder pulls you to her, and you find her lips on yours, warm, slow pecks.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J StayTalk 
~Stay and talk to me for a while? I enjoy your presence dearly.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ ~I wanted to check on you and see if you were all right.~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~As a bard, you probably have many wonderful stories to share. Can you tell one?~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ ~I was wondering if could tell another story.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. Let's get some rest.~ + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~Nevermind actually. I'm going to go get some rest.~ + RestExit 
 

CHAIN X3Reb25J BathYes 
~I'd love to, <CHARNAME>.~
EXTERN X3Reb25J BathJoin 

CHAIN X3Reb25J BathJoin
~(You and Recorder embark together to the inn's baths, where an attendant prepares warm water before giving you privacy.)~
= ~*Sigh*. This is so relaxing. I didn't realize how sore I was.~
END 
++ ~Would you like a massage?~ + BathJoin.1 
++ ~I thought you might like this.~ + BathJoin.2 
++ ~(Pull her close.)~ + BathJoin.3

CHAIN X3Reb25J BathJoin.1 
~That sounds nice. Please, go ahead.~
= ~(She turns with her back facing and allows you to move your hands to relieve her back.)~
END 
++ ~(Continue the massage.)~ + BathJoin.4
++ ~(Let your hands wander playfully.)~ + BathJoin.7

CHAIN X3Reb25J BathJoin.2 
~Definitely. This is...utterly relaxing.~
EXTERN X3Reb25J BathJoin.3 

CHAIN X3Reb25J BathJoin.3
~(She sets her head to your side, closing her eyes.)~
END 
++ ~(Massage her back.)~ + BathJoin.4 
++ ~(Let your hands wander playfully.)~ + BathJoin.7

CHAIN X3Reb25J BathJoin.4 
~(For a while you massage her back, moving her hands to soothe tense muscle and sores, while cleaning with the water. She turns and gives you a thankful peck of her lips when you are done.)~
= ~I am lucky to have you, <CHARNAME>. You have no idea.~
END 
++ ~And I you.~ + BathJoin.5 
++ ~Quite lucky, I'd say.~ + BathJoin.6
++ ~Perhaps you can return the favor?~ + BathJoin.5

CHAIN X3Reb25J BathJoin.5 
~(She twirls a finger, gesturing for you to turn around as she now massages and cleans you. The water grows slightly cold when all is done, and you return to your room to rest together.)~
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
 CHAIN X3Reb25J BathJoin.6
 ~Quite? Maybe I am. It is your turn now, I believe.~
 EXTERN X3Reb25J BathJoin.5

CHAIN X3Reb25J BathJoin.7
~What are yo- oh. Is that what you want, then?~
= ~(She laughs and pulls you to her, kissing, sighing, and exhaling in bliss given and taken. The water grows cold when all is done, and you return to your room to rest together.)~ 
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Reb25J Sleep 
~I desire you so much. Join me, please.~
END 
++ ~I'd love to, normally. But let's just get some rest.~ + Snuggle4
++ ~Gladly, my love.~ + Sleep3 
++ ~If that is your wish.~ + Sleep3 

CHAIN X3Reb25J Sleep1 
~That sounds lovely, <CHARNAME>. I would be glad to.~
EXTERN X3Reb25J Sleep3 

CHAIN X3Reb25J RestLove2
~To rest, then. But...I desire you, <CHARNAME>, and if you wanted to, well...~
END 
+~Global("X3Slept","LOCALS",2)~+ ~I'd love to, normally. But let's just get some rest.~ + Snuggle4
++ ~Of course, Recorder. Come here.~ + Sleep3
++ ~Gladly, my love.~ + Sleep3

CHAIN X3Reb25J Snuggle4 
~I understand. Hold me close. It makes me feel safe.~
EXTERN X3Reb25J Snuggle2 

CHAIN X3Reb25J Snuggle2
~(You fall together in your resting place, Recorder leaning against you all the while as your eyes drift into rest and dreams.)~
EXIT 


CHAIN X3Reb25J Sleep3 
~(She guides you to her resting place, before moving her fingers to undo your clothing. She gives you a long, yearning kiss, sweet and slow, before stepping away to undo her own clothes.)~
EXTERN X3Reb25J Sleep9

CHAIN X3Reb25J Sleep9 
~(She lays herself down, letting you take the lead, guiding you to her mouth for more slow, sweet yearning kisses. Her fingers graze into your hair as she sighs.)~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Reb25J Sleep10M 
IF ~Gender(Player1,MALE)~ EXTERN X3Reb25J Sleep10F 

CHAIN X3Reb25J Sleep10M 
~(She guides your fingers across herself, before beckoning you into her. You join with a slow, sweet passion, a slow, growing wave, that eventually builds into a full momentum before crashing down from a blissful high.)~
EXTERN X3Reb25J Sleep11 

CHAIN X3Reb25J Sleep10F 
~(She guides your fingers across herself, before beckoning one of them into her. You watch your tender loving grow into a wave, that eventually builds into a full momentum before it comes crashing down from a blissful high.)~
EXTERN X3Reb25J Sleep11 

CHAIN X3Reb25J Sleep11 
~(When you are done, you find her panting, and glowingly happy. She pulls you to her side and leans her head against yours. Soon the call of sleep takes you both into slumber.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT  

CHAIN X3Reb25J RestExit 
~Have a good rest <CHARNAME>.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Reb25J RestLate 
~Oh, I had no idea how late it was getting. We should get some rest.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J RestLove2
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J RestExit

// Recorder Outdoor
CHAIN X3Reb25J Outdoor1
~(You watch Recorder sitting near the fire, playing a tune from her flute. She pauses for a moment at your approach.)~
= ~Hello, <CHARNAME>.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Could you teach me to play?~ DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~Kiss her~ + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your playing.~ + RestExit 

CHAIN X3Reb25J KissOutdoor 
~Mmm. I enjoy your little bits of affection a lot, <CHARNAME>.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~Could you teach me to play?~ DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your playing.~ + RestExit 

CHAIN X3Reb25J Activity 
~I would be glad to. I'll give you my flute to play. We could start with something simple, like form and playing a note, or a few scales, or maybe even a full tune.~
END 
++ ~Teach me about form and posture.~ + Activity1 
++ ~Let me practice a few scales.~ + Activity2 
++ ~I'd like to play a song.~ + Activity3 

CHAIN X3Reb25J Activity1 
~Very well. Extend your arm out, form your lips like a diamond, put your fingers into this position, and blow your air gently. Give it a stream of your breath.~
END 
+~CheckStatLT(Player1,13,CHR)~+ ~(Play a note.)~ + MissLow 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play a note.)~ + MissLow 
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play a note.)~ + HitLow
+~CheckStatGT(Player1,13,CHR)~+ ~(Play a note.)~ + HitLow 

CHAIN X3Reb25J MissLow 
~Oh...um...that's not quite it. Do you want to try again?~
END  
+~CheckStatLT(Player1,13,CHR)~+ ~(Play a note again.)~ + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play a note again.)~ + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play a note again.)~ + HitLow
++ ~Ah, this may not be for me. I'll let you keep playing.~ + PlayGiveUp 

CHAIN X3Reb25J HitLow 
~That was wonderful. Would you like to try to play a scale?~ 
END 
++ ~Certainly.~ + Activity2 
++ ~Maybe some other time. I'll let you keep playing.~ + PlayStop2 

CHAIN X3Reb25J Activity2 
~Let me demonstrate you the positions first. Fingers here...and fingers here, move them just like this, one hole open at a time, and then reverse it, covering them down, until you're back to the first note.~
= ~Now, give it a try.~
END 
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the scale.)~ + MissMid 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the scale.)~ + MissMid  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the scale.)~ + HitMid 
+~CheckStatGT(Player1,13,CHR)~+ ~(Play the scale.)~ + HitMid

CHAIN X3Reb25J MissMid 
~Um, that was close. Maybe just a little more practice. Let me demonstrate my positions, and then try again.~
END  
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the scale again.)~ + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the scale again.)~ + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the scale again.)~ + HitMid 
++ ~Ah, this may not be for me. I'll let you keep playing.~ + PlayGiveUp 

CHAIN X3Reb25J HitMid 
~Beautiful. You are learning faster than I did. Would you like to try to play a song? I can teach you something simple.~
END 
++ ~I'm up for the challenge.~ + Activity3 
++ ~Maybe some other time. I'll let you keep playing.~ + PlayStop2 

CHAIN X3Reb25J Activity3 
~Let me play it first. Watch my positions carefully. I'll demonstrate them to you...I'm playing a little slowly so you can catch it.~
= ~Okay. Let's have you give it a try, <CHARNAME>. It's okay if you aren't perfect. I hope I wasn't going too fast.~
END 
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the song back.)~ + MissHigh
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the song back.)~ + MissHigh  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the song back.)~ + HitHigh  
+~CheckStatGT(Player1,13,CHR)~+ ~(Play the song back.)~ + HitHigh 

CHAIN X3Reb25J MissHigh 
~You made a lot of errors on your song. Do you want to try one more time?~
END  
+~CheckStatLT(Player1,13,CHR)~+ ~(Play the song again.)~ + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ ~(Play the song again.)~ + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ ~(Play the song again.)~ + HitHigh 
++ ~Ah, this may not be for me. I'll let you keep playing.~ + PlayGiveUp 

CHAIN X3Reb25J HitHigh 
~That was beautiful. You may be a savant of sorts.~
END 
++ ~All thanks to my amazing teacher.~ + Activity4 
++ ~Thanks, Recorder.~ + Activity5 
++ ~This is quite easy.~ + Activity6

CHAIN X3Reb25J Activity4 
~You'll make me blush. It was more the student. But you have my thanks.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J Activity7 

CHAIN X3Reb25J Activity5
~You are welcome, <CHARNAME>. It was a pleasure to share the gift of music with you.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",2)~
EXTERN X3Reb25J Activity7 

CHAIN X3Reb25J Activity6
~There are so many songs I could show you sometime. We could maybe even play a duet sometime. That would be wonderful.~
DO ~DisplayStringNoNameDlg(Player1,@413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3Reb25J Activity7

CHAIN X3Reb25J Activity7 
~I'm going to retire for the night.~ 
END 
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J Activity8
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J Activity9

CHAIN X3Reb25J Activity8 
~Have a pleasant rest, <CHARNAME>.~
EXIT 

CHAIN X3Reb25J Activity9
~Would you...join me?~
END 
++ ~I'd love to, normally. But let's just get some rest.~ + Snuggle4
++ ~Of course, Recorder. Come here.~ + Sleep3
++ ~Gladly, my love.~ + Sleep3


CHAIN X3Reb25J MissFail2 
~Still not quite it, but maybe after some rest, we can get it down some other time.~
EXTERN X3Reb25J PlayStop 

CHAIN X3Reb25J PlayGiveUp 
~We can try some more some other time. I will try to be a better teacher, then.~
EXTERN X3Reb25J PlayStop 

CHAIN X3Reb25J PlayStop2 
~Let me know if you are interested in learning some more again.~
EXTERN X3Reb25J PlayStop 

CHAIN X3Reb25J PlayStop 
~I will let you get some rest. Oghma's blessings to you.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

//Outdoor2
CHAIN X3Reb25J Outdoor2
~(You find Recorder inside her tent, kneeling down to give her ferret Gustav a meal.)~
= ~Oh, hello <CHARNAME>. Just feeding Gustav before I fall asleep.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Recorder your affections.~ + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Recorder your affections.~ + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Recorder your affections.~ + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  ~You look lovely.~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~How about we spend the night together?~ + Sleep1 // Because hers is so late, make it linear.
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

/*Vienxay*/

CHAIN X3Rest VienxayNoSet 
~You move to find Vienxay.~
END 
IF ~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3VieJ Inn1
IF ~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ EXTERN X3VieJ Inn2
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3VieJ Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3VieJ Outdoor2
IF ~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Vie25J Inn
IF ~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Vie25J Outdoor1 
IF ~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN X3Vie25J Outdoor2

CHAIN X3Rest VienxaySet  
~You remember you asked Vienxay to spend a bit of time together before you rested.~
END 
+~RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Vienxay.)~ EXTERN X3VieJ Inn1
+~!RandomNumLT(6,4)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~+ ~(Go see Vienxay.)~ EXTERN X3VieJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Vienxay.)~ EXTERN X3VieJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Vienxay.)~ EXTERN X3VieJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Vienxay.)~ EXTERN X3Vie25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Vienxay.)~ EXTERN X3Vie25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ ~(Go see Vienxay.)~ EXTERN X3Vie25J Outdoor2 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

//SoA 
CHAIN X3VieJ Inn1 
~(You find Vienxay in her room, boredly making a weapon dissapear and then appear in her hand.)~
= ~I assume you want my company.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Vienxay your affections.~ + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Vienxay your affections.~ + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Vienxay your affections.~ + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3VieRomanceActive","GLOBAL",2)~+~Would you like to bathe with me?~+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to make love with you.~ + Sleep5
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3VieJ Talks
~I suppose so.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually, let's get some rest.~ + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3VieJ Story1 
~Hrmph. As you wish. Perhaps I can tell you what it was like to be forced from Evermeet. It comes to my mind almost everyday.~
= ~My sisters were the only ones to see me off that day. To be bound by rope was humiliating. They were not allowed to come close to me, and so I could only turn and say farewell with my eyes.~
= ~Then I was bound into the lower deck of the ship until we crossed the ocean. No sight of the beautiful sun or the sky. Just slop for food and tasteless water.~
END 
++ ~In fairness, you were a criminal.~ + Story1.1
++ ~That must have been hard.~ + Story1.2 
++ ~What happened next?~ + Story1.3

CHAIN X3VieJ Story1.1 
~Yes, yes, I know. No need to point it out.~
EXTERN X3VieJ Story1.3

CHAIN X3VieJ Story1.2 
~Of course it was. And yet it was deserved, and I could hardly argue it, even if I had claimed innocence to the end.~
EXTERN X3VieJ Story1.3 

CHAIN X3VieJ Story1.3 
~On my final day of traveling, before they would release me off of the dock, they had a magi go down and meet with me, along with one of the priests of Correlon.~
= ~That was the most painful day of my life. They made condolences, and apologies, but insisted it must be done: The Mark.~
END 
++ ~The mark?~ + Story1.4 
++ ~That doesn't sound good.~ + Story1.5 
++ ~Doesn't seem like they were sorry.~ + Story1.6

CHAIN X3VieJ Story1.4 
~That is what you see upon my forehead. This one means: Exile: Kinslayer. I do not think any outside of Evermeet would know that, but the few of our kind who I have met who have left and known what it means have often resulted in a shameful meeting.~
= ~It was as if my head burned when it was applied. I screamed and cried but the pain never lessened until they were done.~
= ~It cannot be dispelled. It cannot be wiped away. It is with me, always, and forever.~
= ~Sometimes, I wondered how I did not give in to the urge to escape the ship at all.~
END 
++ ~How would you even have escaped?~ + Story1.9
++ ~I am glad you did not.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~ + Story1.8
++ ~You should have. At the very least, your life would have been in your hands.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@513)~ + Story1.7

CHAIN X3VieJ Story1.9
~The Shadowplane is very close to our own, only a leap away, that which I was capable of. But there are kin of mine who know that secret, and I could have been found. Even if I wasn't followed...it is a dangerous place.~
= ~It is perhaps something I can divulge another time. We have spoken long enough.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story1.8
~As am I, in the end. It would have brought only more ill.~
EXTERN X3VieJ Story1.9

CHAIN X3VieJ Story1.7
~I have thought this on somedays. But at worst, I may have only taken more lives in cost of that freedom, and brought only more shame. If they were humans, perhaps. But they were kin, family.~
EXTERN X3VieJ Story1.9

CHAIN X3VieJ Story1.5 
~It isn't good at all. It means that I am marked and forever identified in shame.~
EXTERN X3VieJ Story1.4 

CHAIN X3VieJ Story1.6
~Sorry? Not in the sense you understand. More like pitied. And I hated every minute of it.~
EXTERN X3VieJ Story1.4

CHAIN X3VieJ Story2 
~I suppose I could tell you a little more of what I spoke of before, the plane of Shadow.~
= ~I could have tried to escape, you see, and stayed on Evermeet. When I first landed, the prison ship leaving me on this foreign soil with only my clothes and enough to perhaps afford a tenday's worth of rent in a tavern, I fell to that temptation, to try to return via shadowplane.~
= ~I had wondered why our enemies never used such a path to get there when I began, as it seemed so simple and briliant, and then I understood.~
END 
++ ~You were going to risk breaking your own exile?~ + Story2.1 
++ ~What did you come to find out?~ + Story2.2 
++ ~Why not try this earlier?~ + Story2.3 

CHAIN X3VieJ Story2.1
~Yes. To truly...truly comprehend that you were alone, seperated from your people. It was too much.~
EXTERN X3VieJ Story2.2 

CHAIN X3VieJ Story2.3
~Perhaps because it had not set in. You pray that perhaps the gods my have mercy, that they would turn around and give you a second chance, or that my false pleas of innocence would have been heard.~
EXTERN X3VieJ Story2.2

CHAIN X3VieJ Story2.2 
~When I stepped into the plane of shadow, I saw the coast as a twisted version of the coast I had just seen. Often it is a reflection of what the land you were just in was, sometimes older. Time moves slower in the Shadowplane. You could be lost for years and return only to find a few months have passed.~
= ~It is why I am able to move so quickly to an enemy in battle: the differences in time give me an enormous advantage of placement. It is all just about remembering where to go, since they are not in the shadow plane themselves.~
= ~There were hideous monsters, canines that looked like worgs, flaming horses that you might call nightmares, and skull helmed warriors marching across into some distant forest.~
= ~A few of these dog-like creatures had picked up on my presence. Perhaps they had sensed my fear or unease, but they were slowly trecking my direction. And if you cannot make out shades and shadows in the shadowplane, you are easy prey.~
END 
++ ~What did you do?~ + Story2.5
++ ~You were afraid?~ + Story2.4 
++ ~I'm guessing you abandoned your plan?~ + Story2.5

CHAIN X3VieJ Story2.4 
~Yes. Understandbly, who wouldn't? I had no idea the land looked like this here. I left...and kept my visits extremely brief since.~
EXTERN X3VieJ Story2.5 

CHAIN X3VIeJ Story2.5
~Yes. As soon as I saw one of the canines leap, I left. I could still see a bit of blood from a defensive thrust of my dagger drip from the blade. I was still new to my shadow magic powers then...it was a reminder that I had so much more to learn.~
= ~I never tried to return to evermeet again. My only choice was to continue on this land.~
END 
++ ~That's what it is for all of us here.~ + Story2.6
++ ~What was your first bit of travels like on the mainland?~ + Story2.7
++ ~I'm impressed you can travel from plane to plane so easily.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@513)~ + Story2.8

CHAIN X3VieJ Story2.6
~Yes, I know. Perhaps I should not whine so much, hrmph. But I do miss Evermeet.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story2.7
~Another time. We have talked much.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story2.8
~For a beginner...it was impressive. Even my old mentor found my ease of travel quite astonishing. But all planar travelers know that the different planes are extremely dangerous. And I knew still knew so little of the shadow plane.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story3 
~Yes, I suppose I can continue where the last one was, and finish this series of my beginnings and how I adjusted to living on the mainland.~
= ~I told you I had about a tenday's worth of income to live on. That quickly ran out once I got to the nearest town. I wasn't stupid, but even if I budgeted it, I would need to find work quickly.~
= ~Unfortunately I had no luck finding work. The innkeeper found me unsuitable for some reason, and any other human I asked told me to go away. I could barely bear asking them at all.~
END 
++ ~Somehow I'm not suprised.~ + Story3.1 
++ ~I am guessing you were rude to them.~ + Story3.1 
++ ~What did you do for money, then?~ + Story3.2 

CHAIN X3VieJ Story3.1 
~Please, it was nothing I did. Besides, this was my first...encounter alone with these people. It was...difficult for me.~
EXTERN X3VieJ Story3.2 

CHAIN X3VieJ Story3.2 
~With employment not an option, I resorted to stealing. And the prime option was a church of Red Knight, where sodliers or common people throw their wealth praying that their plans go well.~
END 
++ ~You stole from a church? Suprising.~ + Story3.3 
++ ~That is a good place for a theft.~ + Story3.4
++ ~Were you succesful?~ + Story3.5

CHAIN X3VieJ Story3.3 
~I was desperate, and I did not want to starve. Do not judge me.~
EXTERN X3VieJ Story3.4 

CHAIN X3VieJ Story3.4 
~I had entered into the main chambers, were a temple guard was sleeping. I had just gotten enough for a month perhaps, when the man stirred.~
= ~I warned him that I would defend myself if he tried to stop me. He simply said if I could get away, it was mine. He was intending to test my tactics for retreat.~
= ~He had wrested a blade hidden behind the bed and deflected the dart I thrown in an instant. This was a skilled warrior, a fitting test.~
= ~Soon I was out of throwing weapons, I had very few as they only allowed me a few weapons when I left for my survival, and a dagger was no match for the reach of his sword. I thought I was dead. That is when I returned to the shadow plane to avoid what would have been a lethal slash.~
= ~I must repeat that one should not linger in the Shadowplane long, and so I moved only far enough to appear near the door. Then I ran for my life.~
= ~I was well out of town, found what appeared to be an abandoned barn, and fell asleep.~
END 
++ ~Clever of you.~ + Story3.5 
++ ~That's it, then?~ + Story3.6
++ ~Where did you go from here?~ + Story3.7

CHAIN X3VieJ Story3.5
~So I thought as well.~
EXTERN X3VieJ Story3.7

CHAIN X3VieJ Story3.6
~Unfortunately not.~
EXTERN X3VieJ Story3.7

CHAIN X3VieJ Story3.7
~I did not quite get away. I awoke to a blade in my face. The damn guard had tracked me down.~
= ~He complimented me on my tactics, and left me with only a portion of what I had taken. He warned me to never do it again, or it would be my life.~
= ~He said he only spared me because I was taking to survive, and he had heard of my failed attempts to find work. It was a strange kindness, one that I would never quite understand.~
END 
+~Alignment("X3Vie",NEUTRAL)~+ ~After all this time, you still do not understand?~ + Story3.8A 
+~!Alignment("X3Vie",NEUTRAL)~+ ~After all this time, you still do not understand?~ + Story3.8B
++ ~Thank you for the tale, Vienxay.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@513)~ + Story3.9
++ ~I see your adjustment to being poor went quite poorly.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~ + Story3.10
 
CHAIN X3VieJ Story3.8A
~I do now. It took me a while to understand kindness and consideration of another's needs and desire to live. It is a lesson I won't forget.~
EXTERN X3VieJ RestLate
 
CHAIN X3VieJ Story3.8B
~Hardly. He could have gotten away with murder. It made no sense, and it still doesn't. But I will say that I will remember it if the situation is ever reversed.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story3.9
~Yes, yes. I was more experienced after that. Nothing eventful beyond learning of my mentor's return. But those are tales you are likely familiar with.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story3.10
~Ugh, with that awful pun I will declare this tale-telling over.~
EXTERN X3VieJ RestLate 


CHAIN X3VieJ HealthHigh1 
~Please, I am obviously fine, <CHARNAME>.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ HealthHighLove1 
~You fret too much. Your beloved is no flower.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthHigh2
~I am hardly easy to injure. See? My skin is flawless.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ HealthHighLove2
~Ugh, you coddle me too much. But I love you for it, I suppose.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthLow1 
~I would appreciate some potion or healing. Do keep that in mind.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ HealthLowLove1 
~You do like to ask the obvious, I am in pain. And not the sort you can kiss better, so don't even think about it.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthLowLove2 
~Ugh...I could use some tender healing. I am sure you don't want your dearly beloved elf to perish.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthLow2 
~My skin is scratched! I better not get scars from this.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ PlayerHealthy1 
~You seem all right. I suppose that's good.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~I wanted advice about our journey.~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3VieJ PlayerHealthy2 
~I guess you are faring well. Hrmph.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3VieJ PlayerHealthyLove1 
~Just keep yourself in healthy condition. I'll not be with a <PRO_MANWOMAN> who is helpless. Oh fine, I'm kidding. Still. Keep yourself well.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3VieJ PlayerHealthyLove2 
~You seem to be faring very well. Your indisputable strength is attractive.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3VieJ PlayerHurt1 
~Might I say you look awful? More awful than usual. Don't look at me like that, just find time to tend yourself.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3VieJ PlayerHurt2 
~But please, stop worrying about me and look at yourself, will you? If you fall over and die we will have no group leader.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~I should get some rest.~ + RestExit 

CHAIN X3VieJ PlayerHurtLove1 
~I'll not be with a <PRO_MANWOMAN> who is limping or hopeless. I'm joking, obviously. Still. Tend to yourself soon.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2

CHAIN X3VieJ PlayerHurtLove2 
~But here you are fretting about me when you are in pain. I'll not lose our group leader and my lover, take care of yourself soon.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ ~Let's get some rest.~ + RestLove2


CHAIN X3VieJ advice2 
~I think it is simple. If you can't work the gold, steal it. There are so many humans who hardly need it, and plenty of large houses for the taking.~
END 
++ ~I want to get the gold right, Vienxay.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~ + advice2.1 
++ ~I guess if it gets bad, we can consider that.~ + advice2.1
++ ~You have a point. There are plenty of buildings to loot from.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~ + advice2.3

CHAIN X3VieJ advice2.1 
~Just understand "right" takes more time, isn't as thrilling, and is perhaps more lethal. I am a reliable source of income...but if you insist, the decision is yours.~
EXTERN X3VieJ advice2.3 

CHAIN X3VieJ advice2.2 
~I would hope you would. My advice I imagine, is golden. I have robbed quite fine and not been caught. It is only other people arguing with me that ever gets me in jail, hrmph.~
EXTERN X3VieJ advice2.3 

CHAIN X3VieJ advice2.3
~Whatever you do, be mindful who you pay with all of it. Not everyone can be trusted.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3 
~Hrmph. I cannot fault you for seeking advice about this.~
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3VieJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3VieJ advice3b

CHAIN X3VieJ advice3a 
~The Shadow Thieves. I hate their name. They hardly know anything about shadow magic, but they do seem our best bet. So far, they've seemed...reasonable.~
END 
++ ~Jealous of their name?~ + advice3a.1 
++ ~So far. I hope it remains that way.~ + advice3a.2 
++ ~If they are just taking our money for nothing, they will feel my wrath.~ + advice3a.3

CHAIN X3VieJ advice3a.1 
~Hardly. Hardly at all. I just find it insulting.~
EXTERN X3VieJ advice3a.2

CHAIN X3VieJ advice3a.2
~I suppose all there is to do is wait and see. I think you made the best decision you could, given the options.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3a.3
~As you should feel. They feel difficult to trust, but as I said, they have been reasonable.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3b
~It is an interesting arrangement, even if I am not fond of the dead, this is a promise to get to where we need to be.~
END 
++ ~I thought you wouldn't mind undead.~ + advice3b.1 
++ ~You did sound approving of this direction.~  + advice3b.2
++ ~This was the best decision. It was them or the Shadow Thieves.~ + advice3b.3

CHAIN X3VieJ advice3b.1 
~They smell. Of course I mind undead. But if this is what it takes to get what we need, then the end goal justifies it all.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3b.2
~Of course. I didn't like these humans much. But do not mistake me, I am not much more fond of who we work for either.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3b.3
~Hrmph, perhaps. Time will tell all.~
EXTERN X3VieJ RestLate 



CHAIN X3VieJ advice4 
~It's obvious. Track down Irenicus. Kill him, and let us be done with it.~
END 
++ ~It won't be that simple.~ + advice4.1 
++ ~Aye. He owes me.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~ + advice4.2
++ ~There are still many questions I have for him.~ + advice4.3

CHAIN X3VieJ advice4.1
~Of course not. But you have me, and so we have a chance.~
EXTERN X3VieJ advice4.3

CHAIN X3VieJ advice4.2 
~Good. Revenge is sweet...and this one I think will hardly leave you hollow. The wise think revenge solves nothing. I say they are fools.~
EXTERN X3VieJ advice4.3

CHAIN X3VieJ advice4.3
~I think the answers are hardly worth it. Find and kill him. Do not let him escape.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice6
~We help my people. Even if they seem untrusting of us, it is for good reason.~
END 
++ ~They aren't really your people though.~ + advice6.1
++ ~My target is Irenicus. They are wasting my time.~ + advice6.2
++ ~I suppose that is the only choice right now.~ + advice6.3

CHAIN X3VieJ advice6.1
~They may not be of Evermeet, but they are my kin. And...they have suffered as well. They are owed vengeance for that.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice6.2
~They are distrusting, but so would Evermeet be in their situation. You are an outsider. Earn their trust, and I am sure things will open up.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice6.3
~Your path has hardly been one where the other choices have been better. A fool would run and hide. You are greater then that, even if I feel you should run sometimes. You can do this.~
EXTERN X3VieJ RestLate 

CHAIN X3VieJ compliment
~You have now, and perhaps before. But I enjoy hearing it.~
= ~I imagine you wished to talk of something, with such a compliment thrown out, however.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually, let's get some rest.~ + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually. I'm going to go get some rest.~ + RestExit 


CHAIN X3VieJ Hug1
~(You reach out to hold Vienxay's hand. She rolls her eyes, but she doesn't detach herself.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3VieJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Hug2
~(You pull Vienxay into a hug. She scoffs as she puts a hand on your face.) You are so needy, sometimes.~
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3VieJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Hug3
~(You playfully let your hand slowly slide down her lower back, before she takes it and places it at your desired end destination for you.) I reward boldness, my beloved.~
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3VieJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss1 
~(You find Vienxay returns your affections with a fire, pulling you close as she attacks your lips back viciously.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss2 
~You kiss so tenderly. I suppose...I do enjoy it.~
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss3 
~(Vienxay briefly turns her cheeks to deny you access, before she turns your face and gives you the reward you sought.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss4 
~(Vienxay grabs your face and pulls you in for a strong kiss, her lips peppering yours with passionate fire, before releasing you.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ StayTalk
~Now that you are here in my sights, let us enjoy a bit of pleasant conversation.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually, let's get some rest.~ + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually. I'm going to go get some rest.~ + RestExit 



CHAIN X3VieJ BathYes 
~Yes, I suppose I would not mind.~
EXTERN X3VieJ BathJoin 

CHAIN X3VieJ BathJoin
~(You and Vienxay depart together to the inn's baths. The water is steamy and warm when you step in.)~
= ~This is no Evermeet spring, but it will suffice. Now, let me get you cleaned.~
END 
++ ~Oh, I was hoping we would do someting...else.~ + BathJoin.1 
++ ~As you wish.~ + BathJoin.2 
++ ~Vienxay, offering to clean me? Suprising.~ + BathJoin.3

CHAIN X3VieJ BathJoin.1 
~Not with that adventuring funk on you.~
EXTERN X3VieJ BathJoin.2

CHAIN X3VieJ BathJoin.2 
~(Vienxay starts from the top, cleaning your face and neck, with a gentle tenderness almost unlike her.~
END 
IF ~Gender(Player1,MALE)~ EXTERN X3VieJ BathJoin.4M
IF ~!Gender(Player1,MALE)~ EXTERN X3VieJ BathJoin.4F 

CHAIN X3VieJ BathJoin.3
~I am full of delights and suprises. How lucky you are.~
EXTERN X3VieJ BathJoin.2

CHAIN X3VieJ BathJoin.4M
~She lingers on your chest, circling it several times, before her hand goes down to your stomach, and then even lower. She lingers a moment, before giving you a soft kiss.)~
= ~You can have more of that attention later. When are done.~
END 
++ ~Are you sure you can wait?~ + BathJoin.5 
++ ~I look forward to it.~ + BathJoin.6
++ ~Should I clean you next?~ + BathJoin.7

CHAIN X3VieJ BathJoin.4F
~She lingers on your breasts, giving each a single kiss, before her hand goes down to your stomach, and then even lower. She lingers a moment, a finger teasingly close, before giving you a third, soft kiss on your lips.)~
= ~You can have more of that attention later. When are done.~
END 
++ ~Are you sure you can wait?~ + BathJoin.5 
++ ~I look forward to it.~ + BathJoin.6
++ ~Should I clean you next?~ + BathJoin.7

CHAIN X3VieJ BathJoin.5 
~I can. You, on the other hand...your forced waiting will entertain me.~
EXTERN X3VieJ BathJoin.6

CHAIN X3VieJ BathJoin.6
~(By the time you return to the bedroom, riled and excited, Vienxay more than rewards your waiting, and you find the bliss a welcome distraction before exhaustion takes you into slumber.)~
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
CHAIN X3VieJ BathJoin.7
~Of course. If you can control yourself.~
EXTERN X3VieJ BathJoin.5


CHAIN X3VieJ Sleep 
~Let us get at it, now.~
END 
+~Global("X3Slept","LOCALS",2)~+ ~I'd love to, normally. But let's just get some rest.~ + Snuggle2
++ ~Gladly, my love.~ + Sleep2 
++ ~If that is your wish.~ + Sleep2
+~!Global("X3Slept","LOCALS",2)~+ ~Not today, Recorder. I want to take this slow.~ + Snuggle 

CHAIN X3VieJ RestLove2
~Unless...you don't mind a bit of wild lovemaking to carry us into slumber first?~
END 
++ ~We'll be up all night if we do this. Let's just get some rest.~ + Snuggle2
++ ~Whatever you desire.~ + Sleep2
++ ~Gladly, my love.~ + Sleep2
++ ~Not today, Vienxay.~ + Snuggle 

CHAIN X3VieJ Snuggle 
~As you wish. Straight to rest, then.~
= ~(She turns from you, and you watch her close her eyes.)~
END 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~EXIT 
++ ~(Cuddle her close.)~ + Snuggle3
++ ~On second thought...~ + Sleep

CHAIN X3VieJ Snuggle2
~Put your arm around me. I find you delightfully warm and I am a little cold.~
= ~I...love you, <CHARNAME>. Know that as we go to sleep and into our dreams.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ Snuggle3 
~(You think you see her lips curve into a smile as she feels your body around hers.)~
= ~Ugh, you are sickingly sweet. But I love you, <CHARNAME>. Dream well.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ Sleep5 
~Hrmph. I suppose I can indulge your lust. I can hardly blame you after all.~
EXTERN X3VieJ Sleep2 

CHAIN X3VieJ Sleep2 
~(Vienxay almost pushes you to your resting place, hands passionately discarding her own clothes before removing whatever is in her way.)~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3VieJ Sleep3.F 
IF ~!Gender(Player1,FEMALE)~ EXTERN X3VieJ Sleep3.M

CHAIN X3VieJ Sleep3.F 
~(She kisses you over and over again, guiding your hands over her, pressing them into intimate places, and then her own into yours.)~
EXTERN X3VieJ Sleep4

CHAIN X3VieJ Sleep3.M
~(She kisses you over and over again, guiding your hands over her, and then your body into hers.)~
EXTERN X3VieJ Sleep4

CHAIN X3VieJ Sleep4
~(The next minutes are marked with sweet bliss, and you find at the end of it your arm draped over her, both of your eyes closed peacefully, your breaths slowing until they find a pace fitting for slumber.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ RestExit 
~Slumber peacefully.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3VieJ RestLate 
~Now, let us get some rest.~
END 
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3VieJ RestLove2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3VieJ RestExit
//Inn2
CHAIN X3VieJ Inn2
~(You find Vienxay playing what appears to be a lanceboard on a table, alone.)~
= ~Yes, yes, I know this is a human game, but I find it interesting. Did you want something?~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~I could play against you, if you like.~ + Activity
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Kiss her~ + KissLance
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your fun.~ + RestExit 

CHAIN X3VieJ KissLance 
~Desiring my attention, I see? You can have a peck...mmm. Now, unless you have something else, I need to beat the only mind as good as mine: My own.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Activity","LOCALS",0)~+ ~I could play against you, if you like.~ + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your fun.~ + RestExit 

CHAIN X3VieJ Activity 
~You could try. You will fail.~
= ~(She resets the lanceboard, and motions for you to sit across her). Your move first.~
END 
++ ~(Play aggressively.)~ + Activity.1
++ ~(Play defensively.)~ + Activity.2

CHAIN X3VieJ Activity.1 
~(You set your pieces in an aggreve motion, trying to set up threats to Vienxay's as soon as you can.)~
END 
IF ~CheckStatLT(Player1,13,INT)~ EXTERN X3VieJ LoseDefensive
IF ~RandomNum(2,1)CheckStat(Player1,13,INT)~ EXTERN X3VieJ LoseDefensive
IF ~RandomNum(2,2)CheckStat(Player1,13,INT)~ EXTERN X3VieJ MidGame
IF ~CheckStatGT(Player1,13,INT)~ EXTERN X3VieJ MidGame

CHAIN X3VieJ Activity.2 
~(You play defensively, seeking to set up a protective set-up for your valued king.)~
END 
IF ~CheckStatLT(Player1,13,INT)~ EXTERN X3VieJ LoseAggressive
IF ~RandomNum(2,1)CheckStat(Player1,13,INT)~ EXTERN X3VieJ LoseAggressive
IF ~RandomNum(2,2)CheckStat(Player1,13,INT)~ EXTERN X3VieJ MidGame
IF ~CheckStatGT(Player1,13,INT)~ EXTERN X3VieJ MidGame

CHAIN X3VieJ MidGame 
~(A few moves and lost pieces later, and you notice she has a set defense on the right board, and a few pieces playing a threat on the left side.)~
END 
++ ~(Focus on defending the incoming threat.)~ + MidThreat 
++ ~(Counter with aggression at her defense.)~ + MidAttack 

CHAIN X3VieJ MidThreat 
~(You focus on defending your pieces against her threat, trying to carefully keep your king safe.)~
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseMT
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseMT
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LateGame
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ LateGame

CHAIN X3VieJ MidAttack 
~(You focus on chipping at her defenses, looking for an opening to exploit.)~
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseAT
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseAT
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LateGame
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ LateGame

CHAIN X3VieJ LateGame 
~(With both of your plays, the board becomes clearer and clearer. Only a few pieces remain between the both of you, and you have one pawn near the other side.)~
END 
++ ~(Keep trying to keep her King checked to find opportunities to take out pieces.)~ + LateG1 
++ ~(Push your pawn down the board to be queened.)~ + LateG2 

CHAIN X3VieJ LateG1 
~(You keep her King under threat as much as you can, limiting her moves to defense.)~
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseG1L
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseG1L 
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ Win 
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ Win 

CHAIN X3VieJ LateG2 
~(You push your pawn to the other side, hoping to get it queened to allow you a powerful ending play.)~
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseG2L
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseG2L 
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ Win 
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ Win 

CHAIN X3VieJ LoseG1L 
~You make a mistake, not seeing a defending piece in position to take yours, and Vienxay capitalizes on it. You find yourself in checkmate a move later.)~
EXTERN X3VieJ Lose5 

CHAIN X3VieJ LoseG2L 
~(Your pawn is queened, but it is too late. Vienxay executes a move to checkmate you a stroke later.)~
EXTERN X3VieJ Lose5 

CHAIN X3VieJ LoseAT 
~(Riskily ignoring the threat on the otherside, Vienxay has you checkmated suddenly, and wins.)~
EXTERN X3VieJ Lose4

CHAIN X3VieJ Win 
~(Your gambit is succesful, and Vienxay's King is shortly after checkmated.)~
= ~Ugh! Impossible. I...miscalculated somewhere. This game infuriates me!~
END 
++ ~What do you have to say now, hmm?~ + Win2
++ ~Well played, you did your best.~ + Win2 
++ ~I did it, I won!~ + Win2

CHAIN X3VieJ Win2 
~Whatever!~
= ~(She storms off to her room.)~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~
END 
++ ~(Leave her be and rest for the night.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~(Go after her.)~ + Win3 
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~(Go after her.)~ + WinL

CHAIN X3VieJ Win3 
~(You find her door locked, and she only huffs at her name calling. She certainly does not take losing well.)~
= ~(As you return to your room, you swear you hear the words "Next time, I'll get you", coming from her room.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ WinL 
~(You find her door unlocked, and when you open it, Vienxay right in front of you. She kisses you fiercely.)~
= ~You may have beat me, but I will be getting the prize tonight.~
END 
++ ~We'll be up all night if we do this. Let's just get some rest.~ + Snuggle2
++ ~How can I resist?~ + Sleep2
++ ~A mutual prize, I think. I am yours and you are mine.~ + Sleep2
++ ~As nice as this is coming from you, I am tired.~ + Snuggle 

CHAIN X3VieJ LoseMT 
~(Your move fails. She pierces through your defense and your king is checkmated shortly after.)~
EXTERN X3VieJ Lose4

CHAIN X3VieJ LoseDefensive
~(You find yourself losing a few moves later. Your defensive set-up crumbles almost instantly from a quick cornering of two pieces.)~
EXTERN X3VieJ Lose

CHAIN X3VieJ Lose4 
~Hrm. You held out long enough. I suppose that is commendable. But I win in the end.~
END 
++ ~I will win next time.~ + Lose1 
++ ~You just got lucky.~ + Lose2 
++ ~I let you win.~ + Lose3
++ ~You played very well.~ + Lose6

CHAIN X3VieJ Lose5
~Impressive. You almost had me. But Vienxay remains unstoppable.~
END 
++ ~I will win next time.~ + Lose1 
++ ~You just got lucky.~ + Lose2 
++ ~I let you win.~ + Lose3
++ ~You played very well.~ + Lose6

CHAIN X3VieJ Lose
~A shame. I must say, you have been the easiest player I have ever played in my travels, in the rare times I do play against another. Do not be too offended.~
END 
++ ~I will win next time.~ + Lose1 
++ ~You just got lucky.~ + Lose2 
++ ~I let you win.~ + Lose3
++ ~You played very well.~ + Lose6

CHAIN X3VieJ LoseAggressive 
~(Failing to set up any defense, your vulnerable king is quickly checkmated in only a few moves from a few unseen clever positions from Vienxay.)~
EXTERN X3VieJ Lose 

CHAIN X3VieJ Lose1 
~So you say. We will see.~
END 
++ ~Do you still have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your fun.~ + RestExit 

CHAIN X3VieJ Lose2
~There is no luck in this game. You are a poor loser.~
END 
++ ~Do you still have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your fun.~ + RestExit 

CHAIN X3VieJ Lose3
~Please. It takes a lot of cleverness to let someone win at this game. Perhaps next time you will do better.~
END 
++ ~Do you still have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your fun.~ + RestExit 

CHAIN X3VieJ Lose6
~Of course. Such games are great exercises for a mage. I got into them as I traveled away from Evermeet. It was a way to make money, I found. But nevermind that.~
END 
++ ~Do you still have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your fun.~ + RestExit 
// Vienxay Outdoor1 
CHAIN X3VieJ Outdoor1
~(You find Vienxay sitting cross legged on the ground, going through her spell tome.)~
= ~So many spells to keep in one's head. I suppose I can...take a moment away from focusing.~
END
++ ~Do you have time to talk?~ + Talks 
++ ~Could I get you anything?~ + Offer
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Kiss her~ + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ Offer 
~Hrm.~
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ Offer1 
IF ~RandomNum(3,2)~ EXTERN X3VieJ Offer2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3VieJ Offer3
IF ~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3VieJ Offer4

CHAIN X3VieJ Offer1 
~Some food, I suppose. I have yet to eat.~
END 
++ ~Certainly.~ + Offer1Y 
++ ~Ah, I don't have any to offer.~ + OfferN 
++ ~I am a bit tired to cook. I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ Offer2 
~Some wine, I suppose. Preferably elven.~
END 
++ ~It's not elven, but I can get that.~ + Offer2Y 
++ ~Ah, I don't have any to offer.~ + OfferN 
++ ~I am a bit tired to fetch that. I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ Offer4 
~A kiss. I am sure you would be more than glad to deliver this.~
END 
++ ~As you desire.~ + Offer4Y
++ ~I'd actually enjoy letting you waiting for it later.~ + OfferN 

CHAIN X3VieJ Offer4Y 
~(She returns your pecks with a strength, but pulls back after a moment.) It seems I almost distracted myself with my own desires. I'll have to ravage you later.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ Offer1Y 
~(You reach into your pack and provide some rations for Vienxay.)~
= ~I was hoping you would cook something. But this is thoughtful.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ Offer2Y 
~(You depart briefly, only to return in a moment with some wine for Vienxay.)~
= ~'Tis not the wine of my homeland, but it is something. Thank you.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ KissOutdoor 
~(She smiles at your kiss, though her lips try very hard to hide it.)~
END 
++ ~Do you have time to talk?~ + Talks 
++ ~Could I get you anything?~ + Offer
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ OfferN 
~Hrmph. As you say.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3VieJ Offer3
~Nothing. I am fine.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

//VienxayOutdoor2 
CHAIN X3VieJ Outdoor2
~(You find Vienxay pacing her tent restlessly.)~
= ~Please, don't mind me. Just making sure all of my thoughts are straight before I let my head down.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Vienxay your affections.~ + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Vienxay your affections.~ + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Vienxay your affections.~ + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to make love with you.~ + Sleep5
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 


//ToB 
CHAIN X3Vie25J Inn
~(You find Vienxay in a bedroom, tearing her eyes away from her spellbook at your approach.)~
== X3Vie25J IF ~AreaCheck("AR5003")~ THEN ~This is the worst inn ever. Poor choice of place for rest.~
== X3Vie25J IF ~!AreaCheck("AR5003")~ THEN ~So many spells. And so many more out there still to grasp.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Vienxay your affections.~ + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Vienxay your affections.~ + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Vienxay your affections.~ + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3VieRomanceActive","GLOBAL",2)~+~Would you like to bathe with me?~+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to make love with you.~ + Sleep5
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 

CHAIN X3Vie25J Talks
~I suppose so.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually, let's get some rest.~ + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually. I'm going to go get some rest.~ + RestExit 

CHAIN X3Vie25J Story1 
~Hrmph. As you wish. Perhaps I can tell you what it was like to be forced from Evermeet. It comes to my mind almost everyday.~
= ~My sisters were the only ones to see me off that day. To be bound by rope was humiliating. They were not allowed to come close to me, and so I could only turn and say farewell with my eyes.~
= ~Then I was bound into the lower deck of the ship until we crossed the ocean. No sight of the beautiful sun or the sky. Just slop for food and tasteless water.~
END 
++ ~In fairness, you were a criminal.~ + Story1.1
++ ~That must have been hard.~ + Story1.2 
++ ~What happened next?~ + Story1.3

CHAIN X3Vie25J Story1.1 
~Yes, yes, I know. No need to point it out.~
EXTERN X3Vie25J Story1.3

CHAIN X3Vie25J Story1.2 
~Of course it was. And yet it was deserved, and I could hardly argue it, even if I had claimed innocence to the end.~
EXTERN X3Vie25J Story1.3 

CHAIN X3Vie25J Story1.3 
~On my final day of traveling, before they would release me off of the dock, they had a magi go down and meet with me, along with one of the priests of Correlon.~
= ~That was the most painful day of my life. They made condolences, and apologies, but insisted it must be done: The Mark.~
END 
++ ~The mark?~ + Story1.4 
++ ~That doesn't sound good.~ + Story1.5 
++ ~Doesn't seem like they were sorry.~ + Story1.6

CHAIN X3Vie25J Story1.4 
~That is what you see upon my forehead. This one means: Exile: Kinslayer. I do not think any outside of Evermeet would know that, but the few of our kind who I have met who have left and known what it means have often resulted in a shameful meeting.~
= ~It was as if my head burned when it was applied. I screamed and cried but the pain never lessened until they were done.~
= ~It cannot be dispelled. It cannot be wiped away. It is with me, always, and forever.~
= ~Sometimes, I wondered how I did not give in to the urge to escape the ship at all.~
END 
++ ~How would you even have escaped?~ + Story1.9
++ ~I am glad you did not.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@513)~ + Story1.8
++ ~You should have. At the very least, your life would have been in your hands.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~ + Story1.7

CHAIN X3Vie25J Story1.9
~The Shadowplane is very close to our own, only a leap away, that which I was capable of. But there are kin of mine who know that secret, and I could have been found. Even if I wasn't followed...it is a dangerous place.~
= ~It is perhaps something I can divulge another time. We have spoken long enough.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story1.8
~As am I, in the end. It would have brought only more ill.~
EXTERN X3Vie25J Story1.5

CHAIN X3Vie25J Story1.7
~I have thought this on somedays. But at worst, I may have only taken more lives in cost of that freedom, and brought only more shame. If they were humans, perhaps. But they were kin, family.~
EXTERN X3Vie25J Story1.5

CHAIN X3Vie25J Story1.5 
~It isn't good at all. It means that I am marked and forever identified in shame.~
EXTERN X3Vie25J Story1.4 

CHAIN X3Vie25J Story1.6
~Sorry? Not in the sense you understand. More like pitied. And I hated every minute of it.~
EXTERN X3Vie25J Story1.4

CHAIN X3Vie25J Story2 
~I suppose I could tell you a little more of what I spoke of before, the plane of Shadow.~
= ~I could have tried to escape, you see, and stayed on Evermeet. When I first landed, the prison ship leaving me on this foreign soil with only my clothes and enough to perhaps afford a tenday's worth of rent in a tavern, I fell to that temptation, to try to return via shadowplane.~
= ~I had wondered why our enemies never used such a path to get there when I began, as it seemed so simple and briliant, and then I understood.~
END 
++ ~You were going to risk breaking your own exile?~ + Story2.1 
++ ~What did you come to find out?~ + Story2.2 
++ ~Why not try this earlier?~ + Story2.3 

CHAIN X3Vie25J Story2.1
~Yes. To truly...truly comprehend that you were alone, seperated from your people. It was too much.~
EXTERN X3Vie25J Story2.2 

CHAIN X3Vie25J Story2.3
~Perhaps because it had not set in. You pray that perhaps the gods my have mercy, that they would turn around and give you a second chance, or that my false pleas of innocence would have been heard.~
EXTERN X3Vie25J Story2.2

CHAIN X3Vie25J Story2.2 
~When I stepped into the plane of shadow, I saw the coast as a twisted version of the coast I had just seen. Often it is a reflection of what the land you were just in was, sometimes older. Time moves slower in the Shadowplane. You could be lost for years and return only to find a few months have passed.~
= ~It is why I am able to move so quickly to an enemy in battle: the differences in time give me an enormous advantage of placement. It is all just about remembering where to go, since they are not in the shadow plane themselves.~
= ~There were hideous monsters, canines that looked like worgs, flaming horses that you might call nightmares, and skull helmed warriors marching across into some distant forest.~
= ~A few of these dog-like creatures had picked up on my presence. Perhaps they had sensed my fear or unease, but they were slowly trecking my direction. And if you cannot make out shades and shadows in the shadowplane, you are easy prey.~
END 
++ ~What did you do?~ + Story2.5
++ ~You were afraid?~ + Story2.4 
++ ~I'm guessing you abandoned your plan?~ + Story2.5

CHAIN X3Vie25J Story2.4 
~Yes. Understandbly, who wouldn't? I had no idea the land looked like this here. I left...and kept my visits extremely brief since.~
EXTERN X3Vie25J Story2.5 

CHAIN X3Vie25J Story2.5
~Yes. As soon as I saw one of the canines leap, I left. I could still see a bit of blood from a defensive thrust of my dagger drip from the blade. I was still new to my shadow magic powers then...it was a reminder that I had so much more to learn.~
= ~I never tried to return to evermeet again. My only choice was to continue on this land.~
END 
++ ~That's what it is for all of us here.~ + Story2.6
++ ~What was your first bit of travels like on the mainland?~ + Story2.7
++ ~I'm impressed you can travel from plane to plane so easily.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@513)~ + Story2.8

CHAIN X3Vie25J Story2.6
~Yes, I know. Perhaps I should not whine so much, hrmph. But I do miss Evermeet.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story2.7
~Another time. We have talked much.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story2.8
~For a beginner...it was impressive. Even my old mentor found my ease of travel quite astonishing. But all planar travelers know that the different planes are extremely dangerous. And I knew still knew so little of the shadow plane.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story3 
~Yes, I suppose I can continue where the last one was, and finish this series of my beginnings and how I adjusted to living on the mainland.~
= ~I told you I had about a tenday's worth of income to live on. That quickly ran out once I got to the nearest town. I wasn't stupid, but even if I budgeted it, I would need to find work quickly.~
= ~Unfortunately I had no luck finding work. The innkeeper found me unsuitable for some reason, and any other human I asked told me to go away. I could barely bear asking them at all.~
END 
++ ~Somehow I'm not suprised.~ + Story3.1 
++ ~I am guessing you were rude to them.~ + Story3.1 
++ ~What did you do for money, then?~ + Story3.2 

CHAIN X3Vie25J Story3.1 
~Please, it was nothing I did. Besides, this was my first...encounter alone with these people. It was...difficult for me.~
EXTERN X3Vie25J Story3.2 

CHAIN X3Vie25J Story3.2 
~With employment not an option, I resorted to stealing. And the prime option was a church of Red Knight, where sodliers or common people throw their wealth praying that their plans go well.~
END 
++ ~You stole from a church? How could you?~ + Story3.3 
++ ~That is a good place for a theft.~ + Story3.4
++ ~Were you succesful?~ + Story3.5

CHAIN X3Vie25J Story3.3 
~I was desperate, and I did not want to starve. Do not judge me.~
EXTERN X3Vie25J Story3.4 

CHAIN X3Vie25J Story3.4 
~I had entered into the main chambers, were a temple guard was sleeping. I had just gotten enough for a month perhaps, when the man stirred.~
= ~I warned him that I would defend myself if he tried to stop me. He simply said if I could get away, it was mine. He was intending to test my tactics for retreat.~
= ~He had wrested a blade hidden behind the bed and deflected the dart I thrown in an instant. This was a skilled warrior, a fitting test.~
= ~Soon I was out of throwing weapons, I had very few as they only allowed me a few weapons when I left for my survival, and a dagger was no match for the reach of his sword. I thought I was dead. That is when I returned to the shadow plane to avoid what would have been a lethal slash.~
= ~I must repeat that one should not linger in the Shadowplane long, and so I moved only far enough to appear near the door. Then I ran for my life.~
= ~I was well out of town, found what appeared to be an abandoned barn, and fell asleep.~
END 
++ ~Clever of you.~ + Story3.5 
++ ~That's it, then?~ + Story3.6
++ ~Where did you go from here?~ + Story3.7

CHAIN X3Vie25J Story3.5
~So I thought as well.~
EXTERN X3Vie25J Story3.7

CHAIN X3Vie25J Story3.6
~Unfortunately not.~
EXTERN X3Vie25J Story3.7

CHAIN X3Vie25J Story3.7
~I did not quite get away. I awoke to a blade in my face. The damn guard had tracked me down.~
= ~He complimented me on my tactics, and left me with only a portion of what I had taken. He warned me to never do it again, or it would be my life.~
= ~He said he only spared me because I was taking to survive, and he had heard of my failed attempts to find work. It was a strange kindness, one that I would never quite understand.~
END 
+~Alignment("X3Vie",NEUTRAL)~+ ~After all this time, you still do not understand?~ + Story3.8A 
+~!Alignment("X3Vie",NEUTRAL)~+ ~After all this time, you still do not understand?~ + Story3.8B
++ ~Thank you for the tale, Vienxay.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@513)~ + Story3.9
++ ~I see your adjustment to being poor went quite poorly.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@503)~ + Story3.10
 
CHAIN X3Vie25J Story3.8A
~I do now. It took me a while to understand kindness and consideration of another's needs and desire to live. It is a lesson I won't forget.~
EXTERN X3Vie25J RestLate
 
CHAIN X3Vie25J Story3.8B
~Hardly. He could have gotten away with murder. It made no sense, and it still doesn't. But I will say that I will remember it if the situation is ever reversed.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story3.9
~Yes, yes. I was more experienced after that. Nothing eventful beyond learning of my mentor's return. But those are tales you are likely familiar with.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story3.10
~Ugh, with that awful pun I will declare this tale-telling over.~
EXTERN X3Vie25J RestLate 


CHAIN X3Vie25J HealthHigh1 
~Please, I am obviously fine, <CHARNAME>.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J HealthHighLove1 
~You fret too much. Your beloved is no flower.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthHigh2
~I am hardly easy to injure. See? My skin is flawless.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J HealthHighLove2
~Ugh, you coddle me too much. But I love you for it, I suppose.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthLow1 
~I would appreciate some potion or healing. Do keep that in mind.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J HealthLowLove1 
~You do like to ask the obvious, I am in pain. And not the sort you can kiss better, so don't even think about it.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthLowLove2 
~Ugh...I could use some tender healing. I am sure you don't want your dearly beloved elf to perish.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthLow2 
~My skin is scratched! I better not get scars from this.~
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J PlayerHealthy1 
~You seem all right. I suppose that's good.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~I should get some rest.~ + RestExit 

CHAIN X3Vie25J PlayerHealthy2 
~I guess you are faring well. Hrmph.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~I should get some rest.~ + RestExit 

CHAIN X3Vie25J PlayerHealthyLove1 
~Just keep yourself in healthy condition. I'll not be with a <PRO_MANWOMAN> who is helpless. Oh fine, I'm kidding. Still. Keep yourself well.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~Let's get some rest.~ + RestLove2


CHAIN X3Vie25J PlayerHealthyLove2 
~You seem to be faring very well. Your indisputable strength is attractive.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ ~I was wondering if you had any stories to share.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~Let's get some rest.~ + RestLove2


CHAIN X3Vie25J PlayerHurt1 
~Might I say you look awful? More awful than usual. Don't look at me like that, just find time to tend yourself.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~I should get some rest.~ + RestExit 

CHAIN X3Vie25J PlayerHurt2 
~But please, stop worrying about me and look at yourself, will you? If you fall over and die we will have no group leader.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~I should get some rest.~ + RestExit 

CHAIN X3Vie25J PlayerHurtLove1 
~I'll not be with a <PRO_MANWOMAN> who is limping or hopeless. I'm joking, obviously. Still. Tend to yourself soon.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~Let's get some rest.~ + RestLove2

CHAIN X3Vie25J PlayerHurtLove2 
~But here you are fretting about me when you are in pain. I'll not lose our group leader and my lover, take care of yourself soon.~
END 
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ ~Let's get some rest.~ + RestLove2


CHAIN X3Vie25J advice8
~Well, not to complain, but leaving Suldanessellar was not my first choice.~
END 
++ ~It was time for us to go.~ + advice8.1 
++ ~We couldn't stay there forever.~ + advice8.1
++ ~We were more or less subtly being asked to leave.~ + advice8.1

CHAIN X3Vie25J advice8.1
~Yes, I suppose. Still it was a...very well rewarded relaxation there for a time.~
= ~I suppose it is simple. We figure out the path ahead so we can enjoy more rest like that. The journey has been undeniably long.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J advice9
~Isn't it obvious? We destroy your enemies and move one step closer to your destiny.~
END 
++ ~If only there was another path.~ + advice9.1
++ ~So it seems.~ + advice9.2
++ ~None of them will stand a chance..~ + advice9.2

CHAIN X3Vie25J advice9.1
~After all this time you still wonder about other paths? Perhaps only you could have such beliefs and still live.~
EXTERN X3Vie25J advice9.2 

CHAIN X3Vie25J advice9.2
~You have survived so many things, so many obstacles. Together, you will get through all of these "brothers" and "sisters" of yours, as unfitting as it is to say. Only you will stand.~
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J compliment
~You have now, and perhaps before. But I enjoy hearing it.~
= ~I imagine you wished to talk of something, with such a compliment thrown out, however.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 +~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually, let's get some rest.~ + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually. I'm going to go get some rest.~ + RestExit 


CHAIN X3Vie25J Hug1
~(You reach out to hold Vienxay's hand. She rolls her eyes, but she doesn't detach herself.)~
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Hug2
~(You pull Vienxay into a hug. She scoffs as she puts a hand on your face.) You are so needy, sometimes.~
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Hug3
~(You playfully let your hand slowly slide down her lower back, before she takes it and places it at your desired end destination for you.) I reward boldness, my beloved.~
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss1 
~(You find Vienxay returns your affections with a fire, pulling you close as she attacks your lips back viciously.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss2 
~You kiss so tenderly. I suppose...I do enjoy it.~
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss3 
~(Vienxay briefly turns her cheeks to deny you access, before she turns your face and gives you the reward you sought.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss4 
~(Vienxay grabs your face and pulls you in for a strong kiss, her lips peppering yours with passionate fire, before releasing you.)~
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J StayTalk
~Now that you are here in my sights, let us enjoy a bit of pleasant conversation.~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ ~How are you faring?~ + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ ~I was wondering if you had any stories you could tell me of yourself.~ DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ ~Do you have any advice to give about our path?~ DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 +~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually, let's get some rest.~ + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ ~Actually. I'm going to go get some rest.~ + RestExit 



CHAIN X3Vie25J BathYes 
~Yes, I suppose I would not mind.~
EXTERN X3Vie25J BathJoin 

CHAIN X3Vie25J BathJoin
~(You and Vienxay depart together to the inn's baths. The water is steamy and warm when you step in.)~
= ~This is no Evermeet spring, but it will suffice. Now, let me get you cleaned.~
END 
++ ~Oh, I was hoping we would do someting...else.~ + BathJoin.1 
++ ~As you wish.~ + BathJoin.2 
++ ~Vienxay, offering to clean me? Suprising.~ + BathJoin.3

CHAIN X3Vie25J BathJoin.1 
~Not with that adventuring funk on you.~
EXTERN X3Vie25J BathJoin.2

CHAIN X3Vie25J BathJoin.2 
~(Vienxay starts from the top, cleaning your face and neck, with a gentle tenderness almost unlike her.~
END 
IF ~Gender(Player1,MALE)~ EXTERN X3Vie25J BathJoin.4M
IF ~!Gender(Player1,MALE)~ EXTERN X3Vie25J BathJoin.4F 

CHAIN X3Vie25J BathJoin.3
~I am full of delights and suprises. How lucky you are.~
EXTERN X3Vie25J BathJoin.2

CHAIN X3Vie25J BathJoin.4M
~She lingers on your chest, circling it several times, before her hand goes down to your stomach, and then even lower. She lingers a moment, before giving you a soft kiss.)~
= ~You can have more of that attention later. When are done.~
END 
++ ~Are you sure you can wait?~ + BathJoin.5 
++ ~I look forward to it.~ + BathJoin.6
++ ~Should I clean you next?~ + BathJoin.7

CHAIN X3Vie25J BathJoin.4F
~She lingers on your breasts, giving each a single kiss, before her hand goes down to your stomach, and then even lower. She lingers a moment, a finger teasingly close, before giving you a third, soft kiss on your lips.)~
= ~You can have more of that attention later. When are done.~
END 
++ ~Are you sure you can wait?~ + BathJoin.5 
++ ~I look forward to it.~ + BathJoin.6
++ ~Should I clean you next?~ + BathJoin.7

CHAIN X3Vie25J BathJoin.5 
~I can. You, on the other hand...your forced waiting will entertain me.~
EXTERN X3Vie25J BathJoin.6

CHAIN X3Vie25J BathJoin.6
~(By the time you return to the bedroom, riled and excited, Vienxay more than rewards your waiting, and you find the bliss a welcome distraction before exhaustion takes you into slumber.)~
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
CHAIN X3Vie25J BathJoin.7
~Of course. If you can control yourself.~
EXTERN X3Vie25J BathJoin.5


CHAIN X3Vie25J Sleep 
~Let us get at it, now.~
END 
+~Global("X3Slept","LOCALS",2)~+ ~I'd love to, normally. But let's just get some rest.~ + Snuggle2
++ ~Gladly, my love.~ + Sleep2 
++ ~If that is your wish.~ + Sleep2
+~!Global("X3Slept","LOCALS",2)~+ ~Not today, Recorder. I want to take this slow.~ + Snuggle 

CHAIN X3Vie25J RestLove2
~Unless...you don't mind a bit of wild lovemaking to carry us into slumber first?~
END 
++ ~We'll be up all night if we do this. Let's just get some rest.~ + Snuggle2
++ ~Whatever you desire.~ + Sleep2
++ ~Gladly, my love.~ + Sleep2
++ ~Not today, Vienxay.~ + Snuggle 

CHAIN X3Vie25J Snuggle 
~As you wish. Straight to rest, then.~
= ~(She turns from you, and you watch her close her eyes.)~
END 
++ ~(Go to sleep.)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~EXIT 
++ ~(Cuddle her close.)~ + Snuggle3
++ ~On second thought...~ + Sleep

CHAIN X3Vie25J Snuggle2
~Put your arm around me. I find you delightfully warm and I am a little cold.~
= ~I...love you, <CHARNAME>. Know that as we go to sleep and into our dreams.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Vie25J Snuggle3 
~(You think you see her lips curve into a smile as she feels your body around hers.)~
= ~Ugh, you are sickingly sweet. But I love you, <CHARNAME>. Dream well.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Vie25J Sleep5 
~Hrmph. I suppose I can indulge your lust. I can hardly blame you after all.~
EXTERN X3Vie25J Sleep2 

CHAIN X3Vie25J Sleep2 
~(Vienxay almost pushes you to your resting place, hands passionately discarding her own clothes before removing whatever is in her way.)~
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Vie25J Sleep3.F 
IF ~!Gender(Player1,FEMALE)~ EXTERN X3Vie25J Sleep3.M

CHAIN X3Vie25J Sleep3.F 
~(She kisses you over and over again, guiding your hands over her, pressing them into intimate places, and then her own into yours.)~
EXTERN X3Vie25J Sleep4

CHAIN X3Vie25J Sleep3.M
~(She kisses you over and over again, guiding your hands over her, and then your body into hers.)~
EXTERN X3Vie25J Sleep4

CHAIN X3Vie25J Sleep4
~(The next minutes are marked with sweet bliss, and you find at the end of it your arm draped over her, both of your eyes closed peacefully, your breaths slowing until they find a pace fitting for slumber.)~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Vie25J RestExit 
~Slumber peacefully.~
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Vie25J RestLate 
~Now, let us get some rest.~
END 
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J RestLove2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J RestExit

// Vienxay Outdoor1 
CHAIN X3Vie25J Outdoor1
~(You find Vienxay sitting cross legged on the ground, going through her spell tome.)~
= ~So many spells to keep in one's head. I suppose I can...take a moment away from focusing.~
END
++ ~Do you have time to talk?~ + Talks 
++ ~Could I get you anything?~ + Offer
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~Kiss her~ + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J Offer 
~Hrm.~
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J Offer1 
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Offer2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3Vie25J Offer3
IF ~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3Vie25J Offer4

CHAIN X3Vie25J Offer1 
~Some food, I suppose. I have yet to eat.~
END 
++ ~Certainly.~ + Offer1Y 
++ ~Ah, I don't have any to offer.~ + OfferN 
++ ~I am a bit tired to cook. I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J Offer2 
~Some wine, I suppose. Preferably elven.~
END 
++ ~It's not elven, but I can get that.~ + Offer2Y 
++ ~Ah, I don't have any to offer.~ + OfferN 
++ ~I am a bit tired to fetch that. I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J Offer4 
~A kiss. I am sure you would be more than glad to deliver this.~
END 
++ ~As you desire.~ + Offer4Y
++ ~I'd actually enjoy letting you waiting for it later.~ + OfferN 

CHAIN X3Vie25J Offer4Y 
~(She returns your pecks with a strength, but pulls back after a moment.) It seems I almost distracted myself with my own desires. I'll have to ravage you later.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J KissOutdoor 
~(She smiles at your kiss, though her lips try very hard to hide it.)~
END 
++ ~Do you have time to talk?~ + Talks 
++ ~Could I get you anything?~ + Offer
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J OfferN 
~Hrmph. As you say.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J Offer3
~Nothing. I am fine.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J Offer1Y 
~(You reach into your pack and provide some rations for Vienxay.)~
= ~I was hoping you would cook something. But this is thoughtful.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

CHAIN X3Vie25J Offer2Y 
~(You depart briefly, only to return in a moment with some wine for Vienxay.)~
= ~'Tis not the wine of my homeland, but it is something. Thank you.~
END 
++ ~Do you have time to talk?~ + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ ~I'm a bit tired, I'll leave you to your studying.~ + RestExit 

//VienxayOutdoor2 
CHAIN X3Vie25J Outdoor2
~(You find Vienxay pacing her tent restlessly.)~
= ~Please, don't mind me. Just making sure all of my thoughts are straight before I let my head down.~
END
++ ~Do you have time to talk?~ + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Show Vienxay your affections.~ + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Show Vienxay your affections.~ + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Show Vienxay your affections.~ + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ ~Kiss her~ + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ ~Kiss her~ + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ ~Kiss her~ + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  ~Have I told you how attractive you are?~ DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ ~I'd like to make love with you.~ + Sleep5
++ ~I'm a bit tired, I'll let you sleep.~ + RestExit 