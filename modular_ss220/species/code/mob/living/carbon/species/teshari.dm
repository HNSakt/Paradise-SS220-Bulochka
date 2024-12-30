/datum/species
	var/eyes_icon = 'icons/mob/human_face.dmi'
	var/tail_icon = 'icons/effects/species.dmi'

var/list/proc/species_abilities = list()
///datum/body_accessory/tail
/datum/species/teshari
	name = "Teshari"
	name_plural = "Tesharis"
	icobase = 'modular_ss220/species/icons/mob/human_races/r_teshari.dmi'
	blurb = "Ryyyyyyyyyyyyyy its resomi!"
	language = "SCHECHI"
	skinned_type = /obj/item/stack/sheet/fur
	unarmed_type = /datum/unarmed_attack/claws
	nojumpsuit = TRUE

	burn_mod = 1.35
	brute_mod = 0.7
	total_health = 50

	siemens_coeff = 0.5
	species_traits = list(LIPS)
	inherent_traits = list(TRAIT_GOTTAGONOTSOFAST,TRAIT_RESISTCOLD)
	bodyflags = HAS_TAIL | HAS_HEAD_ACCESSORY | HAS_MARKINGS | HAS_SKIN_COLOR | HAS_BODYACC_COLOR | HAS_BODY_ACCESSORY
	dies_at_threshold = TRUE
	dietflags = DIET_OMNI

	hunger_drain = 0.11 //Default styles for created mobs.
	default_hair = "feathers"

	male_cough_sounds = list('modular_ss220/species/code/mob/species_sounds/teshari/tesharicougha.ogg','modular_ss220/species/code/mob/species_sounds/teshari/tesharicoughb.ogg')
	female_cough_sounds = list('modular_ss220/species/code/mob/species_sounds/teshari/tesharicougha.ogg','modular_ss220/species/code/mob/species_sounds/teshari/tesharicoughb.ogg')
	male_sneeze_sound = 'modular_ss220/species/code/mob/species_sounds/teshari/tesharisneeze.ogg'
	female_sneeze_sound = 'modular_ss220/species/code/mob/species_sounds/teshari/tesharisneeze.ogg'

	body_temperature = 270

	cold_level_1 = 180	//Default 260
	cold_level_2 = 130	//Default 200
	cold_level_3 = 70	//Default 120

	heat_level_1 = 320	//Default 360
	heat_level_2 = 370	//Default 400
	heat_level_3 = 600	//Default 1000

	blood_color = "#D514F7"
	flesh_color = "#5a77ad"
	base_color = "#001144"
	tail = "teshari_fluffytail"
	eyes = "teshari_eyes_s"
	eyes_icon = 'modular_ss220/species/icons/mob/human_races/teshari_eyes.dmi'

	reagent_tag = PROCESS_ORG
	has_organ = list(
		"heart" =    /obj/item/organ/internal/heart,
		"lungs" =    /obj/item/organ/internal/lungs,
		"liver" =    /obj/item/organ/internal/liver,
		"kidneys" =  /obj/item/organ/internal/kidneys,
		"brain" =    /obj/item/organ/internal/brain,
		"eyes" =     /obj/item/organ/internal/eyes
		)

	has_limbs = list(
		"chest" =  list("path" = /obj/item/organ/external/chest, "descriptor" = "chest"),
		"groin" =  list("path" = /obj/item/organ/external/groin, "descriptor" = "groin"),
		"head" =   list("path" = /obj/item/organ/external/head, "descriptor" = "head"),
		"l_arm" =  list("path" = /obj/item/organ/external/arm, "descriptor" = "left arm"),
		"r_arm" =  list("path" = /obj/item/organ/external/arm/right, "descriptor" = "right arm"),
		"l_leg" =  list("path" = /obj/item/organ/external/leg, "descriptor" = "left leg"),
		"r_leg" =  list("path" = /obj/item/organ/external/leg/right, "descriptor" = "right leg"),
		"l_hand" = list("path" = /obj/item/organ/external/hand, "descriptor" = "left hand"),
		"r_hand" = list("path" = /obj/item/organ/external/hand/right, "descriptor" = "right hand"),
		"l_foot" = list("path" = /obj/item/organ/external/foot, "descriptor" = "left foot"),
		"r_foot" = list("path" = /obj/item/organ/external/foot/right, "descriptor" = "right foot")
		)

	suicide_messages = list(
		"is attempting to bite their tongue off!",
		"is jamming their claws into their eye sockets!",
		"is twisting their own neck!",
		"is holding their breath!")

/datum/species/teshari/on_species_gain(mob/living/carbon/human/H)
	..()
	H.pass_flags = PASSMOB | PASSTABLE

