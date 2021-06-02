local locales = {
	["enUS"] = {
		["Always display CD icons at full opacity (ReloadUI is needed)"] = "Always display CD icons at full opacity (ReloadUI is needed)",
		["Click on icon to enable/disable tracking"] = "Click on icon to enable/disable tracking",
		Copy = "Copy",
		["Copy other profile to current profile:"] = "Copy other profile to current profile:",
		["Current profile: [%s]"] = "Current profile: [%s]",
		["Data from '%s' has been successfully copied to '%s'"] = "Data from '%s' has been successfully copied to '%s'",
		Delete = "Delete",
		["Delete profile:"] = "Delete profile:",
		["Disable test mode"] = "Disable test mode",
		["Enable test mode (need at least one visible nameplate)"] = "Enable test mode (need at least one visible nameplate)",
		General = "General",
		["Icon size"] = "Icon size",
		["Icon X-coord offset"] = "Icon X-coord offset",
		["Icon Y-coord offset"] = "Icon Y-coord offset",
		MISC = "Misc",
		["New spell has been added: %s"] = "New spell has been added: %s",
		["Options are not available in combat!"] = "Options are not available in combat!",
		Profiles = "Profiles",
		["Profile '%s' has been successfully deleted"] = "Profile '%s' has been successfully deleted",
		["Show border around interrupts"] = "Show border around interrupts",
		["Show border around trinkets"] = "Show border around trinkets",
		["Unknown spell: %s"] = "Unknown spell: %s",
		["Value must be a number"] = "Value must be a number",
		["Font:"] = "Font:",
	},
};

-- locales["koKR"] = locales["enUS"];
-- locales["zhCN"] = locales["enUS"];
-- locales["zhTW"] = locales["enUS"];

local localizedClasses = {};
FillLocalizedClassList(localizedClasses);
for _, localeTable in pairs(locales) do
	for classToken, localizedClassName in pairs(localizedClasses) do
		localeTable[classToken] = localizedClassName;
	end
end

local _, addonTable = ...;
addonTable.L = locales[GetLocale()];
