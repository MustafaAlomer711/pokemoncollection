Pokemon.configure do |config|
  config.api_key = ENV['API_KEY']
end

# base = PokemonCard.where(pokemon_set_id: 2 )
# base.each do |card|
#   card.set_name = "Jungle"
#   card.save
#   puts card.set_name
# end

# base_set = Pokemon::Set.find('base1')
# p base_set


# sets = Pokemon::Set.all
# sets.each do |set|
#   PokemonSet.create(name: set.name, series: set.series, image_url: set.images.logo)
#   puts "Creating #{set.name}"
# end


# sets.each do |set|
#   PokemonSet.create(name: set.name )
# end

# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )
# PokemonSet.create(name: series: )

# cards = Pokemon::Card.where(q: '!set.name:Wizard Black Star Promos')
# cards.each do |card|
#   PokemonCard.create(name: card.name, artist: card.artist, image_url: card.images.small, pokemon_set_id: 3)
#   puts "Creating #{card.name}"
# end


cards = Pokemon::Card.where(q: '!set.name:Base')
# p cards

cards.each do |card|
  puts "#{card.name} by:  #{card.artist}"
end
