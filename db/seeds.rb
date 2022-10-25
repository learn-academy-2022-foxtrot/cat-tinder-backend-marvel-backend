# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

characters = [
    {
        name: 'Wolverine',
        age: '46',
        enjoys: 'Beer and not shaving',
        image:'https://upload.wikimedia.org/wikipedia/commons/9/9e/Wolverine_%287343567212%29.jpg',
    },
    {
        name: 'Captian America',
        age: '99',
        enjoys: 'Art and RED BLUE AND WHITE',
        image:'https://www.google.com/search?q=captain+america+shirtless&tbm=isch&ved=2ahUKEwjI9Krp9_n6AhUIho4IHX9CD5EQ2-cCegQIABAA&oq=captain+america+shirtless&gs_lcp=CgNpbWcQAzIFCAAQgAQyBAgAEB4yBggAEAUQHjIGCAAQBRAeMgYIABAFEB4yBggAEAUQHjIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeOgQIIxAnOgQIABBDOggIABCABBCxA1D2CliMF2CLGGgAcAB4AIABWIgB7gWSAQIxMJgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=ihRXY8iHEIiMuvQP_4S9iAk&bih=1218&biw=1102#imgrc=RLVtkb4QrBc6IM',
    },
    {
        name: 'Storm',
        age: '32',
        enjoys: 'Beer and not shaving',
        image:'https://upload.wikimedia.org/wikipedia/commons/9/9e/Wolverine_%287343567212%29.jpg',
    },
    {
        name: 'Wolverine',
        age: '91',
        enjoys: 'Beer and not shaving',
        image:'https://upload.wikimedia.org/wikipedia/commons/9/9e/Wolverine_%287343567212%29.jpg',
    },
    {
        name: 'Wolverine',
        age: '52',
        enjoys: 'Beer and not shaving',
        image:'https://upload.wikimedia.org/wikipedia/commons/9/9e/Wolverine_%287343567212%29.jpg',
    }
]

characters.each do |each_character|
    Character.create each_character
    puts "creating character #{each_character}"
end