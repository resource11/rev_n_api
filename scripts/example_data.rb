
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Billboard.delete_all
User.delete_all

3.times do | i |
  puts "Creating User: user#{i}@#{i}.com"
  user = User.create!(email: "user#{i}@#{i}.com", password: "a", password_confirmation: "a")
end

b1 = Billboard.create!(name: "billboard 1", title: "Cupcake Awesome", subtext01: "Five flavors", subtext02: "on sale now", color_scheme: "purple", anim_option: "bars" )

b2 = Billboard.create!(name: "billboard 2", title: "MMM Beer", subtext01: "Many on tap", subtext02: "Get yours now", color_scheme: "orange", anim_option: "circles" )

b3 = Billboard.create!(name: "billboard 3", title: "F*ck Yeah Sushi", subtext01: "Gimme some now", subtext02: "Moar sake", color_scheme: "green", anim_option: "triangles" )
