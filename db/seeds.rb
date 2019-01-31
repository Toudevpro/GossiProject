

10.times do
 City.create(name: Faker::Name.unique.name, postal_code: "95100")
end

10.times do
 User.create(city_id: rand(1..10),first_name: Faker::Name.unique.name, last_name: Faker::Name.unique.name, email: Faker::Internet.email, description: "texte, contenu, tout ce que tu veux....", age: rand(1..70))    
end

20.times do 
  Gossip.create(title: Faker::HowIMetYourMother.character,content: Faker::HowIMetYourMother.high_five, user_id: rand(1..10))
end

20.times do 
  Like.create(user_id: rand(1..10),gossip_id: rand(1..20))
end

20.times do 
  Comment.create(content: Faker::HowIMetYourMother.high_five, gossip_id: rand(1..20), user_id: rand(1..10))
end 

20.times do 
  Subcomment.create(content: Faker::HowIMetYourMother.high_five, comment_id: rand(1..20), user_id: rand(1..10))
end 

20.times do 
  Tag.create(name: Faker::Job.key_skill)
end 

20.times do 
  Tagossip.create(gossip_id: rand(1..20), tag_id: rand(1..20))
end 

20.times do 
  Message.create(message: Faker::Shakespeare.hamlet_quote, recipient_id: rand(1..10), sender_id: rand(1..10))
end 



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


