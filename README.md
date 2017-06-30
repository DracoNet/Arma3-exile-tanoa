# Arma3-exile-tanoa
## Arma3-exile ![Arma 1.72](https://img.shields.io/badge/Arma-1.72-blue.svg?style=plastic) ![Exile 1.0.3](https://img.shields.io/badge/Exile-1.0.3-C72651.svg?style=plastic) ![Build Version](https://img.shields.io/badge/Build_Version-1.0.2-lightgrey.svg?style=plastic)


#####Mods needed

* [Exile](http://www.exilemod.com/)
* [Zombies And Demons](http://steamcommunity.com/sharedfiles/filedetails/?id=501966277)
* [RZ Infection](http://steamcommunity.com/sharedfiles/filedetails/?id=614815221)
* [InfiStar](http://infistar.de) (Recommended)(Not included)

#####Script used

* [patrix87/ExileZ-2](https://github.com/patrix87/ExileZ-2)
* [Defent/DMS_Exile](https://github.com/Defent/DMS_Exile)
* [ACD_TB - ACiDy Tanoa Bridges](https://github.com/d4n1ch/acd_TB)
* [CRE4MPIE/StatusBar](https://github.com/CRE4MPIE/StatusBar)
* [IT07/ArmA3_exile_ServerInfoMenu](https://github.com/IT07/ArmA3_exile_ServerInfoMenu)
* Draco Custom!!!

###Installing

#####Mod Folders
```
@Exile				= Exile
@ZombiesAndDemons	= Zombies And Demons
@RZInfection		= RZInfection
```

#####StartServer.bat
```
-mod=@Exile;@ExileServer;@ZombiesAndDemons;@RZInfection;
```

#####Edit @ExileServer\config.cfg
```
allowedVoteCmds[] = {}; //No Voteing allowed

class Missions
{
	class Exile
	{

		template = Exile.Tanoa;  // Exile.Namalsk, Exile.Altis
		
		// do NOT use custom difficulties!
		// Use either ExileRegular or ExileHardcore
		// or you will break Exile!
		difficulty = "ExileRegular";
	}; 
};
```

##### PBO  files
PBO all folders in ```@ExileServer\addons``` and ```mpmission```  
Get [PBO Manager](http://www.armaholic.com/page.php?id=16369)

##### Merge BattlEye Filters
Merge Filters form the "BattlEye" folder.  
You can use a program like [WinMerge](http://winmerge.org/)

##### Database
Run the following sql command in you database. 
```sql
...
```

##### infiSTAR (if installed)
* If you are using infiSTAR and want to keep ```CGM = true;```, then set ```UMW = true;```.
* Add ```'O_HMG_01_high_F'``` to ```_VehicleWhiteList```, as well as any other vehicles you add to DMS that are not whitelisted.
