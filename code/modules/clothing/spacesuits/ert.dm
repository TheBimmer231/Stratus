
/obj/item/clothing/head/helmet/space/rig/ert
	name = "emergency response team helmet"
	desc = "A helmet worn by members of the Nanotrasen Emergency Response Team. Armoured and space ready."
	icon_state = "rig0-ert_commander"
	item_state = "helm-command"
	armor = list(melee = 50, bullet = 50, laser = 30, energy = 15, bomb = 30, bio = 100, rad = 60)
	rig_restrict_helmet = 0 // ERT helmets can be taken on and off at will.
	var/obj/machinery/camera/camera
	var/has_camera = TRUE
	strip_delay = 130

/obj/item/clothing/head/helmet/space/rig/ert/attack_self(mob/user)
	if(camera || !has_camera)
		..(user)
	else
		camera = new /obj/machinery/camera(src)
		camera.network = list("ERT")
		cameranet.removeCamera(camera)
		camera.c_tag = user.name
		to_chat(user, "<span class='notice'>User scanned as [camera.c_tag]. Camera activated.</span>")

/obj/item/clothing/head/helmet/space/rig/ert/examine(mob/user)
	if(..(user, 1) && has_camera)
		to_chat(user, "This helmet has a built-in camera. It's [camera ? "" : "in"]active.")

/obj/item/clothing/suit/space/rig/ert
	name = "emergency response team suit"
	desc = "A suit worn by members of the Nanotrasen Emergency Response Team. Armoured, space ready, and fire resistant."
	icon_state = "ert_commander"
	item_state = "suit-command"
	w_class = 3
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/melee/energy/sword/saber,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank)
	armor = list(melee = 60, bullet = 50, laser = 30, energy = 15, bomb = 30, bio = 100, rad = 60)
	allowed = list(/obj/item/device/flashlight, /obj/item/weapon/tank, /obj/item/device/t_scanner, /obj/item/weapon/rcd, /obj/item/weapon/crowbar, \
	/obj/item/weapon/screwdriver, /obj/item/weapon/weldingtool, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench, /obj/item/device/multitool, \
	/obj/item/device/radio, /obj/item/device/analyzer, /obj/item/weapon/gun/energy/laser, /obj/item/weapon/gun/energy/pulse, \
	/obj/item/weapon/gun/energy/gun/advtaser, /obj/item/weapon/melee/baton, /obj/item/weapon/gun/energy/gun)
	strip_delay = 130

//Commander
/obj/item/clothing/head/helmet/space/rig/ert/commander
	name = "emergency response team commander helmet"
	desc = "A helmet worn by the commander of a Nanotrasen Emergency Response Team. Has blue highlights. Armoured and space ready."
	icon_state = "rig0-ert_commander"
	item_state = "helm-command"
	item_color = "ert_commander"

/obj/item/clothing/suit/space/rig/ert/commander
	name = "emergency response team commander suit"
	desc = "A suit worn by the commander of a Nanotrasen Emergency Response Team. Has blue highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_commander"
	item_state = "suit-command"

//Security
/obj/item/clothing/head/helmet/space/rig/ert/security
	name = "emergency response team security helmet"
	desc = "A helmet worn by security members of a Nanotrasen Emergency Response Team. Has red highlights. Armoured and space ready."
	icon_state = "rig0-ert_security"
	item_state = "syndicate-helm-black-red"
	item_color = "ert_security"

/obj/item/clothing/suit/space/rig/ert/security
	name = "emergency response team security suit"
	desc = "A suit worn by security members of a Nanotrasen Emergency Response Team. Has red highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_security"
	item_state = "syndicate-black-red"

//Engineer
/obj/item/clothing/head/helmet/space/rig/ert/engineer
	name = "emergency response team engineer helmet"
	desc = "A helmet worn by engineers of a Nanotrasen Emergency Response Team. Has yellow highlights. Armoured and space ready."
	icon_state = "rig0-ert_engineer"
	item_color = "ert_engineer"

/obj/item/clothing/suit/space/rig/ert/engineer
	name = "emergency response team engineer suit"
	desc = "A suit worn by the engineers of a Nanotrasen Emergency Response Team. Has yellow highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_engineer"

//Medical
/obj/item/clothing/head/helmet/space/rig/ert/medical
	name = "emergency response team medical helmet"
	desc = "A helmet worn by medical members of a Nanotrasen Emergency Response Team. Has white highlights. Armoured and space ready."
	icon_state = "rig0-ert_medical"
	item_color = "ert_medical"

/obj/item/clothing/suit/space/rig/ert/medical
	name = "emergency response team medical suit"
	desc = "A suit worn by medical members of a Nanotrasen Emergency Response Team. Has white highlights. Armoured and space ready."
	icon_state = "ert_medical"

//Janitor
/obj/item/clothing/head/helmet/space/rig/ert/janitor
	name = "emergency response team janitor helmet"
	desc = "A helmet worn by janitorial members of a Nanotrasen Emergency Response Team. Has purple highlights. Armoured and space ready."
	icon_state = "rig0-ert_janitor"
	item_color = "ert_janitor"

/obj/item/clothing/suit/space/rig/ert/janitor
	name = "emergency response team janitor suit"
	desc = "A suit worn by the janitorial of a Nanotrasen Emergency Response Team. Has purple highlights. Armoured, space ready, and fire resistant."
	icon_state = "ert_janitor"

//Paranormal
/obj/item/clothing/head/helmet/space/rig/ert/paranormal
	name = "paranormal response unit helmet"
	desc = "A helmet worn by those who deal with paranormal threats for a living."
	icon_state = "rig0-ert_paranormal"
	item_color = "ert_paranormal"
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	sprite_sheets = null
	icon_override = 'icons/mob/clothing/paranormal_hardsuit.dmi'
	actions_types = list()
	has_camera = 0

/obj/item/clothing/suit/space/rig/ert/paranormal
	name = "paranormal response team suit"
	desc = "Powerful wards are built into this hardsuit, protecting the user from all manner of paranormal threats."
	icon_state = "rig-paranormal"
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	sprite_sheets = null
	icon_override = 'icons/mob/clothing/paranormal_hardsuit.dmi'
	actions_types = list()

/obj/item/clothing/suit/space/rig/ert/paranormal/New()
	..()
	new /obj/item/weapon/nullrod(src)

/obj/item/clothing/head/helmet/space/rig/ert/paranormal/inquisitor
	name = "inquisitor's helmet"
	icon_state = "rig0-inquisitor"
	item_color = "inquisitor"
	
/obj/item/clothing/suit/space/rig/ert/paranormal/inquisitor
	name = "inquisitor's hardsuit"
	icon_state = "rig-inquisitor"

/obj/item/clothing/head/helmet/space/rig/ert/paranormal/berserker
	name = "champion's helmet"
	desc = "Peering into the eyes of the helmet is enough to seal damnation."
	icon_state = "rig0-berserker"
	item_color = "berserker"	
	
/obj/item/clothing/suit/space/rig/ert/paranormal/berserker
	name = "champion's hardsuit"
	desc = "Voices echo from the hardsuit, driving the user insane."
	icon_state = "rig-berserker"