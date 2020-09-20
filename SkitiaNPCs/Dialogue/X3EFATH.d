 // This dialogue file handles all final conversation files for Emily's finale.
//It starts when Charles Castilla is spoken to.

// Catherine represents House Shieldheart

// Cut scene before should have the lines:
/* Thomas: How much longer are we going to wait, father? She does not care about the estate or your lands.~
   Thomas's Lover: If she is not here soon, I say that should disqualify her.
   Thomas: Speak of the Devil...
   
*/ 



CHAIN IF ~GlobalLT("X3EmiQuest","GLOBAL",5)~ THEN X3EFATH where_is_emily
~Where is that girl of mine? I have missed her so. It will be a relief to see her face despite the stress of this moment.~
EXIT 

CHAIN IF ~Global("X3EmiQuest","GLOBAL",5)IsValidForPartyDialogue("X3Emi")~ THEN X3EFATH finale.2
~For months I have been wanting to pass on my duties as the leader of House Castilla, but the heir has not been so readily apparent. By old traditions, it should be the eldest, but I have noted my son's Thomas, equal desire for leadership.~
== X3EFATH ~So instead of voicing my pick of heir, and having it inevitably disputed by one or the other, I will ask our house friends to proclaim who they would support as the heir of house Castilla.~
== X3EmiJ ~That is not a bad idea, father. We may as well skip who your personal selection is if it will be challenged anyway.~
== X3EBRO ~For once I agree with Emily. This is a very wise decision you make. Proceed, father.~
== X3EFATH ~Catherine Shield heart, as the representative heir of your own house, and friend of House Castilla, who do you support to lead House Castilla into the future?~
== X3ECATH ~I support Emily Castilla. Even if she has been absent from Tethyr as of late, her reasons for being so are noble and good. She represents the values of nobility well.~
== X3EDAR ~Completely expected, that Lady Shieldheart votes in line with her friend. If I may speak for my own house, we support Thomas. His work back in Tethyr with working with my house and forming a closer alliance spells a bountiful promise under his leadership. Emily offers no such thing.~
== X3ECATH ~You complain of my vote, but you vote for the man you are trying to become engaged to.~
== X3EFATH ~There is no need for exchanging of snipes. House Hornkeeper, if we could have your vote?~
END 
IF ~Global("X3ECHVote","GLOBAL",1)~ EXTERN X3ECH vote_Emily 
IF ~!Global("X3ECHVote","GLOBAL",1)~ EXTERN X3ECH vote_Thomas

CHAIN X3ECH vote_Emily 
~I vote for Lady Emily, Charles. Your daughter has the prestige to be looked up to by the common folk with respect, something that Thomas I fear lacks.~
== X3EmiJ ~Thank you, Lady Hornkeeper, for your support. It is an honor.~
== X3EBRO ~Have you forgotten the favors I have done for your house? What has Emily done for you in the months she has been absent? *Nothing*.~
== X3ECH ~I appreciate those favors, Thomas, but your character and appeal to the mass of people who serve you holds greater meaning to me.~
== X3EFATH ~And House Jurgenson? How do you vote?~
END 
// Gregory Von Jurgenson will vote no irregardless here. 
IF ~Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ vote_betrayed // Betrayed Vote 
IF ~!Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ no_vote // no vote 

CHAIN X3ECH vote_Thomas 
~I have not seen a great distinction between Emily and Thomas's prestige, or perhaps as noted Emily has not put in the same effort. Despite my misgivings, I will suport Thomas.~
== X3EBRO ~You choose wisely, Lady Charmaine. I will not forget this.~
== X3EmiJ ~That is disappointing to hear, Lady Hornkeeper. But I guess I understand your decision.~
== X3ECH ~I like you Lady Castilla. But unfortunately I must use reason, and your time away has not shown me your leadership capability where Thomas has.~
== X3EFATH ~And house Jurgenson? How do you vote?~
END 
IF ~Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ vote_betrayed // Betrayed Vote 
IF ~!Global("X3EGVJVote","GLOBAL",1)~ EXTERN X3EGVJ no_vote// No Vote 

CHAIN X3EGVJ vote_betrayed 
~I...originally supported Lady Emily. However after...learning with clear evidence that she is not only not purely human, but an aasimar, I am afraid I will have to support Thomas. We cannot risk someone like that leading your house. The story of Caelar should be feared for a reason.~
END 
++ ~Emily is not Caelar, Jurgenson. Don't judge her because of what someone else did.~ + judge 
++ ~You traitor!~ + traitor
++ ~You better find a big castle to hide in after this is over.~ EXTERN X3EBRO tie_barbaric 

CHAIN X3EGVJ traitor 
~This is no betrayal here. This is making a decision from information I had after my pledge, and I am free to rescind it if I believe it is best.~
EXTERN X3EmiJ tie_tie 

CHAIN X3EGVJ judge 
~I am free to judge. Aasimar as it has been shown are dangerous, and she was, to my understanding, a noble. I will not be responsible for putting someone in charge who leads an entire house to their deaths for some foolish cause, and with her adventurer background, this is bound to happen.~
EXTERN X3EmiJ tie_tie

//Cutting
/*
CHAIN X3EGVJ yes_vote 
~I support your daughter, Thomas. I will not forget how she assisted with a dispute between two merchants in service to me. Such diplomacy and grace will be key to a succesful leadership of House Castilla.~
== X3EBRO ~I thought I could count on you, Jurgenson. It seems you fell for her gentle demeanor.~
== X3EGVJ ~If you were less arrogant, Thomas, perhaps I would have voted differently. Learn well.~
END 
++ ~This makes it a tie. Does your father break it, Emily?~ EXTERN X3EmiJ tie_tie
++ ~Thank you for supporting Emily, Jurgenson.~ EXTERN X3EmiJ tie_tie
++ ~What happens now?~ EXTERN X3EmiJ tie_tie
*/
CHAIN X3EGVJ no_vote 
~I support Thomas as your heir, Charles, with one hundred percent certainity he is the right person. He is firm, and he is not always empathetic, but those are not bad traits in a leader.~
END 
+~!Global("X3ECHVote","GLOBAL",1)~ + ~This makes Thomas the winner, then.~ EXTERN X3EFATH thomas_wins
+~Global("X3ECHVote","GLOBAL",1)~ + ~This makes it a tie. What happens now, Emily?~ EXTERN X3EmiJ tie_tie
+~!Global("X3ECHVote","GLOBAL",1)~ + ~Is this going to go on much longer?~ EXTERN X3EmiJ thomas_won
+~Global("X3ECHVote","GLOBAL",1)~ + ~Is this going to go on much longer?~ EXTERN X3EBRO tie_barbaric
++ ~This is an unfortunate result. I am sorry Emily.~ EXTERN X3EmiJ thomas_won_2 

CHAIN X3EmiJ thomas_won 
~No...*sigh* Thomas won.~
EXTERN X3EFATH thomas_wins 

CHAIN X3EmiJ thomas_won_2 
~Yes...Yes it is. *sigh*~
EXTERN X3EFATH thomas_wins 

CHAIN X3EBRO tie_barbaric 
~I cannot believe I am tied in support with someone who hangs out with rude and uncivilized people.~
EXTERN X3EmiJ tie_tie 

CHAIN X3EmiJ tie_tie 
~I guess it comes down to you father, after all of this. And I think in the end, maybe that is best.~
EXTERN X3EFATH tie_breaker 

CHAIN X3EFATH thomas_wins
~Indeed. Based upon the voices heard today, I will name Thomas the heir and new leader of House Castilla.~
== X3EmiJ ~I...well...congratulations, Thomas.~
== X3EBRO ~Hrmph. Is this effective immediately, father?~
== X3EFATH ~It is.~
== X3EBRO ~Then you, sister, may show your "congratulations" by ceasing to name yourself a Castilla. You are a half-blood, perhaps even worse. Our father, by having tried to hide this fact for so long, has only caused great damage to our family name.~
== X3EFATH ~Thomas, what is the meaning o-?~
== X3EBRO ~You said this was effective *immediately*, father, and I am acting out a responsibility you should have years ago, and many other things that I will address as soon as I return home. You may not like them at first, but you will see they are necessary for our family's enduring legacy.~
== X3EFATH ~Thomas, please, see reason. This is your s-~
== X3EmiJ ~It is okay, father. I...do not think I want to be a Castilla if that means being subservient to him, as is. I will always love you father, though I do not know if we will meet eachother again.~
== X3ECATH ~You are always welcome to visit my family, Emily, if you require a place.~
== X3EmiJ ~I think my place right now is the road. And I think that is where I will stay. But thank you, Catherine.~
== X3EBRO ~Good. In the meantime father, we have much to talk about. Let us get out of this inn and return to Tethyr to begin this lengthy transition.~
DO ~AddJournalEntry(@14,QUEST_DONE)SetGlobal("X3EmiQuest","GLOBAL",11) 
ActionOverride("X3ECH",EscapeArea())
ActionOverride("X3ECATH",EscapeArea())
ActionOverride("X3EGVJ",EscapeArea())ActionOverride("X3EDAR",EscapeArea())ActionOverride("X3EFATH",EscapeArea())EscapeArea()~ EXIT 
// 10 = Done.

CHAIN X3EFATH tie_breaker 
~I was worried it would come back around to me. Such is fate. Emily, Thomas, know that I love both of you, and-~
== X3EBRO ~Love, father? You have lied to yourself for years. All of us. Do you truly intend to go through this ceremony and not reveal the terribly kept lie that has some questioning Emily as leader in the first place?~
== X3EBRO ~*My* mother, your wife is not here for this very reason, father. Emily was sired by another. I have taken the months of her absence away to learn all I could, just as I imagined she did, even though you would not tell my the real reason for her departure, father.~
END 
IF ~Global("X3EGVJVote","GLOBAL",1)Global("X3ECHVote","GLOBAL",1)~ EXTERN X3EBRO vote_sway 
IF ~OR(2)!Global("X3EGVJVote","GLOBAL",1)!Global("X3ECHVote","GLOBAL",1)~ EXTERN X3EBRO background_reveal

CHAIN X3EBRO vote_sway 
~I have been sending spies to follow Emily's journey when she was in Baldur's Gate to figure out what you would not tell me, father. And you know what I learned? Everything that Lord Jurgenson revealed to you earlier. I learned of this and swayed his vote when I grasped he was going to support a poor choice.~
END 
++ ~You manipulated Lord Jurgenson's changed vote, then.~ + changed_vote
++ ~Why does this matter? She is still your father's daughter.~ + father_daughter
++ ~The votes were cast. You can't change the tie after the fact, Thomas.~ EXTERN X3ECH no_change 

CHAIN X3EBRO background_reveal 
~I have been sending spies to follow Emily's journey when she was in Baldur's Gate to figure out what you would not tell me, father. Those hair tricks, those hats, everyone knew but no one would say it directly, but now I will.~
== X3EBRO ~My sister is a half-blood. Not only that, but an aasimar, the same kind of creature that caused the death of many to the north.~
END 
++ ~You can't judge Emily because of another aasimar, Thomas.~ + judge 
++ ~Why does this matter? She is still your father's daughter.~ + father_daughter
++ ~The votes were cast. You can't change the tie after the fact, Thomas.~ EXTERN X3ECH no_change 

CHAIN X3EBRO changed_vote 
~Manipulate? Only the truth was told. Lord Jurgenson at least was the only one I see who has changed their stance.~
EXTERN X3ECH no_change 

CHAIN X3EBRO father_daughter 
~But she is not my mother's daughter. She is a bastard, and therefore not deserving to be heir.~
EXTERN X3EBRO duel_call

CHAIN X3EBRO judge 
~I judge her for far more than just who she is. I have lived an entire childhood being the *second*, the second to someone who is only half of my blood, and I have had enough of it.~
EXTERN X3EBRO duel_call 

CHAIN X3ECH no_change 
~Your words won't change my vote, Thomas, only reinforce it. Times have changed, but more importantly, this only hurts your show of character.~
EXTERN X3EBRO duel_call 

CHAIN X3EBRO duel_call 
~The Houses have made their vote, and I know what yours will be, father. Therefore I call upon my right of decision by combat.~
== X3EFATH ~You cannot be serious, Thomas. She is your s-~
== X3EBRO ~*Half* sister, father. And while grace and prestige are two tenants all nobles should strive for in Tethyr, the third and most important, is might.~
== X3EGVJ ~By rights older than today's traditions, a contest of might for the heirship is allowed, even if it is unusual. But does Lady Castilla accept?~
END 
++ ~Don't do this, Emily. We don't need to fight him.~ EXTERN X3EmiJ we_do
++ ~Of course we'll do it.~ + duel_ring
++ ~Can't you stop this, Mr. Castilla?~ EXTERN X3EFATH stop 

CHAIN X3EFATH stop 
~Thomas is right. By an old law he is allowed to duel for the position. I beg you son, to reconsider.~
== X3EBRO ~I will not. But is my sister courageous enough to fight, to settle this once and for all?~
== X3EmiJ ~I am. But here is not the place.~
EXTERN X3EBRO duel_ring 

CHAIN X3EBRO duel_ring 
~There is a duel ring in the Copper Coronet. It is there we will settle this.~
DO ~AddJournalEntry(@15,QUEST)SetGlobal("X3EmiQuest","GLOBAL",6)
ActionOverride("X3EBRO",EscapeAreaMove("AR0406",1440,1928,SW))
ActionOverride("X3EFATH",EscapeAreaMove("AR0406",1339,1912,SE))
ActionOverride("X3ECH",EscapeArea())
ActionOverride("X3ECATH",EscapeArea())
ActionOverride("X3EGVJ",EscapeArea())ActionOverride("X3EDAR",EscapeArea())~ EXIT 


CHAIN X3EmiJ we_do 
~I don't want to. But if it is the only way to settle this, then I will accept his challenge. But here is not the place.~
EXTERN X3EBRO duel_ring 

// The Duel 
CHAIN IF ~Global("X3EmiQuest","GLOBAL",6)~ THEN X3EFATH sad_duel 
~A pity it has come to this. I have failed both of them.~
EXIT 
