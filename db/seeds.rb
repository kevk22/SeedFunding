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
project3 = Project.create!(name: "Kuul", description: "A modern vape pen that boosts your cool points", body: "Kuul e-cigarettes use nicotine salts (protonated nicotine) from leaf-based tobacco for its key ingredient, 
    rather than free-base nicotine. Kuul received a US patent for its nicotine salt preparation in 2015. The nicotine salts are said to create an experience more like smoking than other e-cigarettes on the market, 
    as Kuul attempts to deliver a nicotine peak in five minutes, similar to a traditional cigarette. Each cartridge (called a Kuul pod) contains about the same amount of nicotine as one pack of cigarettes and delivers 
    approximately 200 puffs. The amount of nicotine in each cartridge – 59 mg/ml in the United States, limited to 20 mg/ml in the European Union – is substantially more than the majority of e-cigarettes on the market.", 
    funding_expiration: Date.new(2020, 4, 20), funding_goal: 420000, user_id: user3.id, category_id: category3.id)
project4 = Project.create!(name: "Source Code", description: "The search for bugs", body: "Source code is primarily used as input to the process that produces an executable program. It is also used as a method of communicating algorithms between people. Computer programmers often find it helpful to review existing source code to learn about programming techniques. 
    The sharing of source code between developers is frequently cited as a contributing factor to the maturation of their programming skills. Some people consider source code an expressive artistic medium. Porting software to other computer platforms is usually prohibitively difficult without source code. 
    Without the source code for a particular piece of software, portability is generally computationally expensive. Possible porting options include binary translation and emulation of the original platform.
    Decompilation of an executable program can be used to generate source code, either in assembly code or in a high-level language. Programmers frequently adapt source code from one piece of software to use in other projects, a concept known as software reusability.
    ", funding_expiration: Date.new(2023, 7, 7), funding_goal: 8888888, user_id: user4.id, category_id: category4.id) 
project5 = Project.create!(name: "Kevin's Coffee", description: "A new way to exeperience your favorite caffeinated beverage", body: "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. 
    The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean. Coffee plants are now cultivated in over 70 countries, primarily in the equatorial regions of the Americas, 
    Southeast Asia, Indian subcontinent, and Africa. The two most commonly grown are C. arabica and C. robusta. Once ripe, coffee berries are picked, processed, and dried. Dried coffee seeds (referred to as beans) are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.
    Coffee is darkly colored, bitter, slightly acidic and has a stimulating effect in humans, primarily due to its caffeine content. It is one of the most popular drinks in the world, and it can be prepared and presented in a variety of ways (e.g., espresso, French press, caffè latte). 
    It is usually served hot, although iced coffee is a popular alternative. Clinical studies indicate that moderate coffee consumption is benign or mildly beneficial in healthy adults, with continuing research on whether long-term consumption lowers the risk of some diseases, although those long-term studies are of generally poor quality.
    ", funding_expiration: Date.new(2022, 2, 22), funding_goal: 23000, user_id: user5.id, category_id: category5.id) 
project6 = Project.create!(name: "Code World", description: "An interactive virtual coding world", body: "In communications and information processing, code is a system of rules to convert information—such as a letter, word, sound, image, or gesture—into another form or representation, sometimes shortened or secret, 
    for communication through a communication channel or storage in a storage medium. An early example is the invention of language, which enabled a person, through speech, to communicate what they saw, heard, felt, or thought to others. But speech limits the range of communication to the distance a voice can carry, 
    and limits the audience to those present when the speech is uttered. The invention of writing, which converted spoken language into visual symbols, extended the range of communication across space and time.
    The process of encoding converts information from a source into symbols for communication or storage. Decoding is the reverse process, converting code symbols back into a form that the recipient understands, such as English or Spanish.
    One reason for coding is to enable communication in places where ordinary plain language, spoken or written, is difficult or impossible. For example, semaphore, where the configuration of flags held by a signaler or the arms of a semaphore tower encodes parts of the message, typically individual letters and numbers. 
    Another person standing a great distance away can interpret the flags and reproduce the words sent.
", funding_expiration: Date.new(2025, 6, 6), funding_goal: 520000000, user_id: user6.id, category_id: category6.id) 
project7 = Project.create!(name: "log n + 2pac", description: "New music from log n + 2pac", body: "Tupac Amaru Shakur born Lesane Parish Crooks, June 16, 1971 – September 13, 1996, also known by his stage names 2Pac and Makaveli, was an American rapper and actor. He is considered by many to be one of the greatest rappers of all time. 
    Much of Shakur's work has been noted for addressing contemporary social issues that plagued inner cities, and he is considered a symbol of resistance and activism against inequality.
    Shakur was born in the Harlem neighborhood of New York City but relocated to the San Francisco Bay Area in 1988. He later moved to Los Angeles in 1993 to further pursue his music career. By the time he released his debut album 2Pacalypse Now in 1991, he had become a central figure in West Coast hip hop, 
    introducing social issues in the genre at a time when gangsta rap was dominant in the mainstream.
    ", funding_expiration: Date.new(2026, 9, 13), funding_goal: 890000,
    user_id: user7.id, category_id: category7.id) 
project8 = Project.create!(name: "Scary Potter", description: "The other side of Hogwarts", body: "Scary Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Scary Potter, and his friends Hermione Granger and Ron Weasley, 
    all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arcconcerns Scary's struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people).
    Since the release of the first novel, Scary Potter and the Philosopher's Stone, on 26 June 1997, the books have found immense popularity, critical acclaim and commercial success worldwide. They have attracted a wide adult audience as well as younger readers and are often considered cornerstones of modern young adult literature. 
    As of February 2018, the books have sold more than 500 million copies worldwide, making them the best-selling book series in history, and have been translated into eighty languages. The last four books consecutively set records as the fastest-selling books in history, with the final installment selling roughly eleven million copies in the United States within twenty-four hours of its release.
", funding_expiration: Date.new(2029, 6, 26), funding_goal: 10000000, user_id: user8.id, category_id: category8.id) 



project9 = Project.create!(name: "Kadinsky", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user2.id, category_id: category1.id) 
project10 = Project.create!(name: "Futura", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user3.id, category_id: category1.id) 
project11 = Project.create!(name: "Murakami", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user4.id, category_id: category1.id) 

project12 = Project.create!(name: "Watchmen", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user5.id, category_id: category2.id) 
project13 = Project.create!(name: "Spiderman", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user6.id, category_id: category2.id) 
project14 = Project.create!(name: "Venom", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user7.id, category_id: category2.id) 

project15 = Project.create!(name: "Magic Keyboard", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user8.id, category_id: category3.id) 
project16 = Project.create!(name: "Space Room", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user1.id, category_id: category3.id) 
project17 = Project.create!(name: "Frequency Optimizer", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user2.id, category_id: category3.id) 

project18 = Project.create!(name: "Ocean's 11", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user3.id, category_id: category4.id) 
project19 = Project.create!(name: "Matrix 10.0", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user4.id, category_id: category4.id) 
project20 = Project.create!(name: "Joker", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user5.id, category_id: category4.id) 

project21 = Project.create!(name: "Brain Boosting Smoothies", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user6.id, category_id: category5.id) 
project22 = Project.create!(name: "EZ Dine", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user7.id, category_id: category5.id) 
project23 = Project.create!(name: "Korean BBQ", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user8.id, category_id: category5.id) 

project24 = Project.create!(name: "Cuphead", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user1.id, category_id: category6.id) 
project25 = Project.create!(name: "Rocket League", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user2.id, category_id: category6.id) 
project26 = Project.create!(name: "Metal Gear Solid", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user3.id, category_id: category6.id) 

project27 = Project.create!(name: "Adam Beyer", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user4.id, category_id: category7.id) 
project28 = Project.create!(name: "Luttrell", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user5.id, category_id: category7.id) 
project29 = Project.create!(name: "Metal Gear Solid", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user6.id, category_id: category7.id) 

project30 = Project.create!(name: "Obstacle is the Way", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user7.id, category_id: category8.id) 
project31 = Project.create!(name: "Zero to One", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influential American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user8.id, category_id: category8.id) 
project32 = Project.create!(name: "Ubik", description: "Unique artwork showcasing Basquiat's signature style", body: "Jean-Michel Basquiat; December 22, 1960 – August 12, 1988
    was an influetial American artist of Haitian and Puerto Rican descent. Basquiat first achieved fame as part of SAMO, an informal graffiti duo
    who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan during the late 1970s, where rap, punk, and street 
    art coalesced into early hip-hop music culture. By the 1980s, his neo-expressionist paintings were being exhibited in galleries and museums
    internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.", funding_expiration: Date.new(2020, 1, 1), funding_goal: 1000000,
    user_id: user1.id, category_id: category8.id) 