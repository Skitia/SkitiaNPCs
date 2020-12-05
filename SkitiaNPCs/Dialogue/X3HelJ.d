/*Non-Essential Interjections*/ 

//Chapter 6-7

I_C_T DRAGBLAC 7 X3HelDRAGBLAC 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Let us nay sate the greed of this lizard, I say. Fight! We have come too far for a damn lizard to stop or rob us.~
END 


I_C_T SUDEMIN 22 X3HelSUDEMIN-22
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye had the chance to kill him and ye didn't?! Fools!~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Speak with respect, dwarf. I have no patience for you.~
END

I_C_T KRUIN 13 X3HelKRUIN-13
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~We nay spineless cowards, beast! Ye can nay win.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== KRUIN ~Oh we will see. We will see yet...~
END 

I_C_T KRUIN 11 X3HelKRUIN-11
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye just gave it to him? Bah. What is another dead githyanki to fight to keep it?~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~
== KRUIN ~Farewell then...For now. Nothing can be so predictable to say forever.~
END 

I_C_T C6SAFA 0 X3HelC6SAFA-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ THEN ~Watch it girl. I nay liked ye before, and have no qualms gutting ye.~
END 

I_C_T C6CORAN 1 X3HelC6CORAN-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ THEN ~Hrngh. We've been dropped in some glorious bloody places, Coran, I'll tell ye that.~
END 


I_C_T C6REGIS1 2 X3HelC6REGIS1-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~These look like hardened adventurers. They be a worthy battle, perhaps, if it comes to it.~
END 


I_C_T C6DRIZZ1 22 X3HelC6DRIZZ1-22
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nay! <CHARNAME> bows to no one.~
END

I_C_T C6DRIZZ1 55 X3HelC6DRIZZ1-55
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~Aye! This will be a battle worth remembering.~
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

I_C_T C6DRIZZ1 48 X3HelC6DRIZZ1-48
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~Aye! This will be a battle worth remembering.~
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

I_C_T C6DRIZZ1 41 X3HelC6DRIZZ1-41
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~Aye! This will be a battle worth remembering.~
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


I_C_T C6DRIZZ1 18 X3HelC6DRIZZ1-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~Aye! This will be a battle worth remembering.~
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

I_C_T C6DRIZZ1 5 X3HelC6DRIZZ1-5
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~Aye! This will be a battle worth remembering.~
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

I_C_T C6DRIZZ1 9 X3HelC6DRIZZ1-9
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~Aye! This will be a battle worth remembering.~
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

I_C_T C6BRUEN1 0 X3HelC6BRUEN1-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If ye want to make it to any town, ye'll nay do such a thing.~
END

I_C_T C6DRIZZ1 1 X3HelC6DRIZZ1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah, he speaks as if we should know him. I say <CHARNAME>'s actions were just fine.~
END

I_C_T C6ELHAN2 37 X3HelC6ELHAN2-37 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I nay like to be constantly forced to fight others fights by threat or trick! But I also do love a good fight.~
END

//Underdark 

I_C_T JARLAXLE 16 X3HelJARLAXLE16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~He be manipulating us! Bloody drow and bloody secrets that let him pull a string.~
END 

I_C_T UDPHAE01 136 X3HelUDPHAE01-136
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ THEN ~A demon will be a fierce beast in the battle lines. The surface be in for a reckoning if this is successful.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Helga, why the hell are you grinning so excitedly? A demon is damning for us all.~
END



I_C_T UDPHAE01 61 X3HelUDPHAE01-61
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~A fools errand. They nay be a worthy fight, nor one worth our time.~
END


I_C_T UDDROW16 40 X3HelUDDROW16-40
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Too much finger waggling towards the end. But still, fights well done.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
END

I_C_T UDCHAL 0 X3HelUDCHAL0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~We be worthy of admiration, I say. Though I bet a challenge is about to be offered.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
== UDCHAL ~And such a lowly way of speaking. Clearly more time was devoted to combat than eloquent speech.~
END 

I_C_T UDDROW16 43 X3HelUDDROW16-43
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~A glorious fight! Honor to us.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
END

I_C_T UDDROW04 8 X3HelUDDROW04-8
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ah, fighting in an arena. This place be better than I thought.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",2)
DisplayStringNoNameDlg(Player1,@213)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Eh. I am your friend, Helga, but that sentence is a bit disturbing if you're taking a liking to this place.~
END 

I_C_T UDDROW04 25 X3HelUDDROW04-25
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I say we should! My weapon hungers.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~
== UDDROW04 ~Ah, the lovely female is most excited. Lolth must be very pleased.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~She does know why we are actually here, right?~
END 

I_C_T UDDROW04 30 X3HelUDDROW04-30
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Easy! Bring on the next.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@216)~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~She has surely gone mad from far too many hits in battle.~
END 

I_C_T UDDROW04 30 X3HelUDDROW04-30
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ha! The glory is ours!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",7)
DisplayStringNoNameDlg(Player1,@219)~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I wonder about you sometimes, Helga. But I can't fault you for having a passion, I suppose.~
END 



I_C_T DASLAVE1 11 X3HelDASLAVE1-11
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I nay approve of any gift to an enemy goddess, even if I nay wish their attention. There be no glory in this.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~
END 

I_C_T DADROW16 0 X3HelDadRow16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~What use could these beasts be besides swinging practice? We nay need this.~
END 

I_C_T UDDOOR01 1 X3HelUDDOOR01-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Now ye've done it. No doubt the only way in will be a battle for the ages. Count me bloody in.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~I think you are both bloody insane.~
DO ~IncrementGlobal("X3KalApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@306)~
END 

I_C_T UDSIMYAZ 16 X3HelUDSIMYAZ16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Either he thinks he may lose, or he will betray us at a more opportune time. I have nay trust for the beast or his plan.~
END 

I_C_T UDSIMYAZ 47 X3HelUDSIMYAZ47
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! Let the better battler live!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@316)~
== UDSIMYAZ ~Kill them!~
END 

I_C_T UDSIMYAZ 37 X3HelUDSIMYAZ37
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Well deserved hostility, you coward! I nay blame <CHARNAME> if they seek yer blood.~
END 

I_C_T UDSIMYAZ 26 X3HelUDSIMYAZ26
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I knew we could nay trust them! We be hardly any more free than we were before!~
END 

I_C_T UDSIMYAZ 5 X3HelUDSIMYAZ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, a sentiment I can well agree with. I would have fought willingly had they bloody asked!~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Honestly, you are *way* too bloodthirsty, Helga.~
END 

I_C_T UDSIMYAZ 12 X3HelUDSIMYAZ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~A shame. It was nice knowing ye. I'd say ye have a shot, but ye don't.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~Why are you grinning like that? We are prisoners, Helga. This is not an actual arena.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~I know it, girl! Still, a battle be a battle.~
END 

I_C_T UDKUO01 1 X3HelUDKUO01
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Unless ye can make anything of its words that be useful, the time that be approaching is battle time.~
END 

I_C_T UDSILVER 16 X3EmiUDSILVER-16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~And ye let them just pass? Ye could have easily slaughtered them as they should be.~
END 

I_C_T UDSILVER 49 X3HelUDSILVER-49
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~She practically forced us on this bloody mission. Nay! If the drake wants a battle, it can have it, rather than appreciate that <CHARNAME> has the honor to return to answer. Few would.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@313)~
END 

I_C_T UDSVIR03 23 X3HelUDSVIR03-23
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~He be forcing our hand, I see. I nay appreciate it, even for a Svirf. Let's get this bloody village work over with.~
END 

I_C_T UDSVIR03 12 X3HelUDSVIR03-12
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ah, something of interest from yer lips! A creature worthy of a challenge, perhaps?~
END 

I_C_T UDTRAP01 3 X3HelUDTRAP01-3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Will this crazed man stop his mad barking?~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Wouldn't be a mad man if he weren't mad, eh?~
END 

I_C_T VICONIJ 158 X3HelVICONIJ158
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~And that be bad? The only good duergar, is a dead one.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I know what it says about them in the books and stories, but they really do not seem so bad.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~Ye nay know their full tale then, to know the fear that ye should have with it.~
END 

I_C_T UDDUER03 6 X3HelUDUDER03-6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~On with the hunt. I tire of speaking with the grey ones.~
END 

I_C_T UDDUER03 0 X3HelUDDUER03-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Yer blasted tongue nay hides an insult. Ye nay wish to rile us, duergar.~
END 
//Chapter 4 

I_C_T SAHPR2 23 X3HelSAHPR2-23
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~This be an agreeable course! To battle, ye damn shark-men!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
END


I_C_T SAHPR2 13 X3HelSAHPR2-13
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I'd rather fight. Nay just the prince, but all of these damn shark-people. Doing a monster's will is nay be my desire.~
END

I_C_T SAHPR4 4 X3HelJSAHPR4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Stupid sharks. They can't recognize their own predicament.~
END


I_C_T SAHKNG01 76 X3HelSAHKNG0176 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Finally! I was tired of hearing these sharks yap. To the fight!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
END


I_C_T SAHKNG01 50 X3HelSAHKNG0150 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Should have just slaughtered these fish. But I be following yer lead on this.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~
END

I_C_T SAHKNG01 47 X3HelSAHKNG0147 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Finally! I was tired of hearing these sharks yap. To the fight!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
END

I_C_T SAHKNG01 23 X3HelSAHKNG0123 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Finally! I was tired of hearing these sharks yap. To the fight!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
END

I_C_T SAHPR1 30 X3HelSAHPR30 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Finally! I was tired of hearing these sharks yap. To the fight!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~
END

I_C_T SAHPR1 5 X3HelSAHPR5 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I trust nay welcome from these beasts, or any who who worship a shark.~
END

I_C_T PPSAEM3 23 X3KalPPSAEM3-23
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I nay trust this pirate. Keep two eyes on him, and a hand near yer weapon. I be sure treachery will be coming.~
END

I_C_T PPSAEM3 1 X3HelPPSAEM3-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah! We nay need this lying pirate. We can take the portal and charge into the Underdark still.~
END

I_C_T PPSAEM2 21 X3HelPPSAEM2-21
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~This be too convenient. I nay trust him. For all we know, he still be their pawn.~
END

I_C_T PPSAEM2 19 X3HelPPSAEM2-19
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah! I nay desire more time on a ship. Let us follow into the dark. We be more than ready for its dangers.~
END

I_C_T PPSAEM2 8 X3HelPPSAEM2-8
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah! It be foolish to enlist the help of madmen. Let us take them on ourselves!~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~And get ourselves killed? Our best chance is with numbers, and the mages would make good meat shields.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Vie")~ THEN ~Vienxay is right, though it isn't about sacrificing these other mages. But alone, we don't have as good of a chance.~
== PPSAEM2 ~Good luck.~
END 


I_C_T PPJOYE2 10 X3EmiPPJOYE2-10
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I doubt the lizards will give it up willingly. But I be doubting they'll be much of a fight either.~
END 

EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("X3Hel") Global("X3HelPartyBG1","GLOBAL",1)~ + ~You should remember Helga. Do you recognize her, Imoen?~ EXTERN X3HelJ X3HelPPIMOEN0
END

CHAIN X3HelJ X3HelPPIMOEN0
~Bah. She is as mad as everything else here. I nay think she even be hearing what ye are telling her.~
EXTERN PPIMOEN 1

I_C_T PPDRADEE 0 X3HelPPDRADEE-0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~He thinks he be in the throes of battle. I hope he wins his bloody imagined conflict.~
END

I_C_T PPDILI 2 X3ViePPDILI-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~What be wrong with this girl? This place be disturbing.~
END

I_C_T PPTIAX 6 X3HelPPTIAX-6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Mad little gnome. He be so insane he practically deserves this bloody place.~
END 

INTERJECT PIRMUR09 17 X3RebPIRMUR09
== X3HelJ IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Hel")~ THEN ~Some gold never hurts. Nay easy or cheap to play hero.~
EXTERN PIRMUR09 18

I_C_T PPCOWLED 2 X3HelPPCOWLED
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~It will be yer last test if ye try. Think, ye blasted fool.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~He is dominated, idiot dwarf. Your words fall on deaf ears.~
END

I_C_T PPSAEM 58 X3HelPPSAEM58
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nay! Ye will be struck down for this, scoundrel!~
END

I_C_T PPSAEM 14 X3HelPPSAEM14
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~That boat was worse than most. I nearly felt the need to heave me guts out a time or two.~
END

//Chapter 3

I_C_T BODHI2 18 X3VieBODHI2-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~About bloody time. I desire to send this vampire to the same fate as her b~
END

I_C_T ARNMAN09 2 X3HelARNMAN09-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~She plays the same word game my mentor would. And I hate such people.~
END 

I_C_T ARNMAN09 2 X3VieARNMAN09-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ha! Seems yer life is about to end, foolish thief.~
END 

I_C_T ARAN 77 X3HelARAN77 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Damn thief! Ye hired him. Ye should have told us everything.~
END 


I_C_T ARAN 49 X3HelARAN49 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~It better! It was a bloody amount of gold ye asked for.~
END 

I_C_T ARAN 20 X3HelARAN20
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~We should just fight these rogue thieves and get it over with. I be a battle maiden, nay a thief maiden.~
END 


I_C_T ARAN 3 X3HelARAN3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Mere guard work. Can nay be more dull.~
END 

I_C_T ARNBOY01 3 X3HelARNBOY01-3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Toughen up, young sprout. I nay like this work, but it could help prepare ye for what ye'll see in the field of battle someday.~
END 

I_C_T BOOTER 18 X3HelBooter18 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Should have at least let the man die in battle. Shameful to die like he did.~
END 


I_C_T FOOD 1 X3HelFOOD1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Something ain't right. Something ain't right at all.~
END  


//Watcher's Keep 

I_C_T GORAPP1 16 X3HelGORAPP1-16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Aye! I am up for the good fight. Let's kill the blasted thing.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",5)
DisplayStringNoNameDlg(Player1,@216)~
END 

I_C_T GORDEMO 12 X3HelDEMOGOR1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~...Goddess Haela...watch over us all.~
END 

I_C_T GORSAL 2 X3HelGORSAL2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~For the glory, too. A glory I be desiring, but it be yer choice, <CHARNAME>...suppose there be no harm in civility either.~
END 

I_C_T GORCAR 15 X3HelGORCAR 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ ~I say let him die. I nay appreciate his games with us.~
END 

I_C_T GORCAMB 17 X3HelGorcamb17
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Better to fight and nay ask more questions than play a game with a demon. Ye asking for trouble, nay matter the reward.~
END  

I_C_T GORCAMB 54 X3HelGorcamb54
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hrngh! We should have nay gambled and let this creature win. I'd have been up for fighting. Bah.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~ 
END  


EXTEND_BOTTOM GORMAD1 8
IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Name("X3Hel",LastTalkedToBy)~ EXTERN X3HelJ Yackman
END

CHAIN X3HelJ Yackman  
~Bah, enough with the chatter. Tell us what ye want to know...hey! Stop it and tell us, or I'll smack ye!~
EXTERN GORMAD1 10

I_C_T GORODR1 11 X3HelGORODR1-11
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I be surprised ye haven't taken the call of battle for yerselves. This be sounding like a glorious task!~
END 

I_C_T GORODR1 50 X3VieGORODR1-50
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~The fact he nay be smacked in the face with a weapon is a testament to yer patience, <CHARNAME>. For I would not have had it.~
END 

I_C_T GORODR1 35 X3HELGORODR1-35
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Traitors and cowards both! I nay fault <CHARNAME> if they saw fit to take your life.~
END 

//Trademeet 

I_C_T TRSKIN02 16 X3HelTRSKIN02 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ah, so now the murder's scent is picked up again. The battle that be denied will be had after all!~
END  

I_C_T DRUSH 3 X3HelDrush3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Am I mad, or was this really a damn ogre we be speaking to.? I need a drink.~
END 

I_C_T DRUSH 5 X3HelDrush5
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Am I mad, or was this really a damn ogre we be speaking to.? I need a drink.~
END 


I_C_T TRCUT07 4 X3HelTRCUT07-4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. They made me rather broad...I like it.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END 


I_C_T TRPLE01 16 X3HelTRPLE01-16
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Fraud! Ye ought to give something to those who *really* adventure here.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END 

I_C_T NEEBER 15 X3HelNEEBER15 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~By Moradin's beard, I am sorely tempted to throw a pebble and then some at yer idiotic face!~
END 

I_C_T NEEBER 8 X3HelNEEBER8 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I'm a cl- bah, forget it.~
END 

I_C_T TRNOBM01 4 X3HelTRNOBM01-4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye fear for naught. If we really wished harm, ye would first to work on yer stance. Ye ain't fending anyone off like that.~
END 

I_C_T TRHMER01 34 X3HelTRHMER01-34
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~We can nay fight all yer battles. Learn to fight yer own, and ye will be fine.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END 

//Umar Hills 

INTERJECT MAZZY 6 X3HelMAZZY6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ THEN ~This be bloody Mazzy Fentan! We ain't nay leaving her here. Here ye go, lass.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-5)
DisplayStringNoNameDlg(Player1,@106)~ 
EXTERN MAZZY 13

I_C_T UHOGRE01 12 X3HelUHOGRE01-12
 == X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Should have killed them just to be sure. Fought them for decades and I know from veteran experience they are nay trustable. Ye'll see this is a mistake, I think.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~ 
END 

I_C_T UHOGRE01 15 X3HelUHOGRE01-15
 == X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. This deal will be nay but trouble.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ 
END 

I_C_T UHKID01 18 X3HelUHKID01-18
 == X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, aye, now they'll get to have a taste of good ale and battle. Children are too coddled these days.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ 
END 

I_C_T UHMER03 3 X3HelUHMER03-3 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~The only good ogre is a dead ogre, aye indeed, merchant.~
END 

I_C_T UHKID02 15 X3HelUHKID02-15
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~My kids have more spine than these oafs. Let's do the work they can't handle.~
 END 

I_C_T UHMAY01 52 X3HelUHMAY01-52 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, an ogre never deserves to live anyway. Was a good fight!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END

I_C_T UHMAY01 59 X3HelUHMAY01-59 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Now ye are just going to give the ogres an exploitable opportunity. We should have bashed them when we had the bloody chance.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~ 
END

I_C_T UHMAY01 70 X3HelUHMAY01-79 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah. Now ye are just going to give the ogres an exploitable opportunity. We should have bashed them when we had the bloody chance.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~ 
END

I_C_T UHMAY01 18 X3HelUHMAY01-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Would be a shame to know another well known earthkin to fall. All the same, there be honor in seeing this task through.~
END 

//Windspear Hills 

I_C_T FIRORC02 1 X3HelFIRORC02-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")Global("X3HelPartyBG1","GLOBAL",1)~ THEN ~I care not! We killed ye once ogre. I be glad to do it twice.~
END 

I_C_T FIRORC02 1 X3HelFIRORC02-1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Like hell ye will. <CHARNAME> may be easily swayed, but nay me.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)Attack("FIRORC02")~ 
== FIRORC02 ~Gotta run!~
END 

I_C_T GARJUM 1 X3HelGARJUM1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bandits? Glorious Haela, bring the battle on. This place had been boring until now.~
END 

I_C_T FIRKRA02 25 X3HelFIRKRA02-25 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN ~This will be the battle of me life! Raaaagh!~
== FIRKRA02 ~Yes indeed. Your very last.~
END 

I_C_T FIRKRA02 21 X3HelFIRKRA02-21 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Think of the legend! The feat! The glory! This is a battle worth having. I pray we be back to finish this!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Helga, as a halfling of legend myself, I'd rather live to enjoy my tale, eh?~
END

I_C_T GARREN 41 X3HelGARREN41 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~A pity grand news must come paired with the grim.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",6)
DisplayStringNoNameDlg(Player1,@216)~ 
== GARREN ~Please. Is it...as I fear?~
END
I_C_T GARREN 27 X3HELGARREN27 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~We nay need his help. A few defeated knights shall end their grudge, I say.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END

I_C_T PALKNI05 0 X3HelPALKNI05
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~An ogre, eh? I never tire of killing them!~
END 


//De'Arnise
I_C_T DELCIA 2 X3HelDELCIA 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~By Moradin, this woman makes me hand twitch! I nay responsible for any accidents with me weapons.~
END 

I_C_T KPGRD01 0 X3HelKPGRD01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, good to install a bit of discipline. Will give ye better soldiers.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END

I_C_T KPGRD01 6 X3HelKPGRD01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~He'll just break some other rule. Nay stern enough if ye ask me.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~ 
END  

I_C_T KPGRD01 13 X3HelKPGRD01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Generous as it may be, it won't install discipline. Ye were too soft, but it is yer choice.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~ 
END 
//Althkata

I_C_T CERNDJ 53 X3HelCERNDJ-53
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~As ye should. Fight yer own battle.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ 
END

I_C_T CENANNY 18 X3HELCENANNY-18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. I would nay abandon a young child as he did. Not even for war.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, you couldn't, you know? You'd be carrying it around.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Try to be funny on yer own time, Kale. Let's see this through for the lad, though he ought to be doing this himself.~
END 

I_C_T AEEXTORT 8 X3HelAEEXTORT
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ha. Good work on exposing a bloody coward.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~
END


I_C_T MAZZYJ 202 X3HelMazzyJ-202
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nay. Just fight with more fury, lass. Fighting nay has to be clean.~
== MAZZYJ ~I am a warrior of honor, Helga. I thank you for your words, but I will not discard my values to win. I will just be more careful next time.~
END

I_C_T DOUG 14 X3HelDOUG-14s
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~A coward's way. This cheats her of her glory.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~ 
== DOUG ~Nonsense, nonsense. You'll thank me later. Good luck!~
END

I_C_T MAZZYJ 44 X3HelMazzyJ-44
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! Ye'll get your arse kicked yet, ogre-ish brute!~
END

I_C_T BORINALL 13 X3HelBORINALL13 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~At least ye still stand <CHARNAME>. Most fools are nay so lucky.~
END

I_C_T MERONIA 2 X3HelMERONIA2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Balance is a bunch of bullocks. A mighty king deserves to have his land extend as far as his might allows, good or evil.~
END

I_C_T EDWIN 18 X3HelEDWIN18
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I be tiring of this wizard's mouth. Give the word, and I'll break it.~
END

I_C_T STEIN 1 X3HelStein1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Go earn  yer own keep, I say, blasted thieves.~
END 

I_C_T STEIN 3 X3HelStein3
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. Go earn  yer own keep, I say, blasted thieves.~
END 

I_C_T BODHI 72 X3HelBODHI72 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Finally. Us versus a bunch of assassins. This will be a damn good fight!~
END 

I_C_T BODHI 6 X3HelBODHi6 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I nay care about the gold. But if ye seek to find what ye are looking for, this is undeniably a faster path.~
END

I_C_T BODHI 3 X3HelBODHI3 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, get to it. Dwarves aren't known for their patience.~
END  

I_C_T TIRDIR 2 X3HelTIRDIR2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Spineless. Be proper to let a foe die with a blade in their hand, not in the ground still well alive.~
END 

I_C_T HABREGA 26 X3HelHabrega26
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~A worthy kill, <CHARNAME>, though I nay killing children ghosts again if I don't have to.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END


CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Kal")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN FFCUST06 X3Hel
~You are the dwarf Helga, the leader of the Six Shields of Earthkin, were you not? I found your work inspiring.~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, though was. The honorable death of a couple saw to the end of that. But I will nay ever forget them.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN FFCUST02 X3Hel
~They need to keep these ale mugs clean. This is filthy!~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hand it here, then. I'll drink it up with nay problems, ye rich snob.~
EXIT 

I_C_T VVAMN1 6 X3HelVVAMN1-6 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~All that mouth and nothing to back it up. Spineless.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~
END 


I_C_T TANNER 21 X3HelTanner21
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah! Strike him now, kill him! The guards can have the remains.~
== TANNER ~My work shall not be lost!~
END 

I_C_T ANOMENJ 135 X3HelAnomenJ135
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! These courts may be useless, but our weapons will nay fail the task.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END 

I_C_T ANOMENJ 176 X3HelAnomenJ176
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~We shy away from the battle because the law discourages it? Hrngh! I nay agree.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@213)~ 
END 

I_C_T MARIA 14 X3HelMARIA-14
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, better to ask the rest delayed until the good battle is over.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~ 
END 

I_C_T MARIA 5 X3HelMARIA-5
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I'd have bashed me late husband in the head if he made up such an excuse.~
END 

I_C_T LISSA 4 X3HelLISSA4
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~The one responsible deserves a hammer to his arse, and nay less.~
END 

I_C_T DEGARD 6 X3HelDEGARD6
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Emi")~ THEN ~The gold will be worth the riddance of this mage!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@416)~
END

I_C_T BSHOP01 2 X3HelBSHOP01-2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I don't appreciate threats. May be better off smacking the thief down to size. Nay guard will care.~
END

I_C_T LOUT 1 X3HelLOUT1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Tell him to get lost. Unless he be paying very well, this ain't work for us.~
END 

I_C_T BMUGG1 1 X3HelBMUGG1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~What in the bloody hell? Just throwing away money? Grow some bones.~
== BMUGG1 ~Remember, say nothing, if you know what's good for you!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-6)
DisplayStringNoNameDlg(Player1,@206)~
END 

CHAIN IF WEIGHT #-1
~See("X3Reb")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,2)
Global("X3Hel","LOCALS",0)~ THEN BERTRAND X3Hel
~A beardless dwarf woman? Perhaps you know of the legends of gnomish pleasure?~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ ~Nay more than ye know the legends of dwarven pain. Let's stay strangers.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,2)
Global("X3Hel","LOCALS",0)~ THEN CIVIL02 X3Hel
~I swear dwarves aren't allowed in here...~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ ~Ye think dwarves are a problem?  Ye should worry about the elves.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~I heard that, Helga.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Good. Was saying it nice and loud for ye.~
EXIT 


CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,2)
Global("X3Hel","LOCALS",0)~ THEN ARGRIM X3Hel
~What is that stench? And that blood on your armor? A dwarf? I could use some miners capable of self-defense.~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ ~I'll nay trade my hammer for a pickaxe. And nay even think about asking.~
EXIT 

I_C_T SCSARLES 11 X3EmiSCSARLES11 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Illithium be bloody rare. Yer better off mimicking it than finding something like that.~
END 

I_C_T TOLGER 5 TOLGERX3Hel5 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~This be sounding a bit slimy. But we can listen.~
END 

I_C_T RIFTM01 8 X3RebRIFTM018
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. They speak as if abandoned by their god. Perhaps their god be dead, or they failed in their service.~
END 

I_C_T SASSAR 29 X3EmiJSASSAR29
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye say nay? Hrngh. I can nay be too disappointed, the stakes are high. But I be hoping ye find some courage, <CHARNAME>.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~
END 

I_C_T SASSAR 30 X3EmiJSASSAR30
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye, the battle shall be glorious! Live or die, Haela shall honor us for this!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@216)~
END 

I_C_T GAAL 20 X3HelGaal
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Haela, give me the power to crush these blasphemers!~
END 

I_C_T TARNOR 3 X3HelTARNOR3 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Aye! Ye robbed the wrong folk, idiot kin!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",4)
DisplayStringNoNameDlg(Player1,@206)~
== TARNOR ~Whoever kills the most of them, gets the biggest share!~
END 

I_C_T TARNOR 4 X3HelTARNOR4 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah! We should have battled. What be the value of gold if ye nay fight to keep it?~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-4)
DisplayStringNoNameDlg(Player1,@206)~
== TARNOR ~Scram!~
END 

I_C_T KAYL2 14 X3EmiKAYL214
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nay complaints of putting a weapon into a knight's skull. All the better if they're trained well enough to put up a good fight.~
END 

CHAIN IF WEIGHT #-1 
~See("X3Hel")  // X3Hel
!Dead("UnseeingEye")  // Unseeing Eye
IsValidForPartyDialogue("X3Hel")  // X3Hel
RandomNum(2,1)
Global("Prophet4X3Hel","LOCALS",0)~ THEN PROPHET4 Helga
~Faithless! You are faithless!~
DO ~SetGlobal("Prophet4X3Hel","LOCALS",1)SetGlobal("TalkedToCult","GLOBAL",1)~
== X3HelJ ~Bah. My faith is in what matters, but nay, arguing with ye is pointless.~
EXIT 

EXTEND_BOTTOM JANJ 123
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ X3HelJANJ123
END

CHAIN X3HelJ X3HelJANJ123
~Jan boy, this be nay time for one of yer tales. Nay right here, at least.~
EXTERN JANJ 124

EXTEND_BOTTOM ANOMENJ 232
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ X3HelAnomenJ232
END

CHAIN X3HelJ X3HelAnomenJ232
~This be sounding quite familiar. This Keldorn be a twin of yers, I take it.~
EXTERN ANOMENJ 234


I_C_T RYLOCK 24 X3HelRYLOCK24 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If there wasn't the promise of battle, I'd say to the hells with it. What damn host throws a test upon someone right after being given back one of their own?~
END 

I_C_T RENAL 47 X3HelRenal26 
== X3HelJ IF ~!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Hel")~ THEN ~Bah! We have gotten this far already. If not for the gold, for the battle!~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-2)
DisplayStringNoNameDlg(Player1,@203)~
END 

I_C_T RENAL 10 X3HelRenal10 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye make a good choice. Doing the errands of thieves is nay me cup of tea.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~
END   

I_C_T RENAL 26 X3HelRenal26 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye make a good choice. Doing the errands of thieves is nay me cup of tea.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~
END  


I_C_T HAEGAN 2 X3HelHAEGAN
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Let's show them our steel, <CHARNAME>. I'll be enjoying this one.~
== HAEGAN ~Die!~
END 


I_C_T COPGREET 6 X3HelCOPGREET 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nothing like a good fight. But the men should nay need to be chained to do so. Why, they ought to have volunteers! I'd fight in the pit without the need of binding.~
END 

I_C_T KORGANJ 46 X3HelKorganJ46 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Hrngh. I be agreeing with my kin, there. A great warrior would nay let themselves be chained.~
END

I_C_T OHHFAK 12 X3HelOHHFAK12 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~I can't be the only one who is damn chilled? That manner of speaking ain't normal.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Please, this is what all humans sound like to me.~
END 

I_C_T SCDUR 2 X3KalSCDUR2
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If we were nay in an inn, I'd say hammer to arse. But for now, the gray dwarf can count his blessings.~
END 

I_C_T BEGGAR2 8  X3HelBeggar1-8 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~All these bloody beggars ought to become soldiers. If ye can beg, ye can fight.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",1)
DisplayStringNoNameDlg(Player1,@213)~
END  

I_C_T RUFPAL2 2 X3HelRufPal2 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If ye don't smack whelps like that back, they'll just keep up with the bullying. Nay back down.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~
END  

I_C_T RUFFIAN 8 X3HelRuffian8 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Kick him hard, <CHARNAME>. Shove his words were the sun don't shine.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~
END  

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN BURCH2 X3Hel
~MY MOTHER SAYS THAT DWARF GIRLS CAN GROW BEARDS.~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ ~If we be lucky. Now scram, child, yer shouting is getting on me nerves.~
EXIT 

CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN WAYLANE X3Hel
~Hey! Elderly dwarf!~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ ~Ye calling me elderly?~
== WAYLANE ~Yes, you! See this mighty fine sphere here? You can have it for your very own for a mere 500 gold pieces! What do you say?~
== X3HelJ ~I say stop talking to me before I slam yer face in with a hammer, damn con man.~
EXIT 

I_C_T GAELAN 74 X3HelGaelan74 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Bah, we nay need them. This be but a long con, I say.~
END  

I_C_T GAELAN 66 X3VieGaelan74 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~If *any* of these Shadow Thieves make a move for a pocket of mine, its hammers to faces. This better all be bloody worth it.~
END 

I_C_T SEVPAT01 1 X3HelXEVPAT01 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Younglings. Shut yer, trap, kin. Yer pride will land ye in trouble yet.~
== SEVPAT01 ~You're nothing to me, old dwarf woman. Now be gone, unless you want to bleed.~
END 

I_C_T SEVPAT01 2 X3HelXEVPAT02 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Nay need to bow and cower, <CHARNAME>. Will nay gain respect if ye do that.~
DO ~IncrementGlobal("X3HelApp","GLOBAL",-3)
DisplayStringNoNameDlg(Player1,@203)~
END 


I_C_T BRELM 4 X3HelBRELM 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")OR(2)InParty("X3Kal")BeenInParty("X3Kal")~ THEN ~Pah, ye tell yer tale as obviously far fetched as Kale does.~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Hey, I resent that!~
END  


/*Story/Essential Interjections*/  
//Celvan 
CHAIN IF WEIGHT #-1
~See("X3Hel")
IsValidForPartyDialogue("X3Hel")
RandomNum(2,1)
Global("X3Hel","LOCALS",0)~ THEN CELVAN X3Hel
~"There was once a dwarf so old,
and yet age nor pain had made her hammer cold
The lust of battle made her seek blood,
Until the path she walked was one red flood,
Even if it left her child to die, as I told."~
DO ~SetGlobal("X3Hel","LOCALS",1)~
== X3HelJ ~Bah...damn crazy gnomes. Which child ye bloody mean? Both of my sprouts are fine.~
EXTERN CELVAN 1
//Madam Nin
EXTEND_BOTTOM MADAM 0
IF ~Name("X3Hel",LastTalkedToBy)~ EXTERN X3HelJ X3HelMadam
END

EXTEND_BOTTOM MADAM 7
IF ~Name("X3Hel",LastTalkedToBy)~ EXTERN X3HelJ X3HelMadam
END


CHAIN X3HelJ X3HelMadam 
~Nay male has touched me since my husband, and I intend to keep it that way.~
EXIT 
// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("X3Hel",LastTalkedToBy)~ THEN SALVANAS X3HelSalvanas
~Aged like fine wine, your face makes my heart skip a beat, dwarf.~
== X3HelJ ~What in the bloody hell are ye talking about, elf?~
== SALVANAS ~Your gruff voice sets me aflame, your piercing, passionate gaze brings me great desire.~
== X3HelJ ~Well, if that makes ye happy, I've got a hammer that is ready to hit yer face, disgusting elf.~
== SALVANAS ~You wound me, dear dwarf!~
== X3HelJ ~I'm about to if ye don't shut it. Don't let me consider it.~
EXIT

//Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("X3Hel",LastTalkedToBy)~ EXTERN TRGYP02 X3Helg1
END

CHAIN TRGYP02 X3Helg1
~Ah, your longing for battle never ends. And yet I see retirement...or a possibility. From a death that is not your own. You shall know only if your company can be trusted.~
== X3HelJ ~Nay! I ain't ever retiring! Nay on yer terms or anyone else.~
EXIT

// Yoshimo's betrayal

I_C_T YOSHJ 113 X3HelYOSHJ113
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye coward! Ye spineless, yellow-bellied, traitorous thief!~
END


// Spellhold - Dizzy

INTERJECT Player1 3 X3RebSpellholdDizzy0
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel") Range("X3Hel",15)~ THEN
~Ye need some healing? Ye don't look good.~
END
++ ~There's nothing wrong with me.~ EXTERN X3HelJ spellhold.1
++ ~I'm fine. Just... a bit dizzy.~ EXTERN X3HelJ spellhold.1
++ ~Something's not right. I think Irenicus did something to me.~ EXTERN X3HelJ spellhold.1
//Since Interject would take this away from the other four, we'll allow them to chip in with a single line of comment.
CHAIN X3HelJ spellhold.1
~I sense something...is nay right. May not be a healable wound, but I still have what Haela will give me to aid.~
== X3EmiJ IF ~IsValidForPartyDialogue("X3Emi")~ THEN ~They'll be just fine, Helga! We are all here for <PRO_HIMHER>.~ 
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN ~Well, hate to be the pessimistic one, but...this is shaping out to be quite the misadventure. We need to right our fortunes.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~We have to survive. No. We will survive, together.~ 
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~Let us either achieve our revenge, or get out of this place, quickly.~
EXIT


// Slayer reaction

I_C_T PLAYER1 5 X3HelFirstSlayerChange1 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")See("X3Hel")~ THEN ~That thing ye had been was far more fierce looking than any dragon, and uglier than any ogre too.~
END

// Bodhi
I_C_T C6BODHI 0 X3HelC6Bodhi0 
== X3HelJ IF ~OR(2)!Global("X3VieRomanceActive","GLOBAL",2)!IsValidForPartyDialogue("X3Vie")IsValidForPartyDialogue("X3Hel")~ THEN ~I tire of these games! I be bloody ready to give this vampire a stake to the heart.~
END 

// Non-romance, tree of life 

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialogue("X3Hel") Global("X3HelTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 Hpl2
END

CHAIN PLAYER1 Hpl2
~Helga, the veteran dwarf always wanting for the next fight. Weary and worn from the battles of the day, you wonder if she should find the energy for one more fight that is not hers.~
DO ~SetGlobal("X3HelTreeOfLife","GLOBAL",1)~
END
++ ~Helga, you don't have to do this with me.~ EXTERN X3HelJ pl2.2
++ ~Have you the strength for one more fight?~ EXTERN X3HelJ pl2.1
++ ~It's time, Helga. Tell me that you are ready for the battle.~ EXTERN X3HelJ pl2.1

CHAIN X3HelJ pl2.2 
~Ye think that I am stepping away? We have been together too long for ye to ask that.~
EXTERN X3HelJ pl2.1

CHAIN X3HelJ pl2.1
~I am ready for battle. If it be me last battle, by Haela, I will make it a memorable one. Let us go forward fighting with the fierceness of gods!~
END
COPY_TRANS PLAYER1 33 

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 X3HelIrenicusIsDead1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~By Haela Brightaxe, this bloody battle is over. It almost be too easy...~
END


// Hell

I_C_T PLAYER1 25 X3HelEnteringHell1
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~The fight is nay over, is it? I bless Haela and her gift for allowing me to join you and delay the final rest. I be ready to see this to the end.~ 
END

// Irenicus in hell

I_C_T HELLJON 7 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye have cheated defeat enough times, mage. This be yer final fight! By Haela Brightaxe and the power of Flamebolt, I will be yer death!~
END

I_C_T HELLJON 8 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye have cheated defeat enough times, mage. This be yer final fight! By Haela Brightaxe and the power of Flamebolt, I will be yer death!~
END

I_C_T HELLJON 9 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye have cheated defeat enough times, mage. This be yer final fight! By Haela Brightaxe and the power of Flamebolt, I will be yer death!~
END

I_C_T HELLJON 10 X3HelThirdBattleWithIrenicus
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN ~Ye have cheated defeat enough times, mage. This be yer final fight! By Haela Brightaxe and the power of Flamebolt, I will be yer death!~
END

//Chapter 3 Slums Talk 

CHAIN IF ~Global("X3HelSlumTalk","LOCALS",2)~ THEN X3HelJ SlumTalk 
~Look at this place. If someone taught these slum-folk to fight, the streets would be empty of beggars.~
DO ~IncrementGlobal("X3HelSlumTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~It's not so easy. Look closer. Some of them are sick, or perhaps are even ex-soldiers.~ + ST.1 
++ ~You said it, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + ST.2 
++ ~Have you no empathy, Helga?~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + ST.3
++ ~This isn't the time to talk.~ + ST.X 

CHAIN X3HelJ ST.1 
~Perhaps, but then they even have less of an excuse. There still be battles to fight. The crier shouts of many conflicts happening on Amn's own borders.~
EXTERN X3HelJ ST.2

CHAIN X3HelJ ST.3 
~And ye do? For squatters and beggars who could be breaking their backs to live and nay squandering it on constant gifts?~
EXTERN X3HelJ ST.2

CHAIN X3HelJ ST.2
~I just have nay sympathy for them. Give them coin once perhaps, help them get that weapon. But if they nay do anything to get themselves out of the rut, they don't go anywhere.~
= ~Ye never see a poor dwarf. It's always humans. Almost always.~
END 
++ ~I just think your opinion comes from someone who never struggled. You can't understand.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + ST.6
++ ~You have a good point about that.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + ST.7
++ ~We can't generalize all of their situations. The solution isn't simple.~ + ST.5

CHAIN X3HelJ ST.5
~Nay, it isn't. It requires courage and a spine, of which very few people have, <CHARNAME>.~
EXTERN X3HelJ ST.8 

CHAIN X3HelJ ST.6
~I can nay understand? Aye, I can nay understand the cowardice it takes to nay even try to make a good living.~
EXTERN X3HelJ ST.8 

CHAIN X3HelJ ST.7
~Aye. It requires courage and a spine to rise out of squalor. The folk here don't have either.~
EXTERN X3HelJ ST.8  

CHAIN X3HelJ ST.8
~But we have some tasks to do, so let us get back to them, and let talk rest for now.~
EXIT 

CHAIN X3HelJ ST.X 
~Hrngh. As ye wish.~
EXIT 

// Friendship Talk #1
CHAIN IF ~Global("X3HelTalk","LOCALS",2)~ THEN X3HelJ Talk1
~Blast, damn this leg. I get used to it after a while, then after a few hours of traveling, it always starts to sting a little.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~Are you sure you can handle this?~ + T1.1
++ ~Well toughen up, we'll have a lot more traveling to do still.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T1.1
++ ~Can't you just heal it?~ + T1.3

CHAIN X3HelJ T1.1 
~Bah, I'll be fine. Just another reminder of getting old.~
END 
++ ~And how old are you exactly?~ + T1.4 
++ ~It's not all bad. Doesn't getting older make you wiser?~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T1.10 
++ ~Well if you're good to keep moving, lets keep moving.~ + T1.X

CHAIN X3HelJ T1.3 
~I've bloody tried. Nay, I'll need something greater than what I have, I fear.~
EXTERN X3HelJ T1.1 

CHAIN X3HelJ T1.4 
~Old enough to be your grandmother, and young enough to still hate being that old.~
END 
++ ~And you are still wanting to adventure?~ + T1.5
++ ~That's not a number.~ + T1.6 
++ ~Are you a grandmother?~ + T1.7 

CHAIN X3HelJ T1.7 
~I bloody hope not. Else one of my kids is going to be in dire trouble for not telling me.~
END 
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ ~You have children?~ + T1.8
+~Global("X3HelPartyBG1","GLOBAL",1)~+ ~I forgot, you told me you had children.~ + T1.8
++ ~Well if you're good to keep moving, lets go.~ + T1.X 
++ ~You shouldn't be out here, then. Not with kids to worry about.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T1.9

CHAIN X3HelJ T1.8 
~Aye, a few of them, in fact. I miss them, but I need this. I'm not the type to be domestic and homely, I'm a dwarf that needs to be constantly meeting battle, until the battle wins.~
EXIT 

CHAIN X3HelJ T1.5 
~Aye. To my last breath, if I have the choice. And with you, that may just happen.~
EXIT 

CHAIN X3HelJ T1.6 
~It ain't, but it be the closest you get to an answer when you ask such a sensitive question. Pah.~
EXIT 

CHAIN X3HelJ T1.9 
~My kids are grown, idiot. And I'll tell you now that I'll not be judged on my choices here. They understand their ma wants to be out fighting, and that be that.~
EXIT 

CHAIN X3HelJ T1.X 
~Aye. I suppose the time for chatting can be for another time.~
EXIT 

CHAIN X3HelJ T1.10 
~You would think that. And there be truth in it. I suppose all my experience is something I can share with my kids, if I get the chance to see them again.~
END 
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ ~You have children?~ + T1.8
+~Global("X3HelPartyBG1","GLOBAL",1)~+ ~I forgot, you told me you had children.~ + T1.8
++ ~Well if you're good to keep moving, lets keep moving.~ + T1.X 
++ ~You shouldn't be out here, then. Not with kids to worry about.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T1.9

// Friendship Talk #2

CHAIN IF ~Global("X3HelTalk","LOCALS",4)~ THEN X3HelJ Talk2
~I haven't told ye much of my adventures with my own crew, have I?~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
+~!IsValidForPartyDialogue("X3Kal")~+ ~You haven't. Who was a part of it?~ + T2.1 
+~IsValidForPartyDialogue("X3Kal")~+ ~You haven't. Who was a part of it?~ + T2.3
++ ~The adventuring group that ruined your leg?~ + T2.2 
++ ~No, and I'm not really interested in hearing it.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T2.X

CHAIN X3HelJ T2.X
~Bah. As ye want, then.~
EXIT 

CHAIN X3HelJ T2.1 
~Kale, the halflings Jillian and Arvora...Gast and Stormaxe, may the rest and peace.~
EXTERN X3HelJ T2.4

CHAIN X3HelJ T2.3 
~Kale, as he could say for himself.~
== X3KalJ ~Aye. Me, Jillian Arvora, Stormaxe...and Gast.~
== X3HelJ ~May he and Stormaxe rest in peace.~
EXTERN X3HelJ T2.4

CHAIN X3HelJ T2.2
~Aye, the very, though it nay be their fault.~
EXTERN X3HelJ T2.4

CHAIN X3HelJ T2.4 
~I formed the group not very long ago, to fulfill my need to slay the monstrous entities about the land and fulfill my need for glory.~
= ~We scattered giants and vanquished tribes of hobgoblins and other dirty tasks for gold and glory. It was good while it lasted.~
END 
++ ~That sounds almost like slaughter for the heck of it.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~  + T2.5
++ ~What brought it to an end?~ + T2.6
++ ~I don't have time to listen to your old adventures.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T2.X 

CHAIN X3HelJ T2.5 
~Pah. Killing's just part of the work. And monsters deserve nothing less.~
EXTERN X3HelJ T2.6 

CHAIN X3HelJ T2.6 
~It was Stormaxe first, killed during a nasty ambush, then losing Gast afterwards to a deadly giant shaman brought down the spirit of the group. I admit I was a bit bitter when my leg didn't heal right towards the others.~
== X3HelJ ~Kale lost his da', and I think Arvora and Jillian were tired of me being mean when I was in pain.~
END 
++ ~You've not been so mean to me, yet.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T2.7 
++ ~Do you think you'll come together in the future again?~ + T2.8
++ ~I would be too, if a dwarf was grumbling at me.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T2.7 

CHAIN X3HelJ T2.7
~Hah, I suppose our temperament nay be gentle when we're in a foul mood. But I've done my best to temper myself with ye.~
EXTERN X3HelJ T2.9

CHAIN X3HelJ T2.8 
~Nay. I don't think so. Wouldn't feel right without Gaz and Stormaxe, really.~
EXTERN X3HelJ T2.9 

CHAIN X3HelJ T2.9 
~But enough of my yapping. We should get back to it.~
EXIT 

// 3
CHAIN IF ~Global("X3HelTalk","LOCALS",6)~ THEN X3HelJ Talk3
~Oh, good that we finally stop for a rest. Ye push us for long hours, sometimes.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~Is your leg hurting? I didn't mean to be inconsiderate.~  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T3.1 
++ ~You can handle it. This is what you want, isn't it?~  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T3.2 
++ ~I'm too tired to talk right now.~ + T3.X 

CHAIN X3HelJ T3.X 
~Then rest up. I'll see ye when ye wake up.~
DO ~RestParty()~
EXIT 

CHAIN X3HelJ T3.1 
~Don't fret. A bit sore but I've gotten more and more used to it. I'm just bloody damn hungry is all, and I'm tired of tack.~
END 
+~Global("X3HelPartyBG1","GLOBAL",1)~+ ~Ah, are you cooking something again? I remember your meals from our past time together.~ + T3.3
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ ~It's all that we have, I'm afraid.~ + T3.4
++ ~That would explain that odd noise that I heard earlier.~ + T3.5 
++ ~I am hungry and tired myself.~ + T3.4

CHAIN X3HelJ T3.2 
~Yeah, yeah. You sure are a sour leader as I was, at times. I'm just damn hungry and tired of tack.~
END 
+~Global("X3HelPartyBG1","GLOBAL",1)~+ ~Ah, are you cooking something again? I remember your meals from our past time together.~ + T3.3
+~!Global("X3HelPartyBG1","GLOBAL",1)~+ ~It's all that we have, I'm afraid.~ + T3.4 
++ ~That would explain that odd noise that I heard earlier.~ + T3.5 
++ ~I am hungry and tired myself.~ + T3.4 

CHAIN X3HelJ T3.3 
~Damn right. Sit tight and I'll have something cooked up in a moment. I always keep something nice and salted for when I get tired of all these damn biscuits.~
EXTERN X3HelJ T3.6 

CHAIN X3HelJ T3.4 
~Sit tight and I'll have something cooked up in a moment. I always have something nice and salted for when I get tired of all these damn biscuits.~
EXTERN X3HelJ T3.6 

CHAIN X3HelJ T3.5 
~Aye. Don't let an old dwarf woman starve if it bothers you. Now sit tight, I'll get something tastier cooked for all of us, tired of these damn biscuits.~
EXTERN X3HelJ T3.6 

CHAIN X3HelJ T3.6
~Treat yer companions well, <CHARNAME>. Good food can help with that. Nay  saying yer doing poor so far, but...spirit and morale can sure turn the tide of battle. I've learned the hard way that you nay want to be in an argument when ye get ambushed.~
END 
++ ~Is that what happened to your former companions you lost?~ + T3.7
++ ~I don't need any grandmotherly advice, thank you very much.~  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T3.9
++ ~I'll take your advice to heart.~  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T3.8


CHAIN X3HelJ T3.7 
~Aye. Stormaxe was a bit prickly sometimes, and being fellow dwarves, nay one of us were willing to back down on our opinions. Our last bout got rather loud and brought trouble to our step.~
== X3HelJ ~We got overwhelmed and lost him. Last thing I said to him was an apology. The bastard grinned and said he dies being in the right. Typical damn prideful oaf. I'll miss him.~
== X3HelJ ~Ah, looks like our meal is done here. Have a bite, tell me how it tastes.~
END 
++ ~Terribly salty. What did you do to this?~ + T3.11 
++ ~It's not bad, Helga. Thank you.~  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T3.10 
++ ~Er, I'm not hungry, actually. I'm going to get some rest.~  DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T3.X 

CHAIN X3HelJ T3.8 
~Good, good. I nay speak to be grim, just from experience.~
EXTERN X3HelJ T3.7 

CHAIN X3HelJ T3.9
~Pah. Ye would do well to listen to an experienced warrior. Ye nay wish to lose someone and regret it because of your stubbornness.~
EXTERN X3HelJ T3.7

CHAIN X3HelJ T3.10 
~Aye. It ain't the finest meal, but we served it to all our dwarven warriors back in my home temple. It made us strong and ignited our spirit of fire. Yer spirit and body will be strong for it, too.~
EXTERN X3HelJ T3.12 

CHAIN X3HelJ T3.11 
~Eh, I may have over-salted the meat. It be my mistake there, but it's still better than biscuits.~
EXTERN X3HelJ T3.12 

CHAIN X3HelJ T3.12 
~I'll be turning in now. Thanks for the time, <CHARNAME>. Let's hope we aren't ambushed by some damn pests before we get a full rest.~
DO ~RestParty()~
EXIT 

//Talk #4
CHAIN IF ~Global("X3HelTalk","LOCALS",8)~ THEN X3HelJ Talk4
~You ever resent your parents, <CHARNAME>? From what I understand of ye, this path of yers was nay by choice. A better parent may have been able to shield you better.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~Gorion did all he could do to help me. I just wish he was still alive.~ + T4.1 
++ ~I wish I wasn't kept in the dark for so long. I may have been able to be more prepared and keep Gorion alive.~ + T4.1 
++ ~I do, even my mother, though I have never known her.~ + T4.1
++ ~That is a personal question, Helga. I'd rather not answer.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T4.X 

CHAIN X3HelJ T4.X 
~As ye wish then. I'll leave ye be.~
EXIT  

CHAIN X3HelJ T4.1 
~I wonder sometimes if my grown children resent me for nay being available much. They're all trained in arms and have seen their own fresh battles now but have nay mother to go and listen to them.~
== X3HelJ ~I nay want to be the mum that retired and loafed around, bugging them when she'll have her grandchildren...though my people could use another line of warriors. But I do wish I could see them more.~
END 
++ ~Tell me about your children, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.2
+~Global("X3HelPartyBG1","GLOBAL",1)~+ ~You have two children, if I remember no? How are they getting along?~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.2 
++ ~They may. You should try to make time for them.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T4.3 
++ ~I don't think you have anything to worry about. You want to live, and I think they can respect that.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.4
++ ~We don't have time to chat about your children, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T4.X

CHAIN X3HelJ T4.2 
~Berk, my youngest, he serves as a sentinel in Firehammer Hold Fortress. He's content there, as far as I know, and serves them well. I couldn't be more proud.~
~Helen, my oldest, is a world traveling adventurer now, having left the fortress a summer ago. Takes after her mum, though she was nay into the faith practices like I was. Had the fortune to fight side by side with her once.~
== X3HelJ ~There be no greater pride to a dwarf than fighting shield to shield with her own spawn. If ye ever get the joy, <CHARNAME>, you will know you have lived a good life.~
END 
++ ~Were you not worried she might die?~ + T4.5
++ ~That sounds horrible to me. I'd never want kids, let alone to fight next to one.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T4.6 
++ ~I hope to get the chance one day, if fortune favors me.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T4.7
++ ~We don't have time to chat about your children, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T4.X

CHAIN X3HelJ T4.3 
~Aye, I may try in time, but they are nay anywhere close, and my leg is nay making a trek so far anytime soon.~
EXTERN X3HelJ T4.2 

CHAIN X3HelJ T4.4 
~Ye may be right, <CHARNAME>. Still, a mother likes to know she is loved. May be vain and weak for me to want affection...but I did give them so much.~
EXTERN X3HelJ T4.2 

CHAIN X3HelJ T4.5
~Nay. Some other parents may get extra watchful and overly protective, but that makes things worse. Ye need to have full trust, and I trust my daughter with my heart and soul.~
EXTERN X3HelJ T4.8

CHAIN X3HelJ T4.6 
~Pah. Ye don't have a strong belly for the most difficult task ye can ever do in life, then. You think adventuring is hard? Try raising a future one.~
EXTERN X3HelJ T4.8

CHAIN X3HelJ T4.7 
~You are with a servant of the Luckmaiden. Ye will have fortune, so long as ye have the courage.~
EXTERN X3HelJ T4.8 

CHAIN X3HelJ T4.8 
~All ye got to do is live through this, find a spouse, and maybe ye will get the opportunity to raise yer own adventurer someday. Just try not to damage yer bloody leg while yer at it. It be hard to do any of that with bad legs.~
EXIT 

// Talk 5 
CHAIN IF ~Global("X3HelTalk","LOCALS",10)~ THEN X3HelJ Talk5
~You the philosophical type, <CHARNAME>? A thinker, perhaps?~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~I'm not one for academic banters.~  + T5.1 
++ ~I do enjoy it. Why do you ask?~ + T5.2
++ ~I'm surprised you are asking such a question. You don't seem to hold any interest in intellectual thought.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.3
++ ~Is this really the time for such a question?~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.X 
~Bah. I nay see why it isn't a good time to give your thoughts. But we can chat another time, then.~
EXIT 

CHAIN X3HelJ T5.1 
~Aye, I figured as much. I myself prefer just swinging and getting into action. But the head priest back in the Firehammer Hold was never shy of sharing his philosophy of things.~
EXTERN X3HelJ T5.4

CHAIN X3HelJ T5.2 
~Our journey has me thinking of some of the things the head priest back in Firehammer hold would preach to us when we were all sitting around in Firehammer Hold doing too much drinking and too little swinging.~
EXTERN X3HelJ T5.4 

CHAIN X3HelJ T5.3 
~Pah, that I suppose is true, though you nay have to say it like I'm dumb. I was just thinking of some of the things our head priest back in Firehammer hold would say, when we were too comfortable with the luxuries of the fortress.~
EXTERN X3HelJ T5.4 

CHAIN X3HelJ T5.4 
~He told us "The best life is lived in the darkness of dungeons, daring and never nothing, in hostile territory and not safe, for the fruit of perfect life lies in the rot of war. A life of nothing is safe but no life at all."~
== X3HelJ ~I happen to believe he is right. Battle, war, bloodshed...nothing makes ye feel more alive, with your blood pulsing and your hand gripping your shield tight with every block of the blade counting for another breath ye get to take.~
== X3HelJ ~Governments promise protection and security, but that makes people dependent on them, and weak. People should learn to defend themselves, and thus learn the value of their life.~
END 
++ ~But not everyone can defend themselves, or pick up a blade. Those people do need to be protected.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.5
++ ~I happen to agree with you, really. I think you make a good point.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T5.6
++ ~And you really believe that rot? Your god is advocating for endless war just for the thrill of it!~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + T5.7
++ ~I don't really have an opinion.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.5 
~Hrm. Ye make a good point, I admit. <CHARNAME>. But does their life deserve that value? They have done nothing to earn it.~
END 
++ ~Despite our beliefs, each person's life matters, no matter what they are doing with it.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.8
++ ~I suppose you make a point there. I agree with you.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T5.9
++ ~If everyone could defend themselves, we wouldn't be able to make much money.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.10 
++ ~I don't really have any thoughts on this, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.6
~Ha, of course I make a good point. In our line of business they stress every life matters, and many do. But many waste every bit of it. And those ought to learn to defend themselves, and not rely on their damn king or council.~
END 
++ ~Some, no matter how hard they try, just aren't good at it.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T5.11 
++ ~Not everyone wants to fight. There are other ways you can contribute and make a life other than war.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.12 
++ ~If everyone could defend themselves, we wouldn't be able to make much money.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.10 
++ ~I don't really have any thoughts on this, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.7 
~There have been centuries of war, <CHARNAME>. And there will be centuries more. It makes the world better, nay worse.~
END 
++ ~I just can't agree with that. I feel like we should be working against such bloodshed.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.13 
++ ~That's a pragmatic thought. I think you are right with that.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.9
++ ~It is good for us. Others hardship allows us to profit and become stronger.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T5.10
++ ~I don't really have any thoughts on this, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T5.X 

CHAIN X3HelJ T5.8 
~Pah. I nay think that be worth defending much. My people in the hold, and dwarf people in general are all battle ready. Still, it be good to converse on this a little, and learn a bit of each other's beliefs.~
EXIT 

CHAIN X3HelJ T5.9 
~We have similiar beliefs then, <CHARNAME>. It be good to know that the younger generation isn't lost without us veterans. This was nice to talk about, to spend a bit of time to learn about each other. But the journey calls us, and I nay take away from our focus for dawdling over such talk.~
EXIT 

CHAIN X3HelJ T5.10 
~Heh. That be very true, <CHARNAME>. For their inability, we do profit in gold and glory, and I suppose there be opportunity in there for us. Ye make a good point, and I'll leave it there for now.~
EXIT 

CHAIN X3HelJ T5.11 
~ANd those I fear, will be the ones we spend resources in on soldiers, and many nations nay like doing that. It be why I stand they need to learn to fight when their nation, like some of these human ones, won't fight for them. It happened about Baldur's Gate with the Flaming Fist ignoring whole regions in that iron crisis, and it can happen again.~
EXIT 

CHAIN X3HelJ T5.12 
~Hrngh. Perhaps. There be making weapons, if that count. Though I think ye meant something else, and I nay sure if I agree with that. We'll have to leave our talk at a disagreement, for now. In time when you become a veteran, you may yet see it my way.~
EXIT 

CHAIN X3HelJ T5.13
~But to work against it, ye must utilize it. It be a great paradox, but ultimately one ye must accept. No good, permanent change can come without some drops of blood spilled on the burning field of battle. I'll leave it at that for ye to think on and decide for yerself.~
EXIT 

//6 

CHAIN IF ~Global("X3HelTalk","LOCALS",12)~ THEN X3HelJ Talk6
~If I were nay a priestess, fighting in the arena like we did...that would be a life I would long for. Everyday a battle for glory.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
+~Global("X3HForfeit","GLOBAL",1)~+ ~It was fun, though I wish we had won.~ + T6.1 
++ ~It was a nice, profitable distraction. A true test of strength.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T6.2 
++ ~I regret partaking. I do not enjoy fighting for sport.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + T6.3 
++ ~This is no time for reminiscing.~ + T6.X

CHAIN X3HelJ T6.X 
~For ye, maybe. For I? Heh, I'll be reliving the moments for a while.~
EXIT 

CHAIN X3HelJ T6.1 
~Aye. Winning...winning be the whole point. Nay dwarf enjoys the humbling nature of defeat. We are too proud for that. Better to go down dying.~
EXTERN X3HelJ T6.4

CHAIN X3HelJ T6.2 
~Heh, the gold was nice as well. Deserved reward for our glory.~
EXTERN X3HelJ T6.4 

CHAIN X3HelJ T6.3 
~Ye nay like fighting for sport despite often being in the fray of battle? Ye are an odd little creature that makes little sense to me.~
EXTERN X3HelJ T6.4 

CHAIN X3HelJ T6.4 
~When I was a wee girl we often dueled in our own pit in the fortress once a tenday. We'd face off against one dwarf called the Shield, who would hold only a shield as her arms and face on us trainees.~
== X3HelJ ~We all wanted the glory in beating her. But no one ever did. Even if we worked together, her self-defense was so impeccable it was a weapon of her own.~
== X3HelJ ~The fighting in that pit made me think of her. She was my favorite tutor, but I hope I do her proud.~
END 
++ ~What happened to her?~ + T6.5 
++ ~How did she win without a weapon?~ + T6.6
++ ~I am sure you do, Helga. You're an asset to us.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T6.7 
++ ~We should get going. We can talk more later.~ + T6.8

CHAIN X3HelJ T6.6 
~She'd tire us out, then bash us hard with her shield. Damn, it hurt. Ye'd have a headache for a while after it.~
EXTERN X3HelJ T6.5 

CHAIN X3HelJ T6.7 
~Ye are kind to say, and I admit I agree with yer assessment. But the Shield never really gave her thoughts. She was reserved, dour, and strong. A true paragon of our people.~
EXTERN X3HelJ T6.5

CHAIN X3HelJ T6.8 
~Aye, perhaps I be yapping too long about old times. Let us be carrying on.~
EXTERN X3HelJ T6.5

CHAIN X3HelJ T6.5 
~Sadly, age remains undefeated when it comes to my people. It took her and made her last months a miserable sight.~
= ~She is nay coming back to this world, but I can continue her legacy. I could be a tutor for ye, when ye want and need it.~
END 
++ ~I'd be glad to take your teachings, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",2)~ + T6.9
++ ~You don't have to follow her steps. I think you're doing fine leading life your way.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + T6.10
++ ~I don't need your teachings. I am just fine.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-2)~ + T6.11 

CHAIN X3HelJ T6.9
~Aye, my wisdom is years, then, so long as ye take heed of it. Just don't make me feel any older than I am. Even thinking about it makes me prefer older times of getting bashed in by a shield.~
EXIT 

CHAIN X3HelJ T6.10 
~Nay, I don't, and ye make a good point. Perhaps being a tutor of sorts nay suits me, but I be here if ye need advice. Can't promise it won't take in the form of a bashing shield, though.~
EXIT 

CHAIN X3HelJ T6.11 
~Bah, suit yerself then if you are so sure. You younglings are always so sure of yerselves.~
EXIT 
// Each of these has a different start, but they will all lead to the same blocks.
CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("AerieRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Aerie 
~Ye and the wingless elf are rather close, I've seen. Nay sure the wisdom in that.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("AnomenRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Anomen
~Ye have a close bond with that Anomen, I have noticed. Can nay say I approve.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("JaheiraRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Jaheira 
~Yer with the tree hugger, eh? We aren't blind. But nay sure wthat is the best idea.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("ViconiaRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Viconia 
~So ye've gotten intimate with the drow. It be a foolish choice you've made.~ 
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("RasaadRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Rasaad 
~You and the monk, huh. You ever think of the ramifications of this?~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 


CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("NeeraRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Neera 
~I got one question for ye, <CHARNAME>. Are you mad, getting in a relationship with a wild mage?~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("DornRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Dorn 
~Dorn is a respectable warrior, I will give him that. But do ye really think a relationship with him is a good idea?~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("HexxatRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Hexxat
~Seduced by the vampire. Ye make a grave mistake, <CHARNAME>.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("C0SireneRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Sirene 
~That tiefling be a good soul, despite her roots, <CHARNAME>. Getting close as ye have will only do her harm.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("L3PetsyRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Petsy 
~Hrngh. I've been watching ye with that halfling bard, <CHARNAME>. I ain't for it.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("YvetteRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Yvette 
~Ye and that...picture girl priestess. Ye really think it's a good idea to get close to her?~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3EmiRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Emily 
~The aasimar, huh? Just because her ancestry is interesting doesn't mean it's a good idea to get so close to a companion.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3KalRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Kale 
~I've seen how close ye and Kale have been lately. I like the lad...but ye and him together is a poor idea.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3RebRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Recorder
~I've seen how close ye have been to the bard that's been writing of ye. Ain't that a bad idea?~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 

CHAIN IF ~Global("X3HelTalk","LOCALS",14)Global("X3VieRomanceActive","GLOBAL",2)~ THEN X3HelJ Talk7.Vienxay
~Ye and Vienxay...yer taste be poor as moldy ale. Even if it weren't her, it be a poor choice to make.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~How do you know about us?~ + 7.1 
++ ~Why do you say that?~ + 7.2 
++ ~I do not care what you think.~ + 7.3
++ ~It's none of your business, and I'm not going to talk about it.~ + 7.X 
 

CHAIN X3HelJ 7.X
~If ye want to be a fool, then be a fool. Yer enemies will take advantage of yer lack of thinking, at the cost of those close of you.~
DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~
EXIT 

CHAIN X3HelJ 7.1
~Ye think I'm blind? Deaf? Dumb? I've been in a relationship, had a husband once. I know how people glow and prattle and get distracted, especially when its young.~
EXTERN X3HelJ 7.2

CHAIN X3HelJ 7.2 
~Think of all that has happened to ye. Do ye really think that your enemies won't use your relationship to their advantage?~
== X3HelJ ~If we get in a crisis, where ye have to choose between the people ye are trying to save, and yer lover, who would you choose?~
END 
++ ~That question is ridiculous.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 7.4
++ ~You are asking a hypothetical. You can never know this will even happen.~ + 7.5 
++ ~My lover comes first, before all others.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 7.6 
++ ~I'd do the right thing. I wouldn't be selfish.~ + 7.7
++ ~I don't know, Helga!~ + 7.7

CHAIN X3HelJ 7.4
~Is it? Can ye say ye really wouldn't favor them in a fight, protecting them with yer abilities over others? Love makes things unequal. Love can be a dangerous, costly distraction.~
EXTERN X3HelJ 7.9

CHAIN X3HelJ 7.6 
~I've been in many battles, <CHARNAME>. There be a reason why soldiers back in Torstultok were discouraged from dalliances with one another. The ideal, the cause, always should be first, lest you risk the whole group failing.~
EXTERN X3HelJ 7.9 

CHAIN X3HelJ 7.7
~I know the power of young love. Emotion has a strong pull. Do nay underestimate it.~
EXTERN X3HelJ 7.9

CHAIN X3HelJ 7.9
~I only want to warn ye, <PRO_GIRLBOY>, before ye get into this situation.~
END 
++ ~Are you asking me to end things?~ + 7.10 
++ ~I am not going to just stop caring about someone because of the fear that something *might* happen.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 7.11 
++ ~I will think about this, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 7.11

CHAIN X3HelJ 7.10 
~Nay. That be yer choice. I am only asking ye to consider real hard if yer focus should really be on some fling over the task at hand.~
EXIT 

CHAIN X3HelJ 7.12 
~Good. I nay mean to be hard on ye. I just want you to understand that some fling may nay be worth lost focus on the task at hand.~
EXIT 

CHAIN X3Helj 7.11 
~Then ye are nay wise. Your dalliance isn't worth some lost focus at the task at hand. I've given my advice, do with it as ye will.~
EXIT 

CHAIN X3HelJ 7.5 
~Can I? I've lost my spouse. I've made poor decisions in battle trying to protect him first. Love makes things dangerous in battle, especially when it is still a young flame.~
EXTERN X3HelJ 7.9

CHAIN X3HelJ 7.3 
~Ye say that now. I would have said that when I was a younger dwarf too, until I understood the consequences.~
EXTERN X3HelJ 7.2 

CHAIN IF ~Global("X3HelTalk","LOCALS",16)~ THEN X3HelJ Talk8 
~I wish to say I owe ye an apology, <CHARNAME>. I may have been too harsh in what I said to ye.~
DO ~IncrementGlobal("X3HelTalk","LOCALS",1)~
END 
++ ~I forgive you, though I would prefer you trust me more on this in the future.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 8.1 
++ ~You have had a change of heart?~ + 8.2 
++ ~You seemed quite certain that my relationship was wrong.~ + 8.3 
++ ~Forget it, Helga. Just drop it.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + 8.X

CHAIN X3HelJ 8.X 
~Bah! If that is how ye wish to be, then fine.~
EXIT 

CHAIN X3HelJ 8.3
~Nay the relationship necessarily. Just the distraction it could provide.~
EXTERN X3HelJ 8.4 

CHAIN X3HelJ 8.2 
~I have had more time to think on it, aye.~
EXTERN X3HelJ 8.4 

CHAIN X3HelJ 8.1
~Aye, we have traveled for a while and I should nay have the distrust I had, though it is what I felt.~
EXTERN X3HelJ 8.4

CHAIN X3HelJ 8.4
~I have traveled and fought for the dwarven people for many decades. I've seen soldiers throw their lives away so someone they loved could cherish.~
== X3HelJ ~I've seen good dwarves fight harder when these people around. And nay commander or captain could tell them to do any differently. Nor should I try.~
== X3HelJ ~What ye have may not last, but that is all the more reason to cherish it, not be afraid. I disbelieved it would weaken yer fight. But after watching ye, I nay believe that anymore.~
END
++ ~I am glad you had a change of stance.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 8.5 
++ ~You weren't all wrong, before. And I still will take what you said in mind.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",4)~ + 8.6 
++ ~Good. Do not question my decisions any further.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-3)~ + 8.7 
++ ~And here I thought it was just jealousy fueling your remarks.~ + 8.8

CHAIN X3HelJ 8.5 
~Just for the love of Moradin, make sure yer tent is set well away from me. I don't want to be hearing those damn sounds. Bloody young couples.~
EXIT 

CHAIN X3HelJ 8.6
~Aye, what I said before wasn't all wrong. Just said all wrong. But as long as ye have a bit of caution, ye'll be fine, <CHARNAME>.~
EXTERN X3HelJ 8.5 

CHAIN X3HelJ 8.7 
~Bah. Ye and yer damn pride. Have it as ye will.~
EXTERN X3HelJ 8.7

CHAIN X3HelJ 8.8 
~Ha! Jealousy? Ye both are far too young for me. Nay. I have my husband's memory. It's enough for me. But seeing a bit of love does bring a bit of warmth to my bones.~
EXTERN X3HelJ 8.5

//Talk9

CHAIN IF ~Global("X3HelUTalk","LOCALS",2)~ THEN X3HelJ Talk9
~The Underdark. A battlefield I have never been acquainted with. My blood quickens, my axe hand aches. If I get a chance to kill some drow and duergar while we're down here, all the better.~
DO ~IncrementGlobal("X3HelUTalk","LOCALS",1)SetGlobal("X3HelAppChange","GLOBAL",6)~
END 
++ ~You seem quite comfortable with the fact we have to be here right now.~ + 9.1 
++ ~I would rather avoid any such creatures.~ + 9.2
++ ~We'll find plenty to battle down here.~ + 9.3 
++ ~Ssh. Be quiet and let's keep moving.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 9.X

CHAIN X3HelJ 9.1 
~I am, if "comfortable" even be the right word. But I'm not the one who is missing my soul.~
EXTERN X3HelJ 9.4 

CHAIN X3HelJ 9.X 
~What, ye see an enemy? Bah, as ye wish.~
EXIT 

CHAIN X3HelJ 9.2 
~Then we were better off not ever stepping foot in this bloody place. But we have no choice, do we?~
EXTERN X3HelJ 9.4 

CHAIN X3HelJ 9.3 
~Aye, and that is enough to get the blood quickening. All sorts of horrors and tales ye have only heard of we'll see with our own eyes.~
EXTERN X3HelJ 9.4 

CHAIN X3HelJ 9.4 
~How are ye holding up? I've never heard of anyone going through a predicament where they are bloody soulless and still alive.~
== X3HelJ ~Ye are a Bhaalspawn and still alive. But I imagine if ye were killed, I'd nay be able to raise ye. Ye let me know if ye need anything, eh? Don't want you suddenly dropping on me.~
END 
++ ~I feel...hollow. And I don't like the idea of seeing what happens if we take too long to get my soul back.~ + 9.5 
++ ~I am mostly just angry. Very angry. And when I find Irenicus, he will feel my entire rage.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 9.6
++ ~I have no plans of dying, Helga.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",3)~ + 9.7

CHAIN X3HelJ 9.5 
~Aye, I nay like the thought either. This entire ordeal is unnatural.~
EXTERN X3HelJ 9.8

CHAIN X3HelJ 9.6 
~Heh, ye will find the bastard. And I'll be there right next to ye ready to hammer his head.~
EXTERN X3HelJ 9.8

CHAIN X3HelJ 9.7
~Ye better not. I mean it when I say it...if ye were to die right now, there be nothing I could do for ye.~
EXTERN X3HelJ 9.8

CHAIN X3HelJ 9.8
~I hope ye have a plan. Getting through this place back to Irenicus will be no easy tasks. Save the Svirfneblin, there be few goodly beings that make their home down here.~
END 
++ ~The Svirfneblin?~ + 9.9 
++ ~I've not led us astray so far, have I?~ + 9.10
++ ~I'll figure it out.~  + 9.11

CHAIN X3HelJ 9.9 
~There are a type of deep gnome. Dark husky skin, and very cautious about everything. But they have a friendship with my people in some dwarven kingdoms.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~They are very different from us rock gnomes. I would be very interested in meeting one.~
== X3HelJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~This is nay study trip, Recorder. I doubt <CHARNAME> will have time to let you just question one about their lives.~
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN ~I would not do that many questions. Just a few. And then a little more...er, never mind me.~
EXTERN X3HelJ 9.12 

CHAIN X3HelJ 9.12
~Besides the Svirfneblin, I would trust nothing down here. Keep yer weapons close. Getting caught unprepared will be our death.~
EXIT 

CHAIN X3HelJ 9.10 
~Not led us astray? We are in the *Underdark*, <CHARNAME>. Ye can nay get more astray than this.~
EXTERN X3HelJ 9.12

CHAIN X3HelJ 9.11 
~Best ye come up with something quickly. The less days we spend in here, the better. I like a cave as much as any other dwarf, and the battles to come here will be the stuff of stories, I imagine.~
== X3HelJ ~But there is a reason they tell horror stories. Best we nay test just how much your soul-less self can endure.~
EXIT 

//Post Underdark Departure
CHAIN IF ~Global("X3HelFTalk","LOCALS",2)~ THEN X3HelJ Talk10
~It seems the conclusion of our journey is simple enough. Take down Bodhi, and then take down Irenicus.~
DO ~IncrementGlobal("X3HelFTalk","LOCALS",1)~
END 
++ ~How are you holding up? I seem to remember your leg was hurting at the beginning of our journey.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 10.1 
++ ~Do you trust these elves? They seemed to be withholding things from us.~ + 10.2 
++ ~Simple as that. Let's get to it.~ + 10.X 

CHAIN X3HelJ 10.X 
~Aye! Let's blast both Bodhi and Irenicus to the fugue and see this done with.~
EXIT 

CHAIN X3HelJ 10.1
~It's nay feeling worse or better to be honest. But the dwarven body finds ways to compensate for an imperfect leg, and I've found my own ways to do that.~
== X3HelJ ~No enemy seems to have successfully exploited the difference, so I'm still standing, eh?~
END 
++ ~Do you trust these elves? They seemed to be withholding things from us.~ + 10.2 
++ ~Let's get to it.~ + 10.X 

CHAIN X3HelJ 10.2 
~Typical elf, if you ask me. Not as nice as most people think they are and slim as damn sticks. Slow to make friends, and slower to trust.~
== X3HelJ IF ~InParty("X3Vie")~ THEN ~No different from our own snobbish elf.~
== X3VieJ IF ~IsValidForPartyDialogue("X3Vie")~ THEN ~We have our reasons. Our trust is easily and often betrayed by fools who seek to take advantage.~
END 
+~Race(Player1,ELF)~+ ~Hey, I don't think I am like that at all.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",-1)~ + 10.5
++ ~You have a point, I suppose.~ DO ~IncrementGlobal("X3HelAppChange","GLOBAL",1)~ + 10.4 
++ ~They seem to be our allies at least.~ + 10.3 
++ ~We've talked enough, I think.~ + 10.X 

CHAIN X3HelJ 10.3 
~Barely. They aren't sending any of their own after this Bodhi. I hope we can find some help when we go after that damn vampire.~
EXTERN X3HelJ 10.6 

CHAIN X3HelJ 10.6
~But enough yap. The vampire isn't going to die by herself. Let's get to it.~
EXIT 

CHAIN X3HelJ 10.5 
~I did not know ye were a bloody Bhaalspawn when I first traveled with ye. I think ye aren't so different from the rest of yer kin.~
EXTERN X3HelJ 10.6

CHAIN X3HelJ 10.4 
~I've had my experience. Rarely met elves like this them back at the temple of Haela, but they held as little fondness for dwarves as we did for them.~
EXTERN X3HelJ 10.6 

APPEND X3HelJ 

// Break Approval
IF ~Global("X3Break","LOCALS",1)~ Break
SAY ~Bah! Listen up, ye damn <PRO_GIRLBOY>.~ 
= ~Maybe ye was never taught to respect yer elders, yer veterans, or even yer damn fellow companions. I've tolerated it for a time. But nay more! Ye and I be done.~
++ ~This is my fault? Respect is earned.~ + Break.1 
++ ~What did I even do?~ + Break.2 
++ ~Helga, I'm sorry. I've not meant any disrespect.~ + Break.8
END 

IF ~~ Break.1
SAY ~Bah! That ye think it hasn't been, <PRO_GIRLBOY> is nothing short of shameful!~
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY ~Nay listen. Nay act sensibly. Nay be someone worth standing next to.~ 
IF ~~ + Break.3 
END

IF ~~ Break.8 
SAY ~Yer "sorry" doesn't change what was done.~
IF ~~ + Break.3 
END  

IF ~~ Break.3 
SAY ~It be time for me to depart and find others more worthy of me comradery.~
++ ~Fine. Though whoever you find next will find little worth.~ + Break.4
++ ~As you wish. But what you have was earned by myself. So your equipment is mine.~ + Break.5
++ ~Give me another chance. I promise I will be better to you.~ + Break.6 
END 

IF ~~ Break.4 
SAY ~I ought to battle ye for that insult. But I'll nay give ye even whatever honor that be worth.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.5 
SAY ~I spit on you! Have it ye bloody git! I nay want anything ye've offered to me anyway.~
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)GivePartyAllEquipment()LeaveParty()EscapeArea()~
EXIT 
END 

IF ~~ Break.6
SAY ~...Bah. Ye have had yer moments. And for those alone...I'll give it one last chance.~
//While it is a medium shown message, the increase is 15.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)SetGlobal("X3HelApp","GLOBAL",-25)DisplayStringNoNameDlg(Player1,@216)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY ~Bah! What were my words even worth to you? Again and again, ye nay listen! Ye nay care!~
= ~I be leaving, and I nay wish to see ye again. Or if we do...it will nay be as companions, but enemies with how ye treat yer path!~
// Leaves for good, cannot be recruited.
IF ~~ DO ~SetGlobal("X3Break","LOCALS",4)LeaveParty()EscapeArea()~
EXIT 
END 
// PID 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN Normal.PID 
SAY  ~Yes, what do you need?~ [X3HeCom2]
++ ~I have a question.~ + Question.PID 
++ ~Do you mind if I meet with you when we next make rest in a safe place?~ DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ ~Never mind.~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("X3EmiApp","GLOBAL",44)~ THEN BEGIN High.PID 
SAY  ~Well met.~ [X3HeCom3]
++ ~I have a question.~ + Question.PID 
++ ~Do you mind if I meet with you when we next make rest in a safe place?~ DO ~SetGlobal("X3RestInvite","GLOBAL",2)~ + ForceRestTalk
++ ~Never mind.~ EXIT 
END  

 
IF ~~ Question.PID
SAY ~Ask.~
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your family?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about your faith.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith 
+~Global("X3PIDCON3","LOCALS",0)~+ ~So how old are you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ ~Never mind. Let's keep moving.~ EXIT 
END 

IF ~~ MoreQuestion.PID 
SAY ~What now?~ [X3HeCom1]
+~Global("X3PIDCON1","LOCALS",0)~+ ~Can you tell me a bit about your home?~ DO ~SetGlobal("X3PIDCON1","LOCALS",1)~ + PID.Home
+~Global("X3PIDCON1","LOCALS",1)~+ ~Can you tell me more about your family?~ DO ~SetGlobal("X3PIDCON1","LOCALS",2)~ + PID.Family
+~Global("X3PIDCON2","LOCALS",0)~+ ~I'd like to know more about your faith.~ DO ~SetGlobal("X3PIDCON2","LOCALS",1)~ + PID.Faith
+~Global("X3PIDCON3","LOCALS",0)~+ ~So how old are you?~ DO ~SetGlobal("X3PIDCON3","LOCALS",1)~ + PID.Age
++ ~That's all I had to ask. Let's keep moving.~ EXIT 
END 

IF ~~ PID.Home 
SAY ~Aye, though 'tis nay a grand place. Not a pastoral farm nor a great dwarven hall.~
= ~Torstultok, the Hall of Grand Hunts. The great fortress keep of the Forlorn Hills. It is a quiet lonely place to grow as a child, but nowhere else is more secure.~
= ~Ruins of fallen kingdoms lay scattered about the hills and sprawling tunnels. The entire land would just give you a thirst for exploration and adventure. If it wasn't Haela that captured your spirit, it was Dumathoin.~
++ ~Were those ruins dangerous?~ + PHome.1 
++ ~What of your parents?~ + PHome.2
++ ~Why did you leave?~ + PHome.3 
END 

IF ~~ PHome.1 
SAY ~Aye. Many old traps and puzzles would keep you out, and the dead did not always rest easy.~
= ~It only spurned me on to be a priestess of Haela. The ruins were often trial grounds to be a Luck Maiden, and I remember returning to my parents after my first successful trial.~
= ~Damn proud they were. I was their little watermelon into a true warrior.~
++ ~Watermelon?~ + PHome.4
++ ~What of your parents?~ + PHome.2
++ ~Why did you leave?~ + PHome.3 
END 

IF ~~ PHome.2 
SAY ~They lived their entire lives there. They served as guardians of the land and ensured we were rarely seen in the area except when we needed engage in battle or aid an ally.~
= ~They had passed on my last visit there, hours apart. I will always remember them fondly.~
++ ~Why did you leave?~ + PHome.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PHome.3 
SAY ~Once my children grew up, the Keep grew quiet. Less tasks for our warriors and more waiting, and I thirsted for more tales. So I left and went south, and you know the rest.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PHome.4
SAY ~A childhood nickname. I loved the damn fruit. Liked to spit the seeds at targets for practice.~
++ ~What of your parents?~ + PHome.2 
++ ~Why did you leave?~ + PHome.3
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
END 

IF ~~ PID.Family 
SAY ~Aye I can. I never grow tired talking about Helen and Berk.~
= ~I raised them with devotion, retired from adventuring once Helen was born. Raised them both as proper warriors. They were nay interested in being priests, but I respect the path they took all the same.~
= ~Helen is an adventurer now, wandering the lands like I am and forging her own legacy. Damn proud, I am. I fought alongside her once and she takes well after me.~
+~Global("X3PIDSON","LOCALS",0)~+ ~What about your son?~ DO ~SetGlobal("X3PIDSON","LOCALS",1)~ + PFamily.1
+~Global("X3PIDHUS","LOCALS",0)~+ ~What of your husband?~ DO ~SetGlobal("X3PIDHUS","LOCALS",1)~ + PFamily.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.1 
SAY ~Berk is still at the hall, serving as a sentinel. When he's ready, I am sure he'll depart and forge his story as well.~
= ~Damn sweet lad and devoted to his home. He may adventure out one day, I knew he was growing restless when I last spoke. He doesn't have the experience of his sister, but I hope he does well when he's ready.~
+~Global("X3PIDHUS","LOCALS",0)~+ ~What of your husband?~ DO ~SetGlobal("X3PIDHUS","LOCALS",1)~ + PFamily.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFamily.2 
SAY ~I lost him years ago against giants. Its the reason why I love clobbering them when  I can.~
= ~Nay pity me. He fought a good fight and died a good death, and lived a good husband and father. That is more than a wife can ask for.~
+~Global("X3PIDSON","LOCALS",0)~+ ~What about your son?~ DO ~SetGlobal("X3PIDSON","LOCALS",1)~ + PFamily.1
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Faith 
SAY ~Aye, gladly.~
= ~Haela Brightaxe is a goddess for those who love battle and find joy in it, as I do. She is different from the other Morndinsamman, less orderly and bound to all the ways, but she is still widely respected in the realms.~
= ~We were an all female order until the last few years, where we have had a few males join our ranks. My own rank in the church is Flamebolt, though that holds meaning only in the fortress-keep~
= ~We are trained to use any weapon, but you'll still find me favoring the traditional cleric arms, unless I summon the blessing for the blade.~
++ ~Why did you worship her yourself?~ + PFaith.1
++ ~How does one become a member of the faith?~ + PFaith.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.1 
SAY ~There is nay complex reason for it. I was in Haela's keep and enjoyed the thrill of danger and battle. I was a good fit, and my parents had pushed me to join her ranks.~
= ~I have no regrets. I never will.~
++ ~How does one become a member of the faith?~ + PFaith.2
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PFaith.2 
SAY ~To become a priestess, one must fight in battle and know their first kill. You are sent off to a nearby ruin or towards an enemy of the people, and are to return with it defeated.~
= ~Those who succeed are bestowed the title of First Blood from the Hallowed Crimson, the eldest of the faith.~
= ~Those who fail are honored for their bravery. I still remember the joy of mine. To be triumphant in battle, there is no greater joy save dying while taking down as many as you can with you.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PID.Age 
SAY ~Older than you. Does it bloody matter?~
++ ~No need to be grumpy about it. I am just curious.~ + PID.Age1
++ ~Not, really no.~  + PID.Age1
++ ~Just tell me, will you?~  + PID.Age1
++ ~Okay, never mind. Let me ask you something else.~ + MoreQuestion.PID 
END 

IF ~~ PID.Age1
SAY ~Hrngh. A hundred and ninety-five summers.~
++ ~Okay, that is *old*.~ + PAge.1 
++ ~Is that young for a dwarf?~ + PAge.2 
++ ~Well. No doubt about it. You are older than me.~ + PAge.2 
END 

IF ~~ PAge.1 
SAY ~Pah. There are older dwarves. I've got a good century left if I take care of myself. But I'd rather not die venerable and sick. Battle is a better death.~
++ ~I can understand where you come from.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + PAge.3
++ ~Ah, but would it not be better to die having triumphed over all odds?~ + PAge.4
++ ~You could die from many things. We don't get to choose how our story ends.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~ + PAge.5
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.2 
SAY ~Nay! Certainly not, but there are older dwarves. I've got a good century left if I take care of myself. But I'd rather not die venerable and sick. Battle is a better death.~
++ ~I can understand where you come from.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",3)
DisplayStringNoNameDlg(Player1,@213)~ + PAge.3
++ ~Ah, but would it not be better to die having triumphed over all odds?~ + PAge.4
++ ~You could die from many things. We don't get to choose how our story ends.~ DO ~IncrementGlobal("X3HelApp","GLOBAL",-1)
DisplayStringNoNameDlg(Player1,@203)~ + PAge.5
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.3
SAY ~With ye, I may get that good death, or it may come far in the future. But Haela's work is best served on the field, and to die for such a cause...there be no end as glorious.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.4 
SAY ~There can be glory in that. But nay if one sits on their laurels pleased with the few great battles they have fought. There will always be enemies of the dwarven people or the times. Damn if I will ever ignore them.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ PAge.5 
SAY ~But we get to choose how we want it to play out. And I am going to influence my tale to end with the clang of metal and the fury of blood.~
++ ~Let me ask you about something else.~ + MoreQuestion.PID 
++ ~Let's keep moving.~ EXIT 
END 

IF ~~ ForceRestTalk
SAY ~Hrngh, yer probably just after my grub, but if ye wishes, so be it.~
IF ~~ EXIT 
END 

END 