BEGIN X3Rest
// X3Rest is a custom player dialogue. The player's dialogue file is temporarily set to X3Rest for this to fire.
// This allows other mods to add their own rest talks without fear of position as this will always be the first one.
CHAIN IF ~Global("X3RestActivated","GLOBAL",1)~ THEN X3Rest restTalk
@0
END // If RestInvite was activated via PID by my NPC's, it will do a special go to direct. Only possible with PID NPCs or some dialogue invitation.
IF ~Global("X3RestInvite","GLOBAL",1)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest EmilySet
IF ~Global("X3RestInvite","GLOBAL",2)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest HelgaSet
IF ~Global("X3RestInvite","GLOBAL",3)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest KaleSet
IF ~Global("X3RestInvite","GLOBAL",4)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest RecorderSet 
IF ~Global("X3RestInvite","GLOBAL",5)~ DO ~SetGlobal("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest VienxaySet
IF ~!GlobalGT("X3RestInvite","GLOBAL",0)~ EXTERN X3Rest restTalkNoSet

CHAIN X3Rest restTalkNoSet
@1 
// Set timer to 6000, 
DO ~RealSetGlobalTimer("X3RestTimer","GLOBAL",6000)~
END
+~IsValidForPartyDialogue("X3Emi")~+ @2 + EmilyNoSet
+~IsValidForPartyDialogue("X3Hel")~+ @3 + HelgaNoSet
+~IsValidForPartyDialogue("X3Kal")~+ @4 + KaleNoSet
+~IsValidForPartyDialogue("X3Reb")~+ @5 + RecorderNoSet
+~IsValidForPartyDialogue("X3Vie")~+ @6 + VienxayNoSet 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

/*Emily*/
CHAIN X3Rest EmilyNoSet 
@8
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
@9
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
AreaCheck("AR1602")~+ @10 EXTERN X3EmiJ Inn1
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
AreaCheck("AR1602")~+ @10 EXTERN X3EmiJ Inn2
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
AreaCheck("AR1602")~+ @10 EXTERN X3EmiJ Inn3
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @10 EXTERN X3EmiJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @10 EXTERN X3EmiJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @10 EXTERN X3Emi25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @10 EXTERN X3Emi25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @10 EXTERN X3Emi25J Outdoor2 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3EmiJ Inn1 
@11
= @12
END 
++ @13 + Talks 
+~GlobalGT("X3ECraft","GLOBAL",0)GlobalLT("X3ECraft","GLOBAL",14)~+ @14 + FletchGood
+~!GlobalLT("X3ECraft","GLOBAL",14)~+ @14 + FletchLow
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @15 + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @15 + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @15 + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @16 + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @16 + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @16 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @18 + Snuggle.4 // Always Rejects and suggests snuggling instead unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @18 + Sleep.8 // Because hers is so late, make it linear.
++ @19 + RestExit 

CHAIN X3EmiJ Hug1
@20
END 
IF ~RandomNum(3,1)~ EXTERN X3EmiJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3EmiJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Hug2
@21
END 
IF ~RandomNum(3,1)~ EXTERN X3EmiJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3EmiJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Hug3 
@22
END  
IF ~RandomNum(3,1)~ EXTERN X3EmiJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3EmiJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss1 
@23
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss2 
@24
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss3 
@25
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Kiss4 
@26
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Snuggle 
@27
END 
++ @28 + Snuggle.1 
++ @29 + Snuggle.2
++ @30 + Snuggle.3 // Ouch. Probably a minor loss here, but no break.

CHAIN X3EmiJ Snuggle.1 
@31
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3EmiJ Snuggle.3 
@32
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3EmiJ Snuggle.4 
@33
END 
++ @28 + Snuggle.1 
++ @30 + Snuggle.3 // Ouch. Probably a minor loss here, but no break.


CHAIN X3EmiJ Snuggle.2 
@34
END 
++ @28 + Snuggle.1
++ @35 + Snuggle.3 // No loss in this version.

CHAIN X3EmiJ Sleep 
@36
END 
++ @37 + Sleep.1
++ @38 + Sleep.2 
++ @39 + Sleep.3

CHAIN X3EmiJ Sleep.1
@40
EXTERN X3EmiJ Sleep.4 

CHAIN X3EmiJ Sleep.2 
@41
EXTERN X3EmiJ Sleep.4 

CHAIN X3EmiJ Sleep.4 
@42
END
++ @43 + Sleep.5 
++ @44 + Sleep.6

CHAIN X3EmiJ Sleep.5
@45
= @46
EXTERN X3EmiJ Sleep.7

CHAIN X3EmiJ Sleep.6
@47
= @48
EXTERN X3EmiJ Sleep.7

CHAIN X3EmiJ Sleep.7
@49
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3EmiJ Sleep.8
@50
= @51
EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Sleep.3 
@52
END 
++ @53 + Snuggle.1
++ @30 + Snuggle.3 // Ouch. Probably a minor loss here, but no break.


CHAIN X3EmiJ FletchGood 
@54
END 
++ @55 + Fletch.Exit 
++ @56 + Fletch.2 

CHAIN X3EmiJ FletchLow 
@57
END 
++ @58 + Fletch.Exit 
++ @56 + Fletch.3

CHAIN X3EmiJ Fletch.2 
@59
END 
+~PartyGoldGT(1499)~+ @60 DO ~TakePartyGold(1500)SetGlobal("X3ECraft","GLOBAL",0)~ + Fletch.4
++ @61 + Fletch.Exit 
++ @62 + Fletch.Exit 

CHAIN X3EmiJ Fletch.3
@59
END 
+~PartyGoldGT(1499)~+ @60 DO ~TakePartyGold(1500)IncrementGlobal("X3ECraft","GLOBAL",-15)~ + Fletch.4
++ @61 + Fletch.Exit 
++ @62 + Fletch.Exit 

CHAIN X3EmiJ Fletch.4 
@63
EXTERN X3EmiJ RestExit 

CHAIN X3EmiJ Fletch.Exit 
@64
END 
++ @13 + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @18 + Snuggle.4 // Always Rejects and suggests snuggling instead unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @18 + Sleep.8 // Because hers is so late, make it linear.
++ @19 + RestExit 


CHAIN X3EmiJ Inn2
@65
= @66
END 
++ @13 + Talks
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @15 + BathHug
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @16 + BathKiss
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @67 + BathNo // Always Rejects and says next time in SoA unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @67 + BathYes // Because hers is so late, make it linear.
++ @68 + RestExit 

CHAIN X3EmiJ BathHug
@69
END 
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ BathOffer
++ @13 + Talks
+~OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+ @17 + compliment 
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @67 + BathNo // Always Rejects and says next time in SoA unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @67 + BathYes // Because hers is so late, make it linear.
++ @68 + RestExit 

CHAIN X3EmiJ BathYes 
@70
EXTERN X3EmiJ BathJoin 

CHAIN X3EmiJ BathNo 
@71
END 
++ @72 + Talks
++ @73 + RestExit 


CHAIN X3EmiJ BathOffer 
@74
END 
++ @75 + BathJoin 
++ @76 + RestExit 

CHAIN X3EmiJ BathKiss 
@77
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ BathKiss.1 
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ BathKiss.2

CHAIN X3EmiJ BathKiss.1 
@78
END 
++ @13 + Talks
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @67 + BathNo // Always Rejects and says next time in SoA unless slept.
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @67 + BathYes // Because hers is so late, make it linear.
++ @68 + RestExit 

CHAIN X3EmiJ BathKiss.2 
@79
EXTERN X3EmiJ BathJoin 

CHAIN X3EmiJ BathJoin
@80
= @81
END 
++ @82 + BathJoin.1 
++ @83 + BathJoin.2 
++ @84 + BathJoin.3

CHAIN X3EmiJ BathJoin.1 
@85
EXTERN X3EmiJ BathJoin.2 

CHAIN X3EmiJ BathJoin.2
@86
= @87
END 
++ @88 + BathJoin.5
++ @89 + BathJoin.4 
++ @90 + BathJoin.6

CHAIN X3EmiJ BathJoin.5
@91
EXTERN X3EmiJ BathJoin.4

CHAIN X3EmiJ BathJoin.4 
@92
= @93
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
END 

CHAIN X3EmiJ BathJoin.6 
@94
EXTERN X3EmiJ BathJoin.4

CHAIN X3EmiJ BathJoin.3 
@95
EXTERN X3EmiJ BathJoin.2

CHAIN X3EmiJ Inn3
@96
= @97
END 
++ @13 + Talks 
+~Global("X3Drink","LOCALS",0)~+ @98 DO ~SetGlobal("X3Drink","LOCALS",1)~ + Drink1
+~Global("X3Drink","LOCALS",1)~+ @98 DO ~SetGlobal("X3Drink","LOCALS",2)~  + Drink2 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @99 + KissWine
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @100 + RestExit 

CHAIN X3EmiJ Drink1 
@101
END 
++ @102 + Drink1.1 
++ @103 + Drink1.2

CHAIN X3EmiJ Drink1.1
@104
END 
++ @105 + Drink1.4 
++ @106 + Drink1.5
++ @107 + Drink1.6

CHAIN X3EmiJ Drink1.4 
@108
EXTERN X3EmiJ Drink1.3 

CHAIN X3EmiJ Drink1.5
@109
EXTERN X3EmiJ Drink1.3 

CHAIN X3EmiJ Drink1.6
@110
EXTERN X3EmiJ Drink1.3

CHAIN X3EmiJ Drink1.2 
@111
EXTERN X3EmiJ Drink1.3 

CHAIN X3EmiJ Drink1.3
@112
= @113
END 
++ @114 + Drink1.7
++ @115 + Drink1.8
++ @116 + Drink1.9

CHAIN X3EmiJ Drink1.7
@117
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink1.8
@118
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink1.9
@119
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink2
@120
= @121
END 
++ @122 + Drink2.1 
++ @123 + Drink2.2
++ @124 + Drink2.3

CHAIN X3EmiJ Drink2.1 
@125
EXTERN X3EmiJ Drink2.4

CHAIN X3EmiJ Drink2.2 
@126
EXTERN X3EmiJ Drink2.4

CHAIN X3EmiJ Drink2.3 
@127
EXTERN X3EmiJ Drink2.4

CHAIN X3EmiJ Drink2.4
@128
END 
++ @129 + Drink2.5 
++ @130 DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@100113)~ + Drink2.6 
++ @131 + Drink2.7

CHAIN X3EmiJ Drink2.5
@132
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink2.6
@133
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Drink2.7
@134
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ KissWine
@135
= @136
END 
++ @13 + Talks 
+~Global("X3Drink","LOCALS",0)~+ @98 DO ~SetGlobal("X3Drink","LOCALS",1)~ + Drink1
+~Global("X3Drink","LOCALS",1)~+ @98 DO ~SetGlobal("X3Drink","LOCALS",2)~  + Drink2 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @100 + RestExit 

CHAIN X3EmiJ compliment
@137
DO ~IncrementGlobal("X3EmiApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@100113)~
= @138
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @143 + RestExit

CHAIN X3EmiJ StayTalk
@144
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @146 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @146 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @146 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @147 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @147 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @147 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @147 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @148 + RestExit 


CHAIN X3EmiJ Talks
@149
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3EmiJ HealthHigh1 
@150
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ HealthHighLove1 
@151
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthHigh2
@152
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ HealthHighLove2
@153
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthLow1 
@154
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ HealthLowLove1 
@155
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthLowLove2 
@156
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurtLove2

CHAIN X3EmiJ HealthLow2 
@157
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3EmiJ PlayerHurt2

CHAIN X3EmiJ PlayerHealthy1 
@158
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3EmiJ PlayerHealthy2 
@160
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3EmiJ PlayerHealthyLove1 
@161
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3EmiJ PlayerHealthyLove2 
@163
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3EmiJ PlayerHurt1 
@164
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3EmiJ PlayerHurt2 
@165
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3EmiJ PlayerHurtLove1 
@166
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2

CHAIN X3EmiJ PlayerHurtLove2 
@167
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2

CHAIN X3EmiJ Story1 
@168
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
= @169
= @170
= @171
END 
++ @172 + Story1.1 
++ @173 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + Story1.2 
++ @174 + Story1.3

CHAIN X3EmiJ Story1.1 
@175
END 
++ @176 + Story1.4
++ @177 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ @178 + Story1.5

CHAIN X3EmiJ Story1.2 
@179
= @180
END 
++ @176 + Story1.4
++ @177 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ @178 + Story1.5

CHAIN X3EmiJ Story1.3 
@181
= @182
END 
++ @176 + Story1.4
++ @177 + Story1.4
++ @178 + Story1.5

CHAIN X3EmiJ Story1.4
@183
EXTERN X3EmiJ RestLate 
 
CHAIN X3EmiJ Story1.5
@184
= @185
EXTERN X3EmiJ Story1.4

CHAIN X3EmiJ Story2
@186
= @187
= @188
= @189
END 
++ @190 + Story2.4
++ @191 + Story2.5
++ @192 + Story2.6

CHAIN X3EmiJ Story2.1 
@193
EXTERN X3EmiJ Story2.4

CHAIN X3EmiJ Story2.2 
@194
EXTERN X3EmiJ Story2.4

CHAIN X3EmiJ Story2.3
@195
EXTERN X3EmiJ Story2.4

CHAIN X3EmiJ Story2.4
@196
= @197
END 
++ @198 + Story2.5
++ @199 + Story2.6
++ @200 + Story2.7

CHAIN X3EmiJ Story2.5
@201
EXTERN X3EmiJ RestLate

CHAIN X3EmiJ Story2.6
@202
EXTERN X3EmiJ RestLate

CHAIN X3EmiJ Story2.7
@203
= @204
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Story3 
@205
= @206
= @207
END 
++ @208 + Story3.1 
++ @209 + Story3.1
++ @210 + Story3.2

CHAIN X3EmiJ Story3.1
@211
END  
++ @212 + Story3.3
++ @16 + Sleep.10 
++ @213 + Sleep.8

CHAIN X3EmiJ Story3.2
@214
END 
++ @16 + Sleep.10 
++ @213 + Sleep.8
++ @215 + Story3.4

CHAIN X3EmiJ Story3.3
@216
= @217
END 
++ @218 + Sleep.10 
++ @219 + Sleep.8
++ @220 + Story3.4

CHAIN X3EmiJ Story3.4
@221
EXTERN X3EmiJ RestExit

CHAIN X3EmiJ advice2 
@222
END 
++ @223 + advice2.1 
++ @224 + advice2.2
++ @225 + advice2.3

CHAIN X3EmiJ advice2.1 
@226
= @227
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice2.2
@228
= @229
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice2.3
@230
= @231
EXTERN X3EmiJ RestLate 
//Emily is the only one without a split here.
CHAIN X3EmiJ advice3 
@232
END 
++ @233 + advice3a.1 
++ @234 + advice3a.1 
++ @235 + advice3a.2

CHAIN X3EmiJ advice3a.1 
@236
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice3a.2
@237
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice4 
@238
= @239
END 
++ @240 + advice4.1 
++ @241 + advice4.2
++ @242 + advice4.3

CHAIN X3EmiJ advice4.1
@243
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice4.2 
@244
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice4.3
@245
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice6
@246
= @247
END 
++ @248 + advice6.1
++ @249 + advice6.2
++ @250 + advice6.3

CHAIN X3EmiJ advice6.1
@251
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice6.2
@252
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ advice6.3
@253
EXTERN X3EmiJ RestLate 


CHAIN X3EmiJ RestLove 
@254
END
++ @255 + Sleep.9 
++ @256 + Snuggle.3

CHAIN X3EmiJ RestLove3 
@257
END 
++ @255 + Snuggle.5
++ @256 + Snuggle.3

CHAIN X3EmiJ Sleep.10 
@258
EXTERN X3EmiJ Sleep

CHAIN X3EmiJ Sleep.9 
@259
EXTERN X3EmiJ Sleep 

CHAIN X3EmiJ Snuggle.5
@260
EXTERN X3EmiJ Snuggle.1 

CHAIN X3EmiJ Snuggle.6
@261
EXTERN X3EmiJ Snuggle.1

CHAIN X3EmiJ RestLove2
@262
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ Snuggle.5
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ RestLove2B 

CHAIN X3EmiJ RestLove2B 
@263 
END 
++ @264 + Sleep.9
++ @265 + Sleep.9
++ @266 + Snuggle.6
++ @267 + Snuggle.6



CHAIN X3EmiJ RestLate 
@268
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ RestLove
IF ~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~ EXTERN X3EmiJ RestLove3
IF ~!Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3EmiJ RestExit

CHAIN X3EmiJ RestExit 
@269
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 
// Outdoor 
CHAIN X3EmiJ Outdoor1
@270
= @271
END
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @272 + Activity
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @16 + KissActivity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @273 + Snuggle.4 
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @274 + Sleep.8 // Because hers is so late, make it linear.
++ @275 + RestExit 

CHAIN X3EmiJ KissActivity 
@276
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @272 + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @275 + RestExit 

CHAIN X3EmiJ Activity 
@277
= @278
= @279
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,DEX)~+ @280 + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ @280 + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ @280 + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ @280 + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @281 + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ @281 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ @282 + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ @282 + HitFar 
++ @283 + RestExit 

CHAIN X3EmiJ MissNear 
@284
END 
+~CheckStatLT(Player1,13,DEX)~+ @280 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ @280 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ @280 + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ @280 + HitNear 
++ @285 + RestExit 

CHAIN X3EmiJ HitNear 
@286
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @281 + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ @281 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ @282 + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ @282 + HitFar 
++ @287 + RestExit 

CHAIN X3EmiJ MissMiddle 
@288
END 
+~CheckStatLT(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @289 + HitMiddle 
+~CheckStatGT(Player1,15,DEX)~+ @289 + HitMiddle
++ @285 + RestExit 

CHAIN X3EmiJ HitMiddle 
@290
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ @282 + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ @282 + HitFar 
++ @287 + RestExit 

CHAIN X3EmiJ MissFar
@291
END 
+~CheckStatLT(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @292 + HitFar
+~CheckStatGT(Player1,15,DEX)~+ @292 + HitFar
++ @285 + RestExit 

CHAIN X3EmiJ MissTwice
@293
END 
++ @294 + Activity.1 
++ @295 + Activity.2
++ @296 + RestExit

CHAIN X3EmiJ HitFar 
@297
DO ~SetGlobal("X3Activity","LOCALS",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
END 
IF ~OR(2)!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~ + Activity.3
IF ~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~ + Activity.4

CHAIN X3EmiJ Activity.3 
@298
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Activity.1 
@299
EXTERN X3EmiJ RestLate  

CHAIN X3EmiJ Activity.2 
@300
EXTERN X3EmiJ RestLate 

CHAIN X3EmiJ Activity.4 
@301
END 
++ @302 + Sleep.9
++ @43 + Sleep.9
++ @303 + Activity.6



CHAIN X3EmiJ Activity.6
@304
END 
++ @255 + Snuggle.5
++ @256 + Snuggle.3

CHAIN X3EmiJ Outdoor2
@305
= @306
END
++ @13 + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @15 + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @15 + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @15 + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @16 + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @16 + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @16 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @273 + Snuggle.4 
+~Global("X3EmiRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @274 + Sleep.8 // Because hers is so late, make it linear.
++ @275 + RestExit 
// ToB Emily
CHAIN X3Emi25J Inn
@11
== X3Emi25J IF ~AreaCheck("AR5003")~ THEN @307
== X3Emi25J IF ~!AreaCheck("AR5003")~ THEN @308
END 
++ @13 + Talks 
+~GlobalGT("X3ECraft","GLOBAL",0)GlobalLT("X3ECraft","GLOBAL",14)~+ @14 + FletchGood
+~!GlobalLT("X3ECraft","GLOBAL",14)~+ @14 + FletchLow
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @15 + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @15 + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @15 + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @16 + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @16 + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @16 + Kiss3
+~Global("X3EmiRomanceActive","GLOBAL",2)~+@309+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @18 + Sleep.8 // Because hers is so late, make it linear.
++ @19 + RestExit 

CHAIN X3Emi25J Hug1
@20
END 
IF ~RandomNum(4,1)~ EXTERN X3Emi25J StayTalk
IF ~RandomNum(4,2)~ EXTERN X3Emi25J Kiss4
IF ~RandomNum(4,3)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(4,4)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Hug2
@21
END 
IF ~RandomNum(4,1)~ EXTERN X3Emi25J StayTalk
IF ~RandomNum(4,2)~ EXTERN X3Emi25J Kiss4
IF ~RandomNum(4,3)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(4,4)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Hug3 
@22
END  
IF ~RandomNum(4,1)~ EXTERN X3Emi25J StayTalk
IF ~RandomNum(4,2)~ EXTERN X3Emi25J Kiss4
IF ~RandomNum(4,3)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(4,4)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss1 
@23
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss2 
@24
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss3 
@25
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Kiss4 
@26
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J Snuggle
IF ~RandomNum(2,2)~ EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Snuggle 
@310
END 
++ @28 + Snuggle.1 
++ @29 + Sleep.10
++ @30 + Snuggle.3 // Ouch. Probably a minor loss here, but no break.

CHAIN X3Emi25J Snuggle.1 
@31
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Emi25J Snuggle.3 
@32
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 




CHAIN X3Emi25J Snuggle.2 
@34
END 
++ @28 + Snuggle.1
++ @35 + Snuggle.3 // No loss in this version.

CHAIN X3Emi25J Sleep.10
@311
EXTERN X3Emi25J Sleep.9

CHAIN X3Emi25J Sleep 
@36
END 
++ @37 + Sleep.1
++ @38 + Sleep.2 
++ @39 + Sleep.3

CHAIN X3Emi25J Sleep.1
@40
EXTERN X3Emi25J Sleep.4 

CHAIN X3Emi25J Sleep.2 
@41
EXTERN X3Emi25J Sleep.4 

CHAIN X3Emi25J Sleep.4 
@42
END
++ @43 + Sleep.5 
++ @44 + Sleep.6

CHAIN X3Emi25J Sleep.5
@312
= @313
EXTERN X3Emi25J Sleep.7

CHAIN X3Emi25J Sleep.6
@47
= @48
EXTERN X3Emi25J Sleep.7

CHAIN X3Emi25J Sleep.7
@49
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Emi25J Sleep.8
@50
= @51
EXTERN X3Emi25J Sleep

CHAIN X3Emi25J Sleep.3 
@52
END 
++ @53 + Snuggle.1
++ @30 + Snuggle.3 // Ouch. Probably a minor loss here, but no break.


CHAIN X3Emi25J FletchGood 
@54
END 
++ @55 + Fletch.Exit 
++ @56 + Fletch.2 

CHAIN X3Emi25J FletchLow 
@57
END 
++ @58 + Fletch.Exit 
++ @56 + Fletch.3

CHAIN X3Emi25J Fletch.2 
@59
END 
+~PartyGoldGT(1499)~+ @60 DO ~TakePartyGold(1500)SetGlobal("X3ECraft","GLOBAL",0)~ + Fletch.4
++ @61 + Fletch.Exit 
++ @62 + Fletch.Exit 

CHAIN X3Emi25J Fletch.3 
@59
END 
+~PartyGoldGT(1499)~+ @60 DO ~TakePartyGold(1500)IncrementGlobal("X3ECraft","GLOBAL",-15)~ + Fletch.4
++ @61 + Fletch.Exit 
++ @62 + Fletch.Exit 

CHAIN X3Emi25J Fletch.4 
@63
EXTERN X3Emi25J RestExit 

CHAIN X3Emi25J Fletch.Exit 
@64
END 
++ @13 + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @18 + Sleep.8 // Because hers is so late, make it linear.
++ @19 + RestExit 

CHAIN X3Emi25J BathYes 
@314
EXTERN X3Emi25J BathJoin 

CHAIN X3Emi25J BathJoin
@80
= @81
END 
++ @82 + BathJoin.1 
++ @83 + BathJoin.2 
++ @84 + BathJoin.3

CHAIN X3Emi25J BathJoin.1 
@85
EXTERN X3Emi25J BathJoin.2 

CHAIN X3Emi25J BathJoin.2
@86
= @87
END 
++ @88 + BathJoin.5
++ @89 + BathJoin.4 
++ @90 + BathJoin.6

CHAIN X3Emi25J BathJoin.5
@91
EXTERN X3Emi25J BathJoin.4

CHAIN X3Emi25J BathJoin.4 
@92
= @93
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
END 

CHAIN X3Emi25J BathJoin.6 
@94
EXTERN X3Emi25J BathJoin.4

CHAIN X3Emi25J BathJoin.3 
@95
EXTERN X3Emi25J BathJoin.2

CHAIN X3Emi25J compliment
@137
DO ~IncrementGlobal("X3EmiApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@100113)~
= @138
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @143 + RestExit

CHAIN X3Emi25J StayTalk
@144
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @145 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @146 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @146 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @146 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @147 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @147 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @148 + RestExit 


CHAIN X3Emi25J Talks
@149
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3EmiRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3Emi25J HealthHigh1 
@150
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J HealthHighLove1 
@151
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthHigh2
@152
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J HealthHighLove2
@153
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthLow1 
@154
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J HealthLowLove1 
@155
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthLowLove2 
@156
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurtLove2

CHAIN X3Emi25J HealthLow2 
@157
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Emi25J PlayerHurt2

CHAIN X3Emi25J PlayerHealthy1 
@158
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @159 + RestExit 

CHAIN X3Emi25J PlayerHealthy2 
@160
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @159 + RestExit 

CHAIN X3Emi25J PlayerHealthyLove1 
@161
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @162 + RestLove2


CHAIN X3Emi25J PlayerHealthyLove2 
@163
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @162 + RestLove2


CHAIN X3Emi25J PlayerHurt1 
@164
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @159 + RestExit 

CHAIN X3Emi25J PlayerHurt2 
@165
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @159 + RestExit 

CHAIN X3Emi25J PlayerHurtLove1 
@166
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @162 + RestLove2

CHAIN X3Emi25J PlayerHurtLove2 
@167
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 //Chapter 9
++ @162 + RestLove2

CHAIN X3Emi25J Story1 
@168
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
= @169
= @170
= @171
END 
++ @172 + Story1.1 
++ @173 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~  + Story1.2 
++ @174 + Story1.3

CHAIN X3Emi25J Story1.1 
@175
END 
++ @176 + Story1.4
++ @177 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ @178 + Story1.5

CHAIN X3Emi25J Story1.2 
@179
= @180
END 
++ @176 + Story1.4
++ @177 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ @178 + Story1.5

CHAIN X3Emi25J Story1.3 
@181
= @182
END 
++ @176 + Story1.4
++ @177 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + Story1.4
++ @178 + Story1.5

CHAIN X3Emi25J Story1.4
@183
EXTERN X3Emi25J RestLate 
 
CHAIN X3Emi25J Story1.5
@184
= @185
EXTERN X3Emi25J Story1.4

CHAIN X3Emi25J Story2
@186
= @187
= @188
= @189
END 
++ @190 + Story2.4
++ @191 + Story2.5
++ @192 + Story2.3

CHAIN X3Emi25J Story2.1 
@193
EXTERN X3Emi25J Story2.4

CHAIN X3Emi25J Story2.2 
@194
EXTERN X3Emi25J Story2.4

CHAIN X3Emi25J Story2.3
@195
EXTERN X3Emi25J Story2.4

CHAIN X3Emi25J Story2.4
@196
= @197
END 
++ @198 + Story2.5
++ @199 + Story2.6
++ @200 + Story2.7

CHAIN X3Emi25J Story2.5
@201
EXTERN X3Emi25J RestLate

CHAIN X3Emi25J Story2.6
@202
EXTERN X3Emi25J RestLate

CHAIN X3Emi25J Story2.7
@203
= @204
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J Story3 
@205
= @206
= @207
END 
++ @208 + Story3.1 
++ @209 + Story3.1
++ @210 + Story3.2

CHAIN X3Emi25J Story3.1
@211
END  
++ @212 + Story3.3
++ @16 + Sleep.11
++ @213 + Sleep.8

CHAIN X3Emi25J Story3.2
@214
END 
++ @16 + Sleep.11
++ @213 + Sleep.8
++ @215 + Story3.4

CHAIN X3Emi25J Story3.3
@216
= @217
END 
++ @218 + Sleep.11
++ @219 + Sleep.8
++ @220 + Story3.4

CHAIN X3Emi25J Story3.4
@221
EXTERN X3Emi25J RestExit

CHAIN X3Emi25J Sleep.11 
@258
EXTERN X3Emi25J Sleep

CHAIN X3Emi25J advice8 
@315
END 
++ @316 + advice8.1 
++ @317 + advice8.2
++ @318 + advice8.3

CHAIN X3Emi25J advice8.1 
@319
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice8.2
@320
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice8.3
@321
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice9
@322
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~
= @323
END 
++ @324 + advice9.1 
++ @325 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + advice9.2
++ @326 DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + advice9.3

CHAIN X3Emi25J advice9.1
@327
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice9.2 
@328
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J advice9.3
@329
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J RestLove 
@330
END 
++ @255 + Sleep.9 
++ @256 + Snuggle.3

CHAIN X3Emi25J RestLove3 
@257
END 
++ @255 + Snuggle.5
++ @29 + Sleep.10
++ @256 + Snuggle.3

CHAIN X3Emi25J Sleep.9 
@259
EXTERN X3Emi25J Sleep 

CHAIN X3Emi25J Snuggle.5
@260
EXTERN X3Emi25J Snuggle.1 

CHAIN X3Emi25J Snuggle.6
@261
EXTERN X3Emi25J Snuggle.1

CHAIN X3Emi25J RestLove2
@331
END 
++ @264 + Sleep.9
++ @265 + Sleep.9
++ @266 + Snuggle.6
++ @267 + Snuggle.6



CHAIN X3Emi25J RestLate 
@268
END 
IF ~RandomNum(2,1)~ EXTERN X3Emi25J RestLove
IF ~RandomNum(2,2)~ EXTERN X3Emi25J RestLove3
IF ~~ EXTERN X3Emi25J RestExit

CHAIN X3Emi25J RestExit 
@269
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 
// Outdoor 
CHAIN X3Emi25J Outdoor1
@270
= @271
END
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @272 + Activity
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @16 + KissActivity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @274 + Sleep.8 // Because hers is so late, make it linear.
++ @275 + RestExit 

CHAIN X3Emi25J KissActivity 
@276
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @272 + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @275 + RestExit 

CHAIN X3Emi25J Activity 
@277
= @278
= @279
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,DEX)~+ @280 + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ @280 + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ @280 + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ @280 + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @281 + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ @281 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ @282 + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ @282 + HitFar 
++ @283 + RestExit 

CHAIN X3Emi25J MissNear 
@284
END 
+~CheckStatLT(Player1,13,DEX)~+ @280 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,DEX)~+ @280 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,DEX)~+ @280 + HitNear 
+~CheckStatGT(Player1,13,DEX)~+ @280 + HitNear 
++ @285 + RestExit 

CHAIN X3Emi25J HitNear 
@286
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @281 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @281 + HitMiddle
+~CheckStatGT(Player1,15,DEX)~+ @281 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ @282 + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ @282 + HitFar 
++ @287 + RestExit 



CHAIN X3Emi25J MissMiddle 
@288
END 
+~CheckStatLT(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @289 + HitMiddle 
+~CheckStatGT(Player1,15,DEX)~+ @289 + HitMiddle
++ @285 + RestExit 

CHAIN X3Emi25J HitMiddle 
@290
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,DEX)~+ @282 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,DEX)~+ @282 + HitFar 
+~CheckStatGT(Player1,17,DEX)~+ @282 + HitFar 
++ @287 + RestExit 

CHAIN X3Emi25J MissFar
@291
END 
+~CheckStatLT(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,DEX)~+ @289 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,DEX)~+ @292 + HitFar
+~CheckStatGT(Player1,15,DEX)~+ @292 + HitFar
++ @285 + RestExit 

CHAIN X3Emi25J MissTwice
@293
END 
++ @294 + Activity.1 
++ @295 + Activity.2
++ @296 + RestExit

CHAIN X3Emi25J HitFar 
@297
DO ~SetGlobal("X3Activity","LOCALS",1)SetGlobal("X3EmiAppChange","GLOBAL",9)~
END 
IF ~!Global("X3EmiRomanceActive","GLOBAL",2)~ + Activity.3
IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ + Activity.4

CHAIN X3Emi25J Activity.3 
@298
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J Activity.1 
@299
EXTERN X3Emi25J RestLate  

CHAIN X3Emi25J Activity.2 
@300
EXTERN X3Emi25J RestLate 

CHAIN X3Emi25J Activity.4 
@301
END 
++ @302 + Sleep.9
++ @43 + Sleep.9
++ @303 + Activity.6



CHAIN X3Emi25J Activity.6
@304
END 
++ @255 + Snuggle.5
++ @256 + Snuggle.3

CHAIN X3Emi25J Outdoor2
@305
= @306
END
++ @13 + Talks 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @15 + Hug1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @15 + Hug2 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @15 + Hug3
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @16 + Kiss1 
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @16 + Kiss2  
+~Global("X3EmiRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @16 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3EmiRomanceActive","GLOBAL",2)Global("X3EmiRomanceActive","GLOBAL",1)~+  @17 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @274 + Sleep.8 // Because hers is so late, make it linear.
++ @275 + RestExit 

/*Helga*/

CHAIN X3Rest HelgaNoSet 
@332
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
@333
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
AreaCheck("AR1602")~+ @334 EXTERN X3HelJ Inn1
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
AreaCheck("AR1602")~+ @334 EXTERN X3HelJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @334 EXTERN X3HelJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @334 EXTERN X3HelJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @334 EXTERN X3Hel25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @334 EXTERN X3Hel25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @334 EXTERN X3Hel25J Outdoor2 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

// SoA Helga

CHAIN X3HelJ Inn1 
@335
= @336
END 
+~Global("X3Story","LOCALS",0)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @337 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @339 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @339 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @339 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @339 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @19 + RestExit 

CHAIN X3HelJ Inn2 
@340
= @341
END 
+~Global("X3Drink","LOCALS",0)~+ @98 DO ~SetGlobal("X3Drink","LOCALS",1)~ + Drink1
+~Global("X3Drink","LOCALS",1)~+ @98 DO ~SetGlobal("X3Drink","LOCALS",2)~  + Drink2 
+~Global("X3Story","LOCALS",0)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @337 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @339 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @339 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @339 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @339 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @342 + RestExit 

CHAIN X3HelJ Outdoor1 
@343
= @344
END 
+~Global("X3Activity","LOCALS",0)~+ @345 + Activity
+~Global("X3Story","LOCALS",0)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @337 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @339 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @339 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @339 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @339 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @19 + RestExit 

CHAIN X3HelJ Outdoor2 
@346
= @347
END 
+~Global("X3Story","LOCALS",0)~+ @337 + Story1 
+~Global("X3Story","LOCALS",1)~+ @337 + Story2 
+~Global("X3Story","LOCALS",2)~+ @337 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthLow2
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @339 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 // Chapter2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @339 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter3
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @339 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @339 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @19 + RestExit 

CHAIN X3HelJ Story1 
@348
END 
++ @349 + Story1.1 
++ @350 + Story1.2
++ @351 + RestExit 

CHAIN X3HelJ Story1.1 
@352
EXTERN X3HelJ Story1.2 

CHAIN X3HelJ Story1.2
@353
DO ~SetGlobal("X3Story","LOCALS",1)~
= @354
END 
++ @355 + Story1.3 
++ @356 + Story1.4 
++ @357 + Story1.3

CHAIN X3HelJ Story1.3
@358
EXTERN X3HelJ Story1.4

CHAIN X3HelJ Story1.4
@359
= @360
= @361
= @362
END 
++ @363 + Story1.7
++ @364 + Story1.7 
++ @365 DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~ + Story1.8

CHAIN X3HelJ Story1.8
@366
EXTERN X3HelJ Story1.7

CHAIN X3HelJ Story1.7
@367
= @368
= @369
= @370
END 
++ @371 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + Story1.5 
++ @372 + Story1.5
++ @373 DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~ + Story1.6

CHAIN X3HelJ Story1.5
@374
EXTERN X3HelJ RestLate

CHAIN X3HelJ Story1.6
@375
EXTERN X3HelJ RestLate

CHAIN X3HelJ RestLate 
@376
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3HelJ RestExit 
@377
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3HelJ Story2
@378
END 
++ @379 + Story2.1 
++ @380 + Story2.2
++ @381 + RestExit 

CHAIN X3HelJ Story2.2 
@382

EXTERN X3HelJ Story2.1 

CHAIN X3HelJ Story2.1
@383
DO ~SetGlobal("X3Story","LOCALS",1)~
= @384
= @385
= @386
END 
++ @387 + Story2.3
++ @388 + Story2.5
++ @389 + Story2.4

CHAIN X3HelJ Story2.3
@390
EXTERN X3HelJ Story2.5

CHAIN X3HelJ Story2.4
@391
EXTERN X3HelJ Story2.5

CHAIN X3HelJ Story2.5
@392
= @393
= @394
END 
++ @395 + Story2.6 
++ @396 + Story2.7
++ @397 + Story2.8

CHAIN X3HelJ Story2.6
@398
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Story2.7
@399
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Story2.8
@400
EXTERN X3HelJ RestLate 


CHAIN X3HelJ Story3 
@401
= @402
= @403
= @404
END 
++ @405 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + Story3.1 
++ @406 + Story3.2 
++ @407 + Story3.3

CHAIN X3HelJ Story3.1 
@408
EXTERN X3HelJ Story3.4

CHAIN X3HelJ Story3.2 
@409
EXTERN X3HelJ Story3.4

CHAIN X3HelJ Story3.3 
@410
EXTERN X3HelJ Story3.4

CHAIN X3HelJ Story3.4
@411
= @412
= @413
END 
++ @414 + Story3.5
++ @415 + Story3.6
++ @416 + Story3.5

CHAIN X3HelJ Story3.5
@417
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Story3.6
@418
EXTERN X3HelJ RestLate 

CHAIN X3HelJ HealthHigh1 
@419
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ HealthHigh2 
@420
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ HealthLow1 
@421
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ HealthLow2 
@422
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3HelJ PlayerHurt2

CHAIN X3HelJ PlayerHealthy1 
@423
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3HelJ PlayerHealthy2 
@424
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3HelJ PlayerHurt1 
@425
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3HelJ PlayerHurt2 
@426
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3HelJ advice2 
@427
END 
++ @428 + advice2.1 
++ @429 + advice2.2
++ @430 + advice2.3

CHAIN X3HelJ advice2.1 
@431
EXTERN X3HelJ advice2.2

CHAIN X3HelJ advice2.2
@432
= @433
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice2.3
@434
EXTERN X3HelJ advice2.2

CHAIN X3HelJ advice3 
@435
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3HelJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3HelJ advice3b

CHAIN X3HelJ advice3a 
@436
END 
++ @437 + advice3a.1 
++ @438 + advice3a.1 
++ @235 + advice3a.2

CHAIN X3HelJ advice3a.1 
@439
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice3a.2
@440
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice3b
@441
END 
++ @442 + advice3b.1
++ @443 + advice3b.2
++ @444 + advice3b.3

CHAIN X3HelJ advice3b.1 
@445
EXTERN X3HelJ advice3b.4

CHAIN X3HelJ advice3b.2 
@446
EXTERN X3HelJ advice3b.4

CHAIN X3HelJ advice3b.3
@447
EXTERN X3HelJ advice3b.4

CHAIN X3HelJ advice3b.4 
@448
EXTERN X3HelJ RestLate 


CHAIN X3HelJ advice4 
@449
END 
++ @450 + advice4.1 
++ @451 + advice4.2
++ @105 + advice4.3

CHAIN X3HelJ advice4.1
@452
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice4.2 
@453
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice4.3
@454
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice6
@455
= @456
END 
++ @457 + advice6.1
++ @249 + advice6.2
++ @458 + advice6.3

CHAIN X3HelJ advice6.1
@459
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice6.2
@460
EXTERN X3HelJ RestLate 

CHAIN X3HelJ advice6.3
@461
EXTERN X3HelJ RestLate 


CHAIN X3HelJ Drink1 
@462
END 
++ @463 + Drink1.1 
++ @103 + Drink1.2

CHAIN X3HelJ Drink1.1
@464
END 
++ @465 + Drink1.4 
++ @466 + Drink1.5
++ @467 + Drink1.6

CHAIN X3HelJ Drink1.4 
@468
EXTERN X3HelJ Drink1.6

CHAIN X3HelJ Drink1.5
@469
EXTERN X3HelJ Drink1.3 

CHAIN X3HelJ Drink1.6
@470
EXTERN X3HelJ Drink1.3

CHAIN X3HelJ Drink1.2 
@471
EXTERN X3HelJ Drink1.3 

CHAIN X3HelJ Drink1.3
@472
= @473
END 
++ @474 + Drink1.7
++ @475 + Drink1.8
++ @476 + Drink1.9

CHAIN X3HelJ Drink1.7
@477
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink1.8
@478
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink1.9
@479
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink2
@480
= @481
END 
++ @482 + Drink2.1 
++ @483 + Drink2.2
++ @484 + Drink2.3

CHAIN X3HelJ Drink2.1 
@485
EXTERN X3HelJ Drink2.4

CHAIN X3HelJ Drink2.2 
@486
EXTERN X3HelJ Drink2.4

CHAIN X3HelJ Drink2.3 
@487
EXTERN X3HelJ Drink2.4

CHAIN X3HelJ Drink2.4
@488
END 
++ @489 + Drink2.5 
++ @490 + Drink2.6 
++ @491 + Drink2.7

CHAIN X3HelJ Drink2.5
@492
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink2.6
@493
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Drink2.7
@494
EXTERN X3HelJ RestLate 


CHAIN X3HelJ Activity 
@495
= @496
= @497
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,WIS)~+ @498 + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ @498 + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ @498 + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ @498 + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @499 + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ @499 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ @500 + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ @500 + HitFar 
++ @501 + RestExit 


CHAIN X3HelJ MissNear 
@502
END 
+~CheckStatLT(Player1,13,WIS)~+ @503 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ @503 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ @503 + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ @503 + HitNear 
++ @504 + RestExit 

CHAIN X3HelJ HitNear 
@505
= @506
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @499 + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ @499 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ @500 + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ @500 + HitFar 
++ @507 + RestExit 

CHAIN X3HelJ MissMiddle 
@508
= @509
END 
+~CheckStatLT(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @503 + HitMiddle 
+~CheckStatGT(Player1,15,WIS)~+ @503 + HitMiddle
++ @504 + RestExit 

CHAIN X3HelJ HitMiddle 
@510
= @511
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ @500 + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ @500 + HitFar 
++ @507 + RestExit 

CHAIN X3HelJ MissFar
@512
END 
+~CheckStatLT(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @503 + HitFar
+~CheckStatGT(Player1,15,WIS)~+ @503 + HitFar
++ @504 + RestExit 

CHAIN X3HelJ MissTwice
@513
END 
++ @514 + Activity.1 
++ @515 + Activity.2
++ @516 + RestExit

CHAIN X3HelJ HitFar 
@517
DO ~SetGlobal("X3Activity","LOCALS",1)IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@200219)~
EXTERN X3HelJ Activity.3

CHAIN X3HelJ Activity.3 
@518
EXTERN X3HelJ RestLate 

CHAIN X3HelJ Activity.1 
@519
EXTERN X3HelJ RestLate  

CHAIN X3HelJ Activity.2 
@520
EXTERN X3HelJ RestLate 

// ToB Helga 

CHAIN X3Hel25J Inn 
@335
= @521
END 
+~Global("X3Story","LOCALS",0)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @337 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthLow2
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ @19 + RestExit 

CHAIN X3Hel25J Outdoor1 
@522
= @523
END 
+~Global("X3Activity","LOCALS",0)~+ @345 + Activity
+~Global("X3Story","LOCALS",0)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @337 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthLow2
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ @19 + RestExit 

CHAIN X3Hel25J Outdoor2 
@346
= @524
END 
+~Global("X3Story","LOCALS",0)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @337 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @337 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story3 
+~HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthHigh1
+~HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthHigh2
+~!HPPercentGT(Myself,54)!RandomNum(2,1)~+ @338 + HealthLow1 
+~!HPPercentGT(Myself,54)!RandomNum(2,2)~+ @338 + HealthLow2
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ @19 + RestExit 

CHAIN X3Hel25J Story1 
@348
END 
++ @349 + Story1.1 
++ @350 + Story1.2
++ @351 + RestExit 

CHAIN X3Hel25J Story1.1 
@352
EXTERN X3Hel25J Story1.2 

CHAIN X3Hel25J Story1.2
@353
= @354
END 
++ @355 + Story1.3 
++ @356 + Story1.4 
++ @357 + Story1.3

CHAIN X3Hel25J Story1.3
@358
EXTERN X3Hel25J Story1.3 

CHAIN X3Hel25J Story1.4
@359
= @360
= @361
= @362
END 
++ @363 + Story1.7
++ @364 + Story1.7 
++ @365 DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~ + Story1.8

CHAIN X3Hel25J Story1.8
@366
EXTERN X3Hel25J Story1.7

CHAIN X3Hel25J Story1.7 
@367
= @368
= @369
= @370
END 
++ @371 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + Story1.5
++ @372 + Story1.5
++ @373 DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@200203)~ + Story1.6

CHAIN X3Hel25J Story1.5
@374
EXTERN X3Hel25J RestLate

CHAIN X3Hel25J Story1.6
@375
EXTERN X3Hel25J RestLate

CHAIN X3Hel25J RestLate 
@376
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Hel25J RestExit 
@377
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Hel25J Story2
@378
END 
++ @379 + Story2.1 
++ @380 + Story2.2
++ @381 + RestExit 

CHAIN X3Hel25J Story2.2 
@382
EXTERN X3Hel25J Story2.1 

CHAIN X3Hel25J Story2.1
@383
DO ~SetGlobal("X3Story","LOCALS",1)~
= @384
= @385
= @386
END 
++ @387 + Story2.3
++ @388 + Story2.5
++ @389 + Story2.4


CHAIN X3Hel25J Story2.3
@390
EXTERN X3Hel25J Story2.5

CHAIN X3Hel25J Story2.4
@391
EXTERN X3Hel25J Story2.5

CHAIN X3Hel25J Story2.5
@392
= @393
= @394
END 
++ @395 + Story2.6
++ @396 + Story2.7
++ @397 + Story2.8

CHAIN X3Hel25J Story2.6
@398
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Story2.7
@399
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Story2.8
@400
EXTERN X3Hel25J RestLate 


CHAIN X3Hel25J Story3 
@401
= @402
= @403
= @404
END 
++ @405 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + Story3.1 
++ @406 + Story3.2 
++ @407 + Story3.3

CHAIN X3Hel25J Story3.1 
@408
EXTERN X3Hel25J Story3.4

CHAIN X3Hel25J Story3.2 
@409
EXTERN X3Hel25J Story3.4

CHAIN X3Hel25J Story3.3 
@410
EXTERN X3Hel25J Story3.4

CHAIN X3Hel25J Story3.4
@411
= @412
= @413
END 
++ @414 + Story3.5
++ @415 + Story3.6
++ @416 + Story3.5

CHAIN X3Hel25J Story3.5
@417
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Story3.6
@418
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J HealthHigh1 
@419
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J HealthHigh2 
@420
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J HealthLow1 
@421
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J HealthLow2 
@422
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Hel25J PlayerHurt2

CHAIN X3Hel25J PlayerHealthy1 
@423
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 ++ @159 + RestExit 

CHAIN X3Hel25J PlayerHealthy2 
@424
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 ++ @159 + RestExit 

CHAIN X3Hel25J PlayerHurt1 
@425
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 ++ @159 + RestExit 

CHAIN X3Hel25J PlayerHurt2 
@426
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 9 
++ @159 + RestExit 


CHAIN X3Hel25J advice8 
@525
END 
++ @526 + advice8.1 
++ @527 + advice8.2
++ @528 DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@200213)~ + advice8.3

CHAIN X3Hel25J advice8.1 
@529
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice8.2
@530
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice8.3
@531
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice9
@532
= @533
END 
++ @324 + advice9.1 
++ @534 + advice9.2
++ @535 + advice9.3

CHAIN X3Hel25J advice9.1
@536
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice9.2 
@537
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J advice9.3
@538
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Activity 
@495
= @496
= @497
END 
 // Misses if you have less than 13, 50% at 13, hits at 14 or above.
+~CheckStatLT(Player1,13,WIS)~+ @498 + MissNear 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ @498 + MissNear 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ @498 + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ @498 + HitNear 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @499 + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ @499 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ @500 + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ @500 + HitFar 
++ @501 + RestExit 


CHAIN X3Hel25J MissNear 
@502
END 
+~CheckStatLT(Player1,13,WIS)~+ @503 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,13,WIS)~+ @503 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,13,WIS)~+ @503 + HitNear 
+~CheckStatGT(Player1,13,WIS)~+ @503 + HitNear 
++ @504 + RestExit 

CHAIN X3Hel25J HitNear 
@505
= @506
END 
// Misses if you have less than 15, 50% at 15, hits at 16 or above.
+~CheckStatLT(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @499 + MissMiddle 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @499 + HitMiddle
+~CheckStatGT(Player1,15,WIS)~+ @499 + HitMiddle 
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
+~CheckStatLT(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ @500 + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ @500 + HitFar 
++ @507 + RestExit 

CHAIN X3Hel25J MissMiddle 
@508
= @509
END 
+~CheckStatLT(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @503 + HitMiddle 
+~CheckStatGT(Player1,15,WIS)~+ @503 + HitMiddle
++ @504 + RestExit 

CHAIN X3Hel25J HitMiddle 
@510
= @511
// Misses if you have less than 17, 50% at 17, hits at 18 or above.
END 
+~CheckStatLT(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,1)CheckStat(Player1,17,WIS)~+ @500 + MissFar 
+~RandomNum(2,2)CheckStat(Player1,17,WIS)~+ @500 + HitFar 
+~CheckStatGT(Player1,17,WIS)~+ @500 + HitFar 
++ @507 + RestExit 

CHAIN X3Hel25J MissFar
@512
END 
+~CheckStatLT(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,1)CheckStat(Player1,15,WIS)~+ @503 + MissTwice 
+~RandomNum(2,2)CheckStat(Player1,15,WIS)~+ @503 + HitFar
+~CheckStatGT(Player1,15,WIS)~+ @503 + HitFar
++ @504 + RestExit 

CHAIN X3Hel25J MissTwice
@513
END 
++ @514 + Activity.1 
++ @515 + Activity.2
++ @516 + RestExit

CHAIN X3Hel25J HitFar 
@517
DO ~SetGlobal("X3Activity","LOCALS",1)IncrementGlobal("X3HelApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@200219)~
EXTERN X3Hel25J Activity.3

CHAIN X3Hel25J Activity.3 
@518
EXTERN X3Hel25J RestLate 

CHAIN X3Hel25J Activity.1 
@519
EXTERN X3Hel25J RestLate  

CHAIN X3Hel25J Activity.2 
@520
EXTERN X3Hel25J RestLate 

/*Kale*/

CHAIN X3Rest KaleNoSet 
@539
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
@540
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
AreaCheck("AR1602")~+ @541 EXTERN X3KalJ Inn1
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
AreaCheck("AR1602")~+ @541 EXTERN X3KalJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @541 EXTERN X3KalJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @541 EXTERN X3KalJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @541 EXTERN X3Kal25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @541 EXTERN X3Kal25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @541 EXTERN X3Kal25J Outdoor2 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
//SoA 
CHAIN X3KalJ Inn1 
@542
= @543
END 
++ @13 + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @544 + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @544 + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @544 + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @545 + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @545 + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @545 + Kiss3
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+@309+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @18  + Sleep3 // Same as below, except sets slept to 1.
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @18 + Sleep3 // Because hers is so late, make it linear.
++ @19 + RestExit 

CHAIN X3KalJ Talks
@547
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3KalJ compliment 
@548
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@300313)~
= @549
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3KalJ StayTalk 
@550
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3KalJ HealthHigh1 
@551
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ HealthHighLove1 
@552
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthHigh2
@553
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ HealthHighLove2
@554
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthLow1 
@555
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ HealthLowLove1 
@556
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthLowLove2 
@557
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurtLove2

CHAIN X3KalJ HealthLow2 
@558
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3KalJ PlayerHurt2

CHAIN X3KalJ PlayerHealthy1 
@559
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3KalJ PlayerHealthy2 
@560
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3KalJ PlayerHealthyLove1 
@561
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3KalJ PlayerHealthyLove2 
@562
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3KalJ PlayerHurt1 
@563
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3KalJ PlayerHurt2 
@564
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3KalJ PlayerHurtLove1 
@565
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2

CHAIN X3KalJ PlayerHurtLove2 
@566
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2

CHAIN X3KalJ Story1 
@567
= @568
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @569 + Story1.1
++ @570 + Story1.2
++ @571 + Story1.2

CHAIN X3KalJ Story1.2
@572
EXTERN X3KalJ Story1.1 

CHAIN X3KalJ Story1.1 
@573
= @574
= @575
END 
++ @576 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story1.3 
++ @577 + Story1.4
++ @578 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story1.5

CHAIN X3KalJ Story1.3
@579
EXTERN X3KalJ Story1.6

CHAIN X3KalJ Story1.4 
@580
EXTERN X3KalJ Story1.6

CHAIN X3KalJ Story1.5
@581
EXTERN X3KalJ Story1.6

CHAIN X3KalJ Story1.6
@582
= @583
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story2 
@584
= @585
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @586 + Story2.1
++ @587 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.2
++ @588 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3

CHAIN X3KalJ Story2.1
@589
END 
++ @590 + Story2.2
++ @591 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3
++ @592 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + Story2.4

CHAIN X3KalJ Story2.3
@593
EXTERN X3KalJ Story2.2 

CHAIN X3KalJ Story2.4 
@594
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story2.2
@595
= @596
= @597
= @598
END 
++ @599 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.5
++ @600 + Story2.6 
++ @601 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + Story2.5

CHAIN X3KalJ Story2.5 
@602
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story2.6 
@603
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Story3 
@604
END 
++ @605 + Story3.1 
++ @606 + Story3.1 
++ @607 + Story3.2 

CHAIN X3KalJ Story3.1 
@608
EXTERN X3KalJ Story3.5

CHAIN X3KalJ Story3.2 
@609
END 
++ @610 + Story3.3 
++ @611 + Story3.4
++ @612 + Story3.3 

CHAIN X3KalJ Story3.4 
@613
EXTERN X3KalJ Story3.5

CHAIN X3KalJ Story3.3 
@614
EXTERN X3KalJ Story3.5

CHAIN X3KalJ Story3.5
@615
END 
++ @616 + Sleep4 
++ @617 + Sleep2
++ @618 + Story3.6

CHAIN X3KalJ Story3.6 
@619
EXTERN X3KalJ RestExit 

CHAIN X3KalJ advice2 
@620
END 
++ @621 + advice2.1 
++ @622 + advice2.2
++ @623 + advice2.3

CHAIN X3KalJ advice2.1 
@624
EXTERN X3KalJ advice2.4 

CHAIN X3KalJ advice2.4
@625
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice2.2
@626
EXTERN X3KalJ advice2.4

CHAIN X3KalJ advice2.3
@627
EXTERN X3KalJ advice2.4

CHAIN X3KalJ advice3 
@628
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3KalJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3KalJ advice3b

CHAIN X3KalJ advice3a 
@629
END 
++ @630 + advice3a.1 
++ @631 + advice3a.1 
++ @632 + advice3a.2

CHAIN X3KalJ advice3a.1 
@633
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice3a.2
@634
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice3b
@635
END 
++ @630 + advice3b.1
++ @636 + advice3b.1
++ @637 + advice3b.3

CHAIN X3KalJ advice3b.1 
@638
EXTERN X3KalJ advice3b.4

CHAIN X3KalJ advice3b.3
@639
EXTERN X3KalJ advice3b.4

CHAIN X3KalJ advice3b.4 
@640
EXTERN X3KalJ RestLate 


CHAIN X3KalJ advice4 
@641
END 
++ @642 + advice4.1 
++ @643 + advice4.2
++ @644 + advice4.3

CHAIN X3KalJ advice4.1
@645
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice4.2 
@646
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice4.3
@647
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice6
@648
= @649
END 
++ @650 + advice6.1
++ @651 + advice6.2
++ @652 + advice6.3

CHAIN X3KalJ advice6.1
@653
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice6.2
@654
EXTERN X3KalJ RestLate 

CHAIN X3KalJ advice6.3
@655
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Hug1
@656
END 
IF ~RandomNum(3,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3KalJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Hug2
@657
END 
IF ~RandomNum(3,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3KalJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Hug3
@658
END 
IF ~RandomNum(3,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3KalJ Kiss4
IF ~RandomNum(3,3)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(3,3)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss1 
@659
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss2 
@660
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss3 
@661
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ Kiss4 
@662
END 
IF ~RandomNum(2,1)~ EXTERN X3KalJ StayTalk
IF ~RandomNum(2,2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~RandomNum(2,2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep

CHAIN X3KalJ BathYes 
@663
EXTERN X3KalJ BathJoin 

CHAIN X3KalJ BathJoin
@664
= @665
END 
++ @666 + BathJoin.1 
++ @667 + BathJoin.2 
++ @668 + BathJoin.3

CHAIN X3KalJ BathJoin.1 
@669
EXTERN X3KalJ BathJoin.2 

CHAIN X3KalJ BathJoin.2
@670
= @671
END 
++ @672 + BathJoin.5
++ @673 + BathJoin.4 
++ @674 + BathJoin.6

CHAIN X3KalJ BathJoin.5
@675
EXTERN X3KalJ BathJoin.4

CHAIN X3KalJ BathJoin.4 
@676
= @677
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 


CHAIN X3KalJ BathJoin.6 
@678
EXTERN X3KalJ BathJoin.4

CHAIN X3KalJ BathJoin.3 
@679
EXTERN X3KalJ BathJoin.2

CHAIN X3KalJ RestLate 
@680
END 
IF ~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ RestLove
IF ~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~ EXTERN X3KalJ Sleep1B
IF ~!Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN X3KalJ RestExit

CHAIN X3KalJ Sleep1
@681
END 
++ @682 + Sleep3
++ @683 + Sleep3
++ @684 + Snuggle 

CHAIN X3KalJ Sleep1B
@685
END 
++ @686 + Sleep3 
++ @687 + Sleep3 
++ @688 + Snuggle 

CHAIN X3KalJ Sleep2 
@689
EXTERN X3KalJ Sleep4

CHAIN X3KalJ Sleep 
@690
END 
++ @691 + Sleep4
++ @692 + Snuggle

CHAIN X3KalJ Sleep4 
@693
= @694
END 
++ @695 + Sleep9
++ @696 + Sleep8
+~!Global("X3Slept","LOCALS",2)~+ @697 + Sleep5 

CHAIN X3KalJ Sleep5 
@698
END 
++ @699 + Sleep6
++ @700 + Sleep6
++ @701 + Sleep7

CHAIN X3KalJ Sleep6 
@702
END 
++ @703 + Snuggle2 
++ @704 + Snuggle3 //Minor Loss. 

CHAIN X3KalJ Sleep7
@705
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3KalJ Sleep8F 
IF ~Gender(Player1,MALE)~ EXTERN X3KalJ Sleep8M 

CHAIN X3KalJ Sleep9 
@706
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3KalJ Sleep9F 
IF ~Gender(Player1,MALE)~ EXTERN X3KalJ Sleep9M 

CHAIN X3KalJ Sleep9F 
@707
EXTERN X3KalJ Sleep10A

CHAIN X3KalJ Sleep9M 
@708
EXTERN X3KalJ Sleep10A

CHAIN X3KalJ Sleep10A 
@709
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3KalJ Sleep8 
@710
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3KalJ Sleep8F 
IF ~Gender(Player1,MALE)~ EXTERN X3KalJ Sleep8M 

CHAIN X3KalJ Sleep8F 
@711
EXTERN X3KalJ Sleep10B 

CHAIN X3KalJ Sleep8M 
@712
EXTERN X3KalJ Sleep10B

CHAIN X3KalJ Sleep10B 
@713 
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3KalJ RestLove 
@714
END 
++ @162 + Snuggle2 
++ @715 + Sleep4

CHAIN X3KalJ RestExit 
@716
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3KalJ RestLove2 
@717
END 
+~!Global("X3Slept","LOCALS",2)~+ @718 + Sleep2 
+~Global("X3Slept","LOCALS",2)~+ @719 + Sleep1 
++ @720 + Snuggle 

CHAIN X3KalJ Sleep3
@721
EXTERN X3KalJ Sleep4 

CHAIN X3KalJ Snuggle 
@722
END 
++ @703 + Snuggle2 
++ @704 + Snuggle3 //Minor Loss. 

CHAIN X3KalJ Snuggle2 
@723
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3KalJ Snuggle3 
@724
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 
// Inn 2 
CHAIN X3KalJ Inn2
@725
= @726
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @727 + Drink1
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @545 + KissWine
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @100 + RestExit 

CHAIN X3KalJ KissWine
@728
= @729
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @727 + Drink1
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @100 + RestExit 

CHAIN X3KalJ Drink1 
@730
END 
+~CheckStatLT(Player1,13,CON)~+ @731 + DrinkFail1
+~CheckStatLT(Player1,13,CON)~+ @732 + DrinkFail1 
+~RandomNum(2,1)CheckStat(Player1,13,CON)~+ @731 + DrinkFail1
+~RandomNum(2,1)CheckStat(Player1,13,CON)~+ @732 + DrinkFail1
+~RandomNum(2,2)CheckStat(Player1,13,CON)~+ @731 + DrinkPass1 
+~RandomNum(2,2)CheckStat(Player1,13,CON)~+ @732 + DrinkPass1
+~CheckStatGT(Player1,13,CON)~+ @731 + DrinkPass1 
+~CheckStatGT(Player1,13,CON)~+ @732 + DrinkPass1
++ @733 + DrinkExit 

CHAIN X3KalJ DrinkFail1
@734
END 
++ @735 + DrinkFail2 
++ @736 + DrinkFail3 
++ @737 + DrinkFail4 

CHAIN X3KalJ DrinkFail5 
@738
END 
++ @735 + DrinkFail2 
++ @736 + DrinkFail3 
++ @737 + DrinkFail4 

CHAIN X3KalJ DrinkFail2 
@739
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkFail3 
@740
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkFail4 
@741
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkPass1 
@742
= @743
END 
+~CheckStatLT(Player1,15,CON)~+ @731 + DrinkFail5
+~CheckStatLT(Player1,15,CON)~+ @744 + DrinkFail5 
+~RandomNum(2,1)CheckStat(Player1,15,CON)~+ @731 + DrinkFail5
+~RandomNum(2,1)CheckStat(Player1,15,CON)~+ @744 + DrinkFail5
+~RandomNum(2,2)CheckStat(Player1,15,CON)~+ @731 + DrinkPass2
+~RandomNum(2,2)CheckStat(Player1,15,CON)~+ @744 + DrinkPass2
+~CheckStatGT(Player1,15,CON)~+ @731 + DrinkPass2
+~CheckStatGT(Player1,15,CON)~+ @744 + DrinkPass2
++ @733 + DrinkExit 

CHAIN X3KalJ DrinkPass2
@745
= @746
END 
+~CheckStatLT(Player1,17,CON)~+ @731 + DrinkFail5
+~CheckStatLT(Player1,17,CON)~+ @747 + DrinkFail5 
+~RandomNum(2,1)CheckStat(Player1,17,CON)~+ @731 + DrinkFail5
+~RandomNum(2,1)CheckStat(Player1,17,CON)~+ @747 + DrinkFail5
+~RandomNum(2,2)CheckStat(Player1,17,CON)~+ @731 + DrinkPass3
+~RandomNum(2,2)CheckStat(Player1,17,CON)~+ @747 + DrinkPass3
+~CheckStatGT(Player1,17,CON)~+ @731 + DrinkPass3
+~CheckStatGT(Player1,17,CON)~+ @747 + DrinkPass3
++ @733 + DrinkExit 

CHAIN X3KalJ DrinkPass3 
@748
= @749
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@300313)~
END 
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @750 + Sleep2 
+~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @750 + Sleep1
++ @751 + Drink3
++ @752 + Drink4 

CHAIN X3KalJ Drink4 
@753
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Drink3 
@754 
EXTERN X3KalJ RestLate 

CHAIN X3KalJ DrinkExit 
@755
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @100 + RestExit +~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @100 + RestExit 

// Outdoor 
CHAIN X3KalJ Outdoor1
@756
= @757
END
++ @13 + Talks 
+~Global("X3Food","LOCALS",0)~+ @758 DO ~SetGlobal("X3Food","LOCALS",1)~ + Food1
+~Global("X3Food","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~+ @758 DO ~SetGlobal("X3Food","LOCALS",2)~ + Food2
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @545 + KissFood
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @759 + RestExit 

CHAIN X3KalJ KissFood
@760
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @759 + RestExit 

CHAIN X3KalJ Food1 
@761
= @762
END 
+~InParty("X3Hel")~+ @763 + Food3 
+~!InParty("X3Hel")~+ @763 + Food6 
+~InParty("X3Hel")~+ @764 + Food4 
+~!InParty("X3Hel")~+ @764 + Food5 
++ @765 + Food7

CHAIN X3KalJ Food3 
@766
EXTERN X3KalJ Food8

CHAIN X3KalJ Food6
@767
EXTERN X3KalJ Food8

CHAIN X3KalJ Food4 
@768
EXTERN X3KalJ Food8

CHAIN X3KalJ Food5 
@769
EXTERN X3KalJ Food8

CHAIN X3KalJ Food7 
@770
EXTERN X3KalJ Food8

CHAIN X3KalJ Food8 
@771
EXTERN X3KalJ RestLate 

CHAIN X3KalJ Food2 
@772
= @773
END 
++ @774 + Food9 
++ @775  + Food10 
++ @776 + Food11

CHAIN X3KalJ Food9 
@777
EXTERN X3KalJ Food8 

CHAIN X3KalJ Food10 
@778
EXTERN X3KalJ Food8

CHAIN X3KalJ Food11 
@779
EXTERN X3KalJ Food8 
// Outdoor2 
CHAIN X3KalJ Outdoor2
@780
= @781
END
++ @13 + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @544 + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @544 + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @544 + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @545 + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @545 + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @545 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)!Global("X3Slept","LOCALS",2)~+ @18  + Sleep1 // Same as below, except sets slept to 1.
+~Global("X3KalRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+ @18 + Sleep2 // Because hers is so late, make it linear.
++ @782 + RestExit 

//ToB Kale 
CHAIN X3Kal25J Inn
@783
== X3Kal25J IF ~AreaCheck("AR5003")~ THEN @784
== X3Kal25J IF ~!AreaCheck("AR5003")~ THEN @785
END 
++ @13 + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @544 + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @544 + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @544 + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @545 + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @545 + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @545 + Kiss3
+~Global("X3KalRomanceActive","GLOBAL",2)~+@309+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @786 + Sleep2 
++ @19 + RestExit 

CHAIN X3Kal25J Talks
@547
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3Kal25J compliment 
@548
= @549
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@300313)~
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3Kal25J StayTalk 
@550
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3KalRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3Kal25J HealthHigh1 
@551
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J HealthHighLove1 
@552
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthHigh2
@553
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J HealthHighLove2
@554
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthLow1 
@555
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J HealthLowLove1 
@556
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthLowLove2 
@557
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurtLove2

CHAIN X3Kal25J HealthLow2 
@558
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Kal25J PlayerHurt2

CHAIN X3Kal25J PlayerHealthy1 
@559
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @159 + RestExit 

CHAIN X3Kal25J PlayerHealthy2 
@560
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @159 + RestExit 

CHAIN X3Kal25J PlayerHealthyLove1 
@561
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @162 + RestLove2


CHAIN X3Kal25J PlayerHealthyLove2 
@562
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @162 + RestLove2


CHAIN X3Kal25J PlayerHurt1 
@563
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @159 + RestExit 

CHAIN X3Kal25J PlayerHurt2 
@564
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @159 + RestExit 

CHAIN X3Kal25J PlayerHurtLove1 
@565
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @162 + RestLove2

CHAIN X3Kal25J PlayerHurtLove2 
@566
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 //Chapter 2 
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 3 
++ @162 + RestLove2

CHAIN X3Kal25J Story1 
@567
= @568
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @569 + Story1.1
++ @570 + Story1.2
++ @571 + Story1.2

CHAIN X3Kal25J Story1.2
@572
EXTERN X3Kal25J Story1.1 

CHAIN X3Kal25J Story1.1 
@573
= @574
= @575
END 
++ @576 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story1.3 
++ @577 + Story1.4
++ @578 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story1.5

CHAIN X3Kal25J Story1.3
@579
EXTERN X3Kal25J Story1.6

CHAIN X3Kal25J Story1.4 
@580
EXTERN X3Kal25J Story1.6

CHAIN X3Kal25J Story1.5
@581
EXTERN X3Kal25J Story1.6

CHAIN X3Kal25J Story1.6
@582
= @583
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story2 
@584
= @585
DO ~SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ @586 + Story2.1
++ @587 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.2
++ @588 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3

CHAIN X3Kal25J Story2.1
@589
END 
++ @590 + Story2.2
++ @591 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + Story2.3
++ @592 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + Story2.4

CHAIN X3Kal25J Story2.3
@593
EXTERN X3Kal25J Story2.2 

CHAIN X3Kal25J Story2.4 
@594
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story2.2
@595
= @596
= @597
= @598
END 
++ @599 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + Story2.5
++ @600  + Story2.6 
++ @601 DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + Story2.5

CHAIN X3Kal25J Story2.5 
@602
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story2.6 
@603
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Story3 
@604
END 
++ @605 + Story3.1 
++ @606 + Story3.1 
++ @607 + Story3.2 

CHAIN X3Kal25J Story3.1 
@608
EXTERN X3Kal25J Story3.5

CHAIN X3Kal25J Story3.2 
@609
END 
++ @610 + Story3.3 
++ @611 + Story3.4
++ @612 + Story3.3 

CHAIN X3Kal25J Story3.4 
@613
EXTERN X3Kal25J Story3.5

CHAIN X3Kal25J Story3.3 
@614
EXTERN X3Kal25J Story3.5

CHAIN X3Kal25J Story3.5
@615
END 
++ @616 + Sleep4 
++ @617 + Sleep2
++ @618 + Story3.6

CHAIN X3Kal25J Story3.6 
@619
EXTERN X3Kal25J RestExit 

CHAIN X3Kal25J advice8
@787
END 
++ @605 + advice8.1 
++ @788 + advice8.2
++ @789 + advice8.3

CHAIN X3Kal25J advice8.1
@790
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice8.2 
@791
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice8.3
@792
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice9
@793
= @794
END 
++ @795 + advice9.1
++ @796 + advice9.2
++ @797 + advice9.3

CHAIN X3Kal25J advice9.1
@798
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice9.2
@799
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J advice9.3
@800
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Hug1
@656
END 
IF ~RandomNum(3,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Kal25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Hug2
@657
END 
IF ~RandomNum(3,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Kal25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Hug3
@658
END 
IF ~RandomNum(3,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Kal25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss1 
@659
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss2 
@660
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss3 
@661
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J Kiss4 
@801
END 
IF ~RandomNum(2,1)~ EXTERN X3Kal25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Kal25J Sleep

CHAIN X3Kal25J BathYes 
@663
EXTERN X3Kal25J BathJoin 

CHAIN X3Kal25J BathJoin
@664
= @665
END 
++ @666 + BathJoin.1 
++ @667 + BathJoin.2 
++ @668 + BathJoin.3

CHAIN X3Kal25J BathJoin.1 
@669
EXTERN X3Kal25J BathJoin.2 

CHAIN X3Kal25J BathJoin.2
@670
= @671
END 
++ @672 + BathJoin.5
++ @673 + BathJoin.4 
++ @674 + BathJoin.6

CHAIN X3Kal25J BathJoin.5
@675
EXTERN X3Kal25J BathJoin.4

CHAIN X3Kal25J BathJoin.4 
@676
= @677
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 


CHAIN X3Kal25J BathJoin.6 
@678
EXTERN X3Kal25J BathJoin.4

CHAIN X3Kal25J BathJoin.3 
@679
EXTERN X3Kal25J BathJoin.2

CHAIN X3Kal25J RestLate 
@680
END 
IF ~Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN X3Kal25J RestLove
IF ~~ EXTERN X3Kal25J RestExit

CHAIN X3Kal25J Sleep 
@690
END 
++ @691 + Sleep4
++ @692 + Snuggle

CHAIN X3Kal25J Sleep2 
@689
EXTERN X3Kal25J Sleep4

CHAIN X3Kal25J Sleep4 
@693
= @694
END 
++ @695 + Sleep9
++ @696 + Sleep8

CHAIN X3Kal25J Sleep9 
@706
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Kal25J Sleep9F 
IF ~Gender(Player1,MALE)~ EXTERN X3Kal25J Sleep9M 

CHAIN X3Kal25J Sleep9F 
@707
EXTERN X3Kal25J Sleep10A

CHAIN X3Kal25J Sleep9M 
@708
EXTERN X3Kal25J Sleep10A

CHAIN X3Kal25J Sleep10A 
@709
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Kal25J Sleep8 
@710
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Kal25J Sleep8F 
IF ~Gender(Player1,MALE)~ EXTERN X3Kal25J Sleep8M 

CHAIN X3Kal25J Sleep8F 
@711
EXTERN X3Kal25J Sleep10B 

CHAIN X3Kal25J Sleep8M 
@712
EXTERN X3Kal25J Sleep10B

CHAIN X3Kal25J Sleep10B 
@713 
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Kal25J RestLove 
@714
END 
++ @802 + Snuggle
++ @715 + Sleep4

CHAIN X3Kal25J RestExit 
@716
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Kal25J RestLove2 
@717
END 
++ @718 + Sleep2 
++ @720 + Snuggle 

CHAIN X3Kal25J Snuggle 
@803
EXTERN X3Kal25J Snuggle2 

CHAIN X3Kal25J Snuggle2 
@723
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

// ToB Outdoor1 
CHAIN X3Kal25J Outdoor1
@756
= @757
END
++ @13 + Talks 
+~Global("X3Food","LOCALS",0)~+ @758 DO ~SetGlobal("X3Food","LOCALS",1)~ + Food1
+~Global("X3Food","LOCALS",1)Global("X3KalRomanceActive","GLOBAL",2)~+ @758 DO ~SetGlobal("X3Food","LOCALS",2)~ + Food2
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @545 + KissFood
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @759 + RestExit 

CHAIN X3Kal25J KissFood
@760
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @759 + RestExit 

CHAIN X3Kal25J Food1 
@761
= @762
END 
+~InParty("X3Hel")~+ @763 + Food3 
+~!InParty("X3Hel")~+ @763 + Food6 
+~InParty("X3Hel")~+ @764 + Food4 
+~!InParty("X3Hel")~+ @764 + Food5 
++ @765 + Food7

CHAIN X3Kal25J Food3 
@766
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food6
@767
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food4 
@768
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food5 
@769
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food7 
@770
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food8 
@771
EXTERN X3Kal25J RestLate 

CHAIN X3Kal25J Food2 
@772
= @773
END 
++ @774 + Food9 
++ @775  + Food10 
++ @776 + Food11

CHAIN X3Kal25J Food9 
@777
EXTERN X3Kal25J Food8 

CHAIN X3Kal25J Food10 
@778
EXTERN X3Kal25J Food8

CHAIN X3Kal25J Food11 
@779
EXTERN X3Kal25J Food8 

// ToB Outdoor2 

CHAIN X3Kal25J Outdoor2
@780
= @804
END
++ @13 + Talks 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @544 + Hug1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @544 + Hug2 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @544 + Hug3
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @545 + Kiss1 
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @545 + Kiss2  
+~Global("X3KalRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @545 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3KalRomanceActive","GLOBAL",2)Global("X3KalRomanceActive","GLOBAL",1)~+  @546 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3KalRomanceActive","GLOBAL",2)~+ @786 + Sleep2 // Because hers is so late, make it linear.
++ @275 + RestExit 

/*Recorder*/

CHAIN X3Rest RecorderNoSet 
@805
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
@806
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
AreaCheck("AR1602")~+ @807 EXTERN X3RebJ Inn1
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
AreaCheck("AR1602")~+ @807 EXTERN X3RebJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @807 EXTERN X3RebJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @807 EXTERN X3RebJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @807 EXTERN X3Reb25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @807 EXTERN X3Reb25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @807 EXTERN X3Reb25J Outdoor2 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

//SoA 
CHAIN X3RebJ Inn1 
@808
= @809
END 
++ @13 + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @810 + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @810 + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @810 + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3RebRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+@309+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @18  + Sleep1 // Same as below, except sets slept to 1.
++ @19 + RestExit 

CHAIN X3RebJ Talks
@812
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @813 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @814 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @815 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3RebJ Story1 
@816
= @817
= @818
= @819
= @820
END 
++ @821 + Story1.1
++ @388 + Story1.2
++ @822 + Story1.6

CHAIN X3RebJ Story1.1 
@823
EXTERN X3RebJ Story1.2

CHAIN X3RebJ Story1.6
@824
EXTERN X3RebJ Story1.2 

CHAIN X3RebJ Story1.2 
@825
= @826
= @827
= @828
= @829
= @830
= @831
END 
++ @832 + Story1.4 
++ @833 + Story1.3 
++ @834 + Story1.5

CHAIN X3RebJ Story1.4 
@835
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story1.5 
@836
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story1.3 
@837
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2 
@838
= @839
= @840
END 
++ @841 + Story2.1 
++ @388 + Story2.2 
++ @842 + Story2.6

CHAIN X3RebJ Story2.1 
@843
EXTERN X3RebJ Story2.2 

CHAIN X3RebJ Story2.2
@844
= @845
= @846
END 
++ @847 + Story2.3 
++ @848 + Story2.4 
++ @849 + Story2.5

CHAIN X3RebJ Story2.3 
@850
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2.4 
@851
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2.5 
@852
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story2.6 
@853
EXTERN X3RebJ Story2.2

CHAIN X3RebJ Story3 
@854
= @855
= @856
END 
++ @857 + Story3.1 
++ @858 + Story3.1 
++ @859  + Story3.2

CHAIN X3RebJ Story3.1 
@860
EXTERN X3RebJ Story3.2 

CHAIN X3RebJ Story3.2 
@861
= @862
= @863
= @864
= @865
= @866
END 
++ @867 + Story3.3 
++ @868 + Story3.3 
++ @869 + Story3.4

CHAIN X3RebJ Story3.3 
@870
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Story3.4 
@871
EXTERN X3RebJ RestLate 


CHAIN X3RebJ HealthHigh1 
@872
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ HealthHighLove1 
@873
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthHigh2
@874
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ HealthHighLove2
@875
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthLow1 
@876
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ HealthLowLove1 
@877
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthLowLove2 
@878
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurtLove2

CHAIN X3RebJ HealthLow2 
@879
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3RebJ PlayerHurt2

CHAIN X3RebJ PlayerHealthy1 
@880
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3RebJ PlayerHealthy2 
@881
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3RebJ PlayerHealthyLove1 
@882
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3RebJ PlayerHealthyLove2 
@883
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3RebJ PlayerHurt1 
@884
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3RebJ PlayerHurt2 
@885
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3RebJ PlayerHurtLove1 
@886
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2

CHAIN X3RebJ PlayerHurtLove2 
@887
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3RebJ advice2 
@888
END 
++ @889 + advice2.1 
++ @890 + advice2.1
++ @891 + advice2.1

CHAIN X3RebJ advice2.1 
@892
= @893
= @894
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ RestLate 



CHAIN X3RebJ advice3 
@895
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3RebJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3RebJ advice3b

CHAIN X3RebJ advice3a 
@896
END 
++ @897 + advice3a.1 
++ @898 + advice3a.1 
++ @899 + advice3a.2

CHAIN X3RebJ advice3a.1 
@900
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3a.2
@901
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3a.3
@902
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3b
@903
END 
++ @897 + advice3b.1 
++ @898 + advice3b.2
++ @899 + advice3b.3

CHAIN X3RebJ advice3b.1 
@904
DO ~DisplayStringNoNameDlg(Player1,@400403)IncrementGlobal("X3RebApp","GLOBAL",-3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3b.2
@905
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice3b.3
@906
EXTERN X3RebJ RestLate 



CHAIN X3RebJ advice4 
@907
END 
++ @908 + advice4.1 
++ @909 + advice4.2
++ @910 + advice4.3

CHAIN X3RebJ advice4.1
@911
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ advice4.3

CHAIN X3RebJ advice4.2 
@912
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ advice4.3

CHAIN X3RebJ advice4.3
@913
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice6
@914
END 
++ @915 + advice6.1
++ @916 + advice6.2
++ @917 + advice6.3

CHAIN X3RebJ advice6.1
@918
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice6.2
@919
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ advice6.3
@920
EXTERN X3RebJ RestLate 

CHAIN X3RebJ compliment
@921
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
= @922
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @813 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @814 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @815 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3RebJ Hug1
@923
END 
IF ~RandomNum(3,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3RebJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Hug2
@924
END 
IF ~RandomNum(3,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3RebJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Hug3
@925
END 
IF ~RandomNum(3,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3RebJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss1 
@926
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss2 
@927
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss3 
@928
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ Kiss4 
@929
END 
IF ~RandomNum(2,1)~ EXTERN X3RebJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3RebJ Sleep

CHAIN X3RebJ StayTalk 
@930
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @813 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @814 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @815 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @143 + RestExit 
 

CHAIN X3RebJ BathYes 
@931
EXTERN X3RebJ BathJoin 

CHAIN X3RebJ BathJoin
@932
= @933
END 
++ @934 + BathJoin.1 
++ @935 + BathJoin.2 
++ @936 + BathJoin.3

CHAIN X3RebJ BathJoin.1 
@937
= @938
END 
++ @939 + BathJoin.4
++ @940 + BathJoin.7

CHAIN X3RebJ BathJoin.2 
@941
EXTERN X3RebJ BathJoin.3 

CHAIN X3RebJ BathJoin.3
@942
END 
++ @943 + BathJoin.4 
++ @940 + BathJoin.7

CHAIN X3RebJ BathJoin.4 
@944
= @945
END 
++ @946 + BathJoin.5 
++ @947 + BathJoin.6
++ @948 + BathJoin.5

CHAIN X3RebJ BathJoin.5 
@949
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
 CHAIN X3RebJ BathJoin.6
 @950
 EXTERN X3RebJ BathJoin.5

CHAIN X3RebJ BathJoin.7
@951
= @952 
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3RebJ Sleep 
@953
END 
+~Global("X3Slept","LOCALS",2)~+ @954 + Snuggle4
++ @955 + Sleep3 
++ @956 + Sleep3 
+~!Global("X3Slept","LOCALS",2)~+ @957 + Snuggle 

CHAIN X3RebJ RestLove2
@958
END 
+~Global("X3Slept","LOCALS",2)~+ @954 + Snuggle4
+~!Global("X3Slept","LOCALS",2)~+ @959 + Sleep2
++ @960 + Sleep3
++ @955 + Sleep3
+~!Global("X3Slept","LOCALS",2)~+ @957 + Snuggle 

CHAIN X3RebJ Snuggle 
@961
END 
++ @962 + Snuggle2 
++ @704 + Snuggle3 

CHAIN X3RebJ Snuggle3 
@963
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3RebJ Snuggle4 
@964
EXTERN X3RebJ Snuggle2 

CHAIN X3RebJ Snuggle2
@965
EXIT

CHAIN X3RebJ Sleep1 
@966
EXTERN X3RebJ Sleep3  

CHAIN X3RebJ Sleep2 
@967
EXTERN X3RebJ Sleep3 

CHAIN X3RebJ Sleep3 
@968
END 
IF ~!Global("X3Slept","LOCALS",2)~ EXTERN X3RebJ Sleep4 
IF ~Global("X3Slept","LOCALS",2)~ EXTERN X3RebJ Sleep9 

CHAIN X3RebJ Sleep4 
@969
= @970
END 
++ @971 + Sleep5 
++ @972 + Sleep7
++ @16 + Sleep7

CHAIN X3RebJ Sleep5 
@973
END 
++ @974 + Sleep7
++ @975 + Sleep8 
++ @976 + Sleep6

CHAIN X3RebJ Sleep6 
@977
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3RebJ Sleep7 
@978
EXTERN X3RebJ Sleep9 

CHAIN X3RebJ Sleep8 
@979
EXTERN X3RebJ Sleep9 

CHAIN X3RebJ Sleep9 
@980
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3RebJ Sleep10M 
IF ~Gender(Player1,MALE)~ EXTERN X3RebJ Sleep10F 

CHAIN X3RebJ Sleep10M 
@981
EXTERN X3RebJ Sleep11 

CHAIN X3RebJ Sleep10F 
@982
EXTERN X3RebJ Sleep11 

CHAIN X3RebJ Sleep11 
@983
END 
IF ~!Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3Slept","LOCALS",1)SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
IF ~Global("X3Slept","LOCALS",2)~ DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT  

CHAIN X3RebJ RestExit 
@984
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3RebJ Inn2
@985
= @986
END 
++ @13 + Talks 
+~Global("X3Records","LOCALS",0)~+ @987 DO ~SetGlobal("X3Records","LOCALS",1)~ + Record1
+~Global("X3Records","LOCALS",1)~+ @987 DO ~SetGlobal("X3Records","LOCALS",2)~ + Record11
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @99 + KissWrite
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @988 + RestExit 

CHAIN X3RebJ KissWrite
@989
= @990
END 
++ @13 + Talks 
+~Global("X3Records","LOCALS",0)~+ @987 DO ~SetGlobal("X3Records","LOCALS",1)~ + Record1
+~Global("X3Records","LOCALS",1)~+ @987 DO ~SetGlobal("X3Records","LOCALS",2)~ + Record11
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @988 + RestExit 

CHAIN X3RebJ Record1 
@991
END 
++ @992 + Record2 
++ @993 + Record2 
++ @994 + Record3 

CHAIN X3RebJ Record3 
@995
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3RebJ Record2 
@996
END 
++ @997 + Record4 
++ @998 + Record5 
++ @999 + Record6

CHAIN X3RebJ Record4 
@1000
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ Record7

CHAIN X3RebJ Record5 
@1001
EXTERN X3RebJ Record7

CHAIN X3RebJ Record6 
@1002
DO ~DisplayStringNoNameDlg(Player1,@400403)IncrementGlobal("X3RebApp","GLOBAL",-1)~
EXTERN X3RebJ Record7

CHAIN X3RebJ Record7 
@1003
END 
++ @1004 + Record8 
++ @1005 + Record9 
++ @1006 + Record10 

CHAIN X3RebJ Record8 
@1007
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Record9 
@1008
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Record10 
@1009
EXTERN X3RebJ RestLate 

CHAIN X3RebJ Record11 
@1010
= @1011
END 
++ @1012 + Record12 
++ @1013 + Record13 
++ @1014 + Record14 
++ @1015 + Record15 
++ @1016 + Record16 
++ @1017 + Record3 

CHAIN X3RebJ Record12
@1018
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record13 
@1019
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record14 
@1020
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record15 
@1021
DO ~DisplayStringNoNameDlg(Player1,@400403)IncrementGlobal("X3RebApp","GLOBAL",-2)~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record16 
@1022
DO ~DisplayStringNoNameDlg(Player1,@400403)IncrementGlobal("X3RebApp","GLOBAL",-2)~
EXTERN X3RebJ Record17 

CHAIN X3RebJ Record17 
@1023
EXTERN X3RebJ RestLate 

CHAIN X3RebJ RestLate 
@1024
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ RestLove2
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ RestExit

// Recorder Outdoor
CHAIN X3RebJ Outdoor1
@1025
= @1026
END
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @1027 DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @99 + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1028 + RestExit 

CHAIN X3RebJ KissOutdoor 
@1029
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @1027 DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1028 + RestExit 

CHAIN X3RebJ Activity 
@1030
END 
++ @1031 + Activity1 
++ @1032 + Activity2 
++ @1033 + Activity3 

CHAIN X3RebJ Activity1 
@1034
END 
+~CheckStatLT(Player1,13,CHR)~+ @1035 + MissLow 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1035 + MissLow 
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1035 + HitLow
+~CheckStatGT(Player1,13,CHR)~+ @1035 + HitLow 

CHAIN X3RebJ MissLow 
@1036
END  
+~CheckStatLT(Player1,13,CHR)~+ @1037 + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1037 + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1037 + HitLow
++ @1038 + PlayGiveUp 

CHAIN X3RebJ HitLow 
@1039 
END 
++ @992 + Activity2 
++ @1040 + PlayStop2 

CHAIN X3RebJ Activity2 
@1041
= @1042
END 
+~CheckStatLT(Player1,13,CHR)~+ @1043 + MissMid 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1043 + MissMid  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1043 + HitMid 
+~CheckStatGT(Player1,13,CHR)~+ @1043 + HitMid

CHAIN X3RebJ MissMid 
@1044
END  
+~CheckStatLT(Player1,13,CHR)~+ @1045 + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1045 + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1045 + HitMid 
++ @1038 + PlayGiveUp 

CHAIN X3RebJ HitMid 
@1046
END 
++ @1047 + Activity3 
++ @1040 + PlayStop2 

CHAIN X3RebJ Activity3 
@1048
= @1049
END 
+~CheckStatLT(Player1,13,CHR)~+ @1050 + MissHigh
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1050 + MissHigh  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1050 + HitHigh  
+~CheckStatGT(Player1,13,CHR)~+ @1050 + HitHigh 

CHAIN X3RebJ MissHigh 
@1051
END  
+~CheckStatLT(Player1,13,CHR)~+ @1052 + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1052 + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1052 + HitHigh 
++ @1038 + PlayGiveUp 

CHAIN X3RebJ HitHigh 
@1053
END 
++ @1054 + Activity4 
++ @1055 + Activity5 
++ @1056 + Activity6

CHAIN X3RebJ Activity4 
@1057
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3RebJ Activity7 

CHAIN X3RebJ Activity5
@1058
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",2)~
EXTERN X3RebJ Activity7 

CHAIN X3RebJ Activity6
@1059
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3RebJ Activity7

CHAIN X3RebJ Activity7 
@1060 
END 
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ Activity8
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3RebJ Activity9

CHAIN X3RebJ Activity8 
@1061
EXIT 

CHAIN X3RebJ Activity9
@1062
END 
+~Global("X3Slept","LOCALS",2)~+ @954 + Snuggle4
+~!Global("X3Slept","LOCALS",2)~+ @959 + Sleep2
++ @960 + Sleep3
++ @955 + Sleep3
+~!Global("X3Slept","LOCALS",2)~+ @957 + Snuggle 


CHAIN X3RebJ MissFail2 
@1063
EXTERN X3RebJ PlayStop 

CHAIN X3RebJ PlayGiveUp 
@1064
EXTERN X3RebJ PlayStop 

CHAIN X3RebJ PlayStop2 
@1065
EXTERN X3RebJ PlayStop 

CHAIN X3RebJ PlayStop 
@1066
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

//Outdoor2
CHAIN X3RebJ Outdoor2
@1067
= @1068
END
++ @13 + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @810 + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @810 + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @810 + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @18  + Sleep1 // Same as below, except sets slept to 1.
++ @19 + RestExit 
 
//ToB Recorder 
CHAIN X3Reb25J Inn
@1069
== X3Reb25J IF ~AreaCheck("AR5003")~ THEN @1070
== X3Reb25J IF ~!AreaCheck("AR5003")~ THEN @1071
END 
++ @13 + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @810 + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @810 + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @810 + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3RebRomanceActive","GLOBAL",2)Global("X3Slept","LOCALS",2)~+@309+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @18 + Sleep1 // Because hers is so late, make it linear.
++ @19 + RestExit 


CHAIN X3Reb25J Talks
@812
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @813 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @814 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @815 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3Reb25J Story1 
@816
= @817
= @818
= @819
= @820
END 
++ @821 + Story1.1
++ @388 + Story1.2
++ @822 + Story1.6

CHAIN X3Reb25J Story1.1 
@823
EXTERN X3Reb25J Story1.2

CHAIN X3Reb25J Story1.6
@824
EXTERN X3Reb25J Story1.2 

CHAIN X3Reb25J Story1.2 
@825
= @826
= @827
= @828
= @829
= @830
= @831
END 
++ @832 + Story1.4 
++ @833 + Story1.3 
++ @834 + Story1.5

CHAIN X3Reb25J Story1.4 
@835
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story1.5 
@836
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story1.3 
@837
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2 
@838
= @839
= @840
END 
++ @841 + Story2.1 
++ @388 + Story2.2 
++ @842 + Story2.6
CHAIN X3Reb25J Story2.1 
@843
EXTERN X3Reb25J Story2.2 

CHAIN X3Reb25J Story2.2
@844
= @845
= @846
END 
++ @847 + Story2.3 
++ @848 + Story2.4
++ @849 + Story2.5

CHAIN X3Reb25J Story2.3 
@850
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2.4 
@851
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2.5 
@852
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story2.6 
@853
EXTERN X3Reb25J Story2.2

CHAIN X3Reb25J Story3 
@854
= @855
= @856
END 
++ @857 + Story3.1 
++ @858 + Story3.1 
++ @859  + Story3.2

CHAIN X3Reb25J Story3.1 
@860
EXTERN X3Reb25J Story3.2 

CHAIN X3Reb25J Story3.2 
@861
= @862
= @863
= @864
= @865
= @866
END 
++ @867 + Story3.3 
++ @868 + Story3.3 
++ @869 + Story3.4

CHAIN X3Reb25J Story3.3 
@870
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J Story3.4 
@871
EXTERN X3Reb25J RestLate 


CHAIN X3Reb25J HealthHigh1 
@872
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J HealthHighLove1 
@873
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthHigh2
@874
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J HealthHighLove2
@875
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthLow1 
@876
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J HealthLowLove1 
@877
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthLowLove2 
@878
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurtLove2

CHAIN X3Reb25J HealthLow2 
@879
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Reb25J PlayerHurt2

CHAIN X3Reb25J PlayerHealthy1 
@880
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @159 + RestExit 

CHAIN X3Reb25J PlayerHealthy2 
@881
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @159 + RestExit 

CHAIN X3Reb25J PlayerHealthyLove1 
@882
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @162 + RestLove2


CHAIN X3Reb25J PlayerHealthyLove2 
@883
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @162 + RestLove2


CHAIN X3Reb25J PlayerHurt1 
@884
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @159 + RestExit 

CHAIN X3Reb25J PlayerHurt2 
@885
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @159 + RestExit 

CHAIN X3Reb25J PlayerHurtLove1 
@886
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @162 + RestLove2

CHAIN X3Reb25J PlayerHurtLove2 
@887
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
++ @162 + RestLove2

CHAIN X3Reb25J advice8 
@1072
END 
++ @1073 + advice8.1 
++ @1074 + advice8.2
++ @1075 + advice8.3

CHAIN X3Reb25J advice8.1 
@1076
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice8.2
@1077
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice8.3
@1078
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice9
@1079
= @1080
END 
++ @1081 + advice9.1 
++ @1082 + advice9.2
++ @1083 + advice9.3

CHAIN X3Reb25J advice9.1
@1084
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice9.2 
@1085
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J advice9.3
@1086
EXTERN X3Reb25J RestLate 

CHAIN X3Reb25J compliment
@921
= @922
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @813 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @814 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @815 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @143 + RestExit 

CHAIN X3Reb25J Hug1
@923
END 
IF ~RandomNum(3,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Reb25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Hug2
@924
END 
IF ~RandomNum(3,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Reb25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Hug3
@925
END 
IF ~RandomNum(3,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Reb25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss1 
@926
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss2 
@927
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss3 
@928
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J Kiss4 
@929
END 
IF ~RandomNum(2,1)~ EXTERN X3Reb25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Reb25J Sleep

CHAIN X3Reb25J StayTalk 
@930
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3RebRomanceActive","GLOBAL",2)~+ @139 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @813 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @814 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3RebTalk","LOCALS",10)~+ @815 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @141 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8 // Chapter 4
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @141 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 // Chapter 6 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @142 + RestLove2
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ @143 + RestExit 
 

CHAIN X3Reb25J BathYes 
@931
EXTERN X3Reb25J BathJoin 

CHAIN X3Reb25J BathJoin
@932
= @933
END 
++ @934 + BathJoin.1 
++ @935 + BathJoin.2 
++ @936 + BathJoin.3

CHAIN X3Reb25J BathJoin.1 
@937
= @938
END 
++ @939 + BathJoin.4
++ @940 + BathJoin.7

CHAIN X3Reb25J BathJoin.2 
@941
EXTERN X3Reb25J BathJoin.3 

CHAIN X3Reb25J BathJoin.3
@942
END 
++ @943 + BathJoin.4 
++ @940 + BathJoin.7

CHAIN X3Reb25J BathJoin.4 
@944
= @945
END 
++ @946 + BathJoin.5 
++ @947 + BathJoin.6
++ @948 + BathJoin.5

CHAIN X3Reb25J BathJoin.5 
@949
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
 CHAIN X3Reb25J BathJoin.6
 @950
 EXTERN X3Reb25J BathJoin.5

CHAIN X3Reb25J BathJoin.7
@951
= @952 
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

CHAIN X3Reb25J Sleep 
@953
END 
++ @954 + Snuggle4
++ @955 + Sleep3 
++ @956 + Sleep3 

CHAIN X3Reb25J Sleep1 
@966
EXTERN X3Reb25J Sleep3 

CHAIN X3Reb25J RestLove2
@958
END 
+~Global("X3Slept","LOCALS",2)~+ @954 + Snuggle4
++ @960 + Sleep3
++ @955 + Sleep3

CHAIN X3Reb25J Snuggle4 
@964
EXTERN X3Reb25J Snuggle2 

CHAIN X3Reb25J Snuggle2
@965
EXIT 


CHAIN X3Reb25J Sleep3 
@968
EXTERN X3Reb25J Sleep9

CHAIN X3Reb25J Sleep9 
@980
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Reb25J Sleep10M 
IF ~Gender(Player1,MALE)~ EXTERN X3Reb25J Sleep10F 

CHAIN X3Reb25J Sleep10M 
@981
EXTERN X3Reb25J Sleep11 

CHAIN X3Reb25J Sleep10F 
@982
EXTERN X3Reb25J Sleep11 

CHAIN X3Reb25J Sleep11 
@983
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT  

CHAIN X3Reb25J RestExit 
@984
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Reb25J RestLate 
@1024
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J RestLove2
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J RestExit

// Recorder Outdoor
CHAIN X3Reb25J Outdoor1
@1025
= @1026
END
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @1027 DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @99 + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1028 + RestExit 

CHAIN X3Reb25J KissOutdoor 
@1029
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @1027 DO ~SetGlobal("X3Activity","LOCALS",1)~ + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1028 + RestExit 

CHAIN X3Reb25J Activity 
@1030
END 
++ @1031 + Activity1 
++ @1032 + Activity2 
++ @1033 + Activity3 

CHAIN X3Reb25J Activity1 
@1034
END 
+~CheckStatLT(Player1,13,CHR)~+ @1035 + MissLow 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1035 + MissLow 
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1035 + HitLow
+~CheckStatGT(Player1,13,CHR)~+ @1035 + HitLow 

CHAIN X3Reb25J MissLow 
@1036
END  
+~CheckStatLT(Player1,13,CHR)~+ @1037 + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1037 + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1037 + HitLow
++ @1038 + PlayGiveUp 

CHAIN X3Reb25J HitLow 
@1039 
END 
++ @992 + Activity2 
++ @1040 + PlayStop2 

CHAIN X3Reb25J Activity2 
@1041
= @1042
END 
+~CheckStatLT(Player1,13,CHR)~+ @1043 + MissMid 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1043 + MissMid  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1043 + HitMid 
+~CheckStatGT(Player1,13,CHR)~+ @1043 + HitMid

CHAIN X3Reb25J MissMid 
@1044
END  
+~CheckStatLT(Player1,13,CHR)~+ @1045 + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1045 + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1045 + HitMid 
++ @1038 + PlayGiveUp 

CHAIN X3Reb25J HitMid 
@1046
END 
++ @1047 + Activity3 
++ @1040 + PlayStop2 

CHAIN X3Reb25J Activity3 
@1048
= @1049
END 
+~CheckStatLT(Player1,13,CHR)~+ @1050 + MissHigh
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1050 + MissHigh  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1050 + HitHigh  
+~CheckStatGT(Player1,13,CHR)~+ @1050 + HitHigh 

CHAIN X3Reb25J MissHigh 
@1051
END  
+~CheckStatLT(Player1,13,CHR)~+ @1052 + MissFail2 
+~RandomNum(2,1)CheckStat(Player1,13,CHR)~+ @1052 + MissFail2  
+~RandomNum(2,2)CheckStat(Player1,13,CHR)~+ @1052 + HitHigh 
++ @1038 + PlayGiveUp 

CHAIN X3Reb25J HitHigh 
@1053
END 
++ @1054 + Activity4 
++ @1055 + Activity5 
++ @1056 + Activity6

CHAIN X3Reb25J Activity4 
@1057
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",3)~
EXTERN X3Reb25J Activity7 

CHAIN X3Reb25J Activity5
@1058
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",2)~
EXTERN X3Reb25J Activity7 

CHAIN X3Reb25J Activity6
@1059
DO ~DisplayStringNoNameDlg(Player1,@400413)IncrementGlobal("X3RebApp","GLOBAL",1)~
EXTERN X3Reb25J Activity7

CHAIN X3Reb25J Activity7 
@1060 
END 
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J Activity8
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J Activity9

CHAIN X3Reb25J Activity8 
@1061
EXIT 

CHAIN X3Reb25J Activity9
@1062
END 
++ @954 + Snuggle4
++ @960 + Sleep3
++ @955 + Sleep3


CHAIN X3Reb25J MissFail2 
@1063
EXTERN X3Reb25J PlayStop 

CHAIN X3Reb25J PlayGiveUp 
@1064
EXTERN X3Reb25J PlayStop 

CHAIN X3Reb25J PlayStop2 
@1065
EXTERN X3Reb25J PlayStop 

CHAIN X3Reb25J PlayStop 
@1066
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

//Outdoor2
CHAIN X3Reb25J Outdoor2
@1067
= @1068
END
++ @13 + Talks 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @810 + Hug1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @810 + Hug2 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @810 + Hug3
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3RebRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3RebRomanceActive","GLOBAL",2)Global("X3RebRomanceActive","GLOBAL",1)~+  @811 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3RebRomanceActive","GLOBAL",2)~+ @18 + Sleep1 // Because hers is so late, make it linear.
++ @19 + RestExit 

/*Vienxay*/

CHAIN X3Rest VienxayNoSet 
@1087
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
@1088
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
AreaCheck("AR1602")~+ @1089 EXTERN X3VieJ Inn1
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
AreaCheck("AR1602")~+ @1089 EXTERN X3VieJ Inn2
+~RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @1089 EXTERN X3VieJ Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @1089 EXTERN X3VieJ Outdoor2 
+~OR(2)AreaCheck("AR5501")AreaCheck("AR5003")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @1089 EXTERN X3Vie25J Inn
+~RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @1089 EXTERN X3Vie25J Outdoor1 
+~!RandomNumLT(6,4)AreaType(OUTDOOR)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~+ @1089 EXTERN X3Vie25J Outdoor2 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 

//SoA 
CHAIN X3VieJ Inn1 
@1090
= @1091
END 
++ @13 + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @1092 + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @1092 + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @1092 + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3VieRomanceActive","GLOBAL",2)~+@309+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@500513)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1094 + Sleep5
++ @19 + RestExit 

CHAIN X3VieJ Talks
@1095
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1099 + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1100 + RestExit 

CHAIN X3VieJ Story1 
@1101
= @1102
= @1103
END 
++ @1104 + Story1.1
++ @1105 + Story1.2 
++ @388 + Story1.3

CHAIN X3VieJ Story1.1 
@1106
EXTERN X3VieJ Story1.3

CHAIN X3VieJ Story1.2 
@1107
EXTERN X3VieJ Story1.3 

CHAIN X3VieJ Story1.3 
@1108
= @1109
END 
++ @1110 + Story1.4 
++ @1111 + Story1.5 
++ @1112 + Story1.6

CHAIN X3VieJ Story1.4 
@1113
= @1114
= @1115
= @1116
END 
++ @1117 + Story1.9
++ @1118 DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@500513)~ + Story1.8
++ @1119 DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@500513)~ + Story1.7

CHAIN X3VieJ Story1.9
@1120
= @1121
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story1.8
@1122
EXTERN X3VieJ Story1.9

CHAIN X3VieJ Story1.7
@1123
EXTERN X3VieJ Story1.9

CHAIN X3VieJ Story1.5 
@1124
EXTERN X3VieJ Story1.4 

CHAIN X3VieJ Story1.6
@1125
EXTERN X3VieJ Story1.4

CHAIN X3VieJ Story2 
@1126
= @1127
= @1128
END 
++ @1129 + Story2.1 
++ @1130 + Story2.2 
++ @1131 + Story2.3 

CHAIN X3VieJ Story2.1
@1132
EXTERN X3VieJ Story2.2 

CHAIN X3VieJ Story2.3
@1133
EXTERN X3VieJ Story2.2

CHAIN X3VieJ Story2.2 
@1134
= @1135
= @1136
= @1137
END 
++ @1138 + Story2.5
++ @1139 + Story2.4 
++ @1140 + Story2.5

CHAIN X3VieJ Story2.4 
@1141
EXTERN X3VieJ Story2.5 

CHAIN X3VIeJ Story2.5
@1142
= @1143
END 
++ @1144 + Story2.6
++ @1145 + Story2.7
++ @1146 DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@500513)~ + Story2.8

CHAIN X3VieJ Story2.6
@1147
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story2.7
@1148
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story2.8
@1149
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story3 
@1150
= @1151
= @1152
END 
++ @1153 + Story3.1 
++ @1154 + Story3.1 
++ @1155 + Story3.2 

CHAIN X3VieJ Story3.1 
@1156
EXTERN X3VieJ Story3.2 

CHAIN X3VieJ Story3.2 
@1157
END 
++ @1158 + Story3.3 
++ @1159 + Story3.4
++ @1160 + Story3.5

CHAIN X3VieJ Story3.3 
@1161
EXTERN X3VieJ Story3.4 

CHAIN X3VieJ Story3.4 
@1162
= @1163
= @1164
= @1165
= @1166
= @1167
END 
++ @1168 + Story3.5 
++ @1169 + Story3.6
++ @1170 + Story3.7

CHAIN X3VieJ Story3.5
@1171
EXTERN X3VieJ Story3.7

CHAIN X3VieJ Story3.6
@1172
EXTERN X3VieJ Story3.7

CHAIN X3VieJ Story3.7
@1173
= @1174
= @1175
END 
+~Alignment("X3Vie",NEUTRAL)~+ @1176 + Story3.8A 
+~!Alignment("X3Vie",NEUTRAL)~+ @1176 + Story3.8B
++ @1177 DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@500513)~ + Story3.9
++ @1178 DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@500503)~ + Story3.10
 
CHAIN X3VieJ Story3.8A
@1179
EXTERN X3VieJ RestLate
 
CHAIN X3VieJ Story3.8B
@1180
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story3.9
@1181
EXTERN X3VieJ RestLate 

CHAIN X3VieJ Story3.10
@1182
EXTERN X3VieJ RestLate 


CHAIN X3VieJ HealthHigh1 
@1183
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ HealthHighLove1 
@1184
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthHigh2
@1185
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ HealthHighLove2
@1186
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthLow1 
@1187
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ HealthLowLove1 
@1188
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthLowLove2 
@1189
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurtLove2

CHAIN X3VieJ HealthLow2 
@1190
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3VieJ PlayerHurt2

CHAIN X3VieJ PlayerHealthy1 
@1191
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @141 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @141 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @141 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @141 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3VieJ PlayerHealthy2 
@1192
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3VieJ PlayerHealthyLove1 
@1193
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3VieJ PlayerHealthyLove2 
@1194
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3VieJ PlayerHurt1 
@1195
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3VieJ PlayerHurt2 
@1196
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @159 + RestExit 

CHAIN X3VieJ PlayerHurtLove1 
@1197
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2

CHAIN X3VieJ PlayerHurtLove2 
@1198
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
++ @162 + RestLove2


CHAIN X3VieJ advice2 
@1199
END 
++ @1200 DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@500503)~ + advice2.1 
++ @1201 + advice2.1
++ @1202 DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@500513)~ + advice2.3

CHAIN X3VieJ advice2.1 
@1203
EXTERN X3VieJ advice2.3 

CHAIN X3VieJ advice2.2 
@1204
EXTERN X3VieJ advice2.3 

CHAIN X3VieJ advice2.3
@1205
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3 
@1206
END 
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3VieJ advice3a 
IF ~Global("WorkingForBodhi","GLOBAL",1)~ EXTERN X3VieJ advice3b

CHAIN X3VieJ advice3a 
@1207
END 
++ @1208 + advice3a.1 
++ @1209 + advice3a.2 
++ @1210 + advice3a.3

CHAIN X3VieJ advice3a.1 
@1211
EXTERN X3VieJ advice3a.2

CHAIN X3VieJ advice3a.2
@1212
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3a.3
@1213
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3b
@1214
END 
++ @1215 + advice3b.1 
++ @1216  + advice3b.2
++ @1217 + advice3b.3

CHAIN X3VieJ advice3b.1 
@1218
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3b.2
@1219
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice3b.3
@1220
EXTERN X3VieJ RestLate 



CHAIN X3VieJ advice4 
@1221
END 
++ @1222 + advice4.1 
++ @1223 DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@500513)~ + advice4.2
++ @1224 + advice4.3

CHAIN X3VieJ advice4.1
@1225
EXTERN X3VieJ advice4.3

CHAIN X3VieJ advice4.2 
@1226
EXTERN X3VieJ advice4.3

CHAIN X3VieJ advice4.3
@1227
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice6
@1228
END 
++ @1229 + advice6.1
++ @1230 + advice6.2
++ @1231 + advice6.3

CHAIN X3VieJ advice6.1
@1232
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice6.2
@1233
EXTERN X3VieJ RestLate 

CHAIN X3VieJ advice6.3
@1234
EXTERN X3VieJ RestLate 

CHAIN X3VieJ compliment
@1235
= @1236
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1099 + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1100 + RestExit 


CHAIN X3VieJ Hug1
@1237
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3VieJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Hug2
@1238
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3VieJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Hug3
@1239
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(3,2)~ EXTERN X3VieJ Kiss4
IF ~RandomNum(3,3)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss1 
@1240
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss2 
@1241
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss3 
@1242
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ Kiss4 
@1243
END 
IF ~RandomNum(2,1)~ EXTERN X3VieJ StayTalk
IF ~RandomNum(2,2)~ EXTERN X3VieJ Sleep

CHAIN X3VieJ StayTalk
@1244
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice2","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_2%)~+ @1098 DO ~SetGlobal("X3Advice2","LOCALS",1)~ + advice2 //Chapter 2 
+~Global("X3Advice3","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_3%)~+ @1098 DO ~SetGlobal("X3Advice3","LOCALS",1)~ + advice3 // Chapter 3 
+~Global("X3Advice4","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_4%)~+ @1098 DO ~SetGlobal("X3Advice4","LOCALS",1)~ + advice4 // Chapter 4
+~Global("X3Advice6","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_6%)~+ @1098 DO ~SetGlobal("X3Advice6","LOCALS",1)~ + advice6 // Chapter 6 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1099 + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1100 + RestExit 



CHAIN X3VieJ BathYes 
@1245
EXTERN X3VieJ BathJoin 

CHAIN X3VieJ BathJoin
@1246
= @1247
END 
++ @1248 + BathJoin.1 
++ @1249 + BathJoin.2 
++ @1250 + BathJoin.3

CHAIN X3VieJ BathJoin.1 
@1251
EXTERN X3VieJ BathJoin.2

CHAIN X3VieJ BathJoin.2 
@1252
END 
IF ~Gender(Player1,MALE)~ EXTERN X3VieJ BathJoin.4M
IF ~!Gender(Player1,MALE)~ EXTERN X3VieJ BathJoin.4F 

CHAIN X3VieJ BathJoin.3
@1253
EXTERN X3VieJ BathJoin.2

CHAIN X3VieJ BathJoin.4M
@1254
= @1255
END 
++ @1256 + BathJoin.5 
++ @1257 + BathJoin.6
++ @1258 + BathJoin.7

CHAIN X3VieJ BathJoin.4F
@1259
= @1255
END 
++ @1256 + BathJoin.5 
++ @1257 + BathJoin.6
++ @1258 + BathJoin.7

CHAIN X3VieJ BathJoin.5 
@1260
EXTERN X3VieJ BathJoin.6

CHAIN X3VieJ BathJoin.6
@1261
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
CHAIN X3VieJ BathJoin.7
@1262
EXTERN X3VieJ BathJoin.5


CHAIN X3VieJ Sleep 
@1263
END 
+~Global("X3Slept","LOCALS",2)~+ @954 + Snuggle2
++ @955 + Sleep2 
++ @956 + Sleep2
+~!Global("X3Slept","LOCALS",2)~+ @957 + Snuggle 

CHAIN X3VieJ RestLove2
@1264
END 
++ @1265 + Snuggle2
++ @1266 + Sleep2
++ @955 + Sleep2
++ @1267 + Snuggle 

CHAIN X3VieJ Snuggle 
@1268
= @1269
END 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~EXIT 
++ @1270 + Snuggle3
++ @1271 + Sleep

CHAIN X3VieJ Snuggle2
@1272
= @1273
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ Snuggle3 
@1274
= @1275
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ Sleep5 
@1276
EXTERN X3VieJ Sleep2 

CHAIN X3VieJ Sleep2 
@1277
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3VieJ Sleep3.F 
IF ~!Gender(Player1,FEMALE)~ EXTERN X3VieJ Sleep3.M

CHAIN X3VieJ Sleep3.F 
@1278
EXTERN X3VieJ Sleep4

CHAIN X3VieJ Sleep3.M
@1279
EXTERN X3VieJ Sleep4

CHAIN X3VieJ Sleep4
@1280
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ RestExit 
@1281
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3VieJ RestLate 
@1282
END 
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3VieJ RestLove2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3VieJ RestExit
//Inn2
CHAIN X3VieJ Inn2
@1283
= @1284
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @1285 + Activity
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ @99 + KissLance
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1286 + RestExit 

CHAIN X3VieJ KissLance 
@1287
END 
++ @13 + Talks 
+~Global("X3Activity","LOCALS",0)~+ @1285 + Activity
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1286 + RestExit 

CHAIN X3VieJ Activity 
@1288
= @1289
END 
++ @1290 + Activity.1
++ @1291 + Activity.2

CHAIN X3VieJ Activity.1 
@1292
END 
IF ~CheckStatLT(Player1,13,INT)~ EXTERN X3VieJ LoseDefensive
IF ~RandomNum(2,1)CheckStat(Player1,13,INT)~ EXTERN X3VieJ LoseDefensive
IF ~RandomNum(2,2)CheckStat(Player1,13,INT)~ EXTERN X3VieJ MidGame
IF ~CheckStatGT(Player1,13,INT)~ EXTERN X3VieJ MidGame

CHAIN X3VieJ Activity.2 
@1293
END 
IF ~CheckStatLT(Player1,13,INT)~ EXTERN X3VieJ LoseAggressive
IF ~RandomNum(2,1)CheckStat(Player1,13,INT)~ EXTERN X3VieJ LoseAggressive
IF ~RandomNum(2,2)CheckStat(Player1,13,INT)~ EXTERN X3VieJ MidGame
IF ~CheckStatGT(Player1,13,INT)~ EXTERN X3VieJ MidGame

CHAIN X3VieJ MidGame 
@1294
END 
++ @1295 + MidThreat 
++ @1296 + MidAttack 

CHAIN X3VieJ MidThreat 
@1297
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseMT
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseMT
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LateGame
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ LateGame

CHAIN X3VieJ MidAttack 
@1298
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseAT
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseAT
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LateGame
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ LateGame

CHAIN X3VieJ LateGame 
@1299
END 
++ @1300 + LateG1 
++ @1301 + LateG2 

CHAIN X3VieJ LateG1 
@1302
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseG1L
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseG1L 
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ Win 
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ Win 

CHAIN X3VieJ LateG2 
@1303
END 
IF ~CheckStatLT(Player1,15,INT)~ EXTERN X3VieJ LoseG2L
IF ~RandomNum(2,1)CheckStat(Player1,15,INT)~ EXTERN X3VieJ LoseG2L 
IF ~RandomNum(2,2)CheckStat(Player1,15,INT)~ EXTERN X3VieJ Win 
IF ~CheckStatGT(Player1,15,INT)~ EXTERN X3VieJ Win 

CHAIN X3VieJ LoseG1L 
@1304
EXTERN X3VieJ Lose5 

CHAIN X3VieJ LoseG2L 
@1305
EXTERN X3VieJ Lose5 

CHAIN X3VieJ LoseAT 
@1306
EXTERN X3VieJ Lose4

CHAIN X3VieJ Win 
@1307
= @1308
END 
++ @1309 + Win2
++ @1310 + Win2 
++ @1311 + Win2

CHAIN X3VieJ Win2 
@1312
= @1313
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@500516)~
END 
++ @1314 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1315 + Win3 
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1315 + WinL

CHAIN X3VieJ Win3 
@1316
= @1317
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3VieJ WinL 
@1318
= @1319
END 
++ @1265 + Snuggle2
++ @1320 + Sleep2
++ @1321 + Sleep2
++ @1322 + Snuggle 

CHAIN X3VieJ LoseMT 
@1323
EXTERN X3VieJ Lose4

CHAIN X3VieJ LoseDefensive
@1324
EXTERN X3VieJ Lose

CHAIN X3VieJ Lose4 
@1325
END 
++ @1326 + Lose1 
++ @1327 + Lose2 
++ @1328 + Lose3
++ @1329 + Lose6

CHAIN X3VieJ Lose5
@1330
END 
++ @1326 + Lose1 
++ @1327 + Lose2 
++ @1328 + Lose3
++ @1329 + Lose6

CHAIN X3VieJ Lose
@1331
END 
++ @1326 + Lose1 
++ @1327 + Lose2 
++ @1328 + Lose3
++ @1329 + Lose6

CHAIN X3VieJ LoseAggressive 
@1332
EXTERN X3VieJ Lose 

CHAIN X3VieJ Lose1 
@1333
END 
++ @1334 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1286 + RestExit 

CHAIN X3VieJ Lose2
@1335
END 
++ @1334 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1286 + RestExit 

CHAIN X3VieJ Lose3
@1336
END 
++ @1334 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1286 + RestExit 

CHAIN X3VieJ Lose6
@1337
END 
++ @1334 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1286 + RestExit 
// Vienxay Outdoor1 
CHAIN X3VieJ Outdoor1
@1338
= @1339
END
++ @13 + Talks 
++ @1340 + Offer
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @99 + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3VieJ Offer 
@1342
END 
IF ~RandomNum(3,1)~ EXTERN X3VieJ Offer1 
IF ~RandomNum(3,2)~ EXTERN X3VieJ Offer2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3VieJ Offer3
IF ~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3VieJ Offer4

CHAIN X3VieJ Offer1 
@1343
END 
++ @992 + Offer1Y 
++ @1344 + OfferN 
++ @1345 + RestExit 

CHAIN X3VieJ Offer2 
@1346
END 
++ @1347 + Offer2Y 
++ @1344 + OfferN 
++ @1348 + RestExit 

CHAIN X3VieJ Offer4 
@1349
END 
++ @1350 + Offer4Y
++ @1351 + OfferN 

CHAIN X3VieJ Offer4Y 
@1352
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3VieJ Offer1Y 
@1353
= @1354
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3VieJ Offer2Y 
@1355
= @1356
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3VieJ KissOutdoor 
@1357
END 
++ @13 + Talks 
++ @1340 + Offer
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3VieJ OfferN 
@1358
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3VieJ Offer3
@1359
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

//VienxayOutdoor2 
CHAIN X3VieJ Outdoor2
@1360
= @1361
END
++ @13 + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @1092 + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @1092 + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @1092 + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1094 + Sleep5
++ @19 + RestExit 


//ToB 
CHAIN X3Vie25J Inn
@1362
== X3Vie25J IF ~AreaCheck("AR5003")~ THEN @1363
== X3Vie25J IF ~!AreaCheck("AR5003")~ THEN @1364
END 
++ @13 + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @1092 + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @1092 + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @1092 + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3VieRomanceActive","GLOBAL",2)~+@309+ BathYes
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@500513)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1094 + Sleep5
++ @19 + RestExit 

CHAIN X3Vie25J Talks
@1095
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1099 + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1100 + RestExit 

CHAIN X3Vie25J Story1 
@1101
= @1102
= @1103
END 
++ @1104 + Story1.1
++ @1105 + Story1.2 
++ @388 + Story1.3

CHAIN X3Vie25J Story1.1 
@1106
EXTERN X3Vie25J Story1.3

CHAIN X3Vie25J Story1.2 
@1107
EXTERN X3Vie25J Story1.3 

CHAIN X3Vie25J Story1.3 
@1108
= @1109
END 
++ @1110 + Story1.4 
++ @1111 + Story1.5 
++ @1112 + Story1.6

CHAIN X3Vie25J Story1.4 
@1113
= @1114
= @1115
= @1116
END 
++ @1117 + Story1.9
++ @1118 DO ~IncrementGlobal("X3VieApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@500513)~ + Story1.8
++ @1119 DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@500513)~ + Story1.7

CHAIN X3Vie25J Story1.9
@1120
= @1121
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story1.8
@1122
EXTERN X3Vie25J Story1.5

CHAIN X3Vie25J Story1.7
@1123
EXTERN X3Vie25J Story1.5

CHAIN X3Vie25J Story1.5 
@1124
EXTERN X3Vie25J Story1.4 

CHAIN X3Vie25J Story1.6
@1125
EXTERN X3Vie25J Story1.4

CHAIN X3Vie25J Story2 
@1126
= @1127
= @1128
END 
++ @1129 + Story2.1 
++ @1130 + Story2.2 
++ @1131 + Story2.3 

CHAIN X3Vie25J Story2.1
@1132
EXTERN X3Vie25J Story2.2 

CHAIN X3Vie25J Story2.3
@1133
EXTERN X3Vie25J Story2.2

CHAIN X3Vie25J Story2.2 
@1134
= @1135
= @1136
= @1137
END 
++ @1138 + Story2.5
++ @1139 + Story2.4 
++ @1140 + Story2.5

CHAIN X3Vie25J Story2.4 
@1365
EXTERN X3Vie25J Story2.5 

CHAIN X3Vie25J Story2.5
@1142
= @1143
END 
++ @1144 + Story2.6
++ @1145 + Story2.7
++ @1146 DO ~IncrementGlobal("X3VieApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@500513)~ + Story2.8

CHAIN X3Vie25J Story2.6
@1147
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story2.7
@1148
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story2.8
@1149
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story3 
@1150
= @1151
= @1152
END 
++ @1153 + Story3.1 
++ @1154 + Story3.1 
++ @1155 + Story3.2 

CHAIN X3Vie25J Story3.1 
@1156
EXTERN X3Vie25J Story3.2 

CHAIN X3Vie25J Story3.2 
@1366
END 
++ @1367 + Story3.3 
++ @1159 + Story3.4
++ @1160 + Story3.5

CHAIN X3Vie25J Story3.3 
@1161
EXTERN X3Vie25J Story3.4 

CHAIN X3Vie25J Story3.4 
@1162
= @1163
= @1164
= @1165
= @1166
= @1167
END 
++ @1168 + Story3.5 
++ @1169 + Story3.6
++ @1170 + Story3.7

CHAIN X3Vie25J Story3.5
@1171
EXTERN X3Vie25J Story3.7

CHAIN X3Vie25J Story3.6
@1172
EXTERN X3Vie25J Story3.7

CHAIN X3Vie25J Story3.7
@1173
= @1174
= @1175
END 
+~Alignment("X3Vie",NEUTRAL)~+ @1176 + Story3.8A 
+~!Alignment("X3Vie",NEUTRAL)~+ @1176 + Story3.8B
++ @1177 DO ~IncrementGlobal("X3VieApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@500513)~ + Story3.9
++ @1178 DO ~IncrementGlobal("X3VieApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@500503)~ + Story3.10
 
CHAIN X3Vie25J Story3.8A
@1179
EXTERN X3Vie25J RestLate
 
CHAIN X3Vie25J Story3.8B
@1180
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story3.9
@1181
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J Story3.10
@1182
EXTERN X3Vie25J RestLate 


CHAIN X3Vie25J HealthHigh1 
@1183
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J HealthHighLove1 
@1184
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthHigh2
@1185
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J HealthHighLove2
@1186
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthLow1 
@1187
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J HealthLowLove1 
@1188
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthLowLove2 
@1189
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthyLove2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurtLove2

CHAIN X3Vie25J HealthLow2 
@1190
END 
IF ~HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy1
IF ~HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHealthy2
IF ~!HPPercentGT(Player1,54)RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt1
IF ~!HPPercentGT(Player1,54)!RandomNum(2,1)~ EXTERN X3Vie25J PlayerHurt2

CHAIN X3Vie25J PlayerHealthy1 
@1191
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)Global("X3Slept","LOCALS",2)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @159 + RestExit 

CHAIN X3Vie25J PlayerHealthy2 
@1192
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @159 + RestExit 

CHAIN X3Vie25J PlayerHealthyLove1 
@1193
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @162 + RestLove2


CHAIN X3Vie25J PlayerHealthyLove2 
@1194
END 
+~Global("X3Story","LOCALS",0)~+ @140 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @140 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)GlobalGT("X3VieTalk","LOCALS",10)~+ @140 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @162 + RestLove2


CHAIN X3Vie25J PlayerHurt1 
@1195
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @159 + RestExit 

CHAIN X3Vie25J PlayerHurt2 
@1196
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @159 + RestExit 

CHAIN X3Vie25J PlayerHurtLove1 
@1197
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @162 + RestLove2

CHAIN X3Vie25J PlayerHurtLove2 
@1198
END 
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 ++ @162 + RestLove2


CHAIN X3Vie25J advice8
@1368
END 
++ @1369 + advice8.1 
++ @1370 + advice8.1
++ @1371 + advice8.1

CHAIN X3Vie25J advice8.1
@1372
= @1373
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J advice9
@1374
END 
++ @1375 + advice9.1
++ @1376 + advice9.2
++ @1377 + advice9.2

CHAIN X3Vie25J advice9.1
@1378
EXTERN X3Vie25J advice9.2 

CHAIN X3Vie25J advice9.2
@1379
EXTERN X3Vie25J RestLate 

CHAIN X3Vie25J compliment
@1235
= @1236
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 +~Global("X3VieRomanceActive","GLOBAL",2)~+ @1099 + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1100 + RestExit 


CHAIN X3Vie25J Hug1
@1237
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Hug2
@1238
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Hug3
@1239
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Kiss4
IF ~RandomNum(3,3)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss1 
@1240
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss2 
@1241
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss3 
@1242
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J Kiss4 
@1243
END 
IF ~RandomNum(2,1)~ EXTERN X3Vie25J StayTalk
IF ~RandomNum(2,2)~ EXTERN X3Vie25J Sleep

CHAIN X3Vie25J StayTalk
@1244
END 
+~HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHigh2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthHighLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow1 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)!RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)!Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLow2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~!HPPercentGT(Myself,54)RandomNum(2,1)Global("X3VieRomanceActive","GLOBAL",2)~+ @1096 + HealthLowLove2 // Vary by health status. Emily gives health status, then checks the PC's health status, then returns to this dialogue branch.
+~Global("X3Story","LOCALS",0)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",1)~ + Story1 
+~Global("X3Story","LOCALS",1)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",2)~ + Story2 
+~Global("X3Story","LOCALS",2)~+ @1097 DO ~SetGlobal("X3Story","LOCALS",3)~ + Story3 
+~Global("X3Advice8","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_8%)~+ @1098 DO ~SetGlobal("X3Advice8","LOCALS",1)~ + advice8
+~Global("X3Advice9","LOCALS",0)Global("Chapter","GLOBAL",%bg2_chapter_9%)~+ @1098 DO ~SetGlobal("X3Advice9","LOCALS",1)~ + advice9 +~Global("X3VieRomanceActive","GLOBAL",2)~+ @1099 + RestLove2
+~!Global("X3VieRomanceActive","GLOBAL",2)~+ @1100 + RestExit 



CHAIN X3Vie25J BathYes 
@1245
EXTERN X3Vie25J BathJoin 

CHAIN X3Vie25J BathJoin
@1246
= @1247
END 
++ @1248 + BathJoin.1 
++ @1249 + BathJoin.2 
++ @1250 + BathJoin.3

CHAIN X3Vie25J BathJoin.1 
@1251
EXTERN X3Vie25J BathJoin.2

CHAIN X3Vie25J BathJoin.2 
@1252
END 
IF ~Gender(Player1,MALE)~ EXTERN X3Vie25J BathJoin.4M
IF ~!Gender(Player1,MALE)~ EXTERN X3Vie25J BathJoin.4F 

CHAIN X3Vie25J BathJoin.3
@1253
EXTERN X3Vie25J BathJoin.2

CHAIN X3Vie25J BathJoin.4M
@1254
= @1255
END 
++ @1256 + BathJoin.5 
++ @1257 + BathJoin.6
++ @1258 + BathJoin.7

CHAIN X3Vie25J BathJoin.4F
@1259
= @1255
END 
++ @1256 + BathJoin.5 
++ @1257 + BathJoin.6
++ @1258 + BathJoin.7

CHAIN X3Vie25J BathJoin.5 
@1260
EXTERN X3Vie25J BathJoin.6

CHAIN X3Vie25J BathJoin.6
@1261
 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ EXIT 
 
CHAIN X3Vie25J BathJoin.7
@1262
EXTERN X3Vie25J BathJoin.5


CHAIN X3Vie25J Sleep 
@1263
END 
+~Global("X3Slept","LOCALS",2)~+ @954 + Snuggle2
++ @955 + Sleep2 
++ @956 + Sleep2
+~!Global("X3Slept","LOCALS",2)~+ @957 + Snuggle 

CHAIN X3Vie25J RestLove2
@1264
END 
++ @1265 + Snuggle2
++ @1266 + Sleep2
++ @955 + Sleep2
++ @1267 + Snuggle 

CHAIN X3Vie25J Snuggle 
@1268
= @1269
END 
++ @7 DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~EXIT 
++ @1270 + Snuggle3
++ @1271 + Sleep

CHAIN X3Vie25J Snuggle2
@1272
= @1273
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Vie25J Snuggle3 
@1274
= @1275
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Vie25J Sleep5 
@1276
EXTERN X3Vie25J Sleep2 

CHAIN X3Vie25J Sleep2 
@1277
END 
IF ~Gender(Player1,FEMALE)~ EXTERN X3Vie25J Sleep3.F 
IF ~!Gender(Player1,FEMALE)~ EXTERN X3Vie25J Sleep3.M

CHAIN X3Vie25J Sleep3.F 
@1278
EXTERN X3Vie25J Sleep4

CHAIN X3Vie25J Sleep3.M
@1279
EXTERN X3Vie25J Sleep4

CHAIN X3Vie25J Sleep4
@1280
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~
EXIT 

CHAIN X3Vie25J RestExit 
@1281
DO ~SetGlobal("X3RestActivated","GLOBAL",0)RestParty()~ 
EXIT 

CHAIN X3Vie25J RestLate 
@1282
END 
IF ~Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J RestLove2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)~ EXTERN X3Vie25J RestExit

// Vienxay Outdoor1 
CHAIN X3Vie25J Outdoor1
@1338
= @1339
END
++ @13 + Talks 
++ @1340 + Offer
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @99 + KissOutdoor
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3Vie25J Offer 
@1342
END 
IF ~RandomNum(3,1)~ EXTERN X3Vie25J Offer1 
IF ~RandomNum(3,2)~ EXTERN X3Vie25J Offer2
IF ~!Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3Vie25J Offer3
IF ~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~ EXTERN X3Vie25J Offer4

CHAIN X3Vie25J Offer1 
@1343
END 
++ @992 + Offer1Y 
++ @1344 + OfferN 
++ @1345 + RestExit 

CHAIN X3Vie25J Offer2 
@1346
END 
++ @1347 + Offer2Y 
++ @1344 + OfferN 
++ @1348 + RestExit 

CHAIN X3Vie25J Offer4 
@1349
END 
++ @1350 + Offer4Y
++ @1351 + OfferN 

CHAIN X3Vie25J Offer4Y 
@1352
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3Vie25J KissOutdoor 
@1357
END 
++ @13 + Talks 
++ @1340 + Offer
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3Vie25J OfferN 
@1358
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3Vie25J Offer3
@1359
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3Vie25J Offer1Y 
@1353
= @1354
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

CHAIN X3Vie25J Offer2Y 
@1355
= @1356
END 
++ @13 + Talks 
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
++ @1341 + RestExit 

//VienxayOutdoor2 
CHAIN X3Vie25J Outdoor2
@1360
= @1361
END
++ @13 + Talks 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @1092 + Hug1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @1092 + Hug2 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @1092 + Hug3
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,1)~+ @99 + Kiss1 
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,2)~+ @99 + Kiss2  
+~Global("X3VieRomanceActive","GLOBAL",2)RandomNum(3,3)~+ @99 + Kiss3
+~Global("X3Compliment","LOCALS",0)OR(2)Global("X3VieRomanceActive","GLOBAL",2)Global("X3VieRomanceActive","GLOBAL",1)~+  @1093 DO ~SetGlobal("X3Compliment","LOCALS",1)~ + compliment
+~Global("X3VieRomanceActive","GLOBAL",2)~+ @1094 + Sleep5
++ @19 + RestExit 