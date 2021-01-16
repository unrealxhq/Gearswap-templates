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
    state.OffenseMode:options('TP', 'MEva', 'HighAccTP', 'Counter')
    state.WeaponskillMode:options('Normal', 'Acc', 'DT')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 4)
	
end


function init_gear_sets()
    sets.enmity = {}	
		
	sets.impetus = {
		body="Bhikku Cyclas +1"}
		
	sets.Sash = {waist="Ask Sash"}	
		
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs
				
	
    sets.precast.JA['Provoke'] = sets.enmity
	
	sets.precast.JA['Warcry'] = sets.enmity
	
	sets.precast.JA['Aggressor'] = sets.enmity
	
	sets.precast.JA['Defender'] = {}
	
	sets.precast.JA['Focus'] = {head="Anchorite's Crown +2"}
	
	sets.precast.JA['Dodge'] = {feet="Anchorite's Gaiters +3"}
	
	sets.precast.JA['Chakra'] = set_combine (sets.enmity,  {body="Anchorite's Cyclas +2"})
	
	sets.precast.JA['Boost'] = {hands="Anchorite's Gloves +3"}
		
	sets.precast.JA['Mantra'] = {feet="Hes. Gaiters +3"}
	
	sets.precast.JA['Counterstance'] = set_combine (sets.enmity,  {feet="Hes. Gaiters +3"})
	
	sets.precast.JA['Chi Blast'] = {head="Hesychast's Crown +3"}
	
	sets.precast.JA['Animated Flourish'] = sets.enmity
	
	sets.precast.JA['Perfect Counter'] = {}
	
	sets.precast.JA['Formless Strikes'] = {Body="Hes. Cyclas +3"}
	
	sets.precast.JA['Impetus'] = {body="Bhikku Cyclas +1"}
	
	sets.precast.JA['Hundred Fists'] = {legs="Hes. Hose +3"}
	
	sets.precast.JA['Inner Strength'] = {}
	
	sets.precast.JA['Footwork'] = {feet="Shukuyu Sune-Ate"}
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
        head="Herculean Helm", 
		neck="Loricate Torque +1", 
		ear1="Etiolation Earring", 
		ear2="Loquacious Earring",
        body="Dread Jupon", 
		hands="Leyline Gloves", 
		ring1="Defending Ring", 
		ring2="Kishar Ring",
		back={ name="Segomo's Mantle", augments={'"Fast Cast"+10','Phys. dmg. taken-10%',}},
		waist="Flume Belt", 
		legs="Futhark Trousers +3", 
		feet="Carmine Greaves"}
		
			-- Fast Cast: ??% / -??% Enhancing Magic Casting Time 
			
		
		
		
    sets.precast.FC['Utsusemi: Ichi'] = set_combine(sets.precast.FC, {
		neck=''})
		
    sets.precast.FC['Utsusemi: Ni'] = set_combine(sets.precast.FC['Utsusemi: Ichi'], {})
-- 

	-- Weaponskill sets
    sets.precast.WS['Victory Smite'] = {
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Hes. Hose +3",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},}
		
    sets.precast.WS['Victory Smite'].DT = {
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Defending Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},}
		
		
    sets.precast.WS['Raging Fists'] = {
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs="Samnuha Tights",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}
		
    sets.precast.WS['Raging Fists'].DT = {
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Defending Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}
		
		
	sets.precast.WS['Judgment'] = {
		ammo="Knobkierrie",
		head="Hesychast's Crown +3",
		body={ name="Herculean Vest", augments={'Pet: DEX+5','"Dbl.Atk."+3','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+2 "Mag.Atk.Bns."+2',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Hiza. Hizayoroi +2",
		feet="Ken. Sune-Ate",
		neck="Anu Torque",
		waist="Moonbow Belt",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ear="Ishvara Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+17','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
		
	sets.precast.WS['Howling Fist'] = {  
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}

	sets.precast.WS['Howling Fist'].DT = {  
		ammo="Knobkierrie",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Anchor. Gloves +3",
		legs="Malignance Tights",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}


	sets.precast.WS['Final Heaven'] = {
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}
		
	sets.precast.WS['Tornado Kick'] = {
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Anch. Gaiters +3",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}

	sets.precast.WS['Tornado Kick'].DT = {
		ammo="Knobkierrie",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Anchor. Gloves +3",
		legs="Malignance Tights",
		feet="Anch. Gaiters +3",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Defending Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}
	
	sets.precast.WS['Asuran Fists'] = {
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+17','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
		
	
 	sets.precast.WS['Shijin Spiral'] = {		
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+17','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

	
	sets.precast.WS['Dragon Kick'] = {		
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Anch. Gaiters +3",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}

	
	sets.precast.WS['Combo'] = {			
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}

	
	sets.precast.WS['Shoulder Tackle'] = {    
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}

	
	sets.precast.WS['One Inch Punch'] = {		
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}

	
	sets.precast.WS['Backhand Blow'] = {		
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate +1",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}

	
	sets.precast.WS['Spinning Attack'] = {		
		ammo="Knobkierrie",
		head="Volte Cap",
		body="Ken. Samue +1",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet={ name="Herculean Boots", augments={'Pet: Mag. Acc.+4','"Mag.Atk.Bns."+15','"Treasure Hunter"+2','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
		neck="Mnk. Nodowa +2",
		waist="Chaac Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+17 Attack+17','"Dbl.Atk."+10',}},}


	sets.precast.WS['Flash Nova'] = {}
	
	sets.precast.WS['Skull Breaker'] = {}
	
	sets.precast.WS['True Strike'] = {
		ammo="Knobkierrie",
		head={ name="Herculean Helm", augments={'Accuracy+4 Attack+4','Weapon skill damage +3%','STR+2','Accuracy+12',}},
		body={ name="Herculean Vest", augments={'Pet: DEX+5','"Dbl.Atk."+3','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+2 "Mag.Atk.Bns."+2',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Hiza. Hizayoroi +2",
		feet="Ken. Sune-Ate",
		neck="Anu Torque",
		waist="Moonbow Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+17','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
		
	sets.precast.WS['Cataclysm'] = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Herculean Vest", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+4%','STR+7',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+1','AGI+6','Mag. Acc.+15',}},
		feet={ name="Herculean Boots", augments={'"Resist Silence"+11','Accuracy+2','Magic burst dmg.+15%','Accuracy+12 Attack+12','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Moonlight Cape",}

	sets.precast.WS['Full Swing'] = {
		ammo="Knobkierrie",
		head={ name="Herculean Helm", augments={'Accuracy+4 Attack+4','Weapon skill damage +3%','STR+2','Accuracy+12',}},
		body={ name="Herculean Vest", augments={'Pet: DEX+5','"Dbl.Atk."+3','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+2 "Mag.Atk.Bns."+2',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Hiza. Hizayoroi +2",
		feet="Ken. Sune-Ate",
		neck="Anu Torque",
		waist="Moonbow Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+17','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

	
	sets.precast.WS['Shell Crusher'] = {
		ammo="Hydrocera",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Ken. Tekko +1",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Segomo's Mantle", augments={'STR+17','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

		
	--------------------------------------
	-- Midcast sets
	--------------------------------------
		
    sets.midcast['Phalanx'] = set_combine(sets.midcast['Enhancing Magic'], {
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Phalanx +2',}},
		feet={ name="Taeon Boots", augments={'Phalanx +2',}},})
    
	
	sets.precast.JA['Curing Waltz III'] = {head= "Mummu Bonnet +2"}
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Moonbow Belt +1",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			
	sets.idleMovement = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Moonbow Belt +1",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			
    sets.idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Moonbow Belt +1",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			

	sets.Kiting = 
		{feet="Hermes' Sandals"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.TP = {
		ammo="Aurgelmir Orb",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Anch. Gaiters +3",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear="Mache Earring +1",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10','Phys. dmg. taken-10%',}},}

	sets.engaged.MEva = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10','Phys. dmg. taken-10%',}},}
	
	sets.engaged.Counter = {    
		ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body={ name="Hes. Cyclas +3", augments={'Enhances "Formless Strikes" effect',}},
		hands="Malignance Gloves",
		legs="Anch. Hose +3",
		feet={ name="Hes. Gaiters +3", augments={'Enhances "Mantra" effect',}},
		neck="Loricate Torque +1",
		waist="Moonbow Belt +1",
		left_ear="Cryptic Earring",
		right_ear="Sherida Earring",
		left_ring="Defending Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},}

	
	
	sets.engaged.HighAccTP = {
		ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Mnk. Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},}
		
		

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
		set_macro_page(1, 4)
	elseif player.sub_job == 'DNC' then
		set_macro_page(1, 4) 
	elseif player.sub_job == 'RUN' then
		set_macro_page(1, 4) 
	else
		set_macro_page(1, 4)
	end
end



function job_buff_change(buff, gain)
    if buff == 'Impetus' then
        if gain then
            equip(sets.impetus)
            disable('body')
        else
            enable('body')
        end
    end
	
    if buff == 'Boost' then
        if gain then
            equip(sets.Sash)
            disable('waist')
        else
            enable('waist')
        end
    end
end 
	
function job_precast(spell, action, spellMap, eventArgs)    
if spell.type == 'WeaponSkill' and player.target.distance > (3.4 + player.target.model_size) then 
        add_to_chat(123, spell.name..' Canceled: [Out of Range]')
        eventArgs.cancel = true        
        return
    end
end 	   
	   
function job_aftercast(spell, action, eventArgs)
	if spell.type == "WeaponSkill" then 
		add_to_chat(217, 'TP Return: '..tostring(player.tp))
    end
end	