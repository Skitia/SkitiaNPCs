BEGIN X3HSON 

CHAIN IF ~Global("X3HMomTalk","LOCALS",1)~ THEN X3HSON mom_talk 
~It ain't safe up here, find shelter, fool! Wait a minute...by Moradin's beard, is that you ma?~
DO ~SetGlobal("X3HMomTalk","LOCALS",2)~
== X3Hel25J ~Berk...what are ye doing here? Why aren't you at the hall?~
== X3HSON ~The hall was too safe and not enough trouble to fix with a good bolt and hammer. Saradush however...ye can see for yourself.~
== X3Hel25J ~Damn it Berk, ye can get yerself killed.~
END 
++ ~This is your son, Helga?~ + my_son
++ ~Your mother is right, though I don't know how you would get out of here.~ + no_escape 
++ ~I am sure he knows what he is doing, Helga.~ + no_time 
++ ~Helga, we don't have time for this.~ + no_time 


CHAIN X3HSON my_son 
~Aye, I am her son. And bloody proud of it too.~
== X3Hel25J ~Don't try to soften me up, Berk. Ye need to nay be here.~
== X3HSON ~Never were ye afraid when Helen and I were engaging in our first battles. What has gotten into ye ma?~
== X3Hel25J ~This is just...far more serious and grave than ye may know. And maybe...I've seen just a little too much death.~
== X3HSON ~We all die when our time comes, ma. Ye taught me more than anyone. Better to die with an axe in yer hand-~
== X3Hel25J ~-than lying sick on yer bed. Aye.~
END 
++ ~Your mother has a point though. This is very dangerous, though I don't know how you would get out of here.~ + no_escape 
++ ~He knows the risks, Helga. Let him fight in peace.~ + no_time 
++ ~It's not safe to keep talking out here, Helga. We need to move~ + no_time 


CHAIN X3HSON no_escape 
~I nay abandon my post. Not for a worried mother and nay for her friend. Nay will our clan ever show fear in battle.~
== X3Hel25J ~...Aye, ye have a point, me son, and I know better than to try to say otherwise what is against me own beliefs.~
== X3HSON ~Aye, ye are just a worried ma. But I'll be keeping myself alive, we'll have a good feast at the table, ye and Helen and I.~
== X3Hel25J ~Ye better keep to that promise. I...I love ye son. May Haela Brightaxe bring you blood and glory.~
EXTERN X3HSON gods_willing 

CHAIN X3HSON gods_willing 
~Aye, and to ye. Gods willing, maybe we'll survive this.~
DO ~AddJournalEntry(@12,INFO)~
EXIT 


CHAIN X3HSON no_time 
~I'm afraid the <PRO_GIRLBOY> is right, ma. Battle be raging all around, I can nay be afford to be unfocused.~
== X3Hel25J ~Keep yerself, alive son. I'll be seeing you again outside of these walls. Ye promise me that.~
== X3HSON ~'Fraid I can't make a promise that I don't know that I can keep. But I'll do my damn best.~
== X3Hel25J ~Ye better. I...I love ye son. May Haela Brightaxe bring you blood and glory.~
EXTERN X3HSON gods_willing 

CHAIN IF ~Global("X3HMomTalk","LOCALS",2)!IsGabber("X3Hel")~ THEN X3HSON one_liner_mom 
~Take care of me mother. Maybe Moradin will finally coax her into fully retiring, bless her old body.~
EXIT 

CHAIN IF ~Global("X3HMomTalk","LOCALS",2)IsGabber("X3Hel")~ THEN X3HSON one_liner_mom_speaker 
~Take care of yerself, mum. I only got one of ye.~
EXIT 

CHAIN IF ~True()~ THEN X3HSON one_liner
~It ain't safe up here, find shelter, fool!~
EXIT 
