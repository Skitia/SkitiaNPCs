// This file includes X3HRL, X3HRM, and X3HPOOR dialogues, as well as Surly's expanded line to let people back in the pit in case someone died.

/* The announcer does the beef of Helga's quest. 

Helga's Quest has a few outcomes.

Lose any of the rounds -> Fail, with a disapproval loss from Helga if in the party.
Give the Potion of Bodily Health to the Old Man for his frail son. -> Helga Dissaproval, with potential refund in a talk after. Gains Potion of Understanding in its place.
Make sure the Old Man is marked Innocent, if someone is going to murder or pickpocket him to get the Con potion (Or the wisdom one) there should be risk.
The Old Man appears when the time expires for the first time. He asks Rulendo if he could donate or trade for another such potion to help his ailing son.
Rulendo is dismissive of him, and the beggar goes off to a corner for a while.
After the second round, the Final Fighter will approach. If Kale's quest is started, he will offer information in exchange for them forfeiting. 
On the third round, the wizard Ester should be missing, due to not receiving enough pay. There is no death protection.
Surly will have an addition to his dialogue to let players back in the pit should they have an item lost inside.They will have 18 seconds.->Rulendo will need to make sure he mentions it.

Quest Reward is +1 Con Potion or +1 Wisdom Potion. Helga will gain hefty approval (+15) if she notes her Con is now at 15. Otherwise lost approval is refunded if the wisdom potion is given instead.

For Kale's Quest, The Final Fighter reveals that Kale's Father got in a debt with the wrong crowd. He'll directly accuse the murderer. Otherwise the player will have to arrive at the answer with given clues.

X3HDD can equal Final Fighter. - Dialogue. 
X3HDC and X3HDB can equal final fighters companions. - No Dialogue or One Liners. 
X3HR1F1,X3HR1F2, X3HR1R1 can equal all combatants from first round. Can obtain via copies of bandits, perhaps.
X3HR2C1, X3HR2M1, X3HR2F1 will equal second round combatants. 
X3HRM is Mage who abandons- Dialogue 
X3HPOOR - Is Poor Man. Spawns outside inn only if Helga is in the party, else spawns before fight 2.
Unlike Emily's Quest, Helga's quest does not require her presence. The quest reward could be given to another NPC.

Still experimenting with styling of Con names, I'm strongly leaning to meaningful, understandable names versus t1.1, etc.
At some point, test the distance of IsValidForPartyDialogue.
*/

BEGIN X3HPOOR 

CHAIN IF ~!AreaCheck("AR0400")Global("X3HelQuest","GLOBAL",0)~ THEN X3HPOOR Wishing 
~I wish I could fight...that reward sure be tempting.~
EXIT 
// Only if Helga is in the party. Still, always a chance she is not as this is only for the spawn script, so code accordingly.
CHAIN IF ~AreaCheck("AR0400")~ THEN X3HPOOR Sight
~You look like you've seen battle or two. Some man named Rulendo is holding a tourney for fighters to partake in. Winner gets gold and some sort of potion that makes their body healthier and more durable.~
== X3HPOOR ~Wish I could get my hands on it, my son is always getting sick and the trips to the priest aren't cheap anymore. Maybe he'll at least reveal where he got it from later.~
END 
IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("X3HelQuest","GLOBAL",0)~ EXTERN X3HelJ Potion 
+~!GlobalGT("X3HelQuest","GLOBAL",0)~+ ~A tourney? What's involved with that?~ + involved 
+~!GlobalGT("X3HelQuest","GLOBAL",0)~+ ~I don't have time for that.~ + time 
+~!GlobalGT("X3HelQuest","GLOBAL",0)~+ ~Maybe I could win it for you.~ + win
// These are unlikely, but it's possible to enter the inn and never speak to this guy.
+~GlobalGT("X3HelQuest","GLOBAL",0)!Global("X3HelQuest","GLOBAL",6)~+ ~We are already registered.~ + registered 
+~Global("X3HelQuest","GLOBAL",6)~+ ~We've already won the tourney.~ + won 



CHAIN X3HPOOR win 
~Oh, kind of you, but not necessary. I'm just working on making him an offer to get another potion like that for my boy. Good luck if you enter, there look to be some dangerous competition.~
DO ~AddJournalEntry(@2,QUEST)EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT

CHAIN X3HPOOR time 
~Yeah, I understand. Always moving along, you type of folk. Guess I got to move along, too, get a good spot to watch when this gauntlet starts.~
DO ~AddJournalEntry(@2,QUEST)EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT  

CHAIN X3HPOOR involved 
~Talk to Rulendo. He's got the details inside. Good luck if you enter, some tough folk look to be wanting to fight in that pit.~
DO ~AddJournalEntry(@2,QUEST)EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT 

CHAIN X3HPOOR registered 
~What? They must be starting, I've got go, got to go!~
DO ~EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT 

CHAIN X3HPOOR won 
~Oh, congratulations. Suppose I've been so harrowed by my son I missed it all, then.~
END 
++ ~Too bad, you missed some good fights.~ + farewell 
++ ~You did, though I should be going now.~ + farewell
+~PartyHasItem("X3HPC")~+ ~I won this potion. Maybe this could help your son?~ + help_son 

CHAIN X3HPOOR farewell 
~Aye, a shame. Be safe and stay well.~
DO ~EscapeArea()~
EXIT 

CHAIN X3HelJ Potion 
~A potion that makes yer body healthier? That include legs?~
== X3HPOOR ~That's what it sounded like to me. Health includes bones and legs, I'm guessing.~
== X3HelJ ~Well, golden opportunity awaits us, then. I say we enter and show our might.~
END 
++ ~What's involved with this tourney, exactly?~ EXTERN X3HPOOR involved 
++ ~If it will help you, let's check it out.~ + check_out 
++ ~We don't have time for this, Helga.~ + no_time

CHAIN X3HelJ no_time 
~Pah! No time? Don't ye be needing coin? Ye waste good opportunity for us both.~
== X3HPOOR ~Time is always short with you folks. Guess I should make good use of mine, too.~
DO ~AddJournalEntry(@2,QUEST)EscapeArea()~
EXIT 

CHAIN X3HelJ check_out 
~Now we be talking!~
== X3HPOOR ~Just talk to Rulendo inside if that's what you want. Careful though, some of the competition looks scary.~
DO ~AddJournalEntry(@2,QUEST)EscapeArea()~
EXIT 

BEGIN X3HRL

CHAIN IF ~Global("X3HelQuest","GLOBAL",0)~ THEN X3HRL Meet
~Ah, you have the look of experienced fighters. Do you dare test your mettle in Rulendo's Gauntlet? I require one more party to complete my eight slots.~
END 
++ ~We'd like to sign up.~ + signup
++ ~What does this entail exactly?~ + Entail 
++ ~I'm not interested.~ EXTERN X3HRL rejected 

CHAIN IF ~~ THEN X3HRL signup 
~Good, good. Allow me to explain how the gauntlet works.~
EXTERN X3HRL rules 

CHAIN X3HRL Entail 
~You require explaining? I didn't think it was complicated to understand.~
EXTERN X3HRL rules 

CHAIN X3HRL rules
~You'll enter the pit and fight another group. My hired mage, Ester, will take you out when he sees someone unable to continue.~
== X3HRL ~You'll earn money every round, plus the great Potion of Bodily Health if you are declared champion. All of this, with a complete mininum risk of serious harm for wonderful winnings.~
== X3HRL ~There is a matter of a small entry fee of five hundred gold, but the rewards will quickly pay out for you.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't approve of just fighting for a prize. But I do understand you need the gold.~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ HelgaComment
IF ~!IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VieComment
+~PartyGoldGT(499)~+ ~I'm in then, here is your fee.~ DO ~TakePartyGold(500)IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@106)~ EXTERN X3HRL pay
++ ~I don't have that much.~ EXTERN X3HRL rejected
+~CheckStatGT(LastTalkedToBy,15,CHR)~+ ~Is there no way to reduce your fee?~ EXTERN X3HRL reduced 
+~CheckStatLT(LastTalkedToBy,16,CHR)~+ ~Is there no way to reduce your fee?~ EXTERN X3HRL noReduction
++ ~I'm not interested.~ DO ~TakePartyGold(500)IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@116)~  EXTERN X3HRL rejected 

CHAIN X3HRL rejected  
~I'll just find someone else, then.~
EXIT 

CHAIN X3HelJ HelgaComment
~Aye, this will be good. The prize could help bolster me leg, and we get paid for it. Two orc heads with one axe, as we said back in my younger fighting days.~
END  
+~PartyGoldGT(499)~+ ~I'm in then, here is your fee.~ DO ~TakePartyGold(500)IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ EXTERN X3HRL pay
++ ~I don't have that much.~ EXTERN X3HRL rejected
+~CheckStatGT(LastTalkedToBy,15,CHR)~+ ~Is there no way to reduce your fee?~ EXTERN X3HRL reduced 
+~CheckStatLT(LastTalkedToBy,16,CHR)~+ ~Is there no way to reduce your fee?~ EXTERN X3HRL noReduction
++ ~I'm not interested.~ DO ~TakePartyGold(500)IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ EXTERN X3HRL rejected

CHAIN X3VieJ VieComment 
~What are we, brutes now? Although I would not mind showing a bit of supremacy with our gifts.~
END 
+~PartyGoldGT(499)~+ ~I'm in then, here is your fee.~ DO ~TakePartyGold(500)~ EXTERN X3HRL pay
++ ~I don't have that much.~ EXTERN X3HRL rejected
+~CheckStatGT(LastTalkedToBy,15,CHR)~+ ~Is there no way to reduce your fee?~ EXTERN X3HRL reduced 
+~CheckStatLT(LastTalkedToBy,16,CHR)~+ ~Is there no way to reduce your fee?~ EXTERN X3HRL noReduction
++ ~I'm not interested.~ DO ~TakePartyGold(500)~ EXTERN X3HRL rejected 

CHAIN X3HRL noReduction
~Nope. This goes into the prize money. You make it all the way though, and you'll see it back and then some.~
END 
+~PartyGoldGT(499)~+ ~I'm in then, here is your fee.~ DO ~TakePartyGold(500)~ EXTERN X3HRL pay
++ ~I don't have that much.~ EXTERN X3HRL rejected
++ ~I'm not interested.~ EXTERN X3HRL rejected 


CHAIN X3HRL reduced 
~You know what? You look like you could draw a big enough crowd to make me some extra gold. I'll drop the fee to four hundred for you. No lower, though.~
END 
+~PartyGoldGT(399)~+ ~I'm in then, here is your fee.~ DO ~TakePartyGold(400)~ EXTERN X3HRL pay
++ ~I don't have that much.~ EXTERN X3HRL rejected
++ ~I'm not interested.~ EXTERN X3HRL rejected 

CHAIN X3HRL pay 
~Excellent. We're ready to start now, then. If you're ready to go, we'll put you straight in the pit.~
DO ~AddJournalEntry(@3,QUEST)SetGlobal("X3HelQuest","GLOBAL",1)~
END 
++ ~Put me in.~ + join 
++ ~I need time to prepare.~ + prepare  

// Once agreed, conversation should start here.
CHAIN IF ~Global("X3HelQuest","GLOBAL",1)~ THEN X3HRL round1start 
~Are you ready to begin? The fighters and the inn's audience is eager to see the first bouts!~
END 
++ ~Put me in.~ + join 
++ ~I need time to prepare.~ + prepare  

CHAIN X3HRL prepare 
~Don't be long.~
EXIT 

CHAIN X3HRL join 
~Now, who of your group shall join you in the fight?~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I don't think I'm very comfortable participating in this. Can you um, ask one of the others to join you, maybe?~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ join_one_remarkH // Helga and Kale will be the most excited to join you. Emily strongly dissaproves, Recorder moderately dissaproves, Vienxay is neutral.)
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3KalJ join_one_remarkK
+~InParty(Player2)~+ ~<PLAYER2>.~ DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second
+~InParty(Player3)~+ ~<PLAYER3>.~ DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second
+~InParty(Player4)~+ ~<PLAYER4>.~ DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second
+~InParty(Player5)~+ ~<PLAYER5>.~ DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second
+~InParty(Player6)~+ ~<PLAYER6>.~ DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second
++ ~Just myself.~ + join_second

CHAIN X3HELJ join_one_remarkH
~I want in, <CHARNAME>. This sounds like it will be a good, glorious fight and I'm keen to see the reward won.~
EXTERN X3HRL join_first

CHAIN X3KalJ join_one_remarkK
~Well, I don't like to brag, but you won't find a better fellow than me to pick for this.~
EXTERN X3HRL join_first

CHAIN X3HRL join_first 
~Who will enter with you?~
END 
+~InParty(Player2)~+ ~<PLAYER2>.~ DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second
+~InParty(Player3)~+ ~<PLAYER3>.~ DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second
+~InParty(Player4)~+ ~<PLAYER4>.~ DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second
+~InParty(Player5)~+ ~<PLAYER5>.~ DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second
+~InParty(Player6)~+ ~<PLAYER6>.~ DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second
++ ~Just myself.~ + fight

CHAIN X3HRL join_second 
~Ah, I see.~
== X3HRL ~And your third?~
END 
+~InParty(Player2)!Global("X3P2Arena","AR0406",1)~+ ~<PLAYER2>.~ DO ~SetGlobal("X3P2Arena","AR0406",1)~ + fight
+~InParty(Player3)!Global("X3P3Arena","AR0406",1)~+ ~<PLAYER3>.~ DO ~SetGlobal("X3P3Arena","AR0406",1)~ + fight
+~InParty(Player4)!Global("X3P4Arena","AR0406",1)~+ ~<PLAYER4>.~ DO ~SetGlobal("X3P4Arena","AR0406",1)~ + fight
+~InParty(Player5)!Global("X3P5Arena","AR0406",1)~+ ~<PLAYER5>.~ DO ~SetGlobal("X3P5Arena","AR0406",1)~ + fight
+~InParty(Player6)!Global("X3P6Arena","AR0406",1)~+ ~<PLAYER6>.~ DO ~SetGlobal("X3P6Arena","AR0406",1)~ + fight
++ ~It will be just the two of us.~ + fight 



CHAIN X3HRL fight 
~Prepare yourself then!~
== X3HRL ~Ladies and gentlemen! Let the battle in the pit begin!~
DO ~FadeToColor([30.0],0)Wait(1)MoveViewPoint([620.1745],INSTANT)StartCutSceneMode()
StartCutScene("X3HCut01")~
EXIT 
/* From here, we can have the enemy fighters have a string above them before they fight. */



CHAIN IF ~Global("X3HelQuest","GLOBAL",2)~ THEN X3HRL roundOneVictory 
~Good show! Here is your pay. Come around tomorrow, we'll have the next fight ready to begin then.~
DO ~AddJournalEntry(@4,QUEST)IncrementGlobal("X3HelQuest","GLOBAL",1)GiveGoldForce(250)SetGlobalTimer("X3HGauntletTimer","GLOBAL",ONE_DAY)~
EXIT 

CHAIN IF ~Global("X3PoorMet","LOCALS",2)~ THEN X3HPOOR request 
~Rulendo, I have this potion here that the temple has given me. Will you...consider it for a trade for one of your magical potions?~
== X3HRL ~It's only for fighters, not poor men in rags.~
== X3HPOOR ~But could you not procure a second? The temple said this potion would be of equal value and interest.~
== X3HRL ~In the temple's opinion. The same temple that would have us believe being poor and suffering is what we should do with our life.~
== X3HRL ~Now stop bothering me with your questions. The answer remains no. I've the second round of fights to oversee.~
DO ~ActionOverride("X3HPoor",IncrementGlobal("X3PoorMet","LOCALS",1))~
EXIT 

CHAIN IF ~!GlobalTimerExpired("X3HGauntletTimer","GLOBAL")~ THEN X3HRL not_ready 
~I'm not ready yet. Come around later.~
EXIT 

CHAIN IF ~GlobalTimerExpired("X3HGauntletTimer","GLOBAL")Global("X3HelQuest","GLOBAL",3)~ THEN X3HRL second_round 
~Just in time! The second round of fights begin. Are you ready?~
END 
++ ~I'm ready to fight.~ + second_fight_join
++  ~I need more time.~ + second_wait  

CHAIN X3HRL second_wait 
~Don't have me wait too long. The crowd will get restless.~
EXIT 

CHAIN X3HRL second_fight_join 
~Who will enter this time?~
END 
+~InParty(Player2)~+ ~<PLAYER2>.~ DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player3)~+ ~<PLAYER3>.~ DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player4)~+ ~<PLAYER4>.~ DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player5)~+ ~<PLAYER5>.~ DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player6)~+ ~<PLAYER6>.~ DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second_fight2
++ ~It will be just myself.~ + fight_fight2 

CHAIN X3HRL join_second_fight2 
~Interesting, interesting.~
== X3HRL ~And your third?~
END 
+~InParty(Player2)!Global("X3P2Arena","AR0406",1)~+ ~<PLAYER2>.~ DO ~SetGlobal("X3P2Arena","AR0406",1)~ + fight_fight2
+~InParty(Player3)!Global("X3P3Arena","AR0406",1)~+ ~<PLAYER3>.~ DO ~SetGlobal("X3P3Arena","AR0406",1)~ + fight_fight2
+~InParty(Player4)!Global("X3P4Arena","AR0406",1)~+ ~<PLAYER4>.~ DO ~SetGlobal("X3P4Arena","AR0406",1)~ + fight_fight2
+~InParty(Player5)!Global("X3P5Arena","AR0406",1)~+ ~<PLAYER5>.~ DO ~SetGlobal("X3P5Arena","AR0406",1)~ + fight_fight2
+~InParty(Player6)!Global("X3P6Arena","AR0406",1)~+ ~<PLAYER6>.~ DO ~SetGlobal("X3P6Arena","AR0406",1)~ + fight_fight2
++ ~It will be just the two of us.~ + fight_fight2 

CHAIN X3HRL fight_fight2 
~Prepare yourself then! Let the battle in the pit begin!~
DO ~FadeToColor([30.0],0)Wait(1)MoveViewPoint([620.1745],INSTANT)StartCutSceneMode()
StartCutScene("X3HCut03")~
EXIT

CHAIN IF ~Global("X3HelQuest","GLOBAL",4)~ THEN X3HRL roundtwoVictory
~Well done. You've made it to the final bout of fights. Come around tomorrow, and we'll see if you become champion of my gauntlet. Here's your pay.~
DO ~AddJournalEntry(@5,QUEST)GiveGoldForce(500)SetGlobalTimer("X3HGauntletTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3HelQuest","GLOBAL",1)~
EXIT 

CHAIN IF ~Dead("X3HDD")!Global("X3HelQuest","GLOBAL",9)~ THEN X3HRL quest_fail
~I saw what you did. You've ruined my business, and this competition. Damn you to the hells.~
DO ~AddJournalEntry(@9,QUEST_DONE)ActionOverride("X3HPOOR",EscapeArea())EscapeArea()~
EXIT 

CHAIN IF ~OR(2)Global("X3HelQuest","GLOBAL",6)Global("X3HelQuest","GLOBAL",7)~ THEN X3HRL not_ready 
~I'm all set for you, <CHARNAME>, but Boris, your competitor, wished a word first. Talk to him first and then come back to me.~
EXIT 

CHAIN IF ~Global("X3HelQuest","GLOBAL",8)~ THEN X3HRL third_round
~There you are. I've a lot of participating bets on this thanks to you. Are you ready to begin?~
END 
++ ~I'm ready.~ + third_ready 
++ ~I need more time.~ + third_time 
++ ~I wish to forfeit.~ + forfeit 

CHAIN X3HRL third_time 
~More time? I've got people to entertain. Make it quick, whatever you need to do.~
EXIT 

CHAIN X3HRL third_consider 
~Come back as soon as you've decided. The crowd is restless!~
EXIT 

CHAIN X3HRL forfeit 
~Forfeit? Are you sure? I will give the entire winnings to your opponent, winnings that could be yours.~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ third_interject // Helga interject, loss of approval. 
++ ~Yes, I'm sure.~ + third_forfeit 
++ ~Let me think about it.~ + third_consider 
++ ~No. Put me in. I'll fight.~ + third_ready 

CHAIN X3HRL third_ready 
~Excellent! You will be facing some of the greatest fighters I have ever seen, three fierce dwarf warriors. Good luck, and may you come out the winner.~
EXTERN X3HRL third_join_fight 

CHAIN X3HELJ third_interject 
~Don't do this. Put me in to fight with ye if you must. Battle is a thrill because we *might* die, and going against a great foe makes it a good death, if it must be. But it will nay be if I have a say on it.~
END 
++ ~Yes, I am. I'm not taking the risk.~ EXTERN X3HRL third_forfeit 
++ ~No. Put me in. I'll fight.~ EXTERN X3HRL third_ready
++ ~Let me think about it.~ EXTERN X3HRL third_consider 

CHAIN X3HRL third_forfeit 
~We have a winner then, ladies and gents. The full winnings go to Baris the Unyielding. Well fought.~
== X3HRL ~I am sorry we could not show a proper fight, but cowards will be cowards.~
DO ~AddJournalEntry(@7,QUEST_DONE)~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ third_dissaprove // Helga interject, loss of approval. 
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3KalJ third_approve // Kale interject, gain of approval.
IF ~!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ + departure 

CHAIN X3HelJ third_dissaprove 
~Yellow bellied coward! I thought ye had more guts then this.~
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ third_approve // Kale interject, gain of approval.
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3HRL departure 

CHAIN X3KalJ third_approve 
~It was fun while it lasted. I think you made the best choice here, mate.~
EXTERN X3HRL departure

CHAIN X3HRL departure 
~Until the next tourney, my ladies and gents.~
DO ~SetGlobal("X3HForfeit","GLOBAL",1)EscapeArea()~ 
EXIT 

CHAIN X3HRL third_join_fight
~Who will brave the pit with you?~
END 
+~InParty(Player2)~+ ~<PLAYER2>.~ DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player3)~+ ~<PLAYER3>.~ DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player4)~+ ~<PLAYER4>.~ DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player5)~+ ~<PLAYER5>.~ DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player6)~+ ~<PLAYER6>.~ DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second_fight3
++ ~Just myself.~ + fight_fight3


CHAIN X3HRL join_second_fight3
~May they not fail you!~
== X3HRL ~And the second choice?~
END 
+~InParty(Player2)!Global("X3P2Arena","AR0406",1)~+ ~<PLAYER2>.~ DO ~SetGlobal("X3P2Arena","AR0406",1)~ + fight_fight3
+~InParty(Player3)!Global("X3P3Arena","AR0406",1)~+ ~<PLAYER3>.~ DO ~SetGlobal("X3P3Arena","AR0406",1)~ + fight_fight3
+~InParty(Player4)!Global("X3P4Arena","AR0406",1)~+ ~<PLAYER4>.~ DO ~SetGlobal("X3P4Arena","AR0406",1)~ + fight_fight3
+~InParty(Player5)!Global("X3P5Arena","AR0406",1)~+ ~<PLAYER5>.~ DO ~SetGlobal("X3P5Arena","AR0406",1)~ + fight_fight3
+~InParty(Player6)!Global("X3P6Arena","AR0406",1)~+ ~<PLAYER6>.~ DO ~SetGlobal("X3P6Arena","AR0406",1)~ + fight_fight3
++ ~It will be just the two of us.~ + fight_fight3 

CHAIN X3HRL fight_fight3
~Prepare yourself then! Let the final battle in the pit begin!~
DO ~FadeToColor([30.0],0)Wait(1)MoveViewPoint([620.1745],INSTANT)StartCutSceneMode()
StartCutScene("X3HCut04")~
EXIT

CHAIN IF ~Global("X3HelQuest","GLOBAL",9)~ THEN X3HRL third_victory 
~Congratulations! You have won my gauntlet. An entertaining fight, to be sure, and one well valued in gold.~
== X3HRL ~Your pay, and your reward. May you live a long life with the toughness it grants you, champion.~
DO ~AddJournalEntry(@8,QUEST_DONE)GiveGoldForce(750)GiveItemCreate("X3HPC",Player1,1,0,0)~
END
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HELJ potion_obtained 
IF ~!IsValidForPartyDialogue("X3Hel")~ EXTERN X3HRL departure 

CHAIN X3HELJ potion_obtained 
~Aye, this be it! My leg will finally nay bother me no more.~
END 
++ ~Aye, the potion will be yours to drink Helga.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@219)~ + Helga_receive
++ ~I was thinking of giving it to that poor man, actually.~ + poor_man 
++ ~*I* won it, Helga. I've no interest in letting you drink it.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@209)~ + Helga_not_receive

CHAIN X3HELJ Helga_not_receive
~Ye what?! Ye know how much my leg needs it, ye selfish toad.~
== X3HELJ ~Bah, do what ye wish with it, if it pleases ye. I nay need it to do my part!~
EXTERN X3HRL departure 

CHAIN X3HELJ poor_man 
~Why the hell ye want to give it to that fellow in rags when I a contributing member of your group, damn well could use it?~
END 
++ ~Because his son is sickly.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ + sickly 
++ ~Because he has very little.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~ + sickly 
++ ~Maybe you're right. You wanted it, its yours.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@219)~ + Helga_receive

CHAIN X3HELJ sickly 
~And so are many others here....by Moradin's axe, fine. Ye want to give it, give it to him. I be nay happy about this though.~
EXTERN X3HRL departure 

CHAIN X3HelJ Helga_receive 
~Thank ye, <CHARNAME>. If the thing works, will be nice to have a good leg again.~
EXTERN X3HRL departure 

CHAIN IF ~GlobalGT("X3HelQuest","GLOBAL",1)~ THEN X3HPOOR talk 
~Wish I had taken up the sword in my younger days now...but I may have never become a father if I did.~
END 
+~PartyHasItem("X3HPC")~+ ~I'd like to give you the potion. I hope it helps your son.~ + help_son 
+~!Global("X3HelQuest","GLOBAL",9)Global("X3PoorMet","LOCALS",3)~+ ~I overheard your conversation with Rulendo. I could give you the potion if I win it.~ + gift 
++ ~It's never too late to start.~ + start 
++ ~Sorry, I've no time for conversation.~ EXIT  

CHAIN X3HPOOR start 
~Heh. It's far too late for me, but thank you <PRO_BOYGIRL>. Maybe if my boy can get healthy, I'll get my boy taught the sword.~
EXIT 

CHAIN X3HPOOR gift 
~I scarcely believe it. Such a concotion most would take for themselves. But if your words are truth...no, I'll not give myself that hope.~
EXIT 

CHAIN X3HPOOR help_son 
~For...For me? My good <PRO_BOYGIRL> you have made an old man cry. Here, I was going to give this potion in exchange for it to Rulendo, but now you can have it.~
DO ~ReputationInc(1)TakePartyItem("X3HPC")GiveItemCreate("X3HPW",Player1,1,0,0)~
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ approval_plus_E 
IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ approval_plus_R 
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ EXTERN X3HPOOR depart_happy 

CHAIN X3EmiJ approval_plus_E 
~This makes me happy that we helped the man like that. Still, I wish we didn't have to fight in that pit for it.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@119)~
EXTERN X3HPOOR depart_happy 

CHAIN X3RebJ approval_plus_R 
~His son will get a better, healthier life with the potion's help. You've brought a great, warm light into his story, <CHARNAME>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@119)~
EXTERN X3HPOOR depart_happy 

CHAIN X3HPOOR depart_happy  
~I'm going to go back to my boy. You've no idea how happy you made us.~
DO ~EscapeArea()~
EXIT



