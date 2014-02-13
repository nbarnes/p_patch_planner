# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Jaegerin', email: 'old_grey_mare@tabarah.org', uid: '423', provider: 'twitter')
User.create(name: 'Orion', email: 'doomfluff@tabarah.org', uid: '324', provider: 'twitter')
User.create(name: 'Dottie', email: 'pulletinside@tabarah.org', uid: '332', provider: 'twitter')
User.create(name: 'admin', email: 'admin@unofficialtrakehnerdatabase.com', uid: '1947861475', provider: 'twitter', role: 'admin')
User.create(name: 'nbarnes', email: 'nbarnes@gmail.com', uid: '393838220', provider: 'twitter', role: 'admin')

NewsPost.create(title: 'P-Patch open!', body: 'Our new p-patch is open!  Come and see!')
NewsPost.create(title: 'Coming soon!', body: "Soon we'll have our new p-patch!  Get your shovels ready!")
NewsPost.create(title: 'Growing Season!', body: 'Spring is almost here!  Come and start preparing!')
