# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
new_users = {
	'Anna Harper Hess' => 'Members',
	'Dmitri Kazanski' => 'Ads',
	'Eren Alasyali' => 'Ads',
	'Heather Harmon' => 'Marketing',
	'Jason Koeppe' => 'Marketing',
	'Mark Brower' => 'Engineering',
	'Mark Szolosi' => 'Traffic/Search',
	'Matt Van Ormer' => 'Premium',
	'Oksana Shmaliy' => 'Engineering',
	'Russell Garrison' => 'Engineering',
	'Ty Henkaline' => 'Analytics',
	'Maureen Pechinak' => 'Manta.com'
}

new_users.each do |key, value|
	u = User.new(name:key, area:value)
	if u.save
		puts "user #{key} created"
	else
		puts "user #{key} not created:"
		u.errors.each do |e|
			puts "#{e}"
		end
	end
end
