# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
new_users = {
	'Anna Harper Hess' => 'ahess',
	'Dmitri Kazanski' => 'dkazanski',
	'Eren Alasyali' => 'ealasyali',
	'Heather Harmon' => 'hharmon',
	'Jason Koeppe' => 'jkoeppe',
	'Mark Brower' => 'mbrower',
	'Mark Szolosi' => 'mszolosi',
	'Matt Van Ormer' => 'mvanormer',
	'Oksana Shmaliy' => 'oshmaliy',
	'Russell Garrison' => 'rgarrison',
	'Ty Henkaline' => 'thenkaline',
	'Maureen Pechinak' => 'mpechinak'
}

new_users.each do |key, value|
	u = User.new(name:key, email:"#{value}@manta.com", password:'password', launchpad:true)
	if u.save
		puts "user #{key} created"
	else
		puts "user #{key} not created:"
		u.errors.each do |e|
			puts "#{e}"
		end
	end
end
