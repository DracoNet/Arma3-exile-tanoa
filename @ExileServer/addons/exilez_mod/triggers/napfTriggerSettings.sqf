/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

Trigger_1 = [				 //Cities
/* 0  Use this trigger */    True,               // Self - explanatory
/* 1  Trigger Positions */   Cities,             // The name of the array used to list all trigger position in the TriggerPositions.sqf file
/* 2  Max Zombies */         10,                 // The maximum number of zombies for that trigger.
/* 3  Activation Delay */    15,                 // The delay before the activation of the trigger.
/* 4  Spawn Delay */         15,                 // The delay between each zombie spawn right after the activation until the Max group size is reached.
/* 5  Respawn Delay */       60,                 // The respawn delay after the max group size was reached
/* 6  Show Trigger On Map */ true,               // Put a marker at the location and radius of the trigger on the map
/* 7  Marker Color */        "ColorRed",         // Color of the trigger
/* 8  MarkerBrush */         "Solid",            // "Solid","SolidFull","Horizontal","Vertical","Grid","FDiagonal","BDiagonal","DiagGrid","Cross","Border","SolidBorder"
/* 9  Marker Alpha */        0.2,                // Alpha of the trigger *(0 is invisible 1 is opaque)
/* 10 Marker Text */         "",                 // The text on the trigger
/* 11 Vest group */          Basic,              // The name of the Array used to list all the possible vest for that trigger. ZVest.sqf
/* 12 Loot group */          Useful,             // The name of the Array used to list all the possible loot for that trigger. ZLoot.sqf
/* 13 Zombie group */        MediumCiv,          // The name of the Group used to list the zombies possible for that trigger.  ZClasses.sqf
/* 14 Mission Radius */      0,                  // Up to how far from the center of the trigger the mission LOOT can spawn.
/* 15 Mission SQF */         nil,                // The location of the Mission file related to that trigger *(use M3Editor to create the file.) THIS IS STATIC AND WILL NOT MOVE WITH THE TRIGGER
/* 16 Loot Box */            nil                 // The location of the Missionloot file related to that trigger *(See example file zmissionloot.sqf)
];

Trigger_2 = [				 //Military
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   Military,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       45,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,         
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

Trigger_3 = [				 //No Buildings
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   NoBuildings,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       60,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMix,
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

Trigger_4 = [				 //No Man Land
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   NoMansLand,       
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       30,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "DiagGrid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          DocAndAmmo,         
/* 13 Zombie group */        Hard, 
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

Trigger_5 = [				 //Mission Trigger
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   Mission,            
/* 2  Max Zombies */         15,                 
/* 3  Activation Delay */    5,                  
/* 4  Spawn Delay */         5,                  
/* 5  Respawn Delay */       5,                  
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",      
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.5,                
/* 10 Marker Text */         "LOOT & DEATH",     
/* 11 Vest group */          Basic,              
/* 12 Loot group */          DocAndAmmo,         
/* 13 Zombie group */        Hardcore, 
/* 14 Mission Radius */      1500,               
/* 15 Mission SQF */         triggerMission,    
/* 16 Loot Box */            triggerLootCrate     
];

Trigger_6 = [				 //Marines
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   Marines,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       45,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

Trigger_7 = [				 //Farms
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   Farms,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       45,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

Trigger_8 = [				 //Berg
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   Berg,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       45,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

Trigger_9 = [				 //Airports
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   Airports,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       45,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

Trigger_10 = [				 //MainCitiesOnly
/* 0  Use this trigger */    True,               
/* 1  Trigger Positions */   MainCitiesOnly,        
/* 2  Max Zombies */         10,                 
/* 3  Activation Delay */    15,                 
/* 4  Spawn Delay */         15,                 
/* 5  Respawn Delay */       45,                 
/* 6  Show Trigger On Map */ true,               
/* 7  Marker Color */        "ColorRed",         
/* 8  MarkerBrush */         "Solid",            
/* 9  Marker Alpha */        0.2,                
/* 10 Marker Text */         "",                 
/* 11 Vest group */          Basic,              
/* 12 Loot group */          Useful,             
/* 13 Zombie group */        MediumMil,
/* 14 Mission Radius */      0,                  
/* 15 Mission SQF */         nil,                
/* 16 Loot Box */            nil                 
];

// List all the trigger group to use here.
Triggers = [Trigger_1,Trigger_2,Trigger_3,Trigger_4,Trigger_5,Trigger_6,Trigger_7,Trigger_8,Trigger_9,Trigger_10];

// Check Config Compiled
EZM_SettingsCompiledOkay				= true;