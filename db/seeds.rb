# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rank_list = [["Petty Officer", 1], ["Ensign", 2], ["Lieutenant Junior Grade", 3], ["Lieutenant", 4], ["Lieutenant Commander", 5], ["Commander", 6], ["Captain", 7]]

ship_status = ["decommissioned", "active", "being repaired"]

roster_reason = ["fired", "transfered ships"]

puts "Creating 10 Starships"

5.times do |ship|
  starship = Starship.create(name: Faker::Vehicle.make_and_model, class_name: Faker::Vehicle.style, registry: Faker::Vehicle.license_plate)

  puts "creating startship status"
  StarshipStatus.create(starship: Starship.second, title: ship_status.sample, start_date: Faker::Date.backward(days: 2000), end_date: Faker::Date.backward(days: 14))

  puts "creating starship owner history"
  StarshipOwnerHistory.create(starship: starship, title: "United Federation of Planets", start_date: Faker::Date.between(from: 2000.days.ago, to: Date.today))

  puts "creating starship operator history"
  StarshipOperatorHistory.create(starship: starship, title: "Starfleet", start_date: Faker::Date.between(from: 2000.days.ago, to: Date.today))

  puts "create Captain"
  personnel = Personnel.create(name: Faker::TvShows::StarTrek.character, gender: Faker::Gender.binary_type, species: Faker::TvShows::StarTrek.specie, affiliation: "employee")

  Rank.create(personnel: personnel, title: rank_list.last.first, weight: rank_list.last.last, start_date: Faker::Date.backward(days: 2000))

  captain = User.create(email:"starshipcaptain@coolbeings.com", password: "123456", personnel: personnel)

  puts "create rest of the crew"
  3.times do |current_personnel|
    personnel = Personnel.create(name: Faker::TvShows::StarTrek.character, gender: Faker::Gender.binary_type, species: Faker::TvShows::StarTrek.specie, affiliation: "employee")

    2.times do |current_rank|
      puts "creating previous ranks for Personnel"
      rank_list.shuffle.each do |rank_and_weight|
        Rank.create(personnel: personnel, title: rank_and_weight.first, weight: rank_and_weight.second, start_date: Faker::Date.between(from: 2000.days.ago, to: 1000.days.ago), end_date: Faker::Date.between(from: 1000.days.ago, to: Date.today))
      end
    end

    puts "creating current rank"
    Rank.create(personnel: personnel, title: rank_list.sample.first, weight: rank_list.sample.second, start_date: Faker::Date.between(from: 2000.days.ago, to: 1000.days.ago))

    puts "creating occupation"
    Occupation.create(personnel: personnel, title: Faker::Job.title, start_date: Faker::Date.between(from: 2000.days.ago, to: Date.today))

    puts "creating personnel status"
    PersonnelStatus.create(personnel: personnel, title: "alive", start_date: Faker::Date.between(from: 2000.days.ago, to: Date.today))

    puts "creating starship roster for current ship"
    StarshipRoster.create(starship: starship, personnel: personnel, start_date: Faker::Date.backward(days: 214))

    puts "creating starship roster for random ship"
    start_date = Faker::Date.between(from: 500.days.ago, to: 450.days.ago)
    end_date = Faker::Date.between(from: 220.days.ago, to: 200.days.ago)
    StarshipRoster.create(starship: Starship.all.sample, personnel: personnel, start_date: start_date, end_date: end_date, reason: roster_reason.sample)
  end
end

user2 = User.create(email:"alienman@coolbeings.com", password: "123456", personnel: Personnel.second)
user3 = User.create(email:"averagejoe@coolbeings.com", password: "123456", personnel: Personnel.third)

4.times do
  CaptainsLog.create(personnel: Personnel.first, star_date: Faker::Date.between(from: 2000.days.ago, to: Date.today), message: "#{Faker::Space.star} was approximately #{Faker::Space.distance_measurement} away.")
end
