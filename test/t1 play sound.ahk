#Include ./common/lua-like.ahk

-----------------------------------------------
-- hotkey proc
-----------------------------------------------

m_wav5 := "C:\Users\E2160\Music\red_alert_2\g.wav"



item :={name:"Z", rem:"page1", type:"key", sound:m_wav5, key:"Z"}


$z::
  print(1, item["sound"], 2)
  if (item["sound"]) {
    print(333, item["sound"], 44)
    playSoundEffect(item["sound"])
  }
  
  

return

