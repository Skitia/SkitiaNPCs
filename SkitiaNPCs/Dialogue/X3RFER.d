BEGIN X3RFER

CHAIN IF ~IsGabber(Player1)~ THEN X3RFER t1
~Gustav looks up at you with suspicion.~
END 
++ ~Return him to Recorder's pack~ + tpack 
++ ~Search for anything he has pick pocketed.~ + tpick 
+~RandomNum(3,1)~+ ~*Pet him*~ + pet1
+~RandomNum(3,2)~+ ~*Pet him*~ + pet2
+~RandomNum(3,3)~+ ~*Pet him*~ + pet3
+~RandomNum(3,1)~+ ~*Hold him*~ + hold1
+~RandomNum(3,2)~+ ~*Hold him*~ + hold2
+~RandomNum(3,3)~+ ~*Hold him*~ + hold3
+~RandomNum(3,1)~+ ~*Feed him*~ + feed1
+~RandomNum(3,2)~+ ~*Feed him*~ + feed2
+~RandomNum(3,3)~+ ~*Feed him*~ + feed3
++ ~Leave him be.~ EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,1)~ THEN X3RFER r1
~(Recorder and her familiar Gustav appear to engage in a sort of game. Gustav seems to enjoy the treats he gets from her in exchange for his displays of wit and agility.)~
EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,2)~ THEN X3RFER r2
~(Recorder and Gustav appear to be arguing. She seems to be wagging something previously hidden at his fur with a scolding tone, while the animal looks indifferent.)~ 
EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,3)~ THEN X3RFER r3
~(Recorder coos as she pets the ferret's fur. The ferret arches his back, showing great content in being showered with attention.)~
EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,4)~ THEN X3RFer r4
~(Recorder tries to beckon Gustav closer, but he simply shows her his rear and moves elsewhere with his attention.)~
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN IF ~IsGabber("X3Reb")RandomNum(5,5)~ THEN X3RFER r5
~(Recorder whistles and Gustav climbs up on her shoulder. Recorder strokes the ferret's fur, before he hops off and scuttling about once more.)~
EXIT 

CHAIN X3RFER tpack 
~(The animal does not look pleased when he is held, and you feel a slight nip at your hand with his teeth as you slip it into Recorder's backpack.)~
DO ~GivePartyAllEquipment()DestroySelf()~ EXIT 

CHAIN X3RFER tpick 
~(Gustav squeals as you try to take his stuff. He hisses as his belongings are lost, and are now in your possession.)~
DO ~GivePartyAllEquipment()~ EXIT 

CHAIN X3RFER pet1 
~(You try to reach out to the animal's fur, but it scurries away.)~
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN X3RFER pet2 
~(You hear the ferret purr and nudge itself against your giving hand, enjoying the luxury of attention.)~
EXIT 

CHAIN X3RFER pet3 
~(The ferret looks pleased, arching its back and moving forward so all of its fur can receive equal attention.)~
EXIT 


CHAIN X3RFER hold1 
~(The animal purrs for a while while in your grasp, until you gently let it back down.)~
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN X3RFER hold2 
~(The ferret hisses and nips your finger, before hopping off and showing you it's hindquarters in indignation.)~
EXIT 

CHAIN X3RFER hold3 
~(The ferret squirms, but your grasp is firm. Eventually it relaxes to your touch and affections, before hopping free from your grasp a moment later)~
EXIT 


CHAIN X3RFER feed1 
~(The ferret devours your treats, then looks up at you, begging for more.)~
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,10)~ EXIT 

CHAIN X3RFER feed2 
~(The animal nips at the offering in your hand, cooing in content.)~
EXIT 

CHAIN X3RFER feed3 
~(The ferret grabs your offered treat, before scuttling a short distance away to take it into its mouth.)~
EXIT 

CHAIN IF ~!IsGabber("X3Reb")!IsGabber(Player1)~ THEN X3RFER flee 
~The familiar gives you a look of suspicion, before scurrying away from you towards its master.~
DO ~MoveToObject("X3Reb")~ EXIT 
