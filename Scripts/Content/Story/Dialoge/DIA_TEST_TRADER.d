//=========================================================================================================
//  End dialogue
//=========================================================================================================
instance TEST_TRADER_Exit(C_Info)
{
	npc 		= TEST_TRADER;
	nr 			= 999;
	condition 	= TEST_TRADER_Exit_Condition;
	information = TEST_TRADER_Exit_Info;
	permanent 	= TRUE;
	description = DIALOG_ENDE;
};


/// This function features two parameters and one local variable.
/// The only use for this function is to demostrate some stuff with the Daedalus Language Server
///
/// @param status log status enum
/// @param logID log topic ID
func void func1 (var int status, var string logID)
{
	var int lokalCislo;
	
};


func int TEST_TRADER_Exit_Condition()
{
	return TRUE;
};

func void TEST_TRADER_Exit_Info()
{	
	AI_StopProcessInfos(hero);
};

//=========================================================================================================
//  TRADE
//=========================================================================================================
instance TEST_TRADER_Trade(C_Info)
{
	npc 		= TEST_TRADER; //jvvj
	nr 			= 1;
	condition 	= TEST_TRADER_Trade_Condition;
	information = TEST_TRADER_Trade_Info;
	permanent 	= TRUE;
	description = "Zeig mir deine Ware.";
    trade       = TRUE;
};


func int TEST_TRADER_Trade_Condition()
{
	return TRUE;
};

func void TEST_TRADER_Trade_Info()
{
	AI_Output(other, self, "TEST_TRADER_Trade_15_00");	//Zeig mir deine Ware.
	AI_Output(self, other, "TEST_TRADER_Trade_04_01");	//Mit dem größten Vergnügen.
};


//=========================================================================================================
//  SomeInfo
//=========================================================================================================
instance TEST_TRADER_SomeInfo(C_Info)
{
	npc 		= TEST_TRADER;
	nr 			= 2;
	condition 	= TEST_TRADER_SomeInfo_Condition;
	information = TEST_TRADER_SomeInfo_Info;
	permanent 	= TRUE;
	description = "Wie läuft's??";
};


func int TEST_TRADER_SomeInfo_Condition()
{
	return TRUE;
};

func void TEST_TRADER_SomeInfo_Info()
{
	AI_Output(other, self, "TEST_TRADER_SomeInfo_15_00");	//Wie läuft's?
	AI_Output(self, other, "TEST_TRADER_SomeInfo_04_01");	//Könnte nicht besser laufen. Wegen der Spannungen mit dem Neuen Lager will jeder Buddler eine Waffe haben, weil sie sich der Illusion hingeben, dass sie sich damit gegen Banditen wehren könnten. 
	AI_Output(other, self, "TEST_TRADER_SomeInfo_04_02");	//Ich kann die Preise deswegen wunderbar hochdrücken. Außer für dich natürlich, mein Freund.
	AI_Output(self, other, "TEST_TRADER_SomeInfo_15_03");	//Du bist ein wunderbarer Mensch.

	

};

