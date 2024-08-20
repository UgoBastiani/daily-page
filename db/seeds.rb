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

category1 = Category.create(
  name: "Policier",
  mood: "Intrigue"
)

category2 = Category.create(
  name: "Thriller",
  mood: "Tension"
)

category3 = Category.create(
  name: "Historique",
  mood: "Nostalgie"
)

category4 = Category.create(
  name: "Science-fiction",
  mood: "Émerveillement"
)

category5 = Category.create(
  name: "Fantastique",
  mood: "Mystere"
)

category6 = Category.create(
  name: "Fantasy",
  mood: "Évasion"
)

category7 = Category.create(
  name: "Romance",
  mood: "Passion"
)

category8 = Category.create(
  name: "Horreur",
  mood: "Terreur"
)

category9 = Category.create(
  name: "Aventure",
  mood: "Excitation"
)

category10 = Category.create(
  name: "Comédie",
  mood: "Amusement"
)

category11 = Category.create(
  name: "Drame",
  mood: "Mélancolie"
)

category12 = Category.create(
  name: "Autobiographique",
  mood: "Inspirant"
)

p Category.all

def fetch_book_details(book_title)
  base_url = "https://www.googleapis.com/books/v1/volumes?q=search:#{book_title}"
  query = URI.open(base_url).read
  response = JSON.parse(query)


  if response['totalItems'] > 0
    book_info = response['items'].first['volumeInfo']

    {
      title: book_info['title'],
      author: book_info['authors'] ? book_info['authors'].join(', ') : 'Auteur inconnu',
      number_of_pages: book_info['pageCount'] || 'Non spécifié',
      publishing_date: book_info['publishedDate'] || 'Non spécifiée',
      description: book_info['description'] || 'Description non disponible',
      thumbnail: book_info['imageLinks'] ? book_info['imageLinks']['thumbnail'] : 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781787550360/classic-book-cover-foiled-journal-9781787550360_hr.jpg'
    }
  else
    nil
  end
end

# Policier

books_police_en = [
  "thegirlwiththedragontattoo",
  "gonegirl",
  "thesilenceofthelambs",
  "biglittlelies",
  "intheremains",
  "thesnowman",
  "thespywhocameinfromthecold",
  "shutterisland",
  "thedaVinciCode",
  "thegodfather"
]

books_police_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category1
    )

    puts "Book created: #{details[:title]}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end


# Thriller

books_thriller_en = [
  "thegirlwithallthegifts",
  "thedavinciCode",
  "thehunger",
  "inthemisofthewar",
  "thewomaninwhite",
  "theroad",
  "thecoupleNextdoor",
  "beforeigotosleep",
  "rebecca",
  "theblackecho"
]



books_thriller_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category2
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Historique

books_historical_en = [
  "allthelightwecannotsee",
  "thebookthief",
  "warandpeace",
  "thepillarsOfTheEarth",
  "wolfhall",
  "thehelp",
  "theotherBoleynGirl",
  "thelighthorseman",
  "beneathascarletsky"
]

books_historical_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category3
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Science-fiction

books_science_fiction_en = [
  "dune",
  "neuromancer",
  "foundation",
  "braveNewWorld",
  "snowcrash",
  "hyperion",
  "thelefthandofdarkness",
  "endersgame",
  "theexhalation",
  "doAndroidsDreamOfElectricSheep"
]


books_science_fiction_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category4
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Fantastique

books_fantastique_en = [
  "theturnofthewheel",
  "thehoundsOfBaskerville",
  "thewhisperinggallery",
  "thehauntingofhillhouse",
  "themonk",
  "thefifthseason",
  "thegoldencompass",
  "swanSong",
  "thedrownedcities"
]

books_fantastique_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category5
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Fantasy

books_fantasy_en = [
  "thehobbit",
  "harrypotterandthesorcerersstone",
  "thelionthewitchandthewardrobe",
  "aGameOfThrones",
  "mistborn",
  "thefinalempire",
  "theNameOfTheWind",
  "goodomens",
  "neverwhere",
  "thecrystalshard"
]

books_fantasy_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category6
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Romance

books_romance_en = [
  "prideandprejudice",
  "janeausten",
  "thenotebook",
  "mebeforeyou",
  "outlander",
  "thekissquotient",
  "theweddingdate",
  "thebridgertonseries",
  "toalltheboysive LovedBefore",
  "beachread"
]

books_romance_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category7
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Horreur

books_horror_en = [
  "theexorcist",
  "it",
  "petsematary",
  "theshining",
  "thesilenceofthelambs",
  "thebabadook",
  "houseofleaves",
  "thecabininthewoods",
  "us",
  "hereditary"
]



books_horror_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category8
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Aventure

books_adventure_en = [
  "treasureisland",
  "journeytothecenteroftheearth",
  "kingkong",
  "thethree Musketeers",
  "robinhood",
  "20,000LeaguesUndertheSea",
  "moby-dick",
  "thecountofmontecristo",
  "thelostworld",
  "theadventuresofhuckleberryfinn",
  "thecallofthewild"
]



books_adventure_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category9
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Comedie

books_comedy_en = [
  "goodomens",
  "thehitchhikersguidetothegalaxy",
  "where'dyougobernadette",
  "bridgetjonessdiary",
  "meandearlandthedyinggirl",
  "crazyrichasians",
  "theimportanceofbeingearnest",
  "theprincessbride",
  "bossypants",
  "letspretendthisneverhappened"
]

books_comedy_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category10
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Drame

books_drama_en = [
  "to Kill a Mockingbird",
  "the Great Gatsby",
  "one Flew Over the Cuckoo's Nest",
  "a Streetcar Named Desire",
  "the Catcher in the Rye",
  "beloved",
  "the Road",
  "life of Pi",
  "atonement",
  "the Color Purple"
]



books_drama_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category11
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

# Autobiographie

books_autobiography_en = [
  "the Diary of a Young Girl",
  "becoming",
  "the Long Walk to Freedom",
  "the Glass Castle",
  "the Story of My Life",
  "wild",
  "steve Jobs",
  "when Breath Becomes Air",
  "the Autobiography of Malcolm X",
  "i Know Why the Caged Bird Sings"
]

books_autobiography_en.each do |book_title|
  details = fetch_book_details(book_title)

  if details
    Book.create!(
      title: details[:title],
      author: details[:author],
      number_of_pages: details[:number_of_pages],
      publishing_date: details[:publishing_date],
      description: details[:description],
      thumbnail: details[:thumbnail],
      category: category12
    )

    puts "Book created: #{book_title}"
  else
    puts "Book '#{book_title}' not found. Skipping..."
  end
end

Favorite.create(user: user2, book: Book.find(Book.pluck(:id).sample), read: false)
Favorite.create(user: user1, book: Book.find(Book.pluck(:id).sample), read: false)
Favorite.create(user: user3, book: Book.find(Book.pluck(:id).sample), read: true)
Favorite.create(user: user4, book: Book.find(Book.pluck(:id).sample), read: true)
Favorite.create(user: user1, book: Book.find(Book.pluck(:id).sample), read: true)
Favorite.create(user: user1, book: Book.find(Book.pluck(:id).sample), read: false)
Favorite.create(user: user2, book: Book.find(Book.pluck(:id).sample), read: false)

p Favorite.all

Suggestion.create(user: user1, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user2, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user3, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user4, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user1, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user1, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")
Suggestion.create(user: user2, book: Book.find(Book.pluck(:id).sample), created_at: "2024-08-20 00:00:00")

p Suggestion.all

p "db created"
