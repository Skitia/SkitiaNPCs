// This file includes X3HRL, X3HRM, and X3HPOOR dialogues, as well as Surly's expanded line to let people back in the pit in case someone died.

/* The announcer does the beef of Helga's quest. 

Helga's Quest has a few outcomes.

Lose any of the rounds -> Fail, with a disapproval loss from Helga if in the party.
Give the Potion of Bodily Health to the Old Man for his frail son. -> Helga Disapproval, with potential refund in a talk after. Gains Potion of Understanding in its place.
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
@0
EXIT 
// Only if Helga is in the party. Still, always a chance she is not as this is only for the spawn script, so code accordingly.
CHAIN IF ~AreaCheck("AR0400")~ THEN X3HPOOR Sight
@1
== X3HPOOR @2
END 
IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("X3HelQuest","GLOBAL",0)~ EXTERN X3HelJ Potion 
+~!GlobalGT("X3HelQuest","GLOBAL",0)~+ @3 + involved 
+~!GlobalGT("X3HelQuest","GLOBAL",0)~+ @4 + time 
+~!GlobalGT("X3HelQuest","GLOBAL",0)~+ @5 + win
// These are unlikely, but it's possible to enter the inn and never speak to this guy.
+~GlobalGT("X3HelQuest","GLOBAL",0)!Global("X3HelQuest","GLOBAL",6)~+ @6 + registered 
+~Global("X3HelQuest","GLOBAL",6)~+ @7 + won 



CHAIN X3HPOOR win 
@8
DO ~AddJournalEntry(@20002,QUEST)EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT

CHAIN X3HPOOR time 
@9
DO ~AddJournalEntry(@20002,QUEST)EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT  

CHAIN X3HPOOR involved 
@10
DO ~AddJournalEntry(@20002,QUEST)EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT 

CHAIN X3HPOOR registered 
@11
DO ~EscapeAreaMove("AR0406",1282,1887,NW)~
EXIT 

CHAIN X3HPOOR won 
@12
END 
++ @13 + farewell 
++ @14 + farewell
+~PartyHasItem("X3HPC")~+ @15 + help_son 

CHAIN X3HPOOR farewell 
@16
DO ~EscapeArea()~
EXIT 

CHAIN X3HelJ Potion 
@17
== X3HPOOR @18
== X3HelJ @19
END 
++ @20 EXTERN X3HPOOR involved 
++ @21 + check_out 
++ @22 + no_time

CHAIN X3HelJ no_time 
@23
== X3HPOOR @24
DO ~AddJournalEntry(@20002,QUEST)EscapeArea()~
EXIT 

CHAIN X3HelJ check_out 
@25
== X3HPOOR @26
DO ~AddJournalEntry(@20002,QUEST)EscapeArea()~
EXIT 

BEGIN X3HRL

CHAIN IF ~Global("X3HelQuest","GLOBAL",0)~ THEN X3HRL Meet
@27
END 
++ @28 + signup
++ @29 + Entail 
++ @30 EXTERN X3HRL rejected 

CHAIN IF ~~ THEN X3HRL signup 
@31
EXTERN X3HRL rules 

CHAIN X3HRL Entail 
@32
EXTERN X3HRL rules 

CHAIN X3HRL rules
@33
== X3HRL @34
== X3HRL @35
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN @36
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ HelgaComment
IF ~!IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VieComment
+~PartyGoldGT(499)~+ @37 DO ~TakePartyGold(500)IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@106)~ EXTERN X3HRL pay
++ @38 EXTERN X3HRL rejected
+~CheckStatGT(LastTalkedToBy,15,CHR)~+ @39 EXTERN X3HRL reduced 
+~CheckStatLT(LastTalkedToBy,16,CHR)~+ @39 EXTERN X3HRL noReduction
++ @30 DO ~TakePartyGold(500)IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@116)~  EXTERN X3HRL rejected 

CHAIN X3HRL rejected  
@40
EXIT 

CHAIN X3HelJ HelgaComment
@41
END  
+~PartyGoldGT(499)~+ @37 DO ~TakePartyGold(500)IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ EXTERN X3HRL pay
++ @38 EXTERN X3HRL rejected
+~CheckStatGT(LastTalkedToBy,15,CHR)~+ @39 EXTERN X3HRL reduced 
+~CheckStatLT(LastTalkedToBy,16,CHR)~+ @39 EXTERN X3HRL noReduction
++ @30 DO ~TakePartyGold(500)IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ EXTERN X3HRL rejected

CHAIN X3VieJ VieComment 
@42
END 
+~PartyGoldGT(499)~+ @37 DO ~TakePartyGold(500)~ EXTERN X3HRL pay
++ @38 EXTERN X3HRL rejected
+~CheckStatGT(LastTalkedToBy,15,CHR)~+ @39 EXTERN X3HRL reduced 
+~CheckStatLT(LastTalkedToBy,16,CHR)~+ @39 EXTERN X3HRL noReduction
++ @30 DO ~TakePartyGold(500)~ EXTERN X3HRL rejected 

CHAIN X3HRL noReduction
@43
END 
+~PartyGoldGT(499)~+ @37 DO ~TakePartyGold(500)~ EXTERN X3HRL pay
++ @38 EXTERN X3HRL rejected
++ @30 EXTERN X3HRL rejected 


CHAIN X3HRL reduced 
@44
END 
+~PartyGoldGT(399)~+ @37 DO ~TakePartyGold(400)~ EXTERN X3HRL pay
++ @38 EXTERN X3HRL rejected
++ @30 EXTERN X3HRL rejected 

CHAIN X3HRL pay 
@45
DO ~AddJournalEntry(@20003,QUEST)SetGlobal("X3HelQuest","GLOBAL",1)~
END 
++ @46 + join 
++ @47 + prepare  

// Once agreed, conversation should start here.
CHAIN IF ~Global("X3HelQuest","GLOBAL",1)!Global("X3HBattle","GLOBAL",1)~ THEN X3HRL round1start 
@48
END 
++ @46 + join 
++ @47 + prepare  

CHAIN X3HRL prepare 
@49
EXIT 

CHAIN X3HRL join 
@50
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @51
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ join_one_remarkH // Helga and Kale will be the most excited to join you. Emily strongly disapproves, Recorder moderately disapproves, Vienxay is neutral.)
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3KalJ join_one_remarkK
+~InParty(Player2)~+ @52 DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second
+~InParty(Player3)~+ @53 DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second
+~InParty(Player4)~+ @54 DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second
+~InParty(Player5)~+ @55 DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second
+~InParty(Player6)~+ @56 DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second
++ @57 + join_second

CHAIN X3HELJ join_one_remarkH
@58
EXTERN X3HRL join_first

CHAIN X3KalJ join_one_remarkK
@59
EXTERN X3HRL join_first

CHAIN X3HRL join_first 
@60
END 
+~InParty(Player2)~+ @52 DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second
+~InParty(Player3)~+ @53 DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second
+~InParty(Player4)~+ @54 DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second
+~InParty(Player5)~+ @55 DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second
+~InParty(Player6)~+ @56 DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second
++ @57 + fight

CHAIN X3HRL join_second 
@61
== X3HRL @62
END 
+~InParty(Player2)!Global("X3P2Arena","AR0406",1)~+ @52 DO ~SetGlobal("X3P2Arena","AR0406",1)~ + fight
+~InParty(Player3)!Global("X3P3Arena","AR0406",1)~+ @53 DO ~SetGlobal("X3P3Arena","AR0406",1)~ + fight
+~InParty(Player4)!Global("X3P4Arena","AR0406",1)~+ @54 DO ~SetGlobal("X3P4Arena","AR0406",1)~ + fight
+~InParty(Player5)!Global("X3P5Arena","AR0406",1)~+ @55 DO ~SetGlobal("X3P5Arena","AR0406",1)~ + fight
+~InParty(Player6)!Global("X3P6Arena","AR0406",1)~+ @56 DO ~SetGlobal("X3P6Arena","AR0406",1)~ + fight
++ @63 + fight 



CHAIN X3HRL fight 
@64
== X3HRL @65
DO ~FadeToColor([30.0],0)Wait(1)MoveViewPoint([620.1745],INSTANT)StartCutSceneMode()
StartCutScene("X3HCut01")~
EXIT 
/* From here, we can have the enemy fighters have a string above them before they fight. */



CHAIN IF ~Global("X3HelQuest","GLOBAL",2)~ THEN X3HRL roundOneVictory 
@66
DO ~AddJournalEntry(@20004,QUEST)IncrementGlobal("X3HelQuest","GLOBAL",1)GiveGoldForce(250)SetGlobalTimer("X3HGauntletTimer","GLOBAL",ONE_DAY)~
EXIT 

CHAIN IF ~Global("X3PoorMet","GLOBAL",2)~ THEN X3HPOOR request 
@67
== X3HRL @68
== X3HPOOR @69
== X3HRL @70
== X3HRL @71
DO ~ActionOverride("X3HPoor",IncrementGlobal("X3PoorMet","GLOBAL",1))~
EXIT 

CHAIN IF ~!GlobalTimerExpired("X3HGauntletTimer","GLOBAL")~ THEN X3HRL not_ready 
@72
EXIT 

CHAIN IF ~GlobalTimerExpired("X3HGauntletTimer","GLOBAL")Global("X3HelQuest","GLOBAL",3)!Global("X3HBattle","GLOBAL",1)~ THEN X3HRL second_round 
@73
END 
++ @74 + second_fight_join
++  @75 + second_wait  

CHAIN X3HRL second_wait 
@76
EXIT 

CHAIN X3HRL second_fight_join 
@77
END 
+~InParty(Player2)~+ @52 DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player3)~+ @53 DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player4)~+ @54 DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player5)~+ @55 DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second_fight2
+~InParty(Player6)~+ @56 DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second_fight2
++ @78 + fight_fight2 

CHAIN X3HRL join_second_fight2 
@79
== X3HRL @62
END 
+~InParty(Player2)!Global("X3P2Arena","AR0406",1)~+ @52 DO ~SetGlobal("X3P2Arena","AR0406",1)~ + fight_fight2
+~InParty(Player3)!Global("X3P3Arena","AR0406",1)~+ @53 DO ~SetGlobal("X3P3Arena","AR0406",1)~ + fight_fight2
+~InParty(Player4)!Global("X3P4Arena","AR0406",1)~+ @54 DO ~SetGlobal("X3P4Arena","AR0406",1)~ + fight_fight2
+~InParty(Player5)!Global("X3P5Arena","AR0406",1)~+ @55 DO ~SetGlobal("X3P5Arena","AR0406",1)~ + fight_fight2
+~InParty(Player6)!Global("X3P6Arena","AR0406",1)~+ @56 DO ~SetGlobal("X3P6Arena","AR0406",1)~ + fight_fight2
++ @63 + fight_fight2 

CHAIN X3HRL fight_fight2 
@80
DO ~FadeToColor([30.0],0)Wait(1)MoveViewPoint([620.1745],INSTANT)StartCutSceneMode()
StartCutScene("X3HCut03")~
EXIT

CHAIN IF ~Global("X3HelQuest","GLOBAL",4)~ THEN X3HRL roundtwoVictory
@81
DO ~AddJournalEntry(@20005,QUEST)GiveGoldForce(500)SetGlobalTimer("X3HGauntletTimer","GLOBAL",ONE_DAY)IncrementGlobal("X3HelQuest","GLOBAL",1)~
EXIT 

CHAIN IF ~Dead("X3HDD")!Global("X3HelQuest","GLOBAL",9)~ THEN X3HRL quest_fail
@82
DO ~AddJournalEntry(@20009,QUEST_DONE)ActionOverride("X3HPOOR",EscapeArea())EscapeArea()~
EXIT 

CHAIN IF ~OR(2)Global("X3HelQuest","GLOBAL",6)Global("X3HelQuest","GLOBAL",7)~ THEN X3HRL not_ready 
@83
EXIT 

CHAIN IF ~Global("X3HelQuest","GLOBAL",8)!Global("X3HBattle","GLOBAL",1)~ THEN X3HRL third_round
@84
END 
++ @85 + third_ready 
++ @75 + third_time 
++ @86 + forfeit 

CHAIN X3HRL third_time 
@87
EXIT 

CHAIN X3HRL third_consider 
@88
EXIT 

CHAIN X3HRL forfeit 
@89
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ third_interject // Helga interject, loss of approval. 
++ @90 + third_forfeit 
++ @91 + third_consider 
++ @92 + third_ready 

CHAIN X3HRL third_ready 
@93
EXTERN X3HRL third_join_fight 

CHAIN X3HELJ third_interject 
@94
END 
++ @95 EXTERN X3HRL third_forfeit 
++ @92 EXTERN X3HRL third_ready
++ @91 EXTERN X3HRL third_consider 

CHAIN X3HRL third_forfeit 
@96
== X3HRL @97
DO ~AddJournalEntry(@20007,QUEST_DONE)~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ third_dissaprove // Helga interject, loss of approval. 
IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ EXTERN X3KalJ third_approve // Kale interject, gain of approval.
IF ~!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ + departure 

CHAIN X3HelJ third_dissaprove 
@98
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ third_approve // Kale interject, gain of approval.
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3HRL departure 

CHAIN X3KalJ third_approve 
@99
EXTERN X3HRL departure

CHAIN X3HRL departure 
@100
DO ~SetGlobal("X3HForfeit","GLOBAL",1)EscapeArea()~ 
EXIT 

CHAIN X3HRL third_join_fight
@101
END 
+~InParty(Player2)~+ @52 DO ~SetGlobal("X3P2Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player3)~+ @53 DO ~SetGlobal("X3P3Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player4)~+ @54 DO ~SetGlobal("X3P4Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player5)~+ @55 DO ~SetGlobal("X3P5Arena","AR0406",1)~ + join_second_fight3
+~InParty(Player6)~+ @56 DO ~SetGlobal("X3P6Arena","AR0406",1)~ + join_second_fight3
++ @57 + fight_fight3


CHAIN X3HRL join_second_fight3
@102
== X3HRL @103
END 
+~InParty(Player2)!Global("X3P2Arena","AR0406",1)~+ @52 DO ~SetGlobal("X3P2Arena","AR0406",1)~ + fight_fight3
+~InParty(Player3)!Global("X3P3Arena","AR0406",1)~+ @53 DO ~SetGlobal("X3P3Arena","AR0406",1)~ + fight_fight3
+~InParty(Player4)!Global("X3P4Arena","AR0406",1)~+ @54 DO ~SetGlobal("X3P4Arena","AR0406",1)~ + fight_fight3
+~InParty(Player5)!Global("X3P5Arena","AR0406",1)~+ @55 DO ~SetGlobal("X3P5Arena","AR0406",1)~ + fight_fight3
+~InParty(Player6)!Global("X3P6Arena","AR0406",1)~+ @56 DO ~SetGlobal("X3P6Arena","AR0406",1)~ + fight_fight3
++ @63 + fight_fight3 

CHAIN X3HRL fight_fight3
@104
DO ~FadeToColor([30.0],0)Wait(1)MoveViewPoint([620.1745],INSTANT)StartCutSceneMode()
StartCutScene("X3HCut04")~
EXIT

CHAIN IF ~Global("X3HelQuest","GLOBAL",9)~ THEN X3HRL third_victory 
@105
== X3HRL @106
DO ~AddJournalEntry(@20008,QUEST_DONE)GiveGoldForce(750)GiveItemCreate("X3HPC",Player1,1,0,0)~
END
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HELJ potion_obtained 
IF ~!IsValidForPartyDialogue("X3Hel")~ EXTERN X3HRL departure 

CHAIN X3HELJ potion_obtained 
@107
END 
++ @108 DO ~IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@219)~ + Helga_receive
+~Global("X3PoorMet","GLOBAL",3)~+ @109 + poor_man 
++ @110 DO ~IncrementGlobal("X3HelApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@209)~ + Helga_not_receive

CHAIN X3HELJ Helga_not_receive
@111
== X3HELJ @112
EXTERN X3HRL departure 

CHAIN X3HELJ poor_man 
@113
END 
++ @114 DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ + sickly 
++ @115 DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~ + sickly 
++ @116 DO ~IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@219)~ + Helga_receive

CHAIN X3HELJ sickly 
@117
EXTERN X3HRL departure 

CHAIN X3HelJ Helga_receive 
@118
EXTERN X3HRL departure 

CHAIN IF ~GlobalGT("X3HelQuest","GLOBAL",1)~ THEN X3HPOOR talk 
@119
END 
+~PartyHasItem("X3HPC")~+ @120 + help_son 
+~!Global("X3HelQuest","GLOBAL",9)Global("X3PoorMet","GLOBAL",3)~+ @121 + gift 
++ @122 + start 
++ @123 EXIT  

CHAIN X3HPOOR start 
@124
EXIT 

CHAIN X3HPOOR gift 
@125
EXIT 

CHAIN X3HPOOR help_son 
@126
DO ~ReputationInc(1)TakePartyItem("X3HPC")GiveItemCreate("X3HPW",Player1,1,0,0)~
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ approval_plus_E 
IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ approval_plus_R 
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ EXTERN X3HPOOR depart_happy 

CHAIN X3EmiJ approval_plus_E 
@127
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@119)~
EXTERN X3HPOOR depart_happy 

CHAIN X3RebJ approval_plus_R 
@128
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@119)~
EXTERN X3HPOOR depart_happy 

CHAIN X3HPOOR depart_happy  
@129
DO ~EscapeArea()~
EXIT



