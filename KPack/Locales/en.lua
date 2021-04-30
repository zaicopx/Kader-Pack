local _, core = ...

local setmetatable = setmetatable
local tostring, format = tostring, string.format
local rawset, rawget = rawset, rawget
local L = setmetatable({}, {
	__newindex = function(self, key, value)
		rawset(self, key, value == true and key or value)
	end,
	__index = function(self, key)
		return key
	end
})
function L:F(line, ...)
	line = L[line]
	return format(line, ...)
end
core.L = L
core.locale = GetLocale()
-- General:
L["addon loaded. use |cffffd700/kp|r to access options."] = true
L["Enable"] = true
L["Type |cffffd700/%s|r in chat for more."] = true
L["module enabled."] = true
L["module disabled."] = true
L["Some settings require UI to be reloaded."] = true
L["enable the module."] = true
L["disable the module."] = true
L["show module status."] = true
L["Could not find module \"%s\""] = true
L["Module \"%s\" already exists"] = true
L["Please reload ui."] = true
L["Module Status"] = true
L["module status: %s"] = true
L["enable module"] = true
L["disable module"] = true
L["toggle module status"] = true
L["Tick the modules you want to disable."] = true
L["Acceptable commands for: |caaf49141%s|r"] = true
L["Unknown Command. Type \"|caaf49141%s|r\" for a list of commands."] = true
L["Available command for |caaf49141%s|r is |cffffd700%s|r"] = true
L["access |caaf49141%s|r module commands"] = true
L["to use the |caaf49141%s|r module"] = true
L["Enables or disables the module."] = true
L["Are you sure you want to reset %s to default?"] = true
L["Access module settings."] = true
L["Resets module settings to default."] = true
L["module's settings reset to default."] = true
L["|cff00ff00enabled|r"] = true
L["|cffff0000disabled|r"] = true
L["|cff00ff00ON|r"] = true
L["|cffff0000OFF|r"] = true
L["|cffffd700Example|r: %s"] = true
L["Current list of commands:"] = true
L["|cffffd700%s|r: %s"] = true
L["Character Specific"] = true
L["Enable this if you want settings to be stored per character rather than per account."] = true
-- AddOn Manager:
L["Reload UI"] = true
L["Enable all"] = true
L["Disable all"] = true
L["|cffff4400Dependencies: |r"] = true
L["|cffffffff%d|r AddOns: |cffffffff%d|r |cff00ff00Enabled|r, |cffffffff%d|r |cffff0000Disabled|r"] = true
-- Binder
L["Allows you to save your current keybinds as a profile that you can load whenever you want."] = true
L["Create Profile"] = true
L["Enter the name of the new profile then press Enter or click OK.\nThe new created profile will store the keybinds you are currently using."] = true
L["Restore Profile"] = true
L["Select the profile you want to restore or delete."] = true
L["Are you sure you want to restore the profile: %s?"] = true
L['Profile "%s" successfully restored.'] = true
L["Are you sure you want to delete the profile: %s?"] = true
L['Profile "%s" successfully deleted.'] = true
-- BlizzMove
L["Click the button below to reset all frames."] = true
L["Move/Lock a Frame"] = true
L["%s will be saved."] = true
L["%s will not be saved."] = true
L["%s will move with handler %s"] = true
-- ActionBars
L["Allows you to tweak your action bars in the limit of the allowed."] = true
L["Hide Gryphons"] = true
L["Range Detection"] = true
L["Turns your buttons red if your target is out of range."] = true
L["Dark Mode"] = true
L["Hover Mode"] = true
L["Shows your right action bars on hover."] = true
L["Scale"] = true
L["Changes action bars scale"] = true
L["Hotkeys"] = true
L["Changes the opacity of action bar hotkeys."] = true
-- ActionBarSaver
L["Count"] = true
L["Rank"] = true
L["Allows you to setup different profiles for your action bars."] = true
L["Unable to restore macros, you already have 36 global and 18 per character ones created."] = true
L["Invalid spells passed, remember you must put quotes around both of them."] = true
L["Auto macro restoration is now disabled!"] = true
L["Auto macro restoration is now enabled!"] = true
L["Checking item count is now disabled!"] = true
L["Checking item count is now enabled!"] = true
L["Auto restoring highest spell rank is now disabled!"] = true
L["Auto restoring highest spell rank is now enabled!"] = true
L['Unable to restore spell "%s" to slot #%d, it does not appear to have been learned yet.'] = true
L['Unable to restore companion "%s" to slot #%d, it does not appear to exist yet.'] = true
L['Unable to restore item "%s" to slot #%d, cannot be found in inventory.'] = true
L["Unable to restore macro id #%d to slot #%d, it appears to have been deleted."] = true
L["Saved profile %s!"] = true
L['No profile with the name "%s" exists.'] = true
L["Restored profile %s!"] = true
L["Restored profile %s, failed to restore %d buttons type /abs errors for more information."] = true
L['Cannot restore profile "%s", you can only restore profiles saved to your class.'] = true
L['You cannot rename "%s" to "%s" they are the same profile names.'] = true
L['No name specified to rename "%s" to.'] = true
L['Cannot rename "%s" to "%s" a profile already exists for %s.'] = true
L['Renamed "%s" to "%s".'] = true
L['Deleted saved profile "%s".'] = true
L['Spells "%s" and "%s" are now linked.'] = true
L["Errors found: %d"] = true
L["Available profiles are:"] = true
L["/abs save <profile> - Saves your current action bar setup under the given profile."] = true
L["/abs restore <profile> - Changes your action bars to the passed profile."] = true
L["/abs delete <profile> - Deletes the saved profile."] = true
L["/abs rename <oldProfile> <newProfile> - Renames a saved profile from oldProfile to newProfile."] = true
L['/abs link "<spell 1>" "<spell 2>" - Links a spell with another, INCLUDE QUOTES for example you can use "Shadowmeld" "War Stomp" so if War Stomp can\'t be found, it\'ll use Shadowmeld and vica versa.'] = true
L["/abs count - Toggles checking if you have the item in your inventory before restoring it, use if you have disconnect issues when restoring."] = true
L["/abs macro - Attempts to restore macros that have been deleted for a profile."] = true
L["/abs rank - Toggles if ABS should restore the highest rank of the spell, or the one saved originally."] = true
L["/abs list - Lists all saved profiles."] = true
L["Toggles checking if you have the item in your inventory before restoring it, use if you have disconnect issues when restoring."] = true
L["Attempts to restore macros that have been deleted for a profile."] = true
L["Toggles if ABS should restore the highest rank of the spell, or the one saved originally."] = true
-- AFK
L["You are AFK!"] = true
L["I am Back"] = true
-- Align
L["A very simple alignment grid with no options."] = true
-- AllStats
L["Moves the functionality of the stat dropdowns to a panel on the right side of the paperdoll, so that you can see all of your stats at once."] = true
-- AltTabber
L["Tick the sounds you want AltTabber to play:"] = true
-- Automate
L["Automates some of the more tedious tasks in WoW."] = true
L["Automatic Tasks"] = true
L["Repair equipment"] = true
L["Sell Junk"] = true
L["Shows nameplates only in combat."] = true
L["Cancel Duels"] = true
L["Skip Quest Gossip"] = true
L["Max Camera Distance"] = true
L["Achievement Screenshot"] = true
L["Automatic UI Scale"] = true
L["Auto Equipment"] = true
L["Allows you to automatocally swap gear to the selected equipment sets when you change your spec."] = true
L["Changed equipment set to |cffffd700%s|r"] = true
L["You have successfully sold %d grey items."] = true
L["Repair cost covered by Guild Bank: %dg %ds %dc."] = true
L["Your items have been repaired for %dg %ds %dc."] = true
L["You don't have enough money to repair items!"] = true
L["|cffffd700Alt-Click|r to buy a stack of item from merchant."] = true
L["You can keybind raid icons on MouseOver. Check keybindings."] = true
L["Remove Icon"] = true
-- auto mounts
L["Enter the name or link the ground and flying mounts to be used using the provided keybinding."] = true
L["Ground Mount"] = true
L["Flying Mount"] = true
L["Auto Mount/Dismount"] = true
-- BuffFrame
L["Buff Frame"] = true
L["Lightweight, it modifies your buff and debuff frames."] = true
L["Buffs"] = true
L["Debuffs"] = true
L["Buff Size"] = true
L["Debuff Size"] = true
L["Duration Font"] = true
L["Duration Font Size"] = true
L["Stack Font"] = true
L["Stack Font Size"] = true
-- Castbars
L["Castbars"] = true
L["Castbars is a lightweight, efficient and easy to use enhancement of the Blizzard castbars."] = true
L["|cFFFFFFFFDrag with mouse.\n|cFFCCCCCCUse arrow keys while dragging to fine tune position."] = true
L["Configuration Mode"] = true
L["Toggle configuration mode to allow moving frames and setting appearance options."] = true
L["Mirror Timers"] = true
L["Set the width of the %s"] = true
L["Set the height of the %s"] = true
L["Texture"] = true
L["Select texture to use for the %s"] = true
L["Bar Color"] = true
L["Set color of the %s"] = true
L["Use class color"] = true
L["Font"] = true
L["Select font to use for the %s"] = true
L["Set the font size of the %s"] = true
L["Font Outline"] = true
L["Toggles outline on the font of the %s"] = true
L["Border"] = true
L["Select border to use for the %s"] = true
L["Border Color"] = true
L["Set color of the border of the %s"] = true
L["Toggles display of the %s"] = true
L["Show Icon"] = true
L["Toggles display of the icon at the left side of the bar"] = true
L["Show Shield"] = true
L["Toggles display of the shield around the bar when the spell cannot be interrupted."] = true
L["Show Latency"] = true
L["Toggles the latency indicator, which shows the latency at the time of spell cast as a red bar at the end of the Castbar."] = true
L["Show Spell Target"] = true
L["Toggles display of the target of the spell being cast."] = true
L["Show Total Cast Time"] = true
L["Toggles display of the total cast time."] = true
L["Total Cast Time Decimals"] = true
L["Set the number of decimal places for the total cast time."] = true
L["Show Pushback"] = true
L["Toggles display of the pushback time when spell casting is delayed."] = true
L["Show Global Cooldown Spark"] = true
L["Toggles display of the global cooldown spark."] = true
L["Text Alignment"] = true
L["Set the alignment of the Castbar text"] = true
L["Left"] = true
L["Center"] = true
L["Mirror Timer %d"] = true
L["Player/Vehicle Castbar"] = true
L["Pet Castbar"] = true
L["Target Castbar"] = true
L["Focus Castbar"] = true
-- Chat Filter
L["Chat Filter"] = true
L["Verbose Mode"] = true
L["Notifies you whenever a message is filtered."] = true
L["Keywords"] = true
L["Filters out words or completely removes sentences from the chat when a blacklisted word has been found in the sentence."] = true
L["filter is now %s"] = true
L["Input is not a number"] = true
L["filter keywords are:"] = true
L["notifications are now %s"] = true
L["The message log is empty."] = true
L["Displaying the last %d messages:"] = true
L["the word |cff00ffff%s|r was added successfully."] = true
L["the word |cff00ffff%s|r was removed successfully."] = true
L["Index is out of range. Max value is |cff00ffff%d|r."] = true
L["Turn filter |cff00ff00ON|r / |cffff0000OFF|r"] = true
L["View filter keywords (case-insensitive)"] = true
L["Adds a |cff00ffffkeyword|r"] = true
L["Remove keyword by |cff00ffffposition|r"] = true
L["Show or hide filter notifications"] = true
L["View the last |cff00ffffn|r filtered messages (up to 20)"] = true
L["filtered a message from |cff00ffff%s|r"] = true
-- ChatMods
L["Adds several tweaks to chat windows, such us removing buttons, mousewheel scroll, copy chat and clickable links."] = true
L["editbox put in center"] = true
L["editbox set to default position"] = true
L["editbox position set to: |cff00ffff%s|r"] = true
L["put the editbox in the middle of the screen."] = true
L["put the editbox on top of the chat frame."] = true
L["put the editbox at the bottom of the chat frame."] = true
-- Close Up
L["Undress"] = true
L["Cannot dress NPC models."] = true
L["Allows you to zoom, reposition, and rotate the UI's builtin models so that you may get a better view."] = true
-- CombatLogFix
L["Fixes the combat log break bugs that have existed since 2.4."] = true
L["Show set options"] = true
L["Zone Clearing"] = true
L["Auto Clearing"] = true
L["Message Report"] = true
L["Queued Clearing"] = true
L["%d filtered/%d events found. Cleared combat log, as it broke."] = true
L["List of set options."] = true
L["Toggles clearing on zone type change."] = true
L["Toggles clearing combat log when it breaks."] = true
L["Toggles not clearing until you drop combat."] = true
L["Toggles reporting how many messages were found when it broke."] = true
-- CombatText
L["No Name SpellID: %s"] = true
L["unlocked."] = true
L["already unlocked."] = true
L["already locked."] = true
L["To save window positions you need to reload your UI."] = true
L["Window positions unsaved, don't forget to reload UI."] = true
L["test mode enabled."] = true
L["test mode disabled."] = true
L["%s: to move and resize frames."] = true
L["%s: to lock frames."] = true
L["%s: to toggle testmode (sample xCT output)."] = true
-- CombatTime
L["trigger the in-game stopwatch on combat"] = true
L["using stopwatch: %s"] = true
-- Combuctor
L["%s: toggle inventory"] = true
L["%s: toggle bank"] = true
L["%s: access options panel"] = true
L.ToggleInventory = "Toggle Inventory"
L.ToggleBank = "Toggle Bank"
L.InventoryTitle = "%s's Inventory"
L.BankTitle = "%s's Bank"
L.Inventory = "Inventory"
L.Bank = "Bank"
L.TotalOnRealm = "Total on %s"
L.ClickToPurchase = "<Click> to purchase"
L.Bags = "Bags"
L.BagToggle = "<LeftClick> to toggle the bag display"
L.InventoryToggle = "<RightClick> to toggle displaying the inventory frame"
L.BankToggle = "<RightClick> to toggle displaying the bank frame"
L.MoveTip = "<LeftDrag> to move"
L.ResetPositionTip = "<Alt-RightClick> to make the frame act as an interface panel"
L.Normal = "Normal"
L.Equipment = "Equipment"
L.Keys = "Keys"
L.Trade = "Trade"
L.Ammo = "Ammo"
L.Shards = "Shards"
L.SoulShard = "Soul Shard"
L.Usable = "Usable"
-- Death Recap
L["Death Recap"] = true
L["Death Recap unavailable."] = true
L["%s %s"] = true
L["%s by %s"] = true
L["(%d Overkill)"] = true
L["(%d Absorbed)"] = true
L["(%d Resisted)"] = true
L["(%d Blocked)"] = true
L["%s sec before death at %s%% health."] = true
L["Killing blow at %s%% health."] = true
-- EnhancedColourPicker & EnhancedStackSplit
L["Adds Copy and Paste Functions to the ColorPicker."] = true
L["Enhances the StackSplitFrame with numbered Buttons."] = true
-- ErrorFilter
L["Error Filter"] = true
L["Manages the errors that are displayed in the blizzard UIErrorsFrame."] = true
L["Error frame is now hidden."] = true
L["Error frame is now visible."] = true
L["hide error frame."] = true
L["show error frame."] = true
L["Show Frame"] = true
L["Enable this if you want to keep the errors frame visible for other errors."] = true
L["Tick the messages you want to disable."] = true
L["Filter Enabled: %s - Frame Shown: %s"] = true
-- FriendsInfo
L["Adds info to the friends list."] = true
L["Last seen %s ago"] = true
-- GearScoreLite:
L["Toggles display of scores on players."] = true
L["Toggles display of scores for items."] = true
L["Resets GearScore's Options back to Default."] = true
L["Toggles display of comparative info between you and your target's GearScore."] = true
L["Toggles iLevel information."] = true
L["Player Scores: %s"] = true
L["Item Scores: %s"] = true
L["Item Levels: %s"] = true
L["Comparisons: %s"] = true
L["Item Level"] = true
-- IDs
L["Adds IDs to the ingame tooltips."] = true
L["Spell ID"] = true
L["Item ID"] = true
L["Quest ID"] = true
L["Achievement ID"] = true
-- IgnoreMore
L["%s does not look like a valid player name."] = true
L["Reason for ignoring this player:"] = true
L["wipe the ingore list"] = true
L["ignore list wiped"] = true
L["(Ignored: %s: %s. Further attempts will not be shown.)"] = true
-- LookUp
L["Searching for items containing |cffffd700%s|r"] = true
L["Searching for spells containing |cffffd700%s|r"] = true
L["Search completed, |cffffd700%d|r items matched."] = true
L["Search completed, |cffffd700%d|r spells matched."] = true
L["Item ID not found in local cache."] = true
L["Spell ID not found in local cache."] = true
L["|cffffd700Item|r : %s"] = true
L["|cffffd700Spell|r : %s [%d]"] = true
L["Searches for item link in local cache."] = true
L["Searches for spell link."] = true
-- LootMessageFilter & ImprovedLootFrame
L["A slash command that allows you to search items and spells."] = true
L["Filters loot messages from other players in your group, based on item quality."] = true
L["Minimum item rarity for loot filter set to %s"] = true
L["Check the filter status."] = true
L["Condenses all loot onto one page when using the Blizzard default loot frame."] = true
L["Random"] = true
L["Self Loot"] = true
-- Lynstats
L["Total"] = true
L["Total incl. Blizzard"] = true
-- Minimap
L["Calendar"] = true
L["show minimap"] = true
L["hide minimap"] = true
L["hide zone text"] = true
L["change minimap scale"] = true
L["toggle hiding minimap in combat"] = true
L["minimap shown."] = true
L["minimap hidden."] = true
L["hide in combat: %s"] = true
L["lock the minimap"] = true
L["minimap locked."] = true
L["unlocks the minimap"] = true
L["minimap unlocked. Hold SHIFT+ALT to move it."] = true
L["Once unlocked, the minimap can be moved by holding both SHIFT and ALT buttons."] = true
L["Lock Minimap"] = true
L["Hide Minimap"] = true
L["Hide Zone Text"] = true
L["Hide in combat"] = true
-- MoveAnything
L["Reset %s? Press again to confirm"] = true
L["Resetting %s"] = true
L["MoveAnything: Reset all frames in the current profile?"] = true
L["Can't interact with %s during combat."] = true
L["Disabled during combat."] = true
L["Unsupported type: %s"] = true
L["Unsupported frame: %s"] = true
L["%s can only be hidden"] = true
L["%s can only be modified while it's shown on the screen"] = true
L["You can only move %i frames at once"] = true
L["UI element not found"] = true
L["UI element not found: %s"] = true
L["Profiles can't be switched during combat"] = true
L["Syntax: /unmove framename"] = true
L["Syntax: /moveimport ProfileName"] = true
L["Syntax: /moveexport ProfileName"] = true
L["Syntax: /movedelete ProfileName"] = true
L["Syntax: /hide ProfileName"] = true
L["Unknown profile: %s"] = true
L["Profile imported: %s"] = true
L["Profile exported: %s"] = true
L["Profile deleted: %s"] = true
L["Can't delete current profile during combat"] = true
L["Profiles"] = true
L["Current"] = true
L["No named elements found"] = true
L["Use character specific settings"] = true
L["Current profile: %s"] = true
L.MATTHelp = "Toggles display of tooltips. Press Shift when mousing over elements to reverse tooltip display behavior"
L.MAMFHelp = "Show only modified frames"
L.MACEHelp = "Toggle all categories"
L.MASyncHelp = "Synchronizes all frames modified by MoveAnything"
L.MACloseHelp = "Closes this dialog. Ctrl-Shift-Alt click reloads the interface"
L.MAResetHelp = "Resets all frames"
-- Nameplates
L["Nameplates"] = true
L["changes nameplates font size"] = true
L["changes nameplates height"] = true
L["changes nameplates width"] = true
L["shortens health text"] = true
L["toggles health percentage"] = true
L["toggles health text"] = true
L["toggles max health text"] = true
L["Appearance"] = true
L["Width"] = true
L["Height"] = true
L["Font Size"] = true
L["Outline"] = true
L["Thin outline"] = true
L["Thick outline"] = true
L["Monochrome"] = true
L["Outlined monochrome"] = true
L["Hide Name"] = true
L["Hide Level"] = true
L["Health Text"] = true
L["Show Health Text"] = true
L["Show Max Health"] = true
L["Shorten Health Text"] = true
L["Show Health Percent"] = true
L["Tank Mode"] = true
L["Bar color when you have threat."] = true
-- Personal Resources
L['Mimics the retail feature named "Personal Resource Display".'] = true
L["Show Percentage"] = true
L["show personal resources"] = true
L["hide personal resources"] = true
L["toggle showing percentage of health and power"] = true
L["toggle showing personal resources out of combat"] = true
L["change personal resources scale"] = true
L["change personal resources width"] = true
L["change personal resources height"] = true
L["Show out of combat"] = true
L["Show percentage"] = true
-- SimpleComboPoints
L["The width must be a valid number"] = true
L["The height must be a valid number"] = true
L["Scale has to be a number, recommended to be between 0.5 and 3"] = true
L["The spacing must be a valid number"] = true
L["Changes the points width or height."] = true
L["Show out of combat: %s"] = true
L["Changes frame scale."] = true
L["Changes spacing between points."] = true
L["Changes points color."] = true
L["Toggles showing combo points out of combat."] = true
L["Hide out of combat"] = true
L["Color"] = true
-- Simplified
L["Combat logging is currently %s."] = true
L["Combat logging is now %s."] = true
L["Change Specilization"] = true
-- TellMeWhen
L["Resize"] = true
L["Click and drag to change size."] = true
L["Choose spell/item/buff/etc."] = true
L["Enter the Name or Id of the Spell, Ability, Item, Buff, Debuff you want this icon to monitor. You can add multiple Buffs/Debuffs by seperating them with ;"] = true
L["Icon type"] = true
L["Cooldown"] = true
L["Reactive spell or ability"] = true
L["Temporary weapon enchant"] = true
L["Totem/non-MoG Ghoul"] = true
L["Cooldown type"] = true
L["Spell or ability"] = true
L["Item"] = true
L["Buff or Debuff"] = true
L["Buff"] = true
L["Debuff"] = true
L["Show icon when"] = true
L["Unusable"] = true
L["Present"] = true
L["Absent"] = true
L["Always"] = true
L["Weapon slot to monitor"] = true
L["Unit to watch"] = true
L["Target of Target"] = true
L["Focus Target"] = true
L["Pet Target"] = true
L["Only show if cast by self"] = true
L["Show timer"] = true
L["More options"] = true
L["Clear settings"] = true
L["These options allow you to change the number, arrangement, and behavior of reminder icons."] = true
L["Right click for icon options. More options in Blizzard interface options menu. Type /tellmewhen to lock and enable module."] = true
L["Are you sure you want to reset all groups?"] = true
L["Groups have been reset!"] = true
L["Lock"] = true
L["Unlock"] = true
L['Icons work when locked. When unlocked, you can move/size icon groups and right click individual icons for more settings. You can also type "/tellmewhen" or "/tmw" to lock/unlock.'] = true
L["Show and enable this group of icons."] = true
L["Primary Spec"] = true
L["Check to show this group of icons while in primary spec."] = true
L["Secondary Spec"] = true
L["Check to show this group of icons while in secondary spec."] = true
L["Only in combat"] = true
L["Check to only show this group of icons while in combat."] = true
L["Columns"] = true
L["Set the number of icon columns in this group."] = true
L["Rows"] = true
L["Set the number of icon rows in this group."] = true
L["Spacing"] = true
L["Group %d position successfully reset."] = true
-- Tooltip
L["Tooltips"] = true
L["Enhanced Tooltips"] = true
L["Enable this if you want the change the style of tooltips."] = true
L["Move Tooltips"] = true
L["Enable this if you want to change default tooltip position."] = true
L["Position"] = true
L["Top Left"] = true
L["Top Right"] = true
L["Top"] = true
L["Bottom Left"] = true
L["Bottom Right"] = true
L["Bottom"] = true
L["Right"] = true
L["X Offset"] = true
L["Y Offset"] = true
L["Unit"] = true
L["Hides unit tooltips in combat."] = true
L["Action Bar"] = true
L["Hides your action bar spell tooltips in combat."] = true
L["Pet Bar"] = true
L["Hides your pet action bar spell tooltips in combat."] = true
L["Class Bar"] = true
L["Hides stance/shape bar tooltips in combat."] = true
-- PullnBreak
L.PULL_IN = "Pull in %s"
L.PULL_NOW = "{rt8} Pull Now! {rt8}"
L.PULL_ABORT = "{rt7} Pull ABORTED {rt7}"
L.BREAK_START = "Break starting now -- you have %s !"
L.BREAK_IN = "Break ends in %s !"
L.BREAK_NOW = "Break time is over"
L.BREAK_ABORT = "{rt7} Break Canceled {rt7}"
-- QuickButton
L["Turns module |cff00ff00ON|r or |cffff0000OFF|r."] = true
L["Turns macro creation |cff00ff00ON|r or |cffff0000OFF|r."] = true
L["button scale set to |cff00ffff%s|r"] = true
L["Scales the button."] = true
-- Raid Target Icons
L["Allows you to quickly mark raid targets using a radial menu."] = true
L["Left Click"] = true
L["Modifiers"] = true
L["CTRL"] = true
L["ALT"] = true
L["SHIFT"] = true
L["Select Icon on Hover"] = true
L["Double Left Click"] = true
L["Double Click Speed"] = true
L["Hover Wait Time"] = true
-- Raid Utility
L["Raid Utility"] = true
L["Disband Group"] = true
L["Raid Menu"] = true
L["Are you sure you want to disband the group?"] = true
L["Paladin Auras"] = true
L["Update Frequency"] = true
L["Icon Size"] = true
L["Hide Title"] = true
L["Enable this if you want to hide the title text when locked."] = true
L["Report"] = true
L["Healers Mana"] = true
L["Raid Cooldowns"] = true
L["Spawn Test bars"] = true
L["Class color"] = true
L["Custom color"] = true
L["Orientation"] = true
L["Right to left"] = true
L["Left to right"] = true
L["Max Bars"] = true
L["Grow Upwards"] = true
L["Show"] = true
L["Only show my spells"] = true
L["Never show my spells"] = true
L["Icon"] = true
L["Duration"] = true
L["Auto Invites"] = true
L["Quick Invites"] = true
L["Invite guild"] = true
L["Invite everyone in your guild at the maximum level."] = true
L["Invite zone"] = true
L["Invite everyone in your guild who are in the same zone as you."] = true
L["Keyword Invites"] = true
L["Keyword"] = true
L["Anyone who whispers you this keyword will automatically and immediately be invited to your group."] = true
L["Guild Keyword"] = true
L["Any guild member who whispers you this keyword will automatically and immediately be invited to your group."] = true
L["Rank Invites"] = true
L["Clicking any of the buttons below will invite anyone of the selected rank AND HIGHER to your group. So clicking the 3rd button will invite anyone of rank 1, 2 or 3, for example. It will first post a message in either guild or officer chat and give your guild members 10 seconds to leave their groups before doing the actual invites."] = true
L["Invite all guild members of rank %s or higher."] = true
L["Sorry, the group is full."] = true
L["All max level characters will be invited to raid in 10 seconds. Please leave your groups."] = true
L["All characters in %s will be invited to raid in 10 seconds. Please leave your groups."] = true
L["All characters of rank %s or higher will be invited to raid in 10 seconds. Please leave your groups."] = true
-- UnitFrames
L["changes the unit frames scale."] = true
L["To move the player and target, hold SHIFT and ALT while dragging them around."] = true
-- Viewporter
L["Viewporter"] = true
L["toggles viewporter status"] = true
L["where side is left, right, top or bottom."] = true