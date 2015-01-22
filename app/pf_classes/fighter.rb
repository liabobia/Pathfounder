class Fighter < PfClass

  role :class
  hit_die 10
  alignment :any

  skills :climb, :craft, :handle_animal, :intimidate, :knowledge_dungeoneering, :knowledge_engineering, :profession, :ride, :survival, :swim
  skill_ranks_per_level 2
  skill_ranks_per_level int modifier #this won't parse, teach me how to wrap it (teach me teach me how to wrap it)

  base_attack_bonus      1
  mods feat_count:       1 #at every even level after 1, fighters get a bonus feat specifically from the fighter bonus feats list
  mods fortitude_save:  -2 # why is this - and not +?
  mods will_save:        0
  mods reflex_save:      0
  #additionally, fighters get a single bonus feat at 4n levels, which can only be swapped in and out.

  adds weapon_proficiency: [:simple, :martial]
  adds armor_proficiency: [:all]
  adds shield_proficiency: [:all]
end
