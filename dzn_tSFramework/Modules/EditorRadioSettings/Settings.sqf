tSF_ERS_initTimeout	=	5;

/*
 *	On TRUE -- overrides Isolated parameters of vehicle by config
 *	On FALSE -- if vehicle class already has TFAR LR radio (and actual isolated settings) -- it will not be overriden
 */
tSF_ERS_OverrideIsolatedConfigValue = true;


/*
 *	LR Radio Settings for Vehicles
 *
 *	Unit surrender when player are nearby 
 *		tSF_ERS_BLUFOR_LRRadioType	- class of LR radio for BLUFOR config
 *		tSF_ERS_BLUFOR_LRRange		- range of LR radio for BLUFOR config
 *		tSF_ERS_BLUFOR_LRIsolated	- isolated property of vehicle for BLUFOR config
 */
tSF_ERS_BLUFOR_LRRadioType		= "tf_mr3000_rhs";
tSF_ERS_BLUFOR_LRRange			= 30000; // meters
tSF_ERS_BLUFOR_LRIsolated		= 0.5;
 
tSF_ERS_OPFOR_LRRadioType		= "tf_rt1523g_green";
tSF_ERS_OPFOR_LRRange			= 30000; // meters
tSF_ERS_OPFOR_LRIsolated		= 0.5;
 
tSF_ERS_INDEP_LRRadioType		= "tf_rf7800str_1";
tSF_ERS_INDEP_LRRange			= 30000; // meters
tSF_ERS_INDEP_LRIsolated		= 0.5;
 
 
 /*
 *	Radio Configs
 *
 *	Add TFAR radio for vehicles synced with ERS GameLogic. Config in format
 *		[ @ConfigName, [ @Side, @LR Type, @LR Range, @Vehicle Isolated] ]
 * 		see https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/API%3A-Variables
 */
 
 tSF_ERS_LRRadioConfig = [
	["BLUFOR", [west, tSF_ERS_BLUFOR_LRRadioType, tSF_ERS_BLUFOR_LRRange, tSF_ERS_BLUFOR_LRIsolated]]
	
	,["OPFOR", [east, tSF_ERS_OPFOR_LRRadioType, tSF_ERS_OPFOR_LRRange, tSF_ERS_OPFOR_LRIsolated]]
	
	,["INDEP", [resistance, tSF_ERS_INDEP_LRRadioType, tSF_ERS_INDEP_LRRange, tSF_ERS_INDEP_LRIsolated]]
	
	,["MyCustomConfig", [west, "TFAR_anarc210", 50000, 0.8]]
 ];
