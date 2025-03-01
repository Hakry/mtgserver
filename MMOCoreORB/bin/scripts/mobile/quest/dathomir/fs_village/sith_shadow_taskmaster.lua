sith_shadow_taskmaster = Creature:new {
	objectName = "@mob/creature_names:shadow_nco",
	socialGroup = "sith_shadow",
	faction = "sith_shadow",
	mobType = MOB_NPC,
	level = 87,
	chanceHit = 0.75,
	damageMin = 620,
	damageMax = 950,
	baseXp = 8315,
	baseHAM = 12400,
	baseHAMmax = 15200,
	armor = 1,
	resists = {70,70,70,70,70,70,70,70,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "sith_shadow" },
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "tailor_components", chance = 1500000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "printer_parts", chance = 1000000},
				{group = "wearables_common", chance = 1000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
			},
		},
		{
			groups = {
				{group = "village_resources", chance =  10000000}
			},
			lootChance = 7500000
		},
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	thrownWeapon = "thrown_weapons",

	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(riflemanmaster,pistoleermaster,carbineermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(sith_shadow_taskmaster, "sith_shadow_taskmaster")
