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


NewsPost.create(title: 'Processus dynamicus qui sequitur mutationem consuetudium lectorum mirum?',
 body: 'Qui facit eorum claritatem Investigationes demonstraverunt lectores legere me lius. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat. In vulputate velit esse molestie consequat vel illum dolore.')
NewsPost.create(title: 'Nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum?',
 body: 'Sit amet consectetuer adipiscing, elit sed diam nonummy. Enim ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut. In vulputate velit esse molestie; consequat vel illum dolore.')
NewsPost.create(title: 'Consuetudium lectorum mirum est, notare quam littera gothica quam nunc putamus?',
 body: 'Facilisi nam liber tempor cum soluta nobis eleifend option congue nihil. Quinta decima eodem modo typi qui nunc nobis videntur parum clari, fiant sollemnes in. Insitam est usus legentis in iis qui facit, eorum claritatem Investigationes demonstraverunt? Consequat vel illum dolore eu feugiat nulla facilisis at. Litterarum formas humanitatis per, seacula quarta decima et. Qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla imperdiet.')
