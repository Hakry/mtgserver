bark_mite_burrower = Creature:new {
	objectName = "@mob/creature_names:bark_mite_burrower",
	socialGroup = "mite",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 55,
	chanceHit = 0.49,
	damageMin = 415,
	damageMax = 540,
	baseXp = 5373,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {165,140,-1,180,-1,180,180,0,-1},
	meatType = "meat_insect",
	meatAmount = 5,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bark_mite_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.1,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareableeding",""}, {"strongdisease",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(bark_mite_burrower, "bark_mite_burrower")
