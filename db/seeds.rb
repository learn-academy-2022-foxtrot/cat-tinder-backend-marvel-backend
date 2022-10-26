# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

characters = [
    {
        name: 'Wolverine',
        age: 46,
        enjoys: 'Beer and not shaving',
        image:'https://upload.wikimedia.org/wikipedia/commons/9/9e/Wolverine_%287343567212%29.jpg'
    },
    {
        name: 'Captian America',
        age: 99,
        enjoys: 'Art and RED BLUE AND WHITE',
        image:'https://www.google.com/search?q=captain+america+shirtless&tbm=isch&ved=2ahUKEwjI9Krp9_n6AhUIho4IHX9CD5EQ2-cCegQIABAA&oq=captain+america+shirtless&gs_lcp=CgNpbWcQAzIFCAAQgAQyBAgAEB4yBggAEAUQHjIGCAAQBRAeMgYIABAFEB4yBggAEAUQHjIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeOgQIIxAnOgQIABBDOggIABCABBCxA1D2CliMF2CLGGgAcAB4AIABWIgB7gWSAQIxMJgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=ihRXY8iHEIiMuvQP_4S9iAk&bih=1218&biw=1102#imgrc=RLVtkb4QrBc6IM'
    },
    {
        name: 'Storm',
        age: 32,
        enjoys: 'Beer and not shaving',
        image:'https://upload.wikimedia.org/wikipedia/commons/9/9e/Wolverine_%287343567212%29.jpg'
    },
    {
    name: 'Bruce Banner',
    age: 35,
    enjoys: 'Not getting angry, flowers, and rainbows',
    image: 'https://images6.fanpop.com/image/photos/38300000/-Hulk-the-avengers-38357180-2560-1600.jpg'
  },
  {
    name: 'Black Widow',
    age: 25,
    enjoys: 'Food mostly, really just food.',
    image: 'https://media1.popsugar-assets.com/files/thumbor/n5chU20-LUQ9gqBRQl1fhSGkrCA/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/04/26/770/n/1922153/0647d64a6cf394da_MCDAVEN_EC061/i/Black-Widow-Avengers.jpg'
  },
  {
    name: 'Thanos',
    age: 50000,
    enjoys: 'Creating balance in the universe... and domination.. joking.',
    image: 'https://live.staticflickr.com/4778/25890487707_22ae900cef_b.jpg'
  },
   {
    name: 'Lady Thor',
    age: 22,
    enjoys: 'Playing with Electricity',
    image: 'https://live.staticflickr.com/8157/7600568482_9a7596d59e_b.jpg'
  },
  {
    name: 'Loki',
    age: 25000,
    enjoys: 'Being Low-Key...',
    image: 'https://live.staticflickr.com/8015/7331210512_9471c1fd2e_b.jpg'
  },
  {
    name: 'Jean Grey',
    age: 30,
    enjoys: 'Creating balance in the universe... and domination.. joking.',
    image: 'https://www.cosercosplay.com/images/cosplay/X-Men%20Dark%20Phoenix%20Cosplay%20Costume%20Catsuits.jpg'
  }
]

characters.each do |each_character|
    Character.create each_character
    puts "creating character #{each_character}"
  end