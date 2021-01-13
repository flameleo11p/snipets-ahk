#Include %A_ScriptDir%/common/lua-like.ahk



----------------------------------------------- 
-- resource
-----------------------------------------------

m_wav1 := "/home/me/Music/effect/Windows Error.wav"
m_wav2 := "/home/me/Music/effect/Windows Exclamation.wav"

m_wav_z1 := "/home/me/Music/effect/z-on.wav"
m_wav_z2 := "/home/me/Music/effect/z-off.wav"
m_wav_g1 := "/home/me/Music/effect/g.wav"
m_wav_g := "/home/me/Music/effect/g.wav"


m_dir1 := "D:\game\Stellaris\"
m_dir2 := "D:\game\Stellaris2\"

m_exeActive := "stellaris.exe"
m_exeEntry := "stellaris-LAN.exe"

m_exeAll := "ahk_exe " . m_exeActive
m_exe1 := "ahk_exe " . m_dir1 . m_exeActive
m_exe2 := "ahk_exe " . m_dir2 . m_exeActive

m_entry1 := m_dir1 . m_exeEntry
m_entry2 := m_dir2 . m_exeEntry

-----------------------------------------------
-- config
-----------------------------------------------


-- F1, F2, ... reg by runtime
g_keyCount := {F1:0, F2:0}

g_panelInfo := { government:{name:"government", type:"mouse", key:"F1", locs:[[32, 36]]} 
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
, F2:[ g_panelInfo["factions"]
,      g_panelInfo["species"] ]
, F3:[ g_panelInfo["log"]
,      g_panelInfo["technology"] ]
, F5:[ g_panelInfo["ship"]
,      g_panelInfo["contacts"]
,      g_panelInfo["sectors"] ]
, H:[  g_panelInfo["home1"]
,      g_panelInfo["home2"]
,      g_panelInfo["home3"] ] 
, E:[  {name:"Z", rem:"page1", type:"key", key:"Z"}
,      {name:"X", rem:"page2", type:"key", key:"X"}
,      {name:"C", rem:"page3", type:"key", key:"C"}
,      {name:"V", rem:"page4", type:"key", key:"V"} ]
, Q:[  {name:"V", rem:"page4", type:"key", key:"V"}
,      {name:"C", rem:"page3", type:"key", key:"C"}
,      {name:"X", rem:"page2", type:"key", key:"X"}
,      {name:"Z", rem:"page1", type:"key", key:"Z"} ]
, B:[  g_panelInfo["construction1"] ]
, V:[  g_panelInfo["science1"]
,      g_panelInfo["science2"] ]
, C:[  g_panelInfo["leaders"] ]
, X:[ {name:"stop", rem:"hold", type:"key", key:"H"} ]
, M:[ {name:"move", rem:"click once", type:"key", key:"C"} ]
, G:[ {name:"guard", rem:"switch stand", type:"key", sound:m_wav_g, key:"T"} ]
, N:[ g_panelInfo["technology"]
,     g_panelInfo["traditions"] ]
, "`":[ {name:"map", rem:"map", type:"key", key:"M"} ]
, F:[ {name:"forcus", rem:"goto", type:"key", key:"Q"} ]
, R:[ {name:"return", rem:"back", type:"key", key:"B"} ] }



g_keySubIndex := {F1:0, F2:0}
g_keyPanel := [{name:"technology", type:"key", key:"F4", locs:[[200, 18]]}, {name:"leaders", type:"mouse", locs:[[250, 16], [360, 260]]}, {name:"traditions", type:"key", key:"F8"} ]

-- stellaris window size 1600x900
-- stellaris client window position
m_pauseButtonLoc := [1418, 16]
m_technologyButtonLoc := [200, 18]


-----------------------------------------------
-- func
-----------------------------------------------

proc_keyPanel(key) {
  global m_exeAll
  global g_keyCount, g_keyPanels
  
  if not WinActive(m_exeAll) {
    print("not in ")
    pressKey(key, true)
    return
  }
  
  print("222 in ")
  
  print(g_keyCount[key])
  print(AorB(g_keyCount[key], 0))

  g_keyCount[key] := AorB(g_keyCount[key], 0) + 1
  g_keyCount[key] := Mod(g_keyCount[key], g_keyPanels[key].Length())
  print(g_keyCount[key])
  print(g_keyPanels[key].Length())


  index := g_keyCount[key] + 1
  item := g_keyPanels[key][index]
  print(item["name"])

  -- play sound effect
  if (item["sound"]) {
    print(333, item["sound"], 44)
    playSoundEffect(item["sound"])
  }

  if (item["type"] == "mouse") {
    for i, loc in item["locs"]
      clickMouseLoc(loc)
  } else if (item["type"] == "key") {
    pressKey(item["key"])
  }




  return
}

reg_hotKey(key) {
  regHotkeyProc(key, true, "proc_keyPanel", key)
}

-----------------------------------------------
-- run
-----------------------------------------------

for key, _ in g_keyPanels
  reg_hotKey(key)

if not WinExist(m_exe1) {
  run(m_entry1, true)
}

if not WinExist(m_exe2) {
  run(m_entry2, true)
}

return

-----------------------------------------------
-- hotkey proc
-----------------------------------------------

$z::
state := GetKeyState("z", "p")
state2 := GetKeyState("Shift", "p")
if (state and !state2) {
  playSoundEffect(m_wav_z1)
  Send {c}
  Send {Shift down}
}
return

$+z up::
playSoundEffect(m_wav_z2)
Send {shift up}
Send {RButton}
return


$TAB::

if WinActive(m_exe1) {
  SoundPlay, %m_wav2%
  WinActivate, %m_exe2%
} else {
  SoundPlay, %m_wav1%
  WinActivate, %m_exe1%
}
return

$Space::
if WinActive(m_exeAll) {
  clickMouseLoc(m_pauseButtonLoc)
} else {
  Send, {Space}
}
return


-- $Tab::
-- if WinActive(m_exeAll) {
--   pressKey(g_keyPanel[1].key)
-- } else {
--   Send, {Tab}
-- }
-- return

