local ftech = require("__fdsl__.lib.technology")

if mods["any-planet-start"] then
  local starting_planet = settings.startup["aps-planet"].value
  if settings.startup["crushing-industry-coal"].value then
    if starting_planet == "vulcanus" then
      ftech.add_unlock("tungsten-carbide", "crushed-coal")
    elseif starting_planet == "fulgora" then
      ftech.remove_unlock("oil-processing", "crushed-grenade")
      ftech.add_unlock("explosives", "crushed-coal")
      ftech.add_unlock("explosives", "crushed-grenade")
    end
  end
end
