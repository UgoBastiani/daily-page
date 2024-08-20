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
  "thebigsleep",
  "thegodfather",
  "gonegirl",
  "thegirlwiththedragontattoo",
  "murderontheorientexpress",
  "thethreemonkeys",
  "thecuckooscalling",
  "inthenickoftime",
  "theprivateeye",
  "thebonecollector"
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
  "thegirlwiththedragontattoo",
  "gonegirl",
  "shutterisland",
  "thesilentpatient",
  "thegirlontherainbow",
  "thegirlonthetrain",
  "thewifebetweenus",
  "beforeigosleep",
  "thecabinpnthewoods",
  "darkplaces",
  "themaidens"
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
  "thebookthief",
  "allthelightwecannotsee",
  "thepianist",
  "lifeandnothingbut",
  "thetudorseries",
  "thehunchbackofnotredame",
  "aurelian",
  "thekingdomofgod"
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
  "snowcrash",
  "foundation",
  "hyperion",
  "endersegame",
  "bravenewworld",
  "thelefthandofdarkness",
  "themoonisaseriousbusiness",
  "doandroidsdreamofelectricsheep",
  "thethreebodyproblem",
  "thedispossessed"
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
  "theblackwitch",
  "theblindingknife",
  "thebonehunters",
  "thedarkestminds",
  "thedemonprince",
  "thedragonlance",
  "thefifthdemon",
  "thefirethief",
  "thegoldencompass",
  "thegreenwitch",
  "thegrimmlegends",
  "thehiddencity",
  "thekingdomsofshadow",
  "thelastkingdom"
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
  "thelordoftherings",
  "harrypotterandthesorcerersstone",
  "thechroniclesofnarnia",
  "thegoldenspy",
  "thewiseones",
  "thedragonbonechair",
  "theeyeoftheworld",
  "theswordofshannara",
  "theprinceofthieves",
  "thesilmarillion",
  "thewheeloffire",
  "thecityofthebeast",
  "thedarktower",
  "thewastelands",
  "thelastunicorn"
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
  "twilight",
  "thekissingquotient",
  "outlander",
  "mebeforeyou",
  "therosecode",
  "thefaultinourstars",
  "gonewiththewind",
  "fiftyshadesofgrey",
  "thebridgertonseries",
  "theweddingdate",
  "redwhiteandroyalblue"
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
  "thestandin",
  "it",
  "theshining",
  "petsematary",
  "carrie",
  "theexorcist",
  "theamityvillehorror",
  "frankenstein",
  "dracula",
  "theturnofthescrew",
  "thehauntingofhillhouse",
  "thegirlnextdoor",
  "americanpsycho",
  "themist"
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
  "thelostworld",
  "julesverne",
  "treasureisland",
  "robinsoncrusoe",
  "theadventuresoftom sawyer",
  "thethree musketeers",
  "kingkong",
  "aroundtheworldineighty days",
  "heartofdarkness",
  "journeytothecenteroftheearth",
  "thecountofmontecristo",
  "moby-dick",
  "thecallofthewild",
  "swissfamilyrobinson"
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
  "prideandprejudice",
  "senseandsensibility",
  "theimportanceofbeingearnest",
  "thecantervilleghost",
  "three menina boat",
  "bridgetjonesdiary",
  "catch22",
  "thehitchhikersguidetothegalaxy",
  "thegrandbudapesthotel",
  "goodomens",
  "thecompleteworkssofwilliamshakespeare",
  "davidcopperfield"
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
  "to kill a mockingbird",
  "the great gatsby",
  "one hundred years of solitude",
  "catcher in the rye",
  "lord of the flies",
  "the road",
  "a streetcar named desire",
  "death of a salesman",
  "the glass menagerie",
  "beloved",
  "the kite runner",
  "atonement"
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
  "the diary of a young girl",
  "long walk to freedom",
  "the story of my experiments with truth",
  "becoming",
  "the glass castle",
  "wild",
  "i know why the caged bird sings",
  "when breath becomes air",
  "education",
  "open"
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
