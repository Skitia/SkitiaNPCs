/*Non-Essential Interjections*/ 

//Chapter 6 & 7

I_C_T DRAGBLAC 4 X3KalDRAGBLAC 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Uh, mate? I don't think your plan is working...~
END 

I_C_T SUDEMIN 11 X3KalSUDEMIN11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You don't say, lady? Fortunately, that's gonna be his downfall.~
END 

I_C_T C6SAFA 0 X3KalC6SAFA-0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN ~So much for old times; Safana's completely against us.~
END 

I_C_T C6CORAN 1 X3KalC6CORAN-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN ~This fellow again? Surprised he's still alive. No offense, mate!~
END 

I_C_T C6CORAN 20 X3KalC6CORAN-20
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~This isn't going to end well for him.~
END 


I_C_T C6REGIS1 2 X3KalC6REGIS1-2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I've heard of this guy. Doesn't look like much to me. Oh, I'm talking about the halfling. Definitely not as handsome as me.~
END 

I_C_T C6DRIZZ1 37 X3RebC6DRIZZ1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN ~EThis is going to dampen our glory! I bet he'll take all the credit when this is over.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~As if anyone would remember you, the pint-sized halfling as is, Kale.~
== C6DRIZZ1 ~Come friends! Let us be off.~
END 

I_C_T C6DRIZZ1 55 X3KalC6DRIZZ1-55
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A battle between legends. Let's go!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! This will be a battle worth remembering.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 48 X3KalC6DRIZZ1-48
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A battle between legends. Let's go!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! This will be a battle worth remembering.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 41 X3KalC6DRIZZ1-41
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A battle between legends. Let's go!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! This will be a battle worth remembering.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 18 X3KalC6DRIZZ1-18
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A battle between legends. Let's go!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! This will be a battle worth remembering.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 5 X3KalC6DRIZZ1-5
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A battle between legends. Let's go!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! This will be a battle worth remembering.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@406)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@109)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 9 X3KalC6DRIZZ1-9
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A battle between legends. Let's go!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! This will be a battle worth remembering.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is surely a mistake. Oh dear, oh dear, why can't we just get along?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@416)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~This is a good man you force us into fighting! Gods, forgive <PRO_HIMHER>.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-9)
DisplayStringNoNameDlg(Player1,@119)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You chose the wrong enemy, drow.~
== C6DRIZZ1 ~To battle, my friends!~
END

I_C_T C6DRIZZ1 1 X3KalC6DRIZZ1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You were crazy enough to attack this legendary fellow? I've gotta admire your courage, <CHARNAME>.~
END

I_C_T C6ELHAN2 8 X3KalC6ELHAN28
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfeh, you can trust us. Ma always told me I was an honest soul.~
== C6WARSA1 ~False.~
== C6WARSA2 ~A lie. This mother never spoke such words.~
== X3KalJ ~Hey, who even asked you guys for an opinion?~
END


//Underdark

I_C_T JARLAXLE 0 X3KalJARLAXLE0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Hey mate, I didn't agree to be some test for whatever magical experiment this was.~
END 

I_C_T JARLAXLE 24 X3KalJARLAXLE24
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~We were used and tricked! I bet the rogue is sure proud of himself.~
END 

I_C_T DADROW17 9 X3KalDADROW17-9
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~We live and get no reward? Not even a bit of food? Sheesh. All of that fighting made me hungry.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah, feed yerself. The battle was still a glorious one, even if I nay appreciate being barked at to do it.~
END 

I_C_T UDSVIR08 13 X3KalUDSVIR08-13 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")~ THEN ~Eh, won't lie. Kind of glad we didn't have to hurt these fellows. Nice to see the little guy come out okay for once.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== UDSVIR08 ~Farewell, dark ones.~
END 

I_C_T DADUER1 12 X3KalDADUER1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN ~What, he wants you to talk to that thing in the tank? The dwarf is probably off his rocker if you ask me, I wouldn't bother.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~That would be a foolish. I sense a troubling power from that tank. Do as the duergar suggests...for the sake of our work here.~
END

I_C_T UDDEMON 8 X3KalUDDEMON-8
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~I don't know about this mate...we had the agreement with the dragon. This? Seems a bit messed up to me.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@303)~
END

I_C_T UDDEMON 3 X3KalUDDEMON-3
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Uh-oh...~
END 

I_C_T UDDEMON 18 X3KalUDDEMON-18
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Uh-oh...~
END 

I_C_T UDPHAE01 136 X3HelUDPHAE01-136
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ THEN ~A demon is damning for us all. Always have to be some big ol' trouble right after we get past another.~
END

I_C_T UDPHAE01 61 X3KalUDPHAE01-61
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN ~This whole situation stinks worse than the skunks in Gullykin. But if this gets us closer to our goal, eh, we have to do what we have to do.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I want to hope we can just talk to him without hurting him. I know it holds such risk, but I would prefer to try.~
END

INTERJECT UDPHAE01 61 X3KalUDPHAE01-61
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfeh, you've seen those Svirfs? I don't think they're really worth our time. Kind of good folk, if you get to know them.~
EXTERN UDPHAE01 62

A_T_T DADROW21 2 ~!Name("X3Kal",LastTalkedToBy)~ DO 0

EXTEND_BOTTOM DADROW21 2
+ ~!InPartySlot(LastTalkedToBy,0)
Name("X3Kal",LastTalkedToBy)  // Kale
!Global("X3KalRomanceActive","GLOBAL",1)
!Global("X3KalRomanceActive","GLOBAL",2)
~ + ~I could use that kind of rest. What do I need to do?~ EXTERN DADROW21 4
END

I_C_T UDDROW08 11 X3KalUDDROW08-11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~No...no you didn't.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Kale, we must-~
== UDDROW08 ~You sound angry, male.~
== X3KAlJ ~Uh, no. Just...jealous.~
== UDDROW08 ~As you should be, though they were no challenge at all!~
END 


INTERJECT UDDROW07 9 X3KalUDDROW07
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, that's an easy one. Don't stow a stone throne in a grass house. Am I right?~
EXTERN UDDROW07 11

I_C_T DADROW12 21 X3KalDadRow12-21
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Criminy. Did you have to kill that thing, mate? Now we're on a time crunch.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
END 

I_C_T UDDOOR01 1 X3HelUDDOOR01-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Hel")~ THEN ~Are you bloody insane? The whole city will be upon us now.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~
END 

I_C_T UDILSLA2 14 X3KalUDILSLA2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Ah, grand, grand! Now our story will spread of what we did down here, 'cause I wouldn't be able to get anyone to believe it otherwise.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@316)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~So you only care about the story, Kale? Not the many lives that we saved from a terrible, horrible fate as mind flayer slaves?~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@116)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~That's why we're doing this. No one risks their lives just 'cause, Emily.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Wow, I am doing something wrong then. Forgive me, oh wise Kale.~
END 

I_C_T UDILSLA2 14 X3RebUDILSLA2
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I am so glad they are free. No one should be enslaved like this.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END 

I_C_T UDSIMYAZ 36 X3KalUDSIMYAZ36
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, these mates missed the making of a legend. Damn, I'm definitely telling this one to my future kids.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END 

I_C_T UDSIMYAZ 26 X3KalUDSIMYAZ26
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Come on! Is he really going to leave us here? Damn it, I swear people just love doing this to us.~
END 

I_C_T UDSILVER 14 X3KalUDSILVER-14
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Uh, <CHARNAME>? Let's not make pretty but also menacing dragon mad, shall we?~
END 

I_C_T UDSILVER 49 X3KalUDSILVER-49
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Aww, damn it. We're in for a big one, here.~
END 


I_C_T UDSVIR03 17 X3KalUDSVIR03-17 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, I'll watch over you, Viconia, don't you worry. Ain't easy not to.~
END 

I_C_T UDSVIR03 7 X3KalUDSVIR03-7
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I say hear him out. The fortune might be worthwhile.~
END

I_C_T UDTRAP03 0 X3KalUDTRAP03-0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Oy, <CHARNAME>? Seems like ol' charity ain't always the right thing to do.~
END

I_C_T UDDUER03 11 X3KalUDUDER03-11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Not used to being treated like this. And I got to say, I think I like it.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Really? I see nothing at all to enjoy.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~It's about the respect we're getting. Drow really don't have it bad.~
END

I_C_T UDDUER03 10 X3KalUDUDER03-10
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Good, that's all sorted. Let's resume to figuring out just what the hell we are doing, anyhow.~
END

I_C_T NALIAJ 282 X3KalNALIAJ282
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~With what we get into? That's not a promise you should be making, lady.~
END

//Chapter4 


I_C_T SAHPR2 7 X3KalSAHPR2-7
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~They're calling us ugly? Pfft. No standard of beauty in the oceans, I see.~
END

INTERJECT SAHBEH01 38 X3KalSAHBEH01-38
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft, I wouldn't fault you for wandering on, fellow.~
EXTERN SAHBEH01 39


I_C_T SAHKNG01 36 X3KalSAHKNG0136 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I don't like this. We help this king fellow, and then he'll probably just eat us. I'd rather eat fish than be fish meat.~
END


I_C_T SAHKNG01 1 X3KalSAHKNG01-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Bloody hells, I gotta pinch my nose. They smell worse than rotten skunk, ugh.~
END

I_C_T SAHPR1 55 X3KalSAHPR1-55
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, seems kind of dumb to push away all of your strong members. But this isn't our problem.~
END

I_C_T PPSAEM3 23 X3KalPPSAEM3-23
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, hopefully our journey is uneventful. Would be quite nice to take it easy for a few days after everything that's happened. ~
END

I_C_T PPSAEM2 24 X3KalPPSAEM2-24
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Criminy. How are we going to defeat this guy if he gets more power?~
END

I_C_T PPSAEM2 8 X3KalPPSAEM2-8
== X3KalJ IF ~!IsValidForPartyDialogue("X3Vie")!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Kal")~ THEN ~Could we just get the hells out of here? Damn anyone's advice, that seems like the best course of action to me.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I do not think that is an option yet, Kale. I fear...that we will have to see to him first. I just hope these mad mages will listen to us.~
== PPSAEM2 ~Good luck.~
END 

I_C_T PPSAEM2 19 X3KalPPSAEM2-19
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I don't know about following this guy. Besides, how many people have braved the Underdark and lived to tell about it? I say it's a story for us in the making! Can't be that bad, eh?~
END

I_C_T JANJ 92 X3KalJANJ92
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Turnips? Bloody hells.~
END 

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Kal") Global("X3KalPartyBG1","GLOBAL",1)~ + ~You should remember Kale. Do you recognize him, Imoen?~ EXTERN X3KalJ X3KalPPIMOEN0
END

CHAIN X3KalJ X3KalPPIMOEN0
~Yeah, me! The legendary Kale? Huh. Either she doesn't remember me, or she's uh, a bit loony in the head now.~
EXTERN PPIMOEN 1

I_C_T JANJ 157 X3KalJANJ157
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~That's it, Jan? What, no tales this time? Must have a block in your head.~
END 

I_C_T PPTIAX 1 X3KalPPTIAX-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN ~Oh look, this guy again. And I say we just leave it at that and walk away from crazy fellow.~
END 

I_C_T PPWANEV 2 X3KalPPWANEV2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You heard him. No one speaks to him, he speaks to no one. Let's move on.~
END

I_C_T PPIRENI1 4 X3KalPPIRENI1-4
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Seems simple enough to me, mate. A prison to house bad mages. Not the worst thing, really.~
END

I_C_T PIRPIR08 6 X3KalPIRPIR08-6
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalPartyBG1","GLOBAL",1)~ THEN ~That <CHARNAME>. I've heard <PRO_HESHE> does a lot of stuff like that, mate. What? Eh, all right, I'll leave him to his drink.~
END 

I_C_T PIRPIR07 1 X3KalPIRPIR07-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~That was either a good joke, or I got to spend less time around drunkards.~
END 

I_C_T KORGANJ 117 X3Kal117 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Hey! I take offense to that, mate.~
END

//Chapter 3

I_C_T BODHI2 14 X3KalBODHI2-14
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Damn I don't like this lady. What is she playing at?~
END

I_C_T ARNMAN04 0 X3RebARNMAN04-0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Small is better anyway. Though I'd be more of a shadowguard than anything.~
END 


I_C_T ARAN 85 X3KalARAN85
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You get right back, and look, everyone wants your grand help 'cause they can't do it themselves. Aww damn, I'm finding myself jealous.~
END 

I_C_T ARAN 51 X3KalARAN51
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, that's a start. Good on you mate for getting this on a better foot.~
END 

I_C_T ARAN 0 X3KalARAN0
== X3KalJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Kal")~ THEN ~Huh, so this is him? Doesn't look like what you think a thief would be.~
END 

I_C_T CHORE 1 X3KalCHORE1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Huh. Guess she has some serious needs. Lots of servants to keep her pleased.~
END  

I_C_T LAUNE 2 X3KalLAUNE2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Never got called meat before. What can I say though? I guess the tall folk are smitten with Kale.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I...don't think that was it. It seemed like...oh, I don't think I want to even think about it.~
END  


//Watcher's Keep

I_C_T GORAPP1 16 X3KalGORAPP1-16
== X3KalJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Heh, what the hell. We go out with a bang or make one. A good tale either way.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
END 

I_C_T GORAPP1 6 X3KalGORAPP1-6
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Criminy. Can't trust anyone these days, I swear.~
END 


I_C_T GORDEMO 24 X3KalGORDEMO 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I hope this thing is wrong, because I do not want to be stuck here forever, mate.~
END 


I_C_T FSDRAGON 0 X3KalFSDRAGON
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Damn. Another lizard. Will it end?~
END   

I_C_T FSSPIR2 1 X3KalFSSPIR2-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I've got a feeling this fellow ain't just going to be nice and give it to us. Haven't we been tested enough?~
END    

I_C_T GORSAL 0 X3KalGORSAL0 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Oh boy. What is it with you and getting us in front of dragons, <CHARNAME>?~
END   


I_C_T GORGIT 2 X3KalGORGIT2
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Is this creature serious? He's as mad as every other bloody thing in this place.~
END   

I_C_T GORCAMB 17 X3KalGorcamb17
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I don't mind a bit of a game, myself. As long as we don't lose, I think we'll be all right.~
END  


I_C_T GORSUC01 7 X3KalGORSUC01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ ~Damn...wish I were so lucky.~
END 

EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Kal",LastTalkedToBy)~ EXTERN X3KalJ Yackman
END

CHAIN X3KalJ Yackman  
~Eh, we're not demons! See? A demon is far taller than me. Their loss, too. Life's more fun when you're right-sized.~
EXTERN GORMAD1 10

I_C_T GORODR1 44 X3KalGORODR1-44
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hey mate, you mind giving us a heads up before you bury us alive? Appreciate it.~
END 



//Planar Sphere 
I_C_T OBSSOL01 10 X3KalOBSSOL01-10
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Nope. That ain't a halfling. Let's not give anyone the wrong idea about ourselves.~
END 
 
I_C_T LAVOK 48 X3KalLAVOK48
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~We got no choice and all, but once we get it, don't ask me to carry a damn demon heart. Ick.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye will if <CHARNAME> says. Consider it a trophy of battle, and our way out of this damn place.~
END 

//Trademeet 

I_C_T TREVIL01 15 X3KalTREVIL01-15
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Hitting a druid in the head ain't going to make you friends with them. Not sure if we should heed this fellow, mate, even if tree-huggers are annoying.~
END 


I_C_T TRCUT07 4 X3KalTRCUT07-4
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Aww yeah! Finally recognized. Damn <CHARNAME>, thank you for getting us into this position. This is definitely one of the best moments of my short life!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",9)
DisplayStringNoNameDlg(Player1,@319)~ 
END 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN TRGYP03 X3Kal
~Wow, you're tiny, but you don't look like a child.~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~I'd sure hope I don't look like a child. Else eh, I'd have a lot of explaining to do for a lot of things I shouldn't have done, heh.~
EXIT 

I_C_T TRINNK01 26 X3KalTRINNK01
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Halfling's help? That is some good stuff.~
== TRINNK01 ~Quite so, good sir.~
END 

I_C_T MAZZYJ 9 X3KalMazzyJ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Damn mate. If that's how you treat Mazzy, kind of concerned how you'd treat me if that happened to me.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~ 
== MAZZYJ ~I will go with you, Danno. It seems <CHARNAME> is a poor friend.~
END 


I_C_T NEEBER 6 X3KalNEEBER6 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~So, if we say yes, and he dies...is it still our fault?~
END 

I_C_T NEEBER 1 X3KalNEEBER1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Sorry mate. This cloak is one of a kind.~
END 

I_C_T NEEBER 3 X3KalNEEBER3 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Er, sure fellow. Sure! Guess...some Kale fans are excitable.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Can we...move along or something? I'd rather we not feed Kale's need for attention and that man's need to give it.~
END 

I_C_T TRNOBM01 8 X3KalTRNOBM01-8
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Pfft. I doubt that mate. Hero work? it ain't easy at all.~
END 

//Umar Hills 

I_C_T MAZZY 25 X3KalMAZZY25 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~All right. It's great to have another halfling in the party. Kale by the way, in case I didn't say it.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
== MAZZY ~It is fine to meet another adventuring halfling. Shall we be off?~
END 

INTERJECT MAZZY 6 X3KalMAZZY6
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~This be my kin, <CHARNAME>. Mazzy Fentan doesn't deserve to be stuck in a cell by any means. Here you are. Remember Kale was your hero, eh?~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@306)~ 
EXTERN MAZZY 13

I_C_T MAZZY 39 X3KalMAZZY39
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Damn mate. You sure know how to offend people.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~ 
END 

I_C_T UHMAY01 138 X3KalUHMAY01-138 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I don't normally speak up like this, but I'd have liked to help them, mate. Think of the fame! This sort of thing makes you famous, you know?~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~ 
END 

I_C_T MAZZYJ 93 X3KalMAZZYJ-93 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Come on, mate. We just threw away great talent. Not worth it, mate. Not worth it.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~ 
== MAZZYJ ~If you somehow come to your senses, you may find me in Trademeet.~
END 

I_C_T UHMAY01 18 X3KalUHMAY01-18
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Mazzy Fentan? The one halfling more famous than I. I hope she's all right, 'cause damn, I'd like to meet her.~
END

//Windspear Hills 

I_C_T GARREN 44 X3KalGarren44 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")~ THEN ~Don't worry, your child may have passed, but this all helped lead to a dragon's end mate. Mourn if you must mate, but also rejoice!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== GARREN ~Sorry, but I must go.~
END 

I_C_T GARREN 49 X3KalGarren49
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Dead("firkra02")~ THEN ~They better be singing about this feat! Kale, dragon slapper!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It was not *your* contribution that saw us through, halfling. Though I doubt you will mention that at all.~
END 

I_C_T GARREN 51 X3KalGarren51 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Dead("firkra02")~ THEN ~They better be singing about this feat! Kale, dragon slapper!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~It was not *your* contribution that saw us through, halfling. Though I doubt you will mention that at all.~
END 


I_C_T GARREN 35 X3KalGARREN35 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A good ol' rescue task. With those knights not after us, I think we can do this as a return favor. 'Sides, the child of his was rather good looking, don't you think?~
END 

I_C_T GARREN 36 X3KalGARREN36 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A good ol' rescue task. With those knights not after us, I think we can do this as a return favor. 'Sides, the child of his was rather good looking, don't you think?~
END 

I_C_T GARREN 37 X3KalGARREN37 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A good ol' rescue task. With those knights not after us, I think we can do this as a return favor. 'Sides, the child of his was rather good looking, don't you think?~
END 
//De'Arnise

I_C_T KPRANG01 9 X3KalKPRANG01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Emi")~ THEN ~Eh, marriage is for suckers, anyway.~
== KPRANG01 ~What nonsense is that?!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END 

I_C_T DELCIA 16 X3KalDELCIA16
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, talk about more trying than a stink of a kobold. You don't want to know just how smelly a kobold could be back in Gullykin.~
== DELCIA ~Please do not touch me as I leave.~
END  

I_C_T KPGRD01 11 X3KalKPGRD01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well decided. Good think they let you in charge here, heh, you don't want to know what I was thinking of having done.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END
//Althkata

I_C_T MAZZYJ 203 X3KalMazzyJ-203
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well fought! A victory for hin-folk, I say.~
== MAZZYJ ~Thank you, Kale. Perhaps this will discourage further mistreatment to the city's people by such louts.~
END

I_C_T MAZZYJ 45 X3HelMazzyJ-45
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~That's tall folk for you, Mazzy. Doubt he'll be much of a pushover, though.~
END

I_C_T WELLYN 8 X3KalWELLYN8
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Let's  get this bear and give this thief bastard some pay back.~
END 

I_C_T WELLYN 10 X3KalWELLYN10 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~The Hound see you through to your next adventure, kid.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@319)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Finally. He can know peace. I will make a record about this. This poor child won't be forgotten.~
DO ~IncrementGlobal("X3RebApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@416)~ 
== WELLYN ~Thank you, thank you!~
END 

I_C_T WELLYN 5 X3RebWELLYN5
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I've got enough jerks to my people. Didn't know you were joining the list, <CHARNAME>.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@309)~ 
END 

I_C_T WELLYN 16 X3KalWELLYN16
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What in the hells are you doing, <CHARNAME>? Wait, what's happening?~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-7)
DisplayStringNoNameDlg(Player1,@309)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Oh dear, he's transforming. <CHARNAME>, why?~
DO ~IncrementGlobal("X3RebApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@406)~ 
== WELLYN ~Give me little man!~
END  

I_C_T BODHI 72 X3KalBODHI72 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~How in the hells are we going to survive a bunch of assassins? Anyone want to say how?~
END 

I_C_T BODHI 56 X3KalBODHI56
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A rescue mission eh? My specialty.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let me correct you, halfling: It certainly isn't.~
END 

I_C_T BODHI 28 X3KalBodhi28 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, I knew this would be simple. I'm not spooked at all, never shivered a bit.~
== X3HELJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye were clutching my damn arm, ye scoundrel. That's fine armor ye smudged, hrngh!~
== BODHI ~The shipment won't handle itself. Get to it.~
END

I_C_T BODHI 6 X3KalBODHi6 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, I'm sure glad to not decide this. Whatever we pick, we're angering one side or the other.~
END

I_C_T LESTER 5 X3KalLESTER5 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, can't blame him for wanting that.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Still time to kill this creature, I say.~
== LESTER ~Yes...one more quickie.~
END 

I_C_T TIRDIR 12 X3KalTIRDIR12C
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~Pfft, what are the guards going to do? Nothing if you ask me. Missed opportunity for a bit of fame here.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~ 
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~It's not about fame, but if <CHARNAME> does wish to change <PRO_HISHER> mind...it would be nice to look into this.~
DO ~IncrementGlobal("X3EmiApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@103)~ 
== TIRDIR ~Thank you once again for saving my life.~
END

I_C_T TIRDIR 12 X3KalTIRDIR12L
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~The garrison is his best bet. Guards aren't that useless.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@313)~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~You and I have not met the same guards, then, halfling.~
== TIRDIR ~Thank you once again for saving my life.~
END

I_C_T SCSARLES 32 X3KalSCSARLES32
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Sheesh. With that attitude, I'm glad we gave him the hunk of useless rock.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END

I_C_T MOURNER5 5 X3KalMOURNER5 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Glad to see we got to make something right for our kin, for once.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@316)~ 
END 

INTERJECT MOURNER5 2 X3KalMOURNER2 
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I'm sorry, kin. Lost a few people close to me lately, too. Never easy. But the Hound will guide them all.~
== MOURNER5 ~Yes. May the Hound guide him safely to the Green Fields.~
EXTERN MOURNER6 3 

I_C_T KAYPAL01 2 X3KalKAYPAL01-2 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Damn. Unraveled our entire plan just like that. Too smart for your own good, mate.~
END 

I_C_T HABREGA 26 X3RebHabrega26
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Feels nice to be recognized for some justice.  And this is going to the Flaming Fist? All the better.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@316)~ 
END

I_C_T RAELIS 79 X3KalRaelis79 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~Probably best not to get into this planar mix-up. Sorry lass!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END 

I_C_T RAELIS 79 X3KalRaelis79 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~This isn't justice, mate. I think we should stop it. At worst, it will be a misadventure.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~ 
END 

I_C_T RAELIS 76 X3KalRaelis76 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~Probably best not to get into this planar mix-up. Sorry lass!~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~ 
END 

I_C_T RAELIS 76 X3KalRaelis76 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Alignment("X3Kal",CHAOTIC_NEUTRAL)~ THEN ~This isn't justice, mate. I think we should stop it. At worst, it will be a misadventure.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~ 
END 

CHAIN IF WEIGHT #-1 
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFBART X3Kal
~Hello, my good smilin'— Kale.~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Hey, now Samuel. I promise this time, I won't go flirting with your wife.~
== FFBART ~That's what you said the time before.~
== X3KalJ ~Hey, I mean it! I'm serious. 'Sides, any scampish antics are just from the inspiration of your own tales, mate.~
== FFBART ~So you say. Wait, where is that other rascal that you are with? Gast, was it?~
== X3KalJ ~...Eh. Claimed by the road.~
== FFBART ~I'm sorry, Kale. I don't know the gnome's god of the dead, so may the Blackhound watch over him.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~It is Segojan Earthcaller. With him we bury our kin into the earth, where we sprout from and return to.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Huh. Thanks Recorder. May Segojan and the Blackhound watch over him both, then.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFWENCH X3Kal
~Not now, Kale. We're busy, and I don't want poor Samuel all riled over your jokes.~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Aww, come on. I just want to make him a little jealous. Would make him a better lover, you know.~
== FFBART ~I see you, Kale. None of your games now, you hear me?~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFCUST01 X3Kal
~Wait, now... aren't ye the one I'm waitin' for, mister?~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Eh, I think not, mate. You have got me confused with someone else.~
EXTERN FFCUST01 7

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Kal","LOCALS",0)~ THEN FFCUST08 X3Kal
~Kale! Nice to see you! What's this, with a new group?~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Heh, you know how it is, mate. When you're good, you're wanted by everyone.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Or when others are desperate. Off we go, Kale. <CHARNAME> has nay time for ye bragging.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN FFCUST09 X3Kal
~You didn't happen to see a signet ring, or take it? You've got that look about you.~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Blaming the halfling, eh? Don't let me say something to the owner, he won't like that.~
EXIT 

I_C_T TANNER 20 X3KalTanner20
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I want to know, lad. Pfft, if he doesn't want to share, I say we just beat it out of him.~
== TANNER ~My work shall not be lost!~
END 

I_C_T BBEGG2 1 X3KalBBEGG2-1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Thanks <CHARNAME>. Nice to see someone looking out for my folk here.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~We ought to do the same for all the beggars here.~
DO ~IncrementGlobal("X3Emipp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@113)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Sheesh, way to make one act of kindness into some larger deal, Emily. This party would be broke if you were leading it. Let's keep <CHARNAME> in charge.~
END

I_C_T LOUT 7 X3KALLOUT1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Huh. I've done work like this before. Never fun, I'll tell you. All comes down to who stares at the other harder.~
== LOUT ~Follow now, please.~
END 

I_C_T BBEGG1 2 X3KalBBEGG12 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~My brother Sam tried to use that line to get some money before. Didn't work out for him either.~
END 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
!Global("X3KalRomanceActive","GLOBAL",2)
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN BPROST2 X3Kal
~You've been given me a long look, little man. Perhaps you wish to have a good time?~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Aww, damn it. I'm a weak little halfman, but not weak enough. Curses. Maybe another time, lass.~
EXIT 

I_C_T INSPECT 10 X3KalInspect10 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Uh, mate? Got to work on your jokes. A lot of the poor here are halflings. I don't want to see my kin dead.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
END  

I_C_T KELDORP 11 X3KALMARIA-11
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~You made the right decision, mate. Bastard deserved it anyway.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~ 
END 

I_C_T ANOMENJ 176 X3KalAnomenJ176
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")Alignment("X3Kal",LAWFUL_NEUTRAL)~ THEN ~The system didn't let me down. If they say this is a bad idea, I think they're right too.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~ 
END 

I_C_T OHHFAK 25 X3KalOHHFAK-25
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~She said *she* must enter. Not us. Just saying, mate.~
END 

I_C_T INSPECT 1 X3KalInspect 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~The problems of being wealth, eh? <CHARNAME>'s right, we'll be just fine.~
END 

I_C_T SCJERLIA 12 X3KalJERLIA12 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, what do you know? A far more sensible solution. And we trick the man at the same time. Two birds with one ore, eh?~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I nay like the idea of lying to a man about an ore. About other things, perhaps, but the ore trade should stay honest.~
END 

I_C_T MARIA 5 X3KalMARIA-5
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Doesn't seem like a big deal to me. She's got needs, they've got to be fulfilled.~
END 

I_C_T JANP 19 X3KalJANP-19
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~That is why you shouldn't get married. Way too much trouble.~
END 

I_C_T HIDDEN 13 X3KalHidden13
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Emi")Global("SawIllithid","LOCALS",1)~ THEN ~What the hell did I just see?~
== HIDDEN ~Remember, say a word, and I will kill you.~
END 

I_C_T EDWINJ 37 X3KALEDWINJ-DEGARD-37
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Did we have to do this? Edwin just doesn't look as good anymore.~
END 


CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN CLERK01 X3Kal
~Sorry sir, we do not have any "halfling-sized" forms. You'll have to make do with the normal.~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Bloody hell. Can you believe this guy? Not even considerate to the small folk.~
== MAZZYJ IF ~IsValidForPartyDialogue("MAZZY")~ THEN ~Be thankful you did not need one, Kale. From the looks of this place, it would be a challenge to get any service from the government here, let alone proper aid. It is a disservice.~
EXIT 



CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
!Global("X3KalRomanceActive","GLOBAL",2)
Global("X3Kal","LOCALS",0)~ THEN ORIONA X3Kal
~Why are you looking at me like that, halfling?~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Can't a fellow dream in peace? Say, how much are you, anyway?~
== ORIONA ~You are hardly worth my notice nor could you make a good offer. Good day.~
== X3KalJ ~Sheesh, you longshanks are hard to win over.~ 
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Kal","LOCALS",0)~ THEN PEHLLUS X3Kal
~You there. I could use another house servant. Perhaps you would be interested?~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Mate, unlike your toady over there, I ain't interested walking around next to you all day.~
== TOADY ~Not interested, sir, not interested! I'm sure I can do the work of two anyhow.~
EXIT 

I_C_T TOLGER 21 X3KalTOLGER21 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I don't care one way or the other much, mate. But when a fellow is hiding something, it isn't usually a good sign. We need more honest folk like myself.~
END 

I_C_T TOLGER 21 X3KalTOLGER21 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I don't care one way or the other much, mate. But when a fellow is hiding something, it isn't usually a good sign. We need more honest folk like myself.~
END 

I_C_T ROGER 13 X3KalROGER13 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~So uh, you really sure you want to keep chasing this thing for some poor, indebted man? No bard is going to be singing about this.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~To the hells with yer need of bard recognition, Kale. There be trolls to fight, and I've nay enough troll blood on my weapons.~
END 

I_C_T THESHAL 2 X3KalTHESHAL2 
== X3KAlJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~A ghoul mayor. Now that's a joke no one's heard of.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~The only joke is that we talking with the creature. We ought to be smashing it.~
END 

CHAIN IF WEIGHT #-1 
~See("X3Kal")  // X3Kal
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Kal")  // X3Kal
RandomNum(2,1)
Global("Prophet4X3Kal","LOCALS",0)~ THEN PROPHET4 Kale
~Remove your sight! Swim in the holy blindness!~
DO ~SetGlobal("Prophet4X3Kal","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3KalJ ~Uh...I think I'll just not respond.~
EXIT 

I_C_T JANJ 128 X3KalJANJ128 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~No surprise it never got past infatuation, mate. Can't roll a well fed halfling. A high crime, that is, heh.~
END 

I_C_T PWAUK2 3 X3KalJPWAUK2 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~You said it, kin. Too bad the tall-folk aren't a tad bit more welcoming, though.~
END 

I_C_T BHOISIG 19 X3KalBHOISIG
== X3KalJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Sooo, guess we're going to give an "eye" on this unseeing eye, eh? Heh. Might end up being nothing, you know.~
END

I_C_T MAEVAR 31 X3KalMAEVAR31 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Simple enough. This thief probably deserves it either way, if you think about it.~
END

I_C_T DCLERIC 2 X3KalDCLERIC2 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Whelp, your funeral, mate.~
== DCLERIC ~Rarrgh!~
END

CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN BURCH2 X3Kal
~MY MOTHER SAYS THAT HALFLINGS HAVE HAIR ON THEIR FEET.~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Guess your mother must have knocked boots with one to know that. Doesn't seem intelligent enough to figure it out otherwise.~
EXIT 

I_C_T JANJ 116 X3KalJanJ116
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, I don't think this is the best time for one of your stories, Jan. Especially when one of mine would be more suiting.~
END


I_C_T SW2H14 15 X3KALSW2H1415 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Hey, sword's got a point. That would be cool, mate. Long as we didn't split in five pieces for it.~
END 

I_C_T HAEGAN 5 X3KalHAEGAN
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Sheesh, and you try to give people a chance to not be killed.~
== HAEGAN ~Die!~
END 

I_C_T LLYNIS 11 X3KAlLLYNIS11 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Huh. I don't think we should have let him live, mate. Not for killing kin.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
== LLYNIS ~There, that's my things. Goodbye, goodbye.~
END 

I_C_T LLYNIS 12 X3KAlLLYNIS12
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Huh. I don't think we should have let him live, mate. Not for killing kin.~
== LLYNIS ~There, that's my things. Goodbye, goodbye.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@303)~
END 


I_C_T FIRKRA01 10 X3KalFIRKRA01 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Now that...is a worthwhile sum. For the gold and glory, eh?~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nay, for the killing! This sounds like fine monster hunting.~
END 

I_C_T LEHTIN 10 X3KalLEHTIN10 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I gotta say that I wouldn't mind a bit of what he's offering. But something is off in this place, mate.~
END 

I_C_T TIANA 0 X3KalTiana 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")!Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~Now, this is why you don't get married.~
END 

I_C_T NALIA 35 X3EmiNalia35
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, might not want to be so uh, bluntly honest, mate.~
== NALIA ~OUT!~
END 

I_C_T NALIA 34 X3EmiNalia35
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, might not want to be so uh, bluntly honest, mate.~
== NALIA ~OUT!~
END 


CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,2)
Global("X3Kal","LOCALS",0)~ THEN WAYLANE X3Kal
~Hey! You, halfling man!~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Heh, can't be a halfling if you're also a man. What do you want?~
== WAYLANE ~See this mighty fine sphere here? You can have it for your very own for a mere 500 gold pieces! What do you say?~
== X3KalJ ~Too expensive, mate.~
== WAYLANE ~What about...350? A true bargain!~
== X3KalJ ~Nothing less than free, eh? 'Sides, I can't do anything with that kind of ball.~
== WAYLANE ~Rats! Hmm... You! Hey you! You over there!~
EXIT 

I_C_T SLSHOP02 2 X3KalSLSHOP02 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Someone's been spending time 'round my folk. 'Cept we would have said "Borrowing".~
END 


I_C_T TIRTHOLD 3 X3KalTirthold 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Talk about crazy. He is full of it.~
END 

I_C_T GAELAN 66 X3VieGaelan74 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well. We've finally earned that meeting. Progress, eh?~
END 

I_C_T TOWNC01 34 X3KalTOWNC034
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Heh, got to admit, that one was kind of funny.~
END 

I_C_T TOWNC01 40 X3KalTOWNC040
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Damn, I've got to remember this crier's stuff. It's good.~
END 

I_C_T TOWNC01 99 X3KalTOWNC099
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Esmeltaran's fallen? There's a lot of halflings there...damn, I hope most made it out.~
END 

I_C_T CIRCG1 5 X3KalCIRCG1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~More to our fame, eh? Circus saviors. Just need to add the threat of a few escaped animals to make it perfect.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
END

/*Story/Essential Interjections*/ 
//Celvan 
CHAIN IF WEIGHT #-1
~See("X3Kal")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Kal","LOCALS",0)~ THEN CELVAN X3Kal
~"A halfling with tales taller than his height,
would soon find that love might just be in sight.
If he turns around and sees,
All that he had abandoned to be,
He might just find that his future be bright."~
DO ~SetGlobal("X3Kal","LOCALS",1)~
== X3KalJ ~Hey...not bad, mate. What does that mean, though?~
EXTERN CELVAN 1
//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Kal",LastTalkedToBy)~ EXTERN TRGYP02 X3Kalg1
END

CHAIN TRGYP02 X3Kalg1
~I see love! A spouse! Long have you avoided it but the entanglement shall come closer than you think, and from a source you know.~
== X3KalJ ~I bet you say that to everybody. Criminy. Well, good reading, seeing lady, but I've got to hit the road.~
EXIT


// Yoshimo's betrayal

I_C_T YOSHJ 113 X3KalYOSHJ113
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~What in the hells, Yoshimo? We were your friends!~
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal") Range("X3Kal",15)~ THEN
~<CHARNAME>? I hate to say it, but you don't look so good.~
END
++ ~There's nothing wrong with me.~ EXTERN X3KalJ spellhold.1
++ ~I'm fine. Just... a bit dizzy.~ EXTERN X3KalJ spellhold.1
++ ~Something's not right. I think Irenicus did something to me.~ EXTERN X3KalJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3KalJ spellhold.1
~Whatever happened...this is shaping out to be one hell of a misadventure. It's sure going to be hard to get out of this situation.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~They'll be just fine, Kale! We are all here for <PRO_HIMHER>.~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If ye need healing, I'm here. And if ye need to give that bastard a beating, all the better.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We have to survive. No. We will survive, together.~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let us either achieve our revenge, or get out of this place, quickly.~
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3KalFirstSlayerChange1 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")See("X3Kal")~ THEN ~ Criminy. I'm either drunk, or you just turned into a very, very horrible looking thing, <CHARNAME>.~
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 X3KalSecondSlayerChange0
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal") OR(2) Global("X3KalRomanceActive","GLOBAL",1) Global("X3KalRomanceActive","GLOBAL",2)~ THEN ~What in the...<CHARNAME>? What is going on with you?~
END
++ ~Get away from me, I'm turning!~ EXTERN X3KalJ X3KalSecondSlayerChange1
++ ~It's coming again, Kale! Run while you can!~ EXTERN X3KalJ X3KalSecondSlayerChange1
++ ~I feel... strange...~ EXTERN X3KalJ X3KalSecondSlayerChange1

CHAIN X3KalJ X3KalSecondSlayerChange1
~By all of the Venya, bloody hells!~
DO ~SetGlobal("X3KalSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 X3KalSlayerSurvived1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal") OR(2) Global("X3KalRomanceActive","GLOBAL",1) Global("X3KalRomanceActive","GLOBAL",2) Global("X3KalSecondSlayerChange","GLOBAL",1)~ THEN ~That...that was really bad.~
= ~We got to find a solution to this fast. Or at this rate, we aren't going to make it.~
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("X3Kal") Global("X3KalSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

// Phaere

CHAIN IF ~Global("X3KalCheckMad1","GLOBAL",1)Global("X3KalMad1","LOCALS",0)~ THEN X3KalJ Phaere_Warning
~Eh, you thinking all right, mate? I wouldn't be doing that with that drow gal if I were you.~ 
DO ~SetGlobal("X3KalMad1","LOCALS",1)~
END 
++ ~And why not? Are you jealous?~ + PW.1 
++ ~It's just a game, Kale. Don't worry.~ + PW.2 
++ ~Stick your nose out of it, Kale.~ + PW.3

CHAIN X3KalJ PW.1 
~Jealous? Eh, yeah, I'm jealous. Wish it were me in your place. But she's deadly, mate.~
END 
++ ~It's just a game, Kale. Don't worry.~ + PW.2 
++ ~Stick your nose out of it, Kale.~ + PW.3

CHAIN X3KalJ PW.2 
~All right, all right. Just doesn't seem a good idea to me. But it might just be my envy talking, so I'll drop it.~
EXIT 

CHAIN X3KalJ PW.3 
~A bit rude there, <CHARNAME>, I'm just checking in here. But I'll stick my nose out, since that's what you want then.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-6)DisplayStringNoNameDlg(Player1,@306)~
EXIT 

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("X3KalRomanceActive","GLOBAL",1)
Global("X3KalRomanceActive","GLOBAL",2)~ + ~My companion, Kale.~ EXTERN UDPHAE01 110
END

CHAIN IF ~Global("X3KalCheckMad2","GLOBAL",1)Global("X3KalMad2","LOCALS",0)~ THEN X3KalJ X3KalPhaere
~Well, welcome back, eh?~ [X3BLANK]
DO ~SetGlobal("X3KalMad2","LOCALS",1)~
END 
IF ~Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3KalJ X3KalPhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ EXTERN X3KalJ X3KalPhaere2
//This doesn't break Kale's romance, and he only slightly disapproves.
CHAIN X3KalJ X3KalPhaere1
~I'd say I'm mad, but I think I'm more jealous than mad. Can't deny she was pretty.~
= ~Just don't talk to me about it, and we'll be just all right.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-3)DisplayStringNoNameDlg(Player1,@303)~ 
EXIT 

CHAIN X3KalJ X3KalPhaere2
~Huh, either you have no stamina mate, or...nothing happened.~
= ~Can't say I would have had the same resists to her charms, but kind of glad nothing came out of it anyway. Onward, eh?~
DO ~IncrementGlobal("X3KalApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@316)~ 
EXIT

//Bodhi 
EXTEND_BOTTOM BODHIAMB 5
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB X3KalKidnap
END

CHAIN BODHIAMB X3KalKidnap
~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~
= ~Consider little Kale here. I understand you have gotten close. I can't imagine what it will feel like when something befalls one of you.~
== X3KalJ ~Heh. <CHARNAME> ain't falling. Not from the likes of you at least.~
== BODHIAMB ~It is not the loss of <PRO_HIMHER> you should be afraid of. <CHARNAME>, follow me further and you will lose more than you can imagine. Beginning now!~
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("X3KBodhi")~ UNSOLVED_JOURNAL @31 
EXIT
//Not Caught 
I_C_T C6BODHI 0 X3KalC6Bodhi0 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Kind of a shame to have to kill you, vampire. Was starting to like our constant clashes.~
END 

//Caught 
A_T_T C6bodhi 21 ~!Global("X3KalVampire","GLOBAL",2)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("X3KalVampire","GLOBAL",2)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("X3KalVampire","GLOBAL",2)~ + ~You have taken too much already! Return Imoen's soul, and Kale!~ EXTERN C6BODHI X3KalAb
+ ~Global("X3KalVampire","GLOBAL",2)~ + ~And you have delivered on that promise. Return Kale and perhaps I will be merciful.~ EXTERN C6BODHI X3KalAb
+ ~Global("X3KalVampire","GLOBAL",2)~ + ~I would have hunted you for your theft of Kale alone. I will not lose him!~ EXTERN C6BODHI X3KalAb
+ ~Global("X3KalVampire","GLOBAL",2)~ + ~You place too much confidence in sentiment. The theft of Kale will not save you.~ EXTERN C6BODHI X3KalAbConf
END



CHAIN C6BODHI X3KalAbConf
~An interesting ploy, though I am sure his fate will still serve as an example, whether you wish him back or not.~
END
IF ~~ EXTERN C6BODHI X3KalAb

BEGIN X3KALV 

CHAIN C6BODHI X3KalAb
~Here he is, though I doubt your fumbling could have inspired the loyalty I have taken with a bite and a gaze.  He is mine now, and will do my bidding gladly.~
== X3KALV ~As you say, mate. I am your servant in all things.~
== C6BODHI ~He is not even fully turned and yet he is mine to use against you. Doesn't it gall you? I thought it might.~ 
END
IF ~~ EXTERN C6BODHI 28

EXTEND_BOTTOM DOGHMA 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + ~A dear friend is afflicted by vampirism. An old book suggested that followers of Oghma might know something about that.~ EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 3
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + ~A dear friend is afflicted by vampirism. An old book suggested that followers of Oghma might know something about that.~ EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 7
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + ~A dear friend is afflicted by vampirism. An old book suggested that followers of Oghma might know something about that.~ EXTERN DOGHMA 10
END

EXTEND_BOTTOM DOGHMA 9
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + ~A dear friend is afflicted by vampirism. An old book suggested that followers of Oghma might know something about that.~ EXTERN DOGHMA 10
END

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("C6BODHI") OR(2) Global("X3KalVampire","GLOBAL",1) Global("X3KalVampire","GLOBAL",2)~ + ~A loved one was taken by a vampire. What can I expect when I find them?~ EXTERN WARSAGE 6
+ ~PartyHasItem("X3KBody")~ + ~Someone I care about has fallen to a vampire. Is there any way to save them?~ EXTERN WARSAGE 5
END


EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("X3KBody")~ + ~I'm looking for information about a tome that details the curing of vampirism.~ EXTERN IMNBOOK1 4
END


// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalTreeOfLife","GLOBAL",0) !Global("X3KalRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 Kpl2
END

CHAIN PLAYER1 Kpl2
~Kale, the halfling warrior always seeking to increase his own legend. Beside you, he is but in your shadows, and you wonder if he truly wishes to risk snuffing out his own light before it can shine.~
DO ~SetGlobal("X3KalTreeOfLife","GLOBAL",1)~
END
++ ~Kale, this isn't your fight. You don't need to be here.~ EXTERN X3KalJ pl2.2
++ ~This is it, Kale. Are you sure you want to join me for the battle ahead?~ EXTERN X3KalJ pl2.1
++ ~I need to know that you are ready to fight, Kale.~ EXTERN X3KalJ pl2.1

CHAIN X3KalJ pl2.2 
~Sure, I don't need to. But I damn well want to be here.~
EXTERN X3KalJ pl2.1

CHAIN X3KalJ pl2.1
~There is no bigger battle than this, no bigger moment, or bigger tale to form around my name. Yeah, I'm ready to fight for your soul, mate. Let's do this.~
END
COPY_TRANS PLAYER1 33 

// Romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Kal") Global("X3KalTreeOfLife","GLOBAL",0) Global("X3KalRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 Kpl3
END

CHAIN PLAYER1 Kpl3
~Kale, the halfling warrior who has always defended you well, and fell in love with you during your journey. He rolls his shoulders as you regard him, a wide grin forming on his face.~
DO ~SetGlobal("X3KalTreeOfLife","GLOBAL",1)~
END
++ ~Kale-~ EXTERN X3KalJ pl3.1

CHAIN X3KalJ pl3.1
~Yeah, I know what you are going to say. And you know what I am going to say back? Hell no. I want in on this fight, and I'm not staying out even if Yondalla herself asked.~
= ~You've changed me. Made me a better halfling. I have to confess...a year ago, I would have sheathed my weapon and marched out. Now? I know I'm a halfling ma will be proud of, and I hope you, too.~
= ~So let's go kill this bastard, shall we?~
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3KalIrenicusIsDead1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Ha! <CHARNAME> and company wins again!~
END

// Hell

I_C_T PLAYER1 25 X3KalEnteringHell1
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Dying makes you bloody hungry that's all I got to say. I felt a pull or something so skipped whatever cuisine they serve in death. So let's finish this and then have a grand meal.~ [X3KDH]
END

// Irenicus in hell

I_C_T HELLJON 7 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I'm getting real tired of you, bastard. You take what's not yours and worse of all, you've damaged my damn cloak! So I have one thing to say: Here comes halfling death!~
END

I_C_T HELLJON 8 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I'm getting real tired of you, bastard. You take what's not yours and worse of all, you've damaged my damn cloak! So I have one thing to say: Here comes halfling death!~
END

I_C_T HELLJON 9 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I'm getting real tired of you, bastard. You take what's not yours and worse of all, you've damaged my damn cloak! So I have one thing to say: Here comes halfling death!~
END

I_C_T HELLJON 10 X3KalThirdBattleWithIrenicus
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I'm getting real tired of you, bastard. You take what's not yours and worse of all, you've damaged my damn cloak! So I have one thing to say: Here comes halfling death!~
END

//Chapter 3 Docks Talk 

CHAIN IF ~Global("X3KalDockTalk","LOCALS",2)~ THEN X3KalJ DockTalk 
~Damn, this place still smells so fishy every time we visit. And not the good kind either. Makes me miss good ol' Gullykin cooking.~
DO ~IncrementGlobal("X3KalDockTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Fish isn't so bad, Kale.~ + ST.1 
++ ~Homesick, are we? Or seasick?~ + ST.3 
++ ~This isn't the time to talk.~ + ST.X 

CHAIN X3KalJ ST.1 
~If its cooked right. And you don't leave it out to rot, sheesh.~
EXTERN X3KalJ ST.2

CHAIN X3KalJ ST.3 
~Heh, not on the sea to be seasick, but damn, I do get homesick.~
EXTERN X3KalJ ST.2

CHAIN X3KalJ ST.X 
~Well if it isn't, let's get somewhere indoors quick. The stench is killing me.~
EXIT 

CHAIN X3KalJ ST.2
~Just thinking of ma's good ol cooking. Good stuff. If we ever are round Gullykin ever again, you ought to try it.~
END 
++ ~Count me in.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + ST.6
++ ~I think I've had enough experience with my prior travels in the north.~ + ST.7
++ ~I can't see us heading that way for a long time, if ever.~ + ST.5

CHAIN X3KalJ ST.5
~Yeah, you're probably right. Makes me miss it all the more.~
EXIT

CHAIN X3KalJ ST.6
~Grand. Heh, I know it isn't likely to ever happen though. Not a bad thing per say, we'd both gain some weight quick.~
EXIT 

CHAIN X3KalJ ST.7
~Really? Good to know, mate. Though compared to down here, I like Gullykin a whole lot more.~
EXIT 


// Quest 

CHAIN IF ~Global("X3KalQuest","GLOBAL",2)~ THEN X3KalJ Quest 
~Well, I guess that's that, then. No money, just a damn journal of his life.~
DO ~IncrementGlobal("X3KalQuest","GLOBAL",1)SetGlobal("X3KalQuestComment","AR0400",1)~
END 
++ ~Is that all you care about? Just the money?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@303)~  + Q.1 
++ ~There was some information in his journal. It could give you answers.~ + Q.2 
++ ~Well, if we're done here, we have other tasks to get to.~ + Q.3

CHAIN X3KalJ Q.1
~It's not about just the money. Eh, I'll relent and take a look at that book, in case there's some name to keep in mind or something.~
EXTERN X3KalJ Q.4 

CHAIN X3KalJ Q.3 
~Yeah, we're done. Eh, I'll relent and take a look at that book though, in case there's some name to keep in mind or something.~
EXTERN X3KalJ Q.4 

CHAIN X3KalJ Q.4
~...Huh. He knew Jillian? You know after our band split up she went back to serve the guard down in the docks. Maybe she knows something more than we do.~
DO ~AddJournalEntry(@3,QUEST)~
EXIT 

CHAIN X3KalJ Q.2
~Eh, I'll relent and take a look at that book then, in case there's some name to keep in mind or something.~
EXTERN X3KalJ Q.4 
// Ilmater Priest in Slums
EXTEND_BOTTOM SLILMAT 0
IF ~IsValidForPartyDialogue("X3Kal")Global("X3KalQuest","GLOBAL",0)~ EXTERN X3KalJ Items
END

CHAIN X3KalJ Items 
~Hey there mate, here to pick up my pa's stuff. Heard it was being kept here.~
== SLILMAT ~Ah, you are Kale? We mourn for  your loss.~
== X3KalJ ~Honestly? I barely knew him, but thanks mate. Just heard he got himself killed and had a bit of debt.~
== SLILMAT ~Most of what was in his home was raided, perhaps by these same debtors, I know not for sure. All that's left is this book.~
DO ~AddJournalEntry(@2,QUEST)ActionOverride(Player1,CreateItem("X3KBOOK1",0,0,0))~ 
END 
++ ~They really stole everything then.~ EXTERN X3KalJ gold
++ ~The journal might hold something useful for you, Kale.~ EXTERN X3KalJ journal  
++ ~A shame there's no gold.~ EXTERN X3KAlJ gold 

CHAIN X3KalJ cheese 
~Damn debtors. But maybe that means I won't have to worry about being pushed to pay anything.~
EXTERN X3KalJ holding 

CHAIN X3KalJ journal 
~Yeah, maybe. I'm not keen on reading it my self. Still angry at him for leaving ma. You take a look at it, <CHARNAME>~
EXTERN X3KalJ holding 

CHAIN X3KalJ gold 
~Yeah, would have been the most useful help he'd ever been to my family.~
EXTERN X3KalJ holding 

CHAIN X3KalJ holding 
~Thanks for holding these things priest, we'll get out of here.~
== SLILMAT ~May Ilmater watch over you.~
DO ~SetGlobal("X3KalQuest","GLOBAL",1)~
EXIT 

// Kale Talk 
CHAIN IF ~Global("X3KalTalk","LOCALS",2)~ THEN X3KalJ Talk1
~Fathers, eh? Never thought I'd be another guy with a dead father.~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~I am sorry about your loss. Did you know him well?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.1
++ ~We do have that in common. I lost mine as well~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.4
++ ~Is there a point you are making here?~ + T1.2

CHAIN X3KalJ T1.2 
~Well, I was just wondering mate, do you resent yours?~
END 
++ ~No. I cared a lot for him.~ + T1.1
++ ~I don't really feel anything for Gorion.~ + T1.1
++ ~I'm quite thankful for his gifts.~ + T1.1

CHAIN X3KalJ T1.1 
~This cloak is my pa's, you know? I wanted to be just like him and everything. Wandering about. Flirting with whoever he wanted. He loved his kids, but I think he only stayed around a bit for ma.~
== X3KalJ ~Ma loved him, but I think she always understood he was the type of love you have to let go and fly free.~
END 
++ ~Shouldn't spouses stick together?~ + T1.5 
++ ~I suppose if he didn't want to commit, it was for the best.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T1.6
++ ~Speaking of flying, we should get going ourselves.~ + T1.X

CHAIN X3KalJ T1.3 
~Sounds like my brother, Sam...family can bear you down a bit sometimes.~
END 
++ ~Did you know your father well?~ + T1.1 
++ ~It's not something I really want to talk about.~ + T1.X 
++ ~He's dead and it's done. I can't control who I descend from.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T1.7

CHAIN X3KalJ T1.4
~Were you close?~
END 
++ ~We were. I miss him dearly.~ + T1.1 
++ ~Not very, no.~ + T1.1 
++ ~I'm quite thankful for his lessons and gifts, but that was all he was useful for.~ + T1.7

CHAIN X3KalJ T1.X 
~All right, mate. We can get right to stumbling into whatever you prefer to jump into.~
EXIT 

CHAIN X3KalJ T1.5 
~Only as long as they want to. When you get bored of it, time to walk off. Love's best enjoyed while the flame's hot and left once it's gone, you know?~
END 
++ ~You don't believe in staying with someone forever?~ + T1.8 
++ ~I suppose it's not a bad philosophy, really.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T1.8
++ ~When there's time for it. I have no time for it.~ + T1.9 

CHAIN X3KalJ T1.6 
~That's what I say, mate. Love's best enjoyed while the flame's hot and left once it's gone, you know?~
END 
++ ~You don't believe in staying with someone forever?~ + T1.8 
++ ~I suppose it's not a bad philosophy, really.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T1.8
++ ~When there's time for it. I have no time for it.~ + T1.9 

CHAIN X3KalJ T1.7 
~Well, kind of cold to say mate, but maybe that reaction makes sense for your situation.~
EXTERN X3KalJ T1.1 

CHAIN  X3KalJ T1.8 
~Life is short and there are lots of great, fun people out there. If you're so tied down to one, you limit your time. That's why I'm off with you, mate. The adventurer's life makes it feel all the shorter, and if you can take a blade with courage you can charm a lad or lass just as well.~
EXIT 

CHAIN X3KalJ T1.9 
~Pfft, well who knows? You might find it on your journey's, eh?~
EXIT 

// Kale Talk 2 

CHAIN IF ~Global("X3KalTalk","LOCALS",4)~ THEN X3KalJ Talk2
~Heh. Your fame back in Baldur's Gate doesn't seem to have followed you here much, eh?~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~What do you mean?~ + T2.1
+~Global("X3KalPartyBG1","GLOBAL",1)~+ ~For the best. The city and I did not leave on good terms~ + T2.2
+~!Global("X3KalPartyBG1","GLOBAL",1)~+ ~For the best. The city and I did not leave on good terms~ + T2.4
++ ~Not at all. But I'll forge my name here in time.~ + T2.6

CHAIN X3KalJ T2.1 
~I mean if this was Baldur's Gate everyone on the entire block would know you. Heh, I bet even Gullykin would recognize you, and that's saying something. Here? 'Sides a few folk, you might be able to walk around without a second glance.~
END 
+~Global("X3KalPartyBG1","GLOBAL",1)~+ ~It is for the best. The city and I did not leave on good terms~ + T2.2
+~!Global("X3KalPartyBG1","GLOBAL",1)~+ ~It is for the best. The city and I did not leave on good terms~ + T2.4 
++ ~Not at all. But I'll forge my name here in time.~ + T2.6
++ ~It's not about the recognition Kale. It's just about getting things done.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~  + T2.7

CHAIN X3KalJ T2.2 
~Yeah, I can't say I didn't forget that. I never thought of it much, but I guess making it big means you also got a big target on your back. Makes me feel a little bit better about being second fiddle.~
END 
++ ~You're not second to me, Kale. You're just as important as me.~ DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3
++ ~Maybe if I have you claim credit for everything we do, I can redirect the marks to you.~ + T2.8
++ ~Second Fiddle? I think I'd put you a bit further back then that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5

CHAIN X3KalJ T2.4
~Eh, I confess I didn't keep up with much after I heard of the Iron Throne's demise and all. Was trying to make my own name out in the world. A bit weird now to be playing second fiddle.~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ T2_Interject 
++ ~You're not second to me, Kale. You're just as important as me.~ DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3
++ ~Maybe if I have you claim credit for everything we do, I can redirect the marks to you.~  + T2.8
++ ~Second Fiddle? I think I'd put you a bit further back then that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5

CHAIN X3KalJ T2.6 
~You seem confident in this new place. I like it about you, makes you easy to follow. Although it's a bit odd to be playing second fiddle to you. I was the face of my last adventuring crew.~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ T2_Interject 
++ ~You're not second to me, Kale. You're just as important as me.~ DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3
++ ~Maybe if I have you claim credit for everything we do, I can redirect the marks to you.~  + T2.8
++ ~Second Fiddle? I think I'd put you a bit further back then that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5


CHAIN X3HelJ T2_Interject 
~As if ye were the leader of my crew, pah.~
== X3KalJ ~Eh, everyone knows you, old dwarf, is the least charming one in our old party.~
END 
++ ~I don't know. I think Helga is just fine.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@216)~  EXTERN X3KalJ T2.Hel
++ ~You're not second to me, Kale. You're just as important as me.~ DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ EXTERN X3KalJ T2.3
++ ~Maybe if I have you claim credit for everything we do, I can redirect the marks to you.~  EXTERN X3KalJ T2.8
++ ~Second Fiddle? I think I'd put you a bit further back then that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T2.5

CHAIN X3KalJ T2.Hel 
~Uh-huh, but what about me?~
END 
++ ~Maybe if I have you claim credit for everything we do, I can redirect the marks to you.~  + T2.8
++ ~I think I'd put you a bit further back then second fiddle.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.5
++ ~You're not second to me, Kale. You're just as important as me.~ DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.3


CHAIN X3KalJ T2.5 
~Anyone ever tell you could be a bit mean, <CHARNAME>? That was a heart sinker! Now I'll be wondering who is ahead of me all day.~
EXIT 

CHAIN X3KalJ T2.3 
~Heh, that's nice of you to say, <CHARNAME>. But this is your crew, not mine. You're the face.~
END 
++ ~We are a unit, Kale. And a unit is composed of all its parts to work.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.11 
++ ~I guess you're right, I do carry the burden of leader.~  + T2.12
++ ~Come, we've yapped enough now.~ + T2.X

CHAIN X3KalJ T2.7
~Really? I just find that kind of mindset so boring. How in the world do you have all that fame if you don't gloat about it a bit? Makes me wonder how I'm second fiddle around here.~
END 
++ ~Maybe if I have you claim credit for everything we do, I can redirect the marks to you.~ EXTERN X3KalJ T2.8
++ ~Second Fiddle? I think I'd put you a bit further back then that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T2.5
++ ~You're not second to me, Kale. You're just as important as me.~ DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",1)~ EXTERN X3KalJ T2.3


CHAIN X3KalJ T2.8 
~Very funny, mate. I'll just have to be suspicious now, or just put my bed roll closer to yours so they're as likely to get the both of us.~
END 
++ ~With our strength, I'm sure we'll be fine.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T2.14 
++ ~Don't be such a coward.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T2.13 
++ ~Closer to me? I wouldn't mind that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)SetGlobal("X3KalInterest","LOCALS",1)~ + T2.9 
++ ~Come, we've yapped enough now.~ + T2.X

CHAIN X3KalJ T2.X 
~I suppose we have. Lead us on, eh?~
EXIT 

CHAIN X3KalJ T2.9 
~Wait, what? Blimey, is it warm in here, or is it just me? You know, I'm going to find some water to pour over my head or something, pardon me.~
EXIT

CHAIN X3KalJ T2.10 
~Heh, as if you'd be so lucky, longshank.~
EXIT 

CHAIN X3KalJ T2.11 
~That's a rather interesting way to think about it. Is this your way of saying you need me? I definitely like the sound of that.~
EXIT 

CHAIN X3KalJ T2.12 
~You sure do. Now if you want me to lead though, I totally won't refuse the offer. I've heard I'm pretty good at that sort of thing from admirers in Gullykin. Eh, I made that up. The Gullykin part, I'm still a good leader.~
EXIT 

CHAIN X3KalJ T2.13
~Coward? More like sensible protection. You get worked up too easily if you ask me, <CHARNAME>. You could learn to take it a bit easier mate. Might help you out a bit.~
EXIT 

CHAIN X3KalJ T2.14 
~Heh, I guess with the two of us, we could overpower any ambushes. But eh, I'd rather have a good, fulfilling night's rest. *Yawn*. Hopefully we get a chance soon, I could use a nap.~
EXIT 

// Friendship Talk #6

CHAIN IF ~Global("X3KalTalk","LOCALS",6)~ THEN  X3KalJ Talk3
~So, you got an opinion on halflings, <CHARNAME>?~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ Interject_3
+~Race(Player1,HALFLING)~+ ~As thieves mostly, to be honest.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.2
+~!Race(Player1,HALFLING)~+ ~As thieves mostly, to be honest.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.1
+~Race(Player1,HALFLING)~+ ~I think we're great.~ + T3.6
++ ~Very friendly people all around.~ + T3.4
++ ~I don't have an opinion.~ + T3.3
+~Race(Player1,HALFLING)~+ ~A bit of a nuisance.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.2
+~!Race(Player1,HALFLING)~+ ~A bit of a nuisance.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.1

CHAIN X3VieJ Interject_3 
~Thieves, scoundrels, or annoyances. Those are the only possible opinions to have.~
== X3KalJ ~I didn't think your name was <CHARNAME>, Vienxay. Stick your head up in the clouds and out of our conversation.~
END 
+~Race(Player1,HALFLING)~+ ~She has a point, Kale. A lot of halflings are notorious for swiping things.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@513)~ EXTERN X3KalJ T3.2
+~!Race(Player1,HALFLING)~+ ~She has a point, Kale. A lot of halflings are notorious for swiping things.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@513)~ EXTERN X3KalJ T3.1
++ ~I think halflings are very friendly people all around.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@503)~ + Interject_3.3
+~Race(Player1,HALFLING)~+ ~I think we're great.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)IncrementGlobal("X3VieApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@503)~ + Interject_3.2
++ ~I don't have an opinion.~ EXTERN X3KalJ T3.3
+~Race(Player1,HALFLING)~+ ~A bit of a nuisance.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T3.2
+~!Race(Player1,HALFLING)~+ ~A bit of a nuisance.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ EXTERN X3KalJ T3.1

CHAIN X3KalJ T3.1 
~Mate, I thought you of all people might have a more enlightened view of my race.~
EXTERN X3KalJ T3.6 

CHAIN X3KalJ T3.2 
~Really? I thought a fellow halfling might have a more enlightened view of our race.~
EXTERN X3KalJ T3.6

CHAIN X3KalJ T3.3 
~No opinion? Not even after being around me? For shame, mate!~
EXTERN X3KalJ T3.6 

CHAIN X3KalJ T3.4 
~Friendly? I wish more people saw that. It's quite true, I think.~
EXTERN X3KalJ T3.6

CHAIN X3VieJ Interject_3.3 
~Of course you have that mistaken opinion. Hrmph.~
EXTERN X3KalJ T3.5 

CHAIN X3VieJ Interject_3.2 
~I suppose if you were born lesser, you might have such a mistaken opinion.~
EXTERN X3KalJ T3.5

CHAIN X3KalJ T3.5 
~Eh, ignore her. She's just a stuck in the mud, ain't she?~
EXTERN X3KalJ T3.6

CHAIN X3KalJ T3.6 
~So many see us as thieves or homebodies. And eh, the latter can be true in Gullykin. We love our homes. But in our world, everything is open and free and shared. I don't know why everyone is so obsessed over ownership.~
== X3KalJ ~Not that I take things, I know better. But in the big cities, like Althkata, I've seen some unfair treatment over it. It gets under my feathers, so to speak.~
END 
+~Race(Player1,HALFLING)~+ ~It bothers me, too.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.7
++ ~The only way to change that view is to not feed into it.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.8
++ ~Well, if someone treats you poorly for it, I'll stand up for you.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T3.9
++ ~There's nothing you can do about that. It is how it is.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T3.10 

CHAIN X3KalJ T3.7 
~It's nice to have another halfling around, mate. You understand. You see and feel what I feel. Makes the world away from home a little less lonely.~
EXIT 

CHAIN X3KalJ T3.8 
~Nah, I don't think that will work very well, <CHARNAME>. But thanks for the advice anyway.~
EXIT 

CHAIN X3KAlJ T3.9 
~I appreciate that, <CHARNAME>. I wish more people thought like you, really.~
EXIT 


CHAIN X3KalJ T3.10 
~And I thought I was pessimistic. But you might be right as much as I dislike it. Let's just forget about it.~
EXIT 

// Friendship Talk #4

CHAIN IF ~Global("X3KalTalk","LOCALS",8)~ THEN  X3KalJ Talk4
~Ain't much celebrating with this group, is there? We ought to indulge in our successes, I say.~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~There is little to celebrate. There is always another task ahead.~ + T4.1 
++ ~That sounds nice, really. You have any ideas?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T4.2 
++ ~We're not here to celebrate, Kale. Not until everything is done.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T4.1 

CHAIN X3KAlJ T4.1 
~Yeah, I suppose that's true, but damn does a nice drink and someone good looking to flirt with sound like a nice time right now.~
END 
++ ~And what's wrong with me, hmm? I'm sure I have a drink somewhere.~  + T4.3 
++ ~Maybe we can make time at an inn sometime.~ + T4.4
++ ~We don't have time for that nonsense.~ + T4.5


CHAIN X3KalJ T4.2 
~Me? Getting drunk off our bottoms. A good inn, splendid rooms, lads or lasses to flirt with, whatever someone fancied, and plenty of ale and wine.~
END 
++ ~We could do that now. I'm sure I have a drink somewhere, and you look fanciable enough.~ + T4.3 
++ ~Maybe we can make time at an inn sometime.~ + T4.4 
++ ~We don't have time for that nonsense.~ + T4.5

CHAIN X3KAlJ T4.3 
~Ha, I might take you up on that, <CHARNAME>, but we could also do that at a proper inn. If you're up for it, I'll even do the buying, even if it's our gold I'd be spending, heh.~
DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)SetGlobal("X3KalInterest","LOCALS",1)~
EXIT 

CHAIN X3KalJ T4.4 
~Glad you see it my way. Maybe when we've time we can do just that, eh?~
DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~
EXIT 

CHAIN X3KalJ T4.5 
~Pfft, you are such a poor sport, <CHARNAME>. You really ought to wind down a bit.~
DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~
EXIT 


// Talk 5: At Any Inn 

CHAIN IF ~Global("X3KalTalk","LOCALS",10)~ THEN X3KalJ Talk5 
~Woo, finally, an inn. Bottoms up, I say. We got time for a drink, right?~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++  ~Sure, I guess we can relax for a moment.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.1 
++ ~No, we have no time for such a thing.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T5.2 
++ ~What has you so excited?~ + T5.3 

CHAIN X3KalJ T5.1 
~Now we're talking, <CHARNAME>. Let's just sit a moment and indulge, eh? I hear this place has some good dark ale if you're into that stuff.~
EXTERN X3KalJ T5.4 

CHAIN X3KalJ T5.2 
~Aww, you are no fun sometimes, mate.~
EXIT 

CHAIN X3KalJ T5.3 
~We, mate, are alive. And that is the singular great reason to ever be excited when you walk into the tavern and let your eyes settle on a keg.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Count my vote in the short break for an ale, if we're counting. I could use s strong drink.~
END 
++ ~All right then, we can relax a moment.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.1
++ ~If that's what you want.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.1 
++ ~We have no time for this.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T5.2  

CHAIN X3KalJ T5.4 
~In fact, try some of it. A glass over here, will you? Here, try, try.~
END 
++ ~Tastes a bit strong for my liking.~ + T5.5 
++ ~What is it? It's delicious.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.5 
++ ~This stuff is awful!~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T5.6 

CHAIN X3KAlJ T5.5
~Heh. This is Luiren Dark Ale. Good stuff. Better than anything else you might have, even if its dwarven brew.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Fat chance of that. If ye want *real* ale, I can show you better stuff another time, <CHARNAME>.~
END 
++ ~Luiren, isn't that the halfling homeland?~ + T5.7 
++ ~Is that what you usually drink?~ + T5.6 
++ ~Enough drinking, we should get back to things.~ + T5.2

CHAIN X3KalJ T5.6 
~Awful? Eh, maybe they just made it wrong. No one says Luiren Dark Ale is awful.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Except someone with good taste.~
END 
++ ~Luiren, isn't that the halfling homeland?~ + T5.7 
++ ~Is that what you usually drink?~ + T5.13 
++ ~Enough drinking, we should get back to things.~ + T5.2

CHAIN X3KalJ T5.13 
~Yeah, I introduced Gast to this stuff. Was one of our last nights together. That guy could out drink anyone, I tell you, and he was still bloody clear in his speech afterwards. Never seen a gnome like him.~
EXTERN X3KalJ T5.8

CHAIN X3KalJ T5.7 
~Aye, it is, and where the best brew comes from. I introduced Gast to this stuff last. Was one of our last nights together. That guy could out drink anyone, I tell you, and he was still bloody clear in his speech afterwards. Never seen a gnome like him.~
EXTERN X3KalJ T5.8

CHAIN X3KalJ T5.8
~I miss him. Too soon to the next great adventure with him.~
END 
++ ~The next great adventure?~ + T5.11 
++ ~I am sorry about your friend.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T5.9
++ ~Were you lovers? You sound close.~ + T5.10 


CHAIN X3KAlJ T5.9 
~Yeah, thanks. I think you would have liked him if he was still around.~
EXTERN X3KAlJ T5.12 

CHAIN X3KAlJ T5.10 
~Lovers? We had a few close moments, but it wasn't something exclusive if that's what you were getting at. There were some fun nights, though. Good times.~
EXTERN X3KalJ T5.12 

CHAIN X3KalJ T5.11 
~Means the afterlife in my culture, <CHARNAME>. It is supposed to be exciting and not feared, but...still hurts to lose someone, you know?~
EXTERN X3KalJ T5.12 

CHAIN X3KAlJ T5.12 
~I don't mean to sour our drinking and all. Let's finish this up and get back on the road eh, or whatever you want us to do next.~
EXIT 

//Friendship Talk #6

CHAIN IF ~Global("X3KalTalk","LOCALS",12)~ THEN X3KalJ FriendshipTalk6
~Halflings have it hard in the city, you know. Not as easy as it was for me in Gullykin. Especially the caravans.~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~I've not seen any caravans in the city.~ + T6.1 
++ ~It doesn't seem any worse than it is for anyone else.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T6.2 
++ ~What do you mean?~ + T6.3

CHAIN X3KalJ T6.1 
~For good reason. A lot of folks don't like kindly on a caravan of traveling halflings.~
EXTERN X3KalJ T6.3

CHAIN X3KalJ T6.2 
~That mate, is because you aren't paying attention.~
EXTERN X3KalJ T6.3 

CHAIN X3KalJ T6.3 
~Just take a look at what my kin are doing. Some are lucky to hold shops. Most business is fend for yourself business.~
= ~A bit of borrowing, but what else can you do if you can't get work?~
END 
++ ~Couldn't they just live somewhere else?~ + T6.4 
++ ~I'm sure there are some that are doing just fine.~ + T6.5 
++ ~They aren't the only people suffering. Many other races don't have it easy, either.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T6.6

CHAIN X3KalJ T6.4
~Heh, that's not always so easy mate. Not everyone has your talents.~
EXTERN X3KalJ T6.7 

CHAIN X3KalJ T6.5 
~Yeah, there are probably a few lucky ones. Can't say that they're doing legal work to get through things, though.~
EXTERN X3KalJ T6.7 

CHAIN X3KalJ T6.6
~I wasn't applying otherwise. But I'm not really paying attention to just any folk either.~
EXTERN X3KalJ T6.7

CHAIN X3KalJ T6.7
~Ah well, what can you do? Suppose the city has its benefits and fun. They do got good drinks around here.~
EXIT 

//Friendship Talk #7A

CHAIN IF ~Global("X3KalTalk","LOCALS",14)Dead("X3KC")~ THEN X3KalJ FriendshipTalk7A
~There are more people like Bryce and Chester out there, you know? Killing them won't change nothing.~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~It will stop what they've done. And maybe it will scare others.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7A.1 
++ ~Why did you want to kill Chester, then?~ + T7A.2
++ ~Nor will talking about it. We have things to do.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T7A.X 

CHAIN X3KalJ T7A.1
~I hope it does. People like them make my skin crawl, mate.~
EXTERN X3KalJ T7A.3

CHAIN X3KalJ T7A.2
~Just because it won't stop my people from getting hurt from longshanks like him doesn't mean he didn't deserve to die for it.~
EXTERN X3KalJ T7A.3 

CHAIN X3KalJ T7A.3 
~All sorts of suffering out there, and we'll have to take care of it ourselves. Make a legacy of cleaning other people's messes.~
END 
++ ~That's not why I am traveling, Kale.~ + T7A.4
++ ~That we will have to do.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7A.5
++ ~If the reward is justified.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7A.6
++ ~The world isn't that hopeless, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + T7A.7

CHAIN X3KalJ T7A.4
~Yeah, I suppose you have your own personal reasons. Suppose that's for the best, eh?~
EXIT 

CHAIN X3KalJ T7A.5 
~Aye. Well, let's get back to whatever we were doing. I'm just glad this is done with.~
EXIT 

CHAIN X3KalJ T7A.6
~Heh, I prefer glory over gold, but I won't say no to gold either!~
EXIT 

CHAIN X3KalJ T7A.7
~Pfft. You and I have different perceptions of the world. I won't get you to agree to it, so...you can keep disbelieving if that's what you want to do.~
EXIT 

CHAIN X3KalJ T7A.X 
~Pfft. Not one for conversation today, are you? Well, if that's how it is.~
EXIT  

//Talk #7B

CHAIN IF ~Global("X3KalTalk","LOCALS",14)!Dead("X3KC")~ THEN X3KalJ FriendshipTalk7B
~I got to say mate...thanks for convincing me to hold back. I thought the only answer was killing Chester, but now I see there is justice in this place.~
DO ~ChangeAlignment("X3Kal",LAWFUL_NEUTRAL)IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END  
++ ~You are welcome, though I was just doing what I thought was best.~ + T7B.1 
++ ~It was better to have the law take care of him.~ + T7B.2
++ ~Of course, though let's keep moving.~ + T7B.X 

CHAIN X3KalJ T7B.X 
~All right, mate. On to the next, eh?~
EXIT 

CHAIN X3KalJ T7B.1
~You were...and after I see how I played out, I should have had more trust in Jillian and the system.~
EXTERN X3KalJ T7B.3

CHAIN X3KalJ T7B.2
~I would usually almost always disagree with that...but maybe Jillian is right. Maybe she was always right.~
EXTERN X3KalJ T7B.3

CHAIN X3KalJ T7B.3 
~Maybe more of our people can be encouraged to invest their time in the society as guards and soldiers like Jillian has, and things might get better.~
= ~Could have a few mayors, too, eh? Might be a bit far-fetched to have someone right-sized lord over all of these tall folks, but we'd make better decisions.~
END 
++ ~It's a good hope to have, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7B.4 
++ ~Er. I don't know about that...~ + T7B.5
++ ~I'm glad your views have shifted about your people in the cities.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T7B.6

CHAIN X3KalJ T7B.4
~Sure is, mate, and I've got a wide smile. For once...I'm glad for the father I had. He helped me see things in a better light.~
EXIT 

CHAIN X3KalJ T7B.5
~Wait, just think of the sound of it. Mayor Kale, of one of these towns in Amn. Extra shiny cloak too...that would be so perfect, heh.~
= ~I suppose we should get going. On to the next and all of that.~
EXIT 

CHAIN X3KalJ T7B.6
~This whole experience has definitely made me change my mind about a lot of things. I definitely have some new ideas for my adventuring career, or if it doesn't work out: Officer Kale, or...even mayor Kale!~
= ~All right, maybe that is a bit far fetched even for me. But eh, let's go on to the next and all of that.~
EXIT 

//Friendship Talk #8

CHAIN IF ~Global("X3KalTalk","LOCALS",16)~ THEN X3KalJ FriendshipTalk8
~The most disappointing thing about our trek through the Underdark is I doubt anyone will believe we ever were down there, eh?~
DO ~IncrementGlobal("X3KalTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Wouldn't you just exaggerate the details anyway? I don't think anything is lost.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T8.1 
++ ~You would be surprised.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + T8.2 
++ ~They would believe my part in it. They may not believe yours.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + T8.3
++ ~This isn't a good time to talk, Kale.~ + T8.X 

CHAIN X3KalJ T8.X 
~This is probably the best time we've had in a while but if you want to keep pushing us forward, I'm fine with that too.~
EXIT 

CHAIN X3KalJ T8.1 
~Come on, mate. I don't exaggerate *that* much. Any flourish is only slightly off of the reality and is necessary to add the slightest enhancement to my tale.~
EXTERN X3KalJ T8.4

CHAIN X3KalJ T8.3 
~Hey. Damn, you are cold sometimes, <CHARNAME>.~
EXTERN X3KalJ T8.4

CHAIN X3KalJ T8.2
~Pleasantly surprised? I'll take it.~ 
EXTERN X3KalJ T8.4

CHAIN X3KalJ T8.4
~I've a feeling that will not even amount of the tales that we are about to go through next. You hanging in there, mate?~
END 
++ ~I have to. I won't let Irenicus get away.~ + T8.5 
++ ~Barely. We may not make it, you know?~ + T8.6
++ ~With the support of my companions, I know we can do this.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + T8.5

CHAIN X3KalJ T8.6 
~Maybe. Dying in heroic glory isn't a terrible way to go out, though, if that's all this effort winds up to be.~
EXTERN X3KalJ T8.5

CHAIN X3KalJ T8.5 
~I am with you all the way, mate. For glory or none at all...this has been a ride I will see this to the end.~
EXIT 

//Romance Talks 
CHAIN IF ~Global("X3KalLoveTalk","LOCALS",2)~ THEN X3KalJ LoveTalk1 
~You know when I was a more inexperienced fighter, I used to growl and scrap and fight anyway which possible. A bit like the dwarven berserkers, Helga used to tell me. Not anymore.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~You don't seem to fight much like a berserker at all.~ + 1.1
+~Global("X3KalPartyBG1","GLOBAL",1)~+ ~I remember. What made you decide to change the way you fought?~ + 1.2
++ ~Did you not know how to fight properly?~ + 1.3
++ ~You might be more useful if you fought that way, we could use a more aggressive approach.~ + 1.4
++ ~Let's not talk right now.~ + 1.X 

CHAIN X3KalJ 1.X 
~Huh. Well if that's what you want.~
EXIT 

CHAIN X3KalJ 1.1 
~I used to. We didn't really have much actual warriors trained in Gullykin but a few who served as guards, and I never really worked with them.~
EXTERN X3KalJ 1.2 


CHAIN X3KalJ 1.3 
~I'm from a halfling village where people prefer sitting in their burrows and enjoying a good smoke or tale over leaving their homes, you know.~
EXTERN X3KalJ 1.2

CHAIN X3KalJ 1.2
~Spending time with Gast taught me the flaws of fighting with only your emotion. Sure, the pumped energy sure keeps your body going, but if your foe isn't intimidated, if they're cautious and cunning you're going down quicker for it.~
= ~He taught me how to shrug off blows and lean so the well protected parts of my armor would absorb the shock of a swing. Taught me how to position myself to flank my target so a companion could take advantage of their distracted vision.~
= ~And he sure told me how dumb it was to try to wield enormous weapons to try to compensate for my size. Not that I wouldn't mind if you told me, still have a fondness for them.~
END 
+~OR(2)Race(Player1,HALFLING)Race(Player1,GNOME)~+ ~You are pretty small, you shouldn't use big weapons.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 1.13 
+~!Race(Player1,HALFLING)!Race(Player1,GNOME)~+ ~You are pretty small, you shouldn't use big weapons.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 1.14
++ ~I find your way of fighting helpful. You make me feel safer.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 1.7
++ ~I've never really thought of the intricacies of combat. I am just trying to survive.~ + 1.6

CHAIN X3KalJ 1.14
~Pfft, that's what everyone said. But I think a big weapon in a small hand sure can be scary to an onlooker, and that was my goal.~
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.13 
~Pfft, you're not much taller, you know. But I think  big weapon in a small hand can be scary to an onlooker, and that was my goal.~
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.7
~Heh, good! It took me a while to transition my way of fighting. I was so used to wild swinging with giant weapons, thinking it was the only way for me to fight well.~
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.6
~I know that. That's why I started out swinging the largest weapon I could find with all the fury and anger to make it through.~
EXTERN X3KalJ 1.5

CHAIN X3KalJ 1.4
~It has its advantages. It's also a good way to earn a lot of scars, fighting with your anger to push you past your limits.~
EXTERN X3KalJ 1.5


CHAIN X3KalJ 1.5
~I admit though, it was pretty clunky, and took a lot of training to be bulked up enough to even hold them.~
= ~I could show you, too. Just look at my arms. A piece of art, aren't they?~
END 
++ ~For a halfling, I guess.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 1.11
++ ~Mmm. Very nice. Let me touch.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 1.10
++ ~Ooh, that is a bit of muscle.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 1.9
+~!CheckStatGT(Player1,15,STR)~+ ~That's nothing. Look at mine.~ + 1.17
+~CheckStatGT(Player1,15,STR)~+ ~That's nothing. Look at mine.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 1.8
++ ~They just look like arms to me.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 1.16 

CHAIN X3KalJ 1.16
~Really? "Just look like arms." Give me a tiny bit of credit, now. I spent years on this.~
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.8
~Damn. Not bad, mate. You've got some fine power. I could admire that work for ages.~
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.17
~Uh...no offense mate but...there isn't much to see.~
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.9
~Heh, sure is. I may not be as strong as some taller folk, but I've got some mean muscles still.~
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.10
~See? All real, mate. Admire as much as you please.~
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.11 
~For a halfling? Pfft. I may not be as strong as some taller folk, but I've got some mean muscles still.~
EXTERN X3KalJ 1.12

CHAIN X3KalJ 1.12
~Well, enough of that, eh? My arms do a better job showing off in a skirmish, and I bet we'll find something to get in a rabble with soon.~
EXIT 

//Love Talk #2

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",4)~ THEN X3KalJ LoveTalk2 
~I wish Gast was still with me. You know he'd probably fit in right with our group. He'd be a damn helpful addition too.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~What is it about this gnome that makes him so special to you?~ + 2.1
++ ~If we had him along, I'd probably have to get rid of you.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 2.2 
++ ~I remember you mentioning that he died in battle.~ + 2.3
++ ~It's hard to say, you can't say how things would go if a single thing changes.~ + 2.4
++ ~This isn't a good time to talk, Kale.~ + 2.X 

CHAIN X3KalJ 2.X 
~If you say so, mate.~
EXIT 

CHAIN X3KalJ 2.1 
~Hard to point it down to one thing, really. He was a great warrior, and an even better companion. Always had your back even in the thickest danger.~
EXTERN X3KalJ 2.5

CHAIN X3KalJ 2.2 
~Pfft, now Gast wasn't *that* great. Close to me, but better than the Kale? Pfft.~
EXTERN X3KalJ 2.5

CHAIN X3KalJ 2.3 
~Yeah. He did. It hit us all hard when it happened, but I'll never forget some of his great heroics..~
EXTERN X3KalJ 2.5

CHAIN X3KalJ 2.4  
~Yeah yeah, that's true, but still. He would have been great.~
EXTERN X3KalJ 2.5 

CHAIN X3KalJ 2.5 
~We had entered a small cave together, Gast, myself, Helga, and the Swift kin. We thought it was full of treasure, chests abound everywhere. We had heard there was a good stash but saw a lot of bodies about, so we figured it was trapped.~
= ~Jillian didn't notice any trips or clamps about, so we decided to pillage away. When one of the chests nearly chomped off one Jillian's hands, we knew half of them were actually mimics.~
= ~Gast started charging them at all with a hammer, smashing them to pieces. Like a hammer in a nail. Poor things were screaming incomprehensibly. Even Helga was watching flabbergasted.~
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ 2.Helga 
++ ~Did he eventually fall fighting them?~ + 2.6 
++ ~Your friend sounds like he was pretty proficient in battle.~  DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 2.7
++ ~Sounds like you might not have made it if he wasn't there.~ + 2.8

CHAIN X3HelJ 2.Helga 
~I was busy trying to fend off two of those bastards. Like hell I'd just stand around agape.~
== X3KalJ ~Hey, I'm telling the tale here, not you, old dwarf.~
END 
++ ~Did he eventually fall fighting them?~ EXTERN X3KalJ 2.6 
++ ~Your friend sounds like he was pretty proficient in battle.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ EXTERN X3KalJ 2.7
++ ~Sounds like you might not have made it if he wasn't there.~ EXTERN X3KalJ 2.8

CHAIN X3KalJ 2.6
~Nah...Gast fell after that. It was several hundred arrows from a nasty ambush some days later from some ettins who had the high ground. Was at the rear to shield us all.~
EXTERN X3KalJ 2.9

CHAIN X3KalJ 2.9
~Worst the rest of us got was a bad leg from a boulder they threw at Helga. We swore to get revenge...and we did. Waited until night and ambushed the entire lot at their camp we tracked down.~
= ~Kind of feels sour talking about him now. Allow me a bit of silence, mate. Still hard to talk about it.~
EXIT 

CHAIN X3KalJ 2.7
~Sure was. a true marvel. Sadly, he fell not long after that in a nasty ambush against some ettins who had the high ground and a lot of arrows. He was at the rear so he could take them all for us, stubborn bastard.~
EXTERN X3KalJ 2.9

CHAIN X3KalJ 2.8
~I don't know about the mimics, but certainly so later on, when we were ambushed by ettins who rained down their arrows on us. He was at the rear to shield us all. Gave his life for us.~
EXTERN X3KalJ 2.9

//Kale Love Talk #6

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",6)~ THEN X3KalJ LoveTalk3 
~You have this way, <CHARNAME>, of making the impossible seem quite possible. My last adventuring group only took on what seemed a reasonable risk, but you seem to be aiming pretty high.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~What do you mean by that?~ + 3.1
++ ~It really is as simply as trying. If you don't try, you'll never know if you can.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.2 
++ ~I am much more powerful than anyone you've traveled with, obviously.~  + 3.3
++ ~This isn't a good time to talk.~ + 3.X 

CHAIN X3KalJ 3.X 
~Hrm. All right, then.~
EXIT 

CHAIN X3KalJ 3.1
~Well, you are practically aiming for a wizard who from what I understand, destroyed an entire section of Althkata on his own. Not to mention saved Baldur's Gate from the entire Iron Throne.~
EXTERN X3KalJ 3.4 

CHAIN X3KalJ 3.2 
~That can only go so far. Conventional wisdom does keep us from killing ourselves. I don't want to deprive the world of my presence too soon now.~
EXTERN X3KalJ 3.4 

CHAIN X3KalJ 3.3 
~That are more foolish, and certainly damn luckier.~
EXTERN X3KalJ 3.4 

CHAIN X3KalJ 3.4
~We learned to steady our ambition early after we lost our first companion, Stormaxe.~
= ~Helga had wanted us to tackle down an entire giant camp lurking a bit too close to a local Amn town. Had us all prepped up at a nice overlooking rock cliff, bows and slings trained.~
= ~We began pelleting bullets shooting down arrows, taking many down before they could even get close, but a mage amongst them had managed to thrust a spell towards us.~
= ~Missed everyone except Stormaxe, who it teleported straight next to the ogre mage and hundreds of other giants around him. Not a good place to be.~
END 
++ ~Did you retreat after you lost Stormaxe?~ + 3.5 
++ ~Wait, hundreds?~ + 3.6
++ ~Poor Stormaxe. I imagine he was killed shortly after.~ + 3.7
++ ~I don't think I have time to listen to the rest of this, Kale.~ + 3.X 

CHAIN X3KalJ 3.5
~Abandoning a comrade wasn't really our group's thing. Not while their axe was swinging.~
EXTERN X3KalJ 3.8

CHAIN X3KalJ 3.6
~Maybe a *little* less, but it felt like hundreds.~
EXTERN X3KalJ 3.8

CHAIN X3KalJ 3.7
~You would think that. But Stormaxe had a glint in his eye. A dwarf daring all odds.~
EXTERN X3KalJ 3.8

CHAIN X3KalJ 3.8
~Stormaxe had raised his axe to the sky, and literal lightning clanged into it and smacked all the ogres around him.~
= ~He was whirling and twirling, swinging and slashing like a true maddened dwarf. By the time we caught up to him and cleared the few creatures in our way everything around him was dead, including himself.~
= ~His body was incinerated by his own electricity. Helga couldn't even raise him.~
END 
++ ~Impressive as his feat was, I am sorry for your loss.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 3.9
++ ~I have a feeling you are exaggerating some of the details, but it seems like he fell a true warrior.~  + 3.10
++ ~Okay, but how did he *really* die?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 3.11

CHAIN X3KalJ 3.9
~Don't be. He taught me a lot, and made me all the more want to fight to protect others rather than just a crazy person like he did, 'cause I ain't doing that to an army of ogres.~
= ~But I will miss the guy. He'll always be a legend to me.~
EXIT 

CHAIN X3KalJ 3.11 
~Pfft, the way I told you. There is no more fitting way to say it. A warrior deserves a death of legend, after all.~
EXIT 

CHAIN X3KalJ 3.10 
~Heh, every good tale has it. But Stormaxe's fall was told exactly as it should be: making him a worthy legend to remember.~
EXIT 

// Love Talk #4

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",8)~ THEN X3KalJ LoveTalk4 
~I've got a question for you, <CHARNAME>, something I am curious about.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
+~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Sure, I have time for a question.~ + 4.1A 
+~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~+ ~Sure, I have time for a question.~ + 4.1B 
++ ~Just one thing?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 4.10 
++ ~This isn't a good time.~ + 4.X 

CHAIN X3KalJ 4.1A 
~Was this chase of Imoen all about her, or just this Irenicus fellow?~
END 
++ ~It was mostly about saving Imoen. I wish we were quicker.~ + 4.2 
++ ~I believed Imoen would be fine. This was about Irenicus.~ + 4.3 
++ ~No difference. They are one and the same goal.~ + 4.4

CHAIN X3KalJ 4.10
~For now, I might come up with a second. But just the one for now.~
END 
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ EXTERN X3KalJ 4.1A 
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ EXTERN X3KalJ 4.1B


CHAIN X3KalJ 4.1B
~Is this chase for Imoen all about her, or more about this Irenicus fellow?~
END  
++ ~It was mostly about saving Imoen. I wish we were quicker.~ + 4.2 
++ ~I believed Imoen would be fine. This was about Irenicus.~ + 4.3 
++ ~No difference. They are one and the same goal.~ + 4.4

CHAIN X3KalJ 4.4 
~That seems a way to opt out of answering precisely, but I'll take it. You committed to this Imoen? I mean, to helping her and all?~
END 
++ ~She's my childhood friend. I'd never abandon her.~ + 4.5
++ ~She's useful, and I owe her for what she's done for me.~ + 4.5 
++ ~Not really, no. Just nothing better to do.~ + 4.6

CHAIN X3KalJ 4.3
~So you're not very committed to Imoen then, eh?~
END 
++ ~I believe she's strong enough to make it through this on her own.~ + 4.8
++ ~I'm interested in what Irenicus might be offering. That's the only reason I'm searching for her.~ + 4.9
++ ~Not really, no. Just nothing better to do.~ + 4.6

CHAIN X3KalJ 4.2 
~So you're quite committed to Imoen, then, eh?~
END 
++ ~She's my childhood friend. I'd never abandon her.~ + 4.5
++ ~She's useful, and I owe her for what she's done for me.~ + 4.5 
++ ~Not really, no. Just nothing better to do.~ + 4.6

CHAIN X3KalJ 4.X 
~Pfft, you should make time for this. But all right, as you wish.~
EXIT 

CHAIN X3KalJ 4.5 
~Heh. I guess it's hard to abandon people that are like family, even if you don't like them. I guess I can't fault you for it.~
EXTERN X3KalJ 4.7

CHAIN X3KalJ 4.7
~Only the gods know though if the price will be worth it.~
EXIT 

CHAIN X3KalJ 4.6
~Wasn't expecting that answer. I guess that could be one reason, sating the old boredom.~
EXTERN X3KalJ 4.7

CHAIN X3KalJ 4.9
~I don't know. Doesn't seem to be smart to chase down a man like that, but sure sounds fun.~
EXTERN X3KalJ 4.7

CHAIN X3KalJ 4.8
~Well if it's just a prison as I understand, you aren't really meant to die in that place. Guess there's no rush, eh?~
EXTERN X3KalJ 4.7

//LoveTalk #5

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",10)~ THEN X3KalJ LoveTalk5 
~You ever lost anyone traveling, <CHARNAME>? I told you about Gast and Stormaxe. Wondering if you ever went through the same.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
+~Global("X3KalPartyBG1","GLOBAL",1)~+ ~Recently? Khalid and Dynaheir.~ + 5.1 
+~!Global("X3KalPartyBG1","GLOBAL",1)~+ ~Recently? Khalid and Dynaheir.~ + 5.2 
++ ~Not anyone worth remembering.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 5.3 
++ ~A few people. It is part of the trade, the risk of death.~ + 5.4
++ ~I'd rather not talk about this.~ + 5.X

CHAIN X3KalJ 5.X 
~I understand, mate. You can have your privacy.~
EXIT 

CHAIN X3KAlJ 5.1 
~Huh, I think I remember them. They fall in battle?~
END 
++ ~They were tortured and killed by Irenicus.~ + 5.5
++ ~No, but they still died bravely.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.6
++ ~I'd rather not talk about this.~ + 5.X 

CHAIN X3KalJ 5.2 
~I'm not familiar with them. Did they fall in battle?~
END 
++ ~They were tortured and killed by Irenicus.~ + 5.5
++ ~No, but they still died bravely.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.6 
++ ~I'd rather not talk about this.~ + 5.X 

CHAIN X3KalJ 5.3 
~Bit...unexpected that. I've never traveled with someone that I disliked so much I didn't care about them. Hard to, when you fight side by side.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Vienxay's had a few close calls and I haven't cheered yet.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~The next time your life is in danger and is in my hands, I will remember this moment.~ 
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.4
~You aren't wrong about that. It's a great legacy you forge if you live...a short life if you don't.~
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.5
~Damn. You really owe that man a few things then. I'm sorry about what befell them.~
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.6
~The best way to go out to the next great adventure, with courage and a grin.~
EXTERN X3KalJ 5.7

CHAIN X3KalJ 5.7
~How do you get past the grieving? I try my best not to show it and all...but I don't know. Kind of hard not to think of them a lot, you know?~
END 
++ ~I don't. Loss doesn't ever go away.~  + 5.8
++ ~We have to keep on living. We don't have time to grieve.~  + 5.9
++ ~I don't know the answer to that question, Kale.~ + 5.10
++ ~This isn't like you, don't be so brooding.~ + 5.11

CHAIN X3KalJ 5.8
~Really? Not even after years? Never gets easier?~
END 
++ ~Never.~ + 5.12
++ ~In time, it will.  But the memories will always be there, and that's not a bad thing.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.13 
++ ~I don't know, Kale. Everyone is different.~ + 5.10

CHAIN X3KalJ 5.9
~When do you grieve, then? When do you take time for the fallen?~
END 
++ ~Never if you can help it.~ + 5.11
++ ~When you can find the time. But even then, the memories will always be there, and that's not a bad thing.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.13 
++ ~I don't know Kale. Everyone is different.~ + 5.10

CHAIN X3KalJ 5.10 
~I guess you are asking the same questions I am, mate.~
EXTERN X3KalJ 5.12 

CHAIN X3KalJ 5.11 
~Yeah, I know. But even I'm allowed to reflect once in a while, ain't I?~
EXTERN X3KalJ 5.14 

CHAIN X3KalJ 5.12 
~Never eh, because it makes you weak? That's too cold for me.~
EXTERN X3KalJ 5.14 

CHAIN X3KalJ 5.13 
~The memories, eh? Yeah...there were definitely some sweet memories.~
EXTERN X3KalJ 5.14 

CHAIN X3KalJ 5.14 
~I don't want you to think I'm soft or anything. I'm not sure why I'm opening up this much with you.~
END 
++ ~I like seeing this from you. You aren't usually this serious.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 5.15 
++ ~It's sweet. You can be a softie.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 5.16
++ ~I'm not sure either. Your questions are peculiar.~ + 5.17
++ ~I'd prefer you didn't, really. You're too intrusive.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + 5.18

CHAIN X3KalJ 5.15 
~Heh. With all the fighting and near-death experience, I prefer loosening up. But with you, I don't mind it so much.~
EXTERN X3KalJ 5.19

CHAIN X3KalJ 5.16
~What? Don't you go around saying that. Kale a softie. That will ruin my entire reputation.~
EXTERN X3KalJ 5.19

CHAIN X3KalJ 5.17
~I'm no weirdo, you know. I'm just curious...and honestly? It does bother me sometimes. Don't go around sharing that, though, I got to seem tough.~
EXTERN X3KalJ 5.19

CHAIN X3KalJ 5.18
~...Eh. I'll just not bother you with that stuff anymore, eh?~
EXIT 

CHAIN X3KalJ 5.19
~But I suppose we should focus on what needs to be done. Don't want to let anyone start to see me tear up and all.~
EXIT 

// Friendship Talk #6 - Rest

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",12)~ THEN X3KalJ LoveTalk6 
~You know, if we're settling down for a bit, want to share a smoke? I've got a bit of Guaji still left. Good stuff.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Sure, hit me up.~ + 6.1
++ ~No thanks.~ + 6.2 
++ ~I'm going straight to sleep, thank you.~ + 6.X

CHAIN X3KalJ 6.X 
~Rest well, mate. I'll see you when you get up.~
EXIT 

CHAIN X3KalJ 6.1 
~Here. Good stuff, isn't it?~
END 
++ ~It is. What exactly is Guaji?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.3
++ ~Eh, it's okay.~ + 6.4
++ ~Blegh. I'm never doing that again.~ + 6.2 

CHAIN X3KalJ 6.2 
~Suit yourself, mate.~
= ~Don't tell me you never had a smoke before though, did you? They ain't have anything like this back where you are from?~
END 
++ ~I was from Candlekeep, remember?~ + 6.4 
++ ~Just once, and I just wasn't into it.~ + 6.5 
++ ~Was this popular in Gullykin?~ + 6.6

CHAIN X3KalJ 6.3 
~It's just a leaf that grows around Gullykin. Good for smoking. Don't do too much of it though. Seen it make some folks a bit hyper.~
EXTERN X3KalJ 6.6

CHAIN X3KalJ 6.4 
~Just okay? My friend, you need to work on your taste, ha.~
EXTERN X3KalJ 6.6

CHAIN X3KalJ 6.5
~Damn. It's official: Candlekeep is the most boring place in the realms.~
EXTERN X3KalJ 6.6

CHAIN X3KalJ 6.6
~A lot of folks would grow one of these around or outside of their burrow. I never understood the secret of getting them just ripe, but my brother Sam always grew the best ones.~ 
= ~Probably the only thing he did that didn't land him in trouble.~
END 
++ ~You don't sound very happy about your brother.~ + 6.7
++ ~Nothing wrong with a bit of trouble. Makes life more exciting.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.8
++ ~You kept him straightened out, I imagine.~ + 6.9

CHAIN X3KalJ 6.7
~Sam? Nah, we're all fine. As far as I know, he hasn't gotten in any further trouble. But I'm not near Baldur's Gate anymore to really know.~
= ~The only one who will land us in any sort of concerning trouble is yourself, you know.~
END 
++ ~Not if I can help it.~ + 6.10 
++ ~And? You don't seem the type to complain.~ + 6.11 
++ ~You know you enjoy it.~ + 6.12
++ ~You know what you signed up for when you tagged along.~ + 6.13

CHAIN X3KalJ 6.8
~Heh, is that why you always get us into all of this thrill and danger?~
END 
++ ~Not if I can help it.~ + 6.10 
++ ~And? You don't seem the type to complain.~ + 6.11 
++ ~You know you enjoy it.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.12
++ ~You know what you signed up for when you tagged along.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 6.13

CHAIN X3KalJ 6.9
~Pfft, I'd try. But Sam is his own hin. I love my family, but sometimes he's a bit much. Wish he would just take care of mother instead of left Gullykin.~
= ~Still, the only one who is going to cause trouble for me now is yourself, you know.~
END 
++ ~Not if I can help it.~ + 6.10 
++ ~And? You don't seem the type to complain.~ + 6.11 
++ ~You know you enjoy it.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 6.12
++ ~You know what you signed up for when you tagged along.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 6.13

CHAIN X3KalJ 6.10
~If you wanted to help it mate, you wouldn't be in this business. I like you 'cause you're reckless enough to do this all anyway, rather than ask someone to help you like most of the world does.~
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.11
~Me, complain? Not when I find our leader so likable.~
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.12
~Heh, there are other things about you I enjoy too.~
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.13 
~Trouble and trepidation? Curiosity gets a halfling into all sorts of things, doesn't it?~
EXTERN X3KalJ 6.14

CHAIN X3KalJ 6.14 
~Did you know you got nice cheeks? Both cheeks really.~
END 
++ ~Are you talking about my face?~ + 6.15
++ ~Are you talking about my hindquarters?~ + 6.16
++ ~Never say that again.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 6.XX 
++ ~I think that's enough talking.~ + 6.XX 

CHAIN X3KalJ 6.XX 
~Aww, come on. I didn't mean it...nah, I'm lying. I did, heh. Sleep well then!~
EXIT 

CHAIN X3KalJ 6.15 
~Obviously. What, you think I'm talking about some other cheeks...because I probably was, heh.~
EXTERN X3KalJ 6.17

CHAIN X3KalJ 6.17
~I'm going to get some sleep before I say something worse then that. Have a good rest, mate.~
EXIT 
 
 CHAIN X3KalJ 6.16 
 ~Damn, saw right to what I was talking about, I mean...your face. Clearly. Pfft, why does everyone think Kale is like that?~
 EXTERN X3KalJ 6.17

// Love Talk #7

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",14)~ THEN X3KalJ LoveTalk7
~Soooo...~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Uh, so what?~ + 7.1 
++ ~Did you need something, Kale?~ + 7.1
++ ~Sooo not now. This is a bad time.~ + 7.X 

CHAIN X3KalJ 7.X 
~If you say so. Later then, eh?~
EXIT 

CHAIN X3KalJ 7.1 
~Well, you are popular, at least in Baldur's Gate. I figured you had a few fans, a few intimate ones, so to speak.~
END 
++ ~Isn't that a little personal?~ + 7.2 
++ ~Many, actually. Jealous?~ + 7.3 
++ ~I've not been that close with anyone actually.~ + 7.4 
++ ~I'm not going to answer this.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 7.2

CHAIN X3KalJ 7.2 
~Everyone has spouses, suitors, dalliances. Nothing personal about it if you ask me.~
EXTERN X3KalJ 7.12 

CHAIN X3KalJ 7.12
~I've had my own experiences. I've learned keeping it short is better for everyone. And before you make a height joke, that's about the length of time together.~
END 
++ ~You don't believe in lasting love?~ + 7.6
++ ~You are an adventurer. That does make sense.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.7
++ ~Well, you are short.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.8

CHAIN X3KalJ 7.3
~Pfft. Jealous. Of whoever they may be, maybe. You? Well I've had my own "experiences", shall we say. Let me tell you, keep it short and it's better for everyone.~
END 
++ ~You don't believe in lasting love?~ + 7.6
++ ~You are an adventurer. That does make sense.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.7
++ ~Well, you are short.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.8


CHAIN X3KalJ 7.4 
~Really? Damn. You are missing out, <CHARNAME>.~
END 
IF ~Gender(Player1,FEMALE)~ + 7.5F
IF ~!Gender(Player1,FEMALE)~ + 7.5M

CHAIN X3KalJ 7.5F
~You are a beautiful <PRO_RACE>. And you've had no experiences? Have you spent that little bit of time around people?~
END 
++ ~I'm sure I've said this before, but I came from Candlekeep. A very isolated place.~ + 7.9
++ ~There just hasn't been anyone I found interesting for that kind of thing.~ + 7.10
++ ~I'm an adventurer. It's not easy to find time for that.~ + 7.11
++ ~This is *really* personal, Kale, don't you think?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.2

CHAIN X3KalJ 7.5M
~You, are a handsome <PRO_RACE>. And you've had zero experience? No time around in inns at all?~
END  
++ ~I'm sure I've said this before, but I came from Candlekeep. A very isolated place.~ + 7.9
++ ~There just hasn't been anyone I found interesting for that kind of thing.~ + 7.10
++ ~I'm an adventurer. It's not easy to find time for that.~ + 7.11
++ ~This is *really* personal, Kale, don't you think?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 7.2



CHAIN X3KalJ 7.6
~Nope. Tried it, well didn't try it, but was asked about it, decided "eh", and went my own way.~
EXTERN X3KalJ 7.7

CHAIN X3KalJ 7.7
~Now between adventurers, such as yourself and myself...I'd be more open to things, if you get what I am saying.~
END 
++ ~Is that an invitation?~ + 7.13
++ ~You are attractive, I'll admit.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 7.14
+~!Gender(Player1,FEMALE)~+ ~I'm not interested in men, Kale.~ + 7.15
++ ~I'm going to stop you right there. No.~ + 7.16

CHAIN X3KalJ 7.13
~Maaaaybe. You'll just have to see, eh?~
EXIT 

CHAIN X3KalJ 7.14 
~I bet I am. I can give a few people who gave me raving reviews but eh...I'll not.~
EXIT 

CHAIN X3KalJ 7.15
~Well, good to know that now, eh? Sorry for any uh, awkwardness I may have caused.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3KalJ 7.16
~Damn. I should have played my cards smoother. Ah well. Shot down again, alas!~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalAppChange","GLOBAL",-3)~
EXIT 

CHAIN X3KalJ 7.8
~Pfft. Very funny. Knew you'd go there.~
EXTERN X3KalJ 7.7

CHAIN X3KalJ 7.9
~I'm sure I've said this before as well, but Candlekeep: Most dull place in the realms.~
EXTERN X3KalJ 7.12

CHAIN X3KalJ 7.10 
~Well, not everyone can be as awe-striking as myself. A lot of adventurers are either gruff grumps or stoic and soldier-like. Or drunks. The drunks are the best.~
EXTERN X3KalJ 7.12 

CHAIN X3KalJ 7.11
~Not if you never give yourself a bit of reward for all of your work.~
EXTERN X3KalJ 7.12 

// Love Talk #8

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",16)~ THEN X3KalJ LoveTalk8
~Sooo. I've been trying to decide which one of us is luckier. I, who gets to travel with the attractive you, or you, who gets to travel with the dashing and attractive me.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Definitely you.~  + 8.2
++ ~I would say I am the fortunate one.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 8.3
++ ~Are you trying to flatter me?~ + 8.1 
++ ~Enough of that, Kale. We need to stay focused.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 8.X 

CHAIN X3KalJ 8.X 
~Damn, you are no fun sometimes. Dry, silent march it is.~
EXIT 

CHAIN X3KalJ 8.1 
~Depends. Is it working? I've got a few more all prepped up.~
END 
++ ~It might be. I'll have to hear more to decide.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.4
++ ~Definitely not.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 8.6
++ ~No need for that. You're quite the pleaser, aren't you?~ + 8.5

CHAIN X3KalJ 8.2 
~Damn. Well...maybe I am the lucky one. You who makes heads turn and people whisper your name due to your legend, whose conviction is unequal, and is quite the pleasure to walk behind.~
END 
++ ~All right, that might be working too well.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.10
++ ~Behind? Not beside?~ + 8.9
++ ~That is a little too much.~ + 8.8

CHAIN X3KalJ 8.4 
~More eh? Well, you who makes heads turn and people exclaim at your courage, whose conviction is unequal and is a pleasure to walk behind.~
END 
++ ~All right, that might be working too well.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.10
++ ~Behind? Not beside?~ + 8.9
++ ~That is a little too much.~ + 8.8

CHAIN X3KalJ 8.5
~The best pleaser. I've had that compliment many a time.~
END 
++ ~That is intriguing. For what exactly?~ + 8.17
++ ~I am sure you have.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.7
++ ~That is a little too much information.~ + 8.8
 
CHAIN X3KalJ 8.6
~Heh. As you wish, mate.~
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.3 
~You know, that is probably the nicest compliment you've ever given me. I'm going to remember it.~
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.8 
~Pfft, I'll not add to that, then.~
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.9
~Both, really. You're a marvel from every angle, I'd say.~
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.10
~Now, 'tis just the truth. No need to blush at the obvious.~
EXTERN X3KalJ 8.7

CHAIN X3KalJ 8.7
~I just wanted to bring up your spirits. Not that you are necessarily down but...things sometimes can get tough. And as leader...you share the lion's share of that difficulty.~
END 
++ ~That's sweet of you Kale, checking up on me.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.11 
++ ~I'm doing just fine. Don't worry.~ + 8.11 
++ ~Things have been hard. I didn't think anyone would notice.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 8.12
++ ~I don't need that from you. I'm strong, not weak.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 8.13

CHAIN X3KalJ 8.11
~You just never know, eh? One night you're laughing together, the next...dead under ten bodies.~
= ~I guess I am trying to say...it'd be hard to lose you.~
END 
++ ~You're not going to lose me anytime soon, Kale.~ + 8.14 
++ ~I don't want to lose you either.~ + 8.15
++ ~That sounds like you are trying to say something else.~ + 8.16

CHAIN X3KalJ 8.14 
~Good. 'Cause if you go, I'm group leader and...I haven't yet gotten the full respect. So you stay leader a little longer, eh?~
EXIT 

CHAIN X3KalJ 8.15
~Me? Pfft. I'm a halfling, we are lucky. I'm not going anytime soon, have no frets. Just don't send us to jump across a chasm full of giant spiders and scorpions or something stupid.~
EXIT 

CHAIN X3KalJ 8.16
~Maybe I am. But I do mean it. We never know what will happen. Enjoy the good moments while they last, eh?~
EXIT 

CHAIN X3KalJ 8.12 
~Well, what can I say? I have a good eye.~
EXTERN X3KalJ 8.11 

CHAIN X3KalJ 8.13 
~I don't mean to imply otherwise. You've done things I can only marvel at.~
EXTERN X3KalJ 8.11 

CHAIN X3KalJ 8.17
~I am sure you can imagine the answer to that, mate. Take all the time you need.~
EXTERN X3KalJ 8.7

//  Love Talk #9

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",18)~ THEN X3KalJ LoveTalk9 
~Uh...some of the things I say to you, you know about your looks and skills, they don't come across offensive, do they?~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~What do you mean offensive?~ + 9.1 
++ ~I like it when you say that, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.2 
++ ~I wish you would stop, to be honest.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 9.3
++ ~Come on, enough of this. Let's keep moving.~ + 9.X 

CHAIN X3KalJ 9.X 
~Uh huh, right. Not important. I'm following behind you~
EXIT 

CHAIN X3KalJ 9.1
~Heh, I don't really know why I am asking this, mate.~
EXTERN X3KalJ 9.4

CHAIN X3KalJ 9.2 
~Good to know. I'll be less guarded about it, but that wasn't what I was trying to say.~
EXTERN X3KalJ 9.4

CHAIN X3KalJ 9.3 
~Right, I was worried I might have gone a bit far with it.~
EXTERN X3KalJ 9.4

CHAIN X3KalJ 9.4 
~I've just been wanting to impress you, you see. Not even sure why I'm nervous about this.~
END 
++ ~Maybe you should speak clearly and not dance around it.~ + 9.5 
++ ~I find it quite amusing.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.6 
++ ~Kale, nervous? Perish the thought.~ + 9.7
++ ~You're not very impressive so far.~ + 9.8

CHAIN X3KalJ 9.5
~Right, I can do that. Just breathe and...get it out, eh?~
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.6
~Well, at least you are having a bit of fun, even if its at my expense.~
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.7
~Yeah, yeah. I would love to make the thought perish, that's for sure.~
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.8
~I don't know if you mean now or from the past, but I'll still launch my shot.~
EXTERN X3KalJ 9.9

CHAIN X3KalJ 9.9
~I like you, <CHARNAME>. Really like you. You are an incredible <PRO_RACE>. At first I was a bit envious of you and your fame.~
= ~Then the more I traveled with you, the more I just purely admired it. There isn't anyone in the realms that is like you.~
END 
++ ~I really like you too, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 9.10 
++ ~That wasn't so hard, was it?~ + 9.11
++ ~Let me stop this before it goes further: I'm not interested.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 9.12 
++ ~I am amazing, aren't I?~ + 9.13

CHAIN X3KalJ 9.10
~Good, because I was about to do this and didn't want to look foolish.~
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,GNOME)Race(Player1,DWARF)~ EXTERN X3KalJ 9.14S 
IF ~!Race(Player1,HALFLING)!Race(Player1,GNOME)!Race(Player1,DWARF)~ EXTERN X3KalJ 9.14T

CHAIN X3KalJ 9.11
~Not as hard as this will be.~
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,GNOME)Race(Player1,DWARF)~ EXTERN X3KalJ 9.14S 
IF ~!Race(Player1,HALFLING)!Race(Player1,GNOME)!Race(Player1,DWARF)~ EXTERN X3KalJ 9.14T

CHAIN X3KalJ 9.12 
~Oh...well. Heh. I'm just going to...retreat way from you then. Excuse me.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3KalJ 9.13 
~Very. Amazing enough to deserve this.~
END 
IF ~OR(3)Race(Player1,HALFLING)Race(Player1,GNOME)Race(Player1,DWARF)~ EXTERN X3KalJ 9.14S 
IF ~!Race(Player1,HALFLING)!Race(Player1,GNOME)!Race(Player1,DWARF)~ EXTERN X3KalJ 9.14T

CHAIN X3KalJ 9.14S 
~(Kale leans forward, capturing your lips with his. You feel his arms tug you close, keeping you in his grasp, before he breaks apart and gazes at your eyes.)~
EXTERN X3KalJ 9.15

CHAIN X3KalJ 9.14T
~(KAle leans forward, tip-toeing on his feet, before capturing your lips with his. You feel his arms tug you close, moving partially around you, before he breaks apart and gazes at your eyes.)~
EXTERN X3KalJ 9.15

CHAIN X3KalJ 9.15
~That wasn't too daring of me, was it?~
END 
++ ~Is there more of that coming along?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.16 
++ ~It was just right.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 9.17
++ ~I don't know.~ + 9.18
++ ~I wasn't comfortable doing that at all.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 9.12

CHAIN X3KalJ 9.16
~Well, I've got plenty more where that came from.~
EXTERN X3KalJ 9.19

CHAIN X3KalJ 9.17
~Good. I'm glad you liked it as much as I did, mate.~
EXTERN X3KalJ 9.19

CHAIN X3KalJ 9.18
~Well, maybe with a few more sessions like that, and I'll have you decided, eh?~
EXTERN X3KalJ 9.19

CHAIN X3KalJ 9.19
~Best we get going before we get some jealous onlookers, eh?~
EXIT 

//Love Talk #10

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",20)~ THEN X3KalJ LoveTalk10 
~Soooo.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Soooo.~ + 10.1
++ ~Something on your mind, I take it?~ + 10.2 
++ ~Do you always have to lead with that?~ + 10.3

CHAIN X3KalJ 10.1
~Heh. Starting to pattern after me already? I knew I was charmingly infectious.~
END 
IF ~OR(3)Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Conflict
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.2 
~You betcha.~
END 
IF ~OR(3)Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Conflict
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.3
~Ha. You know you like it when I do.~
END 
IF ~OR(3)Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Conflict
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3EmiRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.Conflict 
~Before I get to that. I got a question, about you and our companions.~
END 
IF ~Global("X3EmiRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Emily
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Recorder
IF ~!Global("X3EmiRomanceActive","GLOBAL",1)!Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Vienxay

CHAIN X3KalJ 10.Emily 
~Look, Emily is a nice gal and all, but she's the old fashioned type. If she hasn't noticed already, she's probably being nice and giving you time to choose.~
= ~I don't dislike her, and while I'm not the type to be committal and mind others spending time with others, she does, and I don't want to be victim to her hurt glances.~
END 
++ ~Why can't I have both of you?~ + 10.E1 
++ ~If you are asking me to choose between you two, then I chose Emily. I am sorry.~ + 10.X
++ ~Don't worry, Emily is nothing but a friend.~ + 10.E3 
++ ~If that's how it has to be, then it is you, Kale.~ + 10.E3

CHAIN X3KalJ 10.E1 
~Do you know Emily at all, mate? She is not a sharer. Very classic "One true love" belief just emanates from her. A bit naive, really.~
= ~And I'm sorry, but as I said, the sad hurt glances she gives are irksome. So it's going to be one or the other.~
END 
++ ~If you are asking me to choose between you two, then I chose Emily. I am sorry.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 10.X
++ ~Don't worry, Emily is nothing but a friend.~ + 10.E3 
++ ~If that's how it has to be, then it is you, Kale.~ + 10.E3

CHAIN X3KalJ 10.X
~I...see. Well. I wish you luck with her, mate.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X3KalJ 10.E3 
~Well, I'm glad we got that over with then.~
DO ~SetGlobal("X3EmiRomanceActive","GLOBAL",3)~
END 
IF ~Global("X3RebRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Recorder
IF ~!Global("X3RebRomanceActive","GLOBAL",1)Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Vienxay
IF ~!Global("X3RebRomanceActive","GLOBAL",1)!Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.Recorder 
~I like Recorder. But uh, I don't think she likes the idea of "sharing", <CHARNAME>.~
= ~I mean if you were trying to seduce her to get the best entries in the journal she is always writing in for future texts, great. But...if you're seriously entertaining something, I think you should end it with her now if you want to stay with me.~
END 
++ ~Why can't I have both of you?~ + 10.R1 
++ ~If you are asking me to choose between you two, then I chose Recorder. I am sorry.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~  + 10.X 
++ ~Don't worry, Recorder is nothing but a friend.~ + 10.R3 
++ ~If that's how it has to be, then it is you, Kale.~ + 10.R3

CHAIN X3KalJ 10.R1 
~You kidding? You think Recorder will be okay with that? Me, maybe, that'd be a dream! But definitely not her.~
END 
++ ~If you are asking me to choose between you two, then I chose Recorder. I am sorry.~ + 10.X 
++ ~Don't worry, Recorder is nothing but a friend.~ + 10.R3 
++ ~If that's how it has to be, then it is you, Kale.~ + 10.R3

CHAIN X3KalJ 10.R3 
~Good. Glad we straightened that out.~
END 
IF ~Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.Vienxay
IF ~!Global("X3VieRomanceActive","GLOBAL",1)~ EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.Vienxay 
~I've been seeing you spend time with Vienxay. Normally I would be okay with that...but it's also Vienxay. Vienxay.~
= ~She thinks this is all one competition. Just declare me the winner already and end this craziness with her. She's not worth it, I assure you.~
END 
++ ~Why can't I have both of you?~ + 10.V1 
++ ~If you are asking me to choose between you two, then I chose Vienxay. I am sorry.~ + 10.X 
++ ~Don't worry, Vienxay is nothing but a friend.~ + 10.V3 
++ ~If that's how it has to be, then it is you, Kale.~ + 10.V3

CHAIN X3KalJ 10.V1 
~Because I don't like Vienxay that much, mate. Sorry. And she thinks this is all some competition for her to one up me at. Pfft. As if.~
END 
++ ~If you are asking me to choose between you two, then I chose Vienxay. I am sorry.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 10.X 
++ ~Don't worry, Vienxay is nothing but a friend.~ + 10.V3 
++ ~If that's how it has to be, then it is you, Kale.~ + 10.V3

CHAIN X3KalJ 10.V3 
~Great choice, mate. That elf would have been an awful time.~
EXTERN X3KalJ 10.4

CHAIN X3KalJ 10.4 
~Anyway, I just wanted to check on you. You are doing all right?~
END 
++ ~I could use a kiss to cheer me up.~ + 10.5
++ ~Just fine Kale. Don't worry.~ + 10.6 
++ ~Why do you ask?~ + 10.6
++ ~Things have been difficult lately, to be honest.~ + 10.7

CHAIN X3KalJ 10.5
~One coming right up.~
= ~Mmm. Like magic, I bet, eh?~
EXTERN X3KalJ 10.6

CHAIN X3KalJ 10.6
~You've gotten stronger I'll admit since we started traveling but...I'm not always able to keep as close to you in our confrontations as I like. That's where I'd prefer to be, you know.~
END 
++ ~I know, Kale. But I know you will try.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 10.8 
++ ~I can protect myself, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 10.9
++ ~Sometimes things get chaotic.~ + 10.10

CHAIN X3KalJ 10.8
~Always. As long as our time together lasts.~
EXTERN X3KalJ 10.11

CHAIN X3KalJ 10.9
~I know, I know. Doesn't mean I won't eye you up, heh.~
EXTERN X3KalJ 10.11

CHAIN X3KalJ 10.10
~Yeah, sometimes. And I don't like it when that happens.~
EXTERN X3KalJ 10.11

CHAIN X3KalJ 10.7
~I was worried about that. You've got this though, you know that?~
EXTERN X3KalJ 10.6

CHAIN X3KalJ 10.11 
~Let's talk some more later. Until then, let's keep close.~
EXIT 
// Other NPC Conflicts here 

// Romance conflict

CHAIN IF ~Global("X3KalRomanceConflict","GLOBAL",1)~ THEN X3KalJ X3VieRomanceConflict
~All right, I gotta know, <CHARNAME>, though I hate to bring it up on you...~
== X3KalJ ~There isn't...anyone else, is there? I'm probably just being crazy, right?~
END 
++ ~There isn't anyone else, Kale, fret not.~ + RC.1
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + ~Then I won't waste your time. I have strong feelings for Aerie.~ + RC.2
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + ~Then I'm going to admit something...odd, but I care for Jaheria as more than just my guardian.~ + RC.2
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + ~I will tell you the truth then. I care very much for Anomen.~ + RC.2
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + ~Viconia has ensnared my heart.~ + RC.Viconia
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + ~I have grown close with Rasaad. I think he is good for me.~ + RC.2
+ ~Global("HexxatRomanceActive","GLOBAL",1)~ + ~It's odd, but I feel close with Hexxat.~ + RC.Hexxat
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + ~It's a little wild, but I'm beginning to see myself with Neera.~ + RC.2
+ ~Global("C0SireneRomanceActive","GLOBAL",1)~ + ~I'm beginning to fall for Sirene. I hope you understand.~ + RC.2
+ ~Global("L3PetsyRomanceActive","GLOBAL",1)~ + ~I find Petsy charming. I think she is right for me.~ + RC.Petsy
+ ~Global("YvetteRomanceActive","GLOBAL",1)~ + ~It was all strange at first, but I think I am in love with Yvette.~ + RC.2
+ ~Global("DornRomanceActive","GLOBAL",1)~ + ~I find myself deeply attracted to Dorn.~ + RC.2
++ ~After thinking about it, I'd rather be friends with you, Kale.~ + RC.2


CHAIN X3KalJ RC.2
~Well...I guess that answers what I want to know.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.Hexxat
~The...vampire? Well, you do you, mate.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.Petsy
~Petsy eh? She's a nice gal, just...treat her well, eh?~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.Viconia
~The drow? I guess I didn't know you like I thought I did. *Sigh*.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)
SetGlobal("X3KalRomanceConflict","GLOBAL",2)~ EXIT

CHAIN X3KalJ RC.1
~Good. We can talk more about this later.~
DO ~SetGlobal("X3KalAppChange","GLOBAL",9)SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)
SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("HexxatRomanceActive","GLOBAL",3)
SetGlobal("YvetteRomanceActive","GLOBAL",3)
SetGlobal("L3PetsyRomanceActive","GLOBAL",3)
SetGlobal("X3VieRomanceConflict","GLOBAL",2)~ 
EXIT


//Love Talk #11
CHAIN IF ~Global("X3KalLoveTalk","LOCALS",22)~ THEN X3KalJ LoveTalk11 
~I'm not sure how to ask you this mate, been kind of...thinking about it for hours about what I would say right now.~ [X3KLS]
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",2)IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~Just say it, Kale.~ + 11.1
++ ~What is it?~ + 11.1
++ ~Can it wait? I'm a bit tired.~ + 11.2

CHAIN X3KalJ 11.2
~If I don't say it now, I'll probably not say it ever.~
EXTERN X3KalJ 11.1

CHAIN X3KalJ 11.1
~I was thinking we could, share a drink, then a few tales, and then share a nice bedroll. A good few events before rest, eh?~
END 
++ ~That sounds enjoyable. I'm game.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 11.8 
++ ~Let's start with the drink. And then we'll see where it goes.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 11.8 
++ ~I'd want it to be the perfect time, Kale. This isn't it.~ + 11.12
++ ~I just want to sleep. I'm sorry.~ + 11.X 

CHAIN X3KalJ 11.X 
~Huh. I understand, mate. Have a good rest.~
DO ~RestParty()~
EXIT 

CHAIN X3KalJ 11.12 
~Right. Still, want to have that drink?~
END 
++ ~Sure, I'll have a drink.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.3
++ ~I better get to rest, actually.~ + 11.X 

CHAIN X3KalJ 11.3 
~Great. This is the good stuff, from Luiren. Saved it from the last inn and all.~
= ~I just want to say...this has been nice. No matter how this ends, I'll never forget it.~
END 
++ ~I'll never forget our time together either.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.4 
++ ~I don't know about great, but you've certainly made it bearable.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.4 
++ ~Really? This hasn't been the most pleasant journey.~ + 11.5

CHAIN X3KalJ 11.4
~Good. Now let's relax and drink a bit for rest. And I have just the tale to share, too...~
DO ~RestParty()~
EXIT 

CHAIN X3KalJ 11.5
~Well, I'll make it better. Let's drink and I'll share a few tales until you're ready to hit your roll. Taking care of you is what I do best.~
DO ~RestParty()~
EXIT 

CHAIN X3KalJ 11.8 
~Great. Drink up, mate. This is some good stuff imported from Luiren. Still saved a bit from that inn.~
= ~I just want to say...no matter how this ends, I'll never forget it. Never forget you. You are far too awe-striking for that.~
END 
++ ~I don't think I can wait. Take off those clothes.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 11.6
++ ~To our adventures, then.~ + 11.7
++ ~I'll never forget you either.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 11.7

CHAIN X3KalJ 11.6
~Whoa, someone is eager...well, to the hells with it, then. Let's get settled right on to good ol' fun.~
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 

CHAIN X3KalJ 11.7
~To adventure. To Bonds...and to desire.~
DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~
EXIT 

// Only happens if Kale was slept with at some point.

CHAIN IF ~Global("X3Slept","LOCALS",1)~ THEN X3KalJ LoveTalk12 
~Well. Heh. That was something, wasn't it?~
DO ~SetGlobal("X3Slept","LOCALS",2)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~It was. I enjoyed myself plenty.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 12.1 
++ ~Yeah. Something.~ + 12.1
++ ~It was...disappointing, really.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 12.2
++ ~We should get moving.~ + 12.3

CHAIN X3KalJ 12.1 
~Good, because the future will hold more of that. And I never disappoint.~
EXTERN X3KalJ 12.3

CHAIN X3KalJ 12.2 
~Damn it. Perhaps I was a bit...selfish in my needs. I'll make sure I don't disappoint again, mate.~
EXTERN X3KalJ 12.3

CHAIN X3KalJ 12.4
~Yeah. I guess we should.~
EXTERN X3KalJ 12.3

CHAIN X3KalJ 12.3 
~Before we set off to wherever you point us...I've never been closer with you than I have been with anyone else.~
= ~Even with Gast I had a bit of a shield with but...for the first time, I want to try opening up, you know, and being true.~
= ~I guess I am saying that I love you, <CHARNAME>. You don't have to say it back. But...I thought you should know.~
END
++ ~I love you too, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",3)~ + 12.8
++ ~I can't say the same yet.~ + 12.5
++ ~Really? You fall really quickly.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 12.6 

CHAIN X3KalJ 12.6
~I can't help it...I understand if you aren't there yet yourself but...you're incredible. And I just want you to know that.~
EXTERN X3KalJ 12.7

CHAIN X3KalJ 12.5
~No shame in that. My charms can take some time to take effect. But in seriousness mate? Don't worry about it. You've a lot of bigger things to think about.~
EXTERN X3KalJ 12.7

CHAIN X3KalJ 12.8
~That makes my heart explode. Never been happier hearing those words than now.~
EXTERN X3KalJ 12.7

CHAIN X3KalJ 12.7
~The world awaits for us mate. Let's march with a bit of storm in our step.~
EXIT 

//Slayer Talk 

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",24)~ THEN X3KalJ LoveTalk13 
~I swore I would always protect you. But I have no idea how the hell I protect you from yourself...from whatever monster you're able to turn into now.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~It won't happen again Kale. Trust me.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 13.1 
++ ~You can't. This I have to deal with alone.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 13.2 
++ ~That creature, that power could be useful for me.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 13.3 
++ ~Forget about it. Let's move on.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-3)~ + 13.4

CHAIN X3KalJ 13.1
~I'll...try, mate. But damn it isn't easy. You know how I feel, if you were to lose it and I was forced to defend myself...I'd never forgive myself.~
EXTERN X3KalJ 13.5

CHAIN X3KalJ 13.2 
~Damn it all if I'm juts going to let you deal with it alone. If there is a will and a way I will make sure you don't end up killing yourself.~
EXTERN X3KalJ 13.5

CHAIN X3KalJ 13.3
~Are you mad? Using it again? I won't deny that if you could control it, it could be useful, then. But that did not look safe at all.~
EXTERN X3KalJ 13.5

CHAIN X3KalJ 13.5
~Promise me you'll be careful mate. I'm not losing another companion. I've lost Stormaxe. I've lost Gast. I'm not losing you too.~
END 
++ ~I'm not planning on going anywhere, Kale. Trust me.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 13.6
++ ~I promise.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~ + 13.6
++ ~I can't promise that.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 13.7
++ ~Just forget about it, Kale. It's not a big deal.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 13.4

CHAIN X3KalJ 13.6
~I'll try to trust you on this mate. I guess that's...all I can ask of you, really.~
EXTERN X3KalJ 13.8

CHAIN X3KalJ 13.7
~You can't promise? Pfft. I don't like that answer. But maybe you're being realistic, and I'll give you credit for being honest.~
EXTERN X3KalJ 13.8

CHAIN X3KalJ 13.8
~Let's just keep...moving before my head explodes from thinking about it.~
EXIT 

CHAIN X3KalJ 13.4
~Forget about it? I am not just going to put it in the back of my head, mate. You could have died. We could have died. You-~
= ~Nah, have it your way. I'll just drop it.~
EXIT 

// Drow Transform Talk 

CHAIN IF ~Global("X3KalLoveDrow","LOCALS",1)~ THEN X3KalJ LoveTalk14 
~Well...this is what its like being tall, eh? Damn all of my good charms are gone.~
DO ~IncrementGlobal("X3KalLoveDrow","LOCALS",1)~
END 
++ ~It's only temporary. You'll be back to being yourself soon enough.~ + 14.1 
++ ~Overall I think it's an improvement for you.~  + 14.2
++ ~Now is the time to start acting a drow. They certainly don't sound like that.~ + 14.3

CHAIN X3KalJ 14.1
~Temporary, huh? That's if the dragon was being honest. I suppose we could also have it suddenly dispel on us. Not liking that either.~
EXTERN X3KalJ 14.4

CHAIN X3KalJ 14.2
~Pfft. An improvement. I prefer useful legs, not legs with so much needless length it just functions as accessory.~
EXTERN X3KalJ 14.4

CHAIN X3KalJ 14.3 
~Right, in just a few minutes I'll get it all down for you. Simple as that.~
EXTERN X3KalJ 14.4

CHAIN X3KalJ 14.4
~Let's...just get this over with as soon as we can. I want my proper body back.~
EXIT 

// Love Talk #15

CHAIN IF ~Global("X3KalLoveTalk","LOCALS",26)~ THEN X3KalJ LoveTalk15
~You hanging in there mate? I'm glad we're out of that Underdark, but I'm a bit worried about you, you know after what happened with Irenicus.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~I am fine Kale. But soon, he won't be.~ + 15.1 
++ ~You worry too much, Kale.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 15.2 
++ ~Forget about me. The faster we get to Irenicus, the better.~ + 15.3 

CHAIN X3KalJ 15.3
~You got that, right.~
EXTERN X3KalJ 15.4

CHAIN X3KalJ 15.1 
~Heh, I like your spirit, mate. You got more of it than I do, that's for sure.~
EXTERN X3KalJ 15.4

CHAIN X3KalJ 15.2 
~Well, given you are missing a part of yourself, I don't think I'm worrying enough actually. I probably should be fretting as much as ma did over me when I was back in Gullykin.~
EXTERN X3KalJ 15.4

CHAIN X3KalJ 15.4
~(You feel Kale move closer, taking your hand in his.)~
= ~You'll tell me if it's otherwise, right? If something is blowing up inside, or you grow four sharp horns on your head suddenly?~
END 
++ ~I will.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 15.5 
++ ~Four sharp horns? Now you're really crazy.~ + 15.6 
++ ~Stop it. I said I will be fine. Believe me.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 15.7

CHAIN X3KalJ 15.5
~Good...it's just not...normal, you know? Then again I don't think very many moments of being with you have been normal. Kind of what has made it interesting, that's for sure.~
EXTERN X3KalJ 15.8

CHAIN X3KalJ 15.6
~Pfft, only a little. Still, if you can crack jokes, I guess you are just fine. I'll try to bother you less about it.~
EXTERN X3KalJ 15.8

CHAIN X3KalJ 15.7
~All right it's just...this isn't normal, you know? If it was I wouldn't look at every other moment. And not just to admire you, heh.~
= ~Just...tell me if you feel the slightest thing. I am your protector, even if it means my death.~
EXTERN X3KalJ 15.8

CHAIN X3KalJ 15.8
~Let's continue our pursuit, shall we?~
EXIT 


CHAIN IF ~Global("X3KalLoveTalk","LOCALS",28)~ THEN X3KalJ LoveTalk16 
~I don't know about you mate, but I could use a breather before we march on. Just a few hours to really get everything together...especially in my head. Damn I'm terrified.~ [X3KLS]
DO ~IncrementGlobal("X3KalLoveTalk","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",6)~
END 
++ ~There's nothing to be afraid of, Kale. We defeated Bodhi, we can defeat Irenicus too.~ + 16.1 
++ ~We'll settle down for a bit of rest. Then we're going in.~ + 16.2
++ ~You may be nervous, but we aren't stopping. We are closer than ever to getting to Irenicus.~  DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-2)~ + 16.3

CHAIN X3KalJ 16.1 
~I hope so, mate. I really bloody hope so. But if something happens, I don't want any regrets. I just want one night to act as if it is the last.~
END 
++ ~Then let's set up camp, find somewhere private, and live as if this as if there is no tomorrow.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4
++ ~It won't be, Kale. I promise.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.5
++ ~We aren't stopping. Irenicus is ahead and he will be mine.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 16.3

CHAIN X3KalJ 16.2 
~Thanks mate. It's just...if something bloody happens. I don't want any regrets. I just want one night to act as if it is the last.~
END 
++ ~Then let's set up camp, find somewhere private, and live as if this as if there is no tomorrow.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4 
++ ~It won't be, Kale. I promise.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.5
++ ~You've become more and more worried the longer we've traveled together. Yet here we are still. Strong.~  + 16.6

CHAIN X3KalJ 16.3 
~You seem determined and I won't argue. Aww, damn it all. I am ready! We die fighting or we prevail. Death is but another adventure, but I'm not going to let it win so easily either.~
EXIT 

CHAIN X3KalJ 16.4
~I'll have it no other way, mate.~
END
IF ~Global("X3Slept","LOCALS",0)~ THEN DO ~SetGlobal("X3Slept","LOCALS",1)RestParty()~ EXIT 
IF ~!Global("X3Slept","LOCALS",0)~ THEN DO ~RestParty()~ EXIT 


CHAIN X3KalJ 16.5
~I know. Still...~
= ~One last night. Together. It's all I desire.~
END 
++ ~Then I won't argue. Let's find some privacy.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4
++ ~I want to wait. To have something to push me forward.~ + 16.7

CHAIN X3KalJ 16.7
~Damn you are stubborn. But I can wait. Still, you're going to be right next to me. And when we wake, I'll be fighting to keep you next to me for a long while.~
EXIT 

CHAIN X3KalJ 16.6
~I know mate. Still, you have to admit, this is going to be tough, whatever lies ahead.~
= ~Just one last night. Together. Live it like it is all we have. That is what I want before the fates are rolled as they are.~
END 
++ ~Then I won't argue. Let's find some privacy.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + 16.4
++ ~We aren't stopping. Irenicus is ahead and he will be mine.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + 16.3


CHAIN X3KalJ DSR
~Oh. With what I last said...this makes this kind of awkward.~
DO ~SetGlobal("X3DSRomance","GLOBAL",1)~
= ~I said I wanted to be out of your shadow for a while, and now I'm right back in it. I don't know why, or what that means.~
= ~I don't want this to be a choking bind though either. Let's just let things go rather than give anything a label. If things reform naturally, they do. If they don't, they don't. Simpler that way, don't you agree?~
END 
++ ~I agree. Let's just let the pieces fall as they will.~ + DSR.7
++ ~If that's what you want, Kale.~ + DSR.7
++ ~Noncommittal as ever. Forget it.~ + DSR.8 

CHAIN X3KalJ DSR.7
~So now that awkwardness is out of the way, back to our adventures, eh? Just leave a bit of room for me to shine now and then, will ya?~
DO ~SetGlobal("X3KalInterest","LOCALS",1)IncrementGlobal("X3KalAppChange","GLOBAL",3)~ 
EXIT 

CHAIN X3KalJ DSR.8 
~All right, mate. I'll forget it. Better that way for us both.~
DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalAppChange","GLOBAL",-3)~
EXIT 


// Group Kiss from PID 
CHAIN X3KalJ Group.Kiss 
~Um, but what about the rest of the party?~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Aww. How cute.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Life's short. Go get it, Kale.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Every story needs a little bit of sugar. Don't be shy on our behalf.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Oh, just go brag about your love to the world. Like I care.~
== X3KalJ ~Heh, forget that. Come here.~
== X3KalJ ~Mmm. Damn, I am lucky to have you. Very, very lucky.~
EXIT 

APPEND X3KalJ

// Low Approval, Romanced 
IF ~Global("X3BreakUp","LOCALS",2)~ LoveBreakUp 
SAY ~Sooo. Things have been kind of sour lately. I know this road is hard and all but...I know when a relationship has hit its end.~
= ~That's whats going on with us right now. You and me? I think it's time that stops. I don't know what it is but...you've been treating me far worse, mate.~
= ~And that's...well I'm bloody worth something.~
++ ~Kale, please. Give me another chance.~ + LBreak.1
++ ~Maybe we shouldn't have ever done this.~ + LBreak.2 
++ ~You can't stand a bit of hardship? Boohoo.~ + LBreak.3 
END 

IF ~~ LBreak.1 
SAY ~'Fraid my mind has been made up for a while now. Just...didn't have the courage to speak 'til now.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4
END 

IF ~~ LBreak.2 
SAY ~Maybe. But I'll remember the good as much as the bad.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.3 
SAY ~That coldness, mate, is why this is over.~
IF ~~ DO ~SetGlobal("X3BreakUp","LOCALS",3)SetGlobal("X3KalRomanceActive","GLOBAL",3)~ + LBreak.4 
END 

IF ~~ LBreak.4 
SAY ~Question is, do you see me as too distracting to stay, or are you fine with it?~
++ ~I think you should go, Kale.~ + LBreak.5 
++ ~Go. Give me your equipment. I never want to see you again.~ + LBreak.6 
++ ~I'll be okay. Stay.~ + LBreak.7
END 

IF ~~ LBreak.5 
SAY ~Right. Well...no need to make this ceremonious or anything. I'll just pack up and go.~
IF ~~ DO ~LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.6
SAY ~Pfft. If that's how you want to end it. See ya.~
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ LBreak.7
SAY ~Good. I'm glad to stay and keep fighting for you, despite things, mate. 'Sides, can't let you have all the glory.~
IF ~~ EXIT 
END 

// Break Approval 

IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~Look mate, I hate to bring this up suddenly. Honestly, 'figured lately things were just some temporary mood storm. But it's not changed.~ 
= ~'Fraid I'm not interested in traveling with someone like you anymore, mate. Not sure you even care about that.~
++ ~What changed? Am I taking up all the glory from you?~ + Break.1 
++ ~And what would you have me do differently?~ + Break.2 
++ ~Look, I'm sorry with how things have been. It's just been temporary, as you said.~ + Break.8
END 

IF ~~ Break.1
SAY ~That ain't it mate, at least, it ain't the only reason.~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~Treat me decently? Listen to me for once in a while? Give me an ounce of some bloody respect?~ 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY ~I don't know if your lack of regard is temporary, mate. It's been a while.~
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY ~As things stand, I think it's best you and I split.~
++ ~Then go. Not as if you are useful anyway.~ + Break.4
++ ~Fine. Give me your equipment and go.~ + Break.5
++ ~Look, let's try this again. Give me another chance.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~Damn you, mate. Frankly, I hope something out there kills you.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~Right, taking away everything I have too? Damn you, mate. Have it if you must. I hope something bloody kills you out there.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~You're probably fooling me. But you know what? I'll see your chance through. Maybe there's worth in your words.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3KalApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@316)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~This was a waste of time. I bet you weren't even listening to me before. Just saying whatever you thought would soothe me.~
= ~Well guess what, mate? I'm out of here. Goodbye. I bloody hope we don't meet again.~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3KalApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY ~Yeah? You want something, I bet.~  [KaleCom1]
++ ~I have a question for you.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3KalApp","GLOBAL",44)~ THEN BEGIN High.PID2
SAY ~Well, heh, how's it going?~ [X3KWHIG] 
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something personal?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END  

IF ~~ main.PID 
SAY ~Yeah, yeah, ask away.~
++ ~I have something I want to ask.~ + Question.PID 
+~NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalGroup.PID 
+~!NumInPartyGT(2)~+ ~Can I ask something private?~ + PersonalAlone.PID 
++ ~Never mind.~ EXIT 
END  

IF ~~ Question.PID
SAY ~Go ahead, ask.~
+~Global("X3PIDCON1","LOCALS",0)~+ ~I'd like to hear about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your home village?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ ~Are you very faithful? Religious, I mean.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ ~I've never seen you without your cloak. Why is that?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ ~Let's talk about something else.~ + main.PID 
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~Something else you need?~ [X3KSYND]
+~Global("X3PIDCON1","LOCALS",0)~+ ~I'd like to hear about your family.~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Family
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your home village?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Gullykin
+~Global("X3PIDCON2","LOCALS",0)~+ ~Are you very faithful? Religious, I mean.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ ~I've never seen you without your cloak. Why is that?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Cloak
++ ~Let's talk about something else.~ + main.PID
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Family 
SAY ~My family, eh? Well, where to start...~
= ~I've got Ma and Sam. Ma was part of a caravan before she came to Gullykin. Once she got round with me, she made roots and just never bothered getting up.~
= ~Damn good with farm tools and growing things though, so the locals have no complaints.~
++ ~She never adventured?~ + PFamily.1 
++ ~Compared to your life, your mother's is surprisingly simple.~ + PFamily.1 
++ ~Tell me about your brother, Sam.~ + PFamily.2
++ ~Let's talk about something else.~ + main.PID 
END

IF ~~ PFamily.1 
SAY ~Most of us don't venture out of the burrow mate. In fact, being stuck in Gullykin all the time made me want to wander myself, so I don't have any complaints about how it all turned out.~
IF ~~ + PFamily.2
END 

IF ~~ PFamily.2 
SAY ~Sam though, damn fool always found some stupid way to get in trouble. He found the cities exciting and just wasn't ready for all the temptations. Always finding himself in debt and spending gold he doesn't have.~
= ~I've helped him out now and then, but he better not be finding some more trouble while I'm gone. He was never as good with weapons like I am, so he's not the best at protecting himself.~
++ ~If he has the luck other halflings have, he'll be fine.~ + PFamily.3 
++ ~Do you still love him?~ + PFamily.4
++ ~He sounds like a nuisance. Why do you bother?~ + PFamily.5
++ ~Let's talk about something else.~ + main.PID 
END

IF ~~ PFamily.3 
SAY ~Heh, you would think that. But luck runs out, even for us.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.4 
SAY ~Aye, even if he is a nuisance at times, I love the fellow. He's come through with good advice for me. So I don't mind being his hero, long as he brags about me.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.5 
SAY ~Family is family. In the end we share the same blood. I'll be there for him when the road isn't taking me so far away.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Gullykin 
SAY ~Ain't much to talk about. You've seen the village haven't you? Small and at the fringe of a ruin. The ruin was the most interesting part, and everyone tells you to stay away from it.~
= ~Besides the kobolds, it was a rather safe place to grow up if you didn't wander out far. Otherwise it was a boring place of farms and vineyards.~
++ ~Would you rather call somewhere else home?~ + PGully.1 
++ ~You must be glad to be on the road, then.~ + PGully.2
++ ~Let's talk about something else.~ + main.PID 
END 

IF ~~ PGully.1 
SAY ~Heh, nah. With the dinners Ma makes when I come back, damn would I be regretful if I never returned.~
= ~And it does allow me to bring wild tales to impress the locals. Hard to do that if you're in a town where there are other adventurers.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PGully.2 
SAY ~Aye. Though don't get me wrong, I could see myself settling there myself. Just not until I have a lot of stories to regale and a legend created for myself.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Faith
SAY ~Huh. You know, we halfling folk have a different way to look at our gods. It's not like we don't pray to them often...though we don't pray to them often, heh.~
= ~We believe the best way to pay our respects is to live by their wishes. Care for the sick, watch out for the old, and live a life of plenty, but not greed.~
= ~I don't care much about any deities outside of our Venya, though. None save Tymora. She gives us our luck, you know.~
++ ~Is that why you are so lucky?~ + PFaith.1 
++ ~Can you tell me more about your gods?~ + PFaith.2 
++ ~Do you not have temples?~ + PFaith.3
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.1 
SAY ~Yeah, or it could be because of Brandobaris. The Scamp always has misadventures, but always gets through them all.~
IF ~~ + PFaith.2 
END 

IF ~~ PFaith.2 
SAY ~There's Yondalla, Sheela, Urogalan, Arvoreen, Brandobaris, and Cyrrollalee. They all as a collective help round out how a halfling should behave.~
= ~Cyrrollalee's door is always open, so you always find Gullykin's doors open. Brandobaris is a scamp, so you might find something in your pockets missing. Arvoreen is the defender, so we're always keeping an eye on those who might bully our people.~
= ~Urogalan guides the dead to the next great adventure, while Sheela watches over the harvest, and Yondalla teaches to keep our families tight knit. It's a nice collective if you ask me.~
++ ~Interesting. Thank you for sharing that.~ + PFaith.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.3 
SAY ~Eh, our temples tend to double as something else. You know, a winery, or a tavern. I think it makes more sense that way than have some extravagant, expensive building.~
++ ~Can you tell me more about your gods?~ + PFaith.2 
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.4
SAY ~Thanks for asking. Kind of nice to remember to think of the Mother and her Children I sometimes don't do that enough.~
IF ~~ EXIT 
END 

IF ~~ PID.Cloak
SAY ~That's because every hero needs to look good, and the cloak's just the essential part of the ensemble.~
= ~Made this my self. I always repair it if it gets any holes, and a cloak can be useful distraction, a tool of its own.~
++ ~I guess you have a point.~ + PCloak.1 
++ ~It's just that there are more stylish cloaks you could get for yourself.~ + PCloak.2 
++ ~I don't think I agree with you at all.~ + PCloak.3
++ ~Let's talk about something else.~ + main.PID 
 END 
 
IF ~~ PCloak.1 
SAY ~Well, now that you understand, hopefully you'll look at your own choices of attire and wisen up, eh?~
++ ~There's nothing wrong with what I am wearing.~ + PCloak.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PCloak.2 
SAY ~What? That is the most slanderous thing I have ever heard. You mate, need to evaluate your choices of attire if you think that.~
++ ~I am allowed to have my own opinion.~ + PCloak.5
++ ~There's nothing wrong with what I am wearing.~ + PCloak.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PCloak.3 
SAY ~Well mate, considering your own choice of attire, I'm not surprised. Didn't you grow up in a monastery? I didn't think you'd be the sharpest out there.~
++ ~I am allowed to have my own opinion.~ + PCloak.5
++ ~There's nothing wrong with what I am wearing.~ + PCloak.4
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PCloak.4 
SAY ~Heh, well, I will have to prove to you otherwise someday. I could dress you and make you look very sharp. But unfortunately there's no room for that when we're getting blood all over us from the monsters that fall on our swords.~
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.5 
SAY ~Yeah. You are. It's just the wrong opinion. I could dress you and make you look very sharp. But unfortunately there's no room for that when we're getting blood all over us from the monsters that fall on our swords.~
IF ~~ + PCloak.6 
END 

IF ~~ PCloak.6 
SAY ~So it will have to wait for a better day, I'm afraid.~
++ ~Let's talk about something else.~ + main.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PersonalGroup.PID 
SAY ~Well, it's not just us, but ask anyway.~
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3KalPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + DSR
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe?~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~(Kiss him)~ + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3KalInterest","LOCALS",0)~+ ~Has anyone told you how handsome you are?~ DO ~SetGlobal("X3KalInterest","LOCALS",1)~ + RomanceInt.Talk
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~I think we should end this thing between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ PersonalAlone.PID 
SAY ~Well, it's just the two of us. Ask away.~
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3DSRomance","GLOBAL",0)Global("X3KalPartyBG1","GLOBAL",1)~+ ~Back in Dragonspear...is there still anything between us?~ + DSR
// Kale is Rest Invite #3. If the player invites a different NPC, then it will flag them for the rest invite instead, unless they ask Emily again before resting.
+~!Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe? When it's a safe place, of course.~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Normal 
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~Mind spending some time together when we next rest somewhere safe? When it's a safe place, of course.~ DO ~SetGlobal("X3RestInvite","GLOBAL",3)~ + ForceRestTalk.Love
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~(Kiss him)~ + Group.Kiss
// Force initiates romance, as long as player qualifies and romance wasn't already broken.
+~Global("X3KalRomanceActive","GLOBAL",0)Global("X3KalInterest","LOCALS",0)~+ ~Has anyone told you how handsome you are?~ DO ~SetGlobal("X3KalInterest","LOCALS",1)SetGlobal("X3KalAppChange","GLOBAL",7)~ + RomanceInt.Talk
+~Global("X3KalRomanceActive","GLOBAL",2)~+ ~I think we should end this thing between us.~ + BreakUp
++ ~Nothing actually. Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk.Normal 
SAY ~Sure, mate. Sounds fun.~
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY ~You don't even have to ask, love.~
IF ~~ EXIT 
END 

IF ~~ Alone.Kiss 
SAY ~Mmm. A damn good kiss just because. I could get used to this.~
IF ~~ EXIT 
END 

IF ~~ RomanceInt.Talk
SAY ~In my stories, all the time. Heh, not so often to my face from attractive people.~
++ ~It's certainly true.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.1
++ ~Really? That would explain the lack of people I see swoon over you.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.2
++ ~So it's not true?~ + RI.3
END 

IF ~~ RI.1 
SAY ~Well, thank you. Huh...are you trying to get something from me? Because I swear I've had this happen and woken up stark naked without any of my belongings.~
++ ~Just the opportunity to make mad love together.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.4 
++ ~Nothing. I just wanted to give you a compliment.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.5 
++ ~Oh, you caught me. There goes my plan.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + RI.6 
++ ~How stupid are you to get robbed like that?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.7
END 

IF ~~ RI.2 
SAY ~Hey! I've had a few lovers in the past, you know. Mostly other halflings and just the one gnome. Everyone else just doesn't know how attractive right-sized folk are.~
= ~Wait a second...are you trying to get something from me? Because I swear I've had this happen and woken up stark naked without any of my belongings.~
++ ~Just the opportunity to make mad love together.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.4 
++ ~Nothing. I just wanted to give you a compliment.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.5 
++ ~Oh, you caught me. There goes my plan.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + RI.6 
++ ~How stupid are you to get robbed like that?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.7
END 

IF ~~ RI.3 
SAY ~Ha. It is definitely true. Your observation is stout on...wait a second...are you trying to get something from me? Because I swear I've had this happen and woken up stark naked without any of my belongings.~
++ ~Just the opportunity to make mad love together.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.4 
++ ~Nothing. I just wanted to give you a compliment.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",1)~ + RI.5 
++ ~Oh, you caught me. There goes my plan.~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",2)~  + RI.6 
++ ~How stupid are you to get robbed like that?~ DO ~IncrementGlobal("X3KalAppChange","GLOBAL",-1)~ + RI.7
END 

IF ~~ RI.4 
SAY ~Eh...uh...er...wha? I...~
= ~*Hem*. *Hem*. We should probably do something uh, productive.~
IF ~~ EXIT 
END 

IF ~~ RI.5 
SAY ~Heh, well I like it. But I"m going to keep my eye on you just in case.~
= ~I lost my good clothes that day, you know. Took me forever to find a comparable dashing outfit.~
IF ~~ EXIT 
END 

IF ~~ RI.6
SAY ~Ha! Well, no for you. You're not getting into my clothes that easily.~
= ~Damn that sounded wrong. I really got to think before I say things.~
IF ~~ EXIT 
END 

IF ~~ RI.7
SAY ~Pfft. It's not about stupidity. Just drunkenness and the power of swaying hips.~
= ~I'm just thankful you're not the type to do that to me. Lost my best clothes that day. Never again, I say.~
IF ~~ EXIT 
END 

IF ~~ BreakUp 
SAY ~Oh...*sigh*. Usually it's I that initiates this stuff. Can...I ask why, mate?~
++ ~I'd rather not say why. I'm sorry.~ + BU.1 
++ ~This was fun. That's all it was to me.~ + BU.2 
++ ~It's just not working out.~ + BU.3 
++ ~I just don't see this going anywhere.~ + BU.4
END 

IF ~~ BU.1 
SAY ~Well...all right then. You can have your secret.~
IF ~~ + BU.5 
END 

IF ~~ BU.2 
SAY ~Yeah...'twas fun. Honestly I...normally would even be okay with that reason. Not sure why I'm not.~
IF ~~ + BU.5 
END 

IF ~~ BU.3 
SAY ~I don't know what that means...sounds like a reason I might give if I found something so stifling. Maybe that's it.~
IF ~~ + BU.5 
END 

IF ~~ BU.4 
SAY ~Yeah...I guess I can see what you mean. I don't know why though why it bothers me so much...damn my heart.~
IF ~~ + BU.5 
END 

IF ~~ BU.5 
SAY ~Maybe I was getting too close and this is for the best. I'll...give you the space you want.~
IF ~~ DO ~SetGlobal("X3KalRomanceActive","GLOBAL",3)IncrementGlobal("X3KalApp","GLOBAL",-12)
DisplayStringNoNameDlg(Player1,@309)~ EXIT 
END 

END 