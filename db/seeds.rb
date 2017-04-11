# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
new_users = {
  'Mark Harris'     => 'mharris',
  'Ryan Tarzy'      => 'rtarzy',
  'Mark Gilicinski' => 'mgilicinski',
  'Barry Brinkley'  => 'bbrinkley'
}

new_users.each do |key, value|
  next unless User.where(email: "#{value}@covermymeds.com").empty?
  User.create!(name: key,
              email: "#{value}@covermymeds.com",
              password: 'password',
              launchpad: true)
end
