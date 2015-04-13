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
		body: "Mens GMC Denali Light weight aluminum road bike has a 21 speed Shimano derailleur",
		amazon_id: "B00FNVBSAM",
		created_at: Time.now
	},
	{
		title: "Ostrich Pillow",
		price: 97,
		body: "Ostrich Pillow is a revolutionary new product to enable easy power naps anytime, everywhere, Ostrich Pillow's unique design offers a micro environment in which to take a cozy and comfortable power nap at ease. Ostrich Pillow has been designed to allow you to create a little private space within a public one, to relax and unwind.",
		amazon_id: "B00F4S5ST6",
		created_at: 1.day.ago
	},
	{
		title: "Brita Water Filter Pitcher",
		price: 23,
		body: "Everyday pitcher water filtration system.-Activated carbon and ion exchange resin work together to transform ordinary tap water into healthier, great tasting drinking water",
		amazon_id: "B004GNGID0",
		created_at: 30.hours.ago
	},
	{
		title: "Hoover WindTunnel T-Series Rewind Plus Bagless Upright, UH70120",
		price: 99,
		body: "There's no loss of suction* with Hoover patented WindTunnel technology that removes embedded dirt** and minimizes scatter on carpet. Features include: a powerful Hand Tool for precision cleaning, a rinsable filter, a HEPA filter, and on-board tools. It's everything you asked for and more!",
		amazon_id: "B00B7871DS",
		created_at: 6.days.ago
	},
	{
		title: "Post-It Super Sticky Notes",
		price: 7,
		body: "These colorful squares are the perfect building blocks for self-expression. Use the Post-it Notes Wall Art Creator Tool to make wall-sized characters, messages, works of art or whatever design you want to create. Start creating your next wall art masterpiece.",
		amazon_id: "B008PAIC4S",
		created_at: 3.weeks.ago
	}])

p "Created #{Post.count} posts"