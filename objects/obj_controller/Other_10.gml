/// @description weapon map from numbers

global.weaponName = ds_map_create();
#macro weaponDataName 0
global.weaponData[weaponDataName] = global.weaponName;
global.weaponDataStringRaw[weaponDataName] = "Name";
global.weaponDataString[weaponDataName] = string_space_caps("Name");

global.weaponDescription = ds_map_create();
#macro weaponDataDescription 1
global.weaponData[weaponDataDescription] = global.weaponDescription;
global.weaponDataStringRaw[weaponDataDescription] = "Description";
global.weaponDataString[weaponDataDescription] = string_space_caps("Description");

global.weaponAutofire = ds_map_create();
#macro weaponDataAutofire 2
global.weaponData[weaponDataAutofire] = global.weaponAutofire;
global.weaponDataStringRaw[weaponDataAutofire] = "Autofire";
global.weaponDataString[weaponDataAutofire] = string_space_caps("Autofire");

global.weaponType = ds_map_create();
#macro weaponDataType 3
global.weaponData[weaponDataType] = global.weaponType;
global.weaponDataStringRaw[weaponDataType] = "Type";
global.weaponDataString[weaponDataType] = string_space_caps("Type");

global.weaponDisplayType = ds_map_create();
#macro weaponDataDisplayType 4
global.weaponData[weaponDataDisplayType] = global.weaponDisplayType;
global.weaponDataStringRaw[weaponDataDisplayType] = "DisplayType";
global.weaponDataString[weaponDataDisplayType] = string_space_caps("DisplayType");

global.weaponCrosshair = ds_map_create();
#macro weaponDataCrosshair 5
global.weaponData[weaponDataCrosshair] = global.weaponCrosshair;
global.weaponDataStringRaw[weaponDataCrosshair] = "Crosshair";
global.weaponDataString[weaponDataCrosshair] = string_space_caps("Crosshair");

global.weaponCrosshairAngle = ds_map_create();
#macro weaponDataCrosshairAngle 6
global.weaponData[weaponDataCrosshairAngle] = global.weaponCrosshairAngle;
global.weaponDataStringRaw[weaponDataCrosshairAngle] = "CrosshairAngle";
global.weaponDataString[weaponDataCrosshairAngle] = string_space_caps("CrosshairAngle");

global.weaponStance = ds_map_create();
#macro weaponDataStance 7
global.weaponData[weaponDataStance] = global.weaponStance;
global.weaponDataStringRaw[weaponDataStance] = "Stance";
global.weaponDataString[weaponDataStance] = string_space_caps("Stance");

global.weaponDamage = ds_map_create();
#macro weaponDataDamage 8
global.weaponData[weaponDataDamage] = global.weaponDamage;
global.weaponDataStringRaw[weaponDataDamage] = "Damage";
global.weaponDataString[weaponDataDamage] = string_space_caps("Damage");

global.weaponRof = ds_map_create();
#macro weaponDataRof 9
global.weaponData[weaponDataRof] = global.weaponRof;
global.weaponDataStringRaw[weaponDataRof] = "Rof";
global.weaponDataString[weaponDataRof] = string_space_caps("Rof");

global.weaponDisplayRange = ds_map_create();
#macro weaponDataDisplayRange 10
global.weaponData[weaponDataDisplayRange] = global.weaponDisplayRange;
global.weaponDataStringRaw[weaponDataDisplayRange] = "DisplayRange";
global.weaponDataString[weaponDataDisplayRange] = string_space_caps("DisplayRange");

global.weaponRangeEffective = ds_map_create();
#macro weaponDataRangeEffective 11
global.weaponData[weaponDataRangeEffective] = global.weaponRangeEffective;
global.weaponDataStringRaw[weaponDataRangeEffective] = "RangeEffective";
global.weaponDataString[weaponDataRangeEffective] = string_space_caps("RangeEffective");

global.weaponRangeMax = ds_map_create();
#macro weaponDataRangeMax 12
global.weaponData[weaponDataRangeMax] = global.weaponRangeMax;
global.weaponDataStringRaw[weaponDataRangeMax] = "RangeMax";
global.weaponDataString[weaponDataRangeMax] = string_space_caps("RangeMax");

global.weaponRangeAoe = ds_map_create();
#macro weaponDataRangeAoe 13
global.weaponData[weaponDataRangeAoe] = global.weaponRangeAoe;
global.weaponDataStringRaw[weaponDataRangeAoe] = "RangeAoe";
global.weaponDataString[weaponDataRangeAoe] = string_space_caps("RangeAoe");

global.weaponDeviation = ds_map_create();
#macro weaponDataDeviation 14
global.weaponData[weaponDataDeviation] = global.weaponDeviation;
global.weaponDataStringRaw[weaponDataDeviation] = "Deviation";
global.weaponDataString[weaponDataDeviation] = string_space_caps("Deviation");

global.weaponShotAmount = ds_map_create();
#macro weaponDataShotAmount 15
global.weaponData[weaponDataShotAmount] = global.weaponShotAmount;
global.weaponDataStringRaw[weaponDataShotAmount] = "ShotAmount";
global.weaponDataString[weaponDataShotAmount] = string_space_caps("ShotAmount");

global.weaponClip = ds_map_create();
#macro weaponDataClip 16
global.weaponData[weaponDataClip] = global.weaponClip;
global.weaponDataStringRaw[weaponDataClip] = "Clip";
global.weaponDataString[weaponDataClip] = string_space_caps("Clip");

global.weaponReloadTime = ds_map_create();
#macro weaponDataReloadTime 17
global.weaponData[weaponDataReloadTime] = global.weaponReloadTime;
global.weaponDataStringRaw[weaponDataReloadTime] = "ReloadTime";
global.weaponDataString[weaponDataReloadTime] = string_space_caps("ReloadTime");

global.weaponOffsetX = ds_map_create();
#macro weaponDataOffsetX 18
global.weaponData[weaponDataOffsetX] = global.weaponOffsetX;
global.weaponDataStringRaw[weaponDataOffsetX] = "OffsetX";
global.weaponDataString[weaponDataOffsetX] = string_space_caps("OffsetX");

global.weaponOffsetY = ds_map_create();
#macro weaponDataOffsetY 19
global.weaponData[weaponDataOffsetY] = global.weaponOffsetY;
global.weaponDataStringRaw[weaponDataOffsetY] = "OffsetY";
global.weaponDataString[weaponDataOffsetY] = string_space_caps("OffsetY");

global.weaponObjectCreate = ds_map_create();
#macro weaponDataObjectCreate 20
global.weaponData[weaponDataObjectCreate] = global.weaponObjectCreate;
global.weaponDataStringRaw[weaponDataObjectCreate] = "ObjectCreate";
global.weaponDataString[weaponDataObjectCreate] = string_space_caps("ObjectCreate");

global.weaponSpeedMultiplier = ds_map_create();
#macro weaponDataSpeedMultiplier 21
global.weaponData[weaponDataSpeedMultiplier] = global.weaponSpeedMultiplier;
global.weaponDataStringRaw[weaponDataSpeedMultiplier] = "SpeedMultiplier";
global.weaponDataString[weaponDataSpeedMultiplier] = string_space_caps("SpeedMultiplier");

global.weaponDisplaySpeed = ds_map_create();
#macro weaponDataDisplaySpeed 22
global.weaponData[weaponDataDisplaySpeed] = global.weaponDisplaySpeed;
global.weaponDataStringRaw[weaponDataDisplaySpeed] = "DisplaySpeed";
global.weaponDataString[weaponDataDisplaySpeed] = string_space_caps("DisplaySpeed");

global.weaponRangeClass = ds_map_create();
#macro weaponDataRangeClass 23
global.weaponData[weaponDataRangeClass] = global.weaponRangeClass;
global.weaponDataStringRaw[weaponDataRangeClass] = "RangeClass";
global.weaponDataString[weaponDataRangeClass] = string_space_caps("RangeClass");

global.weaponMuzzleFlash = ds_map_create();
#macro weaponDataMuzzleFlash 24
global.weaponData[weaponDataMuzzleFlash] = global.weaponMuzzleFlash;
global.weaponDataStringRaw[weaponDataMuzzleFlash] = "MuzzleFlash";
global.weaponDataString[weaponDataMuzzleFlash] = string_space_caps("MuzzleFlash");

global.weaponHeal = ds_map_create();
#macro weaponDataHeal 25
global.weaponData[weaponDataHeal] = global.weaponHeal;
global.weaponDataStringRaw[weaponDataHeal] = "Heal";
global.weaponDataString[weaponDataHeal] = string_space_caps("Heal");



var object = "pistol";
global.weapon[0] = "pistol";
ds_map_add(global.weaponName,object,"Pistol");
ds_map_add(global.weaponDescription,object,"Why would you want to use any other weapon?");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Handgun");
ds_map_add(global.weaponCrosshair,object,"pistol");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"handgun");
ds_map_add(global.weaponDamage,object,35.0);
ds_map_add(global.weaponRof,object,10.0);
ds_map_add(global.weaponDisplayRange,object,"Medium");
ds_map_add(global.weaponRangeEffective,object,196.0);
ds_map_add(global.weaponRangeMax,object,304.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,12.0);
ds_map_add(global.weaponReloadTime,object,108.0);
ds_map_add(global.weaponOffsetX,object,16.0);
ds_map_add(global.weaponOffsetY,object,5.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"medium");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "revolver";
global.weapon[1] = "revolver";
ds_map_add(global.weaponName,object,"Revolver");
ds_map_add(global.weaponDescription,object,"A weapon that transforms you into  a cowboy. YEEEE HAAA!");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Handgun");
ds_map_add(global.weaponCrosshair,object,"pistol");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"handgun");
ds_map_add(global.weaponDamage,object,140.0);
ds_map_add(global.weaponRof,object,60.0);
ds_map_add(global.weaponDisplayRange,object,"Short");
ds_map_add(global.weaponRangeEffective,object,64.0);
ds_map_add(global.weaponRangeMax,object,196.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,6.0);
ds_map_add(global.weaponReloadTime,object,180.0);
ds_map_add(global.weaponOffsetX,object,15.0);
ds_map_add(global.weaponOffsetY,object,5.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"medium");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "silenced";
global.weapon[2] = "silenced";
ds_map_add(global.weaponName,object,"Silenced Pistol");
ds_map_add(global.weaponDescription,object,"An hitman's favourite weapon for mid range engagements.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Handgun");
ds_map_add(global.weaponCrosshair,object,"pistol");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"handgun");
ds_map_add(global.weaponDamage,object,55.0);
ds_map_add(global.weaponRof,object,15.0);
ds_map_add(global.weaponDisplayRange,object,"Medium");
ds_map_add(global.weaponRangeEffective,object,196.0);
ds_map_add(global.weaponRangeMax,object,304.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,8.0);
ds_map_add(global.weaponReloadTime,object,108.0);
ds_map_add(global.weaponOffsetX,object,19.0);
ds_map_add(global.weaponOffsetY,object,5.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"medium");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "shotgun";
global.weapon[3] = "shotgun";
ds_map_add(global.weaponName,object,"Shotgun");
ds_map_add(global.weaponDescription,object,"A mid range weapon with a decent spread.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Shotgun");
ds_map_add(global.weaponCrosshair,object,"shotgun");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,30.0);
ds_map_add(global.weaponRof,object,90.0);
ds_map_add(global.weaponDisplayRange,object,"Short");
ds_map_add(global.weaponRangeEffective,object,128.0);
ds_map_add(global.weaponRangeMax,object,256.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,8.0);
ds_map_add(global.weaponShotAmount,object,6.0);
ds_map_add(global.weaponClip,object,6.0);
ds_map_add(global.weaponReloadTime,object,180.0);
ds_map_add(global.weaponOffsetX,object,21.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,0.9);
ds_map_add(global.weaponDisplaySpeed,object,"Slow");
ds_map_add(global.weaponRangeClass,object,"close");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "shaftgun";
global.weapon[4] = "shaftgun";
ds_map_add(global.weaponName,object,"Shaftgun");
ds_map_add(global.weaponDescription,object,"A weapon useful only when fired at point blank range.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Shotgun");
ds_map_add(global.weaponCrosshair,object,"shotgun");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,25.0);
ds_map_add(global.weaponRof,object,50.0);
ds_map_add(global.weaponDisplayRange,object,"Point Blank");
ds_map_add(global.weaponRangeEffective,object,96.0);
ds_map_add(global.weaponRangeMax,object,192.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,15.0);
ds_map_add(global.weaponShotAmount,object,8.0);
ds_map_add(global.weaponClip,object,4.0);
ds_map_add(global.weaponReloadTime,object,150.0);
ds_map_add(global.weaponOffsetX,object,16.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"close");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "ak";
global.weapon[5] = "ak";
ds_map_add(global.weaponName,object,"AK-47");
ds_map_add(global.weaponDescription,object,"An incredibly reliable weapon that packs a decent punch.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Assault");
ds_map_add(global.weaponCrosshair,object,"rifle");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,27.0);
ds_map_add(global.weaponRof,object,7.0);
ds_map_add(global.weaponDisplayRange,object,"Medium");
ds_map_add(global.weaponRangeEffective,object,196.0);
ds_map_add(global.weaponRangeMax,object,304.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,15.0);
ds_map_add(global.weaponReloadTime,object,120.0);
ds_map_add(global.weaponOffsetX,object,21.0);
ds_map_add(global.weaponOffsetY,object,5.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,0.9);
ds_map_add(global.weaponDisplaySpeed,object,"Slow");
ds_map_add(global.weaponRangeClass,object,"medium");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "rifle";
global.weapon[6] = "rifle";
ds_map_add(global.weaponName,object,"Assault Rifle");
ds_map_add(global.weaponDescription,object,"A standard assault rifle with a decent range.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Assault");
ds_map_add(global.weaponCrosshair,object,"rifle");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,12.0);
ds_map_add(global.weaponRof,object,5.0);
ds_map_add(global.weaponDisplayRange,object,"Far");
ds_map_add(global.weaponRangeEffective,object,256.0);
ds_map_add(global.weaponRangeMax,object,384.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,20.0);
ds_map_add(global.weaponReloadTime,object,120.0);
ds_map_add(global.weaponOffsetX,object,22.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,0.9);
ds_map_add(global.weaponDisplaySpeed,object,"Slow");
ds_map_add(global.weaponRangeClass,object,"medium");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "biotic";
global.weapon[7] = "biotic";
ds_map_add(global.weaponName,object,"Biotic Rifle");
ds_map_add(global.weaponDescription,object,"Heal your teammates, kill your enemies. Not the other way around.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Burst");
ds_map_add(global.weaponCrosshair,object,"rifle");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,15.0);
ds_map_add(global.weaponRof,object,10.0);
ds_map_add(global.weaponDisplayRange,object,"Medium");
ds_map_add(global.weaponRangeEffective,object,196.0);
ds_map_add(global.weaponRangeMax,object,304.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,6.0);
ds_map_add(global.weaponReloadTime,object,120.0);
ds_map_add(global.weaponOffsetX,object,20.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_biotic);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"medium");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,true);


var object = "uzi";
global.weapon[8] = "uzi";
ds_map_add(global.weaponName,object,"Uzi");
ds_map_add(global.weaponDescription,object,"Spews bullets like there is not tomorrow, because why not.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"SMG");
ds_map_add(global.weaponCrosshair,object,"rifle");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,14.0);
ds_map_add(global.weaponRof,object,5.0);
ds_map_add(global.weaponDisplayRange,object,"Medium");
ds_map_add(global.weaponRangeEffective,object,164.0);
ds_map_add(global.weaponRangeMax,object,256.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,30.0);
ds_map_add(global.weaponReloadTime,object,150.0);
ds_map_add(global.weaponOffsetX,object,16.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"medium");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "sniper";
global.weapon[9] = "sniper";
ds_map_add(global.weaponName,object,"Sniper Rifle");
ds_map_add(global.weaponDescription,object,"An incredibly long range one shot weapon.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Bolt Action");
ds_map_add(global.weaponCrosshair,object,"sniper");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,300.0);
ds_map_add(global.weaponRof,object,60.0);
ds_map_add(global.weaponDisplayRange,object,"Insane");
ds_map_add(global.weaponRangeEffective,object,304.0);
ds_map_add(global.weaponRangeMax,object,512.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,1.0);
ds_map_add(global.weaponReloadTime,object,150.0);
ds_map_add(global.weaponOffsetX,object,24.0);
ds_map_add(global.weaponOffsetY,object,5.0);
ds_map_add(global.weaponObjectCreate,object,obj_bullet);
ds_map_add(global.weaponSpeedMultiplier,object,0.9);
ds_map_add(global.weaponDisplaySpeed,object,"Slow");
ds_map_add(global.weaponRangeClass,object,"misc");
ds_map_add(global.weaponMuzzleFlash,object,true);
ds_map_add(global.weaponHeal,object,false);


var object = "rocket";
global.weapon[10] = "rocket";
ds_map_add(global.weaponName,object,"Rocket Launcher");
ds_map_add(global.weaponDescription,object,"I have a rocket launcher. Your argument is INVALID!!!!");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Launcher");
ds_map_add(global.weaponCrosshair,object,"rocket");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,150.0);
ds_map_add(global.weaponRof,object,60.0);
ds_map_add(global.weaponDisplayRange,object,"Insane");
ds_map_add(global.weaponRangeEffective,object,1024.0);
ds_map_add(global.weaponRangeMax,object,1024.0);
ds_map_add(global.weaponRangeAoe,object,64.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,1.0);
ds_map_add(global.weaponReloadTime,object,210.0);
ds_map_add(global.weaponOffsetX,object,24.0);
ds_map_add(global.weaponOffsetY,object,5.0);
ds_map_add(global.weaponObjectCreate,object,obj_rocket);
ds_map_add(global.weaponSpeedMultiplier,object,0.8);
ds_map_add(global.weaponDisplaySpeed,object,"Very Slow");
ds_map_add(global.weaponRangeClass,object,"misc");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "laser";
global.weapon[11] = "laser";
ds_map_add(global.weaponName,object,"Laser Cannon");
ds_map_add(global.weaponDescription,object,"Nothing like the sweet humming of a laser beam to annihilate your enemies.");
ds_map_add(global.weaponAutofire,object,true);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Beam");
ds_map_add(global.weaponCrosshair,object,"beam");
ds_map_add(global.weaponCrosshairAngle,object,180.0);
ds_map_add(global.weaponStance,object,"rifle");
ds_map_add(global.weaponDamage,object,4.0);
ds_map_add(global.weaponRof,object,1.0);
ds_map_add(global.weaponDisplayRange,object,"Medium");
ds_map_add(global.weaponRangeEffective,object,212.0);
ds_map_add(global.weaponRangeMax,object,256.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,100.0);
ds_map_add(global.weaponReloadTime,object,180.0);
ds_map_add(global.weaponOffsetX,object,22.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_laser);
ds_map_add(global.weaponSpeedMultiplier,object,0.9);
ds_map_add(global.weaponDisplaySpeed,object,"Slow");
ds_map_add(global.weaponRangeClass,object,"misc");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "shield";
global.weapon[12] = "shield";
ds_map_add(global.weaponName,object,"Riot Shield");
ds_map_add(global.weaponDescription,object,"Strong, sturdy, and only takes 20% of damage from the front.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Melee");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"push");
ds_map_add(global.weaponDamage,object,15.0);
ds_map_add(global.weaponRof,object,60.0);
ds_map_add(global.weaponDisplayRange,object,"Point Blank");
ds_map_add(global.weaponRangeEffective,object,16.0);
ds_map_add(global.weaponRangeMax,object,16.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,45.0);
ds_map_add(global.weaponShotAmount,object,8.0);
ds_map_add(global.weaponClip,object,0.0);
ds_map_add(global.weaponReloadTime,object,0.0);
ds_map_add(global.weaponOffsetX,object,12.0);
ds_map_add(global.weaponOffsetY,object,0.0);
ds_map_add(global.weaponObjectCreate,object,obj_melee);
ds_map_add(global.weaponSpeedMultiplier,object,0.9);
ds_map_add(global.weaponDisplaySpeed,object,"Slow");
ds_map_add(global.weaponRangeClass,object,"close");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "sword";
global.weapon[13] = "sword";
ds_map_add(global.weaponName,object,"Broadsword");
ds_map_add(global.weaponDescription,object,"The ultimate weapon to turn your foes into a wonderful sushi.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Melee");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"handgun");
ds_map_add(global.weaponDamage,object,9.0);
ds_map_add(global.weaponRof,object,5.0);
ds_map_add(global.weaponDisplayRange,object,"Melee");
ds_map_add(global.weaponRangeEffective,object,16.0);
ds_map_add(global.weaponRangeMax,object,16.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,20.0);
ds_map_add(global.weaponShotAmount,object,5.0);
ds_map_add(global.weaponClip,object,0.0);
ds_map_add(global.weaponReloadTime,object,0.0);
ds_map_add(global.weaponOffsetX,object,12.0);
ds_map_add(global.weaponOffsetY,object,0.0);
ds_map_add(global.weaponObjectCreate,object,obj_melee);
ds_map_add(global.weaponSpeedMultiplier,object,1.1);
ds_map_add(global.weaponDisplaySpeed,object,"Fast");
ds_map_add(global.weaponRangeClass,object,"close");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "axe";
global.weapon[14] = "axe";
ds_map_add(global.weaponName,object,"Battle Axe");
ds_map_add(global.weaponDescription,object,"Hack first. Axe questions later.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"weapon");
ds_map_add(global.weaponDisplayType,object,"Melee");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"handgun");
ds_map_add(global.weaponDamage,object,19.0);
ds_map_add(global.weaponRof,object,30.0);
ds_map_add(global.weaponDisplayRange,object,"Melee");
ds_map_add(global.weaponRangeEffective,object,16.0);
ds_map_add(global.weaponRangeMax,object,16.0);
ds_map_add(global.weaponRangeAoe,object,0.0);
ds_map_add(global.weaponDeviation,object,45.0);
ds_map_add(global.weaponShotAmount,object,5.0);
ds_map_add(global.weaponClip,object,0.0);
ds_map_add(global.weaponReloadTime,object,0.0);
ds_map_add(global.weaponOffsetX,object,12.0);
ds_map_add(global.weaponOffsetY,object,0.0);
ds_map_add(global.weaponObjectCreate,object,obj_melee);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"close");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "grenade";
global.weapon[15] = "grenade";
ds_map_add(global.weaponName,object,"Grenade");
ds_map_add(global.weaponDescription,object,"Walk away and look cool while things blow up behind you. Oh yeah.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"throwable");
ds_map_add(global.weaponDisplayType,object,"Grenade");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"throw");
ds_map_add(global.weaponDamage,object,150.0);
ds_map_add(global.weaponRof,object,0.0);
ds_map_add(global.weaponDisplayRange,object,"Variable");
ds_map_add(global.weaponRangeEffective,object,0.0);
ds_map_add(global.weaponRangeMax,object,0.0);
ds_map_add(global.weaponRangeAoe,object,64.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,1.0);
ds_map_add(global.weaponReloadTime,object,300.0);
ds_map_add(global.weaponOffsetX,object,8.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_grenade);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"grenade");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "zone";
global.weapon[16] = "zone";
ds_map_add(global.weaponName,object,"The Zone");
ds_map_add(global.weaponDescription,object,"A dense bomb full of a slowly expanding evil.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"throwable");
ds_map_add(global.weaponDisplayType,object,"Grenade");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"throw");
ds_map_add(global.weaponDamage,object,20.0);
ds_map_add(global.weaponRof,object,600.0);
ds_map_add(global.weaponDisplayRange,object,"Variable");
ds_map_add(global.weaponRangeEffective,object,0.0);
ds_map_add(global.weaponRangeMax,object,0.0);
ds_map_add(global.weaponRangeAoe,object,128.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,1.0);
ds_map_add(global.weaponReloadTime,object,300.0);
ds_map_add(global.weaponOffsetX,object,8.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_zone);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"grenade");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "bionade";
global.weapon[17] = "bionade";
ds_map_add(global.weaponName,object,"Bionade");
ds_map_add(global.weaponDescription,object,"You get free healing! And You get free healing! Everybody gets free healing!!!");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"throwable");
ds_map_add(global.weaponDisplayType,object,"Grenade");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"throw");
ds_map_add(global.weaponDamage,object,150.0);
ds_map_add(global.weaponRof,object,0.0);
ds_map_add(global.weaponDisplayRange,object,"Variable");
ds_map_add(global.weaponRangeEffective,object,0.0);
ds_map_add(global.weaponRangeMax,object,0.0);
ds_map_add(global.weaponRangeAoe,object,96.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,1.0);
ds_map_add(global.weaponReloadTime,object,180.0);
ds_map_add(global.weaponOffsetX,object,8.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_bionade);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"grenade");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "glassnade";
global.weapon[18] = "glassnade";
ds_map_add(global.weaponName,object,"Frostspark");
ds_map_add(global.weaponDescription,object,"Creates a protective barrier of ice around it.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"throwable");
ds_map_add(global.weaponDisplayType,object,"Grenade");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"throw");
ds_map_add(global.weaponDamage,object,0.0);
ds_map_add(global.weaponRof,object,0.0);
ds_map_add(global.weaponDisplayRange,object,"Variable");
ds_map_add(global.weaponRangeEffective,object,0.0);
ds_map_add(global.weaponRangeMax,object,0.0);
ds_map_add(global.weaponRangeAoe,object,96.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,1.0);
ds_map_add(global.weaponReloadTime,object,180.0);
ds_map_add(global.weaponOffsetX,object,8.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_glassnade);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"grenade");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


var object = "mine";
global.weapon[19] = "mine";
ds_map_add(global.weaponName,object,"Land Mine");
ds_map_add(global.weaponDescription,object,"Nothing better to claim territory than than placing one of these down.");
ds_map_add(global.weaponAutofire,object,false);
ds_map_add(global.weaponType,object,"throwable");
ds_map_add(global.weaponDisplayType,object,"Grenade");
ds_map_add(global.weaponCrosshair,object,"none");
ds_map_add(global.weaponCrosshairAngle,object,90.0);
ds_map_add(global.weaponStance,object,"throw");
ds_map_add(global.weaponDamage,object,150.0);
ds_map_add(global.weaponRof,object,0.0);
ds_map_add(global.weaponDisplayRange,object,"Variable");
ds_map_add(global.weaponRangeEffective,object,0.0);
ds_map_add(global.weaponRangeMax,object,0.0);
ds_map_add(global.weaponRangeAoe,object,64.0);
ds_map_add(global.weaponDeviation,object,0.0);
ds_map_add(global.weaponShotAmount,object,1.0);
ds_map_add(global.weaponClip,object,1.0);
ds_map_add(global.weaponReloadTime,object,120.0);
ds_map_add(global.weaponOffsetX,object,8.0);
ds_map_add(global.weaponOffsetY,object,4.0);
ds_map_add(global.weaponObjectCreate,object,obj_mine);
ds_map_add(global.weaponSpeedMultiplier,object,1.0);
ds_map_add(global.weaponDisplaySpeed,object,"Normal");
ds_map_add(global.weaponRangeClass,object,"grenade");
ds_map_add(global.weaponMuzzleFlash,object,false);
ds_map_add(global.weaponHeal,object,false);


#macro weaponAmount 20
