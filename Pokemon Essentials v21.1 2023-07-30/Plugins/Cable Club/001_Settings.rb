module CableClub
  HOST = "cableclub.basedzone.xyz"
  PORT = 9999
  
  ONLINE_TRAINER_TYPE_LIST = [
    [:POKEMONTRAINER_Red,:POKEMONTRAINER_Leaf],
    [:PSYCHIC_M,:PSYCHIC_F],
    [:BLACKBELT,:CRUSHGIRL],
    [:COOLTRAINER_M,:COOLTRAINER_F]
  ]
  ENABLE_RECORD_MIXER = false
  
  # If true, Sketch fails when used.
  # If false, Sketch is undone after battle
  DISABLE_SKETCH_ONLINE = true
end