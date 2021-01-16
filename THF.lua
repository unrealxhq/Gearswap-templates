-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
end


-- Setup vars that are user-independent.
function job_setup()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('LowAccTP','MEva','HighAccTP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 11)

end


function init_gear_sets()
		
	
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs
	
	sets.precast.JA['Steal'] = {}
	
	sets.precast.JA['Sneak Attack'] = {}
	
	sets.precast.JA['Flee'] = {}
	
	sets.precast.JA['Trick Attack'] = {}
	
	sets.precast.JA['Mug'] = {}
	
	sets.precast.JA['Hide'] = {}
	
	sets.precast.JA['Accomplice'] = {}
	
	sets.precast.JA['Collaborator'] = {}
	
	sets.precast.JA["Assassin's Charge"] = {}
	
	sets.precast.JA['Feint'] = {}
	
	sets.precast.JA['Despoil'] = {}
	
	sets.precast.JA['Conspirator'] = {}

	sets.precast.JA['Bully'] = {}
	
	sets.precast.JA['Larceny'] = {}
	
	-- Fast cast sets for spells
    sets.precast.FC = {}
    sets.precast.FC['Utsusemi: Ichi'] = set_combine(sets.precast.FC, {
		neck=''})
		
    sets.precast.FC['Utsusemi: Ni'] = set_combine(sets.precast.FC['Utsusemi: Ichi'], {})


	-- Weaponskill sets
	--DEX Mod, Crit/WSD,acc,att
	sets.precast.WS['Mandalic Stab'] = {}
	
	sets.precast.WS['Shark Bite'] = {}
	
	sets.precast.WS['Exenterator'] = {}

	sets.precast.WS['Dancing Edge'] = {}

	sets.precast.WS['Aeolian Edge'] = {}

	sets.precast.WS["Rudra's Storm"] = {
		ammo="Yetshila",
		head={ name="Herculean Helm", augments={'Accuracy+4 Attack+4','Weapon skill damage +3%','STR+2','Accuracy+12',}},
		body={ name="Herculean Vest", augments={'Pet: DEX+5','"Dbl.Atk."+3','Weapon skill damage +7%',	'Accuracy+18 Attack+18','Mag. Acc.+2 "Mag.Atk.Bns."+2',}},
		hands="Meg. Gloves +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},}

		
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast['Utsusemi: Ichi'] = {}
		
	sets.midcast['Utsusemi: Ni'] = sets.midcast['Utsusemi Ichi']
		
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

			
	sets.idleMovement = {
		ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Mummu Kecks +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			
    sets.idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Mummu Kecks +2",
		feet="Ahosi Leggings",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			

	sets.Kiting = {}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Yamarang",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Kentarch Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Moonlight Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}

	sets.engaged.MEva = {
		ammo="Staunch Tathlum +1",
		head="Ken. Jinpachi",
		body="Ken. Samue",
		hands="Ken. Tekko",
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
	

	
	
	sets.engaged.HighAccTP = {}
		
		
		
	

end

------------------------------------------------------------------
-- Action events
------------------------------------------------------------------

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'WAR' then
		set_macro_page(1, 11) 
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 11)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 11)
	else
		set_macro_page(1, 11)
	end
end


function job_precast(spell, action, spellMap, eventArgs)
	equip(sets[state.WeaponSet.current])

	if spell.type == 'WeaponSkill' and player.target.distance > (3.4 + player.target.model_size) then 
        add_to_chat(123, spell.name..' Canceled: [Out of Range]')
        eventArgs.cancel = true        
        return
    end
	
end
