-- Far Cry 5 Cheat Menu Lua

-- Invincible
ce_set_value("ai_to_player_damage", 0, 0, 0, 0.0, 0.0, 0.0)

-- Max ammo per clip
ce_open_process("FarCry5.exe")
ce_search("bullets_per_clip", 4)
ce_set_value("bullets_per_clip", 999)
ce_close_process()

-- Developer Mode
ce_add_command("devmode", "Start the game with the -DEVMODE command line parameter.", function()
    ce_execute("start FarCry5.exe -DEVMODE")
end)

-- Spawn point [F3]
ce_add_hotkey("F3", "Spawn point", function()
    ce_execute("spawn_point")
end)

-- All weapons [P]
ce_add_hotkey("P", "All weapons", function()
    ce_execute("all_weapons")
end)

-- 999 ammunition [O]
ce_add_hotkey("O", "999 ammunition", function()
    ce_execute("999_ammo")
end)

-- Toggle no clipping [F4]
ce_add_hotkey("F4", "Toggle no clipping", function()
    ce_execute("toggle_noclip")
end)

-- Move to next checkpoint [F2]
ce_add_hotkey("F2", "Move to next checkpoint", function()
    ce_execute("move_to_next_checkpoint")
end)

-- Save current position [F9]
ce_add_hotkey("F9", "Save current position", function()
    ce_execute("save_current_position")
end)

-- Load current position [F10]
ce_add_hotkey("F10", "Load current position", function()
    ce_execute("load_current_position")
end)

-- Toggle extra information [F11]
ce_add_hotkey("F11", "Toggle extra information", function()
    ce_execute("toggle_extra_information")
end)

-- Toggle first and third person view [F1]
ce_add_hotkey("F1", "Toggle first and third person view", function()
    ce_execute("toggle_first_third_person_view")
end)

-- Toggle God mode [Backspace]
ce_add_hotkey("Backspace", "Toggle God mode", function()
    ce_execute("toggle_god_mode")
end)

-- Increase speed [Equals]
ce_add_hotkey("=", "Increase speed", function()
    ce_execute("increase_speed")
end)

-- Decrease speed [Minus]
ce_add_hotkey("-", "Decrease speed", function()
    ce_execute("decrease_speed")
end)

-- Return to Default speed [F5]
ce_add_hotkey("F5", "Return to Default speed", function()
    ce_execute("return_to_default_speed")
end)

-- Hex Cheat For 0 Damage
ce_open_process("FarCry5.exe")
ce_search("ai_to_player_damage", 4)
ce_set_value("ai_to_player_damage", 0, 0, 0, 0.0, 0.0, 0.0)
ce_close_process()

-- Quick Save
ce_add_hotkey("~", "Quick Save", function()
    ce_execute("quick_save")
end)

-- Ammunition
ce_add_hotkey("~", "Ammunition", function()
    ce_execute("give_all_ammo")
end)

-- Quick Load
ce_add_hotkey("~", "Quick Load", function()
    ce_execute("quick_load")
end)

-- God Mode
ce_add_hotkey("~", "God Mode", function()
    ce_execute("god_mode")
end)
