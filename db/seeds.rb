# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts 'Deleting movie/actor data...'
Movie.destroy_all
Actor.destroy_all

puts 'Creating movies...'
mean_girls = Movie.create(title: 'Mean Girls', box_office_earnings: 129_000_000)
spice_world =
  Movie.create(title: 'Spice World', box_office_earnings: 151_000_000)

puts 'Creating actors...'
lindsay_lohan = Actor.create(name: 'Lindsay Lohan')
tina_fey = Actor.create(name: 'Tina Fey')
baby_spice = Actor.create(name: 'Emma Bunton')
ginger_spice = Actor.create(name: 'Geri Halliwell')
scary_spice = Actor.create(name: 'Melanie Brown')
sporty_spice = Actor.create(name: 'Melanie Chisholm')
posh_spice = Actor.create(name: 'Victoria Addams')

puts 'Creating roles...'
Role.create(
  actor_id: 3,
  actor: baby_spice,
  movie_id: 2,
  movie: spice_world,
  salary: 11,
  character_name: 'Toddler',
)
Role.create(
  actor_id: 4,
  actor: ginger_spice,
  movie_id: 2,
  movie: spice_world,
  salary: 111,
  character_name: 'Garlic',
)
Role.create(
  actor_id: 2,
  actor: tina_fey,
  movie_id: 1,
  movie: mean_girls,
  salary: 1030,
  character_name: 'Mom',
)
Role.create(
  actor_id: 2,
  actor: tina_fey,
  movie_id: 2,
  movie: spice_world,
  salary: 530,
  character_name: 'Tumeric',
)
Role.create(
  actor_id: 1,
  actor: lindsay_lohan,
  movie_id: 1,
  movie: mean_girls,
  salary: 3030,
  character_name: 'Peaches',
)
Role.create(
  actor_id: 1,
  actor: lindsay_lohan,
  movie_id: 2,
  movie: spice_world,
  salary: 777,
  character_name: 'Clove',
)

puts 'Seeding done!'
