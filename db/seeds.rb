# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Gossip.destroy_all
City.destroy_all

#SEED CITY

	City.create(name: "Paris", zip_code: "75000")
	City.create(name:"Marseille", zip_code: "13000")
	City.create(name:"Lyon", zip_code: "69000")


#SEED USER
10.times do 
	prenom = Faker::Name.first_name
	User.create(first_name: prenom, last_name: Faker::Name.last_name, email: Faker::Internet.email(name: prenom), age: rand(14..70), city: City.all[rand(0..2)], password_digest:Faker::Internet.email(name: prenom))
end

#SEED GOSSIP
User.all.each do |user|
	5.times do
		Gossip.create(user: user, title: Faker::DcComics.title, content: Faker::Quote.famous_last_words, city: City.all[rand(0..4)])
	end
end
