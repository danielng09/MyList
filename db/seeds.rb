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
		amazon_link: "http://www.amazon.com/Denali-Black-Green-20-Inch-Small/dp/B00FNVBSAM/ref=sr_1_1?ie=UTF8&qid=1428959875&sr=8-1&keywords=GMC+Denali+Road+Bike",
		#amazon_id: "B00FNVBSAM",
		created_at: Time.now
	},
	{
		title: "Ostrich Pillow",
		price: 97,
		body: "Ostrich Pillow is a revolutionary new product to enable easy power naps anytime, everywhere, Ostrich Pillow's unique design offers a micro environment in which to take a cozy and comfortable power nap at ease. Ostrich Pillow has been designed to allow you to create a little private space within a public one, to relax and unwind.",
		amazon_link: "http://www.amazon.com/Studio-Banana-Things-Ostrich-Pillow/dp/B00F4RM99O/ref=sr_1_6?ie=UTF8&qid=1428960051&sr=8-6&keywords=ostrich+pillow",
		#amazon_id: "B00F4S5ST6",
		created_at: 1.day.ago
	},
	{
		title: "Brita Water Filter Pitcher",
		price: 23,
		body: "Everyday pitcher water filtration system.-Activated carbon and ion exchange resin work together to transform ordinary tap water into healthier, great tasting drinking water",
		amazon_link: "http://www.amazon.com/Brita-10-Cup-Everyday-Filter-Pitcher/dp/B004GNGID0/ref=sr_1_1?ie=UTF8&qid=1428960080&sr=8-1&keywords=Brita+Water+Filter+Pitcher",
		#amazon_id: "B004GNGID0",
		created_at: 30.hours.ago
	},
	{
		title: "Hoover WindTunnel T-Series Rewind Plus Bagless Upright, UH70120",
		price: 99,
		body: "There's no loss of suction* with Hoover patented WindTunnel technology that removes embedded dirt** and minimizes scatter on carpet. Features include: a powerful Hand Tool for precision cleaning, a rinsable filter, a HEPA filter, and on-board tools. It's everything you asked for and more!",
		amazon_link: "http://www.amazon.com/Hoover-WindTunnel-Bagless-Upright-UH70120/dp/B002HFDLCK/ref=sr_1_1?ie=UTF8&qid=1428960117&sr=8-1&keywords=hoover+windtunnel+t-series+rewind+bagless+uh70120",
		#amazon_id: "B00B7871DS",
		created_at: 6.days.ago
	},
	{
		title: "Post-It Super Sticky Notes",
		price: 7,
		body: "These colorful squares are the perfect building blocks for self-expression. Use the Post-it Notes Wall Art Creator Tool to make wall-sized characters, messages, works of art or whatever design you want to create. Start creating your next wall art masterpiece.",
		amazon_link: "http://www.amazon.com/Post--Sticky-3-Inches-5-Pads-654-5SSSC/dp/B008PAIC4S/ref=sr_1_1?ie=UTF8&qid=1428960197&sr=8-1&keywords=B008PAIC4S",
		#amazon_id: "B008PAIC4S",
		created_at: 3.weeks.ago
	}])

p "Created #{Post.count} posts"