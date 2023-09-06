BEGIN X3VSAG25 
// Vienxay's Throne of Bhaal event. The Sage only spawns if he was met.
CHAIN IF ~IsValidForPartyDialogue("X3Vie")!Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 Vienxay_no_book
@0
DO ~SetGlobal("X3VEvermeetEnd","GLOBAL",-1)~
== X3Vie25J @1
== X3VSAG25 @2
== X3Vie25J @3
== X3VSAG25 @4
END 
++ @5 DO ~IncrementGlobal("X3VieApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@500513)~  + torment 
++ @6 + consequences 
+~Global("X3VGaveTome","GLOBAL",1)~+ @7 DO ~IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@500513)~ + returnfavor
+~ReputationGT(Player1,12)!Global("X3VGaveTome","GLOBAL",1)~+ @7 DO ~IncrementGlobal("X3VieApp","GLOBAL",3)DisplayStringNoNameDlg(Player1,@500513)~ + message
+~ReputationLT(Player1,13)!Global("X3VGaveTome","GLOBAL",1)~+ @7 + no_message

CHAIN X3VSAG25 torment 
@8
END 
IF ~Global("X3VGaveTome","GLOBAL",1)~ EXTERN X3VSAG25 saved_book
IF ~ReputationLT(Player1,13)!Global("X3VGaveTome","GLOBAL",1)~ EXTERN X3VSAG25 low_rep 
IF ~ReputationGT(Player1,12)!Global("X3VGaveTome","GLOBAL",1)~ EXTERN X3VSAG25 normal_rep 

CHAIN X3VSAG25 consequences 
@9
END 
IF ~Global("X3VGaveTome","GLOBAL",1)~ EXTERN X3VSAG25 saved_book
IF ~ReputationLT(Player1,13)!Global("X3VGaveTome","GLOBAL",1)~ EXTERN X3VSAG25 low_rep 
IF ~ReputationGT(Player1,12)!Global("X3VGaveTome","GLOBAL",1)~ EXTERN X3VSAG25 normal_rep 

CHAIN X3VSAG25 returnfavor 
@63
EXTERN X3Vie25J family_message

CHAIN X3VSag25 saved_book
@64
EXTERN X3Vie25J family_message

CHAIN X3VSAG25 message 
@10
EXTERN X3Vie25J family_message

CHAIN X3VSAG25 no_message 
@11
EXTERN X3Vie25J retort 

CHAIN X3VSAG25 low_rep 
@12
EXTERN X3Vie25J retort 

CHAIN X3Vie25J retort 
@13
== X3VSAG25 @14
== X3VSAG25 @15
DO ~EscapeArea()~ 
EXIT 

CHAIN X3VSAG25 normal_rep 
@16
== X3Vie25J @17
EXTERN X3Vie25J family_message

CHAIN X3Vie25J family_message 
@18
== X3Vie25J @19
== X3Vie25J @20
== X3VSAG25 @21
DO ~EscapeArea()~ 
EXIT 

// This version runs if Vienxay gave the sage the book.
CHAIN IF ~IsValidForPartyDialogue("X3Vie")Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 Vienxay_book
@22
DO ~SetGlobal("X3VEvermeetEnd","GLOBAL",1)~
== X3Vie25J @23
== X3VSAG25 @24
== X3Vie25J @25
END 
IF ~Kit("X3Vie","SHADOWDANCER")~ EXTERN X3VSAG25 Shadowdancer
IF ~!Kit("X3Vie","SHADOWDANCER")~ EXTERN X3VSAG25 Shadowmage 

CHAIN X3VSAG25 Shadowdancer
@65
EXTERN X3Vie25J ExileLifted 

CHAIN X3VSAG25 Shadowmage
@26
EXTERN X3Vie25J ExileLifted 

CHAIN X3Vie25J ExileLifted
@27
== X3VSAG25 @28
END 
+~OR(2)Race(Player1,ELF)GlobalGT("X3VieApp","GLOBAL",25)~+ @29  EXTERN X3Vie25J staying
+~!Race(Player1,ELF)!GlobalGT("X3VieApp","GLOBAL",25)~+  @29 EXTERN X3Vie25J not_staying
+~!Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)~+ @30 EXTERN X3Vie25J not_elf_romance 
+~!Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)~+ @31 DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@500516)~ EXTERN X3Vie25J not_elf_romance
+~Race(Player1,ELF)Global("X3VieRomanceActive","GLOBAL",2)~+ @31 DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@500516)~ EXTERN X3Vie25J elf_romance  
+~!Global("X3VieRomanceActive","GLOBAL",2)OR(2)Race(Player1,ELF)GlobalGT("X3VieApp","GLOBAL",49)~+ @31 DO ~IncrementGlobal("X3VieApp","GLOBAL",6)DisplayStringNoNameDlg(Player1,@500516)~ EXTERN X3Vie25J friend 
+~!Race(Player1,ELF)!Global("X3VieRomanceActive","GLOBAL",2)!GlobalGT("X3VieApp","GLOBAL",49)~+ @31 EXTERN X3Vie25J not_friend 


CHAIN X3Vie25J not_elf_romance
@32
END 
++ @33 DO ~AddJournalEntry(@50012,INFO)~ EXTERN X3VSAG25 mature
++ @34 DO ~AddJournalEntry(@50012,INFO)~ + certain 
++ @35 + home_away

CHAIN X3Vie25J elf_romance 
@36
END 
++ @37 + Evermeet_tour
++ @38 + talk_later
++ @39 DO ~AddJournalEntry(@50011,INFO)~ + certain 
++ @40 + safe 

CHAIN X3Vie25J safe 
@41
DO ~AddJournalEntry(@50013,INFO)~
// This does NOT Set romance to 3. 
EXTERN X3Vie25J leaving 

CHAIN X3Vie25J Evermeet_tour 
@42
DO ~AddJournalEntry(@50011,INFO)~
EXTERN X3VSAG25 mature 

CHAIN X3Vie25J talk_later
@43
DO ~AddJournalEntry(@50016,INFO)~
EXTERN X3VSAG25 mature

CHAIN X3Vie25J certain 
@44

EXTERN X3VSAG25 mature 

CHAIN X3Vie25J staying 
@45
DO ~AddJournalEntry(@50014,INFO)~
EXTERN X3VSAG25 mature 

CHAIN X3Vie25J not_staying 
@46
DO ~AddJournalEntry(@50012,INFO)~
== X3Vie25J @47
EXTERN X3Vie25J leaving

CHAIN X3Vie25J home_away 
@48
END 
++ @49 + goodbye_love 
++ @50 DO ~AddJournalEntry(@50012,INFO)~ EXTERN X3VSAG25 mature 
++ @51 + jerk 

CHAIN X3Vie25J jerk 
@52
EXTERN X3Vie25J goodbye_love 

CHAIN X3Vie25J goodbye_love 
@53
DO ~SetGlobal("X3VieRomanceActive","GLOBAL",3)AddJournalEntry(@50017,INFO)~
EXTERN X3Vie25J leaving 

CHAIN X3Vie25J friend 
@54
DO ~AddJournalEntry(@50014,INFO)~
EXTERN X3VSAG25 mature 

CHAIN X3Vie25J not_friend 
@55
DO ~AddJournalEntry(@50013,INFO)~
== X3Vie25J @56
EXTERN X3Vie25J leaving 

CHAIN X3Vie25J leaving 
@57
== X3VSAG25 @58
DO ~ActionOverride("X3Vie",EscapeArea())ActionOVerride("X3VSAG25",EscapeArea())~
EXIT 

CHAIN X3VSAG25 mature 
@59
== X3VSAG25 @60
DO ~SetGlobal("X3VieEvermeet","GLOBAL",1)EscapeArea()~
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Vie")!Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 no_book_no_Vienxay 
@61
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Vie")Global("X3VieQuest","GLOBAL",12)~ THEN X3VSAG25 no_Vienxay_gave_book 
@62
EXIT 