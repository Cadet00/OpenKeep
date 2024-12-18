/datum/antagonist/wishgranter
	name = "Wishgranter Avatar"
	show_in_antagpanel = FALSE
	show_name_in_check_antagonists = TRUE
	can_hijack = HIJACK_HIJACKER

/datum/antagonist/wishgranter/on_gain()
	owner.special_role = "Avatar of the Wish Granter"
	. = ..()
	give_powers()

/datum/antagonist/wishgranter/greet()
	to_chat(owner, "<B>My inhibitions are swept away, the bonds of loyalty broken, you are free to murder as you please!</B>")
	owner.announce_objectives()

/datum/antagonist/wishgranter/proc/give_powers()
	var/mob/living/carbon/human/H = owner.current
	if(!istype(H))
		return
	H.dna.add_mutation(HULK)
	H.dna.add_mutation(XRAY)
	H.dna.add_mutation(SPACEMUT)
	H.dna.add_mutation(TK)
