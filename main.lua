print("weeklynico")

panel01 = vci.assets.GetSubItem("panel01")
panel02 = vci.assets.GetSubItem("panel02")
resetpoint = panel02.GetPosition()
nowpoint = panel01.GetPosition()

function onTriggerEnter(item, hit)
  print("Trigger Enter")
  print(string.format("%s <= %s", item, hit))

  if vci.studio.HasHammer() == false then
    print("no pikohan")
    return
  else
    print("yes pikohan")
    panel01.SetPosition(resetpoint)
    panel02.SetPosition(nowpoint)
  end
end