# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = [
  {
    name: "Mustachifier",
    price: 9.99,
    user_id: 1,
    stock: 20,
    description: "Are you as tired of your baby’s lack of facial hair as I am? Well get ready my friends, because the days of mustache-less babies are NO MORE!",
    category: "Baby",
    photo_url: "http://shutupandtakemymoney.com/wp-content/uploads/2013/10/mustachifier-300x250.jpg"
  },
  {
    name: "Glitter Beard Kit",
    price: 99.99,
    user_id: 2,
    stock: 10,
    description: "Celebrate every day with a festive Glitter Beard! So easy to do! AND you'll leave behind a little glitter everywhere you go!",
    category: "Personal Care",
    photo_url: "http://sobadsogood.com/uploads/media/2015/12/07/These-Glitter-Beards-Are-Sure-To-Get-You-In-The-Festive-Spirit.jpg"
  },
  {
    name: "How To Guide to your Beard Bowl",
    price: 29.99,
    user_id: 3,

    stock: 15,
    description: "Why dirty the dishes?! Design your personal beard bowl today!",
    category: "Personal Care",
    photo_url: "http://i.kinja-img.com/gawker-media/image/upload/s--yLgLfF9M--/c_scale,fl_progressive,q_80,w_800/191643wh1xaatjpg.jpg"
  }
]

products.each do |product|
    Product.create(product)
end
