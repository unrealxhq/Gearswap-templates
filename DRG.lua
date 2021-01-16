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

Breath_HPP = 51
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('LowAccTP', 'DT', 'HighAccTP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 16)
end


function init_gear_sets()

	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	
    sets.precast.JA['Spirit Surge'] = {}
	
	sets.precast.JA['Call Wyvern'] = {}
	
	sets.precast.JA['Ancient Circle'] = {}
	
	sets.precast.JA['Jump'] = sets.engaged.LowAccTP
	
	sets.precast.JA['High Jump'] = {}
	
	sets.precast.JA['Super Jump'] = {}
	
	sets.precast.JA['Soul Jump'] = {}
	
	sets.precast.JA['Angon'] = {
		Ammo="Angon"}
	
	sets.precast.JA['Spirit Jump'] = {}
	
	sets.precast.JA['Dragon Breaker'] = {}
	
	sets.precast.JA['Fly High'] = {}
	
	sets.precast.JA['Steady Wing'] = {}
	
	sets.precast.JA['Restoring Breath'] = {
		waist="Glassblower's Belt"}
	
	-- Fast cast sets for spells
    sets.precast.FC = {}
		
			-- Fast Cast: 
			
		
		
		
    sets.precast.FC['Utsusemi: Ichi'] = set_combine(sets.precast.FC, {
		neck=''})
		
    sets.precast.FC['Utsusemi: Ni'] = set_combine(sets.precast.FC['Utsusemi: Ichi'], {})
-- 

	-- Weaponskill sets
    sets.precast.WS['Double Trust'] = {}

	sets.precast.WS['Impulse Drive'] = {}

	sets.precast.WS['Thunder Thrust'] = {}
	
	sets.precast.WS['Raiden Thrust'] = {}
	
	sets.precast.WS['Leg Sweep'] = {}
	
	sets.precast.WS['Penta Thrust'] = {}
	
	sets.precast.WS['Vorpal Thrust'] = {}
	
	sets.precast.WS['Skewer'] = {}
	
	sets.precast.WS['Wheeling Thrust'] = {}
	
	
	sets.precast.WS['Drakesbane'] = {}
	
	sets.precast.WS['Sonic Thrust'] = {}
	
	sets.precast.WS["Camlann's Torment"] = {}
	
	
	sets.precast.WS['Stardiver'] = {}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
		
	

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {}
			
	sets.idleMovement = {}
			
    sets.idle.DT = {}

	sets.Kiting = 
	{}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {}

	sets.engaged.HighAccTP = {}
	
	sets.engaged.DT = {}
			
		
		

end

------------------------------------------------------------------
-- Action events
------------------------------------------------------------------

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'DRK' then
		set_macro_page(1, 16) 
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 16)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 16)
	else
		set_macro_page(1, 16)
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
