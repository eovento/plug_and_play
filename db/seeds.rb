# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating categories"
categories = [ "Percussion Instruments", "Guitars", "Keyboards", "Bass", "Brass Instruments", "Orchestral Strings", "Wind & Woodwinds" ]

categories.each do |category|
  category_new = Category.new(name: category)
  category_new.save!
end

puts "Finished!"


puts "Creating Users"
users = [
  {
    email:         "musico@pro.com",
    password:      "12345678",
    first_name:    "Beijamin",
    last_name:     "Arrola"

  },
  {
    email:         "mu@pre.com",
    password:      "9876542",
    first_name:    "Mia",
    last_name:     "Regazza"
  },
  {
    email:         "casas@pro.com",
    password:      "91919191919",
    first_name:    "Paula",
    last_name:     "Tejano"
  },
  {
    email:         "porar@sdada.com",
    password:      "99993333",
    first_name:    "Oscar",
    last_name:     "Alhos"
  },
  {
    email:         "bad@good.com",
    password:      "909090909",
    first_name:    "Aquino",
    last_name:     "Rego"
  },
  {
    email:         "has@gmail.com",
    password:      "2222222223",
    first_name:    "Tomás",
    last_name:     "Turbano"
  }
]
User.create!(users)
puts "Finished"

puts "Creating Istruments with pictures"
instruments = [
  {
    title:         "Acoustic Guitar",
    description:   "Fine guitar that I inherited from my Spanish grandfather, with mahogany body",
    price:         "100",
    location:      "Rua Major Rubens Vaz, 456, Gávea, Rio de Janeiro, RJ",
    user_id:       "1",
    category_id:   "2",
    photo_url:     "https://upload.wikimedia.org/wikipedia/commons/6/6e/Classical_Guitar_two_views2.png"

  },
  {
    title:         "Fender Stratocaster Guitar",
    description:   "Perfect guitar for rocking the world. I can rent for studio sessions and for concerts",
    price:         "15",
    location:      "Rua Duque Estrada, 42, Gávea, Rio de Janeiro, RJ",
    user_id:       "2",
    category_id:   "2",
    photo_url:     "http://www.fmicassets.com/Damroot/ZoomJpg/10001/0144602580_gtr_frt_001_rr.jpg"
  },
  {
    title:         "Samba Drums",
    description:   "I have the whole set of percussion instruments for a samba bateria",
    price:         "120",
    location:      "Rua Marquês de São Vicente, 42, Gávea, Rio de Janeiro, RJ",
    user_id:       "3",
    category_id:   "1",
    photo_url:     "http://correiorural.com.br/jornalcr/wp-content/uploads/2011/11/instrumentos_2.jpg"
  },
  {
    title:         "Stradivarius Violin",
    description:   "Best violin ever. Renting only for pro classical musicians",
    price:         "5000",
    location:      "Rua da Lapa, 10, Lapa, Rio de Janeiro, RJ",
    user_id:       "4",
    category_id:   "6",
    photo_url:     "http://www.operamundi.com.br/media/images/1024px-Stradivarius_violin,_Palacio_Real,_Madrid.jpg"
  },
  {
    title:         "Korg Keyboard",
    description:   "Keyboard with millions of sounds",
    price:         "70",
    location:      "Rua Casuarina, 15, Itaipava, Petrópolis, RJ",
    user_id:       "5",
    category_id:   "3",
    photo_url:     "https://www.musik-produktiv.co.uk/pic-010081220xxl/korg-pa4x-musikant-76.jpg"
  },
  {
    title:         "Transversal Flute",
    description:   "É a flauta envolvente que meche com a mente",
    price:         "30",
    location:      "Av. Brasil, 100, Bonsucesso, Rio de Janeiro, RJ",
    user_id:       "6",
    category_id:   "7",
    photo_url:     "http://www.lessonsunlimited.com/wp-content/uploads/2015/07/421354-flute.jpg"
  },
  {
    title:         "Caxixi",
    description:   "Beautiful sound",
    price:         "10",
    location:      "Rua Marquês de São Vicente, 42, Gávea, Rio de Janeiro, RJ",
    user_id:       "3",
    category_id:   "1",
    photo_url:     "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Caxixi.jpg/225px-Caxixi.jpg"
  }
]
Instrument.create!(instruments)



puts 'done all!'
