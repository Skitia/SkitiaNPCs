// 
BEGIN X3EMYR 
BEGIN X3EDER 
// These two basically use the same dialogue chain. Their dialogue is always True, and they leave the area after they have finished speaking.

CHAIN IF ~True()~ THEN X3EMYR merchant_conversation
~Huh, who are you? You're not Lord Jurgenson.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
+~IsValidForPartyDialogue("X3Emi")~+ ~I am <CHARNAME>, here with Emily. We're here to help resolve your dispute.~ EXTERN X3EmiJ here_to_help
+~!IsValidForPartyDialogue("X3Emi")~+ ~I am <CHARNAME>. I heard you were having a dispute from Lord Jurgenson. Perhaps I can help.~ EXTERN X3EDER player_help
++ ~Er, no I am not. Excuse me.~ EXIT 

CHAIN IF ~True()~ THEN X3EDER merchant_conversation
~Who the hell are you? You're not Lord Jurgenson.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
END 
+~IsValidForPartyDialogue("X3Emi")~+ ~I am <CHARNAME>, here with Emily. We're here to help resolve your dispute.~ EXTERN X3EmiJ here_to_help
+~!IsValidForPartyDialogue("X3Emi")~+ ~I am <CHARNAME>. I heard you were having a dispute from Lord Jurgenson. Perhaps I can help.~ EXTERN X3EDER player_help
++ ~Er, no I am not. Excuse me.~ EXIT 

CHAIN X3EDER player_help 
~And he is sending a nobody? Oh, fine. If you can get this air head to understand my problem, then I don't care who you are.~
== X3EMYR ~Shut it. This entire problem started with your poor practices.~
== X3EDER ~*Hem*. Allow me to properly introduce the problem to the stranger.~
EXTERN X3EDER problem 

CHAIN X3EmiJ here_to_help
~That's me! Here to help with my friends, here.~
== X3EDER ~Aren't you the one rumored to be born out of wedlock to a different woman?~
== X3EMYR ~It's rubbish. They say it was an elven woman, but Emily Castilla is clearly human, you idiot.~
== X3EmiJ ~You know, maybe we should just get to what the problem is?~
== X3EDER ~Hrmph. I will explain then.~
EXTERN X3EDER problem 

CHAIN X3EDER problem 
~Myron here buys the peasant's crops and goods and sells them in the cities. I in turn, buy what they need from the cities and trade it back to them.~
== X3EMYR ~I however, have been pushed to buy at worse prices from the commoners because Derrick has raised the prices of his goods substantially, more than they can comfortably afford.~
== X3EDER ~Not all of the local cities have fully recovered from the recent Iron Crisis. And you can afford to suffer higher buying prices for a while.~
END 
++ ~So the dilemna is all about your price levels?~ + clearly
++ ~If Myron can afford to buy at higher levels for a while, couldn't you also afford to sell at slightly lower profit margins for a time?~ + reduce_prices_idea
++ ~That's it? I was expecting some more drastic problem requiring more deadly tools.~ EXTERN X3EMYR deadly_tools

CHAIN X3EDER reduce_prices_idea 
~Hell no. I'm losing money as it is. Any more money lost and I'll have to take my business elsewhere, whether Lord Jurgenson likes it or not.~
EXTERN X3EMYR walk_away 

CHAIN X3EDER clearly
~Clearly. If Myron fixes his, which he can afford to do, then we'll all be fine.~
EXTERN X3EMYR walk_away

CHAIN X3EMYR deadly_tools
~What th- no, no, no. Although having him killed wouldn't be the most terrible thing at the moment.~
== X3EDER ~Shut your mouth, will you? Just tell Myron here that he needs to handle how things are for a while.~
EXTERN X3EMYR walk_away 

CHAIN X3EMYR walk_away 
~I don't have to. I can just walk away. There are other estates I can assist where I won't have my business beat down by your greed.~
END 
++ ~If the problem is money, perhaps we can help out the both of you with coin.~ + coin_talking
// Charisma Solution
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~I don't think this is Derrick's fault. Just adjust your business for a while, Myron.~ + Myron_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~I don't think this is Derrick's fault. Just adjust your business for a while, Myron.~ + Myron_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ ~I don't think this is Derrick's fault. Just adjust your business for a while, Myron.~ + Myron_decline
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~Should you really be charging the poor so much, Derrick? Lower your prices. I'm sure things will get back to normal very soon.~ EXTERN X3EDER Derrick_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~Should you really be charging the poor so much, Derrick? Lower your prices. I'm sure things will get back to normal very soon.~ EXTERN X3EDER Derrick_decline
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ ~Should you really be charging the poor so much, Derrick? Lower your prices. I'm sure things will get back to normal very soon.~ EXTERN X3EDER Derrick_decline
// Emily solution->Will lead to the money solution.
+~IsValidForPartyDialogue("X3Emi")~+ ~Emily, what do you think?~ EXTERN X3EmiJ idea_known
// If Emily isn't valid, this will auto-fail. Myron walks away.
+~!IsValidForPartyDialogue("X3Emi")~+ ~I...really don't care what you two do.~ + care_not
// if Emily is valid, this will re-direct to the Emily, what do you think solution.
+~IsValidForPartyDialogue("X3Emi")~+ ~I...really don't care what you two do.~ EXTERN X3EmiJ care_not_Emily 

CHAIN X3EMYR care_not 
~Then I will stop caring either. Tell Lord Jurgenson I will be suspending my business and foreclosing any properties I own on his estate. He can speak to me himself if he has further questions, I'm done.~
EXTERN X3EDER Myron_fail 

CHAIN X3EDER Myron_fail
~Good riddance. Now that this stupid talk is over, I will get back to purchasing goods.~
DO ~AddJournalEntry(@6,QUEST)SetGlobal("X3EGVJTalkResult","GLOBAL",2)ActionOverride("X3EMYR",EscapeArea())EscapeArea()~ // 2 = Myron Left
EXIT  

CHAIN X3EmiJ care_not_Emily 
~Um, *I* care, <CHARNAME>. There are things on the line, if you don't remember. And I think I have an idea.~
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~
EXTERN X3EmiJ idea 

CHAIN X3EmiJ idea_known 
~I do have an idea that I think will help them.~
EXTERN X3EmiJ idea 

CHAIN X3EmiJ idea 
~Metal goods will stabilize soon, the crisis of iron has long been resolved, it just takes time for all of the good metal to get out to everywhere again.~
== X3EmiJ ~I think in the meantime, if  you are given a bit of gold to bolster through the hard times, you can keep your prices as they were before, and get through things just fine.~
EXTERN X3EMYR coin_talking 

CHAIN X3EMYR coin_talking 
~And how much coin are we talking? I'd say I would need a thousand to be able to handle the higher prices for a time.~
== X3EDER ~And I would need about the same to handle higher prices.~
END 
+~PartyGoldGT(1999)~+ ~We can lend you two thousand coin total, one thousand each. Does this work?~ + coin_loan
+~PartyGoldGT(1499)RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can lend you fifteen hundred coin total, seven hundred and fifty each. That should be close enough.~ + coin_lower_loan // Success
+~PartyGoldGT(1499)RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can lend you fifteen hundred coin total, seven hundred and fifty each. That should be close enough.~ + coin_loan_reject // Fail roll
+~PartyGoldGT(1499)!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ ~We can lend you fifteen hundred coin total, seven hundred and fifty each. That should be close enough.~ + coin_loan_reject // Charisma too low
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just adjust your business for a while Myron.~ + Myron_accept 
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just adjust your business for a while Myron.~ + Myron_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just adjust your business for a while Myron.~ + Myron_decline
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just lower your prices for a while, Derrick.~ EXTERN X3EDER Derrick_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just lower your prices for a while, Derrick.~ EXTERN X3EDER Derrick_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just lower your prices for a while, Derrick.~ EXTERN X3EDER Derrick_decline
++ ~Just figure it out yourselves. Lower your prices and adjust your business, both of you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + Myron_decline

CHAIN X3EMYR coin_loan 
~Huh. This works out just well, don't you think, Derrick?~
DO ~TakePartyGold(2000)~
EXTERN X3EDER quest_success 

CHAIN X3EDER quest_success 
~I suppose cooler heads do prevail. Thanks and all. Tell Lord Jurgenson our little conflict is all settled.~
== X3EMYR ~Back to business for us, then. I've had enough of Derrick's stench.~
== X3EDER ~Hey! No need for the insults, you cur. Hrmph. Let me get out of here before I really make your head airy.~
DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)SetGlobal("X3EGVJTalkResult","GLOBAL",1)AddJournalEntry(@8,QUEST)ActionOverride("X3EMYR",EscapeArea())EscapeArea()~ // 1 = success!
EXIT 

CHAIN X3EMYR coin_lower_loan 
~I...eh damn it all. I can take it. I'll admit there aren't many lords as good as Lord Jurgenson to risk just dropping business entirely.~
DO ~TakePartyGold(1500)~
EXTERN X3EDER quest_success 

CHAIN X3EMYR coin_loan_reject
~That doesn't work. I need a bit more then that, just in case things get worse before they get a better.~
== X3EDER ~I have to concur. Guess he's thinking for once.~
== X3EMYR ~Do watch your mouth, will you?~
END 
+~PartyGoldGT(1999)~+ ~We can lend you two thousand coin total, one thousand each. Does this work?~ + coin_loan
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just adjust your business for a while Myron.~ + Myron_accept 
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just adjust your business for a while Myron.~ + Myron_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just adjust your business for a while Myron.~ + Myron_decline
+~RandomNum(2,1)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just lower your prices for a while, Derrick.~ EXTERN X3EDER Derrick_accept
+~RandomNum(2,2)OR(2)CheckStatGT(Player1,15,CHR)IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just lower your prices for a while, Derrick.~ EXTERN X3EDER Derrick_decline 
+~!CheckStatGT(Player1,15,CHR)!IsValidForPartyDialogue("X3Emi")~+ ~We can't lend you that. Just lower your prices for a while, Derrick.~ EXTERN X3EDER Derrick_decline
++ ~Just figure it out yourselves. Lower your prices and adjust your business, both of you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + Myron_decline

CHAIN X3EMYR Myron_accept 
~I...eh damn it all. I'll admit there aren't many lords as good as Lord Jurgenson to risk just dropping business due to hard times. I'll bear through this for now.~
EXTERN X3EDER quest_success 

CHAIN X3EMYR Myron_decline 
~No, I can't work with that, and I don't think I will be working with the estate anymore either. Tell Lord Jurgenson I will be suspending my business and foreclosing any properties I own on his estate. He can speak to me himself if he has further questions, I'm done.~
EXTERN X3EDER Myron_fail 

CHAIN X3EDER Derrick_accept 
~Just lower my prices...is that really what it comes down to? Damn it all. I was hoping...but Lord Jurgenson has been good business through the good. If this problem is only temporary...I'll see the good again. I'll endure, for now.~
== X3EMYR ~Good. I'm glad we have this settled.~
EXTERN X3EDER quest_success 

CHAIN X3EDER Derrick_decline
~No. Absolutely not. I am being asked to sacrifice because Myron can't handle the merchant struggles where I am finding success? Is this how Lord Jurgenson repays my loyalty all these years?~
== X3EDER ~My business with his house is over. My business, my properties, they will be gone. And I will be gone from this place as well. Goodbye.~
== X3EMYR ~Good riddance. Don't get yourself killed on the trade roads, because I won't care.~
== X3EDER ~Oh, go to the hells, Myron!~
== X3EMYR ~Nope, I'm just going to go back to business, you fool!~
DO ~SetGlobal("X3EGVJTalkResult","GLOBAL",3)AddJournalEntry(@7,QUEST)ActionOverride("X3EDER",EscapeArea())EscapeArea()~ // 3 = Derrick left
EXIT 