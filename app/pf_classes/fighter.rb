class Fighter < PfClass

  role :class
  hit_die 10
  alignment :any

  skills :climb, :craft, :handle_animal, :intimidate, :knowledge_dungeoneering, :knowledge_engineering, :profession, :ride, :survival, :swim
  skill_ranks_per_level 2
  skill_ranks_per_level int modifier

  base_attack_bonus      1
  mods feat_count:       1
  mods fortitude_save:  -2
  mods will_save:        0
  mods reflex_save:      0

  adds weapon_proficiency: [:simple, :martial]
  adds armor_proficiency: [:all]
  adds shield_proficiency: [:all]
end
