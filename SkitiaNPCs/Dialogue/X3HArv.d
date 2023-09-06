//We already have begun X3HArv, so let's just start.
//Quest fails if Global("X3HQuestExpired","GLOBAL",1) and X3HZag1 is alive. If he's dead, there is still hope.



CHAIN IF ~Global("X3HQuestExpired","GLOBAL",1)!Dead("X3HZag1")GlobalLT("X3HZavatarQuest","GLOBAL",2)~ THEN X3HArv QuestTimeExpired
@85
= @86
DO ~EscapeArea()~
EXIT 



//If Kal is at Quest variable 7, we need Jillian to be around. Arvora, being in the guard, would prefer they hunt down Chester anyway.
CHAIN IF ~Global("X3HZavatarQuest","GLOBAL",3)~ THEN X3HArv SavedJillian
@64
END 
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HelJ HelgaJillian
IF ~IsValidForPartyDialogue("X3Hel")~ EXTERN X3HArv HelgalessJillian 

CHAIN X3HelJ HelgaJillian
@65
= @66
EXTERN X3HArv ArvoraGift

CHAIN X3HArv HelgalessJillian 
@67
EXTERN X3HArv ArvoraGift 

CHAIN X3HArv ArvoraGift 
@68
DO ~GiveItemCreate("X3HMail",Player1,0,0,0)AddJournalEntry(@20030,QUEST_DONE)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @69  
DO ~SetGlobal("X3HelAppChange","GLOBAL",9)~
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @70
DO ~SetGlobal("X3HelAppChange","GLOBAL",11)~
END 
IF ~OR(2)!IsValidForPartyDialogue("X3Hel")!IsValidForPartyDialogue("X3Kal")~ EXTERN X3HArv GeneralExit 
IF ~IsValidForPartyDialogue("X3Hel")IsValidForPartyDialogue("X3Kal")~ EXTERN X3HArv KaleHelgaExit 

CHAIN X3HArv GeneralExit 
@71
DO ~EscapeArea()AddexperienceParty(2500)~ EXIT 

CHAIN X3HArv KaleHelgaExit 
@72
DO ~EscapeArea()AddexperienceParty(3500)~ EXIT 

CHAIN IF ~Global("X3HelArvoraQuest","GLOBAL",1)Global("X3KalQuest","GLOBAL",7)~ THEN X3HArv HuntChesterFirst
@0
EXIT 

CHAIN IF ~Global("X3HelArvoraQuest","GLOBAL",1)!Global("X3KalQuest","GLOBAL",7)!IsValidForPartyDialogue("X3Hel")~ THEN X3HArv NoHelgaInitial
@1
EXIT 



CHAIN IF ~Global("X3HelArvoraQuest","GLOBAL",1)!Global("X3KalQuest","GLOBAL",7)IsValidForPartyDialogue("X3Hel")~ THEN X3HArv QuestStart
@2
DO ~SetGlobal("X3HelArvoraQuest","GLOBAL",2)~
END 
IF ~Global("X3HCON","GLOBAL",1)~ EXTERN X3HelJ ConRoute
IF ~!Global("X3HCON","GLOBAL",1)~ EXTERN X3HelJ WisRoute 

CHAIN X3HelJ ConRoute 
@3
== X3HArv @5
EXTERN X3HelJ TheTrouble

CHAIN X3HelJ WisRoute 
@4
== X3HArv @6
EXTERN X3HelJ TheTrouble

CHAIN X3HelJ TheTrouble 
@7
END 
IF ~Dead("X3KJil")~ EXTERN X3HArv DeadJillian 
IF ~!Dead("X3KJil")~ EXTERN X3HArv MissingJillian 

CHAIN X3HArv MissingJillian 
@8
END 
IF ~IsValidForPartyDialogue("X3Kal")~ EXTERN X3KalJ KaleArvoraBranch 
IF ~!IsValidForPartyDialogue("X3Kal")~ EXTERN X3HelJ HelgaArvoraBranch 

CHAIN X3KalJ KaleArvoraBranch 
@9
== X3HArv @10
EXTERN X3HArv Explanation 

CHAIN X3HelJ HelgaArvoraBranch 
@11
== X3HArv @12 
EXTERN X3HArv Explanation 

CHAIN X3HArv Explanation
@13
END 
++ @14 + NotSure
++ @15 + TakeALook
++ @16 + ToughLuck
++ @17 + ToughLuck

CHAIN X3HArv NotSure
@18
== X3HelJ @19
END 
++ @20 + WhatTheyGave
++ @16 + ToughLuck



CHAIN X3HArv TakeALook
@23
EXTERN X3HArv WhatTheyGave 

CHAIN X3HArv WhatTheyGave 
@21
DO ~AddJournalEntry(@20025,QUEST)GiveItemCreate("X3HNote",Player1,0,0,0)~
= @22
END 
++ @34 + WhateverItSays
++ @35 + WhateverItSays
+~IsValidForPartyDialogue("Aerie")~+ @36 EXTERN AERIEJ AerieInput
+~!IsValidForPartyDialogue("Aerie")IsValidForPartyDialogue("Edwin")~+ @36 EXTERN EDWINJ EdwinInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")IsValidForPartyDialogue("HAERDALIS")~+ @36 EXTERN HAERDAJ HaerdalisInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")IsValidForPartyDialogue("IMOEN2")~+ @36 EXTERN IMOEN2J ImoenInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")IsValidForPartyDialogue("JAN")~+ @36 EXTERN JANJ JanInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")IsValidForPartyDialogue("NALIA")~+ @36 EXTERN NALIAJ NaliaInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")IsValidForPartyDialogue("NEERA")~+ @36 EXTERN NEERAJ NeeraInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")IsValidForPartyDialogue("VICONIA")~+ @36 EXTERN VICONIJ ViconiaInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~+ @36 EXTERN X3EmiJ EmilyInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~+ @36 EXTERN X3EmiJ EmilyInput
+~!IsValidForPartyDialogue("Aerie")!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~+ @36 EXTERN X3VieJ VienxayInput

CHAIN AerieJ AerieInput 
@37
END 
IF ~IsValidForPartyDialogue("Edwin")~ EXTERN EDWINJ EdwinInput
IF ~!IsValidForPartyDialogue("Edwin")IsValidForPartyDialogue("HAERDALIS")~ EXTERN HAERDAJ HaerdalisInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")IsValidForPartyDialogue("IMOEN2")~ EXTERN IMOEN2J ImoenInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")IsValidForPartyDialogue("JAN")~ EXTERN JANJ JanInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")IsValidForPartyDialogue("NALIA")~ EXTERN NALIAJ NaliaInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")IsValidForPartyDialogue("NEERA")~ EXTERN NEERAJ NeeraInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("Edwin")!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN EdwinJ EdwinInput 
@38
END 
IF ~IsValidForPartyDialogue("HAERDALIS")~ EXTERN HAERDAJ HaerdalisInput
IF ~!IsValidForPartyDialogue("HAERDALIS")IsValidForPartyDialogue("IMOEN2")~ EXTERN IMOEN2J ImoenInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")IsValidForPartyDialogue("JAN")~ EXTERN JANJ JanInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")IsValidForPartyDialogue("NALIA")~ EXTERN NALIAJ NaliaInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")IsValidForPartyDialogue("NEERA")~ EXTERN NEERAJ NeeraInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("HAERDALIS")!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN HAERDAJ HaerdalisInput
@39
END 
IF ~IsValidForPartyDialogue("IMOEN2")~ EXTERN IMOEN2J ImoenInput
IF ~!IsValidForPartyDialogue("IMOEN2")IsValidForPartyDialogue("JAN")~ EXTERN JANJ JanInput
IF ~!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")IsValidForPartyDialogue("NALIA")~ EXTERN NALIAJ NaliaInput
IF ~!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")IsValidForPartyDialogue("NEERA")~ EXTERN NEERAJ NeeraInput
IF ~!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaInput
IF ~!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("IMOEN2")!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN IMOEN2J ImoenInput
@40
END 
IF ~IsValidForPartyDialogue("JAN")~ EXTERN JANJ JanInput
IF ~!IsValidForPartyDialogue("JAN")IsValidForPartyDialogue("NALIA")~ EXTERN NALIAJ NaliaInput
IF ~!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")IsValidForPartyDialogue("NEERA")~ EXTERN NEERAJ NeeraInput
IF ~!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaInput
IF ~!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("JAN")!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN JANJ JanInput
@41
END 
IF ~IsValidForPartyDialogue("NALIA")~ EXTERN NALIAJ NaliaInput
IF ~!IsValidForPartyDialogue("NALIA")IsValidForPartyDialogue("NEERA")~ EXTERN NEERAJ NeeraInput
IF ~!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaInput
IF ~!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("NALIA")!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN NALIAJ NaliaInput
@42
END 
IF ~IsValidForPartyDialogue("NEERA")~ EXTERN NEERAJ NeeraInput
IF ~!IsValidForPartyDialogue("NEERA")IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaInput
IF ~!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("NEERA")!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN NEERAJ NeeraInput
@43
END 
IF ~IsValidForPartyDialogue("VICONIA")~ EXTERN VICONIJ ViconiaInput
IF ~!IsValidForPartyDialogue("VICONIA")IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("VICONIA")!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN VICONIJ ViconiaInput
@44
END 
IF ~IsValidForPartyDialogue("X3Emi")~ EXTERN X3EmiJ EmilyInput
IF ~!IsValidForPartyDialogue("X3Emi")IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("X3Emi")!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN X3EmiJ EmilyInput
@45
END 
IF ~IsValidForPartyDialogue("X3Reb")~ EXTERN X3RebJ RecorderInput
IF ~!IsValidForPartyDialogue("X3Reb")IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("X3Reb")!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN X3RebJ RecorderInput
@46
END 
IF ~IsValidForPartyDialogue("X3Vie")~ EXTERN X3VieJ VienxayInput
IF ~!IsValidForPartyDialogue("X3Vie")~ EXTERN X3HArv WhateverItSays 

CHAIN X3VieJ VienxayInput
@47
EXTERN X3HArv WhateverItSays 


CHAIN X3HArv ToughLuck 
@24
== X3HelJ @25
DO ~SetGlobal("X3HelAppChange","GLOBAL",4)~
== X3HelJ @26
== X3HArv @27
DO ~SetGlobal("X3HelArvoraQuest","GLOBAL",2)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @28
DO ~SetGlobal("X3KalAppChange","GLOBAL",4)~
EXIT 

CHAIN X3HArv WhateverItSays 
@48
DO ~SetGlobal("X3HelArvoraQuest","GLOBAL",3)~ 
== X3RebJ IF ~IsValidForPartyDialogue("X3Reb")~ THEN @73
EXIT 

CHAIN IF ~Global("X3HelArvoraQuest","GLOBAL",3)Global("X3HZavatarQuest","GLOBAL",0)~ THEN X3HArv NotAWhisper 
@49
EXIT 

CHAIN IF ~Global("X3HZavatarWon","GLOBAL",1)Global("X3HZavatarQuest","GLOBAL",1)~ THEN X3HArv DuelFailed 
@58
END 
++ @59 + SaveMyself
++ @60 + SaveMyself
++ @61 + SaveMyself

CHAIN X3HArv SaveMyself 
@62
= @63
DO ~EscapeArea()~
EXIT 




CHAIN IF ~Global("X3HelArvoraQuest","GLOBAL",3)Global("X3HZavatarQuest","GLOBAL",1)~ THEN X3HArv WitsEnd 
@50 
END 
+~IsValidForPartyDialogue("X3Hel")GlobalGT("X3HZavatarDuel","GlOBAL",0)~+ @51 DO ~SetGlobal("X3HelArvoraQuest","GLOBAL",4)~ EXTERN X3HelJ WhatIfLose 
+~!IsValidForPartyDialogue("X3Hel")GlobalGT("X3HZavatarDuel","GlOBAL",0)~+ @51 DO ~SetGlobal("X3HelArvoraQuest","GLOBAL",4)~ + WinForMe 
++ @52 EXIT 
+~Global("X3HZavatarDuel","GlOBAL",0)!Dead("X3HZava")~+ @74 DO ~SetGlobal("X3HelArvoraQuest","GLOBAL",4)~ + RansomInform
+~PartyHasItem("X3KJil")~+ @91 + UseOrb 

CHAIN X3HArv UseOrb 
@92
EXIT 

CHAIN X3HelJ WhatIfLose 
@54
== X3HArv @55
== X3KalJ IF ~Global("X3HZavatarDuel","GlOBAL",2)~ THEN @53
== X3HelJ IF ~Global("X3HZavatarDuel","GlOBAL",1)~ THEN @56
EXIT 

CHAIN IF ~GlobalGT("X3HelArvoraQuest","GLOBAL",2)Global("X3HZavatarQuest","GLOBAL",1)GlobalGT("X3HZavatarDuel","GlOBAL",0)~ THEN X3HArv WinForMe 
@57
EXIT 

CHAIN X3HArv RansomInform 
@75
END 
++ @76 + Helps
++ @77 + Kind 
++ @78 + AllIHave

CHAIN X3HArv AllIHave 
@79
DO ~GivePartyGold(500)~ 
== X3HelJ IF ~IsValidForPartyDialogue("X3Hel")~ THEN @80
DO ~SetGlobal("X3HelAppChange","GLOBAL",3)~
== X3KalJ IF ~IsValidForPartyDialogue("X3Kal")~ THEN @81
DO ~SetGlobal("X3KalAppChange","GLOBAL",4)~
EXIT 

CHAIN X3HArv Kind 
@83 
EXIT 

CHAIN X3HArv Helps 
@84
DO ~GivePartyGold(500)~ 
EXIT 

CHAIN IF ~GlobalGT("X3HelArvoraQuest","GLOBAL",2)Global("X3HZavatarQuest","GLOBAL",1)Global("X3HZavatarDuel","GlOBAL",0)~ THEN X3HArv SaveJillian 
@84
EXIT 

CHAIN IF ~Global("X3HelArvoraQuest","GLOBAL",2)~ THEN X3HArv WillYouHelp 
@29
END 
++ @30 + TakeALook
++ @31 + NoHelpStill 

CHAIN X3HArv NoHelpStill 
@32
EXIT 

CHAIN X3HArv DeadJillian 
@87
== X3HelJ @88
== X3HArv @89
DO ~AddJournalEntry(@20040,QUEST_DONE)~
== X3HelJ @90
EXIT 