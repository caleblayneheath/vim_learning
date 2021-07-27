def generate_encounters
  roll = (1..100).to_a.sample
  
  str = case roll
  when 1..80
    'common'
  when 81..95
    'uncommon'
  when 96..100
    'rare'
  end
  
  tracks = (1..100).to_a.sample
  return str + ' tracks' if tracks <= 25
  lair = (1..100).to_a.sample
  return str + ' lair' if lair <= 25
  str + ' wandering'
end

20.times { p generate_encounters}
