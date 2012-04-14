# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'


puts "Importing roles..."
Role.delete_all
CSV.foreach('seeds/roles.csv') do |row|
  role = Role.new(
  :id          =>   row[0],
  :name        =>   row[1]

  )
  role.save
end

puts "Importing states..."
State.delete_all
CSV.foreach('seeds/states.csv') do |row|
  state = State.new(
  :id                  =>  row[0],
  :state_name          =>  row[1],
  :state_abbreviation  =>  row[2]

  )
  state.save
end


