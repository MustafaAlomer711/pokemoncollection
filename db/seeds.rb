Pokemon.configure do |config|
  config.api_key = ENV['API_KEY']
end

base_set = Pokemon::Set.find('base1')
p base_set

cards = Pokemon::Card.where(q: 'set.id:base1')
cards.each do |card|
  PokemonCard.create(name: card.name, artist: card.artist, image_url: card.images.small, pokemon_set_id: 1)
end
