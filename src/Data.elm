module Data exposing (..)

import String.Extra


alignments : List ( String, String )
alignments =
    [ ( "ce", "Chaotic Evil" )
    , ( "cg", "Chaotic Good" )
    , ( "cn", "Chaotic Neutral" )
    , ( "le", "Lawful Evil" )
    , ( "lg", "Lawful Good" )
    , ( "ln", "Lawful Neutral" )
    , ( "n", "Neutral" )
    , ( "ne", "Neutral Evil" )
    , ( "ng", "Neutral Good" )
    , ( "no alignment", "No Alignment")
    ]


damageTypes : List String
damageTypes =
    [ "acid"
    , "all"
    , "area"
    , "bleed"
    , "bludgeoning"
    , "chaotic"
    , "cold"
    , "cold_iron"
    , "electricity"
    , "evil"
    , "fire"
    , "force"
    , "good"
    , "lawful"
    , "mental"
    , "negative"
    , "orichalcum"
    , "physical"
    , "piercing"
    , "poison"
    , "positive"
    , "precision"
    , "silver"
    , "slashing"
    , "sonic"
    , "splash"
    ]


fields : List ( String, String )
fields =
    [ ( "ability", "Ability related to a deity or skill" )
    , ( "ability_boost", "Ancestry ability boost" )
    , ( "ability_flaw", "Ancestry ability flaw" )
    , ( "ability_type", "Familiar ability type (Familiar / Master)" )
    , ( "ac", "[n] Armor class of an armor, creature, or shield" )
    , ( "actions", "Actions or time required to use an action or activity" )
    , ( "activate", "Activation requirements of an item" )
    , ( "advanced_domain_spell", "Advanced domain spell" )
    , ( "alignment", "Alignment" )
    , ( "ammunition", "Ammunition type used by a weapon" )
    , ( "archetype", "Archetypes associated with a feat" )
    , ( "area", "Area of a spell" )
    , ( "armor_group", "Armor group" )
    , ( "aspect", "Relic gift aspect type" )
    , ( "attack_proficiency", "A class's attack proficiencies" )
    , ( "bloodline", "Sorcerer bloodlines associated with a spell" )
    , ( "bloodline_spell", "Sorcerer bloodline's spells" )
    , ( "bulk", "Item bulk ('L' is 0.1)" )
    , ( "cast", "Alias for 'actions'" )
    , ( "cha", "[n] Alias for 'charisma'" )
    , ( "charisma", "[n] Charisma" )
    , ( "check_penalty", "[n] Armor check penalty" )
    , ( "cleric_spell", "Cleric spells granted by a deity" )
    , ( "complexity", "Hazard complexity" )
    , ( "component", "Spell casting components (Material / Somatic / Verbal)" )
    , ( "con", "[n] Alias for 'constitution'" )
    , ( "constitution", "[n] Constitution" )
    , ( "cost", "Cost to use an action or cast a ritual" )
    , ( "creature_family", "Creature family" )
    , ( "damage", "Weapon damage" )
    , ( "deed", "Gunslinger way deeds" )
    , ( "defense_proficiency", "A class's defense proficiencies" )
    , ( "deity", "Deities associated with a domain, spell, or weapon" )
    , ( "dex", "[n] Alias for 'dexterity'" )
    , ( "dex_cap", "[n] Armor dex cap" )
    , ( "dexterity", "Dexterity" )
    , ( "disable", "Hazard disable requirements" )
    , ( "divine_font", "Deity's divine font" )
    , ( "divinity", "Plane divinities" )
    , ( "domain_spell", "Domain spell" )
    , ( "domain", "Domains related to deity or spell" )
    , ( "duration", "[n] Duration of spell, ritual, or poison, in seconds" )
    , ( "duration_raw", "Duration exactly as written" )
    , ( "familiar_ability", "Abilities granted by specific familiars" )
    , ( "favored_weapon", "Deity's favored weapon" )
    , ( "feat", "Related feat" )
    , ( "follower_alignment", "Deity's follower alignments" )
    , ( "fort", "[n] Alias for 'fortitude_save'" )
    , ( "fortitude", "[n] Alias for 'fortitude_save'" )
    , ( "fortitude_save", "[n] Fortitude save" )
    , ( "frequency", "Frequency of which something can be used" )
    , ( "granted_spell", "Spells granted by a sorcerer bloodline or witch patron theme" )
    , ( "hands", "Hands required to use item" )
    , ( "hardness", "[n] Hazard or shield hardness" )
    , ( "heighten", "Spell heightens available" )
    , ( "hex_cantrip", "Witch patron theme hex cantrip" )
    , ( "home_plane", "Summoner eidolon home plane" )
    , ( "hp", "[n] Hit points" )
    , ( "immunity", "Immunities" )
    , ( "int", "[n] Alias for 'intelligence'" )
    , ( "intelligence", "[n] Intelligence" )
    , ( "item", "Items carried by a creature" )
    , ( "item_category", "Category of an item" )
    , ( "item_subcategory", "Subcategory of an item" )
    , ( "language", "Languages spoken" )
    , ( "lesson_type", "Witch lesson type" )
    , ( "level", "[n] Level" )
    , ( "mystery", "Oracle mysteries associated with a spell" )
    , ( "name", "Name" )
    , ( "onset", "[n] Onset of a disease or poison in seconds" )
    , ( "onset_raw", "Onset exactly as written" )
    , ( "patron_theme", "Witch patron themes associated with a spell" )
    , ( "per", "[n] Alias for 'perception'" )
    , ( "perception", "[n] Perception" )
    , ( "perception_proficiency", "A class's perception proficiency" )
    , ( "pfs", "Pathfinder Society status (Standard / Limited / Restricted)" )
    , ( "plane_category", "Plane category" )
    , ( "prerequisite", "Prerequisites" )
    , ( "price", "[n] Item price in copper coins" )
    , ( "primary_check", "Primary check of a ritual" )
    , ( "range", "[n] Range of spell or weapon in feet" )
    , ( "rarity", "Rarity" )
    , ( "ref", "[n] Alias for 'reflex_save'" )
    , ( "reflex", "[n] Alias for 'reflex_save'" )
    , ( "reflex_save", "[n] Reflex save" )
    , ( "region", "Background region" )
    , ( "reload", "[n] Weapon reload" )
    , ( "required_abilities", "[n] Number of required familiar abilities for a specific familiar" )
    , ( "requirement", "Requirements" )
    , ( "resistance.<type>", "[n] Resistance to <type>. See list of valid types below. Use resistance.\\* to match any type." )
    , ( "resistance_raw", "Resistances exactly as written" )
    , ( "saving_throw", "Saving throw for a disease, poison, or spell (Fortitude / Reflex / Will)" )
    , ( "saving_throw_proficiency", "A class's saving throw proficiencies" )
    , ( "school", "Magical school" )
    , ( "secondary_casters", "[n] Secondary casters for a ritual" )
    , ( "secondary_check", "Secondary checks for a ritual" )
    , ( "sense", "Senses" )
    , ( "size", "Size" )
    , ( "skill", "Related skills" )
    , ( "skill_proficiency", "A class's skill proficiencies" )
    , ( "slingers_reload", "Gunslinger way's slinger's reload" )
    , ( "source", "Source book name" )
    , ( "source_raw", "Source book exactly as written incl. page" )
    , ( "source_category", "Source book category" )
    , ( "speed.<type>", "[n] Speed of <type>. Valid types are burrow, climb, fly, land, and swim. Use speed.\\* to match any type." )
    , ( "speed_raw", "Speed exactly as written" )
    , ( "speed_penalty", "Speed penalty of armor or shield" )
    , ( "spell_list", "Spell list of a Sorcerer bloodline or witch patron theme" )
    , ( "spoilers", "Adventure path name if there is a spoiler warning on the page" )
    , ( "stage", "Stages of a disease or poison" )
    , ( "stealth", "Hazard stealth" )
    , ( "str", "[n] Alias for 'strength'" )
    , ( "strength", "[n] Creature strength or armor strength requirement" )
    , ( "strongest_save", "The strongest save(s) of a creature ( Fortitude / Reflex / Will )" )
    , ( "target", "Spell targets" )
    , ( "text", "All text on a page" )
    , ( "tradition", "Traditions of spell or summoner eidolon" )
    , ( "trait", "Traits with values removed, e.g. 'Deadly d6' is normalized as 'Deadly'" )
    , ( "trait_raw", "Traits exactly as written" )
    , ( "trigger", "Trigger" )
    , ( "type", "Type" )
    , ( "usage", "Usage of curse or item" )
    , ( "weakest_save", "The weakest save(s) of a creature (Fortitude / Reflex / Will)" )
    , ( "weakness.<type>", "[n] Weakness to <type>. See list of valid types below. Use weakness.\\* to match any type." )
    , ( "weakness_raw", "Weaknesses exactly as written" )
    , ( "weapon_category", "Weapon category (Simple / Martial / Advanced / Ammunition)" )
    , ( "weapon_group", "Weapon group" )
    , ( "will", "[n] Alias for 'will_save'" )
    , ( "will_save", "[n] Will save" )
    , ( "wis", "[n] Alias for 'wisdom'" )
    , ( "wisdom", "[n] Wisdom" )
    ]


magicSchools : List String
magicSchools =
    [ "abjuration"
    , "conjuration"
    , "divination"
    , "enchantment"
    , "evocation"
    , "illusion"
    , "necromancy"
    , "transmutation"
    ]


predefinedColumnConfigurations : List { columns : List String, label : String }
predefinedColumnConfigurations =
    [ { columns = [ "hp", "size", "speed", "ability_boost", "ability_flaw", "language", "vision", "rarity", "pfs" ]
      , label = "Ancestries"
      }
    , { columns = [ "armor_category", "ac", "dex_cap", "check_penalty", "speed_penalty", "strength", "bulk", "armor_group", "trait" ]
      , label = "Armor"
      }
    , { columns = [ "ability_boost", "skill", "feat", "rarity", "pfs", "region" ]
      , label = "Backgrounds"
      }
    , { columns = [ "ability", "hp", "attack_proficiency", "defense_proficiency", "saving_throw_proficiency", "perception_proficiency", "skill_proficiency", "rarity", "pfs" ]
      , label = "Classes"
      }
    , { columns = [ "level", "hp", "ac", "fortitude", "reflex", "will", "strongest_save", "weakest_save", "perception", "sense", "size", "alignment", "rarity", "speed", "immunity", "resistance", "weakness", "trait", "creature_family", "language" ]
      , label = "Creatures"
      }
    , { columns = [ "alignment", "ability", "divine_font", "skill", "favored_weapon", "domain", "cleric_spell", "deity_category", "edict", "anathema", "area_of_concern", "follower_alignment", "pfs" ]
      , label = "Deities"
      }
    , { columns = [ "level", "saving_throw", "onset", "stage", "trait", "rarity" ]
      , label = "Diseases"
      }
    , { columns = [ "level", "trait", "prerequisite", "actions", "trigger", "requirement", "frequency", "archetype", "rarity", "pfs" ]
      , label = "Feats"
      }
    , { columns = [ "item_category", "item_subcategory", "level", "price", "bulk", "trait", "rarity", "pfs" ]
      , label = "Items"
      }
    , { columns = [ "level", "price", "saving_throw", "onset", "duration", "stage", "trait", "rarity", "pfs" ]
      , label = "Poisons"
      }
    , { columns = [ "type", "aspect", "prerequisite", "trait" ]
      , label = "Relic gifts"
      }
    , { columns = [ "level", "heighten", "school", "trait", "primary_check", "secondary_casters", "secondary_check", "cost", "actions", "target", "range", "area", "duration", "rarity", "pfs" ]
      , label = "Rituals"
      }
    , { columns = [ "type", "level", "heighten", "tradition", "school", "trait", "actions", "component", "trigger", "target", "range", "area", "duration", "saving_throw", "rarity", "pfs" ]
      , label = "Spells"
      }
    , { columns = [ "weapon_type", "weapon_category", "weapon_group", "trait", "damage", "hands", "range", "reload", "bulk", "price" ]
      , label = "Weapons"
      }
    ]


saves : List String
saves =
    [ "fortitude"
    , "reflex"
    , "will"
    ]


sizes : List String
sizes =
    [ "tiny"
    , "small"
    , "medium"
    , "large"
    , "huge"
    , "gargantuan"
    ]


sortFieldOld : List ( String, String )
sortFieldOld =
    [ ( "ac", "AC" )
    , ( "bulk", "Bulk" )
    , ( "charisma", "Charisma" )
    , ( "constitution", "Constitution" )
    , ( "dexterity", "Dexterity" )
    , ( "fortitude", "Fortitude" )
    , ( "hp", "HP" )
    , ( "intelligence", "Intelligence" )
    , ( "level", "Level" )
    , ( "name", "Name" )
    , ( "perception", "Perception" )
    , ( "price", "Price" )
    , ( "range", "Range" )
    , ( "reflex", "Reflex" )
    , ( "strength", "Strength" )
    , ( "type", "Type" )
    , ( "will", "Will" )
    , ( "wisdom", "Wisdom" )
    ]
        |> List.append
            (List.map
                (\type_ ->
                    ( "resistance." ++ type_
                    , (String.Extra.humanize type_) ++ " resistance"
                    )
                )
                damageTypes
            )
        |> List.append
            (List.map
                (\type_ ->
                    ( "weakness." ++ type_
                    , (String.Extra.humanize type_) ++ " weakness"
                    )
                )
                damageTypes
            )
        |> List.append
            (List.map
                (\speed ->
                    ( "speed." ++ speed
                    , (String.Extra.humanize speed) ++ " speed"
                    )
                )
                speedTypes
            )


sortFields : List ( String, String, Bool )
sortFields =
    [ ( "ability", "ability", False )
    , ( "ability_type", "ability_type", False )
    , ( "ac", "ac", True )
    , ( "actions", "actions.keyword", False )
    , ( "alignment", "alignment", False )
    , ( "archetype", "archetype", False )
    , ( "area", "area.keyword", False )
    , ( "armor_category", "armor_category", False )
    , ( "armor_group", "armor_group", False )
    , ( "aspect", "aspect", False )
    , ( "bloodline", "bloodline", False )
    , ( "bulk", "bulk", True )
    , ( "charisma", "charisma", True )
    , ( "check_penalty", "check_penalty", True )
    , ( "component", "component", False )
    , ( "constitution", "constitution", True )
    , ( "cost", "cost.keyword", False )
    , ( "creature_family", "creature_family", False )
    , ( "deity", "deity", False )
    , ( "deity_category", "deity_category", False )
    , ( "dex_cap", "dex_cap", True )
    , ( "dexterity", "dexterity", True )
    , ( "divine_font", "divine_font", False )
    , ( "domain", "domain.keyword", False )
    , ( "duration", "duration", True )
    , ( "favored_weapon", "favored_weapon", False )
    , ( "fortitude", "fortitude", False )
    , ( "frequency", "frequency.keyword", False )
    , ( "hands", "hands.keyword", False )
    , ( "hardness", "hardness", False )
    , ( "heighten", "heighten", False )
    , ( "hp", "hp", True )
    , ( "intelligence", "intelligence", False )
    , ( "item_category", "item_category", False )
    , ( "item_subcategory", "item_subcategory", False )
    , ( "level", "level", True )
    , ( "mystery", "mystery", False )
    , ( "name", "name.keyword", False )
    , ( "onset", "onset", True )
    , ( "patron_theme", "patron_theme", False )
    , ( "perception", "perception", True )
    , ( "pfs", "pfs", False )
    , ( "plane_category", "plane_category", False )
    , ( "prerequisite", "prerequisite.keyword", False )
    , ( "price", "price", True )
    , ( "primary_check", "primary_check.keyword", False )
    , ( "range", "range", True )
    , ( "rarity", "rarity", False )
    , ( "reflex", "reflex", True )
    , ( "region", "region", False )
    , ( "requirement", "requirement.keyword", False )
    , ( "saving_throw", "saving_throw.keyword", False )
    , ( "school", "school", False )
    , ( "secondary_casters", "secondary_casters", False )
    , ( "secondary_check", "secondary_check.keyword", False )
    , ( "size", "size", False )
    , ( "source", "source", False )
    , ( "speed_penalty", "speed_penalty.keyword", False )
    , ( "spoilers", "spoilers", False )
    , ( "strength", "strength", True )
    , ( "strongest_save", "strongest_save", False )
    , ( "target", "target.keyword", False )
    , ( "tradition", "tradition", False )
    , ( "trigger", "trigger.keyword", False )
    , ( "type", "type", False )
    , ( "vision", "vision", False )
    , ( "weakest_save", "weakest_save", False )
    , ( "weapon_category", "weapon_category", False )
    , ( "weapon_group", "weapon_group", False )
    , ( "weapon_type", "weapon_type", False )
    , ( "will", "will", True )
    , ( "wisdom", "wisdom", True )
    ]
        |> List.append
            (List.map
                (\type_ ->
                    ( "resistance." ++ type_
                    , "resistance." ++ type_
                    , True
                    )
                )
                damageTypes
            )
        |> List.append
            (List.map
                (\type_ ->
                    ( "weakness." ++ type_
                    , "weakness." ++ type_
                    , True
                    )
                )
                damageTypes
            )
        |> List.append
            (List.map
                (\type_ ->
                    ( "speed." ++ type_
                    , "speed." ++ type_
                    , True
                    )
                )
                speedTypes
            )


speedTypes : List String
speedTypes =
    [ "burrow"
    , "climb"
    , "fly"
    , "land"
    , "swim"
    ]


sourceCategories : List String
sourceCategories =
    [ "adventure paths"
    , "adventures"
    , "blog posts"
    , "comics"
    , "lost omens"
    , "rulebooks"
    , "society"
    ]


tableColumns : List String
tableColumns =
    [ "ability"
    , "ability_boost"
    , "ability_flaw"
    , "ability_type"
    , "ac"
    , "actions"
    , "alignment"
    , "anathema"
    , "archetype"
    , "area"
    , "area_of_concern"
    , "armor_category"
    , "armor_group"
    , "aspect"
    , "attack_proficiency"
    , "bloodline"
    , "bulk"
    , "charisma"
    , "check_penalty"
    , "cleric_spell"
    , "component"
    , "constitution"
    , "cost"
    , "creature_family"
    , "damage"
    , "defense_proficiency"
    , "deity"
    , "deity_category"
    , "dex_cap"
    , "dexterity"
    , "divine_font"
    , "domain"
    , "duration"
    , "edict"
    , "favored_weapon"
    , "feat"
    , "follower_alignment"
    , "fortitude"
    , "frequency"
    , "hands"
    , "hardness"
    , "heighten"
    , "hp"
    , "immunity"
    , "intelligence"
    , "item_category"
    , "item_subcategory"
    , "language"
    , "level"
    , "mystery"
    , "onset"
    , "patron_theme"
    , "perception"
    , "perception_proficiency"
    , "pfs"
    , "plane_category"
    , "prerequisite"
    , "price"
    , "primary_check"
    , "range"
    , "rarity"
    , "reflex"
    , "region"
    , "requirement"
    , "resistance"
    , "saving_throw"
    , "saving_throw_proficiency"
    , "school"
    , "secondary_casters"
    , "secondary_check"
    , "sense"
    , "size"
    , "skill"
    , "skill_proficiency"
    , "source"
    , "speed"
    , "speed_penalty"
    , "spoilers"
    , "stage"
    , "strength"
    , "strongest_save"
    , "target"
    , "tradition"
    , "trait"
    , "trigger"
    , "type"
    , "vision"
    , "weakest_save"
    , "weakness"
    , "weapon_category"
    , "weapon_group"
    , "weapon_type"
    , "will"
    , "wisdom"
    ]


weaponCategories : List String
weaponCategories =
    [ "simple"
    , "martial"
    , "advanced"
    , "ammunition"
    , "unarmed"
    ]


weaponTypes : List String
weaponTypes =
    [ "melee"
    , "ranged"
    ]
