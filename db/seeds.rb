Designer.delete_all
chikemma = Designer.create name: 'Chikemma Nwanna'
rutendo = Designer.create name: 'Rutendo Rudzidzo'
chioma = Designer.create name: 'Chioma Aladi'
reitu = Designer.create name: 'Reitu Keitu'

Spectacle.delete_all
Spectacle.create brand: 'Swan', price: 6500, 
            brand_id: chikemma.id,
            photo_url: 'https://n3.sdlcdn.com/imgs/c/d/g/Peter-Jones-Black-Round-Spectacle-SDL255246451-1-6cc95.jpg',
            summary: "Elegant and Classic, a style for all seasons"

Spectacle.create brand: 'Deluxe', price: 5000, 
            brand_id: rutendo.id,
            photo_url: 'https://images-eu.ssl-images-amazon.com/images/I/31LS8IjWt7L._AC_UL260_SR200,260_.jpg',
            summary: "Professional and bespoke, for those always on the go"
Spectacle.create title: 'Breeze', price: 4500, 
            brand_id: chioma.id,
            photo_url: 'https://images-eu.ssl-images-amazon.com/images/I/31LS8IjWt7L._AC_UL260_SR200,260_.jpg',
            summary: 'Risque and cool, Popular kids stay on top'

Spectacle.create title: 'Sunshine', price: 6000, 
            author_id: reitu.id,
            photo_url: 'http://www.longeenoptical.com/upload/2017-03/23/G4128LQ064551171402-f3817.jpg',
            summary: 'Passion and Gluttony, To the artists, the creatives who seee beauty everywhere'

print "There are now #{Designer.count} authors in the database.\n"
print "There are now #{Spectacle.count} books in the database.\n"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
