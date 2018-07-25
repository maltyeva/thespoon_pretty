Restaurant.delete_all
puts "Deleted Restaurants"

20.times do
  Restaurant.create(name: Faker::Hipster.word,
                    chef: Faker::GreekPhilosophers.name,
                    address: Faker::Address.full_address,
                    description: Faker::RickAndMorty.quote,
                    stars: [1, 2, 3,4 ,5].sample)

end

puts "Created #{Restaurant.count} restaurants"
