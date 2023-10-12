//Fallout 13 general destructible floor directory

/turf/open/floor/f13
	name = "floor"
	planetary_atmos = 1
	icon_state = "floor"
	icon_regular_floor = "floor"
	icon_plating = "plating"
	icon = 'icons/fallout/turfs/floors.dmi'

/turf/open/floor/f13/ReplaceWithLattice()
	ChangeTurf(baseturfs)

/turf/open/floor/f13/wood
	icon_state = "wood_common"
	icon = 'icons/fallout/turfs/wood_floor.dmi'
	floor_tile = /obj/item/stack/tile/wood
	icon_plating = "housebase"
	var/icon_variants = 3
//	step_sounds = list("human" = "woodfootsteps")
	broken_states = list("wood_common_damaged_1", "wood_common_damaged_2", "wood_common_damaged_3", "wood_common_damaged_4", "wood_common_damaged_5", "wood_common_damaged_6")

/turf/open/floor/f13/wood/New()
	. = ..()
	if(prob(5))
		broken = 1
		icon_state = pick(broken_states)
	else if(icon_variants)
		icon_state = "[initial(icon_state)]_[rand(1,icon_variants)]"

/turf/open/floor/f13/wood/make_plating()
	return ChangeTurf(/turf/open/floor/plating/wooden)

/turf/open/floor/f13/wood/attackby(obj/item/C, mob/user, params)
	if(..())
		return
	if(istype(C, /obj/item/screwdriver))
		if(broken || burnt)
			new /obj/item/stack/sheet/mineral/wood(src)
		else
			new floor_tile(src)
		to_chat(user, span_danger("You unscrew the planks."))
		make_plating()
		playsound(src, C.usesound, 80, 1)
		return

/turf/open/floor/f13/wood/fancy
	icon_state = "wood_fancy"
	broken_states = list("wood_fancy_damaged_1", "wood_fancy_damaged_2", "wood_fancy_damaged_3", "wood_fancy_damaged_4", "wood_fancy_damaged_5", "wood_fancy_damaged_6")
	icon_variants = 0

/turf/open/floor/f13/wood/wide
	icon_state = "wood_wide"
	broken_states = list("wood_wide_damaged_1", "wood_wide_damaged_2", "wood_wide_damaged_3", "wood_wide_damaged_4", "wood_wide_damaged_5", "wood_wide_damaged_6")

/turf/open/floor/f13/wood/mosaic
	icon_state = "wood_mosaic"
	broken_states = list("wood_mosaic_damaged_1", "wood_mosaic_damaged_2", "wood_mosaic_damaged_3", "wood_mosaic_damaged_4", "wood_mosaic_damaged_5", "wood_mosaic_damaged_6")

/turf/open/floor/f13/wood/dark
	icon_state = "wood_darker"
	broken_states = list("wood_darker_damaged_1", "wood_darker_damaged_2", "wood_darker_damaged_3", "wood_darker_damaged_4", "wood_darker_damaged_5", "wood_darker_damaged_6", "wood_darker_damaged_7")
	icon_variants = 0
