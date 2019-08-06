# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'


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



project9 = Project.create!(name: "Kadinsky", description: "Unique artwork showcasing Kadinsky's signature style", body: "Wassily Kandinsky was born on December, 16th, 1866 in Moscow, 
    in a well-to-do family of a businessman in a good cultural environment. In 1871 the family moved to Odessa where his father ran his tea factory. There, alongside with attending a classical gymnasium, 
    the boy learned to play the piano and the cello and took to drawing with a coach. I remember that drawing and a little bit later painting lifted me out of the reality, he wrote later. In Kandinsky's works
    of his childhood period we can find rather specific color combinations, which he explained by the fact that each color lives by its mysterious life. 
    However, Wassily's parents saw him in the future as a lawyer. In the year of 1886 he went to Moscow and entered Law Faculty of Moscow University. Graduating with honors, six years later Wassily 
    married his cousin, Anna Chimyakina. In 1893 he became Docent Associate Professor of Law Faculty and continued teaching. In 1896 the famous in Derpt University in Tartu, where at that time the 
    process of russification was taking place, a thirty-year-old Kandinsky was appointed Professor to the Department of Law, but at this particular time he decided to give up a successful career to devote himself 
    completely to painting. Later on Kandinsky recollected two events, which had affected this decision: his visiting an exhibition of the French impressionists in Moscow in 1895 and an emotional shock he experienced from K. Monet's, Haystacks, 
    and an impression of Rihard Wagner's Lohengrin at the Bolshoi Theatre.", funding_expiration: Date.new(2023, 2, 2), funding_goal: 9000000, user_id: user2.id, category_id: category1.id) 
project10 = Project.create!(name: "Futura", description: "Unique artwork showcasing Futura's signature style", body: "While he is primarily known as a graffiti artist, much of his work is as an illustrator and graphic designer of album covers, first becoming involved with The Clash; producing a 
    sleeve for their This Is Radio Clash 7 single and handwriting the sleeve notes and lyrics sheet for their album Combat Rock (1982). He also toured extensively with The Clash during the Combat Rock tours, performing with them on stage by spray painting backdrops whilst the band performed.
    Years later James Lavelle resurrected Futuras career by getting him, alongside Ben Drury, to produce the artwork for several releases on Mo Wax records; this also led to Futura producing the imagery which has largely defined Lavelle's Unkle project.
    During the 1990s he was involved with clothing companies such as GFS, Subware and Project Dragon. More recently much of Futura's artwork has evolved into the production of collectible toys, sneakers; and a diverse range of creative media, working with Recon, Nike, The North Face, Medicom Toy, Undercover, Supreme, Levi's and A Bathing Ape.
    Futura also designs his own clothing under the label Futura Laboratories with a store located in Fukuoka, Japan.", funding_expiration: Date.new(2021, 3, 4), funding_goal: 6600000,
    user_id: user3.id, category_id: category1.id) 
project11 = Project.create!(name: "Kaws", description: "Unique artwork showcasing Kaws' signature style", body: "Brian Donnelly born 1974, known professionally as Kaws, is an American artist and designer. His work includes repeated use of a cast of figurative characters and motifs, some dating back to the beginning of his career in the 1990s, 
    initially painted in 2D and later realised in 3D. Some of his characters are his own creations while others are reworked versions of existing icons.
    Kaws' sculptures range in size from a few inches to ten metres tall, and are made from various materials including fiberglass, aluminium, wood, bronze and a steel pontoon inflatable raft.
    His work is exhibited in galleries and museums, held in the permanent collections of public institutions, and avidly collected by individuals including music producer Swizz Beatz, 
    internet sensation PewDiePie and rapper Pharrell Williams. A number of books illustrating his work have been published. He lives and works in Brooklyn, New York, creating sculptures, acrylic paintings on canvas, and screen prints while also collaborating commercially, predominantly on limited edition toys, but also clothing, skate decks and other products.", 
    funding_expiration: Date.new(2024, 4, 4), funding_goal: 1230000, user_id: user4.id, category_id: category1.id) 

project12 = Project.create!(name: "Watchmen", description: "In an alternate 1985 America, costumed superheroes are part of everyday life", body: "In a gritty and alternate 1985 the glory days of costumed vigilantes have been brought to a 
    close by a government crackdown, but after one of the masked veterans is brutally murdered an investigation into the killer is initiated. The reunited heroes set out to prevent their own destruction, but in doing 
    so discover a deeper and far more diabolical plot.", funding_expiration: Date.new(2025, 6, 20), funding_goal: 1340000,
    user_id: user5.id, category_id: category2.id) 
project13 = Project.create!(name: "Spiderman", description: "Spidey Senses", body: "When Spider-Man first appeared in the early 1960s, teenagers in superhero comic books were usually relegated to the role of sidekick to the protagonist. The Spider-Man series broke ground by featuring Peter Parker, a high school student from Queens behind
     Spider-Man's secret identity and with whose 'self-obsessions with rejection, inadequacy, and loneliness' young readers could relate. While Spider-Man had all the makings of a sidekick, unlike previous teen heroes such as Bucky and Robin, Spider-Man had no superhero mentor like Captain America and Batman; he thus had to learn for himself.", 
     funding_expiration: Date.new(2022, 2, 2), funding_goal: 430000, user_id: user6.id, category_id: category2.id) 
project14 = Project.create!(name: "Venom", description: "Spider-man's Evil Enemy", body: "Venom is a fictional character appearing in American comic books published by Marvel Comics, commonly in association with Spider-Man. The character is a sentient alien Symbiote with an amorphous, liquid-like form, who survives by bonding with a host, usually human. 
    This dual-life form receives enhanced powers and usually refers to itself as 'Venom'
    . The Symbiote was originally introduced as a living alien costume in The Amazing Spider-Man #252 (May 1984), with a full first appearance as Venom in The Amazing Spider-Man #300 (May 1988).", 
    funding_expiration: Date.new(2020, 7, 7), funding_goal: 9900000, user_id: user7.id, category_id: category2.id) 

project15 = Project.create!(name: "Magic Keyboard", description: "A keyboard to make magic", body: "Bring your keystrokes to life with the new magic keyboard.
    Every word you type appears on your desk in augmented reality!", funding_expiration: Date.new(2020, 1, 1), funding_goal: 100000,
    user_id: user8.id, category_id: category3.id) 
project16 = Project.create!(name: "Space Room", description: "An inifinity mirror-lined room", body: "a mirror-lined room with flashing LED lights that you physically 
    enter with a door that closes behind you. If you are uncomfortable with flashing lights and/or enclosed, dark spaces, please bypass this experience.", 
    funding_expiration: Date.new(2020, 7, 7), funding_goal: 8000000,
    user_id: user1.id, category_id: category3.id) 
project17 = Project.create!(name: "Frequency Optimizer", description: "Calculate the best frequency for your ears", body: "The best tool available to get the best 
    frequency for your tunes. The frequency optimizer can be used to create beatiful music that can be appreciated around the world. With our technology you can see 
    what frequencies are being used for the most heard songs globally.", funding_expiration: Date.new(2024, 1, 1), funding_goal: 90000,
    user_id: user2.id, category_id: category3.id) 

project18 = Project.create!(name: "Ocean's 11", description: "Classic casino heist", body: "Danny Ocean wants to score the biggest heist in history. He combines an eleven member team, 
    including Frank Catton, Rusty Ryan and Linus Caldwell. Their target? The Bellagio, the Mirage and the MGM Grand. All casinos owned by Terry Benedict. It's not going to be easy, 
    as they plan to get in secretly and out with $150 million.", funding_expiration: Date.new(2020, 5, 5), funding_goal: 1000000,
    user_id: user3.id, category_id: category4.id) 
project19 = Project.create!(name: "Matrix 10.0", description: "A computerized world", body: "homas A. Anderson is a man living two lives. By day he is an average computer programmer and by night 
    a hacker known as Neo. Neo has always questioned his reality, but the truth is far beyond his imagination. Neo finds himself targeted by the police when he is contacted by Morpheus, a legendary computer 
    hacker branded a terrorist by the government. Morpheus awakens Neo to the real world, a ravaged wasteland where most of humanity have been captured by a race of machines that live off of the humans' body 
    heat and electrochemical energy and who imprison their minds within an artificial reality known as the Matrix. As a rebel against the machines, Neo must return to the Matrix and confront the agents: super-powerful computer 
    programs devoted to snuffing out Neo and the entire human rebellion.", funding_expiration: Date.new(2023, 3, 3), funding_goal: 6000000, user_id: user4.id, category_id: category4.id) 
project20 = Project.create!(name: "Joker", description: "Gotham's favorite villian", body: "Failed comedian Arthur Fleck encounters violent thugs while wandering the streets of Gotham City dressed as a clown. 
    Disregarded by society, Fleck begins a slow dissent into madness as he transforms into the criminal mastermind known as the Joker.", funding_expiration: Date.new(2025, 5, 5), funding_goal: 1200000, user_id: user5.id, category_id: category4.id) 

project21 = Project.create!(name: "Brain Boosting Smoothies", description: "A treat for your brain", body: "The healthfulness of a smoothie depends on its ingredients and their proportions. Many smoothies include large or multiple servings of fruits and vegetables, which are recommended in a healthy diet and intended to be a meal replacement.
     However, fruit juice containing high amounts of sugar can increase caloric intake and promote weight gain. Similarly, ingredients such as protein powders, sweeteners, or ice cream are often used in smoothie recipes, some of which contribute mostly to flavor and further caloric intake.
    ", funding_expiration: Date.new(2022, 1, 1), funding_goal: 2000000, user_id: user6.id, category_id: category5.id) 
project22 = Project.create!(name: "EZ Dine", description: "The new way to order meals", body: "EZ Dine gives your the freedom to eat what you want anywhere in the world.", funding_expiration: Date.new(2023, 1, 1), funding_goal: 1000000,
    user_id: user7.id, category_id: category5.id) 
project23 = Project.create!(name: "Korean BBQ", description: "KBBQ", body: "the popular method in Korean cuisine of grilling meat, typically beef, pork, or chicken. Such dishes are often prepared on gas or charcoal grills built into the dining table itself. 
    Some Korean restaurants that do not have built-in grills provide customers with portable stoves for diners to use at their tables. Alternatively, a chef uses a centrally displayed grill to prepare dishes to order.
    The most representative form of gogi-gui is bulgogi, usually made from thinly sliced marinated beef sirloin or tenderloin. Another popular form is galbi, made from marinated beef short ribs. However, gogi-gui also includes 
    many other kinds of marinated and unmarinated meat dishes, and can be divided into several categories. Korean barbecue is popular in its home country, but has also gained popularity worldwide.", funding_expiration: Date.new(2024, 1, 1), funding_goal: 990000,
    user_id: user8.id, category_id: category5.id) 

project24 = Project.create!(name: "Cuphead", description: "Classic run and gun", body: "Cuphead is a run and gun video game developed and published by StudioMDHR. Announced in 2013, the game was released for Microsoft Windows and Xbox One in September 2017, for macOS in October 2018, 
    and for Nintendo Switch in April 2019. The game was inspired by the rubber hose style of animation used in cartoons of the 1930s, such as the work of studios Fleischer and Walt Disney Animation, and seeks to emulate their subversive and surrealist qualities.
    Cuphead features one or two players taking control of animated characters Cuphead and his brother Mugman to fight through several levels that culminate in boss fights as to repay their debt to the devil. The game was praised for its art style and noted for its challenging difficulty. 
    It was both a critical and commercial success, winning several awards and selling over four million copies by July 2019. An animated series based on the game is in production by Netflix.", funding_expiration: Date.new(2022, 1, 1), funding_goal: 600000,
    user_id: user1.id, category_id: category6.id) 
project25 = Project.create!(name: "Rocket League", description: "Soccer for cars", body: "Rocket League is a vehicular soccer video game developed and published by Psyonix. The game was first released for Microsoft Windows and PlayStation 4 in July 2015, with ports for Xbox One, macOS, Linux, and Nintendo Switch being released later on. In June 2016, 
    505 Games began distributing a physical retail version for PlayStation 4 and Xbox One, with Warner Bros. Interactive Entertainment taking over those duties by the end of 2017.
    Described as 'soccer, but with rocket-powered cars', Rocket League has up to four players assigned to each of the two teams, using rocket-powered vehicles to hit a ball into their 
    opponent's goal and score points over the course of a match. The game includes single-player and multiplayer modes which can be played both locally and online, including cross-platform play between all versions. Later updates for the game enabled the ability to modify core rules and added new game modes, including ones based on ice hockey and basketball.", 
    funding_expiration: Date.new(2022, 11, 11), funding_goal: 8000000, user_id: user2.id, category_id: category6.id) 
project26 = Project.create!(name: "Metal Gear Solid", description: "Solid Snake", body: "Metal Gear Solid is an action-adventure stealth video game developed by Kojima Productions and released for the PlayStation in 1998. The game was directed, produced, and written by Hideo Kojima, and serves as a sequel to the MSX2 video games Metal Gear
    and Metal Gear 2: Solid Snake, which Kojima also worked on. The game was first unveiled in the Tokyo Game Show in 1996 and subsequently shown in the Electronic Entertainment Expo in 1997, before eventually releasing in late 1998.
    The game follows Solid Snake, a soldier who infiltrates a nuclear weapons facility to neutralize the terrorist threat from FOXHOUND, a renegade special forces unit. Snake must liberate two hostages, the head of DARPA and the president of a major arms manufacturer, confront the terrorists, and stop them from launching a nuclear strike. 
    Cinematic cutscenes were rendered using the in-game engine and graphics, and voice acting was used throughout the entire game.", funding_expiration: Date.new(2026, 4, 2), funding_goal: 3000000,
    user_id: user3.id, category_id: category6.id) 

project27 = Project.create!(name: "Adam Beyer", description: "Swedish Techno", body: "From the fertile Swedish underground to the peak of global club culture, the reign of Adam Beyer continues to pull on the heartstrings of modern techno like few others of the time. A festival headliner, sought after recording artist and enigmatic DJ.
    Few come as well versed in family values as that of long serving techno legend Adam Beyer. A husband, father and certified underground icon, the Stockholm-based DJ/producer has come to embody one of the most consistent and carefully constructed legacies to emerge from Europe and hold influence across the continents. 
    From festival main stages and coveted club floors through to the global airwaves and Beatport charts alike, Beyer’s extended musical legacy is felt across the board. ", funding_expiration: Date.new(2024, 4, 3), funding_goal: 7000000, user_id: user4.id, category_id: category7.id) 
project28 = Project.create!(name: "Luttrell", description: "Anjunadeep", body: "Influenced by everything from the sunsets of his San Francisco hometown to DJing the playa at Burning Man, Luttrell’s unique brand of melodic techno has seen him gain heavy support from BBC Radio 1, and receive remix requests from renowned acts Moby, What So Not, and Tycho. Annie Mac made ‘Intergalactic Plastic’ her Hottest Record in the World, 
    and his productions have also been supported by Pete Tong, Kolsch, Joris Voorn, Lane 8 and many more. His early musical influences include The Smashing Pumpkins, Nirvana, and The Prodigy, but a semester spent studying in Berlin introduced him to techno.
    Now a mainstay of the Anjunadeep touring family, Luttrell has performed at major venues on both sides of the Atlantic, from Bill Graham in San Francisco, to London’s Printworks. 2018 saw him play Holy Ship, the DoLab at Coachella, and Tomorrowland, plus supporting Above & Beyond, Rüfüs Du Sol, and Lane 8 on their US tours. He kicked off the year with his debut artist album ‘Into Clouds’ 
    and an accompanying 23 date North American tour. He will play Lightning In A Bottle, Electric Forest and Anjunadeep Explorations later this year, in addition to many other great festivals still to be announced.", funding_expiration: Date.new(2025, 1, 1), funding_goal: 1000000,
    user_id: user5.id, category_id: category7.id) 
project29 = Project.create!(name: "Amelie Lens", description: "Belgian techno DJ", body: "Amelie Lens, born 31 May 1990, is a Belgian electronic music DJ, record producer, and co-owner of the Lenske record label. She is signed to the Pan-Pot imprint Second State records, with whom she has released several singles and EPs,
    the most successful to date being 2017's Contradiction EP. She has also recorded for the Drumcode and Elevate labels. Her live sets tend towards bass-heavy minimal techno, mixing classic acid and tribal house influences with more contemporary European techno sounds.
    Lens has toured extensively across Europe and North America, including a 2017 appearance at LaPlage de Glazart in Paris, and at the 2018 Awakenings festival in the Netherlands.", funding_expiration: Date.new(2023, 3, 3), funding_goal: 7000000,
    user_id: user6.id, category_id: category7.id) 

project30 = Project.create!(name: "Obstacle is the Way", description: "By Ryan Holiday", body: "We are stuck, stymied, frustrated. But it needn't be this way. There is a formula for success that's been followed by the icons of history - from John D. Rockefeller to Amelia Earhart to Ulysses S. Grant to Steve Jobs - a formula that let them turn obstacles into opportunities. Faced with impossible situations, 
    they found the astounding triumphs we all seek. These men and women were not exceptionally brilliant, lucky, or gifted. Their success came from timeless philosophical principles laid down by a Roman emperor who struggled to articulate a method for excellence in any and all situations.
    This book reveals that formula for the first time - and shows us how we can turn our own adversity into advantage.", funding_expiration: Date.new(2023, 1, 1), funding_goal: 500000,
    user_id: user7.id, category_id: category8.id) 
project31 = Project.create!(name: "Zero to One", description: "By Peter Thiel", body: "The great secret of our time is that there are still uncharted frontiers to explore and new inventions to create. In Zero to One, legendary entrepreneur and investor Peter Thiel shows how we can find singular ways to create those new things. 
    Thiel begins with the contrarian premise that we live in an age of technological stagnation, even if we’re too distracted by shiny mobile devices to notice. Information technology has improved rapidly, but there is no reason why progress should be limited to computers or Silicon Valley. Progress can be achieved in any industry or area of business. 
    It comes from the most important skill that every leader must master: learning to think for yourself. Doing what someone else already knows how to do takes the world from 1 to n, adding more of something familiar. But when you do something new, you go from 0 to 1. The next Bill Gates will not build an operating system. The next Larry Page or Sergey Brin won’t make a search engine. 
    Tomorrow’s champions will not win by competing ruthlessly in today’s marketplace. They will escape competition altogether, because their businesses will be unique. ", funding_expiration: Date.new(2029, 1, 1), funding_goal: 8000000,
    user_id: user8.id, category_id: category8.id) 
project32 = Project.create!(name: "Ubik", description: "By Philip K. Dick", body: "Glen Runciter runs a lucrative business—deploying his teams of anti-psychics to corporate clients who want privacy and security from psychic spies. But when he and his top team are ambushed by a rival, he is gravely injured and placed in “half-life,” a dreamlike state of suspended animation. Soon, though, 
    the surviving members of the team begin experiencing some strange phenomena, such as Runciter’s face appearing on coins and the world seeming to move backward in time. As consumables deteriorate and technology gets ever more primitive, the group needs to find out what is causing the shifts and what a mysterious product called Ubik has to do with it all. ", 
    funding_expiration: Date.new(2025, 1, 1), funding_goal: 6000000, user_id: user1.id, category_id: category8.id) 

    art_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/basquiat.jpg")
    project1.photo.attach(io: art_pic0, filename: "basquiat.jpg")

    art_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Arts1.jpeg")
    project9.photo.attach(io: art_pic1, filename: "Arts1.jpeg")

    art_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Arts2.jpeg")
    project10.photo.attach(io: art_pic2, filename: "Arts2.jpeg")

    art_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Arts3.jpeg")
    project11.photo.attach(io: art_pic3, filename: "Arts3.jpeg")


    comic_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Comics+%26+Illustration.jpeg")
    project2.photo.attach(io: comic_pic0, filename: "Comics+%26+Illustration.jpeg")

    comic_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Comics+%26+Illustration1.jpeg")
    project12.photo.attach(io: comic_pic1, filename: "Comics+%26+Illustration1.jpeg")

    comic_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Comics+%26+Illustration2.jpeg")
    project13.photo.attach(io: comic_pic2, filename: "Comics+%26+Illustration2.jpeg")

    comic_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Comics+%26+Illustration3.jpg")
    project14.photo.attach(io: comic_pic3, filename: "Comics+%26+Illustration3.jpg")


    tech_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Design+%26+Tech.jpeg")
    project3.photo.attach(io: tech_pic0, filename: "Design+%26+Tech.jpeg")

    tech_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Design+%26+Tech1.jpeg")
    project15.photo.attach(io: tech_pic1, filename: "Design+%26+Tech1.jpeg")

    tech_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Design+%26+Tech2.jpeg")
    project16.photo.attach(io: tech_pic2, filename: "Design+%26+Tech2.jpeg")

    tech_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Design+%26+Tech3.jeg.jpg")
    project17.photo.attach(io: tech_pic3, filename: "Design+%26+Tech3.jeg.jpg")


    film_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Film.jpeg")
    project4.photo.attach(io: film_pic0, filename: "Film.jpeg")
    
    film_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Film1.jpeg")
    project18.photo.attach(io: film_pic1, filename: "Film1.jpeg")

    film_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Film2.jpeg")
    project19.photo.attach(io: film_pic2, filename: "Film2.jpeg")
    
    film_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Film3.jpeg")
    project20.photo.attach(io: film_pic3, filename: "Film3.jpeg")


    food_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Food+%26+Craft.jpeg")
    project5.photo.attach(io: food_pic0, filename: "Food+%26+Craft.jpeg")

    food_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Food+%26+Craft3.jpeg")
    project21.photo.attach(io: food_pic1, filename: "Food+%26+Craft3.jpeg")

    food_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Food+%26+Craft1.jpeg")
    project22.photo.attach(io: food_pic2, filename: "Food+%26+Craft1.jpeg")

    food_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Food+%26+Craft2.jpeg")
    project23.photo.attach(io: food_pic3, filename: "Food+%26+Craft2.jpeg")


    game_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Games.jpg")
    project6.photo.attach(io: game_pic0, filename: "Games.jpg")

    game_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Games1.jpeg")
    project24.photo.attach(io: game_pic1, filename: "Games1.jpeg")

    game_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Games2.jpeg")
    project25.photo.attach(io: game_pic2, filename: "Games2.jpeg")

    game_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Games3.jpeg")
    project26.photo.attach(io: game_pic3, filename: "Games3.jpeg")


    music_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Music.jpeg")
    project7.photo.attach(io: music_pic0, filename: "Music.jpeg")

    music_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Music1.jpeg")
    project27.photo.attach(io: music_pic1, filename: "Music1.jpeg")

    music_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Music2.jpeg")
    project28.photo.attach(io: music_pic2, filename:"Music2.jpeg")
    
    music_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Music3.jpeg")
    project29.photo.attach(io: music_pic3, filename:"Music3.jpeg")


    pub_pic0 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Publishing.jpeg")
    project8.photo.attach(io: pub_pic0, filename: "Publishing.jpeg")

    pub_pic1 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Publishing1.jpeg")
    project30.photo.attach(io: pub_pic1, filename: "Publishing1.jpeg")

    pub_pic2 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Publishing2.jpeg")
    project31.photo.attach(io: pub_pic2, filename: "Publishing2.jpeg")

    pub_pic3 = open("https://seedfunding-seeds.s3-us-west-1.amazonaws.com/Publishing3.jpeg")
    project32.photo.attach(io: pub_pic3, filename: "Publishing3.jpeg")