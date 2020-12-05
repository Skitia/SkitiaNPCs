/*Non-Essential Interjections*/ 

//Watcher's Keep 

I_C_T GORAPP1 14 X3RebGORAPP1-14
== X3Reb25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I'm going to leave my journal near the exit, just in case. But I will stand with you.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORAPP1 16 X3RebGORAPP1-16
== X3Reb25J IF ~IsValidForPartyDialogue("X3Emi")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I'm going to leave my journal near the exit, just in case. But I will stand with you.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@116)~
END 


I_C_T GORDEMO 24 X3RebGORDEMO 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Oh dear. I have a horrible feeling about this...~
END 

I_C_T GORAPR 3 X3RebGORAPR 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~Surely there is something? Some spell or another, to at least buy you time for proper healing?~
== GORAPR ~There is nothing. Ask your questions quickly, my time is short.~
END  

I_C_T GORSUC01 7 X3RebGORSUC01 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebRomanceActive","GLOBAL",2)GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~I wish you wouldn't do that. But if you think it will help...~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
END 


I_C_T GORMAD1 39 X3RebGormad1-39 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I hope his family is still alive...or that it hasn't been too long. The poor man.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 40 X3RebGormad1-40 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I hope his family is still alive...or that it hasn't been too long. The poor man.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~He lives, and is sane at that! That alone gives him a chance to put things back together.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@116)~
== GORMAD1 ~I'm coming home, my family.~
END 

I_C_T GORMAD1 41 X3RebGormad1-41 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~<CHARNAME>, please no!~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@406)~
== GORMAD1 ~I will get back to my family!~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Reb",LastTalkedToBy)~ EXTERN X3Reb25J Yackman
END

CHAIN X3Reb25J Yackman  
~Please, we mean no harm. We aren't even demons. We just are curious about a few things.~
EXTERN GORMAD1 11

I_C_T GORPOL1 1 X3RebGORPOL1-1
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Unable? It must be truly grievous then, if you call for aid for a duty you cannot fulfill.~
END 

I_C_T GORODR1 19 X3RebGORODR1-19
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~The imprisoned one...I can't recall any mention of this in the records we had in our temple. I'm afraid I can't offer any insight of my own.~
END 

//Pre-Saradush 

I_C_T SAREV25A 0 X3RebSAREV25A
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebPartyBG1","GLOBAL",1)~ THEN ~Oh, I remember him. Surely what he wants can be nothing good.~
END

//Saradush Interjects 

EXTEND_BOTTOM SARPROVF 0
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J SARPROVF-Care
END

CHAIN X3Reb25J SARPROVF-Care 
~I would be heart broken if I did not know your true intentions. Still, please be careful.~
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPROVM 0
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ EXTERN X3Reb25J SARPROVF-Care
END

CHAIN X3Reb25J SARPROVM-Care 
~I would be heart broken if I did not know your true intentions. Still, please be careful.~
EXTERN SARPROVM 1


I_C_T SARCNT01 19 X3RebSARCNT01-19
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so glad we could reunite her with her son. Mother and son...they should never be torn apart like that.~
DO ~SetGlobal("X3RebApp","GLOBAL",5)DisplayStringNoNameDlg(Player1,@416)~ 
== SARCNT01 ~May the gods bless you for all you have done for me.~
END 

I_C_T SARCNT01 20 X3RebSARCNT01-20
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebQuest","GLOBAL",15)~ THEN ~I am so sorry, miss. I know what you are going through and-~
== SARCNT01 ~I do not wish your sympathy. Only your lack of company.~
END 

I_C_T ORPHAN1 1 X3EmiORPHAN1-1
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Emi")~ THEN ~Oh, surely that was not called for. The poor child.~
DO ~SetGlobal("X3RebApp","GLOBAL",-5)DisplayStringNoNameDlg(Player1,@406)~
== ORPHAN1 ~Eek! Help me, help me!~
END

I_C_T ORPHAN2 3 X3EmiORPHAN2-3
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so glad we could keep that family together. I just hope they stay that way.~
DO ~SetGlobal("X3RebApp","GLOBAL",5)DisplayStringNoNameDlg(Player1,@416)~
== ORPHAN2 ~Thank you for everything!~
END

I_C_T SARTHF2 6 X3RebSARTHF2-6 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, surely there wasn't any need for that, was there?~
DO ~SetGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@403)~
END

I_C_T SARTHF1 12 X3RebSARTHF1-12
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh no. He'll...~
DO ~SetGlobal("X3RebApp","GLOBAL",-4)DisplayStringNoNameDlg(Player1,@406)~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What? <CHARNAME>, you know it w- Wait, don't read it!~
DO ~SetGlobal("X3EmiApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@106)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")Alignment("X3Vie",NEUTRAL_EVIL)~ THEN ~This will be sweet to observe.~
DO ~SetGlobal("X3VieApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@516)~
== SARTHF1 ~Freedom!~
END 

I_C_T SARTEM01 16 X3EmiSARTEM01-16
== X3RebJ IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN ~We don't have to hurt her. Maybe there's another way in, instead.~
DO ~SetGlobal("X3RebApp","GLOBAL",-4)DisplayStringNoNameDlg(Player1,@406)~
== SARTEM01 ~Begone from this place. I will give you no aid.~
END

EXTEND_BOTTOM SARPRO01 11
IF ~Global("X3RebRomanceActive","GLOBAL",2)IsValidForPartyDialog("X3Reb") Gender(Player1,MALE)~  EXTERN X3Reb25J SarPro_No 
END 

CHAIN X3Reb25J SarPro_No 
~<CHARNAME>, what are you doing? I don't think this is a nice joke to play on anyone.~
END 
++ ~Ah, fear not, Recorder, her prices are too high anyway.~ EXTERN SARPRO01 3
+~PartyGoldGT(99)~+ ~I'm interested and going to take up her offer, actually.~ EXTERN X3Reb25J SarPro_Break 
++ ~Don't worry, love. I only have eyes for you.~ EXTERN X3Reb25J SarPro_Yes 

CHAIN X3Reb25J SarPro_Yes 
~Thank you, but let us stop this charade for the poor girl. I am sorry, miss, we aren't interested, but if you are truly suffering hardship, perhaps we can give you some gold?~
EXTERN SARPRO01 3

CHAIN X3Reb25J SarPro_Break 
~You...you are such an ass! I can't believe this. I guess I didn't know you as intimately as I thought. Do as you wish, but please, don't touch me again.~
DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)SetGlobal("X3RebAppChange","GLOBAL",-18)DisplayStringNoNameDlg(Player1,@409)~
EXTERN SARPRO01 12 


// Volo's obligatory interjection in Saradush.
I_C_T SARVOLO 2 X3RebSARVOLO2
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Historian Volo, it is an honor to meet you again, even if the place is not real suited to second meetings.~ 
END

EXTEND_TOP SARVOLO 9 #2
+ ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ + ~Tell me about Recorder.~ + X3RebVoloBio1
+ ~IsValidForPartyDialogue("X3Reb")Global("X3RebRomanceActive","GLOBAL",2)~ + ~Tell me about Recorder.~ + X3RebVoloBio2
END

CHAIN SARVOLO X3RebVoloBio1
~The very bard who inspired me to start my own chronicles of <CHARNAME>, Recorder has transformed herself from a mother who lost her son into a great gnome bard, an inspiration to all parents about the perseverance of heart. Few beings know someone so knowledgeable in lore and magic while equally talented in the musical arts.~
EXTERN X3Reb25J X3RebVoloBio


CHAIN SARVOLO X3RebVoloBio2
~Chasing a story to tell, Recorder found herself next to <CHARNAME>'s side becoming a powerful lorekeeper in her own right, mastering both the arts of magic and music both. And yet in her pursuit of recording history, she found an even greater treasure, <CHARNAME>'s love.~
EXTERN X3Reb25J X3RebVoloBio

CHAIN X3Reb25J X3RebVoloBio
~You are so talented with words, Master Volo. I'm honored to come from your lips at all!~
EXTERN SARVOLO 9

//Marching Mountains 

I_C_T HGKAR01 10 X3RebHGKAR01-10
== X3Emi25J IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ THEN ~<CHARNAME>, we don't need his gold or things, don't hurt him!~
DO ~SetGlobal("X3RebApp","GLOBAL",-7)DisplayStringNoNameDlg(Player1,@409)~
== HGKAR01 ~Aaaah!~
END

I_C_T HGNYA01 29 X3RebHGNYA01-29
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, I can't blame her change of heart. I am sorry we have to do this.~
END

// Amkethran and Beyond

I_C_T BALTH 7 X3RebBalth7
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ ~Oh, I am sure we won't be any trouble, but why does he say it like that?~
END 

I_C_T BALTH 23 X3RebBalth23
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~That sounds almost noble. Surely though, <CHARNAME> can be spared all of this?~
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfeh, noble? The guy's lost his mind if he thinks killing himself will fix everything. Could be another left we're all missing for all we know.~
END

I_C_T AMMAYOR 5 X3RebAMMAYOR-5
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh the poor girl. She was just wanting to do the right thing.~
END

I_C_T AMMERC04 2 X3RebAMMERC04
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh, what a cruel, cruel world.~
DO ~SetGlobal("X3RebApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@406)~
END

I_C_T AMASANA 3 X3RebAMASANA-3
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~Be careful, child. I know you are brave, but your father would dearly miss you if you were lost.~
DO ~SetGlobal("X3RebApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@416)~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Steal better next time. Noble deaths serve nothing.~
== AMASANA ~I will heed your advice.~
END

I_C_T MARLOWE 15 X3RebMARLOWE15
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~He didn't do anything, he doesn't deserve this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@409)~ 
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~What are you doing, <CHARNAME>?!~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@109)~ 
== MARLOWE ~Help me!~
END 

I_C_T MARLOWE 51 X3EmiMARLOWE-51
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~I hope he learned from this. Your child never deserves the weight of your own mistakes.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@419)~ 
== MARLOWE ~I will never forget this!~
END 

I_C_T MARLOWE 52 X3EmiMARLOWE-52 
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~This is awful. Why do we need it? Why can't we just bring her back?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@409)~ 
== X3Vie25J IF ~Alignment("X3Vie",NEUTRAL_EVIL)IsValidForPartyDialogue("X3Vie")~ THEN ~He deserved all of this. And this item may have power. A worthwhile opportunity.~
DO ~IncrementGlobal("X3VieApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@516)~ 
== MARLOWE ~I hope to never meet any of you again!~
END 

I_C_T AMSMITH 16 X3RebAMSMITH-16
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is going to make a very...strange entry in my records.~
END 

I_C_T BAZEYE01 16 X3RebBAZEYE16
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We should help them regardless, even if we do it ourselves. The poor souls.~
END 

I_C_T BAZPAT01 4 X3EmiBAZPAT01
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~I dread the passages that I have to write sometimes.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@409)~ 
== BAZPAT01 ~Attack!~
END 


// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 X3RebSolarFriend1
== X3Reb25J IF ~IsValidForPartyDialogue("X3Reb")!Global("X3RebRomanceActive","GLOBAL",2)~ THEN ~This is it, then. I have been honored to record your story. No matter what I write on the last passage, I am glad to have been by your side.~
END

// romanced, Recorder and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~IsValidForPartyDialogue("X3Reb")Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarPers","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarPers","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarPers
END

CHAIN X3Reb25J X3RebSolarPers
~This...is actually it.~
= ~It feels so different to actually be here, after all the trepidation and obstacles. The final chapter. The final words of the pages that I am nearly running out of. I don't even know what words to put down in this moment...my heart is beating so fast, both excited and frightened.~
END
++ ~What do you think I should do?~ + FinalChoice.1
++ ~I can't imagine leaving you, Recorder. I love you.~ + FinalChoice.2
++ ~I feel as if I should go forth with my destiny.~ + FinalChoice.1

CHAIN X3Reb25J FinalChoice.1 
~How can I answer that? I am just...a mere lorekeeper, whose answer would be biased and selfish. And so...I want to say: Grasp it, my love. Ascend.~
= ~And yet...I can't bear that, and I want you to stay.~
END 
IF ~PartyHasItem("X3RingR")~ EXTERN X3Reb25J FinalChoice.3
IF ~!PartyHasItem("X3RingR")Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.4
IF ~!PartyHasItem("X3RingR")!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.5

CHAIN X3Reb25J FinalChoice.3
~Stay and be my spouse. And I will be your wife as you asked. Your Rebecca, or Recorder, or whatever you want to call me. I just want to be with you.~
END 
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.4
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.5

CHAIN X3Reb25J FinalChoice.4
~You and Raban...you are my precious world.~
EXTERN X3Reb25J FinalChoice.5 

CHAIN X3Reb25J FinalChoice.5
~And yet if you go, I will never forget you. I will...love you no matter what choice you make.~
END
COPY_TRANS FINSOL01 27

CHAIN X3Reb25J FinalChoice.2 
~I love you too. So, so very much. And yet could I bear to be the one that says "stay for me?", to give you a regret that will follow you? The choices we make in our stories follow us forever, I know this so well.~
END 
IF ~PartyHasItem("X3RingR")~ EXTERN X3Reb25J FinalChoice.3
IF ~!PartyHasItem("X3RingR")Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.4
IF ~!PartyHasItem("X3RingR")!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J FinalChoice.5




// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarLeave","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarLeave","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarLeave","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarLeave","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarLeave
END

CHAIN X3Reb25J X3RebSolarLeave
~This...this is goodbye then. I will make sure my records are spread out all across the realm. History will remember all of the good you have done, I swear.~
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("X3Reb") Global("X3RebRomanceActive","GLOBAL",2) Global("X3RebSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3RebSolarStay","GLOBAL",1)~ EXTERN X3Reb25J X3RebSolarStay
END

CHAIN X3Reb25J X3RebSolarStay
~You are staying. You are...actually staying! I do not deserve this. You have made me so happy.~
END
++ ~Did you expect anything less of me?~ EXTERN X3Reb25J X3RebSolarStay1.1
++ ~You do deserve, this Recorder. I love you, always.~ EXTERN X3Reb25J X3RebSolarStay1.1
++ ~I can't let you get rid of me that easily.~ EXTERN X3Reb25J X3RebSolarStay1.1

CHAIN X3Reb25J X3RebSolarStay1.1
~I love you, so, so, very much.~
END
IF ~PartyHasItem("X3RingR")~ EXTERN X3Reb25J StayChoice.1
IF ~!PartyHasItem("X3RingR")Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J StayChoice.2
IF ~!PartyHasItem("X3RingR")!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J StayChoice.3

CHAIN X3Reb25J StayChoice.1 
~I can't wait to be married. I don't think I could have a better spouse.~
END 
COPY_TRANS FINSOL01 32

CHAIN X3Reb25J StayChoice.2
~I can't wait for us to be a full family again, and reunite with Raban. Oh, but we have all of my recordings to submit, the temple will be so pleased, I can't wait for our journey back.~
END 
COPY_TRANS FINSOL01 32

CHAIN X3Reb25J StayChoice.3
~I feel so optimistic, like we can do anything. Maybe...maybe we can even find Raban, and be a family again. I know with you...we can do anything.~
END 
COPY_TRANS FINSOL01 32




// Recorder's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("X3RebRomanceActive","GLOBAL",2) InParty("X3Reb") See("X3Reb")~ EXTERN HGWRA01 X3RebWraith1
END

CHAIN HGWRA01 X3RebWraith1
~What of the inevitable pain you must give to the one you love? Your beloved "Recorder", or should I say Rebecca?~ [HGWRA108]
DO ~SetGlobal("X3LovedOne","GLOBAL",3)~
== X3Reb25J ~Pain? I don't know what you are talking about. How do you know my name? You have no right to use it.~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",3)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3RW1")~ EXIT
END

BEGIN X3RLOVE 

CHAIN 
IF ~Global("X3RebWraithSpirit1","GLOBAL",0)~ THEN X3RLOVE X3RebWraithSpirit1
~Mother...mother.~
DO ~SetGlobal("X3RebWraithSpirit1","GLOBAL",1)~
== X3Reb25J ~R-raban?! Oh, my son...but how are you here? No, this is not possible.~
== X3RLOVE ~I...I am dead, mother.~
END 
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J Saved_Love 
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J Unsaved_Love 

CHAIN X3Reb25J Saved_Love 
~No. I saved you Raban. I freed you and sent you on a ship, you're free!~
== X3RLOVE ~The ship wrecked, mother, and I drowned before ever making it to shore. The murder you attempted finally complete.~
== X3Reb25J ~But I didn't murder you, Raban, I-~
== X3RLOVE ~You tried to kill me once. Do not lie, mother. I loved you and waited for you, but you have only sent me away.~
== X3Reb25J ~Don't say that, Raban. I love you! We will be together again, I will be the best mother for you, don't say that!~
== X3RLOVE ~You murdered me, mother. You murdered me *twice*.~
EXTERN X3Reb25J Sob 

CHAIN X3Reb25J Unsaved_Love 
~No...No! Was it the mage? Who killed you, my son?~
== X3RLOVE ~You did, mother. The very moment you were on that dock and drew that knife.~
== X3Reb25J ~But you lived, Raban, and I...have hated myself for that ever since. I tried to rescue you, I-~
== X3RLOVE ~Failed. Failed and gave up. Just like you did on the dock, mother.~
== X3Reb25J ~I haven't given up, Raban. I will search the realms twice over, please! You can't be dead.~
== X3RLOVE ~I am. You murdered me, mother. You let me die.~
EXTERN X3Reb25J Sob 

CHAIN X3Reb25J Sob 
~No! No, no, no! Lies! *sob* Make this stop, make it stop!~ 
END 
++ ~Stop it! She's not responsible for what happened to you!~ EXTERN HGWRA01 25
++ ~Stop this, Gorion! Recorder doesn't deserve this!~ EXTERN HGWRA01 25
++ ~Enough! I won't allow this to continue!~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~Trust your knowledge, Recorder, this is a lie!~ EXTERN HGWRA01 25 

//Engagement Ring 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25J engagement 
~<CHARNAME>...this ring? Are you really wanting to...~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~If you will have me, yes.~ + engagement_yes 
++ ~I have been wanting to ask for a while. Will you marry me, Recorder?~ + engagement_yes 
++ ~Well, if you are having doubts...~ + engagement_doubts

CHAIN X3Reb25J engagement_yes 
~Yes, absolutely! This is so beautiful...I do not deserve something so special, but I am honored.~
EXTERN X3Reb25J engagement_yes2 

CHAIN X3Reb25J engagement_doubts
~I have no doubts. You are the only one for me, <CHARNAME>.~
EXTERN X3Reb25J engagement_yes2 

CHAIN X3Reb25J engagement_yes2 
~Oh, <CHARNAME>. My heart is singing. For you, it always will.~
DO ~TransformItem("X3ERING","X3RINGR")~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~How wonderful! It's nice to see a bit of love and joy despite what we face.~
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Aww, man. Another good one taken from the sea for good. I've got to work on getting my own.~
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3Reb25J engagement_auto_fail 
~<CHARNAME>...I um, what do you mean by this?~
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ ~Oh, I just figured it would look nice.~ + eaf.1 
++ ~I want to marry you, Recorder.~ + eaf.2
++ ~I was hoping you could unlock it's magic properties.~ + eaf.4

CHAIN X3Reb25J eaf.1 
~As kind as that is, these are engagement rings. I would not feel comfortable wearing it.~
EXTERN X3Reb25J eaf.3 

CHAIN X3Reb25J eaf.3
~Here, please, have it back. It looks beautiful, and should be given to someone who you love.~
= IF ~Global("X3VieRomanceActive","GLOBAL",2)~ THEN ~Maybe Vienxay? She would enjoy it, I think.~
= IF ~Global("X3EmiRomanceActive","GLOBAL",2)~ THEN ~Maybe Emily? I know she would say yes.~
= IF ~Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Maybe Kale? Halflings have their own cultural marriage proposals, but you could try.~
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

CHAIN X3Reb25J eaf.2 
~Heehee, I know you are trying to be funny...or I hope so. But I do not want to marry you.~
EXTERN X3Reb25J eaf.3

CHAIN X3Reb25J eaf.4 
~I do not think I can know. Its properties are dependent on who the wearer and their acceptance. They are extremely prized, I am surprised you even came across one.~
EXTERN X3Reb25J eaf.3


CHAIN IF ~Global("X3RebToBEvent","GLOBAL",2)~ THEN X3Reb25J post_mage
~Seeing that man again, that mage of Phelgrim's was...difficult.~
DO ~IncrementGlobal("X3RebToBEvent","GLOBAL",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~Dead("X3RM25")Global("X3RebQuest","GLOBAL",15)~ + sonsavedmagedead 
IF ~!Dead("X3RM25")Global("X3RebQuest","GLOBAL",15)~ + sonsavedmagealive
IF ~Dead("X3RM25")!Global("X3RebQuest","GLOBAL",15)~ + nosavemagedead 
IF ~!Dead("X3RM25")!Global("X3RebQuest","GLOBAL",15)~ + nosavemagealive

CHAIN X3Reb25J sonsavedmagedead 
~I don't think killing him was right. Not for our own vindication. This place was already his own doom in a way.~
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I can't let anyone live who has harmed my lover.~ + ssmd.1 
++ ~And yet if he got out, he could continue to harm others.~ + ssmd.2 
++ ~Perhaps you are right. I just let my emotions get the best of me.~ + ssmd.3
++ ~Don't question me. This was the best decision, and that is that.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + ssmd.4

CHAIN X3Reb25J ssmd.1
~I don't want you to murder others for my sake, <CHARNAME>. Not if we can avoid it.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssmd.2
~You could be right. I just did not get that feeling from him, myself.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssmd.3
~I was briefly angry, myself. I have just learned how dangerous it can be to let your heart have too much say at times.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssmd.4
~You do not need to be so...never mind. If that is what you want, I won't say anything about it.~
EXIT 

CHAIN X3Reb25J sonsavedmagealive 
~But from what I see of him, I do not think I need fear him or any of Phelgrim's associates any longer.~
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I will always keep you safe, my love.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + ssma.1
++ ~You still seem a little shaky. Are you all right?~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + ssma.2 
++ ~Are you sure it's a good idea to let him live?~ + ssma.3
++ ~We should get going. There's much to do.~ +  mage.X

CHAIN X3Reb25J ssma.1
~I know you will. Though I must admit when you say it I feel even more reassured.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssma.2
~I am all right. Or at least, I will be.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J ssma.3
~He cannot do anything to us. All of his past actions and failures are his alone, and he seemed to understand that.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J mage.X
~Yes. I guess it's not wise to just stand around if we can avoid it.~
EXIT 

CHAIN X3Reb25J nosavemagedead 
~Killing him feels...so empty. It doesn't bring Raban back to me. It feels like empty vengeance.~
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~(Hold her close.)~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + nsmd.1 
++ ~I am sorry we couldn't do more.~ + nsmd.2 
++ ~I found his death quite satisfying.~ + nsmd.3 
++ ~There's nothing more to be done. We should keep moving.~ + mage.X

CHAIN X3Reb25J nsmd.1
~(She lets you take her close. Her cheek feels wet against you and her arms hold against you tightly.)~
EXTERN X3Reb25J mage.love

CHAIN X3Reb25J nsmd.2
~I am too, <CHARNAME>. I am too.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nsmd.3 
~Taking in pleasure in things like that does us no good, <CHARNAME>. But I admit a small part of me...wanted it, as much as I loath to admit it. I need to be better then that.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nosavemagealive 
~I don't know if I will regret letting him live. I just wish he had not lost Raban, that there was a way to still find him.~
END 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I've seen this torment you before, love. Killing him wouldn't have made it easier.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + nsma.1
++ ~He could have been lying. Are you sure we could trust his words?~ + nsma.2 
++ ~It's not too late to go back and kill him.~ + nsma.3
++ ~There's nothing more to be done. We should keep moving.~ + mage.X

CHAIN X3Reb25J nsma.1
~I know, my love. I just miss my Raban.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nsma.2
~I sensed no lie from him. He seemed miserable and in pain himself.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J nsma.3
~It would accomplish nothing. Nothing but petty revenge.~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",2)~ + mage.love
IF ~!Global("X3RebRomanceActive","GLOBAL",2)~ + mage.friend 

CHAIN X3Reb25J mage.love 
~I don't think I would have much strength without you here right now. This siege and then now that mage, it's just too much. I just hope we find a way to put an end to this.~
EXIT 

CHAIN X3Reb25J mage.friend 
~Let us continue on our way. I don't want to think more about that mage.~
EXIT 

// Unlike the prior talk, this is a non-romance only conversation. 
CHAIN IF ~Global("X3RebToBTalk","LOCALS",2)~ THEN X3Reb25J FriendshipTalk1 
~Have you ever thought to pause and think about your legacy, <CHARNAME>?~
DO ~IncrementGlobal("X3RebToBTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~What do you mean?~ + FT.1
++ ~You mean about my actions on my journey? From time to time.~ + FT.2
++ ~Not really, no.~ + FT.2
++ ~This isn't a good time to talk.~ + FT1.X 

CHAIN X3Reb25J FT1.X 
~I see. We can talk another time, then.~
EXIT 

CHAIN X3Reb25J FT.1
~Your legacy. The memories that you leave people behind. There is what I am writing, but people will infer their own opinions, their own stories from what you have done.~
EXTERN X3Reb25J FT.2

CHAIN X3Reb25J FT.2
~It is filled with so much death. So many lives you have claimed to get to this point. Not always intentionally...and not always willingly. Does that ever bother you?~
END 
++ ~Sometimes. But to survive you must fight.~ + FT.3 
++ ~Regrettably, far too many.~ + FT.4
++ ~And it will be filled with more. I await every battle.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FT.5
++ ~I've never thought of all the lives I have taken. It is par with the course for an adventurer, no?~ + FT.6

CHAIN X3Reb25J FT.3
~There is a justification in that, though many fights can be avoided with words or understanding.~
EXTERN X3Reb25J FT.4 

CHAIN X3Reb25J FT.4
~I hope it does not sound like I am judging you negatively. It is just something that has been harder and harder not to notice.~
== X3Reb25J ~I guess it is because of your father. God father. Godfather. I just realized just how poetic that is.~
END 
++ ~There's little I can do about my circumstances, Recorder.~ + FT.7
++ ~You find that funny, do you?~ + FT.8
++ ~Eventually this will come to an end. And with it, all the killing.~  + FT.9

CHAIN X3Reb25J FT.7
~You are right. I am sorry for speaking as I was. I think for your sake, I hope all this death we see and experience comes to an end soon.~
EXIT 

CHAIN X3Reb25J FT.8
~Call me a gnome, I just found it...amusing. We should take levity from the little things. Still, I hope for your sake, all of this death we see and experience comes to an end soon.~
EXIT 

CHAIN X3Reb25J FT.9
~Eventually. For your sake, I hope it comes to an end soon.~
EXIT 

CHAIN X3Reb25J FT.5
~So you look forward to all of that blood? I do not understand how you can enjoy it so much.~
EXTERN X3Reb25J FT.4

CHAIN X3Reb25J FT.6
~Often, admittedly. But not to rise to the number of lives you have claimed. It is terrifying to truly think of the number.~
EXTERN X3Reb25J FT.4

// Friendship Talk 2

CHAIN IF ~Global("X3RebToBTalk","LOCALS",4)~ THEN X3Reb25J FriendshipTalkSecond
~The world seems more and more a dark place. Every time I get hopeful, I just see more sorrow and suffering, and I wonder if history ever really gets better.~
DO ~IncrementGlobal("X3RebToBTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
= ~I must sound so grim. I don't know what is coming over me.~
END 
++ ~You are seeing the world for what it is, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FS.1 
++ ~You are feeling doubt.~ + FS.2
++ ~I am not sure either. This is quite unlike you.~ + FS.2
++ ~This isn't the time for conversation.~ + FS.X 

CHAIN X3Reb25J FS.X 
~Oh. Let us just carry on, then.~
EXIT 

CHAIN X3Reb25J FS.1 
~Is this really it? Every dark entity, another one to take its place? Every poor man or woman aided, another one stricken away of their hope?~
= ~I want a world where you can see things improving, where things get better, where everyone can have peace and happiness.~
END 
++ ~That world doesn't exist, Recorder. It never has.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + FS.4
++ ~I believe it will get closer. With every step. It won't happen overnight. It just needs patience and faith.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FS.5
++ ~If I can achieve my destiny, I can give you that world.~ + FS.6

CHAIN X3Reb25J FS.2 
~Maybe it is. I just was hoping for something on this journey. Some bright happy moral to take from recording your adventures, but I've seen so much pain.~
EXTERN X3Reb25J FS.2 

CHAIN X3Reb25J FS.4 
~I want to yell at you for that and say no and no and no...but everyday I wonder if I really was wrong all this time.~
= ~Never mind me. Maybe...as unlikely as it seems, at the end of this journey of yours, some semblance of hope will come.~
EXIT 

CHAIN X3Reb25J FS.5 
~There you are again. Always with the message of inspiration. I don't understand how you do that, <CHARNAME>.~
END 
++ ~Strength. And confidence.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + FS.9
++ ~It is because of everyone else's support that I can in turn, support you.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + FS.7
++ ~I don't know myself, to be honest.~ + FS.8

CHAIN X3Reb25J FS.9
~You have those in great quantities, <CHARNAME>. I think it is definitely the trait I gush about the most of yours.~
EXTERN X3Reb25J FS.10 

CHAIN X3Reb25J FS.7
~Giving credit to everyone else? Sometimes I feel you admire us as much as we admire you. Even if not everyone will admit that.~
EXTERN X3Reb25J FS.10

CHAIN X3Reb25J FS.8
~Whatever it is...I appreciate it. More than you know.~
EXTERN X3Reb25J FS.10

CHAIN X3Reb25J FS.10
~But come. The road awaits, and I feel...hope does, too.~
EXIT 

CHAIN X3Reb25J FS.6
~There are many other gods. I don't know if it would be that easy. But somehow...I really do feel you would try. I guess...that will have to be enough.~
EXIT 

//Friendship Talk Final 

CHAIN IF ~Global("X3RebToBTalk","LOCALS",6)~ THEN X3Reb25J FriendshipTalkFinal
~I am curious, <CHARNAME>. There are less and less children of Bhaal. When you are the last, have you decided what you will do?~
DO ~IncrementGlobal("X3RebToBTalk","LOCALS",1)~
END 
++ ~You seem confident I will be the last, Recorder.~ + FF.1
++ ~I don't want the power, if that is what you are asking.~ + FF.2
++ ~I will take on my birthright, of course.~ + FF.3 
++ ~I don't know yet. I don't think I will know until it is time.~ + FF.4
++ ~I'd rather not answer, Recorder.~ + FF.X 

CHAIN X3Reb25J FF.1
~I am your friend, your writer, and a bard. I am heavily biased, but I want you to live.~
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.2
~To have the choice of being a god and saying no. I can see few people so easily declining such an offer. Even myself...the good that one could do.~
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.3
~I admit that I might say yes myself. One could accomplish so much good as a god. Though I imagine even the gods have rules that we do not understand.~
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.4 
~It is a difficult choice. A life-changing one. I think if I were in your shoes< I would say yes, because of the good one could do. But how can we really know what it would even be like, to not be mortal anymore? It must be terrifying.~
EXTERN X3Reb25J FF.5

CHAIN X3Reb25J FF.X 
~I see. Then I will see what you decide for myself I hope, when it is time.~
EXIT 

CHAIN X3Reb25J FF.5
~Whatever you decide, I think I will miss traveling with you. And I will have to find someone or something new to write about, though I could spend years just telling the stories we have experienced together.~
END 
+~Global("X3RebQuest","GLOBAL",15)~+ ~What do you imagine yourself doing after this?~ + FF.6
+~!Global("X3RebQuest","GLOBAL",15)~+ ~What do you imagine yourself doing after this?~ + FF.7
+~Global("X3RebQuest","GLOBAL",15)~+ ~You could always stay with me.~ + FF.8
+~!Global("X3RebQuest","GLOBAL",15)~+ ~You could always stay with me.~ + FF.9 
++ ~I hope to hear one of these tales sometime.~ + FF.10 

CHAIN X3Reb25J FF.6
~After I submit my records to the church, I will go to my son. I will be a proper mother to him, and raise him well.~
EXTERN X3Reb25J FF.9

CHAIN X3Reb25J FF.7
~I will search high and low for Raban. I know you might ask to go with me, but I can't let you. I owe you too much.~
EXTERN X3Reb25J FF.12 

CHAIN X3Reb25J FF.12 
~First though, I would fulfill my duty and submit my records of my travels with the church. And on my journeys, people will need a bit of levity, and I'll provide it with songs and stories.~
== X3Reb25J ~Your story will certainly find its way to a bookshelf someday. I just hope that story has a happy ending.~
END 
++ ~Aye. Let's see this through, shall we?~ + FF.13
++ ~It certainly will, and no less.~ + FF.14
++ ~It sounds like you plan to settle right back into adventuring.~ + FF.15

CHAIN X3Reb25J FF.8
~I can't. I have a son to raise after I submit my records to the church. I want to be a proper mother to him, and raise him well.~
EXTERN X3Reb25J FF.11

CHAIN X3Reb25J FF.11
~I'll earn my keep from sharing stories and performing for the people. People will be looking for others to herald in happier times.~
== X3Reb25J ~Your story will certainly find its way to a bookshelf someday. I just hope that story has a happy ending.~
END 
++ ~Aye. Let's see this through, shall we?~ + FF.13
++ ~It certainly will, and no less.~ + FF.14
++ ~It sounds like you plan to settle into a more domestic life.~ + FF.16

CHAIN X3Reb25J FF.9
~I can't. I have to find Raban, even if the chance of ever reuniting with him is none, I must try.~
EXTERN X3Reb25J FF.12 

CHAIN X3Reb25J FF.10
~Oh, well that would depend on your choice, wouldn't it? But then I should probably not doubt the limits of a gods power, either.~
== X3Reb25J ~Your story will certainly find its way to a bookshelf someday. I just hope that story has a happy ending.~
END 
++ ~Aye. Let's see this through, shall we?~ + FF.13 
++ ~It certainly will, and no less.~ + FF.14

CHAIN X3Reb25J FF.13 
~Yes. Let's.~
EXIT 

CHAIN X3Reb25J FF.14 
~I will remember how confident you were in this moment. I think you are ready for whatever comes.~
EXIT 

CHAIN X3Reb25J FF.15
~I do not think I could settle down until I found Raban. So yes, I would continue adventuring, until I couldn't search anymore.~
EXTERN X3Reb25J FF.17 

CHAIN X3Reb25J FF.16 
~I owe Raban a lifetime of proper mothering, if he lets me. I would miss this, but...he deserves a proper home. Proper love. A proper life.~
EXTERN X3Reb25J FF.17 

CHAIN X3Reb25J FF.17
~But enough of that. That is the future. We still have to see through the now before that can arrive happen.~
EXIT 

// Romance 
CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",2)~ THEN X3Reb25J LoveTalk1 
~It seems we haven't had much chance to enjoy any sort of peace. I didn't even get a chance to share with the church any of my records so far.~ [X3RLS]
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)~
END 
++ ~Are you running out of parchment?~ + 1.1
++ ~The small reprieve in Suldanessellar was nice, if short lived.~ + 1.2
++ ~There is still much to do before we can rest.~ + 1.3
++ ~We should talk later, Recorder. This isn't the right time to converse.~ + 1.X


CHAIN X3Reb25J 1.X 
~It isn't? Another time, then.~
EXIT  

CHAIN X3Reb25J 1.1
~I was able to restock in Suldanessellar, but if I hadn't, I would be running out. I couldn't stop writing after we stopped Irenicus.~
EXTERN X3Reb25J 1.4

CHAIN X3Reb25J 1.2 
~There was so much history and rich culture in Suldanessellar. I think they were getting a bit exhausted from all of my questions.~
EXTERN X3Reb25J 1.4

CHAIN X3Reb25J 1.3 
~I guess the chapters of your own tale have yet to wind to its conclusion. I suppose I should have understood that.~
EXTERN X3Reb25J 1.4 

CHAIN X3Reb25J 1.4 
~I can still see us back at the tree of life, fighting Irenicus still. That was an amazing moment, but I have a feeling we are about to see some more challenges ahead of us.~
END 
++ ~Together, I do not think anything will be able to stop us.~ + 1.5 
++ ~You seem rather excited to continue.~  + 1.6 
++ ~I am glad you are by my side, Recorder.~ + 1.7

CHAIN X3Reb25J 1.5 
~Together, yes. Together always, I hope, through to the end, no matter the challenge.~
EXTERN X3Reb25J 1.8

CHAIN X3Reb25J 1.6
~I am. I must admit that defeating Irenicus has woken in such confidence in me. I feel like we can really change the world for the better. We have. We saved Suldanessellar.~
EXTERN X3Reb25J 1.8

CHAIN X3Reb25J 1.7
~Where else would I ever want to be, my love?~
EXTERN X3Reb25J 1.8
 
CHAIN X3Reb25J 1.8
~We are starting the ascent to whatever lies in your destiny. Let us see what the final challenges are.~
EXIT 

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",4)~ THEN X3Reb25J LoveTalk2
~Do you have any regrets, <CHARNAME>? Things you could have tried to change, if you could?~ [X3RLS]
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",7)~
END 
++ ~If I could? Perhaps not be a spawn of Bhaal.~ + 2.1 
++ ~Perhaps if I could have saved Gorion.~ + 2.2 
++ ~Nothing. I am glad with how everything went.~ + 2.3

CHAIN X3Reb25J 2.1 
~Truly? That has defined so much of your journey. I understand why you say that, however. I do not think I would have survived if I were in your shoes.~
EXTERN X3Reb25J 2.4 

CHAIN X3Reb25J 2.2 
~Your foster father. I understand. To see the ones we love alive again...I would too, wish for that.~
EXTERN X3Reb25J 2.4

CHAIN X3Reb25J 2.3 
~No regrets? I see. I suppose you must have great confidence in yourself.~
EXTERN X3Reb25J 2.4

CHAIN X3Reb25J 2.4
~I used to regret so much. I hope this doesn't sound terrible, but now I feel that everything that seems like a punishment and we endure...is a gift of sorts.~
= ~Everyday we get a chance to make something out of life. And next to you...writing your story while enjoying the smiles you give me everyday, that is something.~
= ~I am, truthfully, so scared of what may happen soon. But I do wish to say...thank you.~
END 
++ ~You have no regrets, then?~ + 2.5
++ ~No, thank you Recorder. That means a lot to me.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 2.6
++ ~Come, we should get going. We can idle the time away later.~ + 2.X 

CHAIN X3Reb25J 2.5
~Some, still, yes. But...loving you will never be one of them.~
EXTERN X3Reb25J 2.6 

CHAIN X3Reb25J 2.6
~(With a slight blush, she gives you a quick kiss to your lips, closing her eyes, and exhaling in relief, before fluttering back to her position in the party.)~
EXIT 

CHAIN X3Reb25J 2.X 
~Oh, I am sorry. Yes, please, lead us on, <CHARNAME>.~
EXIT 


// Wraith Conversation 
CHAIN IF ~Global("X3RebWraithTalk","LOCALS",1)~ THEN X3Reb25J WraithTalk
~I don't know what I am doing here. What was I thinking?~
DO ~IncrementGlobal("X3RebWraithTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 2G.1
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 2S.1

CHAIN X3Reb25J 2G.1
~My son is out there, somewhere. And I am just...I am not even trying. I love you. I want to help you. But Raban...Raban...~
END 
++ ~Get a hold of yourself, Recorder. It was all lies and manipulation.~ + W.1 
++ ~Breathe, Recorder. Breathe.~ + W.2
++ ~Go then, if that is what you want. Chase after him.~ + W.3

CHAIN X3Reb25J 2S.1
~I should be mothering, Raban. He could be in danger. They could be taking him back, and I wouldn't be there to protect him.~
END 
++ ~Get a hold of yourself, Recorder. It was all lies and manipulation.~ + W.1
++ ~Breathe, Recorder. Breathe.~ + W.2 
++ ~Go then, if that is what you want. Chase after him.~ + W.3

CHAIN X3Reb25J W.3
~I...I will then. Goodbye, <CHARNAME>. I'm sorry I couldn't see this to the end with you, my love.~
//Romance doesn't break...but she escapes and is unreachable for good.
DO ~EscapeArea()~
EXIT 

CHAIN X3Reb25J W.2 
~How can I breathe? I feel terrified. The things he said...that he told me. They are all true. They are all very true.~
END 
++ ~The shade knew what could hurt you. It wants you to act this way.~ + W.4 
++ ~You know well the lore of these creatures, Recorder. You know that it was all the art of illusion.~ + W.4
++ ~If you are so worried then, go. Go find Raban, though it will pain me to be without you.~ + W.3 
++ ~Are you so weak you will really believe this?~  + W.4

CHAIN X3Reb25J W.1 
~How can you know? The things he said...that he told me. They are all true. They are all very true.~
END 
++ ~The shade knew what could hurt you. It wants you to act this way.~ + W.4 
++ ~You know well the lore of these creatures, Recorder. You know that it was all the art of illusion.~ + W.4
++ ~If you are so worried then, go. Go find Raban, though it will pain me to be without you.~ + W.3 
++ ~Are you so weak you will really believe this?~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + W.4

CHAIN X3Reb25J W.4 
~Maybe it did want to hurt me. But it doesn't mean it was lies. I found truth in its words...and that is what cuts me.~
END 
++ ~Do not let that creature undo all of the growth you have had for yourself for this pain, Recorder, please.~ + W.5
++ ~Fine then. Let it sink you into misery for all I care.~ DO ~SetGlobal("X3RebAppChange","GLOBAL",-2)~ + W.6
++ ~I don't know what else to tell you, Recorder.~ + W.7

CHAIN X3Reb25J W.5 
~What growth? I feel like...*Sigh*. I just need to be alone, I think. I know you are trying to help, but this just can't be helped.~
EXIT 

CHAIN X3Reb25J W.6
~It's what I deserve, isn't it? Just misery, misery, misery.~
EXIT 

CHAIN X3Reb25J W.7
~There isn't anything to say. I know you are trying to help, but it can't be helped. I have never more hated being so...nothing. Never mind.~
EXIT 

// This one happens post rest.
CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",6)~ THEN X3Reb25J LoveTalk3
~(You haven't fully fallen into sleep when you notice a presence near you. As you prepare to protect yourself, you notice it is just Recorder approaching you.)~ [X3RLS]
== X3Reb25J ~I don't mean to wake you, <CHARNAME>. Maybe this is a bad time.~
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebChangeApp","GLOBAL",6)~
END 
++ ~No, come closer. Is something wrong?~ + 3.1 
++ ~I thought you needed time to yourself.~ + 3.2
++ ~It is. I'm exhausted.~ + 3.X

CHAIN X3Reb25J 3.1 
~I wanted to say I am sorry for my words before, <CHARNAME>, after the wraith. I just feel like such a failure of a mother to my child. I guess it has never truly stopped bothering me.~
END 
++ ~You aren't a failure, Recorder. You are a good gnome.~ DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.3
+~!Global("X3RebQuest","GLOBAL",15)~+ ~Raban may be lost, but the circumstances were extraordinary. You have to forgive yourself.~ + 3.4
+~Global("X3RebQuest","GLOBAL",15)~+ ~You saved your son, Recorder. Forgive yourself.~  + 3.4
++ ~We learn from our failures, Recorder. As long as you can get up from them, then you will grow stronger.~ DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",2)~ + 3.5

CHAIN X3Reb25J 3.2 
~Maybe I thought I did. But I was wrong. I was just upset and handling it poorly.~
EXTERN X3Reb25J 3.2

CHAIN X3Reb25J 3.3 
~You are sweet, <CHARNAME>. Your assurances from before were as always, right. I think I am in a better place in my heart.~
EXTERN X3Reb25J 3.6

CHAIN X3Reb25J 3.4 
~I am trying to forgive myself. It will take more time, but I do feel in a better place now.~
EXTERN X3Reb25J 3.6

CHAIN X3Reb25J 3.5
~You are right, <CHARNAME>. Everything we suffer is a gift in a grim way, because we grow from it.~
EXTERN X3Reb25J 3.6

CHAIN X3Reb25J 3.6
~Still, I should make it up to you. And I have something in mind...~
END 
++ ~Oh? What is it?~ DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.7
++ ~I can think of something you can do...~ DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.7 
++ ~(Pull her forward towards yourself.)~ DO ~IncrementGlobal("X3RebChangeApp","GLOBAL",1)~ + 3.8
++ ~Another time, Recorder. We should get some rest.~ + 3.9

CHAIN X3Reb25J 3.7
~(Her lips curl with mischief as she crawls towards you and finds your lips with hers, full of a promise of a blissful rest.)~
EXIT 

CHAIN X3Reb25J 3.8
~(She laughs as you pull her to you, lips connecting with yours as she hurries to strip you and herself of clothing.)~
EXIT 

CHAIN X3Reb25J 3.9
~I understand. I will just curl and cuddle with you, then. There isn't any better place than close to you.~
EXIT 

CHAIN X3Reb25J 3.X 
~I...I will come back another time. I just wanted to say I am sorry. Rest well.~
DO ~RestParty()~
EXIT 

//Love Talk #4

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",8)~ THEN X3Reb25J LoveTalk4
~All of those bodies...those people. The burning...I've never seen such horror with my own eyes. I mourn for the losses in Saradush.~ [X3RLS]
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~There is nothing we can do for them.~ + 4.1 
++ ~It is just more death in my wake. I am used to it by now.~ + 4.2 
++ ~The weaker Bhaalspawn die and the stronger continue to survive.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 4.1
++ ~We should keep moving. We can't muse over Saradush.~ + 4.X 

CHAIN X3Reb25J 4.X 
~You are right. Never mind me.~
EXIT  

CHAIN X3Reb25J 4.1
~Do you really believe that? With all that we have accomplished...it is hard to really understand even with more power we are still powerless to do some things.~
EXTERN X3Reb25J 4.4 

CHAIN X3Reb25J 4.2 
~It is just more death to you, <CHARNAME>? Love, every life is precious. So very precious.~
EXTERN X3Reb25J 4.4 

CHAIN X3Reb25J 4.3 
~There is a morbid truth to that. But those poor souls still suffered. It was not a birth any of them asked for.~
EXTERN X3Reb25J 4.4 

CHAIN X3Reb25J 4.4 
~It is a cycle, almost. Such fights for power have always occurred in history. It was noble for Saradush to protect who they could, even if they were to fall.~
== X3Reb25J ~Others will continue to exert their dominion over others. All for power. All for their own might. I just wish I saw a way to end that.~
END 
++ ~Awareness perhaps. But I too believe, that such individuals will always exist.~ + 4.5 
++ ~It is not all bad, Recorder. Might inspires ambition, which fosters self-growth.~ + 4.6 
++ ~Must you always prattle about history?~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + 4.7

CHAIN X3Reb25J 4.5
~When things settle down, I would love to inspire my church members to outreach more to city leaders and noblemen and women about these things. Maybe through these stories, they can find their own answers to peace.~
EXTERN X3Reb25J 4.8

CHAIN X3Reb25J 4.7
~History matters, <CHARNAME>. I have said before how dangerous it is to ignore patterns, to not understand our own minds.~
EXTERN X3Reb25J 4.8

CHAIN X3Reb25J 4.6
~You have a point I cannot entirely refute, <CHARNAME>. Ambition is not evil. It is only so when it is pursued at the cost of life and others well-being.~
EXTERN X3Reb25J 4.8

CHAIN X3Reb25J 4.8
~I suppose in the context of things, it is all centered around the Bhaalspawn. It is why so many feel as they do, either protective or hatred or scared, or maybe a bit of all of it.~
END 
++ ~And which of these do you feel of me?~ + 4.9
++ ~They have a right to fear us. We hold much power and sway of the times.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + 4.10
++ ~I am not like the others, though. Would you put me with them in your mind?~ + 4.9 

CHAIN X3Reb25J 4.9
~I love you. Devotedly. Unquestionably. I would protect you with all my ability. But I am scared...scared of what will happen to you in the end.~
EXTERN X3Reb25J 4.11

CHAIN X3Reb25J 4.10 
~You do. And that scares me. You are strong, my love. But I worry that we will find a Bhaalspawn who is equal in might. And I always want to protect you.~
EXTERN X3Reb25J 4.11 

CHAIN X3Reb25J 4.11 
~But I imagine we will see more of these other Bhaalspawn soon enough, one way or another.~
EXIT 

// Lovetalk #5

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",10)~ THEN X3Reb25J LoveTalk5
~Have you...ever given thoughts about children, <CHARNAME>?~ [X3RLS]
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~About whether I like them or not, or having them?~ + 5.1 
++ ~Not really no. It's not the time for it, is it?~ + 5.2
++ ~Oh no. Don't tell me. Are you with child?~ + 5.3
++ ~I'd rather not discuss this right now.~ + 5.X 

CHAIN X3Reb25J 5.X 
~I guess it is not the time for such talk. Another time, then.~
EXIT 

CHAIN X3Reb25J 5.3 
~What?! I wouldn't be that irresponsible. I make sure to use a few herbs after we...after I let you explore my garden.~
END 
++ ~Now that's a word for it.~ + 5.4 
++ ~Your garden?~ + 5.5
++ ~I wouldn't mind exploring it some more tonight.~ + 5.6

CHAIN X3Reb25J 5.4
~Oh, you are making fun of me. I'll have to get you back for that.~
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.5
~My- you know what I mean.~
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.6
~You bad, bad, <PRO_MANWOMAN>. You are so very far from innocent.~
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.1 
~Both, I suppose. If you like them or would want to have them.~
END 
IF ~!Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5.2
~Not now but...in a sort of future, if you could think that far.~
END 
IF ~!Global("X3RebQuestp","GLOBAL",15)~ EXTERN X3Reb25J 5G.6
IF ~Global("X3RebQuest","GLOBAL",15)~ EXTERN X3Reb25J 5S.6

CHAIN X3Reb25J 5G.6
~I lost Raban. But I would want a second chance in the future. A chance to do it right, with a real partner.~
END 
IF ~Gender(Player1,MALE)Race(Player1,GNOME)~ EXTERN X3Reb25J 5G.7
IF ~Gender(Player1,MALE)OR(2)Race(Player1,DWARF)Race(Player1,HALFLING)~ EXTERN X3Reb25J 5DH.7
IF ~Gender(Player1,MALE)!Race(Player1,DWARF)!Race(Player1,GNOME)!Race(Player1,HALFLING)~ EXTERN X3Reb25J 5.7
IF ~!Gender(Player1,MALE)~ EXTERN X3Reb25J 5F.7

CHAIN X3Reb25J 5S.6
~I am lucky to have Raban, but when I see him again, his childhood won't ever have been normal. I want a second chance in the future, to do it right by another child, with a real partner.~
END 
IF ~Gender(Player1,MALE)Race(Player1,GNOME)~ EXTERN X3Reb25J 5G.7
IF ~Gender(Player1,MALE)OR(2)Race(Player1,DWARF)Race(Player1,HALFLING)~ EXTERN X3Reb25J 5DH.7
IF ~Gender(Player1,MALE)!Race(Player1,DWARF)!Race(Player1,GNOME)!Race(Player1,HALFLING)~ EXTERN X3Reb25J 5.7
IF ~!Gender(Player1,MALE)~ EXTERN X3Reb25J 5F.7

CHAIN X3Reb25J 5.7
~It may be a bit silly to dream that though. We aren't exactly...compatible in a child-making way. But then with your ancestry, who knows?~
END 
++ ~It won't be for a lack of trying.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8
++ ~We can always adopt, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9
++ ~I am not sure I would like a child, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ ~There is my destiny, Recorder. Even if we could, we may never get the chance.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12

CHAIN X3Reb25J 5F.7
~It may be a bit silly to dream that though. We are both female, it isn't something that can happen.~
END 
++ ~It won't be for a lack of trying.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8
++ ~We can always adopt, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9
++ ~I am not sure I would like a child anyway, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ ~There is my destiny, Recorder. Even if we could, we may never get the chance.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12


CHAIN X3Reb25J 5DH.7
~I've not heard of many children between a gnome and a <PRO_RACE>, but I guess we would find it if it was possible.~
END 
++ ~If not, it won't be for a lack of trying.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8 
++ ~I would be glad to sire a child with you, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9 
++ ~I am not sure I would like a child, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ ~There is my destiny, Recorder. We may never get the chance.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12

CHAIN X3Reb25J 5G.7
~With you it is quite possible. Another gnome son or daughter, I could have that second chance, if you are agreeable to it.~
END 
++ ~Absolutely, when the time is right. We have all the time to practice trying for it for now.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.8
++ ~I would be glad to sire a child with you, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",2)~ + 5.9
++ ~I am not sure I would like a child, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.10
++ ~There is my destiny, Recorder. We may never get the chance.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 5.12

CHAIN X3Reb25J 5.8
~Oh, of course you would say that. *grins*. Yes, we will get in plenty of "practice."~
EXTERN X3Reb25J 5.11 

CHAIN X3Reb25J 5.9
~And I would be glad to carry it, heehee.~
EXTERN X3Reb25J 5.11 

CHAIN X3Reb25J 5.11 
~When the time comes, I can't wait to have a family together, <CHARNAME>. It gives me something bright to hope for.~
EXIT 

CHAIN X3Reb25J 5.10
~I...well perhaps we can talk about it more sometime. It isn't a deal breaker, <CHARNAME>. Perhaps just the one is best. But redemption, I would like that if I could someday.~
EXIT 

CHAIN X3Reb25J 5.12 
~Your destiny. I guess in my excitement I...wasn't thinking. Forget I mentioned it. I guess this is best talked about after your decision.~
EXIT 


CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",12)~ THEN X3Reb25J LoveTalk6
~I've been thinking of the choice that lays ahead of you. About potentially taken your father's place as a god. What do you see yourself deciding?~ [X3RLS]
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~What do you want me to decide?~ + 6.1
++ ~I would rather stay with you, Recorder.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 6.2 
++ ~I think I would take my place with the gods.~ + 6.1
++ ~I don't know.~ + 6.4 
++ ~I think I want to keep that to myself for now.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-2)~ + 6.X 

CHAIN X3Reb25J 6.X 
~I will respect your privacy then, my love.~
EXIT 

CHAIN X3Reb25J 6.4 
~I imagine it is a difficult decision. I do not know what I could say to help make it easier.~
EXTERN X3Reb25J 6.1

CHAIN X3Reb25J 6.1 
~I think you would be a good deity, <CHARNAME>, and if that is what you want, would be the best choice. And yet I would like nothing more for you to stay. Still, your desires in this matter are more important to me.~
EXTERN X3Reb25J 6.3 

CHAIN X3Reb25J 6.2 
~If that is what your final decision is, I would be happy, <CHARNAME>...but do not say no to an opportunity because of me either. I think you would be a good deity.~
EXTERN X3Reb25J 6.3 

CHAIN X3Reb25J 6.3 
~Every hero is behooved to be great, to achieve their destiny. Hasn't everything pointed to an ascension for you since the very beginning?~
END 
++ ~At least to the decision. It remains to be seen what the outcome is.~ + 6.4
++ ~Yes, and it is *my* destiny to grab. Not yours.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",-1)~ + 6.5 
++ ~You seem more thoughtful of this than I am.~ + 6.6 

CHAIN X3Reb25J 6.6
~I love you. What happens to you will impact me, in a way. I think I am excited for you, for what you might decide...and afraid, too. I can imagine a life with you, but it is not my choice to have it.~
END 
++ ~We still have time yet together. Let us enjoy it.~ DO ~IncrementGlobal("X3RebAppChange","GLOBAL",1)~ + 6.7
++ ~I am excited too. But there is still more to do, we shouldn't get ahead of ourselves.~ + 6.8
++ ~Do not be afraid, Recorder. My decision will be about what is best for us.~ + 6.9

CHAIN X3Reb25J 6.8
~Yes, of course. Come, let us set on, then.~
EXIT 

CHAIN X3Reb25J 6.7
~(She leans against you at your words, allowing herself to enjoy your close comfort, before stepping in pace with the party.)~
EXIT 

CHAIN X3Reb25J 6.9
~For us? I think any response I make to that would be selfish of me, it's hard not to smile, even. So I will just say that I am lucky to have you, for however long it may be.~
EXIT 

CHAIN X3Reb25J 6.5
~Sorry, I do know it is yours to decide in the end. I didn't mean to suggest otherwise.~
EXTERN X3Reb25J 6.6

CHAIN IF ~Global("X3RebToBLoveTalk","LOCALS",14)~ THEN X3Reb25J LoveTalk7 
~It is near the end, my love, isn't it? One way, or another.~ [X3RLS]
DO ~IncrementGlobal("X3RebToBLoveTalk","LOCALS",1)SetGlobal("X3RebAppChange","GLOBAL",6)~
END 
++ ~Aye. And I am ready to face it.~ + 7.1 
++ ~For Melissan. But not for us.~ + 7.2
++ ~I suppose it is, isn't it? Did you have something to say?~ + 7.3

CHAIN X3Reb25J 7.1 
~We come to the end. Everything is decided when we face Melissan. You face the precipice, perhaps the greatest battle yet.~
== X3Reb25J ~I want you to know that I will stand with you. You were the light in my darkness, the warmth that broke my binds, the love that shielded me from harm. I will walk with you to Melissan, hand in hand.~
END 
++ ~I'll take that hand. Thank you, my love.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",2)~ + 7.2 
++ ~(Kiss her.)~ DO ~IncrementGlobal("X3RebApp","GLOBAL",2)~ + 7.3
++ ~This isn't goodbye, Recorder. Not if I have anything to say about it.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",2)~ + 7.3
++ ~Indeed. Let us go to realize my destiny.~ + 7.5

CHAIN X3Reb25J 7.5
~Let us go to Melissan now. It is time to see this end.~
EXIT 

CHAIN X3Reb25J 7.2 
~(She squeezes your hand tightly, moving to stand beside you.)~
== X3Vie25J ~IsValidForPartyDialogue("X3Vie")~ ~I will admit I do find this sickeningly sweet.~
== X3Hel25J ~IsValidForPartyDialogue("X3Hel")~ ~All right, all right, enough, enough. Yer worse than me in my youth.~
== X3Emi25J ~IsValidForPartyDialogue("X3Emi")~ ~Your love is cute and inspiring. Good for morale!~
== X3Kal25J ~IsValidForPartyDialogue("X3Kal")~ ~Damn, I'm finding myself a bit jealous.~
EXTERN X3Reb25J 7.5

CHAIN X3Reb25J 7.3 
~(Her lips taste warm, with a slight saltiness from a drop of tears.)~
== X3Vie25J ~IsValidForPartyDialogue("X3Vie")~ ~I will admit I do find this sickeningly sweet.~
== X3Hel25J ~IsValidForPartyDialogue("X3Hel")~ ~All right, all right, enough, enough. Yer worse than me in my youth.~
== X3Emi25J ~IsValidForPartyDialogue("X3Emi")~ ~Your love is cute and inspiring. Good for morale!~
== X3Kal25J ~IsValidForPartyDialogue("X3Kal")~ ~Damn, I'm finding myself a bit jealous.~
EXTERN X3Reb25J 7.5

// Group Kiss from PID 
CHAIN X3Reb25J Group.Kiss 
~B-but...it's not just us! I m-mean...~
== X3Emi25J IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Awwww!~
== X3Hel25J IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Pah. Stop your stuttering and get it done so we can get back to fighting something.~
== X3Kal25J IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh. Just do it.~
== X3Vie25J IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Great. Now I have to watch you slobber over each other.~
== X3Reb25J ~Well, all right...~
== X3Reb25J ~Mmm. I love you, <CHARNAME>. I wish we had more time for this.~
EXIT 


APPEND X3Reb25J

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~This...is hard for me to say, <CHARNAME>. I don't know if you see things the same way as of late, but I think we should talk about it.~
= ~When we first started our relationship, things were sweet and I was the happiest I have known. But lately you have been so different. You aren't the same person I fell in love with.~
= ~You even...scare me a little, sometimes. And so, as much as it hurts to say, I want to end things between us.~
++ ~But I don't want to end things, Recorder.~ + LBreak.1
++ ~I think you are right. Things haven't been the same as of late.~ + LBreak.2 
++ ~So you are just giving up, then?~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~I know it hurts. But...I don't want to wait for the impossible. Keep hoping for the impossible. Many duets come to an end. Our song is just at its conclusion.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~Oh, that makes this...less difficult then. I'm glad we are on the same page.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~I'm sorry. I just...let go. I have waited before and only known pain. I can't do that again.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3RebRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~If it's easier...I can just leave the party. I leave the choice to you.~
++ ~I think that is best. Goodbye, Recorder.~ + LBreak.5 
++ ~Do so. But your equipment stays with me.~ + LBreak.6 
++ ~No. Please. Stay. I would still have you with me, even if we aren't lovers.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~Goodbye, <CHARNAME>. I will remember you.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~...As you wish. Goodbye.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~Then I will. It will be nice to see your story through, even if things are different.~
IF ~~ EXIT 
END 

// Approval Break Point  


IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~Unbelievable. I...usually stay quiet, and I have trusted your leadership and recorded your story this far, but I can't go on without speaking.~ [X3RAnn]
= ~Your treatment to others has been terrible. You sing like your song is the only one that matters, but we live in a world where there are many singers, and harmonies to form together. Not just your own.~
++ ~Speak clearly or stay silent, Recorder.~ + Break.1 
++ ~And what would you have me do differently?~ + Break.2 
++ ~I am sorry. It has been difficult to make those kind of decisions.~ + Break.2
END 

IF ~~ Break.1
SAY ~Then I hope this is clear: I am saying leaving, unless you are willing to try to improve, to change.~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~I want you to try to be more considerate. What you have done I despise with every part of my being.~ 
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY ~If you are not willing to change, then we should separate.~
++ ~Then go. Not as if you are useful anyway.~ + Break.4
++ ~Fine. Give me your equipment and go.~ + Break.5
++ ~I'm not a wicked person, Recorder. Give me a chance to show you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~You...you are...such an ass! Goodbye!~
IF ~~ DO ~LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.5 
SAY ~If that is what you want...have it. Goodbye, <CHARNAME>.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.6
SAY ~I...I can stay and see. Oghma forgive me if I am gullible, but I will give you a chance.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3RebApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@416)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~You lied to me. Lied to me! You're just using me. And I hate that. I have been used enough in my life, and I won't take more of it!~
= ~I am sorry, <CHARNAME>. But our time together is over.~
// Recorder leaves the game. 
IF ~~ DO ~LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelQuestCutScene","GLOBAL",1)~ ScryFinish 
SAY ~Oh dear. I don't know...how to say this. It worked, and that was amazing. But...~ 
++ ~Just tell me, Recorder.~ + ScryDead 
++ ~Oh no. Is he dead?~ + ScryDead 
++ ~Go on.~ + ScryDead 
END 

IF ~~ ScryDead 
SAY ~I am afraid Berk is dead. He fought valiantly. So very valiantly. I feel so horrible for Helga right now.~
= ~Should we even tell her this? She would be heartbroken. Maybe it is wrong...but you could just wait until the right time, or say that he went up north.~
= ~But history is full of enough liars. I don't think we should add our names to that list, despite how terrible I feel for her.~
++ ~I think your first thought is better actually. Lying to her may be best.~ + ScryDead.1
++ ~You are right, Recorder. I'll just tell her the truth.~ + ScryDead.2
++ ~I will have to think about what to say before I talk to her.~ + ScryDead.2
END 

IF ~~ ScryDead.1 
SAY ~If you think it is best. I don't know. It would set her at ease...but I think of my Raban, and I think I would want to know the truth if it was him.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.2 
SAY ~It will be hard. But I think it is the best decision.~
IF ~~ + ScryDead.3 
END 

IF ~~ ScryDead.3 
SAY ~It is your choice in the end, <CHARNAME>. You have my support for whatever  you decide.~
IF ~~ DO ~SetGlobal("X3HelToBQuest","GLOBAL",4)AddJournalEntry(@20,QUEST)~ EXIT 
END 

IF ~~ Scry 
SAY ~I have never done that before, but I know how it is done, and I think I can help.~
= ~I will need a scrying crystal. They are a beautiful little purple crystal used to help catalyze the spell as a component.~
= ~I don't know if my power will be enough even with the crystal, but if we do it in your pocket plane, I believe the place itself has enough to draw from to make it work.~
+~PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ + ScryStartNotPlane 
+~PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have a scrying crystal here.~ DO ~EraseJournalEntry(@19)TakePartyItem("X3HGEM")~ + ScryStartPlane 
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.1
SAY ~Let me know when you have the crystal, <CHARNAME>. I will read up more about divination and scrying on my free time so I am ready.~
IF ~~ EXIT 
END 

IF ~~ Scry.2 
SAY ~Hrm. If we ask with merchants and shopkeepers, I am sure someone should sell something. Maybe a jeweler? They tend to specialize in such items.~
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Why do you need to be in the pocket plane to do this?~ + Scry.3
END 

IF ~~ Scry.3 
SAY ~The pocket plane is full of magic. It is a perfect place to focus and perform a spell like this. It is also safe, I would be quite vulnerable when scrying.~
= ~There are other ways that use some aspect or item that belonged to the individual, but I am not knowledge of that method, and so it must be this way.~
++ ~Great, I will let you know when I have the scrying crystal.~ + Scry.1 
++ ~Where could I find a scrying crystal?~ + Scry.2 
END 

IF ~~ ScryStartNotPlane 
SAY ~I see. Bring us to the pocket plane, and I can perform the spell there.~
IF ~~ EXIT
END  

IF ~~ ScryStartPlane 
SAY ~I hope I am ready for this. I hope I don't faint from sheer anxiousness.~
IF ~~ DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("X3Rcut03")~ EXIT  
END 

// PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  ~Hey.~ [X3RCON1]
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@19,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartPlane
++ ~Let me ask you a question.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalAlone.PID
++ ~May I ask you to play something for me?~ + PID.Music 
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  ~I'm with you.~ [X3RCom2]
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",0)~+ ~Could you help scry Helga's son, Berk?~ DO ~SetGlobal("X3HelScryHelp","LOCALS",1)AddJournalEntry(@19,QUEST)~ + Scry 
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")!AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartNotPlane
+~Global("X3HelToBQuest","GLOBAL",3)Global("X3HelScryHelp","LOCALS",1)PartyHasItem("X3HGEM")AreaCheck("AR4500")~+ ~I have everything you need to scry Berk.~ DO ~EraseJournalEntry(@19)~ + ScryStartPlane
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalAlone.PID
++ ~May I ask you to play something for me?~ + PID.Music 
++ ~Never mind.~ EXIT 
END  

IF ~~ main.PID 
SAY  ~Go on.~ [X3RCom4]
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~I want to talk about something personal.~ + PersonalAlone.PID
++ ~May I ask you to play something for me?~ + PID.Music 
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Very well.~ [X3RCon6]
+~PartyHasItem("X3ERing")Global("X3RebRomanceActive","GLOBAL",2)~+ ~Recorder, I bought this ring for you. I want you to be my wife, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ ~You are originally from Lantan, yes? Do you remember much of your time there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~Global("X3PIDCON2","LOCALS",0)~+ ~Could I call you Rebecca instead?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON4","LOCALS",0)~+ ~So what does a Lorekeeper like yourself usually do?~ DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~Please, take your time.~ [X3RCom3]
+~PartyHasItem("X3ERing")Global("X3RebRomanceActive","GLOBAL",2)~+ ~Recorder, I bought this ring for you. I want you to be my wife, when there's time for us to be married.~ DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
+~Global("X3PIDCON1","LOCALS",0)~+ ~You are originally from Lantan, yes? Do you remember much of your time there?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Lantan
+~Global("X3PIDCON2","LOCALS",0)~+ ~Could I call you Rebecca instead?~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Name
+~Global("X3PIDCON4","LOCALS",0)~+ ~So what does a Lorekeeper like yourself usually do?~ DO ~SetGlobal("X3PIDCON4","LOCALS",1)~ + PID.Lore
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Lantan 
SAY ~I spent almost my entire childhood there, so yes. It is...different than the rest of the world. There is such an emphasis on working hard and pushing to the next great discovery, the next great technological achievement.~
= ~Many of my people have a reputation for being eccentric, but I think it is because of that beautiful devotion to an art or work. Lantan was all about that.~
= ~There are colleges and artisan guilds and inventors of flying machines and printing presses and even attempts at non-magic portals. You would be marveled at some of the things created in my homeland.~
++ ~It sounds truly wonderful.~ + PLantan.1
++ ~Did your people not make room for leisure?~ + PLantan.2
++ ~All of these things sound so useful. Why aren't they anywhere else?~ + PLantan.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PLantan.1
SAY ~It wasn't perfect. Sometimes there were rifts with the humans that came over, and...pirates, too. But if you looked past it, it is truly a great place.~
++ ~Did your people make room for leisurely activities?~ + PLantan.2
++ ~All of these things sound so useful. Why aren't they anywhere else?~ + PLantan.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PLantan.2 
SAY ~Oh definitely, though often they centered around the very work we valued. For my people, working is leisure. Technology is an art, something to be valued and prized.~
= ~Even if I was never as good at the sciences and inventions of my people, I always had a large respect for my people who were great at it.~
++ ~A lot of the inventions you've mentioned sound interesting or useful Why aren't they anywhere else?~ + PLantan.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PLantan.3 
SAY ~Some of these are just at their beginning stages. I think for others, it is a matter of trust. We have an invention called the gonne for example, which shoots a sort of object with gunpowder that shatters on content. If mass produced, it could be devastating in the wrong hands. A few have already landed in less than savory arms.~
= ~Still, I hope one day the world is in a better place where we can trust them to take the things we trade them and use them for good purposes.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Name 
SAY ~I am sorry, but I would not be comfortable with that.~
++ ~I understand.~ + PName.1 
++ ~Why not?~ + PName.1
++ ~But I like it better than Recorder.~ + PName.1
++ ~Your parents gave you that name. Why would you forego it?~ + PName.1
END 

IF ~~ PName.1 
SAY ~ It is just that...I am not "Rebecca" anymore. I have worked so hard to be a different person that...I am more or less the image I have adopted for myself.~
= ~It has not stopped me from remembering my past. It will always haunt me. And that is why I do not want to be called Rebecca.~
++ ~You don't have to say anymore. I understand your reasons.~ + PName.2 
++ ~That sounds cowardly to me. It's just a name.~ DO ~IncrementGlobal("X3RebApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@403)~ + PName.3 
++ ~If that is what you want.~ + PName.2 
END 

IF ~~ PName.2 
SAY ~Thank you. I appreciate that very much.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PName.3 
SAY ~Call me a coward if you wish. But I refuse...I *cannot* acknowledge it. I am sorry.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Lore
SAY ~We are what we are, truly: Lorekeepers. We gather the stories and the history of what is going on now or what happened into parchment and tomes for the church's records.~
= ~Some of us focus solely on the past, being reciters and advisors when called upon for the temple or the city or nation we are from.~
= ~I focus on the present. Many of those who are more like me follow adventurers in their travels to pick up stories, or record a story of someone who may make an impact of the realm.~
++ ~You believe I am a force of change, then?~ + PLore.1 
++ ~Do you have any other works you have done besides myself?~ + PLore.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END

IF ~~ PLore.1 
SAY ~Yes. Very much so. You saved Baldur's Gate. If you were not there, the entire Swordcoast would be going through a much different time.~
= ~And if you were not in Amn right now, I cannot help but feel the history that is to come would be following a different course.~
IF ~~ + PLore.3 
END 

IF ~~ PLore.2 
SAY ~Erm, no, I am afraid. I had something attempted on the old Ulcaster School but...that ended poorly. I have only recorded your travels so far. You have made quite the impact.~
= ~If you were not at Baldur's Gate all that time ago, the entire Swordcoast would be going through a much different time. And if you were not in Amn right now, I cannot help but feel the history that is to come would be following a different course.~
IF ~~ + PLore.3 
END 


IF ~~ PLore.3 
SAY ~More and more I feel that your path isn't fully by chance, that you are carrying something great. I just cannot yet see what it is.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID
++ ~Let's keep moving.~ EXIT 
END


IF ~~ PersonalGroup.PID 
SAY ~It is not just the two of us, but please, ask.~
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'm sorry Recorder, but I don't think we are going to work out.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~It is just the two of us. Please, ask.~
// Recorder is Rest Invite #4. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask them again before resting.
+~!Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Normal 
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'd like to spend time together when we next make to rest.~ DO ~SetGlobal("X3RestInvite","GLOBAL",4)~ + ForceRestTalk.Love
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~(Kiss her)~ + Group.Kiss
+~Global("X3RebRomanceActive","GLOBAL",2)~+ ~I'm sorry Recorder, but I don't think we are going to work out.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~I would love the company, <CHARNAME>, as long as it's an inn, or the outdoors. I look forward to it.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~My love, I would cherish that. We can do this when we rest in an inn or the outdoors. A dungeon wouldn't be as safe.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmm. Your kisses always make my heart sing.~
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY ~I...*sigh*. Can I ask what I did wrong?~
 ++ ~We're just not compatible like I thought.~ + BU.1 
++ ~You're a bit annoying to be honest.~ + BU.2
++ ~It's not you. It's me.~ + BU.3 
++ ~I'd rather not say.~ + BU.1 
END 

IF ~~ BU.1 
SAY ~I...I understand. I will treasure the memory, even if I am in pain right now.~
= ~I am going to give you privacy. Excuse me.~
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@409)~  EXIT 
END 

IF ~~ BU.2 
SAY ~I...guess I don't know what to say that. I am just going to leave you alone, then. I'm sorry I was...annoying.~
IF ~~ DO ~SetGlobal("X3RebRomanceActive","GLOBAL",3)IncrementGlobal("X3RebApp","GLOBAL",-18)
DisplayStringNoNameDlg(Player1,@409)~ EXIT 
END 

IF ~~ BU.3 
SAY ~But I am not unhappy with you. I don't care if you feel imperfect or a burden. I will support you always, if you let me.~
= ~No matter how hard things get, or hopeless, I don't want you to pull away. Pull closer to me.~
++ ~Very well. I will take your advice.~ + BU.4 
++ ~I'm sorry Recorder. I'm decided.~ + BU.1
END 

IF ~~ BU.4 
SAY ~I am glad you see reason. I'm not ready for this to end. We still have so many stories together.~
IF ~~ EXIT 
END 

IF ~~ PID.Music 
SAY ~I would be happy to. I hope my performance is to your liking.~
IF ~RandomNum(5,1)~ DO ~PlaySound("X3RFL1")~ EXIT 
IF ~RandomNum(5,2)~ DO ~PlaySound("X3RFL2")~ EXIT 
IF ~RandomNum(5,3)~ DO ~PlaySound("X3RFL3")~ EXIT 
IF ~RandomNum(5,4)~ DO ~PlaySound("X3RFL4")~ EXIT 
IF ~RandomNum(5,5)~ DO ~PlaySound("X3RFL5")~ EXIT 
END 

END 