BEGIN X3VSAG25 
// Vienxay's Throne of Bhaal event. The Sage only spawns if he was met.
CHAIN IF ~IsValidForPartyDialogue("X3Vie")!Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 Vienxay_no_book
~If it isn't the exile, Vienxay Starlight.~
DO ~SetGlobal("X3VEvermeetEnd","GLOBAL",-1)~
== X3Vie25J ~Sage. It is surprising to see you here. Before you start, neither I nor <CHARNAME> do not require any information from you, and I do not want to hear more criticism about my life choices.~
== X3VSAG25 ~I only wish to say that your sisters miss you. Your youngest sister, Mina, is getting married, and laments that you cannot attend.~
== X3Vie25J ~What? Ugh, this is so infuriating. Can there be no visiting exception?~
== X3VSAG25 ~Sometimes the decisions of one family member impacts them all. There is nothing to be done, only the living of the consequences you created for yourself.~
END 
++ ~Are you only speaking to bring more torment to Vienxay? Leave us alone, old elf.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@513)~  + torment 
++ ~He is right, Vienxay. It isn't fair to them, but we have to live with the consequences that we wrought.~ + consequences 
+~ReputationGT(Player1,12)~+ ~Surely he can at least bring back a message, and tell them you are all right?~ DO ~IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@513)~ + message
+~ReputationLT(Player1,13)~+ ~Surely he can at least bring back a message, and tell them you are all right?~ + no_message

CHAIN X3VSAG25 torment 
~I have no intentions of doing that. I only gave family news she would never have known any other way.~
END 
IF ~ReputationLT(Player1,13)~ EXTERN X3VSAG25 low_rep 
IF ~ReputationGT(Player1,12)~ EXTERN X3VSAG25 normal_rep 

CHAIN X3VSAG25 consequences 
~That we must, for what we do in our past is carved into our present mold. We may reshape it but it takes years and years for the new look to take effect in others minds, and sometimes, far more than a lifetime.~
END 
IF ~ReputationLT(Player1,13)~ EXTERN X3VSAG25 low_rep 
IF ~ReputationGT(Player1,12)~ EXTERN X3VSAG25 normal_rep 

CHAIN X3VSAG25 message 
~That I can do. What would you like me to say, Vienxay?~
EXTERN X3Vie25J family_message

CHAIN X3VSAG25 no_message 
~I will not do that. Not when you have taken no lessons from your exile, and have done nothing to improve your reputation or family name in light of your sins. Your present company may have saved Suldanessellar, but they are also the cause for why it came under danger.~
EXTERN X3Vie25J retort 

CHAIN X3VSAG25 low_rep 
~You are not much better, <CHARNAME>. From all that I have gathered, despite being the savior of Suldanessellar, you also endangered it.~
EXTERN X3Vie25J retort 

CHAIN X3Vie25J retort 
~What foul twisted words. Where was Evermeet in a crisis of our people? Away in its haven, doing *nothing.* Perhaps it is best that I left if you are now pointing fingers at my friend.~
== X3VSAG25 ~Your friend brings nothing but destruction and lack of care for others. It is a pity you are learning nothing and in with such a crowd. It is best your family knows nothing of what you do, for you walk further away from the father's love.~
== X3VSAG25 ~This inn is suddenly very uncomfortable with you here. Excuse me.~
DO ~EscapeArea()~ 
EXIT 

CHAIN X3VSAG25 normal_rep 
~I have heard of what you did in Suldanessellar, and your family would be proud of that. And despite the ill rumors of your friend, Vienxay, I have heard much of the good they've brought to the region of Amn as well.~
== X3Vie25J ~I will tell your family you are well, and perhaps you will have other words you wish them to hear.~
EXTERN X3Vie25J family_message

CHAIN X3Vie25J family_message 
~Tell them, that I wish Mina happiness in her marriage to whoever it is, and that Lina make sure he is a good elf, and that she doesn't eat too many sweets, and maybe considers naming a child after me, so they can do better with my own name.~
== X3Vie25J ~Tell my mother and father that I am sorry for the pain I've caused. Tell them that I am still okay, have gotten used to the non-human lands, and have become okay with never returning again, save for the loss of their presence.~
== X3Vie25J ~And that one day, I hope they can come and see me, and we can try to catch up for lost time.~
== X3VSAG25 ~Very well, Vienxay. I will depart this inn and prepare for my travels now. When I arrive to Evermeet, be ensured they will hear your message just as it was spoken to me. May the Father Correlon protect you on your journey.~
DO ~EscapeArea()~ 
EXIT 

// This version runs if Vienxay gave the sage the book.
CHAIN IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 Vienxay_book
~Vienxay! Faerûn is so small it seems. Turmoil is rampant here, though amidst it all I do have good news to deliver you.~
DO ~SetGlobal("X3VEvermeetEnd","GLOBAL",1)~
== X3Vie25J ~The tome we gave you is delivered to Evermeet, I assume?~
== X3VSAG25 ~Quite! The High Counsel was so pleased with its delivery they have offered you a pardon, Vienxay.~
== X3Vie25J ~What? Kin, you are saying that I am....forgiven?~
== X3VSAG25 ~Forgiven? No. There are families and individuals who you will have to earn that forgiveness from, Vienxay. But Evermeet will welcome you back should you choose it.~
== X3Vie25J ~I understand this is...I thought I would wander the lands away from my home for an entire lifetime.~
== X3VSAG25 ~You could go with me now, if you so choose. My work in Tethyr is finished, and I mean to take passage on one of our people's ships back to the homeland.~
END 
+~OR(2)Race(Player1,ELF)GlobalGT("X3VieApp","GLOBAL",25)~+ ~I know you have been waiting for this, Vienxay, but would you stay?~  EXTERN X3Vie25J staying
+~!Race(Player1,ELF)!GlobalGT("X3VieApp","GLOBAL",25)~+  ~I know you have been waiting for this, Vienxay, but would you stay?~ EXTERN X3Vie25J not_staying
+~!Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)~+ ~I won't be able to go with you as a non-elf, will I?~ EXTERN X3Vie25J not_elf_romance 
+~!Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)~+ ~You should take the opportunity Vienxay. We can manage just fine.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~ EXTERN X3Vie25J not_elf_romance
+~Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)~+ ~You should take the opportunity Vienxay. We can manage just fine.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~ EXTERN X3Vie25J elf_romance  
+~!Global("X3VieRomanceActive","GLOBAL",2)OR(2)Race(Player1,ELF)GlobalGT("X3VieApp","GLOBAL",49)~+ ~You should take the opportunity Vienxay. We can manage just fine.~ DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@516)~ EXTERN X3Vie25J friend 
+~!Race(Player1,ELF)!Global("X3VieRomanceActive","GLOBAL",2)!GlobalGT("X3VieApp","GLOBAL",49)~+ ~You should take the opportunity Vienxay. We can manage just fine.~ EXTERN X3Vie25J not_friend 


CHAIN X3Vie25J not_elf_romance
~Only our people can make the way to Evermeet. And that is why I will be staying with you, <CHARNAME>. But when our adventure is done, I will make a visit to say goodbye. My place is by your side now. Evermeet is my past.~
END 
++ ~I'm glad, then.~ EXTERN X3VSAG25 mature
++ ~Are you sure, Vienxay, that you want to stay with me?~ + certain 
++ ~No, I don't want you to throw your home away. Not even for me.~ + home_away

CHAIN X3Vie25J elf_romance 
~And it can still wait. When this is over, we can go back, together.~
END 
++ ~I look forward to that, to you showing me around Evermeet.~ + Evermeet_tour
++ ~I'm not sure where I want to stay after this is over, Vienxay.~ + talk_later
++ ~If that's what you want.~ + certain 
++ ~I want you to be safe, Vienxay. Go to Evermeet without me.~ + safe 

CHAIN X3Vie25J safe 
~Safe? You make such *stupid* decisions sometimes. I will hate you for this...but if you do live, and I do see you in Evermeet...you better make it or I will with all my power make you regret asking me to go.~
// This does NOT Set romance to 3. 
EXTERN X3Vie25J leaving 

CHAIN X3Vie25J Evermeet_tour 
~I can't wait. You will see real splendor that the humans and dwarves could only dream of. Real architecture, gorgeous forests...you will see a true *home*.~
EXTERN X3VSAG25 mature 

CHAIN X3Vie25J talk_later
~I suppose we can talk about it later. But now that I am reallowed, the entire world is open for us.~
EXTERN X3VSAG25 mature

CHAIN X3Vie25J certain 
~More sure than I have of things for a long time.~
EXTERN X3VSAG25 mature 

CHAIN X3Vie25J staying 
~Of course. I would prefer it no other way. Evermeet will still be there when this is over. Besides, without my power you only stand half a chance.~
EXTERN X3VSAG25 mature 

CHAIN X3Vie25J not_staying 
~<CHARNAME>, I have endured years away from my land's soil, and suffered so much from other people. I hope you succeed in your cause, of course but...to join it with you is to risk never seeing my family or Evermeet before a possible death.~
== X3Vie25J ~This is a goodbye...you will miss me and my power, but I am sure you will figure it out.~
EXTERN X3Vie25J leaving

CHAIN X3Vie25J home_away 
~Love? We would never see each other again, and that would not make me happy.~
END 
++ ~But it would make me happy. I would know you are safe, with family, in the home you belong. Please, for your sake, go.~ + goodbye_love 
++ ~Then if that is what you want, Vienxay, stay with me.~ EXTERN X3VSAG25 mature 
++ ~But it would make me happy. I've tired of your presence. This is best for both of us.~ + jerk 

CHAIN X3Vie25J jerk 
~I don't know if you're just being a cold jerk to me, or...you are trying to push me away to protect me, but your message is clear. I suppose...it is something I would do to you, if our positions were reversed.~
EXTERN X3Vie25J goodbye_love 

CHAIN X3Vie25J goodbye_love 
~You make a terrible decision my love, you always have and somehow things stay all right. For once, I will not argue. No man has shaped my life more than you. And I will never forget that.~
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)~
EXTERN X3Vie25J leaving 

CHAIN X3Vie25J friend 
~Maybe you could. But Evermeet can wait until I see this through.~
EXTERN X3VSAG25 mature 

CHAIN X3Vie25J not_friend 
~If you are sure. I admit, I truly desire to see home again and not fight in a cause that is dangerous enough to kill me before I see it.~
== X3Vie25J ~Take care, <CHARNAME>. Your quest is a difficult one, but I hope you succeed.~
EXTERN X3Vie25J leaving 

CHAIN X3Vie25J leaving 
~I am ready to leave then, Sage. I...I've missed home. I long to see it again.~
== X3VSAG25 ~Then let us head out, Vienxay. To home.~
DO ~ActionOverride("X3Vie",EscapeArea())ActionOVerride("X3VSAG25",EscapeArea())~
EXIT 

CHAIN X3VSAG25 mature 
~It is mature of you to decide to help your friend. You have changed since I helped judge your fate myself back on the Green Isle.~
== X3VSAG25 ~Evermeet will be waiting for you, then. I wish you both well on your journey. May Father Corellon protect you.~
DO ~SetGlobal("X3VieEvermeet","GLOBAL",1)EscapeArea()~
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Vie")!Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 no_book_no_Vienxay 
~I can barely walk around and do any sort of work here with those monks about. I may as well head back to the Green Isle at this rate.~
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Vie")Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 no_Vienxay_gave_book 
~Hello again! The world is so small it seems. Is Vienxay amongst you? If you know where she may be, ask her to come here. I have good news for her.~
EXIT 