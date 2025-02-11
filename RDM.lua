-----------------------------------------------------------------------------------------------
--OffenseMode = F9. Weaponskill Mode = Windows Key + F9.   Idle mode = CTRL + F12.-------------
-------Casting Mode = CTRL + F11.

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
end


function job_setup()

	
end


function user_setup()
    state.OffenseMode:options('LowAccTP', 'DT', 'DW')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DTRefresh', 'Refresh', 'DT')
    state.CastingMode:options('Freenuke', 'Magicburst')
	state.WeaponSet = M{['description']='Weapon Set', 'CroceaAlmace', 'CroceaTauret', 'Savage','Cleave'}
    state.WeaponLock = M(false, 'Weapon Lock')


	select_default_macro_book(1, 8)
end


function init_gear_sets()
--To edit WeaponSet change the name of the sets below to what you want and edit the same name above then input weapons you want to use.
	sets.CroceaAlmace = {main="Crocea Mors",sub="Almace"}
    sets.CroceaTauret = {main="Crocea Mors",sub="Tauret"}
    sets.Cleave = {main="Tauret",sub="Daybreak"}
    sets.Savage = {main="Naegling",sub="Machaera +2"}


	sets.cure = {
		main="Chatoyant Staff",
		ammo="Staunch Tathlum +1",
		head={ name="Kaykaus Mitra", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		body="Vrikodara Jupon",
		hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
		legs="Atrophy Tights +2",		
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Nodens Gorget",
		waist="Hachirin-no-Obi",
		left_ear="Mendi. Earring",
		right_ear="Telos Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.EnhancingSkill = {
		main="Pukulatmuj +1",
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Viti. Gloves +3",
		legs="Atrophy Tights +2",
		feet="Leth. Houseaux +1",
		neck="Enhancing Torque",
		waist="Olympus Sash",
		left_ear="Augment. Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back="Ghostfyre Cape"}

	sets.precast['Dispelga'] = {
		main="Daybreak",	
		ammo="Staunch Tathlum +1",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Zendik Robe",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Carmine Greaves",
		neck="Loricate Torque +1",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Hearty Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
				
	sets.midcast['Dispelga'] = {
		main="Daybreak",	
		range="Kaja Bow",
		head="Atro. Chapeau +2",
		body="Atrophy Tabard +3",
		hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +9%','Mag. Acc.+13','"Mag.Atk.Bns."+15',}},
		feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
		neck="Dls. Torque +2",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+5','Haste+10',}},}


	sets.Refresh = {
		sub="Ammurapi Shield",
		head="Amalric Coif +1",
		body="Atrophy Tabard +3",
		hands="Atrophy Gloves +3",
		legs="Leth. Fuseau +1",
		feet="Leth. Houseaux +1",
		waist="Gishdubar Sash",
		neck="Dls. Torque +2",
		left_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.SelfEnhancing = {
		sub="Ammurapi Shield",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Atrophy Gloves +3",		
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet="Leth. Houseaux +1",
		waist="Embla Sash",
		neck="Dls. Torque +2",
		left_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

-----Sets.TargetEnhancing is used for casting enhancing magic on other players with Composure up.
	sets.TargetEnhancing = {
		sub="Ammurapi Shield",
		head="Leth. Chappel +1",
		body="Lethargy Sayon +1",
		hands="Atrophy Gloves +3",
		legs="Leth. Fuseau +1",
		feet="Leth. Houseaux +1",
		neck="Dls. Torque +2",
		waist="Embla Sash",
		left_ear="Roundel Earring",
		right_ear="Mendi. Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Ghostfyre Cape"}
	
	
	sets.Saboteur = {
		hands="Leth. Gantherots +1",
			}
			
	sets.macc = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		range="Kaja Bow",
		head="Atro. Chapeau +2",
		body="Atrophy Tabard +3",
		hands="Regal Cuffs",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +9%','Mag. Acc.+13','"Mag.Atk.Bns."+15',}},
		feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
		neck="Dls. Torque +2",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+5','Haste+10',}},}
	
	sets.enfeeble = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		ammo="Regal Gem",
		head="Viti. Chapeau +3",
		body="Lethargy Sayon +1",
		hands="Regal Cuffs",
		legs="Chironic Hose",	
		feet="Vitiation Boots +3",
		neck="Dls. Torque +2",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Digni. Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+5','Haste+10',}},}
		
	sets.blind = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		range="Kaja Bow",
		head="Atro. Chapeau +2",
		body="Atrophy Tabard +3",
		hands="Regal Cuffs",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +9%','Mag. Acc.+13','"Mag.Atk.Bns."+15',}},
		feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
		neck="Dls. Torque +2",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}
	
	
	
	sets.Freenuke = {
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}
	
	sets.Magicburst = {
		ammo="Pemphredo Tathlum",
		head="Ea Hat",
		body="Ea Houppelande",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Ea Slops",
		feet="Ea Pigaches",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Digni. Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}
		
		
	sets.Cappedskill = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Atrophy Gloves +3",
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet="Leth. Houseaux +1",
		neck="Enhancing Torque",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.Gain = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Viti. Gloves +3",
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet="Leth. Houseaux +1",
		neck="Enhancing Torque",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.Phalanx = {
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Viti. Gloves +3",
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Taeon Boots", augments={'Phalanx +3',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Embla Sash",
		left_ear="Etiolation Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs	

	sets.precast.JA['Chainspell'] = {body="Vitiation Tabard +3"}
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Staunch Tathlum +1",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Zendik Robe",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Carmine Greaves",
		neck="Loricate Torque +1",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Hearty Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
		
			-- Fast Cast: ??% / -??% SelfEnhancing Magic Casting Time 
	
	
	
	sets.precast['Impact'] = set_combine(sets.precast.FC, {
		head="",
		body="Twilight Cloak",
		})


	-- Weaponskill sets
	
	--40%STR/40%MND Mod. Gear WSD,Acc,Att and STR/MND
	sets.precast.WS['Savage Blade'] = {
		ammo="Aurgelmir Orb",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Viti. Tabard +3",
		hands="Jhakri Cuffs +2",
		legs={ name="Taeon Tights", augments={'Accuracy+18','Crit.hit rate+2','Weapon skill damage +3%'	,}},
		feet="Aya. Gambieras +2",
		neck="Dls. Torque +2",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	
	sets.precast.WS['Seraph Blade'] = {
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}
	
	sets.precast.WS['Sanguine Blade'] = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Sanctity Necklace",
		waist="Hachirin-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}

	sets.precast.WS['Red Lotus Blade'] = {
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}

	sets.precast.WS['Aeolian Edge'] = {
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}
	
	--80% DEX Mod, gear for Crit rate/damage,Acc,Att,DEX
	sets.precast.WS['Chant du Cygne'] = {
		ammo="Yetshila",
		head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body="Ayanmo Corazza +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Taeon Tights", augments={'Accuracy+15 Attack+15','Crit.hit rate+2','Crit. hit damage +2%',}},
		feet="Aya. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+9','Crit.hit rate+10',}},}

	--Same as Chant Du Cygne
	sets.precast.WS['Evisceration'] = {
		ammo="Yetshila",
		head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body="Ayanmo Corazza +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Taeon Tights", augments={'Accuracy+15 Attack+15','Crit.hit rate+2','Crit. hit damage +2%',}},
		feet="Aya. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+9','Crit.hit rate+10',}},}
	
	--Same as Savage Blade
	sets.precast.WS['Black Halo'] = {
		ammo="Aurgelmir Orb",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Viti. Tabard +3",
		hands="Jhakri Cuffs +2",
		legs={ name="Taeon Tights", augments={'Accuracy+18','Crit.hit rate+2','Weapon skill damage +3%'	,}},
		feet="Aya. Gambieras +2",
		neck="Dls. Torque +2",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast['Cure'] = sets.cure
	
	sets.midcast['Cure II'] = sets.cure

	sets.midcast['Cure III'] = sets.cure

	sets.midcast['Cure IV'] = sets.cure
	
	sets.midcast['Curaga'] = sets.cure
	
	sets.midcast['Curaga II'] = sets.cure
	
--------------------------------------------------------------
	sets.midcast['Phalanx II'] = sets.Phalanx	
		
	sets.midcast['Barfire'] = sets.Cappedskill
		
	sets.midcast['Barblizzard'] = sets.Cappedskill
		
	sets.midcast['Baraero'] = sets.Cappedskill
		
	sets.midcast['Barstone'] = sets.Cappedskill
		
	sets.midcast['Barthunder'] = sets.Cappedskill
		
	sets.midcast['Barwater'] = sets.Cappedskill
		
	sets.midcast['Barpoison'] = sets.Cappedskill
		
	sets.midcast['Barparalyze'] = sets.Cappedskill
		
	sets.midcast['Barsleep'] = sets.Cappedskill
		
	sets.midcast['Baramnesia'] = sets.Cappedskill
		
	sets.midcast['Barblind'] = sets.Cappedskill
		
	sets.midcast['Barpetrify'] = sets.Cappedskill
		
	sets.midcast['Barvirus'] = sets.Cappedskill
		
	sets.midcast['Barsilence'] = sets.Cappedskill

	sets.midcast['Gain-STR'] = sets.Gain
	
	sets.midcast['Gain-DEX'] = sets.Gain
	
	sets.midcast['Gain-VIT'] = sets.Gain
	
	sets.midcast['Gain-INT'] = sets.Gain
	
	sets.midcast['Gain-AGI'] = sets.Gain
	
	sets.midcast['Gain-MND'] = sets.Gain
	
	sets.midcast['Gain-CHR'] = sets.Gain
	
--------------------------------------------------------------	

	sets.midcast['Enfire'] = sets.EnhancingSkill
	
	sets.midcast['Enfire II'] = sets.EnhancingSkill
	
	sets.midcast['Enblizzard'] = sets.EnhancingSkill
	
	sets.midcast['Enblizzard II'] = sets.EnhancingSkill
	
	sets.midcast['Enaero'] = sets.EnhancingSkill
	
	sets.midcast['Enaero II'] = sets.EnhancingSkill
	
	sets.midcast['Enstone'] = sets.EnhancingSkill
	
	sets.midcast['Enstone II'] = sets.EnhancingSkill
	
	sets.midcast['Enthunder'] = sets.EnhancingSkill
	
	sets.midcast['Enthunder II'] = sets.EnhancingSkill
	
	sets.midcast['Enwater'] = sets.EnhancingSkill
	
	sets.midcast['Enwater II'] = sets.EnhancingSkill
	
	sets.midcast['Temper'] = sets.EnhancingSkill

	sets.midcast['Temper II'] = sets.EnhancingSkill
--------------------------------------------------------------	
	
	sets.midcast['Fire'] = sets.Freenuke

	sets.midcast['Fire'].Magicburst = sets.Magicburst
	
	sets.midcast['Fire II'] = sets.Freenuke

	sets.midcast['Fire II'].Magicburst = sets.Magicburst

	sets.midcast['Fire III'] = sets.Freenuke

	sets.midcast['Fire III'].Magicburst = sets.Magicburst

	sets.midcast['Fire IV'] = sets.Freenuke

	sets.midcast['Fire IV'].Magicburst = sets.Magicburst

	sets.midcast['Fire V'] = sets.Freenuke

	sets.midcast['Fire V'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard'] = sets.Freenuke

	sets.midcast['Blizzard'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard II'] = sets.Freenuke

	sets.midcast['Blizzard II'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard III'] = sets.Freenuke

	sets.midcast['Blizzard III'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard IV'] = sets.Freenuke

	sets.midcast['Blizzard IV'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard V'] = sets.Freenuke

	sets.midcast['Blizzard V'].Magicburst = sets.Magicburst

	sets.midcast['Aero'] = sets.Freenuke

	sets.midcast['Aero'].Magicburst = sets.Magicburst

	sets.midcast['Aero II'] = sets.Freenuke

	sets.midcast['Aero II'].Magicburst = sets.Magicburst

	sets.midcast['Aero III'] = sets.Freenuke

	sets.midcast['Aero III'].Magicburst = sets.Magicburst

	sets.midcast['Aero IV'] = sets.Freenuke

	sets.midcast['Aero IV'].Magicburst = sets.Magicburst

	sets.midcast['Aero V'] = sets.Freenuke

	sets.midcast['Aero V'].Magicburst = sets.Magicburst

	sets.midcast['Stone'] = sets.Freenuke

	sets.midcast['Stone'].Magicburst = sets.Magicburst

	sets.midcast['Stone II'] = sets.Freenuke

	sets.midcast['Stone II'].Magicburst = sets.Magicburst

	sets.midcast['Stone III'] = sets.Freenuke

	sets.midcast['Stone III'].Magicburst = sets.Magicburst

	sets.midcast['Stone IV'] = sets.Freenuke

	sets.midcast['Stone IV'].Magicburst = sets.Magicburst

	sets.midcast['Stone V'] = sets.Freenuke

	sets.midcast['Stone V'].Magicburst = sets.Magicburst
	
	sets.midcast['Thunder'] = sets.Freenuke

	sets.midcast['Thunder'].Magicburst = sets.Magicburst

	sets.midcast['Thunder II'] = sets.Freenuke

	sets.midcast['Thunder II'].Magicburst = sets.Magicburst

	sets.midcast['Thunder III'] = sets.Freenuke

	sets.midcast['Thunder III'].Magicburst = sets.Magicburst

	sets.midcast['Thunder IV'] = sets.Freenuke

	sets.midcast['Thunder IV'].Magicburst = sets.Magicburst

	sets.midcast['Thunder V'] = sets.Freenuke

	sets.midcast['Thunder V'].Magicburst = sets.Magicburst

	sets.midcast['Water'] = sets.Freenuke

	sets.midcast['Water'].Magicburst = sets.Magicburst

	sets.midcast['Water II'] = sets.Freenuke

	sets.midcast['Water II'].Magicburst = sets.Magicburst

	sets.midcast['Water III'] = sets.Freenuke

	sets.midcast['Water III'].Magicburst = sets.Magicburst

	sets.midcast['Water IV'] = sets.Freenuke

	sets.midcast['Water IV'].Magicburst = sets.Magicburst

	sets.midcast['Water V'] = sets.Freenuke

	sets.midcast['Water V'].Magicburst = sets.Magicburst
	
	sets.midcast['Stonega II'] = sets.Freenuke
	sets.midcast['Firaga'] = sets.Freenuke
	sets.midcast['Thundaga'] = sets.Freenuke

--------------------------------------------------------------	
	
	sets.midcast['Protect V'] = sets.SelfEnhancing
	
	sets.midcast['Shell V'] = sets.SelfEnhancing

	sets.midcast['Haste II'] = sets.SelfEnhancing

	sets.midcast['Flurry II'] = sets.SelfEnhancing

	sets.midcast['Aquaveil'] = sets.SelfEnhancing

	sets.midcast['Stoneskin'] = sets.SelfEnhancing

	sets.midcast['Blink'] = sets.SelfEnhancing

	sets.midcast['Refresh'] = sets.Refresh
	
	sets.midcast['Refresh II'] = sets.Refresh
	
	sets.midcast['Refresh III'] = sets.Refresh
	
	sets.midcast['Regen II'] = sets.SelfEnhancing

	sets.midcast['Dia'] = sets.enfeeble
	
	sets.midcast['Dia II'] = sets.enfeeble

	sets.midcast['Dia III'] = sets.enfeeble
	
	sets.midcast['Diaga'] = sets.macc

	sets.midcast['Slow'] = sets.enfeeble

	sets.midcast['Slow II'] = sets.enfeeble

	sets.midcast['Paralyze II'] = sets.enfeeble

	sets.midcast['Silence'] = sets.enfeeble

	sets.midcast['Poison'] = sets.enfeeble
	
	sets.midcast['Poison II'] = sets.enfeeble
	
	sets.midcast['Sleep'] = sets.enfeeble

	sets.midcast['Sleepga'] = sets.enfeeble
	
	sets.midcast['Sleep II'] = sets.enfeeble

	sets.midcast['Blind'] = sets.blind

	sets.midcast['Blind II'] = sets.blind

	sets.midcast['Bind'] = sets.enfeeble

	sets.midcast['Dispel'] = sets.macc

	sets.midcast['Gravity'] = sets.enfeeble

	sets.midcast['Gravity II'] = sets.enfeeble
	
	sets.midcast['Distract'] = sets.enfeeble

	sets.midcast['Distract II'] = sets.macc
	
	sets.midcast['Distract III'] = sets.enfeeble

	sets.midcast['Frazzle'] = sets.enfeeble
	
	sets.midcast['Frazzle II'] = sets.macc
	
	sets.midcast['Frazzle III'] = sets.enfeeble

	sets.midcast['Bio'] = sets.enfeeble

	sets.midcast['Bio II'] = sets.enfeeble
	
	sets.midcast['Bio II'] = sets.enfeeble

	sets.midcast['Drain'] = sets.drain

	sets.midcast['Aspir'] = sets.drain

	sets.midcast['Aspir II'] = sets.drain
	
	sets.midcast['Stun'] = sets.macc
	
	sets.midcast['Addle'] = sets.enfeeble
	
	sets.midcast['Addle II'] = sets.enfeeble
	
	sets.midcast['Inundation'] = sets.enfeeble
	
	sets.midcast['Klimaform'] = sets.SelfEnhancing
	
	sets.midcast['Firestorm'] = sets.SelfEnhancing
	
	sets.midcast['Sandstorm'] = sets.SelfEnhancing
	
	

	sets.midcast['Utsusemi: Ichi'] = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Aya. Manopolas +2",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Hearty Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}

	sets.midcast['Utsusemi: Ni'] = sets.midcast['Utsusemi: Ichi']
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

	sets.idle.DTRefresh = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Hearty Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
		
	sets.idle.Refresh = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head="Viti. Chapeau +3",
		body="Atrophy Tabard +3",
		hands={ name="Chironic Gloves", augments={'Accuracy+2','Mag. Acc.+22','"Refresh"+2',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Hearty Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}

			
    sets.idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Hearty Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
	

	sets.Kiting = {}



	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Kentarch Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
		
	--Dual Wield set if you are uncapped magic haste, uses extra dual wield to cap.
	sets.engaged.DW = {
		ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Reiki Yotai",
		right_ear="Suppanomimi",
		left_ear="Eabani Earring",
		left_ring="Chirich Ring +1",
		right_ring="Haverton Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
	
	sets.engaged.DT = {
		ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Kentarch Belt +1",
		left_ear="Eabani Earring",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},}
			

	organizer_items = {
      echos="Echo Drops",
	  curry="Red Curry Bun"}

end
------------------------------------------------------------------
-- Action events
------------------------------------------------------------------

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'NIN' then
		set_macro_page(1, 10) 
	elseif player.sub_job == 'SCH' then
		set_macro_page(1, 10)
	elseif player.sub_job == 'BLM' then
		set_macro_page(1, 10)
	else
		set_macro_page(1, 10)
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

function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.name == 'Impact' then
        equip(sets.precast['Impact'])
    end
    if spell.name == 'Dispelga' then
        equip(sets.precast['Dispelga'])
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	equip(sets[state.WeaponSet.current])
	holdMovement = 0
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if buffactive['Saboteur'] and spell.skill == 'Enfeebling Magic' then 
		equip(sets.Saboteur) 
	end
	
	if (spell.target.type == 'PLAYER' or spell.target.type == 'NPC') and buffactive['Composure'] and spell.skill == 'Enhancing Magic' then
        equip(sets.TargetEnhancing)
    end    

end

function job_aftercast(spell, spellMap, eventArgs)
	equip(sets[state.WeaponSet.current])

	if spell.type == "WeaponSkill" then 
		add_to_chat(217, 'TP Return: '..tostring(player.tp))
    end
end	

function job_state_change(stateField, newValue, oldValue)
	equip(sets[state.WeaponSet.current])   
	
	if state.WeaponLock.value == true then
        disable('main','sub')
    else
        enable('main','sub')
    end
end
function job_update(cmdParams, eventArgs)
    equip(sets[state.WeaponSet.current])
    handle_equipping_gear(player.status)
end
function job_post_aftercast(spell, action, spellMap, eventArgs)
	equip(sets[state.WeaponSet.current])
end	









