wild_bladeback_boar = Creature:new {
	objectName = "@mob/creature_names:quest_hero_of_tatooine_ferocious_beast",
	socialGroup = "boar",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 39,
	chanceHit = 0.44,
	damageMin = 355,
	damageMax = 420,
	baseXp = 3915,
	baseHAM = 9100,
	baseHAMmax = 11100,
	armor = 0,
	resists = {30,30,30,30,30,30,30,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 120,
	hideType = "hide_leathery",
	hideAmount = 80,
	boneType = "bone_mammal",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/zucca_boar_hue.iff"},
	scale = 1.5,
	lootGroups = {
		{
			groups = {
				{group = "hero_of_tat_mark_of_courage", chance = 10000000}
			},
			lootChance = 10000000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"knockdownattack",""}, {"stunattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(wild_bladeback_boar, "wild_bladeback_boar")
