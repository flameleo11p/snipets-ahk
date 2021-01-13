
KEY_BINDING := { "W": 1 }
{
"up"    : "123",
"down"  : "123",
"left"  : "123",
"right" : "123",
"X"     : "123",
"Y"     : "123",
"A"     : "123",
"B"     : "123",
"LT"     : "123",
"RT"     : "123",
"LB"     : "123",
"RB"     : "123",
"back"     : "123",
"start"     : "123",

}

m_panelList_TAB := [
  Z X C V
]
m_panelList_F1 := [
  -- {name:"government", type:"key", key:"F1"},
  -- {name:"home", type:"key", key:"1"},
  -- {name:"home", type:"key", key:"1"},


  -- {name:"log", type:"key", key:"F3"},
]


  -- {name:"government", type:"key", key:"F1"},
  -- {name:"log", type:"key", key:"F3"},

  -- {name:"technology", type:"mouse", key:"F6", locs:[[200, 18]]},
  -- {name:"leaders", type:"mouse", locs:[[200, 18], [200, 18]]},
  -- {name:"traditions", type:"key", key:"F8"}

  -- {name:"ship", type:"key", key:"F10"},
  -- {name:"policies", type:"key", key:"F6"},
  -- {name:"species", type:"mouse", locs:[[200, 18], [200, 18]]},
  -- {name:"sectors", type:"key", key:"F5"},
  -- {name:"factions", type:"key", key:"F7"},
  -- {name:"contacts", type:"key", key:"F2"},


g_keySubIndex := {f1:0, f2:0}

g_panelInfo := {
government:{name:"government", type:"key", key:"F1" }, 
log:{name:"log", type:"key", key:"F3"},
technology:{name:"technology", type:"key", key:"F4", locs:[[200, 18]]}, 
sectors:{name:"sectors", type:"key", key:"F5"},
edicts:{name:"edicts", type:"key", key:"F6"},
factions:{name:"factions", type:"key", key:"F7"},
traditions:{name:"traditions", type:"key", key:"F8"} 
leaders:{name:"leaders", type:"mouse", locs:[[250, 16], [360, 260]]}, 
species:{name:"species", type:"mouse", locs:[[250, 16], [360, 220]]}
science2:{name:"science2", rem:"team0", type:"key", key:"0"}, 
home1:{name:"home1", rem:"team5", type:"key", key:"5"}, 
home2:{name:"home2", rem:"team6", type:"key", key:"6"}, 
home3:{name:"home3", rem:"team7", type:"key", key:"7"}, 
construction1:{name:"construction1", rem:"team8", type:"key", key:"8"}, 
science1:{name:"science1", rem:"team9", type:"key", key:"9"}, 
ship:{name:"ship", type:"key", key:"F10"}
}


g_keyPanels := {

F1:[
g_panelInfo["government"],
g_panelInfo["home1"],
g_panelInfo["edicts"]
],

F2:[
g_panelInfo["leaders"],
g_panelInfo["species"],
g_panelInfo["factions"]
],

F3:[
g_panelInfo["log"],
g_panelInfo["technology"],
g_panelInfo["traditions"]
],

F5:[
g_panelInfo["ship"],
g_panelInfo["contacts"],
g_panelInfo["sectors"]
],

H:[
g_panelInfo["home1"],
g_panelInfo["home2"],
g_panelInfo["home3"]
],

B:[
g_panelInfo["construction1"]
],

V:[
g_panelInfo["science1"],
g_panelInfo["science2"]
],

C:[
g_panelInfo["leaders"]
],

X:[
{name:"stop, hold", type:"key", key:"H"}
],

F:[
{name:"forcus, goto", type:"key", key:"Q"}
],

R:[
{name:"return, back", type:"key", key:"B"}
]
CXZV
}555
XCVZXCVZXCVZX
X
E:[
{name:"->", type:"key", key:"Z X C V"}
],
Q:[
{name:"<-", type:"key", key:"Z X C V"}
],
Z:[HH
{name:"shift move", type:"key", key:"C"}
],
XCCCxxXCCXXXXXXXXX
XCCCXCCEEEXCV
H    5  home55
     6  home2

B    7  construction1
     8  construction2
V    9  science1
     0  science2

C   leader
E
Z   type c on/off then click with shift move
X   stop H
R   B return
F   Q goto

==================================================
==================================================
==================================================
==================================================


-- F1, F2, ... reg by runtime
g_keyCount := {F1:0, F2:0}

g_panelInfo := { government:{name:"government", type:"key", key:"F1" } 
, log:{name:"log", type:"key", key:"F3"}
, technology:{name:"technology", type:"key", key:"F4", locs:[[200, 18]]} 
, sectors:{name:"sectors", type:"key", key:"F5"}
, edicts:{name:"edicts", type:"key", key:"F6"}
, factions:{name:"factions", type:"key", key:"F7"}
, traditions:{name:"traditions", type:"key", key:"F8"} 
, leaders:{name:"leaders", type:"mouse", locs:[[250, 16], [360, 260]]} 
, species:{name:"species", type:"mouse", locs:[[250, 16], [360, 220]]}
, science2:{name:"science2", rem:"team0", type:"key", key:"0"} 
, home1:{name:"home1", rem:"team5", type:"key", key:"5"} 
, home2:{name:"home2", rem:"team6", type:"key", key:"6"} 
, home3:{name:"home3", rem:"team7", type:"key", key:"7"} 
, construction1:{name:"construction1", rem:"team8", type:"key", key:"8"} 
, science1:{name:"science1", rem:"team9", type:"key", key:"9"} 
, ship:{name:"ship", type:"key", key:"F10"} }


g_keyPanels := { F1:[ g_panelInfo["government"]
,      g_panelInfo["home1"]
,      g_panelInfo["edicts"] ]
, F2:[ g_panelInfo["leaders"]
,      g_panelInfo["species"]
,      g_panelInfo["factions"] ]
, F3:[ g_panelInfo["log"]
,      g_panelInfo["technology"]
,      g_panelInfo["traditions"] ]
, F5:[ g_panelInfo["ship"]
,      g_panelInfo["contacts"]
,      g_panelInfo["sectors"] ]
, H:[  g_panelInfo["home1"]
,      g_panelInfo["home2"]
,      g_panelInfo["home3"] ] 
, B:[  g_panelInfo["construction1"] ]
, V:[  g_panelInfo["science1"]
,      g_panelInfo["science2"] ]
, C:[  g_panelInfo["leaders"] ]
, X:[ {name:"stop", rem:"hold", type:"key", key:"H"} ]
, F:[ {name:"forcus", rem:"goto", type:"key", key:"Q"} ]
, R:[ {name:"return", rem:"back", type:"key", key:"B"} ] }






print(g_panelInfo["government"].name)
print(g_keyPanels["F2"][1].name)
print(g_keyPanels["H"][1].name)
print(g_keyPanels["R"][1].name)

