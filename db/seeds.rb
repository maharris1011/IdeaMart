# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
new_users = {
  'Mark Harris' => 'mharris'
}

new_users.each do |key, value|
  u = User.new(name: key, email: "#{value}@covermymeds.com", password: 'password', launchpad: true)
  if u.save
    puts "user #{key} created"
  else
    puts "user #{key} not created:"
    u.errors.each do |e|
      puts e.to_s
    end
  end
end
