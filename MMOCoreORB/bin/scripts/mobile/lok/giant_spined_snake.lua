giant_spined_snake = Creature:new {
	objectName = "@mob/creature_names:giant_spined_snake",
	socialGroup = "spine_snake",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 22,
	chanceHit = 0.34,
	damageMin = 240,
	damageMax = 250,
	baseXp = 2219,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {10,10,150,150,150,-1,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 8,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_spined_snake.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.5,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"dizzyattack",""}, {"strongpoison",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(giant_spined_snake, "giant_spined_snake")
