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
User.create(name: 'Deer', uid: '893157', provider: 'twitter')
User.create(name: 'Elk', uid: '125872', provider: 'twitter')


NewsPost.create(title: 'Processus dynamicus qui sequitur mutationem consuetudium lectorum mirum?', body: 'Qui facit eorum claritatem Investigationes demonstraverunt lectores legere me lius. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat. In vulputate velit esse molestie consequat vel illum dolore.')

NewsPost.create(title: 'Qui nunc nobis videntur parum, clari fiant sollemnes in.', body: 'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet. Ii legunt saepius claritas est etiam processus dynamicus qui sequitur mutationem consuetudium lectorum. Esse molestie consequat vel illum dolore eu feugiat nulla facilisis, at vero eros et accumsan. Qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi doming id. Nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex.')

NewsPost.create(title: 'Sit amet consectetuer adipiscing elit sed diam nonummy?', body: 'Ea commodo consequat, duis autem vel eum iriure. Decima eodem modo typi qui nunc nobis videntur parum clari fiant sollemnes in. Ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl. Dolor sit amet consectetuer adipiscing elit sed diam nonummy nibh.')
