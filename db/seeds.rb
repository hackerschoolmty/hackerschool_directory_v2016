# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Seed languages
10.times do

	language = Language.create({name: Faker::Hacker.adjective})

end

5.times do

	#Create generation
	generation = Generation.create({name: Faker::App.name, start_date: Faker::Date.backward(10)})

	#Create hackers
	3.times do
		hacker = generation.hackers.create({name: Faker::Name.name, email: Faker::Internet.email, github_account: Faker::Internet.user_name})
		
		#Por qué esto no funciona?
		#hacker.language_ids = Language.pluck(:id).shuffle[0..4]
		
		#Y esto sí?
		hacker.language_ids = Language.pluck(:id).shuffle[0..4]

	end

	#Create courses
	5.times do
		course = generation.courses.create({name: Faker::App.name})
	end

	
end