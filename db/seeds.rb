# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all
Category.destroy_all

user1 = User.create!(name: 'John', email: 'john1@aa.io', password: 'password')
user2 = User.create!(name: 'Jimmy', email: 'jimmy2@aa.io', password: 'password')
user3 = User.create!(name: 'Kevin', email: 'kevin3@aa.io', password: 'password')
user4 = User.create!(name: 'Elliot', email: 'elliot4@aa.io', password: 'password')
user5 = User.create!(name: 'Jason', email: 'jason5@aa.io', password: 'password')
user6 = User.create!(name: 'Marc', email: 'marc6@aa.io', password: 'password')
user7 = User.create!(name: 'Spencer', email: 'spencer7@aa.io', password: 'password')
user8 = User.create!(name: 'Jesus', email: 'jesus8@aa.io', password: 'password')

category1 = Category.create!(name: "Arts", description: "Discover the artists and organizations using SeedFunding to realize ambitious projects in visual art and performance.")
category2 = Category.create!(name: "Comics & Illustration", description: "Explore fantastical worlds and original characters from SeedFunding community of comics creators and illustrators.")
category3 = Category.create!(name: "Design & Tech", description: "From fine design to innovative tech, discover projects from creators working to build a more beautiful future.")
category4 = Category.create!(name: "Film", description: "Join forces with the intrepid filmmakers and festival creators changing the way stories get told on screen.")
category5 = Category.create!(name: "Food & Craft", description: "See how artisans and entrepreneurs are using SeedFunding to break new ground in food, fashion, and crafts.")
category6 = Category.create!(name: "Games", description: "From tabletop adventures to beloved revivals, discover the projects forging the future of gameplay.")
category7 = Category.create!(name: "Music", description: "Discover new albums, performances, and independent venues from creators using SeedFunding to shape the future of sound.")
category8 = Category.create!(name: "Publishing", description: "Explore how writers and publishers are using SeedFunding to bring new literature, periodicals, podcasts, and more to life.")

project1 = Project.create!(name: "Jean-Michel Basquiat", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user1.id, category_id: category1.id) 
project2 = Project.create!(name: "Catman", description: "Harold the Catman", body: "Catman (Harold) is a fictional character in comic books published by DC 
    Comics who was initially one of the more colourful and camp supervillains to join Batman’s growing roster of enemies in the mid-1960s.For decades, 
    the character rarely appeared in comic books, as Batman stories returned to darker themes. A modern revival of the character in the pages of
    Green Arrow many years later depicted a Catman down on his luck, clinging to past glories, overweight, and pathetic.", 
    funding_expiration: Date.new(2020, 6, 22), funding_goal: 95000, user_id: user2.id, category_id: category2.id)
project3 = Project.create!(name: "Kuul", description: "A modern vape pen that boosts your cool points", body: " an electronic cigarette company which spun off from 
    Wax Labs in 2017. It makes the Kuul e-cigarette, which packages nicotine salts from leaf tobacco into one-time use cartridges", 
    funding_expiration: Date.new(2020, 4, 20), funding_goal: 420000, user_id: user3.id, category_id: category3.id)
project4 = Project.create!(name: "Source Code", description: "The search for bugs", body: "Source code is primarily used as input to the process that produces an executable program. It is also used as a method of communicating algorithms between people. Computer programmers often find it helpful to review existing source code to learn about programming techniques. 
    The sharing of source code between developers is frequently cited as a contributing factor to the maturation of their programming skills. Some people consider source code an expressive artistic medium. Porting software to other computer platforms is usually prohibitively difficult without source code. 
    Without the source code for a particular piece of software, portability is generally computationally expensive. Possible porting options include binary translation and emulation of the original platform.
    Decompilation of an executable program can be used to generate source code, either in assembly code or in a high-level language. Programmers frequently adapt source code from one piece of software to use in other projects, a concept known as software reusability.
    ", funding_expiration: Date.new(2023, 7, 7), funding_goal: 8888888, user_id: user4.id, category_id: category4.id) 
project5 = Project.create!(name: "Kevin's Coffee", description: "A new way to exeperience your favorite caffeinated beverage", body: "Kevin's Coffee is the best coffee.", 
    funding_expiration: Date.new(2022, 2, 22), funding_goal: 23000, user_id: user5.id, category_id: category5.id) 
project6 = Project.create!(name: "Code World", description: "An interactive virtual coding world", body: "A place to see your code come to life. Change your code to change your world", 
    funding_expiration: Date.new(2025, 6, 6), funding_goal: 520000000, user_id: user6.id, category_id: category6.id) 
project7 = Project.create!(name: "log n + 2pac", description: "New music from log n + 2pac", body: "log n + 2pac", funding_expiration: Date.new(2026, 9, 13), funding_goal: 890000,
    user_id: user7.id, category_id: category7.id) 
project8 = Project.create!(name: "Scary Potter", description: "The other side of Hogwarts", body: "The prequel to your favorite book series.", 
    funding_expiration: Date.new(2029, 6, 26), funding_goal: 10000000, user_id: user8.id, category_id: category8.id) 

