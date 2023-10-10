// walls with multiple icon files

/turf/closed/wall/f13/sactown/variable
	var/list/icon_files

/turf/closed/wall/f13/sactown/variable/New()
	..()
	icon = pick(icon_files)

// mojave sun/tgmc walls

/turf/closed/wall/f13/sactown/adobe
	name = "adobe wall"
	desc = "A wall built of solid sandstone."
	icon = 'modular_sactown/icons/turfs/walls/adobe.dmi'
	icon_state = "adobe"
	icon_type_smooth = "adobe"
	hardness = 80
	smooth = SMOOTH_TRUE
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/sactown/adobe, /turf/closed/wall,)

/turf/closed/wall/f13/sactown/variable/siding
	name = "house wall"
	desc = "A weathered pre-War house wall."
	icon = 'modular_sactown/icons/turfs/walls/siding.dmi'
	icon_state = "siding"
	icon_type_smooth = "siding"
	hardness = 80
	smooth = SMOOTH_TRUE
	baseturfs = /turf/open/floor/plating/wooden
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/sactown/variable/siding, /turf/closed/wall,)
	icon_files = list(
		'modular_sactown/icons/turfs/walls/siding.dmi',
		'modular_sactown/icons/turfs/walls/siding_1.dmi',
		'modular_sactown/icons/turfs/walls/siding_2.dmi',
		'modular_sactown/icons/turfs/walls/siding_3.dmi'
	)
