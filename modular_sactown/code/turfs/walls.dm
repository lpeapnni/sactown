// walls with multiple icon files

/turf/closed/wall/f13/sactown/variable
	var/list/icon_files

/turf/closed/wall/f13/sactown/variable/New()
	..()
	icon = pick(icon_files)

// mojave sun/tgmc walls

/turf/closed/wall/f13/sactown/adobe
	name = "adobe wall"
	desc = "A wall built of sandstone."
	icon = 'modular_sactown/icons/turfs/walls/adobe.dmi'
	icon_state = "adobe"
	icon_type_smooth = "adobe"
	hardness = 80
	smooth = SMOOTH_TRUE
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/sactown/adobe, /turf/closed/indestructible/f13/sactown/adobe, /turf/closed/wall)

/turf/closed/indestructible/f13/sactown/adobe
	name = "tough adobe wall"
	desc = "A wall built of solid sandstone."
	icon = 'modular_sactown/icons/turfs/walls/adobe.dmi'
	icon_state = "adobe"
	icon_type_smooth = "adobe"
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/turf/closed/wall/f13/sactown/adobe, /turf/closed/indestructible/f13/sactown/adobe, /turf/closed/wall)

/turf/closed/wall/f13/sactown/brick
	name = "brick wall"
	desc = "A wall built of brick."
	icon = 'modular_sactown/icons/turfs/walls/brick.dmi'
	icon_state = "brick"
	icon_type_smooth = "brick"
	hardness = 80
	smooth = SMOOTH_TRUE
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/sactown/brick, /turf/closed/indestructible/f13/sactown/brick, /turf/closed/wall)

/turf/closed/indestructible/f13/sactown/brick
	name = "tough brick wall"
	desc = "A wall built of strong brick."
	icon = 'modular_sactown/icons/turfs/walls/brick.dmi'
	icon_state = "brick"
	icon_type_smooth = "brick"
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/turf/closed/wall/f13/sactown/brick, /turf/closed/indestructible/f13/sactown/brick, /turf/closed/wall)

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

/turf/closed/wall/f13/sactown/variable/siding/red
	icon = 'modular_sactown/icons/turfs/walls/siding_red.dmi'
	canSmoothWith = list(/turf/closed/wall/f13/sactown/variable/siding/red, /turf/closed/wall,)
	icon_files = list(
		'modular_sactown/icons/turfs/walls/siding_red.dmi',
		'modular_sactown/icons/turfs/walls/siding_red_1.dmi',
		'modular_sactown/icons/turfs/walls/siding_red_2.dmi',
		'modular_sactown/icons/turfs/walls/siding_red_3.dmi'
	)
