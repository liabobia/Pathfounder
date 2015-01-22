class Barbarian < PfClass

  role :class
  hit_die 12
  alignment :chaotic

  skills :acrobatics, :craft, :climb, :intimidate, :handle_animal, :knowledge_nature, :perception, :ride, :survival, :swim
  skill_ranks_per_level 4
  skill_ranks_per_level int modifier 

  base_attack_bonus      1
  mods fortitude_save:  -2
  mods will_save:        0
  mods reflex_save:      0
  mods speed             +10
  mods rage              4
  mods rage_bonus        con modifier

  adds weapon_proficiency: [:simple, :martial]
  adds armor_proficiency: [:light, :medium]
  adds shield_proficiency: [:light_wooden, :light_steel, :heavy_wooden, :heavy_steel, :buckler]
end
