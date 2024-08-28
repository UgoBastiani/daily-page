require 'net/http'
require 'json'
require 'open-uri'

Favorite.destroy_all
Suggestion.destroy_all
Book.destroy_all
Category.destroy_all
User.destroy_all
p "db cleaned"

user1 = User.create(
  first_name: "Jonathan",
  last_name: "Smith",
  email: "jonathan@exemple.com",
  password: "password123"
  # profile_picture: "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
)

user2 = User.create(
  first_name: "Maria",
  last_name: "Martinez",
  email: "maria@exemple.com",
  password: "password123"
  # profile_picture: "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
)

user3 = User.create(
  first_name: "Tommy",
  last_name: "Lee",
  email: "tommy@exemple.com",
  password: "password123"
  # profile_picture: "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
)

user4 = User.create(
  first_name: "Jessica",
  last_name: "Davies",
  email: "jessica@exemple.com",
  password: "password123"
  # profile_picture: "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
)

user5 = User.create(
  first_name: "Mikasa",
  last_name: "Ackerman",
  email: "mikasa@exemple.com",
  password: "password123"
)

user6 = User.create(
  first_name: "Eren",
  last_name: "Jaeger",
  email: "eren@exemple.com",
  password: "password123"
)

user7 = User.create(
  first_name: "Armin",
  last_name: "Arlert",
  email: "armin@exemple.com",
  password: "password123"
)

# category1 = Category.create(
#   name: "Policier",
#   mood: "Plot"
# )

# category2 = Category.create(
#   name: "Thriller",
#   mood: "Tension"
# )

# category3 = Category.create(
#   name: "Historique",
#   mood: "Nostalgia"
# )

# category4 = Category.create(
#   name: "Science-fiction",
#   mood: "Wonder"
# )

# category5 = Category.create(
#   name: "Fantastique",
#   mood: "Mystere"
# )

# category6 = Category.create(
#   name: "Fantasy",
#   mood: "Evasion"
# )

# category7 = Category.create(
#   name: "Romance",
#   mood: "Passion"
# )

# category8 = Category.create(
#   name: "Horreur",
#   mood: "Terror"
# )

# category9 = Category.create(
#   name: "Aventure",
#   mood: "Excitation"
# )

# category10 = Category.create(
#   name: "Comédie",
#   mood: "Fun"
# )

# category11 = Category.create(
#   name: "Drame",
#   mood: "Melancholy"
# )

# category12 = Category.create(
#   name: "Autobiographique",
#   mood: "Inspiration"
# )

# p Category.all

# def fetch_book_details(book_title)
#   base_url = "https://www.googleapis.com/books/v1/volumes?q=search:#{book_title}"
#   query = URI.open(base_url).read
#   response = JSON.parse(query)

#   if response['totalItems'] > 0
#     book_info = response['items'].first['volumeInfo']

#     {
#       title: book_info['title'],
#       author: book_info['authors'] ? book_info['authors'].join(', ') : 'Auteur inconnu',
#       number_of_pages: book_info['pageCount'] || 'Non spécifié',
#       publishing_date: book_info['publishedDate'] || 'Non spécifiée',
#       description: book_info['description'] || 'Description non disponible',
#       thumbnail: book_info['imageLinks'] ? book_info['imageLinks']['thumbnail'] : 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781787550360/classic-book-cover-foiled-journal-9781787550360_hr.jpg'
#     }
#   else
#     nil
#   end
# end

# # Policier

# books_police_en = [
#   "thegirlwiththedragontattoo",
#   "gonegirl",
#   "thesilenceofthelambs",
#   "biglittlelies",
#   "intheremains",
#   "thesnowman",
#   "thespywhocameinfromthecold",
#   "shutterisland",
#   "thedaVinciCode",
#   "thegodfather"
# ]

# books_police_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     p details[:number_of_pages]
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category1
#     )

#     puts "Book created: #{details[:title]}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Thriller

# books_thriller_en = [
#   "thegirlwithallthegifts",
#   "thedavinciCode",
#   "thehunger",
#   "inthemisofthewar",
#   "thewomaninwhite",
#   "theroad",
#   "thecoupleNextdoor",
#   "beforeigotosleep",
#   "rebecca",
#   "theblackecho"
# ]

# books_thriller_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category2
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Historique

# books_historical_en = [
#   "allthelightwecannotsee",
#   "thebookthief",
#   "warandpeace",
#   "thepillarsOfTheEarth",
#   "wolfhall",
#   "thehelp",
#   "theotherBoleynGirl",
#   "thelighthorseman",
#   "beneathascarletsky"
# ]

# books_historical_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category3
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Science-fiction

# books_science_fiction_en = [
#   "dune",
#   "neuromancer",
#   "foundation",
#   "braveNewWorld",
#   "snowcrash",
#   "hyperion",
#   "thelefthandofdarkness",
#   "endersgame",
#   "theexhalation",
#   "doAndroidsDreamOfElectricSheep"
# ]

# books_science_fiction_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category4
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Fantastique

# books_fantastique_en = [
#   "theturnofthewheel",
#   "thehoundsOfBaskerville",
#   "thewhisperinggallery",
#   "thehauntingofhillhouse",
#   "themonk",
#   "thefifthseason",
#   "thegoldencompass",
#   "swanSong",
#   "thedrownedcities"
# ]

# books_fantastique_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category5
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Fantasy

# books_fantasy_en = [
#   "thehobbit",
#   "harrypotterandthesorcerersstone",
#   "thelionthewitchandthewardrobe",
#   "aGameOfThrones",
#   "mistborn",
#   "thefinalempire",
#   "theNameOfTheWind",
#   "goodomens",
#   "neverwhere",
#   "thecrystalshard"
# ]

# books_fantasy_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category6
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Romance

# books_romance_en = [
#   "prideandprejudice",
#   "janeausten",
#   "thenotebook",
#   "mebeforeyou",
#   "outlander",
#   "thekissquotient",
#   "theweddingdate",
#   "thebridgertonseries",
#   "toalltheboysive LovedBefore",
#   "beachread"
# ]

# books_romance_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category7
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Horreur

# books_horror_en = [
#   "theexorcist",
#   "it",
#   "petsematary",
#   "theshining",
#   "thesilenceofthelambs",
#   "thebabadook",
#   "houseofleaves",
#   "thecabininthewoods",
#   "us",
#   "hereditary"
# ]

# books_horror_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category8
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Aventure

# books_adventure_en = [
#   "treasureisland",
#   "journeytothecenteroftheearth",
#   "kingkong",
#   "thethree Musketeers",
#   "robinhood",
#   "20,000LeaguesUndertheSea",
#   "moby-dick",
#   "thecountofmontecristo",
#   "thelostworld",
#   "theadventuresofhuckleberryfinn",
#   "thecallofthewild"
# ]

# books_adventure_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category9
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Comedie

# books_comedy_en = [
#   "goodomens",
#   "thehitchhikersguidetothegalaxy",
#   "where'dyougobernadette",
#   "bridgetjonessdiary",
#   "meandearlandthedyinggirl",
#   "crazyrichasians",
#   "theimportanceofbeingearnest",
#   "theprincessbride",
#   "bossypants",
#   "letspretendthisneverhappened"
# ]

# books_comedy_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category10
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Drame

# books_drama_en = [
#   "to Kill a Mockingbird",
#   "the Great Gatsby",
#   "one Flew Over the Cuckoo's Nest",
#   "a Streetcar Named Desire",
#   "the Catcher in the Rye",
#   "beloved",
#   "the Road",
#   "life of Pi",
#   "atonement",
#   "the Color Purple"
# ]

# books_drama_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category11
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

# # Autobiographie

# books_autobiography_en = [
#   "the Diary of a Young Girl",
#   "becoming",
#   "the Long Walk to Freedom",
#   "the Glass Castle",
#   "the Story of My Life",
#   "wild",
#   "steve Jobs",
#   "when Breath Becomes Air",
#   "the Autobiography of Malcolm X",
#   "i Know Why the Caged Bird Sings"
# ]

# books_autobiography_en.each do |book_title|
#   details = fetch_book_details(book_title)

#   if details
#     Book.create!(
#       title: details[:title],
#       author: details[:author],
#       number_of_pages: details[:number_of_pages].to_i,
#       publishing_date: details[:publishing_date],
#       description: details[:description],
#       thumbnail: details[:thumbnail],
#       category: category12
#     )

#     puts "Book created: #{book_title}"
#   else
#     puts "Book '#{book_title}' not found. Skipping..."
#   end
# end

categories = [
  { name: 'Policier', mood: 'Suspenseful' },
  { name: 'Thriller', mood: 'Intense' },
  { name: 'Historique', mood: 'Reflective' },
  { name: 'Science-fiction', mood: 'Futuristic' },
  { name: 'Fantastique', mood: 'Magical' },
  { name: 'Fantasy', mood: 'Epic' },
  { name: 'Romance', mood: 'Heartwarming' },
  { name: 'Horreur', mood: 'Terrifying' },
  { name: 'Aventure', mood: 'Exciting' },
  { name: 'Comédie', mood: 'Humorous' },
  { name: 'Drame', mood: 'Emotional' },
  { name: 'Autobiographique', mood: 'Inspirational' }
]

# Create categories
categories.each do |category_data|
  Category.create!(category_data)
end

# Define books with detailed descriptions
books = [
  # Policier
  { title: "The No. 1 Ladies' Detective Agency",
    author: 'Alexander McCall Smith',
    number_of_pages: 233,
    publishing_date: '1998-06-01',
    description: "The first in the series about Mma Ramotswe, Botswana's premier female private detective, who solves cases with insight and charm, revealing the cultural and social intricacies of her community.",
    category: Category.find_by(name: 'Policier'),
    thumbnail: "https://m.media-amazon.com/images/I/716x3mmokqL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Hound of the Baskervilles',
    author: 'Arthur Conan Doyle',
    number_of_pages: 256,
    publishing_date: '1902-03-01',
    description: 'Sherlock Holmes and Dr. Watson investigate the mysterious death of Sir Charles Baskerville on the moors, exploring the legend of a supernatural hound that haunts the Baskerville family.',
    category: Category.find_by(name: 'Policier'),
    thumbnail: "https://image.isu.pub/150720110926-e87296210601b5f1b48d46688d405874/jpg/page_1.jpg"
  },
  { title: 'In the Woods',
    author: 'Tana French',
    number_of_pages: 464,
    publishing_date: '2007-08-21',
    description: "Detective Rob Ryan investigates a child's murder in a small Irish town, where he finds eerie connections to his own childhood and a haunting mystery that intertwines past and present.",
    category: Category.find_by(name: 'Policier'),
    thumbnail: "https://i0.wp.com/cleanlit.com/wp-content/uploads/2017/02/intheWoods.jpg?fit=309%2C500&ssl=1"
  },
  { title: 'Gone Girl',
    author: 'Gillian Flynn',
    number_of_pages: 224,
    publishing_date: '2012-06-05',
    description: "In this thriller, Nick Dunne's wife, Amy, goes missing on their fifth wedding anniversary. As Nick becomes the prime suspect, dark secrets about their marriage and personal lives come to light, leading to a shocking conclusion.",
    category: Category.find_by(name: 'Policier'),
    thumbnail: "https://images6.fanpop.com/image/photos/37400000/Gone-Girl-by-Gillian-Flynn-gone-girl-37441442-1181-1810.jpg"
  },
  { title: 'Big Little Lies',
    author: 'Liane Moriarty',
    number_of_pages: 302,
    publishing_date: '2014-07-29',
    description: 'A murder at a school trivia night exposes the seemingly perfect lives of three women and their families, revealing hidden truths and secrets that lead to a suspenseful and dramatic unraveling of events.',
    category: Category.find_by(name: 'Policier'),
    thumbnail: "https://urbanmoms.ca/wp-content/uploads/2015/01/Big-Little-Lies-By-Liane-Moriarty.jpg"
  },
  { title: 'The Girl with the Dragon Tattoo',
    author: 'Stieg Larsson',
    number_of_pages: 465,
    publishing_date: '2015-08-01',
    description: 'A journalist and a hacker team up to solve a decades-old disappearance of a young woman from a wealthy family, uncovering dark family secrets and corruption in a gripping crime mystery.',
    category: Category.find_by(name: 'Policier'),
    thumbnail: "http://img2.imagesbn.com/p/9780307473479_p0_v1_s260x420.JPG"
  },

  # Thriller
  { title: 'Before I Go to Sleep',
    author: 'S.J. Watson',
    number_of_pages: 236,
    publishing_date: '2009-06-14',
    description: "Christine Lucas suffers from amnesia and wakes up every day with no memory of her past. Her struggle to piece together her life and uncover the truth about her husband's intentions leads to shocking revelations.",
    category: Category.find_by(name: 'Thriller'),
    thumbnail: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1562541166l/11307743.jpg"
  },
  { title: 'Shutter Island',
    author: 'Dennis Lehane',
    number_of_pages: 368,
    publishing_date: '2003-02-15',
    description: 'U.S. Marshal Teddy Daniels investigates the disappearance of a patient from a mental institution on a remote island, uncovering disturbing truths about the facility and his own past.',
    category: Category.find_by(name: 'Thriller'),
    thumbnail: "https://imgv2-1-f.scribdassets.com/img/word_document/163630249/original/30e9c4168c/1584501931?v=1"
  },
  { title: 'The Silence of the Lambs',
    author: 'Thomas Harris',
    number_of_pages: 418,
    publishing_date: '1988-08-01',
    description: 'FBI trainee Clarice Starling seeks the help of imprisoned cannibalistic serial killer Dr. Hannibal Lecter to catch another serial killer who skins his victims, leading to a psychological cat-and-mouse game.',
    category: Category.find_by(name: 'Thriller'),
    thumbnail: "https://cdn2.penguin.com.au/covers/400/9780099532927.jpg"
  },
  { title: 'Gone Girl',
    author: 'Gillian Flynn',
    number_of_pages: 238,
    publishing_date: '2012-06-05',
    description: 'On their fifth wedding anniversary, Amy Dunne goes missing, and her husband Nick becomes the prime suspect. As the investigation unfolds, a complex web of lies, manipulations, and dark secrets emerges.',
    category: Category.find_by(name: 'Thriller'),
    thumbnail: "https://images6.fanpop.com/image/photos/37400000/Gone-Girl-by-Gillian-Flynn-gone-girl-37441442-1181-1810.jpg"
  },
  { title: 'The Girl on the Train',
    author: 'Paula Hawkins',
    number_of_pages: 325,
    publishing_date: '2015-01-13',
    description: 'Rachel Watson, an alcoholic, becomes entangled in a missing person case after witnessing something suspicious during her daily train ride. Her involvement leads to a tense unraveling of truth and deceit.',
    category: Category.find_by(name: 'Thriller'),
    thumbnail: "https://www.bibdsl.co.uk/imagegallery2/bds/201618/9780552779777.JPG"
  },
  { title: 'The Woman in the Window',
    author: 'A.J. Finn',
    number_of_pages: 429,
    publishing_date: '2018-01-02',
    description: 'Agoraphobic Anna Fox spies on her neighbors and becomes convinced she has witnessed a crime, leading her into a maze of deception and danger as she uncovers the truth behind her suspicions.',
    category: Category.find_by(name: 'Thriller'),
    thumbnail: "https://gumlet.assettype.com/freepressjournal%2Fimport%2F2019%2F02%2FW_end_Feb3_pg6_3.jpg?w=1200"
  },

  # Historique
  { title: 'Atonement',
    author: 'Ian McEwan',
    number_of_pages: 235,
    publishing_date: '2001-09-21',
    description: 'This novel delves into the consequences of a false accusation made by a young girl during World War II and its impact on the lives of those involved, spanning decades of regret and reconciliation.',
    category: Category.find_by(name: 'Historique'),
    thumbnail: "https://bilder.buecher.de/produkte/10/10404/10404677z.jpg"
  },
  { title: 'The Book Thief',
    author: 'Markus Zusak',
    number_of_pages: 367,
    publishing_date: '2005-03-14',
    description: 'Narrated by Death, this story is set in Nazi Germany and follows a young girl named Liesel who steals books to escape the horrors of war and to share them with others, providing hope in dark times.',
    category: Category.find_by(name: 'Historique'),
    thumbnail: "https://cdn.dc5.ro/img-prod/1048949-1.jpeg"
  },
  { title: 'All the Light We Cannot See',
    author: 'Anthony Doerr',
    number_of_pages: 531,
    publishing_date: '2007-05-06',
    description: 'Set during World War II, this novel follows a blind French girl and a German boy whose paths converge amidst the chaos of war. Their stories are woven together in a poignant narrative of resilience and survival.',
    category: Category.find_by(name: 'Historique'),
    thumbnail: "https://images.thenile.io/r1000/9781410470225.jpg"
  },
  { title: 'The Nightingale',
    author: 'Kristin Hannah',
    number_of_pages: 234,
    publishing_date: '2015-02-03',
    description: 'Two sisters in France struggle to survive and resist during World War II. The novel explores themes of love, sacrifice, and the indomitable spirit of women amidst the backdrop of war.',
    category: Category.find_by(name: 'Historique'),
    thumbnail: "https://ik.imagekit.io/panmac/tr:di-placeholder_portrait_aMjPtD9YZ.jpg,tr:w-350,f-jpg,pr-true/edition/9781509898411.jpg"
  },
  { title: 'The Paris Library',
    author: 'Janet Skeslien Charles',
    number_of_pages: 368,
    publishing_date: '2021-02-09',
    description: 'Based on the true story of the American Library in Paris, this novel intertwines the experiences of a young librarian during World War II with those of a present-day woman seeking her own truths.',
    category: Category.find_by(name: 'Historique'),
    thumbnail: "https://english.mathrubhumi.com/image/contentid/policy:1.5559776:1644472579/image.jpg?$p=0f6e831&&q=0.8"
  },
  { title: 'The Alice Network',
    author: 'Kate Quinn',
    number_of_pages: 528,
    publishing_date: '2017-06-06',
    description: 'A historical novel about a female spy network during World War I and a post-war search for a missing relative. The intertwined stories reveal bravery, betrayal, and the quest for redemption.',
    category: Category.find_by(name: 'Historique'),
    thumbnail: "https://www.katequinnauthor.com/wp-content/uploads/2018/01/NYT-TAN-Cover.jpg"
  },

  # Science-fiction
  { title: 'Neuromancer',
    author: 'William Gibson',
    number_of_pages: 241,
    publishing_date: '1984-07-01',
    description: 'A seminal work of cyberpunk, this novel follows Case, a washed-up computer hacker hired for one last job, as he navigates a dystopian future of artificial intelligence and corporate intrigue.',
    category: Category.find_by(name: 'Science-fiction'),
    thumbnail: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg_v1PJ5OrvOEwGj5KjcLDbWWJyJdQR6q87Yz-UZxpBmFKdDxMoB5gt7Y0WgU8wMUO4TdhVly-t6OgZXBQsUzWJfF0_C829Fq6NWcGMocEq51K9hFtIwey_jsc8daQfblU5NZjx2ZVZmP8onlE1mVzBR4AHNqCB10lWupJe9gPflq45kAPrDrkQQYlG/s2475/Neuromancer%20by%20William%20Gibson.jpg"
  },
  { title: "Ender's Game",
    author: 'Orson Scott Card',
    number_of_pages: 324,
    publishing_date: '1985-01-15',
    description: "Young Ender Wiggin is recruited into a prestigious military academy to prepare for an interstellar war against an alien species. His strategic genius becomes key to humanity's survival.",
    category: Category.find_by(name: 'Science-fiction'),
    thumbnail: "https://archeddoorway.com/wp-content/uploads/2017/11/Enders-Game-Cover.jpg"
  },
  { title: 'Dune',
    author: 'Frank Herbert',
    number_of_pages: 412,
    publishing_date: '1965-08-01',
    description: 'Set in a distant future amidst a sprawling interstellar empire, the novel follows Paul Atreides as he navigates political intrigue, ecological challenges, and the mystical spice melange on the desert planet of Arrakis.',
    category: Category.find_by(name: 'Science-fiction'),
    thumbnail: "https://www.publishersweekly.com/images/data/ARTICLE_PHOTO/photo/000/075/75659-1.JPG"
  },
  { title: 'Foundation',
    author: 'Isaac Asimov',
    number_of_pages: 236,
    publishing_date: '2014-06-01',
    description: "The novel explores the rise and fall of a galactic empire through the efforts of Hari Seldon, a mathematician who predicts the empire's collapse and seeks to preserve knowledge and civilization.",
    category: Category.find_by(name: 'Science-fiction'),
    thumbnail: "https://prodimage.images-bn.com/pimages/9780553382570_p0_v1_s1200x630.jpg"
  },
  { title: 'Snow Crash',
    author: 'Neal Stephenson',
    number_of_pages: 337,
    publishing_date: '2011-06-01',
    description: 'In a fractured future America, hacker and pizza delivery driver Hiro Protagonist uncovers a virtual reality drug that threatens to unravel the fabric of society and disrupt the real world.',
    category: Category.find_by(name: 'Science-fiction'),
    thumbnail: "https://images.thenile.io/r1000/9780241953181.jpg"
  },
  { title: 'Hyperion',
    author: 'Dan Simmons',
    number_of_pages: 482,
    publishing_date: '2013-05-01',
    description: 'In a future where humanity spans the galaxy, seven pilgrims journey to the distant world of Hyperion, each with their own story that reveals a larger mystery involving a powerful, enigmatic being.',
    category: Category.find_by(name: 'Science-fiction'),
    thumbnail: "https://hachette.imgix.net/books/9780575076372.jpg?auto=compress,format"
  },

    # Fantastique
  { title: 'The Chronicles of Narnia: The Lion, the Witch and the Wardrobe',
    author: 'C.S. Lewis',
    number_of_pages: 206,
    publishing_date: '1950-10-16',
    description: 'Four siblings discover the magical land of Narnia through a wardrobe and join the struggle against the White Witch, with the help of the great lion Aslan, to restore peace and order to the land.',
    category: Category.find_by(name: 'Fantastique'),
    thumbnail: "https://www.booksfortopics.com/wp-content/uploads/the-chronicles-of-narnia-the-lion-the-witch-and-the-wardrobe.jpeg"
  },
  { title: 'The Hobbit',
    author: 'J.R.R. Tolkien',
    number_of_pages: 310,
    publishing_date: '1937-09-21',
    description: 'Bilbo Baggins, a hobbit, embarks on an unexpected adventure to help a group of dwarves reclaim their homeland from the dragon Smaug. This fantasy tale is rich with imaginative creatures and epic quests.',
    category: Category.find_by(name: 'Fantastique'),
    thumbnail: "https://images.thenile.io/r1000/9780261103283.jpg"
  },
  { title: "Harry Potter and the Sorcerer's Stone",
    author: 'J.K. Rowling',
    number_of_pages: 409,
    publishing_date: '1997-06-26',
    description: 'Harry Potter discovers he is a wizard on his eleventh birthday and begins his journey at Hogwarts School of Witchcraft and Wizardry, where he learns about his past and battles dark forces.',
    category: Category.find_by(name: 'Fantastique'),
    thumbnail: "https://i.pinimg.com/originals/1b/2b/fa/1b2bfa193ec0b2e72af49991ea0aff1a.jpg"
  },
  { title: 'The Name of the Wind',
    author: 'Patrick Rothfuss',
    number_of_pages: 248,
    publishing_date: '2011-03-27',
    description: 'Kvothe, a gifted young man, recounts his life story from his humble beginnings to his rise as a legendary figure. This epic fantasy tale features a rich world, magic, and the quest for knowledge and revenge.',
    category: Category.find_by(name: 'Fantastique'),
    thumbnail: "https://i0.wp.com/www.attackofthebooks.com/wp-content/uploads/2017/04/The_Name_of_the_Wind_UK_cover.jpg?fit=1666%2C2560&ssl=1"
  },
  { title: 'Mistborn: The Final Empire',
    author: 'Brandon Sanderson',
    number_of_pages: 398,
    publishing_date: '2012-07-17',
    description: 'In a world where ash falls from the sky and mist dominates the night, a young street urchin discovers she has magical abilities and joins a group of rebels to overthrow a tyrannical ruler.',
    category: Category.find_by(name: 'Fantastique'),
    thumbnail: "https://i.pinimg.com/originals/15/fd/c7/15fdc740111f66176fba6e4213c3b32d.jpg"
  },
  { title: 'American Gods',
    author: 'Neil Gaiman',
    number_of_pages: 465,
    publishing_date: '2013-06-19',
    description: 'Shadow Moon, a recently released convict, becomes embroiled in a conflict between old gods and new deities in a modern America. The novel blends mythology with contemporary issues in a unique and engaging narrative.',
    category: Category.find_by(name: 'Fantastique'),
    thumbnail: "https://hachette.imgix.net/books/9780755322817.jpg?auto=compress,format"
  },

  # Fantasy
  { title: 'A Game of Thrones',
    author: 'George R.R. Martin',
    number_of_pages: 248,
    publishing_date: '1996-08-06',
    description: 'In the Seven Kingdoms of Westeros, noble families vie for control of the Iron Throne amidst political intrigue, war, and ancient threats. This epic fantasy series features complex characters and a richly detailed world.',
    category: Category.find_by(name: 'Fantasy'),
    thumbnail: "https://images.thenile.io/r1000/9780007459483.jpg"
  },
  { title: 'The Lies of Locke Lamora',
    author: 'Scott Lynch',
    number_of_pages: 385,
    publishing_date: '2006-06-27',
    description: 'In the city of Camorr, a group of thieves led by Locke Lamora pulls off elaborate heists while navigating dangerous rivalries and political machinations in this inventive and richly detailed fantasy.',
    category: Category.find_by(name: 'Fantasy'),
    thumbnail: "https://cdn.kobo.com/book-images/1f764b58-b9c4-415b-a456-e80720ae155d/353/569/90/False/the-lies-of-locke-lamora-1.jpg"
  },
  { title: 'The Name of the Wind',
    author: 'Patrick Rothfuss',
    number_of_pages: 662,
    publishing_date: '2007-03-27',
    description: 'Kvothe, a gifted young man, recounts his life story from his humble beginnings to his rise as a legendary figure. This epic fantasy tale features a rich world, magic, and the quest for knowledge and revenge.',
    category: Category.find_by(name: 'Fantasy'),
    thumbnail: "https://i0.wp.com/www.attackofthebooks.com/wp-content/uploads/2017/04/The_Name_of_the_Wind_UK_cover.jpg?fit=1666%2C2560&ssl=1"
  },
  { title: 'The Black Prism',
    author: 'Brent Weeks',
    number_of_pages: 246,
    publishing_date: '2010-08-24',
    description: 'In a world where magic is derived from light and color, a powerful figure known as the Prism must navigate political intrigue and impending war while uncovering deep secrets that could alter the course of history.',
    category: Category.find_by(name: 'Fantasy'),
    thumbnail: "https://prodimage.images-bn.com/pimages/9780316087544_p0_v11_s1200x630.jpg"
  },
  { title: 'The Priory of the Orange Tree',
    author: 'Samantha Shannon',
    number_of_pages: 398,
    publishing_date: '2019-02-26',
    description: 'A standalone epic fantasy novel featuring a diverse cast of characters, including a dragon rider, a sorceress, and a queen, as they confront an ancient evil threatening their world.',
    category: Category.find_by(name: 'Fantasy'),
    thumbnail: "https://www.book.store.bg/lrgimg/251374/the-priory-of-the-orange-tree.jpg"
  },
  { title: 'The Way of Kings',
    author: 'Brandon Sanderson',
    number_of_pages: 1007,
    publishing_date: '2010-08-31',
    description: 'In a world torn by storms and war, multiple characters face personal trials and grand destinies. The novel introduces a complex world with deep magic systems, political intrigue, and epic battles.',
    category: Category.find_by(name: 'Fantasy'),
    thumbnail: "https://mpd-biblio-covers.imgix.net/9780765376671.jpg"
  },

  # Romance
  { title: 'Pride and Prejudice',
    author: 'Jane Austen',
    number_of_pages: 249,
    publishing_date: '1813-01-28',
    description: 'This classic novel explores the turbulent relationship between Elizabeth Bennet and Mr. Darcy, set against the backdrop of early 19th-century England. Themes of love, class, and social expectations are richly examined.',
    category: Category.find_by(name: 'Romance'),
    thumbnail: "https://m.media-amazon.com/images/I/61vrbLFc8oL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Outlander',
    author: 'Diana Gabaldon',
    number_of_pages: 397,
    publishing_date: '1991-06-01',
    description: 'A World War II nurse is mysteriously transported back to 18th-century Scotland, where she falls in love with a Highland warrior. The novel combines historical fiction with a passionate love story and time travel.',
    category: Category.find_by(name: 'Romance'),
    thumbnail: "https://m.media-amazon.com/images/I/71omNKSfqEL._AC_UF1000,1000_QL80_.jpg"
   },
  { title: 'Jane Eyre',
    author: 'Charlotte Brontë',
    number_of_pages: 500,
    publishing_date: '1847-10-16',
    description: 'The novel follows the life of Jane Eyre, an orphan who becomes a governess and falls in love with her employer, Mr. Rochester. The story explores themes of love, morality, and social criticism in 19th-century England.',
    category: Category.find_by(name: 'Romance'),
    thumbnail: "https://m.media-amazon.com/images/I/91zU70Aw9IS._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Rosie Project',
    author: 'Graeme Simsion',
    number_of_pages: 244,
    publishing_date: '2013-10-01',
    description: "Professor Don Tillman, a genetics professor with Asperger's syndrome, creates a scientific survey to find a wife, only to have his plans derailed by a free-spirited woman named Rosie, who challenges his preconceived notions of love.",
    category: Category.find_by(name: 'Romance'),
    thumbnail: "https://m.media-amazon.com/images/I/71zbZ+vTjQL._AC_UF1000,1000_QL80_.jpg"
   },
  { title: 'Me Before You',
    author: 'Jojo Moyes',
    number_of_pages: 369,
    publishing_date: '2012-01-01',
    description: 'Louisa Clark becomes the caregiver for a man who is paralyzed and struggling with his own plans for the future. Their relationship grows in unexpected ways, leading to a moving and transformative romance.',
    category: Category.find_by(name: 'Romance'),
    thumbnail: "https://m.media-amazon.com/images/I/71+YK9HSaJL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Notebook',
    author: 'Nicholas Sparks',
    number_of_pages: 444,
    publishing_date: '2010-10-01',
    description: 'A touching story of Noah and Allie, whose love story unfolds through their letters and memories. Their relationship is tested by time, social expectations, and personal struggles, making for an emotionally charged romance.',
    category: Category.find_by(name: 'Romance'),
    thumbnail: "https://m.media-amazon.com/images/I/81qh61Wsb6L._AC_UF1000,1000_QL80_.jpg"
  },

  # Horreur
  { title: 'Frankenstein',
    author: 'Mary Shelley',
    number_of_pages: 240,
    publishing_date: '1818-01-01',
    description: 'Victor Frankenstein creates a sentient creature through scientific experiments, only to face the consequences of his actions as the creature seeks revenge for its mistreatment, exploring themes of creation and responsibility.',
    category: Category.find_by(name: 'Horreur'),
    thumbnail: "https://m.media-amazon.com/images/I/81z7E0uWdtL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Shining',
    author: 'Stephen King',
    number_of_pages: 347,
    publishing_date: '1977-01-28',
    description: "Jack Torrance takes a job as the winter caretaker of the isolated Overlook Hotel, bringing his family along. As the hotel's malevolent influence begins to affect Jack, his family is caught in a terrifying struggle for survival.",
    category: Category.find_by(name: 'Horreur'),
    thumbnail: "https://m.media-amazon.com/images/I/619OiTawH0L._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Dracula',
    author: 'Bram Stoker',
    number_of_pages: 418,
    publishing_date: '1897-05-26',
    description: "Count Dracula's attempt to move from Transylvania to England in search of new blood sets off a confrontation with a group of people led by Professor Abraham Van Helsing, who fight to stop the vampire's reign of terror.",
    category: Category.find_by(name: 'Horreur'),
    thumbnail: "https://m.media-amazon.com/images/I/71xcDXkr1OL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Haunting of Hill House',
    author: 'Shirley Jackson',
    number_of_pages: 246,
    publishing_date: '2010-10-16',
    description: 'A group of people investigates the supposedly haunted Hill House. As strange and disturbing occurrences unfold, the psychological tension and fear of the house itself create a gripping and eerie narrative.',
    category: Category.find_by(name: 'Horreur'),
    thumbnail: "https://m.media-amazon.com/images/I/71p0Vkd6XlL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Bird Box',
    author: 'Josh Malerman',
    number_of_pages: 275,
    publishing_date: '2014-05-13',
    description: 'In a post-apocalyptic world where creatures cause people to go insane if seen, Malorie must navigate through a dangerous environment with her two children while blindfolded to avoid deadly encounters.',
    category: Category.find_by(name: 'Horreur'),
    thumbnail: "https://m.media-amazon.com/images/I/91jBfwPCeKL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Pet Sematary',
    author: 'Stephen King',
    number_of_pages: 473,
    publishing_date: '2011-11-14',
    description: 'Louis Creed moves his family to a rural town and discovers a burial ground with the power to bring dead things back to life. When tragedy strikes, he faces the terrifying consequences of using this dark power.',
    category: Category.find_by(name: 'Horreur'),
    thumbnail: "https://m.media-amazon.com/images/I/8121t3UCB8L._AC_UF1000,1000_QL80_.jpg"
  },

  # Aventure
  { title: 'Treasure Island',
    author: 'Robert Louis Stevenson',
    number_of_pages: 240,
    publishing_date: '1883-11-14',
    description: 'The classic tale of young Jim Hawkins who discovers a treasure map and embarks on a perilous sea voyage in search of hidden treasure, facing pirates and mutiny along the way.',
    category: Category.find_by(name: 'Aventure'),
    thumbnail: "https://cdn.kobo.com/book-images/08bb082e-e9d4-492e-b2ae-ee04233dbc33/1200/1200/False/treasure-island-450.jpg"
  },
  { title: 'Robinson Crusoe',
    author: 'Daniel Defoe',
    number_of_pages: 320,
    publishing_date: '1719-04-25',
    description: "Robinson Crusoe's journey of survival on a deserted island is a testament to human ingenuity and perseverance. He faces numerous challenges and learns about himself while isolated from society.",
    category: Category.find_by(name: 'Aventure'),
    thumbnail: "https://cdn.kobo.com/book-images/51b8f927-0184-48ce-8bd1-c29db15e9ce0/1200/1200/False/robinson-crusoe-456.jpg"
  },
  { title: 'The Three Musketeers',
    author: 'Alexandre Dumas',
    number_of_pages: 416,
    publishing_date: '1844-03-01',
    description: "Young d'Artagnan joins the musketeers of the guard and embarks on a series of daring adventures with his comrades Athos, Porthos, and Aramis, filled with political intrigue and sword fights in 17th-century France.",
    category: Category.find_by(name: 'Aventure'),
    thumbnail: "https://m.media-amazon.com/images/I/91es8r849YL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Journey to the Center of the Earth',
    author: 'Jules Verne',
    number_of_pages: 242,
    publishing_date: '2010-06-25',
    description: "Professor Lidenbrock and his team embark on a daring expedition to the Earth's core through a volcanic crater, discovering a world of prehistoric creatures and hidden wonders in this adventurous classic.",
    category: Category.find_by(name: 'Aventure'),
    thumbnail: "https://m.media-amazon.com/images/I/81TR1ssoUIL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: "King Solomon's Mines",
    author: 'H. Rider Haggard',
    number_of_pages: 339,
    publishing_date: '2011-09-01',
    description: "In search of a legendary diamond mine, Allan Quatermain and his team undertake an epic journey through the unexplored heart of Africa, facing perilous challenges and encountering lost civilizations.",
    category: Category.find_by(name: 'Aventure'),
    thumbnail: "https://cdn.kobo.com/book-images/854c6475-fc25-43bb-a304-6d1f0d4e91aa/1200/1200/False/king-solomon-s-mines-125.jpg"
  },
  { title: 'The Count of Monte Cristo',
    author: 'Alexandre Dumas',
    number_of_pages: 1276,
    publishing_date: '2023-08-28',
    description: 'Edmond Dantès is wrongfully imprisoned and escapes to seek revenge against those who betrayed him. His quest for justice takes him across Europe, revealing themes of vengeance, redemption, and justice.',
    category: Category.find_by(name: 'Aventure'),
    thumbnail: "https://cdn.kobo.com/book-images/20b5525d-668b-43c7-9049-40244fd6a8f9/1200/1200/False/the-count-of-monte-cristo-342.jpg"
  },

  # Comédie
  { title: "The Hitchhiker's Guide to the Galaxy",
    author: 'Douglas Adams',
    number_of_pages: 216,
    publishing_date: '1979-10-12',
    description: 'Arthur Dent, an ordinary human, is whisked away on an intergalactic adventure by an alien friend after Earth is destroyed. This satirical science fiction novel combines absurdity and wit in a cosmic journey.',
    category: Category.find_by(name: 'Comédie'),
    thumbnail: "https://m.media-amazon.com/images/I/51vfuNNWMTS.jpg"
  },
  { title: 'Good Omens',
    author: 'Neil Gaiman and Terry Pratchett',
    number_of_pages: 288,
    publishing_date: '1990-05-01',
    description: 'An angel and a demon team up to prevent the apocalypse after realizing they have become too fond of Earth. This comedic take on end-times scenarios blends humor with fantasy and satire.',
    category: Category.find_by(name: 'Comédie'),
    thumbnail: "https://m.media-amazon.com/images/I/81E+wwGBhWL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: "Bridget Jones's Diary",
    author: 'Helen Fielding',
    number_of_pages: 441,
    publishing_date: '1996-01-01',
    description: 'The humorous and often self-deprecating diary entries of Bridget Jones as she navigates her love life, career, and personal growth in a modern London setting, filled with relatable and comedic situations.',
    category: Category.find_by(name: 'Comédie'),
    thumbnail: "https://m.media-amazon.com/images/I/81tMODYOdCL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Princess Bride',
    author: 'William Goldman',
    number_of_pages: 236,
    publishing_date: '2013-04-01',
    description: 'A delightful fairy tale with romance, adventure, and comedy, following the quest of a young woman and her true love, who must rescue her from an evil prince. The story is filled with memorable characters and witty dialogue.',
    category: Category.find_by(name: 'Comédie'),
    thumbnail: "https://m.media-amazon.com/images/I/518KYVLJatL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Catch-22',
    author: 'Joseph Heller',
    number_of_pages: 353,
    publishing_date: '2017-11-10',
    description: 'Set during World War II, this novel follows Captain John Yossarian and his fellow soldiers as they navigate the absurdities of war and bureaucracy. Its dark humor and satirical style highlight the paradoxes of military life.',
    category: Category.find_by(name: 'Comédie'),
    thumbnail: "https://m.media-amazon.com/images/I/71Ym0vDDWsL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'A Confederacy of Dunces',
    author: 'John Kennedy Toole',
    number_of_pages: 405,
    publishing_date: '2015-03-01',
    description: "Ignatius J. Reilly's comically disastrous attempts to find purpose and employment in New Orleans result in a series of humorous and absurd encounters. The novel is a rich satire of social and cultural norms.",
    category: Category.find_by(name: 'Comédie'),
    thumbnail: "https://m.media-amazon.com/images/I/71e62bAUrKL._AC_UF1000,1000_QL80_.jpg"
  },

  # Drame
  { title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    number_of_pages: 180,
    publishing_date: '1925-04-10',
    description: "Set in the Jazz Age, the novel follows Jay Gatsby's quest to win back his lost love, Daisy Buchanan, amidst a world of wealth, excess, and moral decay. The story critiques the American Dream and societal values.",
    category: Category.find_by(name: 'Drame'),
    thumbnail: "https://m.media-amazon.com/images/I/81QuEGw8VPL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    number_of_pages: 281,
    publishing_date: '1960-07-11',
    description: 'In a racially charged Southern town, young Scout Finch witnesses her father, Atticus Finch, defend a black man accused of rape. The novel addresses issues of racial injustice and moral growth through the eyes of a child.',
    category: Category.find_by(name: 'Drame'),
    thumbnail: "https://m.media-amazon.com/images/I/71FxgtFKcQL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Beloved',
    author: 'Toni Morrison',
    number_of_pages: 424,
    publishing_date: '1987-09-16',
    description: 'Set after the American Civil War, the novel follows Sethe, an escaped slave, and her struggles with her past and the ghost of her deceased daughter. It explores themes of slavery, motherhood, and trauma.',
    category: Category.find_by(name: 'Drame'),
    thumbnail: "https://m.media-amazon.com/images/I/51Qj9kPD4CL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Road',
    author: 'Cormac McCarthy',
    number_of_pages: 237,
    publishing_date: '2016-09-26',
    description: 'In a post-apocalyptic world, a father and his young son struggle to survive while journeying through a desolate landscape. The novel is a harrowing yet poignant exploration of the bond between parent and child.',
    category: Category.find_by(name: 'Drame'),
    thumbnail: "https://m.media-amazon.com/images/I/51M7XGLQTBL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Bell Jar',
    author: 'Sylvia Plath',
    number_of_pages: 348,
    publishing_date: '2015-01-01',
    description: "The novel follows Esther Greenwood's struggle with mental illness and her experiences with depression and institutionalization. It provides a powerful commentary on societal expectations and personal despair.",
    category: Category.find_by(name: 'Drame'),
    thumbnail: "https://m.media-amazon.com/images/I/81wUVpREPSL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Lovely Bones',
    author: 'Alice Sebold',
    number_of_pages: 428,
    publishing_date: '2022-09-23',
    description: 'After being murdered, 14-year-old Susie Salmon narrates from her own personal heaven as she watches over her family and her killer. The novel deals with themes of loss, grief, and healing from a unique perspective.',
    category: Category.find_by(name: 'Drame'),
    thumbnail: "https://m.media-amazon.com/images/I/61OJ7ndDDUL._AC_UF1000,1000_QL80_.jpg"
  },

  # Autobiographique
  { title: 'The Glass Castle', author: 'Jeannette Walls',
    number_of_pages: 238, publishing_date: '2005-01-17',
    description: 'Jeannette Walls recounts her unconventional and often difficult upbringing with her eccentric parents. The memoir is a powerful story of resilience and the complex dynamics of family life.',
    category: Category.find_by(name: 'Autobiographique'),
    thumbnail: "https://m.media-amazon.com/images/I/71td5GDUZML._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'The Diary of a Young Girl', author: 'Anne Frank',
    number_of_pages: 283, publishing_date: '1947-06-25',
    description: 'The poignant diary entries of Anne Frank, a Jewish girl hiding from the Nazis during World War II. Her reflections on life, fear, and hope offer a powerful and personal perspective on the horrors of the Holocaust.',
    category: Category.find_by(name: 'Autobiographique'),
    thumbnail: "https://m.media-amazon.com/images/I/51Eyjz65gyL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Long Walk to Freedom', author: 'Nelson Mandela',
    number_of_pages: 656, publishing_date: '1994-11-01',
    description: "Nelson Mandela's autobiography details his early life, activism, imprisonment, and eventual release. The book provides an inspiring account of his fight against apartheid and his journey to becoming South Africa's president.",
    category: Category.find_by(name: 'Autobiographique'),
    thumbnail: "https://m.media-amazon.com/images/I/91jMa+ndqrL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'When Breath Becomes Air', author: 'Paul Kalanithi',
    number_of_pages: 228, publishing_date: '2016-01-12',
    description: 'A memoir by neurosurgeon Paul Kalanithi, who reflects on his life and career as he faces terminal cancer. The book offers profound insights into the intersection of medicine, mortality, and the human experience.',
    category: Category.find_by(name: 'Autobiographique'),
    thumbnail: "https://m.media-amazon.com/images/I/61gwba1pQnL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'Educated', author: 'Tara Westover',
    number_of_pages: 334, publishing_date: '2018-02-20',
    description: "Tara Westover's memoir of growing up in a strict and abusive household in rural Idaho. Her pursuit of education against overwhelming odds leads to a journey of self-discovery and transformation.",
    category: Category.find_by(name: 'Autobiographique'),
    thumbnail: "https://m.media-amazon.com/images/I/71-4MkLN5jL._AC_UF1000,1000_QL80_.jpg"
  },
  { title: 'I Am Malala', author: 'Malala Yousafzai',
    number_of_pages: 468, publishing_date: '2013-10-08',
    description: "Malala Yousafzai's memoir details her advocacy for girls' education in Pakistan and her survival of a Taliban assassination attempt. Her story is a powerful testament to the courage and resilience of young people fighting for their rights.",
    category: Category.find_by(name: 'Autobiographique'),
    thumbnail: "https://cdn.kobo.com/book-images/05f0be7a-5106-4bcd-b192-087750f081f8/1200/1200/False/i-am-malala.jpg"
  }
]

books.each do |book_data|
  Book.create!(book_data)
end

Favorite.create(user: user2, book: Book.find(Book.pluck(:id).sample), read: false)
Favorite.create(user: user1, book: Book.find(Book.pluck(:id).sample), read: false)
Favorite.create(user: user3, book: Book.find(Book.pluck(:id).sample), read: true)
Favorite.create(user: user4, book: Book.find(Book.pluck(:id).sample), read: true)
Favorite.create(user: user1, book: Book.find(Book.pluck(:id).sample), read: true)
Favorite.create(user: user1, book: Book.find(Book.pluck(:id).sample), read: false)
Favorite.create(user: user2, book: Book.find(Book.pluck(:id).sample), read: false)
Favorite.create(user: user5, book: Book.find_by(title: "Educated"), read: true)
Favorite.create(user: user5, book: Book.find_by(title: "The Three Musketeers"), read: true)
Favorite.create(user: user5, book: Book.find_by(title: "A Confederacy of Dunces"), read: true)
Favorite.create(user: user5, book: Book.find_by(title: "The Lies of Locke Lamora"), read: false)
Favorite.create(user: user5, book: Book.find_by(title: "The Book Thief"), read: false)
Favorite.create(user: user5, book: Book.find_by(title: "In the Woods"), read: false)
Favorite.create(user: user5, book: Book.find_by(title: "Hyperion"), read: false)
Favorite.create(user: user5, book: Book.find_by(title: "The Woman in the Window"), read: false)
Favorite.create(user: user5, book: Book.find_by(title: "Good Omens"), read: true)
Favorite.create(user: user5, book: Book.find_by(title: "The Notebook"), read: false)
Favorite.create(user: user5, book: Book.find_by(title: "Frankenstein"), read: false)

Favorite.create(user: user6, book: Book.find_by(title: "Educated"), read: true)
Favorite.create(user: user6, book: Book.find_by(title: "The Three Musketeers"), read: true)
Favorite.create(user: user6, book: Book.find_by(title: "A Confederacy of Dunces"), read: true)
Favorite.create(user: user6, book: Book.find_by(title: "The Lies of Locke Lamora"), read: false)
Favorite.create(user: user6, book: Book.find_by(title: "The Book Thief"), read: false)
Favorite.create(user: user6, book: Book.find_by(title: "In the Woods"), read: false)
Favorite.create(user: user6, book: Book.find_by(title: "Hyperion"), read: false)
Favorite.create(user: user6, book: Book.find_by(title: "The Woman in the Window"), read: false)
Favorite.create(user: user6, book: Book.find_by(title: "Good Omens"), read: true)
Favorite.create(user: user6, book: Book.find_by(title: "The Notebook"), read: false)
Favorite.create(user: user6, book: Book.find_by(title: "Frankenstein"), read: false)

Favorite.create(user: user7, book: Book.find_by(title: "Educated"), read: true)
Favorite.create(user: user7, book: Book.find_by(title: "The Three Musketeers"), read: true)
Favorite.create(user: user7, book: Book.find_by(title: "A Confederacy of Dunces"), read: true)
Favorite.create(user: user7, book: Book.find_by(title: "The Lies of Locke Lamora"), read: false)
Favorite.create(user: user7, book: Book.find_by(title: "The Book Thief"), read: false)
Favorite.create(user: user7, book: Book.find_by(title: "In the Woods"), read: false)
Favorite.create(user: user7, book: Book.find_by(title: "Hyperion"), read: false)
Favorite.create(user: user7, book: Book.find_by(title: "The Woman in the Window"), read: false)
Favorite.create(user: user7, book: Book.find_by(title: "Good Omens"), read: true)
Favorite.create(user: user7, book: Book.find_by(title: "The Notebook"), read: false)
Favorite.create(user: user7, book: Book.find_by(title: "Frankenstein"), read: false)



p Favorite.all

Suggestion.create(user: user1, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user2, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user3, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user4, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user1, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user1, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user2, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "Hyperion"), created_at: "2024-08-29 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "Frankenstein"), created_at: "2024-08-28 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "The Notebook"), created_at: "2024-08-27 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "The Lies of Locke Lamora"), created_at: "2024-08-26 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "The Book Thief"), created_at: "2024-08-25 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "The Woman in the Window"), created_at: "2024-08-24 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "Good Omens"), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "A Confederacy of Dunces"), created_at: "2024-07-18 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "The Three Musketeers"), created_at: "2024-07-17 00:00:00")
Suggestion.create(user: user5, book: Book.find_by(title: "Educated"), created_at: "2024-06-15 00:00:00")

Suggestion.create(user: user6, book: Book.find_by(title: "Hyperion"), created_at: "2024-08-29 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "Frankenstein"), created_at: "2024-08-28 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "The Notebook"), created_at: "2024-08-27 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "The Lies of Locke Lamora"), created_at: "2024-08-26 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "The Book Thief"), created_at: "2024-08-25 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "The Woman in the Window"), created_at: "2024-08-24 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "Good Omens"), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "A Confederacy of Dunces"), created_at: "2024-07-18 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "The Three Musketeers"), created_at: "2024-07-17 00:00:00")
Suggestion.create(user: user6, book: Book.find_by(title: "Educated"), created_at: "2024-06-15 00:00:00")

Suggestion.create(user: user7, book: Book.find_by(title: "Hyperion"), created_at: "2024-08-29 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "Frankenstein"), created_at: "2024-08-28 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "The Notebook"), created_at: "2024-08-27 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "The Lies of Locke Lamora"), created_at: "2024-08-26 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "The Book Thief"), created_at: "2024-08-25 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "The Woman in the Window"), created_at: "2024-08-24 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "Good Omens"), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "A Confederacy of Dunces"), created_at: "2024-07-18 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "The Three Musketeers"), created_at: "2024-07-17 00:00:00")
Suggestion.create(user: user7, book: Book.find_by(title: "Educated"), created_at: "2024-06-15 00:00:00")


p Suggestion.all

p "db created"
