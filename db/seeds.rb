# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

Post.create([{
		title: "GMC Denali Road Bike",
		price: 389,
		body: "Mens GMC Denali Light weight aluminum road bike has a 21 speed Shimano derailleur"
	},
	{
		title: "Ostrich Pillow",
		price: 97,
		body: "Ostrich Pillow is a revolutionary new product to enable easy power naps anytime, everywhere, Ostrich Pillow's unique design offers a micro environment in which to take a cozy and comfortable power nap at ease. Ostrich Pillow has been designed to allow you to create a little private space within a public one, to relax and unwind."
	}])

p "Created #{Post.count} posts"