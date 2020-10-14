//Watcher's Keep

I_C_T GORAPP1 14 X3EmiGORAPP1-14
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Wow. Most...people would not have that level of compassion. If you're sure about this, I'm more than ready.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORAPP1 16 X3EmiGORAPP1-16
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Wow. Most...people would not have such courage. If you're sure about this, I'm more than ready.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 



I_C_T GORDEMO 18 X3EmiGORDEMO 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I am more than glad to get away from this...thing! But not to lie to the knights. Reconsider, and take the high road.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T GORDEMO 1 X3EmiGORDEMO
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I feel so...unwell. Like my blood is revolting is revolting against my body. Whatever is here...is very terrible.~
END  


I_C_T GORCAR 15 X3EmiGORCAR 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Despite all he did, perhaps we should spare him.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, don't fall for his pathetic demeanor. It is best that we end him now.~
END 

I_C_T GORSUC01 7 X3EmiGORSUC01 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Is...this really necessary?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@106)~
END 

I_C_T GORCAMB 0 X3EmiGORCAMB0
== GORCAMB IF ~IsValidForPartyDialogue("X3Emi") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Except one of you...the foul stench of a Deva...or is it something else?~
== X3Emi25J ~I hope he isn't referring to me.~
== GORCAMB ~Ah, aasimar. Always a treat to meet one of you.~
END

I_C_T GORMAD1 39 X3EmiGormad1-39 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together, if his family is still around.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 40 X3EmiGormad1-40 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together, if his family is still around.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 41 X3EmiGormad1-41 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~You heal him just to do this? Maybe you're the mad one!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@106)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, please no!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~
== GORMAD1 ~I will get back to my family!~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Emi",LastTalkedToBy)~ EXTERN X3Emi25J Yackman
END

CHAIN X3Emi25J Yackman  
~Hey, don't worry, Yackman, or, whoever you are. I'm not a demon. The opposite, even. Except you know, generations of descents later from whatever celestial started it all.~
EXTERN GORMAD1 11

I_C_T GORCHR 0 X3EmiGORCHR0
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~A demon! No doubt we are about to be a part of trickery.~
END

I_C_T GORODR1 53 X3HelGORODR1-53
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~You practically tried to murder us. Do you think this can just be swept aside? I doubt Helm will ever forgive you.~
END 

I_C_T GORODR1 44 X3EmiGORODR1-44
== X3Emi25J IF ~IsValidForPartyDialogue("X3Vie")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~You lied to us. If things had gone as you intended, we would not be here at all.~
END 

//Hexxat Conflict 
CHAIN IF ~Global("X3EmiHexxatConflict","LOCALS",1)~ THEN X3Emi25J DornConflict 
~Right, I can tolerate a lot, really. But a vampire?! I'll not shame my family name and be in the presence of a monster! Nor my heritage, if I can help it.~
== HEXXA25J ~Have I offended you, Emily?~
== X3Emi25J ~You are a vampire. Undead. Evil. Your very presence is offending. I...I should destroy you, but I won't. Only for <CHARNAME>.~
END 
++ ~Trust me, Emily. We could use Hexxat's talents.~ + TrustH 
++ ~Look, I need everyone I can get. Surely you understand?~ + UnderstandH
++ ~Then if that's the way it will be, goodbye Hexxat.~ EXTERN HEXXA25J Go_Hexxat
++ ~Fine. Go, Emily.~ + Go_EmilyH

CHAIN X3Emi25J TrustH 
~We don't, <CHARNAME>. Believe me.~
EXTERN X3Emi25J DismissH

CHAIN X3Emi25J DismissH
~Listen to me, <CHARNAME>. You don't need evil to fight evil.~
END 
++ ~Then if that's the way it will be, goodbye Hexxat.~ EXTERN HEXXA25J Go_Hexxat
++ ~Fine. Go, Emily.~ + Go_EmilyH

CHAIN X3Emi25J UnderstandH 
~Me? No. Not one bit. I have no understanding at all how you can be okay with this.~
EXTERN X3Emi25J DismissH

CHAIN HEXXA25J Go_Hexxat 
~I see I am unwanted. Goodbye.~
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",0)SetGlobal("OHH_dornjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[1780.1145],0)~
EXIT 

CHAIN X3Emi25J Go_EmilyH 
~Fine... I will go.~
DO ~SetGlobal("X3EmiHexxatConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[1570.1388],0)~
== X3Emi25J IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~I thought we had something...but if you are choosing a vampire over what we have? Then I guess I was wrong.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 
// Dorn Conflict 
CHAIN IF ~Global("X3EmiDornConflict","LOCALS",1)~ THEN X3Emi25J DornConflict 
~Right, I can tolerate a lot, really. But the half-orc? I'll not shame my family name and be in the presence of a murderer. Nor my heritage, if I can help it.~
== Dorn25J ~If this aasimar does not dare to be in my presence, it is hardly a loss.~
== X3Emi25J ~It does not have to be my loss. Me, or him, <CHARNAME>.~
END 
++ ~Trust me, Emily. We could use his strength.~ + Trust 
++ ~Look, I need everyone I can get. Surely you understand?~ + Understand
++ ~Then if that's the way it will be, goodbye Dorn.~ EXTERN Dorn25J Go_Dorn 
++ ~Fine. Go, Emily.~ + Go_Emily

CHAIN X3Emi25J Trust 
~No. I can't. And I am suprised you think we need it.~
EXTERN Dorn25J Dismiss

CHAIN Dorn25J Dismiss
~Dismiss her. Her whining is becoming dull to listen to.~
END 
++ ~Then if that's the way it will be, goodbye Dorn.~ + Go_Dorn
++ ~Fine. Go, Emily.~ EXTERN X3Emi25J Go_Emily

CHAIN X3Emi25J Understand 
~Me? No. Not one bit. I have no understanding at all how you can be okay with this.~
EXTERN Dorn25J Dismiss

CHAIN Dorn25J Go_Dorn 
~I have no use for weaklings or fools, and you appear to welcome both.~
DO ~SetGlobal("X3EmiDornConflict","LOCALS",0)SetGlobal("OHH_dornjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[2000.1225],0)~
EXIT 

CHAIN X3Emi25J Go_Emily 
~Fine. I will go.~
DO ~SetGlobal("X3EmiDornConflict","LOCALS",2)SetGlobal("X3EmiKickedOut","LOCALS",0)LeaveParty()SetLeavePartyDialogueFile()ChangeAIScript("",DEFAULT)CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
MoveBetweenAreas("AR4500",[1570.1388],0)~
== X3Emi25J IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~I thought we had something...but if you are choosing a murderer over me? Then I guess I was wrong.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
EXIT 


CHAIN IF ~Global("X3miCraft","LOCALS",2)~ THEN X3Emi25J CraftingDone 
~And here you are. I hope it will serve us well.~
END 
IF ~Global("X3EmiBow","LOCALS",9)~ DO ~TakeItemReplace("X3Bow09","Bow09","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",10)~ DO ~TakeItemReplace("X3Bow10","Bow10","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",11)~ DO ~TakeItemReplace("X3Bow11","Bow11","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT
IF ~Global("X3EmiBow","LOCALS",12)~ DO ~TakeItemReplace("X3Bow12","Bow12","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",13)~ DO ~TakeItemReplace("X3Bow13","Bow13","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",14)~ DO ~TakeItemReplace("X3Bow14","Bow14","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiBow","LOCALS",15)~ DO ~TakeItemReplace("X3Bow15","Bow15","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",3)~ DO ~TakeItemReplace("X3XBow03","XBow03","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",6)~ DO ~TakeItemReplace("X3XBow06","XBow06","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",8)~ DO ~TakeItemReplace("X3XBow08","XBow08","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",10)~ DO ~TakeItemReplace("X3XBow10","XBow10","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 
IF ~Global("X3EmiXBow","LOCALS",13)~ DO ~TakeItemReplace("X3XBow13","XBow13","X3Emi")SetGlobal("X3miCraft","LOCALS",3)~ EXIT 

// Quest-Based Interjects 
I_C_T AMTGEN01 0 X3milyAMTGEN01H
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiHeir","GLOBAL",1)~ THEN ~Wait! I am Emily, the head of House Castilla. <CHARNAME> has done nothing against our nation, I can assure it.~
== AMTGEN01 ~You are a liar and a traitor to Tethyr, and may join them in their fate.~
END 

I_C_T AMTGEN01 0 X3milyAMTGEN01NH
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiHeir","GLOBAL",1)~ THEN ~Wait! I am Emily, formerly of House Castilla. <CHARNAME> has done nothing against our nation, I can assure it.~
== AMTGEN01 ~You are an exile of your own house. Your word means *nothing*. Worse, you may even be a traitor to Tethyr by being by their side.~
END 

//Pre-Saradush 

I_C_T SAREV25A 0 X3EmiSAREV25A
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiPartyBG1","GLOBAL",1)~ THEN ~Sarevok? What is he doing here?~
END

I_C_T SAREV25A 10 X3EmiSAREV25A
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We could hear him out. It's not like he can hurt us. Not in his present form, anyway.~
END


//Saradush Interjects 

A_T_T SARPROVF 0 ~!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)~ DO 0

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ EXTERN X3Emi25J SARPROVF-Care
END

CHAIN X3Emi25J SARPROVF-Care 
~Wait, what are y- no. You must be thinking there's more to this than the eye sees. Just be careful, <CHARNAME>.~
EXTERN SARPROVF 1


I_C_T SARKIS01 25 X3EmiSARKIS01-25
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I don't like this. We should not help this sick man at all.~
END

I_C_T SARBAR01 7 X3EmiSARBAR01-7
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Good for her. Especially in times like this. The city needs people like that.~
END 

I_C_T SARCNT01 14 X3EmiSARCNT01-14
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Your heart is as black as night, <CHARNAME>. I oppose you in this. Anyone who agrees, stand with me!~
DO ~LeaveParty()Enemy()~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~I do. I am sorry, <CHARNAME>, but I don't have the heart to watch you do this and then write this in my journal afterwards...I will fight you!~
DO ~LeaveParty()Enemy()~
== SARCNT01 ~Guards!~
END 

I_C_T SARTHF1 12 X3VieSARTHF1
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~What? <CHARNAME>, you know it w- Wait, don't read it!~
DO ~SetGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@106)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL_EVIL)~ THEN ~This will be sweet to observe.~
DO ~SetGlobal("X3VieApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@516)~
== SARTHF1 ~Freedom!~
END 

I_C_T ORPHAN1 1 X3EmiORPHAN1-1
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Even if we weren't going to do anything, there's no need to be so rough to the child.~
DO ~SetGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@106)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, surely that was not called for. The poor child.~
DO ~SetGlobal("X3RebAppChange","GLOBAL",-5)DisplayStringNoNameDlg(Player1,@406)~
== ORPHAN1 ~Eek! Help me, help me!~
END

I_C_T ORPHAN2 3 X3EmiORPHAN2-3
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You should find cover. There's no telling where or when another blast like that will hit.~
DO ~SetGlobal("X3EmiApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@116)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so glad we could keep that family together. I just hope they stay that way.~
DO ~SetGlobal("X3RebAppChange","GLOBAL",5)DisplayStringNoNameDlg(Player1,@416)~
== ORPHAN2 ~Thank you for everything!~
END
//Player has to be evil for this, but still adding this in...
I_C_T SARTEM01 16 X3EmiSARTEM01-16
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And what now, we'll...shoot her in the back? Think before you follow through with this.~
DO ~SetGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@106)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We don't have to hurt her. Maybe there's another way in, isntead.~
DO ~SetGlobal("X3EmiApp","GLOBAL",-4)DisplayStringNoNameDlg(Player1,@406)~
== SARTEM01 ~Begone from this place. I will give you no aid.~
END

I_C_T SARBUL05 2 X3EmiSarbul05-2 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What are you doing, encouraging them like that? The elves did nothing to you!~
DO ~SetGlobal("X3EmiApp","GLOBAL",-5)DisplayStringNoNameDlg(Player1,@106)~
END


I_C_T SARMEL01 7 X3EmiSARMEL01
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I do recognize the buildings. This is definitely Saradush, minus the fighting and screaming.~
END

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3EmiRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Emi") Gender(Player1,MALE)~  EXTERN X3Emi25J SarPro_No 
END 

CHAIN X3Emi25J SarPro_No 
~<CHARNAME>. This? Is not that funny. What are you doing?~
END 
++ ~Ah, fear not, Emily, her prices are too high anyway.~ EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ ~I'm interested and going to take up her offer, actually.~ EXTERN X3Emi25J SarPro_Break 
++ ~Don't worry, love. I only have eyes for you.~ EXTERN X3Emi25J SarPro_Yes 

CHAIN X3Emi25J SarPro_Yes 
~I'd hope so! Sorry miss, but he isn't interested. But! We can try to help you with gold or some other boon?~
EXTERN SARPRO01 3

CHAIN X3Emi25J SarPro_Break 
~Okay. If you want to throw away everything we had...do it. Be a jerk. But I'm not letting you crawl back to me ever. Know that well.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)SetGlobal("X3EmiAppChange","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@109)~
EXTERN SARPRO01 12 

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiRomanceActive","GLOBAL",2)~ + ~Tell me about Emily.~ + X3EmiVoloBio1
+ ~IsValidForPartyDialogue("X3Emi")Global("X3EmiRomanceActive","GLOBAL",2)~ + ~Tell me about Emily.~ + X3EmiVoloBio2
END

CHAIN SARVOLO X3EmiVoloBio1
~The aasimar who once did not know her own identity, Emily has become a heroine to the common people, her enchanted arrows quickly able to defend them from threats around them. When people need her, their guardian angel will come.~
EXTERN X3Emi25J X3EmiVoloBio


CHAIN SARVOLO X3EmiVoloBio2
~Hand in hand with her beloved <CHARNAME>, Emily has become a figure of awe to the common people, the commoner's guardian angel against dark and evil threats. Where the wicked dare to go, her arrows will see that evil never triumphs.~
EXTERN X3Emi25J X3EmiVoloBio

CHAIN X3Emi25J X3EmiVoloBio
~I am honored, sir bard. I'll try to keep up your high image of me!~
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGKAR01 10 X3EmiHGKAR01-10
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Are you that mad for just a few bit of gold and trinkets?~
DO ~SetGlobal("X3EmiApp","GLOBAL",-9)DisplayStringNoNameDlg(Player1,@109)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, we don't need his gold or things, don't hurt him!~
DO ~SetGlobal("X3RebApp","GLOBAL",-7)DisplayStringNoNameDlg(Player1,@409)~
== HGKAR01 ~Aaaah!~
END

I_C_T YAGCON 5 X3EmiYAGCON-5
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What money or goods do you think she'll even have? Let's either release her, or let her be if you're not sure about her.~
DO ~SetGlobal("X3EmiApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@103)~
END

// Amkethran and Beyond 

I_C_T BALTH 6 X3HelBalth6
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~He's right about them not being far...it's doubtful, but maybe this will change the crown's opinion on us.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, don't be naive. Until this is completely over, your precious kingdom is no friend of ours.~
END

I_C_T BALTH 20 X3VieBalth20
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~You know, if people just said their intentions more plainly, this would be so much easier.~
END

I_C_T AMMAYOR 5 X3EmiAMMAYOR-5
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Here's a thought, we could all just see the hungry seen to rather than the thieves doing what these mercenaries should have done for them.~
END

I_C_T AMMERC04 2 X3EmiAMMERC04
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I hate this. I hate watching a good person die because leaders do nothing.~
DO ~SetGlobal("X3EmiApp","GLOBAL",-7)DisplayStringNoNameDlg(Player1,@109)~
END

I_C_T AMASANA 3 X3RebAMASANA-3
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I'm glad it ended this way. Do take care of yourself now, hmm?~
DO ~SetGlobal("X3EmiApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@116)~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Be careful, child. I know you are brave, but your father would dearly miss you if you were lost.~
DO ~SetGlobal("X3RebApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@416)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Steal better next time. Noble deaths serve nothing.~
== AMASANA ~I will heed your advice.~
END

I_C_T AMCLER01 8 X3EmiAMCLER01-8
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Hel")~ THEN ~You have no idea what this means to me, <CHARNAME>. Thank you for doing this!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@519)~ 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")~ THEN ~Hrmph. They can help themselves. Our gold is our gold for a reason.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@506)~ 
== AMCLER01 ~Farewell!~
END 

I_C_T MARLOWE 15 X3EmiMARLOWE15
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~What are you doing, <CHARNAME>?!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@109)~ 
== MARLOWE ~Help me!~
END 

I_C_T AMSMITH 16 X3EmiAMSMITH-16
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~And I thought I was weird.~
END 

I_C_T MARLOWE 51 X3EmiMARLOWE-51
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Just make the most of this second chance. If it were anyone else, you would have a doomed man.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~ 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I hope he learned from this. Your child never deserves the weight of your own mistakes.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~ 
== MARLOWE ~I will never forget this!~
END 

I_C_T MARLOWE 52 X3EmiMARLOWE-52 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Really <CHARNAME>? What do we even need an innocent's soul for? Sometimes, I wonder about the company I keep.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@109)~ 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is awful. Why do we need it? Why can't we just bring her back?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@409)~ 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")~ THEN ~He deserved all of this. And this item may have power. A worthwhile opportunity.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
== MARLOWE ~I hope to never meet any of you again!~
END 

I_C_T BAZEYE01 22 X3EmiBAZEYE22
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Wow. The perfect excuse: I'm just following orders. I don't even know what to say to that.~
END 

I_C_T BAZPAT01 4 X3EmiBAZPAT01
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~So we...saved them to fight them? Where is your logic?!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~ 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I dread the passages that I have to write sometimes.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~ 
== BAZPAT01 ~Attack!~
END 

I_C_T BAZDRA03 6 X3EmiBAZDRA03
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Wait, we could just-~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@103)~ 
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nay. Battle is the most glorious form of respect for this wyrm.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ 
== BAZDRA03 ~You or I...one...shall...die.~
END 


// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3EmiSolarFriend1
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~I'm going to miss this. Miss you, even, whatever you decide. God or mortal, I can't think of a better <PRO_MANWOMAN> to be beside all this time. It's been a blast, and not the bad kind either. Thank you.~
END

// romanced, Emily and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Emi")Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarPers","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarPers
END

CHAIN X3Emi25J X3EmiSolarPers
~Wow. So. This is...big. Very big.~
= ~Well, I dreaded this. I knew about this. And I am still terrified. I know you are going to choose to go, I mean, who wouldn't? This is amazing responsibility. But at least you are the best man for it.~
END
++ ~I don't know what I should do.~ + FinalChoice.1
++ ~I can't imagine leaving you, Emily. I love you.~ + FinalChoice.2
++ ~I do want to go forth with my destiny.~ + FinalChoice.1

CHAIN X3Emi25J FinalChoice.1 
~It's... the best decision to ascend, I think. No one gets this opportunity twice. And almost no one gets it once. What kind of person would I be to say turn away from that?~
= ~I don't want you, or our child to hold you back and then have you be bitter at me for the rest of your life. And yet...~
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Emi25J FinalChoice.3
IF ~!PartyHasItem("X3RingE")Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.6

CHAIN X3Emi25J FinalChoice.3
~You asked me to be your wife. And if that makes you happy, I would brim with joy if you chose to stay.~
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.4
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.6

CHAIN X3Emi25J FinalChoice.4
~I think You'll adjust fine to life at th estate with me. I think you would make great lord, even. A great father, too.~
EXTERN X3Emi25J FinalChoice.5 

CHAIN X3Emi25J FinalChoice.5
~But...this is your decision. Not mine. I've made my case! I...well, I hope you choose me.~
END
COPY_TRANS FINSOL01 27

CHAIN X3Emi25J FinalChoice.6
~Our next adventures would be wonderful, not compelled to one direction. Though soon after it would be parenthood, you know. Boring compared to a god but...I think after all of this? Boring might be better for us both.~
END
COPY_TRANS FINSOL01 27

CHAIN X3Emi25J FinalChoice.2 
~And I can't imagine leaving you either. Even if I'm not leaving you, you're leaving me. Sorry, I'll try not to be quirky for one second.~
END 
IF ~PartyHasItem("X3RingE")~ EXTERN X3Emi25J FinalChoice.3
IF ~!PartyHasItem("X3RingE")Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.4
IF ~!PartyHasItem("X3RingE")!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FinalChoice.5




// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarLeave","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarLeave","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarLeave","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarLeave
END

CHAIN X3Emi25J X3EmiSolarLeave
~Well...this hurts, but, well this hurts. Goodbye, <CHARNAME>. Our child will know everything about you. About all the good you did, and...how you left to do even greater good beyond our own realm, and that when they look up at the sky, you are smiling down, with love. I promise.~
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Emi") Global("X3EmiRomanceActive","GLOBAL",2) Global("X3EmiSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3EmiSolarStay","GLOBAL",1)~ EXTERN X3Emi25J X3EmiSolarStay
END

CHAIN X3Emi25J X3EmiSolarStay
~Ha. Haha. Someone wake me up. <CHARNAME> is staying?! Am I crazy?~
END
++ ~Did you expect anything less of me?~ EXTERN X3Emi25J X3EmiSolarStay1.1
++ ~Only a little. But I love you, Emily. I'm not letting you go.~ EXTERN X3Emi25J X3EmiSolarStay1.1
++ ~I can't let you get rid of me that easily.~ EXTERN X3Emi25J X3EmiSolarStay1.1

CHAIN X3Emi25J X3EmiSolarStay1.1
~(She embraces you tightly, peppering you with kisses on your cheek and face.)~
END
IF ~PartyHasItem("X3RingE")~ EXTERN X3Emi25J StayChoice.1
IF ~!PartyHasItem("X3RingE")Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J StayChoice.2
IF ~!PartyHasItem("X3RingE")!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J StayChoice.3

CHAIN X3Emi25J StayChoice.1 
~Right, we have a lot of things to plan. Starting with a wedding! Ha. You thought this adventure was scary, just *wait*. I'm kidding! I can't wait.~
END 
COPY_TRANS FINSOL01 32

CHAIN X3Emi25J StayChoice.2
~I can't wait to go home with you. I don't think I could have found a more worthy man on my travels.~
END 
COPY_TRANS FINSOL01 32

CHAIN X3Emi25J StayChoice.3
~I can't wait to hit the road with you. It will be nice to have no idea where we are going. And nice to annoy you asking where we are going, too. Still, I promise you'll never regret making this decision.~
END 
COPY_TRANS FINSOL01 32

//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25J engagement 
~Haha. Ha...oh, you're not laughing? You really mean to give this to me?~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~If you will have me, yes.~ + engagement_yes 
++ ~I have been wanting to ask for a while. Will you marry me, Emily?~ + engagement_yes 
++ ~Well, if you are having doubts...~ + engagement_doubts

CHAIN X3Emi25J engagement_yes 
~Yes. Double yes. You don't even need to ask. Well, you do, but...you know what I mean!~
EXTERN X3Emi25J engagement_yes2 

CHAIN X3Emi25J engagement_doubts
~Doubts that this is real? Yes. Let me pinch my cheeks...okay, definitely real. Yes, <CHARNAME>, I'll marry you.~
EXTERN X3Emi25J engagement_yes2 

CHAIN X3Emi25J engagement_yes2 
~This is so great. Thank you, <CHARNAME>. You won't regret this. I'll make sure of it!~
DO ~TransformItem("X3ERING","X3RINGE")~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~How beautiful. I will have to make a song about this moment.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh, now the mutt will dilute her blood even more. I feel the need to vomit.~
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3Emi25J engagement_auto_fail 
~<CHARNAME>? Is this a joke? I'm trying to figure out when to laugh.~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~Oh, I just figured it would look nice.~ + eaf.1 
++ ~I want to marry you, Emily.~ + eaf.2
++ ~I was hoping you could unlock it's magic properties.~ + eaf.4

CHAIN X3Emi25J eaf.1 
~Well, I can't take it. It would be scandalous to wear an engagement ring when I don't care for you that way.~
EXTERN X3Emi25J eaf.3 

CHAIN X3Emi25J eaf.2 
~Wow. How do I say this? Sorry, but no. Or uh, haha? I'm still not sure if this is a joke or not.~
EXTERN X3Emi25J eaf.3

CHAIN X3Emi25J eaf.4 
~I don't think anything my hands touch make things, magic, <CHARNAME>, sorry! I wish they did, though.~
EXTERN X3Emi25J eaf.3

CHAIN X3Emi25J eaf.3
~So, here you go. Save it for the right person, hmm?~
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN ~Like Vienxay. If you were to actually take any of this seriously.~
= IF ~Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~Hint: She's less than four feet tall and has a cute bow in her hair.~
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Like Kale! If you were to actually take any of this seriously.~
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 


// Friendship Talk1 
CHAIN IF ~Global("X3EmiToBTalk","LOCALS",2)~ THEN X3Emi25J FriendshipTalk1 
~Things...are getting really bad in Tethyr, <CHARNAME>. This is worse than the civil war.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiToBTalk","LOCALS",1)~
END 
++ ~That war came to an end. So will this one.~ + FT.2
++ ~This could be happening anywhere where Bhaalspawn are.~ + FT.1 
++ ~It's not everywhere, Emily. Don't worry.~ + FT.1 

CHAIN X3Emi25J FT.1
~Maybe it is just where the Bhaalspawn are. But still...people are dying. People are hurt, and losing their homes.~
EXTERN X3Emi25J FT.3 

CHAIN X3Emi25J FT.2 
~But at what cost? How many people are going to die? How many are going to lose their loved ones, their families?~
EXTERN X3Emi25J FT.3 

CHAIN X3Emi25J FT.3
~I thought things were bad in Suldanessar. But the scale of this is getting horrible.~
END 
++ ~There isn't anything we can do about it, Emily, except move to my destiny.~ + FT.5
++ ~I will help who I can, Emily. But many will beyond saving.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT.5
++ ~So? People die when there is fighting. It is the way of the world.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + FT.6

CHAIN X3Emi25J FT.5
~And I hate that. I don't blame you, <CHARNAME>, but your father. If he saw what was happening, he would be celebrating for sure.~
EXTERN X3Emi25J FT.7

CHAIN X3Emi25J FT.6
~How can you say that? We do *not* have to kill eachother. We can have peace. We can have understanding. This is just Bhaal's work. Even if he didn't come back, all of this murder sure suits him.~
EXTERN X3Emi25J FT.7

CHAIN X3Emi25J FT.7
~Nevermind me. I 'm probably like one of the screeching old ladies back at the estate when one of us walked about with your clothes on wrong. You have enough weight on your shoulders.~
END 
++ ~You are just worried about your home, Emily. It's understandable.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT.8
++ ~Definitely accurate metaphor.~ + FT.9
++ ~Let's just move on, shall we?~ + FT.10

CHAIN X3Emi25J FT.10
~Right. Let's just go.~
EXIT 

CHAIN X3Emi25J FT.9
~Well, I brought that on myself, didn't I? Let's just get going.~
EXIT 

CHAIN X3Emi25J FT.8
~I am. A lot. Tethyr has gotten through so much. It doesn't need more. I hope this ends soon.~
EXIT 

// Friendship Talk2 
CHAIN IF ~Global("X3EmiToBTalk","LOCALS",4)~ THEN X3Emi25J FriendshipTalk2 
~I can't believe it. The crown labels you a threat, someone to execute?! Why has no one done anything?~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiToBTalk","LOCALS",1)~
END 
++ ~They are afraid of the Bhaalspawn, Emily. With what has been happening, they have every right to be.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT2.1 
++ ~Ah, so even the crown respects my power? I like this.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + FT2.2 
++ ~Calm down, Emily. Why is this such an issue? We survived just fine.~ + FT2.3

CHAIN X3Emi25J FT2.1 
~No. They do with those who are attacking cities, murdering innocent people. They can get *those* Bhaalspawn to justice. Not you.~
EXTERN X3Emi25J FT2.3 

CHAIN X3Emi25J FT2.2 
~Why do you take that from what I am saying? And people say I am quirky.~
EXTERN X3Emi25J FT2.3 

CHAIN X3Emi25J FT2.3
~I...admire, the queen, <CHARNAME>. Maybe it is one of her advisors influencing her, or all the death and pressure...but I feel like I lost a hero.~
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FT2.Heir 
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J FT2.NotHeir 

CHAIN X3Emi25J FT2.Heir 
~I don't care if they look at my house differently since I am its heir. I am going to go with you all the way.~
END 
++ ~You don't have to lose everything for me, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT2.7
++ ~Good. I need your loyalty.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + FT2.4
++ ~A few more of these soldiers defeated and I am sure they will stop trying.~ + FT2.5

CHAIN X3Emi25J FT2.NotHeir 
~I'm not heir anyway. I don't care if Tethyr looks at me worse for helping you. I'll be by your side.~
END 
++ ~You don't have to lose everything for me, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + FT2.7
++ ~Good. I need your loyalty.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + FT2.4
++ ~A few more of these soldiers defeated and I am sure they will stop trying.~ + FT2.5

CHAIN X3Emi25J FT2.7
~It wouldn't matter even if I went somewhere else. I'm a bit too deep, now.~
EXTERN X3Emi25J FT2.6

CHAIN X3Emi25J FT2.4
~Right. Loyalty. That is all that you are worried about.~
EXTERN X3Emi25J FT2.6

CHAIN X3Emi25J FT2.5
~And I don't want that. They're just doing what they are told. It's why nobles, especially those who advise the crown, need to think.~
EXTERN X3Emi25J FT2.6

CHAIN X3Emi25J FT2.6
~I just hope we can end this soon, <CHARNAME>. If not for your sake, for the sake of the country.~
EXIT 

//Friendship Talk #3

CHAIN IF ~Global("X3EmiToBTalk","LOCALS",6)~ THEN X3Emi25J FriendshipTalk3
~This is...odd to admit, but in our long, long travels, well at least since leaving Baldur's Gate, I've wished I could meet another aasimar. It's oddly lonely.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiToBTalk","LOCALS",1)~
END 
++ ~Lonely? You have the rest of us, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T3.1
++ ~Your kind are rare. It's not suprising you haven't met another.~ + T3.2
++ ~Why do you want to meet another one?~  + T3.2
++ ~This isn't the time for idle chatter.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T3.X 

CHAIN X3Emi25J T3.1
~Oh, I didn't mean to imply that I didn't appreciate my present company! I do. I truly do.~
EXTERN X3Emi25J T3.2 

CHAIN X3Emi25J T3.2 
~It's just...I want to know I am being a good aasimar. And I don't. I feel...like I'm short of that. When I found out, I thought everything was supposed to be different.~
= ~It's kind of made the path sometimes uncertain even for myself. When I heard of Caelar I thought she could be that guide, but that turned out poorly.~
= ~I guess I am just looking for another's reaffirmation that my path is the right one. I'm still scared sometimes that...it may not be.~
END 
++ ~I don't think anyone can really say what makes a good aasimar.~ + T3.3 
++ ~I think you are overthinking it. Be a good person. That's what matters.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T3.3 
++ ~Who cares what others think? Just act and do as you please.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + T3.4

CHAIN X3Emi25J T3.3 
~You are right, I guess. I just...I just really hope that I am doing things right. There has been so much death and bloodshed on this path with you. It definitely shakes me, a little.~
EXTERN X3Emi25J T3.5 

CHAIN X3Emi25J T3.4 
~Oh you know that I *do* care, <CHARNAME>. It isn't me to be so disregarding.~
EXTERN X3Emi25J T3.5 

CHAIN X3Emi25J T3.5
~I just...I just really hope that I am doing things right. There has been so much death and bloodshed on this path with you. It definitely shakes me, a little.~
END 
++ ~What is right is one thing. But what is necessary is the reality of what we should put our foot behind.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T3.6
++ ~We can't have faith without a little doubt.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + T3.7
++ ~You've come all this way. Don't doubt me now.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + T3.8

CHAIN X3Emi25J T3.6
~You and I certainly don't have the same beliefs, <CHARNAME>. But I guess you are trying to help. Thank you, I suppose.~
EXTERN X3Emi25J T3.9

CHAIN X3Emi25J T3.7
~That...well that seems quite true, doesn't it?~
EXTERN X3Emi25J T3.9

CHAIN X3Emi25J T3.8
~I am still following you, <CHARNAME>. But doubting? I think that's too much to ask. But I'll still be here.~
EXTERN X3Emi25J T3.9

CHAIN X3Emi25J T3.9
~Thank you for listening, as silly as this is, this was nice. But let's get back to our ritual of fighting for our lives, hmm?~
EXIT 


CHAIN X3Emi25J T3.X 
~Hrm, but do we really have anytime perfect for idle chatter, truly? But, as you say, leader.~
EXIT 

// Romance Talks 
CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",2)~ THEN X3Emi25J LoveTalk1 
~I am becoming worried for my homeland, my love. People are already dying and suffering from the atrocities and chaos.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ ~That is the cost of this war between Bhaalspawn.~ + 1.2
++ ~We will help who we can, but my priority is to fulfill my destiny.~ + 1.1 
++ ~We can't do anything talking about it. Let's move.~ + 1.X 

CHAIN X3Emi25J 1.X 
~Right. I'm following.~
EXIT 

CHAIN X3Emi25J 1.1 
~I understand, even if your whole ordeal makes me nervous.~
EXTERN X3Emi25J 1.2

CHAIN X3Emi25J 1.2
~I thought it would stay between Bhaalspawn. But I guess it has always sprawled and taken in so many lives with it.~
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 1.Heir 
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 1.NotHeir 

CHAIN X3Emi25J 1.Heir 
~I hope the estate is okay. I feel guilty I am not there to protect them.~
END 
++ ~How far away is the estate from here? Perhaps we could check on them.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.Heir1
++ ~The best way to help them is to help me.~ + 1.4
++ ~I am sure they are strong enough to protect themselves.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.4 

CHAIN X3Emi25J 1.NotHeir 
~I hope the estate is okay. Even if I am no longer officially part of the family, there are people who I loved there.~
END 
++ ~How far away is the estate from here? Perhaps we could check on them.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.NotHeir1
++ ~Your brother cast you out, and your father let it happen. Don't even give them a thought.~  + 1.NotHeir2
++ ~I am sure they are strong enough to protect themselves.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 1.4

CHAIN X3Emi25J 1.NotHeir1 
~Uh, even if I were allowed to set foot there, which I doubt, it's all the way on the otherside of Tethyr, near Brost.~
EXTERN X3Emi25J 1.3

CHAIN X3Emi25J 1.Heir1 
~I am afraid the estate is a bit far. It's on the outskirts of Brost, which is all the way on the other side of Tethyr.~
EXTERN X3Emi25J 1.3

CHAIN X3Emi25J 1.NotHeir2 
~I understand my father letting it happen. My anger will never be at him. And being banished doesn't dissipate my love.~
= ~Still, home is too far for a check in.~
END 
++ ~The troubles seem to center around this part of Tethyr for now. Perhaps your home is safe anyway.~ + 1.5
++ ~Things won't be getting any better anytime soon. Just try to stay strong.~ + 1.6 
++ ~I am here for you Emily. If you ever need a shoulder, lean on me.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 1.7

CHAIN X3Emi25J 1.4
~I know you are right. And ultimately I want to continue to stay by your side, my love.~
= ~I just wish...things were better, is all.~
END 
++ ~The troubles seem to center around this part of Tethyr for now. Perhaps your home is safe anyway.~ + 1.5
++ ~Things won't be getting any better anytime soon. Just try to stay strong.~ + 1.6 
++ ~I am here for you Emily. If you ever need a shoulder, mine is here for you.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 1.7

CHAIN X3Emi25J 1.3
~A bit too far for a check in, I am afraid. But thank you for the thought.~
END 
++ ~The troubles seem to center around this part of Tethyr for now. Perhaps your home is safe anyway.~ + 1.5
++ ~Things won't be getting any better anytime soon. Just try to stay strong.~ + 1.6 
++ ~I am here for you Emily. If you ever need a shoulder, mine is here for you.~ + 1.7

CHAIN X3Emi25J 1.5 
~Maybe. I guess I won't know for sure for a while. I'll just have to hope and pray.~
EXIT 

CHAIN X3Emi25J 1.6
~I will try. Just don't mind if I lean on you sometimes. Your strength helps keep me standing.~
EXIT 

CHAIN X3Emi25J 1.7
~I know. I can always count on that, my love. And I'm thankful for that.~
EXIT 

//Emily Wraith Talk 
// Emily's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3EmiRomanceActive","GLOBAL",2) InParty("X3Emi") See("X3Emi")~ EXTERN HGWRA01 X3EmiWraith1
END

CHAIN HGWRA01 X3EmiWraith1
~What of the inevitable pain you must give to the one you love? Your beloved aasimar, Emily?~ [HGWRA108]
DO ~SetGlobal("X3LovedOne","GLOBAL",1)~
== X3Emi25J ~Well, it has been painful sometimes. But every moment has been worth it.~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3EW1")~ EXIT
END

BEGIN X3ELOVE 

CHAIN 
IF ~Global("X3EmiWraithSpirit1","GLOBAL",0)~ THEN X3ELOVE X3EmiWraithSpirit1
~Emily, oh Emily...~
DO ~SetGlobal("X3EmiWraithSpirit1","GLOBAL",1)~
== X3Emi25J ~Mother...mother! Oh goodness, this is...you're here!~
== X3ELOVE ~I...I am dead, Emily. By my own blood. Betrayed. ~
== X3Emi25J ~I...I'm sorry, mother.~
== X3ELOVE ~You should be. Because it was you, my Emily. My beloved, treacherous Emily.~
== X3Emi25J ~That...isn't...no-~
== X3ELOVE ~You have scorned your own bloodline, turned from your kind, and you even taint yourself  with the bhaalspawn. With evil!~
== X3Emi25J ~What? That's not true! <CHARNAME> is a good man. Please, mother, believe me! I know I'm not...the ideal aasimar, but I try from your example.~
== X3ELOVE ~Is it the pleasure of sleeping with them that blinds you? You should have never been gifted with my celestial lineage. Unworthy! Ungrateful! Betrayer!~
== X3Emi25J ~Stop this, please. Mother, believe me! Please, stop, Please!~ 
END 
++ ~Stop it! She's not responsible for what happened to you!~ EXTERN HGWRA01 25
++ ~Stop this, Gorion! Emily doesn't deserve this!~ EXTERN HGWRA01 25
++ ~Enough! I won't allow this to continue!~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~Don't believe anything you hear, Emily, this is a lie!~ EXTERN HGWRA01 25 


CHAIN IF ~Global("X3EmiWraithTalk","LOCALS",1)~ THEN X3Emi25J LoveTalkWraith
~Her death...it was really my fault.~
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)SetGlobal("X3EmiWraithTalk","LOCALS",2)~
END 
++ ~Don't say that, Emily. You don't even know if she was dead.~ + W.1 
++ ~It was a lie, Emily. You know this.~ + W.1 
++ ~It was, but there's no reason to dwell on it now.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + W.2

CHAIN X3Emi25J W.1
~I don't know. How can you be so sure it wasn't all a lie?~
END 
++ ~We can't. You just have to trust yourself.~ + W.2 
++ ~Because it was a *shade* Emily. Do not beat yourself up!~ + W.2
++ ~If you want to mope about it, then fine. But I'm not going to listen.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + W.3

CHAIN X3Emi25J W.2
~I feel so guilty. I am traveling with evil and I'm just...turning a blind eye to it. Hoping that everything still goes swell somehow.~
= ~I'm not fooling myself, am I?~
END 
++ ~You're not. You've witnessed me for so long. Don't doubt yourself now.~ + W.5
++ ~Would you truly love me if I was evil, Emily?~ + W.5 
++ ~Sometimes we have to do things that we don't like to make it through this time. We just have no choice.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + W.6

CHAIN X3Emi25J W.3
~Maybe we are all really going to lose our way, then. I don't even know what I am doing here anymore.~
END 
++ ~You are here to support me. Don't fall apart on me now.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + W.4 
++ ~Then leave. Leave if that is what you want to do.~  + W.X 
++ ~We are trying to stop this, Emily. We're trying to make things better.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + W.5

CHAIN X3Emi25J W.4 
~I will try, <CHARNAME>. I am just...still so spooked.~
EXTERN X3Emi25J W.5 

CHAIN X3Emi25J W.5 
~You are right, I am letting ghosts get to me. I'm either crazy or...crazy.~
EXTERN X3Emi25J W.7

CHAIN X3Emi25J W.7
~Let's just...keep moving, before my doubts return.~
EXIT 

CHAIN X3Emi25J W.6
~That just makes my mother more right. It...disturbs me. It makes me worried for the future.~
EXTERN X3Emi25J W.7

CHAIN X3Emi25J W.X  
~I...think I will, then. This is...so difficult to say, but...goodbye, <CHARNAME>.~
DO ~EscapeArea()~
EXIT 

// Saradush at rest. 
CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",4)~ THEN X3Emi25J LoveTalk2 
~I still can't believe it. Saradush...in ruins. The bodies...the blood...the people. My fellow countrymen and women...it's so hard to believe.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ ~It happened. I'm suprised you're not used to this by now.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 2.1 
++ ~It won't stop until there's only one of us left.~ + 2.1
++ ~Be strong, my love. It is just one of many tests we'll have to get through.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.1
++ ~There's nothing to be done. Let's keep moving.~ + 2.1 

CHAIN X3Emi25J 2.1 
~How are you keeping together at all? Why are you? I want to cry. I want to find a wall to lean against and just sob right now like a pathetic baby.~
END 
++ ~Because this is the grim reality right now. This is just how life is.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 2.2 
++ ~Come here, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.4
++ ~I feel for every one of them too. But the only way we can do anything is to keep going.~ + 2.2 

CHAIN X3Emi25J 2.2 
~It just makes me angry. Despite stopping Yaga-shura...Saradush still fell.~
END 
++ ~I wish we were faster as well. But we can't go back.~ + 2.3 
++ ~(Move to hold her in a hug.)~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.4
++ ~Take out that anger on those who are responsible, then. That is the best thing you can do.~ + 2.3 

CHAIN X3Emi25J 2.3
~Yaga-shura did fall, and paid for everything he did. it just...feels so hollow.~
EXTERN X3Emi25J 2.5

CHAIN X3Emi25J 2.4
~(You hold her tight as she leans against you for comfort.~
= ~Thank you. I really needed that.~
EXTERN X3Emi25J 2.5

CHAIN X3Emi25J 2.5
~I am just so...distressed lately. I don't know what's going to happen with your destiny. I don't know what's going to happen to my homeland.~
= ~I just wish things would settle down so I can take a breathe.~
END 
++ ~We're still here. I think we can take a bit of solace in that.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.6
++ ~Excessive worrying won't do any of us good.~ + 2.6 
++ ~They'll only settle down once they've been handled. We should keep moving to see that done.~ + 2.6 

CHAIN X3Emi25J 2.6
~I guess you are right. I am sorry for being such a wreck as of late. I just wish...well, I wish for things that I can't really have.~
= ~But...I think there is something I might ask of you now that might get me a little more relaxed, if you are up for it.~
END 
++ ~Oh, I definitely can gladly give this favor.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 2.7
++ ~Well, if it's a bit of wine, I think I have something.~ + 2.8
++ ~Wait, shouldn't we get some rest?~ + 2.9
 
CHAIN X3Emi25J 2.8
~That sounds delicious, but I'm thinking of something...else right now.~
EXTERN X3Emi25J 2.10

CHAIN X3Emi25J 2.7
~Mmm. Good.~
EXTERN X3Emi25J 2.10

CHAIN X3Emi25J 2.9 
~We will. Once I'm done with you.~
EXTERN X3Emi25J 2.10

CHAIN X3Emi25J 2.10 
~(Emily tugs you to the bedroll, excitedly wrapping herself around you as she moves to shed your clothes, grinning mischeviously.)~
= ~You <CHARNAME>. It is always you. Always.~
DO ~RestParty()~
EXIT 
// Wake Up Post LoveTalk#2
CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",6)~ THEN X3Emi25J LoveTalk3 
~Everytime I wake up next to you, I just like to watch your face. You have such a nice nose. And noses aren't often pretty. And eyelashes too.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ ~Nose and eyelashes?~ + 3.1
++ ~It's not fair to admire me when I can't return the favor.~ + 3.2 
++ ~As nice as that is, we should get going.~ + 3.5

CHAIN X3Emi25J 3.1 
~Ha, yes. I know, weird! But it's true.~
EXTERN X3Emi25J 3.3

CHAIN X3Emi25J 3.2 
~Well, if you did that we wouldn't get anything done. At all.~
EXTERN X3Emi25J 3.3 

CHAIN X3Emi25J 3.3 
~Everytime I look at you, I still get a pit of butterflies. There's this joy and pit of anxiety, and then when you pull me close, I feel so rewarded.~
= ~I don't know if I deserve it, if such things can be weighed about that. But despite everything, you make me happy.~
END 
++ ~A pit of butterflies? That's cute.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 3.4 
++ ~I love you too, Emily.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 3.6 
++ ~I'm glad, though I am remiss that we must get moving.~ + 3.5

CHAIN X3Emi25J 3.4 
~Right? I'm glad you find it appealing and not weird!~
EXTERN X3Emi25J 3.5 

CHAIN X3Emi25J 3.6 
~Ha, I guess that's how you wrap up what I am saying in just three words. But, yes, I love you.~
EXTERN X3Emi25J 3.5 

CHAIN X3Emi25J 3.5
~Right, the world won't just pause forever, and the others I think are stirring. Still, I can't wait for our next rest already.~
EXIT 
//Crown 
CHAIN IF ~Global("X3EmiToBLoveCrown","LOCALS",2)~ THEN X3Emi25J LoveTalk4 
~Things are getting even worse. The Tethyrian crown declaring you a threat? I don't know what to think anymore.~ 
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveCrown","LOCALS",1)~
END 
++ ~Can you blame them? With everything that is happening because of the Bhaalspawn, their reaction is understandable.~ + 4.1
++ ~There are very few people we can trust now.~ + 4.1
++ ~Let them. No one is going to be able to stop us.~  + 4.1 

CHAIN X3Emi25J 4.1 
~Everything is really falling apart.~
= ~Look at me, I just keep moaning and groaning like it will do something. The only thing we can do is defeat all of these other Bhaalspawn.~
= ~I just wonder what the world will even look like when that is all over.~
END 
++ ~The same as it always has, I reckon. Progress is not so quick a process.~ + 4.2 
++ ~A much better state than it is now.~  + 4.4
++ ~Not as fun, I reckon. We've had more battles in the last bit of time than I can remember.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-1)~ + 4.5

CHAIN X3Emi25J 4.2 
~You do have a point there. Still, I imagine that will be it with the mass bloodshed.~ 
EXTERN X3Emi25J 4.3 

CHAIN X3Emi25J 4.4 
~Of that, we can verily agree! Unless one enjoys fire and flame everywhere.~
EXTERN X3Emi25J 4.3

CHAIN X3Emi25J 4.5
~Well, I think you are going to be alone in that thought of fun.~
EXTERN X3Emi25J 4.3

CHAIN X3Emi25J 4.3 
~I just...at the end of it. I just hope you are still in that world beside me.~
END 
++ ~Is that what you are truly worried about?~ + 4.7
++ ~Of course I will. I'm not going anywhere.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 4.8
++ ~You know what my destiny entails, Emily.~ + 4.6

CHAIN X3Emi25J 4.7
~It certainly is one of them. You are my pillar, <CHARNAME>. A house doesn't stand well without its pillar. Well sometimes...well you get the point.~
EXTERN X3Emi25J 4.8

CHAIN X3Emi25J 4.8
~(She squeezes your hand tightly, her eyes locking with yours as she gives you a swift kiss.)~
= ~Come, my dearest. We have more work to do, I reckon.~
EXIT 

CHAIN X3Emi25J 4.6
~I...I do. I just hope things end differently, somehow.~
EXTERN X3Emi25J 4.8

// Love Talk #5

CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",8)~ THEN X3Emi25J LoveTalk5 
~I had such a pleasant dream last night. It was odd but welcome, given everything going on lately that was stressing me. So soothing and hopeful and bright in this bit of darkness.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END  
++ ~Oh? Tell me about it.~ + 5.2 
++ ~I imagine all of your dreams are odd.~ + 5.1
++ ~Well, you'll have to see if you can continue that dream later. We have to get going.~ + 5.X 

CHAIN X3Emi25J 5.X 
~I hope I can. It was...very enjoyable.~
EXIT 

CHAIN X3Emi25J 5.1 
~Not all of them! I only had that dream once about being a tall, beautiful tree in a garden once. And it was fun. I had all sorts of birds as friends.~
EXTERN X3Emi25J 5.2 

CHAIN X3Emi25J 5.2
~I was dreaming about us. We were older, or at least I felt older. I didn't look it though...and neither did you.~
END 
IF ~Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 5.3 
IF ~!Global("X3EmiHeir","GLOBAL",1)~ EXTERN X3Emi25J 5.4

CHAIN X3Emi25J 5.3 
~I was overlooking the estate from one of the balconies. I was carrying one of our children as I watched you teach our other three children some combat techniques. It was quite cute.~
END 
++ ~I don't know if I'd want to stop adventuring to experience something like that.~ + 5.5H 
++ ~That sounds like a nice dream.~ + 5.6H
++  ~Do you want children, Emily?~ + 5.7H 

CHAIN X3Emi25J 5.4 
~We were traveling across Tethyr. I was carrying a child on my back, and you were constantly fussing to make sure I was okay. I was just wanting a bit of food, but whatever you had made was very overcooked.~
END 
++ ~Well we know that's not real by the fact I never cook badly.~ + 5.8
++ ~That sounds like a nice dream.~ + 5.6
++ ~Do you want children, Emily?~ + 5.7

CHAIN X3Emi25J 5.5H 
~I would be okay if you still traveled. As long as you returned to me...I don't care. I'd probably try to squeeze in a chance to go with you when I could, but I know I'd have a lot of responsibility that would make it difficult.~
EXTERN X3Emi25J 5.7H

CHAIN X3Emi25J 5.7H
~I would like to have children someday. If...you are still here at least. It's expected of me, and something I would dearly want.~
END 
++ ~I would. As many as you like.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 5.12
++ ~I don't know what will happen. It would have to wait to be talked about.~ + 5.9
++ ~Definitely not.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 5.10
++ ~I plan to take my father's place, Emily. No such future could be had.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 5.10

CHAIN X3Emi25J 5.6H
~Well, when a dream is free of horrific creatures and blood and strange looking food you should never eat, even in a dream...it's a nice dream.~
EXTERN X3Emi25J 5.7H


CHAIN X3Emi25J 5.8 
~Ha. Well...I'm not going to comment on that. I would like to have a child, or children someday, though.~
EXTERN X3Emi25J 5.7

CHAIN X3Emi25J 5.6
~Right? A dream without someone I care about dying, or someone screaming...just something genuinely comforting. I'd like to have children someday.~
EXTERN X3Emi25J 5.7

CHAIN X3Emi25J 5.7
~Not anytime soon, but someday. I want to travel about Tethyr and help improve things after this is all over for a while. But... would you like children someday, <CHARNAME>?~
END 
++ ~I would. As many as you like.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 5.12
++ ~I don't know what will happen. It would have to wait to be talked about.~ + 5.9
++ ~Definitely not.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 5.10
++ ~I plan to take my father's place, Emily. No such future could be had.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 5.10

CHAIN X3Emi25J 5.12
~I will *so* remember you said that I could have as many as I wanted. Don't worry, I won't request something too crazy in number.~
EXTERN X3Emi25J 5.11 

CHAIN X3Emi25J 5.9
~I understand. This can wait. We have plenty of time to talk about this later. I hope at least.~
EXTERN X3Emi25J 5.11

CHAIN X3Emi25J 5.10 
~I...am a bit dissapointed. I really hope you change your mind. I want to try to change your mind. But now isn't the time, I guess.~
EXTERN X3Emi25J 5.11 

CHAIN X3Emi25J 5.11 
~I think the others are about ready to move. Best we start going, hmm?~
EXIT 

// Romance Talk 6.

CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",10)~ THEN X3Emi25J LoveTalk6 
~It's sad we had to kill Balthazar. I didn't like his monks much...but the man's philosophy and beliefs...he seemed a good man. It's just a shame he was so stubborn.~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ ~I wish we could have worked together.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + 6.1 
++ ~We had little choice in the matter.~ + 6.1 
++ ~It seemed foolish to me. He would have wasted Bhaal's power.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-3)~ + 6.2

CHAIN X3Emi25J 6.1
~There must be some way to accomplish without killing everyone else, right? Maybe? I don't know, it's a bit...beyond me to grasp.~
EXTERN X3Emi25J 6.5

CHAIN X3Emi25J 6.2 
~I don't know. I don't really like the idea of a new lord of murder, unless you could completely change the portfolio. Honestly all of this god business is a bit beyond me to graps.~
EXTERN X3Emi25J 6.5

CHAIN X3Emi25J 6.5
~I should tell you that...er...~
END 
++ ~What is it, Emily?~ + 6.3 
++ ~Well?~ + 6.3
++ ~It can wait. We've almost accomplished everything.~ + 6.4

CHAIN X3Emi25J 6.3 
~Er...that I love you! And... We're almost through this. Yes. Almost. Yes... It's a bit...terrifying and exciting, is all.~
= ~Come on. Let's see this through.~
EXIT 

CHAIN X3Emi25J 6.4
~R-right! Let's see this through.~
EXIT 

// Romance Talk 7

CHAIN IF ~Global("X3EmiToBLoveTalk","LOCALS",12)~ THEN X3Emi25J LoveTalk7
~...So this is really it. Or close to it, isn't it?~ [X3ELS]
DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)IncrementGlobal("X3EmiToBLoveTalk","LOCALS",1)~
END 
++ ~It is. Are you ready?~ + 7.1 
++ ~One way or another.~ + 7.2 
++ ~Let's go and take my destiny.~ + 7.3

CHAIN X3Emi25J 7.1
~Nope. Not ready at all...oh gods, this is embarrasing. I was trying to tell you earlier but I lost my courage and...~
EXTERN X3Emi25J 7.4

CHAIN X3Emi25J 7.2 
~Right. One way or another...*gulp*. I've got to say this to you now. Before I lose my courage again and...say something different instead.~
EXTERN X3Emi25J 7.4

CHAIN X3Emi25J 7.3
~W-wait. I...I have to tell you something. Before I lose my courage again and... say something else that has nothing to do with it.~
EXTERN X3Emi25J 7.4

CHAIN X3Emi25J 7.4
~I really don't want to say it, because I don't want you to discourage me from being by your side, or anything like that.~
= ~But I might...possibly...mostly certain, but not absolutely...be with your child.~
END 
++ ~What? This is horrible.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + 7.5 
++ ~Wait, you're not certain it's even mine?~ + 7.6
++ ~This is great!~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",3)~ + 7.7

CHAIN X3Emi25J 7.6 
~Uh, would you want it to be someone else's? Of course it is.~
EXTERN X3Emi25J 7.8

CHAIN X3Emi25J 7.7
~I am so glad you are not freaking out. I was really expecting a freak out.~
EXTERN X3Emi25J 7.8

CHAIN X3Emi25J 7.5
~The timing is, which is why I *really* didn't want to say anything. Not so close to the moment.~
EXTERN X3Emi25J 7.8

CHAIN X3Emi25J 7.8
~I could be wrong, but I think I've got a good feeling about this...and don't think about asking me to hang back. I'll be just fine in combat, and as I understand it, our lives are interlinked anyway.~
= ~I... don't know what you will decide in the end. I want to try to persuade you now to not go away from me, but at the very least...I'm kind of happy this happened at least. If you decide...to leave me, I'll have this gift from yours.~
END 
++ ~Are you sure about being by my side still, Emily? I don't want to risk any harm to you.~ + 7.9
++ ~Let's see this through first. I don't want to decide things before they've been settled.~ + 7.10 
++ ~I'm still trying to process all of this.~ + 7.11 
++ ~Good. There's no one else I'd want more next to me.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",2)~ + 7.13 

CHAIN X3Emi25J 7.9
~I'm sure. Very sure.~
EXTERN X3Emi25J 7.12 

CHAIN X3Emi25J 7.10
~I understand.~
EXTERN X3Emi25J 7.12 

CHAIN X3Emi25J 7.11 
~Well...right now you have something bigger on the horizon. And I understand that is a far bigger focus right now.~
EXTERN X3Emi25J 7.12

CHAIN X3Emi25J 7.13 
~As if you even have a choice. *winks*~
EXTERN X3Emi25J 7.12

CHAIN X3Emi25J 7.12 
~Let's...do this, <CHARNAME>. Let's finally do this.~
EXIT 

// Group Kiss from PID 
CHAIN X3Emi25J Group.Kiss 
~Um, but what about the rest of the party?~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Kids these days...~
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, don't mind me. I like to observe.~
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Hee. I think this is endearing.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Ugh. Mutt-snogging. I'm going to be sick.~
== X3Emi25J ~Oh, nevermind that. Come here.~
== X3Emi25J ~Mmm. Now that is enough public display of affection for now.~
EXIT 

APPEND X3Emi25J 


// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~I...oh gods, how do you even speak up about something like? I'm just going to...try to get this out clearly.~
= ~I care for you, <CHARNAME>. I love you, still, I think. But...things have been honestly, quite bad as of late.~
= ~I cherish love, I do! But I can't keep going like this with you. I'm sorry.~
++ ~You're breaking up with me?.~ + LBreak.1
++ ~If that's what you want, I won't argue.~ + LBreak.2 
++ ~Emily, give me more time. I can make this right.~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~Yes. That is sadly exactly what I am doing. In a very unskilled way, not that anyone wants to be skilled at this but...nevermind that.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~Honestly, I'm kind of dissapointed you aren't. I guess that is why I do want to end it. You just don't seem to care.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~I want to be so hopeful that you would do that. But I...don't trust that you would ~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3EmiRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~I'd like to stay still, but I know it will be awkard. I can leave if that's what you prefer..~
++ ~I wouldn't be comfortable with you around.~ + LBreak.5 
++ ~I don't want you here. Give me your equipment and go.~ + LBreak.6 
++ ~No, no. You can stay.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~I figured as much. Well. I guess this is...goodbye, then. I hope you succeed at your goals.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~I'll...give you what isn't absolutely mine. Goodbye, I guess.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~Good! Because as awkward as that was, I really do want to stay. Thank you.~
IF ~~ EXIT 
END 

// Break Approval
IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~This...is hard for me to say, but I need to say it. Even if you aren't going to like it, <CHARNAME>.~  
= ~What you have been doing is terrible. Foul. Immoral. It goes against my very being. Literally. I am an aasimar, <CHARNAME>. And what you have been doing is absolutely...fiendish!~
++ ~The ends justify the means, Emily.~ + Break.1 
++ ~That's part of adventuring, Emily.~ + Break.1 
++ ~You have seen what we were up against. It has been...hard. And I am sorry if my decisions have been worse for it.~ + Break.2
END 

IF ~~ Break.1
SAY ~What?! How can you even say that? That is just an excuse to do awful things and not even consider the weight of them!~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~I know. And I gave you the benefit of the doubt for a while. But I can't do that anymore.~ 
IF ~~ + Break.3 
END


IF ~~ Break.3 
SAY ~Unless there's going to be a change of how you do things, I am afraid I am going to leave.~
++ ~If you don't like it, then go.~ + Break.4
++ ~I'm not going to change anything. Give me your equipment and go.~ + Break.5
++ ~I'll try, Emily. For you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~...Then I go. Goodbye, <CHARNAME>. We won't see eachother again.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~Unbelievable. That is what you think about. Your own belongings. Not your morals. Wow. You know what? I wish I had never met you.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~Thank you. I will stay and give you a chance. For now. Gods, I am gullible, but I hope that you are genuine.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3EmiApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@516)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~Did what you say to me before, was that only words, <CHARNAME>? Nothing has really changed. It's just as...unbearable as before.~
= ~I have been such a fool for agreeing to stay. But that will change now. Goodbye, <CHARNAME>. I regret that we ever met.~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY ~Yes? Is there something you need?~ [Emila]  
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
// Requires the PC to have talked to Emily before about crafting. 
+~Global("X3miCraft","LOCALS",1)~+ ~Do you think you could improve one of our ranged weapons?~ + Craft.PID
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY ~Hello there, <CHARNAME>.~ [X3EHello] 
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ ~Do you think you could improve one of our ranged weapons?~ + Craft.PID
++ ~Never mind.~ EXIT 
END  

IF ~~ main.PID 
SAY ~What do you want to talk about?~
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
+~Global("X3miCraft","LOCALS",1)~+ ~Do you think you could improve one of our ranged weapons?~ + Craft.PID
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Sure. Shoot your quivering question.~
+~PartyHasItem("X3ERing")Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Emily, I bought this ring for you. I want you to be my wife, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~AreaCheck("AR5000")Global("X3AreaComment1","LOCALS",0)~+ ~Do you know anything about Saradush?~ DO ~SetGlobal("X3AreaComment1","LOCALS",1)~ + Saradush
+~AreaCheck("AR5500")Global("X3AreaComment2","LOCALS",0)~+ ~Do you know anything about Amkethran?~ DO ~SetGlobal("X3AreaComment2","LOCALS",1)~ + Amkethran
+~Global("X3PIDCON1","LOCALS",0)~+ ~You are from Tethyr, aren't you? Can you tell me a bit about it?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ ~You've spoken about living on an estate. What was life like there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ ~Tell me more about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ ~Do you know much of your birth mother?~ DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ ~How did you learn archery?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)~+ ~So. You are now officially heir. How does it feel?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)~+ ~So. You are officially not recognized as the heir. Does it still bother you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ ~I know you can fletch arrows. Can you also make bows and crossbows?~ DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~Is there something else, then?~ [X3EITSE]
+~PartyHasItem("X3ERing")Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Emily, I bought this ring for you. I want you to be my wife, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ ~You are from Tethyr, aren't you? Can you tell me a bit about it?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Tethyr
+~Global("X3PIDCON1","LOCALS",1)~+ ~You've spoken about living on an estate. What was life like there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Estate
+~Global("X3PIDCON1","LOCALS",2)~+ ~Tell me more about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",3)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",3)~+ ~Do you know much of your birth mother?~ DO ~SetGlobal("X3PIDCON1","LOCALS",4)~ + PID.Mother 
+~Global("X3PIDCON2","LOCALS",0)~+ ~How did you learn archery?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Archery
+~Global("X3PIDCON3","LOCALS",0)Global("X3EmiHeir","GLOBAL",1)~+ ~So. You are now officially heir. How does it feel?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathWon
+~Global("X3PIDCON3","LOCALS",0)!Global("X3EmiHeir","GLOBAL",1)~+ ~So. You are officially not recognized as the heir. Does it still bother you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + Heir.AftermathLost
+~Global("X3miCraft","LOCALS",0)~+ ~I know you can fletch arrows. Can you also make bows and crossbows?~ DO ~SetGlobal("X3miCraft","LOCALS",1)~ + PID.Crafting
++ ~Let's talk about something else.~ + main.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ Saradush 
SAY ~My father made several trips to Saradush decades ago. All sorts of meetings between noble and royals alike would take place here.~
= ~It's a big trade city, and lots of farmers make their stops here. But if you look at it now, its hard to see any of that.~
= ~It is sad just how much a seige can take away the color and joy of a city.~
++ ~Let's talk about something else.~ + main.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ Amkethran 
SAY ~Very little. This is just a small village. It's not really on any of the trade routes. It was always a poor village from what I know, and now it seems to be only even more impoverished.~
= ~There's very little we can do for the people here, I fear. It would take the government to take action to bring the people here any relief. But I have hope there is resilience in the common people here.~
++ ~Let's talk about something else.~ + main.PID 
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Tethyr
SAY ~Ooh. I'd love to. Where to begin...~
= ~My homeland is south of Amn, and ruled by Queen Zaranda. There's large forests where the elves come their home, and rivers where we settle in some of our towns and cities, like Saradush. We have some rocky badlands and mountains and border the sea. There's a bit of everything in Tethyr, I like to say.~
= ~The estate I live in is southeast of Brost. We were a bit lucky, the civil war didn't hit the north as much as it hit the south.~
++ ~A civil war?~ + PTethyr.1
++ ~It sounds similiar to Amn or the countryside around Baldur's Gate.~ + PTethyr.2 
++ ~Were you happy there?~ + PTethyr.3
++ ~Let's talk about something else.~ + main.PID 
END 

IF ~~ PTethyr.1
SAY ~Oh yes. There was a big civil war after the demise of the last royalty. I was but a baby when it started.~
= ~One of our family friends was lost. All killed and executed by mobs. We have a shrine to commerate their memory, but nothing else of them survived, save stepmother, who was a member.~
= ~It ended once Queen Zaranda, not quite queen yet, helped restore order to the land. She was a legendary adventurer at the time. She kind of inspires me on my own travels.~
++ ~Were you happy in Tethyr?~ + PTethyr.3 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PTethyr.2 
SAY ~Oh, it's a bit distinct from the north. A thick forest takes up much of Tethyr. But I guess some of the other features I described you could find about the Sword Coast.~
++ ~You mentioned a civil war?~ + PTethyr.1 
++ ~Were you happy in Tethyr?~ + PTethyr.3 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PTethyr.3
SAY ~That's an interesting question. For the land, yes. For the stress of the dispute of heir? Less so.~
= ~I think I did need to get out and see the world. I don't regret it. But Tethyr will always be home to me. I can't imagine settling down anywhere else.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Estate 
SAY ~Oh the estate was lovely, if very priviliged.~
= ~It overlooked the outskirts of Brost and several farms that helped feed the region. We had tradesmen from the town serve my family, and my family in turned helped protect Brost.~
= ~I wasn't allowed to do that though. Not without sneaking out.~
++ ~Which you did, I imagine.~ + PEstate.1
++ ~It sounds...boring.~ + PEstate.2 
++ ~That sounds peaceful. Why would you want to leave that?~ + PEstate.3
END 



IF ~~ PEstate.1
SAY ~On occasion. I wasn't defenseless. Sometimes I just wanted to see what the world was like outside the walls of home. Othertimes, I heard about a bit of trouble and wanted to see if I could help.~
= ~I failed miserably once and barely escaped from a highwayman I was looking out for on behalf of one of our robbed merchants. That's when father took more of an interest in actually allowing me to use a bow without having to lie about.~
++ ~I can't blame you. Life in your estate sounds boring.~ + PEstate.2 
++ ~You had a peaceful life. Why leave that for adventure?~ + PEstate.3 
END 

IF ~~ PEstate.2 
SAY ~Sometimes. But I did enjoy the celebrations and lectures and the visits of the other nobles that would come from all over. And it was safe. Too safe, sometimes.~
= ~If I didn't have to hide to the world that I wasn't human, and there wasn't this dispute of being heir, I think it would have been a childhood anyone would have wanted.~
= ~But I guess that sounds petty. There are so many others with worse lives than mine. I shouldn't gripe over the small things.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PEstate.3 
SAY ~I wanted to learn who I really was. And while I am a noble, I am human, I am also an elf, and someone compelled to help people beyond their walls.~
= ~But most of all I think I just wanted to discover myself and get away a bit from the stress of family tension and bickering. And I think that was a good choice for me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Family 
SAY ~Well, there's all the makings of a normal family. A protective father, an obnoxious brother, and a stern stepmother.~
= ~My stepmother, Elissa, is the last surviving member of House Crestwing, wiped out during the civil war. She's widely respected and loved by everyone, though she alway sspoke so little. We were never really close. I sometimes think it was because I was not hers.~
= ~Still, she...she took me as her own. Taught me about etiquette and how to behave properly. Her lessons were stern, but I remember them well, even if it wasn't the form of love I was hoping for.~
++ ~I wouldn't want to get too close to a stepchild either.~ + PFamily.1 
++ ~I can see how that might have been hard.~ + PFamily.2 
++ ~Maybe she just didn't know how to connect to you.~ + PFamily.3
++ ~What of your father?~ + PFamily.4
END 

IF ~~ PFamily.1 
SAY ~But we are a family. That should mean more than blood. Still, I can see it being hard for her, no matter how much time passed. I always called her mother all the same.~
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.2 
SAY ~Maybe. Or maybe I am just a little bit of an ungrateful brat, if I am being honest with myself. It could just be that she isn't the affectionate sort of person I am.~
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.3 
SAY ~She wasn't as touchy and affection like I was. I used to hug everyone, even Thomas when I was younger. She was never...for that kind of thing. Always more distant.~
IF ~~ DO ~SetGlobal("X3EmiAppChange","GLOBAL",6)~ + PFamily.4 
END 

IF ~~ PFamily.4
SAY ~My father had gained some of his own fame from adventuring before he took on the responsibilities of the house. He has friends within the royal council, and I'd say we are just short of a major house. There are certainly names bigger than ours, however.~
= ~Still, he was always protective of me when I wanted to do the same thing. It took him a while to be supportive. I think more than anything, he was more afraid of how I might be hurt if people found out I was not fully human than of his own pain.~
= ~I love him, but I wish he never lied.~
++ ~How did you hide you were not fully human, exactly?~ + PFamily.5 
++ ~He sounds like the typical father.~ + PFamily.6
++ ~I can understand what you mean. Gorion kept me sheltered for quite some time, but he meant well.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.7
END 

IF ~~ PFamily.5
SAY ~Ha. It wasn't easy. Mostly tricks of the hair and using the family circlet to hide the tips with the edge. One of father's most loyal, trusted maids always made sure I never forgot.~
IF ~~ + PFamily.8
END 

IF ~~ PFamily.6
SAY ~I imagine parenting is still parenting, no matter what your race and class is. I'm glad he was vested in it, even if he was a bit too watchful for my tastes.~
IF ~~ + PFamily.8
END 

IF ~~ PFamily.7
SAY ~It sounds like you can put yourself right in my shoes. Fathers do mean well, don't they?~
IF ~~ + PFamily.8
END 

IF ~~ PFamily.8
SAY ~And...then there's Thomas.~
= ~My first memories of him are so sweet. We'd dance and play and tease and squabble. But then you get older...*Sigh*. Maybe he just started to figure it out that I wasn't stepmother's child, but he became more distant and cold and ambitious.~
= ~He put all of his time into learning and combat and tactics, more then I did. And if I ever snuck out, guess who was telling? Talk about snitching brothers.~
++ ~There could still be hope.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.9
++ ~Well if you were breaking the rules, isn't that your fault?~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",-2)~ + PFamily.10
++ ~I'm sorry about your fall out.~ DO ~IncrementGlobal("X3EmiAppChange","GLOBAL",1)~ + PFamily.11
END 

IF ~~ PFamily.9
SAY ~Maybe. But if there is a sign, I just have yet to see it.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.10
SAY ~Haha. Okay. That part, is probably all on me, I'll admit. Still...just another sign that we were definitely not the giggling, chasing, playing type of siblings anymore. And that still saddens me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END  

IF ~~ PFamily.11
SAY ~Don't be. It's not your fault. It's mine. I just hope to see a sign one day that things might get better in the family.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Mother 
SAY ~Far...less than I would like.~
= ~I know she came from the Forest of Tethir. My father had told stories of the elves there, and she was an elf. They traveled together for a time, and fell in love.~
= ~My mother's parents were wary of him, and his parents were wary of my father adventuring at all. They had no idea he was with an elf, and wouldn't have approved.~
++ ~Is that why they seperated?~ + PMother.1 
++ ~Have you learned anything about her since?~ + PMother.2 
++ ~Do you know anything about her after you were born?~ + PMother.2
END



IF ~~ PMother.1  
SAY ~Father was pushed to lead House Castilla, as my grandfather was become unwell and sick, and the clerics could not cure it. And my family could not accept a non-human wife.~
= ~And so because she loved him, and wished him the best, she left without warning. She returned only to birth me in the castle, and leave me with him and his new wife, because she couldn't take me with her on the road.~
= ~My father was always bitter about that. I think he just wished a way where she would have fought for him to try to still be with her. I think he would have said yes.~
++ ~Why isn't your family okay with an elf?~ + PMother.3 
++ ~It sounds so unnecessary. Couldn't he have married her anyway?~ + PMother.4 
++ ~Why didn't he just leave and travel the roads with her?~ + PMother.4
END 

IF ~~ PMother.2
SAY ~Most of what I know comes from father, and almost all of what he told me was what happened before I was born.~
IF ~~ + PMother.1
END 

IF ~~ PMother.3 
SAY ~Oh, old purist traditions. Even if I don't like them, my family believes in them. It's kind of hypocritical when it comes up for another family, knowing what we were trying to hide for so many years.~
IF ~~ + PMother.5
END 

IF ~~ PMother.4 
SAY ~I think he would have if she would have said something that told him she was willing to fight. But she just left. Her actions just told him that she didn't want that.~
= ~I think she was in her own way protecting him.~
= ~I didn't meet her myself until my trip to Baldur's Gate. That's when I learned she was also an aasimar. Sadly, I will probably never meet her again.~
++ ~Where her parents celestials?~ + PMother.5
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PMother.5 
SAY ~No. It would have been generations ago.  The how or why was never told, and maybe she doesn't even know. It doesn't matter. It was love.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Archery 
SAY ~Oh, just a complete natural talent. Ha, it was actually mostly observing other archers, and convincing them for a few lessons, then "borrowing" a bow to shoot on my own whenever I could get away from prying eyes, which wasn't as often as I like.~
= ~After I got caught sneaking out a few times to do foolish things like track down highwayman hurting our people, father got me properly taught. Eventually an elf who I believe was a friend of my mother's taught me some techniques that involved some old elven traditions.~
= ~I'm not allowed to share what they involved. But they are central to how I fight.~
++ ~Why can't you share more about what your archery lessons involved?~ + PID.Archery1 
++ ~Did you learn to fight with any other weapons?~ + PID.Archery2
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Archery1 
SAY ~Because these are sacred elven secrets. And I would be adverse to betraying him for all he did for me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Archery2 
SAY ~Well, there was a little bit with the sword and rapier, but I was always awful. People just laughed at my form and I tried to avoid instruction on the blade when I could out of embarrasment.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ Heir.AftermathWon
SAY ~It's starting to settle in. I'll have so much responsibility soon. I'm forming some ideas and plans I'd like to try to enact when I return, and people to talk to for advice and assistance. I want to lead right and well.~
= ~But right now my devotion is to your goals and cause. House Castilla will wait.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ Heir.AftermathLost
SAY ~I'm still depressed about it. But now in a way it allows me to do what I want to do. My future is no longer set to be some face of a noble house. It's now anything I want it to be.~
= ~But right now my devotion is to your goals and cause. My own decisions of my path in life can wait.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Crafting
SAY ~Well, Fletchers don't usually make bows and crossbows while on the move. Even if I could do that, I don't have the materials.~
= ~But I do have just enough to improve on a single bow or crossbow. If you want me to do that, just show me a bow or crossbow you'd like me to modify with my materials. Just be sure that's the one you want me to work.~
= ~I would strongly suggest it's not just some generic bow or crossbow. Else it wouldn't be a great use of material.~
++ ~I might have a weapon for you to look at, then.~ + Craft.PID 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY ~Well, we aren't alone but...what did you want to ask?~
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I don't think this is going to work between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~Well, it's just the two of us. What did you want to ask?~
// Emily is Rest Invite #1. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Normal 
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~Can we spend some time together when we next make for rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",1)~ + ForceRestTalk.Love
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Alone.Kiss
+~Global("X3EmiRomanceActive","GLOBAL",2)~+ ~I don't think this is going to work between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~That sounds fine to me. I look forward to it.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~I would have it no other way but us spending that time together. I look forward to it.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmph. I could...definitely enjoy a few more of those, later. I hope you'll indulge.~
IF ~~ EXIT 
END 

IF ~~ BreakUp
SAY ~But...why? What's wrong?~
++ ~I don't want you to be hurt.~ + BU.1 
++ ~Things are crazy right now. It's not a good time.~ + BU.2 
++ ~I'm sorry. I just don't want to be with you anymore.~ + BU.3 
END 

IF ~~ BU.1 
SAY ~It is sweet that you are trying to protect me, but please, think logically, <CHARNAME>.~
= ~Even if I were to leave and go back to Tethyr do you not think they still know of what we had?~
IF ~~ + BU.5
END 

IF ~~ BU.5
SAY ~Love makes us stronger, it gives us warmth and light and love. And I am not a fragile doll playing archer. I can protect you. Please, don't throw our love away.~
++ ~Okay. You've changed my mind.~ + BU.4 
++ ~Maybe you are right.~ + BU.4
++ ~I am sorry. My mind is made up.~ + BU.3 
END 

IF ~~ BU.2 
SAY ~When will it? Life *is* crazy. Life's arrows curve all over the place. The only thing that is certain is love.~
= ~We can find stability and comfort in that love, in eachother.~
IF ~~ + BU.5
END 

IF ~~ BU.3 
SAY ~I...I see. Well if you don't want to talk about it, then that's it. I won't be with someone that doesn't want me.~
IF ~~ DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)IncrementGlobal("X3EmiApp","GLOBAL",-10)
DisplayStringNoNameDlg(Player1,@109)~ EXIT 
END 

IF ~~ BU.4 
SAY ~Good. I know I think crazy things sometimes. I don't want you to start thinking the same way.~
IF ~~ EXIT 
END 


IF ~~ Craft.PID 
SAY ~I could certainly try and see if it's something I could work with. Show me which bow or crossbow you're interested in improving on. Just remember I can only improve one of them.~
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ ~What about Mazzy's Bow?~ DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ ~Take a look at the Ripper.~ + RipperBow
+~PartyHasItem("BOW10")~+ ~Would this Heartseeker be improvable?~ + HeartseekerBow
+~PartyHasItem("BOW11")~+ ~Check out Strong Arm, please.~ + StrongArmBow
+~PartyHasItem("BOW12")~+ ~Can you take a look and see if you can improve this Elven Court Bow?~ + ElvenCourtBow
+~PartyHasItem("BOW13")~+ ~See if this Mana Bow could be improved on.~ + ManaBow
+~PartyHasItem("BOW14")~+ ~How about this Tuigan Bow?~ + TuiganBow
+~PartyHasItem("BOW15")~+ ~Could you improve on Tansheron's Bow?~ + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("XBOW03")~+ ~What about The Guide?~ + TheGuideXBow
+~PartyHasItem("XBOW06")~+ ~The Army Scythe, could you work on that?~ + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ ~I think this Giant Hair Crossbow might be modifiable.~ + GiantHairXBow
+~PartyHasItem("XBOW10")~+ ~Give me an eye on this Necaradan's Crossbow.~ + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ ~Is Jan's Flasher Launcher improvable?~ DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ ~Try and see if this Crossbow of Affliction can be improved.~ + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ ~Let's talk about something else.~ + main.PID 
++ ~Nevermind actually. Let's keep moving.~ EXIT 
END 

IF ~~ Craft.PID2 
SAY ~Perhaps there is another bow or crossbow you want me to look at?~
+~PartyHasItem("NPBOW")Global("UnqualifiedBow1","LOCALS",0)~+ ~What about Mazzy's Bow?~ DO ~SetGlobal("UnqualifiedBow1","LOCALS",1)~ + MazzyBow
+~PartyHasItem("BOW09")~+ ~Take a look at the Ripper.~ + RipperBow
+~PartyHasItem("BOW10")~+ ~Would this Heartseeker be improvable?~ + HeartseekerBow
+~PartyHasItem("BOW11")~+ ~Check out Strong Arm, please.~ + StrongArmBow
+~PartyHasItem("BOW12")~+ ~Can you take a look and see if you can improve this Elven Court Bow?~ + ElvenCourtBow
+~PartyHasItem("BOW13")~+ ~See if this Mana Bow could be improved on.~ + ManaBow
+~PartyHasItem("BOW14")~+ ~How about this Tuigan Bow?~ + TuiganBow
+~PartyHasItem("BOW15")~+ ~Could you improve on Tansheron's Bow?~ + TansheronBow
+~PartyHasItem("BOW20")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + DarkFireBow
+~PartyHasItem("BOW21")Global("UnqualifiedBow2","LOCALS",0)~+ ~How about this Darkfire Bow?~ DO ~SetGlobal("UnqualifiedBow2","LOCALS",1)~ + CespenarBow
+~PartyHasItem("BOW22")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + TaralashBow
+~PartyHasItem("BOW23")Global("UnqualifiedBow3","LOCALS",0)~+ ~Can you improve the enchanted Taralash bow?~ DO ~SetGlobal("UnqualifiedBow3","LOCALS",1)~ + CespenarBow
+~PartyHasItem("XBOW03")~+ ~What about The Guide?~ + TheGuideXBow
+~PartyHasItem("XBOW06")~+ ~The Army Scythe, could you work on that?~ + ArmyScytheXBow
+~PartyHasItem("XBOW08")~+ ~I think this Giant Hair Crossbow might be modifiable.~ + GiantHairXBow
+~PartyHasItem("XBOW10")~+ ~Give me an eye on this Necaradan's Crossbow.~ + NecaradanXBow
+~PartyHasItem("XBOW12")Global("UnqualifiedXBow1","LOCALS",0)~+ ~Is Jan's Flasher Launcher improvable?~ DO ~SetGlobal("UnqualifiedXBow1","LOCALS",1)~ + JanXBow
+~PartyHasItem("XBOW13")~+ ~Try and see if this Crossbow of Affliction can be improved.~ + AfflictionXBow
+~PartyHasItem("XBOW15")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + FiretoothXBow
+~PartyHasItem("XBOW16")Global("UnqualifiedXBow2","LOCALS",0)~+ ~I'd like Firetooth to be modified.~ DO ~SetGlobal("UnqualifiedXBow2","LOCALS",1)~ + CespenarBow
++ ~Let's talk about something else.~ + main.PID 
++ ~Nevermind actually. Let's keep moving.~ EXIT 
END 

IF ~~ Craft.Think  
SAY ~Well, take your time. It's best you pick wisely, after all. I only have enough materials to improve a single bow or crossbow. Just let me know when you have decided.~
IF ~~ EXIT 
END 

IF ~~ MazzyBow 
SAY ~Even if Mazzy was okay with it, I wouldn't be comfortable working with this bow. From what I understand it was a gift from her god. Such a wondrous thing shouldn't be altered or modified in anyway.~
IF ~~ + Craft.PID2 
END 

IF ~~ RipperBow
SAY ~They don't make these bows anymore. I love the material. I think I can definitely make a slight improvement, if you are sure you want me to.~
++ ~Yes. Improve the Ripper.~ DO ~TakePartyItem("BOW09")SetGlobal("X3EmiBow","LOCALS",9)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ HeartseekerBow
SAY ~This bow is definitely aptly named. The wood of the bow makes all the difference in its pull and power. I think I could make it a bit easier to use, though you'll still need the same amount of strength to pull its string. Is this the bow you want me to improve?~
++ ~Yes. Improve the Heartseeker Bow.~ DO ~TakePartyItem("BOW10")SetGlobal("X3EmiBow","LOCALS",10)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ StrongArmBow
SAY ~Interesting! I can't even pull this back half-way. I can make the enhancement if you are sure, just make sure whoever you give this to has the power to handle the string.~
++ ~Yes. Improve Strong Arm.~ DO ~TakePartyItem("BOW11")SetGlobal("X3EmiBow","LOCALS",11)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ ElvenCourtBow 
SAY ~This bow has a beautiful history of being passed from legendary archer to the next generational legend. I think I can modify it without harming its beauty or art, if you are sure this is the bow you want me to improve?~
++ ~Yes. Improve the Elven Court Bow.~ DO ~TakePartyItem("BOW12")SetGlobal("X3EmiBow","LOCALS",12)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ ManaBow
SAY ~The Mana Bow. I can feel it's warding against magic. It would be a good choice, if you are certain this is the one you wish me to use my resources on to improve it.~
++ ~Yes. Improve the Mana Bow.~ DO ~TakePartyItem("BOW13")SetGlobal("X3EmiBow","LOCALS",13)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ TuiganBow 
SAY ~Ooh, this could work. I think I can alter it just slightly to not take away from its quick firing, but also make it a bit easier to get the desired shot. Is this the bow you wish me to improve?~
++ ~Yes. Improve the Tuigan Bow.~ DO ~TakePartyItem("BOW14")SetGlobal("X3EmiBow","LOCALS",14)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ TansheronBow 
SAY ~I love these bows. They knowledge of phantom arrows originate from the same elven archer orders that taught me my own skills, though this bow's enchantment came from a lich sadly. At least so it is said. I can alter it slightly without taking away its magic, if you like. Do you want me to do that?~
++ ~Yes. Improve Tansheron's Bow.~ DO ~TakePartyItem("BOW15")SetGlobal("X3EmiBow","LOCALS",15)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ DarkFireBow
SAY ~I don't think what I have is really compatible with this bow's build. Maybe Cespenar could help, though.~
IF ~~ + Craft.PID2 
END 

IF ~~ CespenarBow 
SAY ~I wouldn't dream of altering this further. Cespenar's work is far better than mine.~
IF ~~ + Craft.PID2 
END 

IF ~~ TaralashBow
SAY ~I don't even know how you would improve near-perfection. Maybe Cespenar could do it, but not I.~
IF ~~ + Craft.PID2 
END 

IF ~~ JanXBow
SAY ~I have no knowledge of how Jan made that thing. Even if I did, I wouldn't want to modify his things. I'm sure he could improve it far better than I could.~
IF ~~ + Craft.PID2 
END 

IF ~~ FiretoothXBow
SAY ~There is no way I could do that. This Crossbow's structure is beyond my capabilities to do anything with. Maybe Cespenar could try, if you asked.~
IF ~~ + Craft.PID2 
END 

IF ~~ TheGuideXBow
SAY ~Hrm, this crossbow is very sturdy, and fires very accurately. I think I can improve on that idea on its parts further, if you like?~
++ ~Yes. Improve The Guide.~ DO ~TakePartyItem("XBOW03")SetGlobal("X3EmiXBow","LOCALS",3)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ ArmyScytheXBow
SAY ~The speed of this crossbow earned it its name. I think I can improve on it without taking away any of that special velocity it has. Would you like me to try?~
++ ~Yes. Improve The Army Scythe.~ DO ~TakePartyItem("XBOW06")SetGlobal("X3EmiXBow","LOCALS",6)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ GiantHairXBow
SAY ~This crossbow can definitely penetrate, though it's heavy. I can definitely modify it, if you like?~
++ ~Yes. Improve the Giant Hair Crossbow.~ DO ~TakePartyItem("XBOW08")SetGlobal("X3EmiXBow","LOCALS",8)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ NecaradanXBow
SAY ~This is a high quality crossbow. Good choice. I can definitely improve on it if you like?~
++ ~Yes. Improve Necaradan's Crossbow.~ DO ~TakePartyItem("XBOW10")SetGlobal("X3EmiXBow","LOCALS",10)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~  AfflictionXBow
SAY ~I could, though I would still recommend caution if you must have one of us use it. The strength it draws can be dangerous despite the power the crossbow has in turn.~
++ ~That's fine. Improve the Crossbow of Affliction, please.~ DO ~TakePartyItem("XBOW13")SetGlobal("X3EmiXBow","LOCALS",13)~ + BowSelected
++ ~No, let's not.~ + Craft.PID2 
++ ~Let me think about it.~ + Craft.Think 
END 

IF ~~ BowSelected 
SAY ~Great. It won't take long. And I promise I won't break it. Hopefully.~
IF ~~ DO ~SetGlobal("X3miCraft","LOCALS",2)StartCutSceneMode()StartCutScene("X3ECut05")~ EXIT // Launch Cutscene 
END 

END 