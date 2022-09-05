{
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1920,"hview":1080,"xport":0,"yport":0,"wport":1920,"hport":1080,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_tintfilter","properties":[
        {"type":1,"name":"g_TintCol","value":"#FFFFFFFF",},
      ],"resourceVersion":"1.0","name":"Effect_1","tags":[],"resourceType":"GMREffectLayer",},
    {"instances":[
        {"properties":[],"isDnd":false,"objectId":{"name":"rm_start_manager","path":"objects/rm_start_manager/rm_start_manager.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":32.0,"y":32.0,"resourceVersion":"1.0","name":"inst_1D2170B5","tags":[],"resourceType":"GMRInstance",},
      ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Instances","tags":[],"resourceType":"GMRInstanceLayer",},
    {"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_colourise","properties":[
        {"type":0,"name":"g_Intensity","value":"0.275",},
        {"type":1,"name":"g_TintCol","value":"#FF8EA6CC",},
      ],"resourceVersion":"1.0","name":"color_effect","tags":[],"resourceType":"GMREffectLayer",},
    {"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_linear_blur","properties":[
        {"type":0,"name":"g_LinearBlurVector","value":"5",},
        {"type":0,"name":"g_LinearBlurVector","value":"5",},
        {"type":2,"name":"g_NoiseTexture","value":"_filter_linear_blur_noise",},
      ],"resourceVersion":"1.0","name":"blur_effect","tags":[],"resourceType":"GMREffectLayer",},
    {"spriteId":{"name":"spr_title_background","path":"sprites/spr_title_background/spr_title_background.yy",},"colour":4294967295,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":30.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Background","tags":[],"resourceType":"GMRBackgroundLayer",},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_1D2170B5","path":"rooms/rm_start/rm_start.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 1920,
    "Height": 1080,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": false,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "resourceVersion": "1.0",
  "name": "rm_start",
  "tags": [],
  "resourceType": "GMRoom",
}