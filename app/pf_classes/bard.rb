class Bard < PfClass

  role :class
  hit_die 8
  alignment :any

  skills :acrobatics, :appraise, :diplomacy, :disguise, :escape_artist, :linguistics, :craft, :climb, :intimidate, :bluff, :knowledge_all, :perception, :perform, :profession, :sense_motive, :sleight_of_hand, :spellcraft, :stealth, :use_magic_device
  skill_ranks_per_level 6
  skill_ranks_per_level int modifier 
  #bards are considered trained in all knowledge skills, and adds 1/2 level min 1 to each as a bonus.
  #perform can be used 4+chamod times per day plus level-1*2
  
  base_attack_bonus      0
  mods fortitude_save:   0
  mods will_save:        2
  mods reflex_save:      2

  adds weapon_proficiency: [:simple, :longsword, :rapier, :sap, :short_sword, :shortbow, :whip]
  adds armor_proficiency: [:light]
  adds shield_proficiency: [:light_wooden, :light_steel, :heavy_wooden, :heavy_steel, :buckler]
  adds performance: [:countersong, :distraction, :fascinate, :inspire_courage]
end
