# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'factory_girl_rails'
Card.delete_all
User.delete_all
FactoryGirl.create(:card, project: "We built a new mobile site for a leading poultry processing company to showcase their products.", solution: "People use their mobile to get information on the go. Any site about products should work on a mobile also, not just on a desktop. How could you get information in a store anyway? CSS breakpoints were handy. We created responsive stylesheets for the site. We decided not to use any of the responsive grid systems. We created our own to follow every details of the design.", category: "mobile-web UI", tech: "mobile-web UI", difficulty: 3 )
FactoryGirl.create(:card, project: "One of our project is a deal-of-the-day service. It handles deals and vouchers.", solution: "Handling vouchers even in digital not easy. The existing solution for uploading new batch of vouchers blocked the site and slowed it down. We moved all the voucher import into a background worker to keep the admin site responsive. This was an early architecture design problem made by the previous developers which come out after when the traffic went up significantly.", category: "startup processing ", tech: "startup processing ", difficulty: 1 )

FactoryGirl.create(:card, project: "One of our project is a design related cultural online magazine with weekly issues.", solution: "Our client needed a fast bug fix in a legacy CMS system built in an outdated rails version. We had one day to install the environment, get our head around the project and fix the bug. We did it :)", category: "outdated system", tech: "outdated system", difficulty: 2 )
FactoryGirl.create(:card, project: "One of our project is a deal-of-the-day service. It handles deals and vouchers.", solution: "Our client needed a mobile UI to share promotions on more platforms, reaching wider audience. We created a new mobile UI with JQuery mobile reaching a snappy experience on numerous mobile platform.", category: "mobile UI", tech: "mobile UI", difficulty: 3 )

FactoryGirl.create(:card, project: "We work for an education startup.", solution: "They have a dream. They would like to track child progress with ease. Technology is great when it is in the background. We used language processing and search technologies to link different events together in the children s timeline.", category: "startup processing search", tech: "startup processing search", difficulty: 1 )
FactoryGirl.create(:card, project: "One of our project is a Hungarian leading poultry processing company s new webpage.", solution: "Our client had a static webpage and needed a new one with a custom CMS functionalities to be able to change content internally. We created an easy to use CMS with plugins integrated to manage basic styling as well.", category: "UI CMS", tech: "UI CMS", difficulty: 2 )

FactoryGirl.create(:card, project: "We participated to build a next generation business suite application prototype.", solution: "Business suites and dashboards are complex. They become even more complex when you should make them really flexible. After long planning we agreed to create a prototype, where the business domain stored in a relational database and all the data stored in a schemaless, document database. This clean separation in the design helped us to minimise the code complexity when the system stays still flexible and modular.", category: "startup business processing ", tech: "startup business processing ", difficulty: 3 )
FactoryGirl.create(:card, project: "We built a custom CMS solution and helped to host it.", solution: "A cloud hosting is great until you reach the borders. When the price tag or scaling the app is a problem, you can set up your own servers. We set up one. Moving an app to a custom built server is always a pain, even if it is a good decision. We teamed up with the customer sysadmin and moved the site to the new place. After changing the setup and refactoring the storage code the site went live in the new place without hassle.", category: "startup, deploy", tech: "startup, deploy", difficulty: 2 )

FactoryGirl.create(:user, email: "soma@appmaintainers.com", password: 12345678)
FactoryGirl.create(:user, email: "botond@appmaintainers.com", password: 12345678)
FactoryGirl.create(:user, email: "attila@appmaintainers.com", password: 12345678)
FactoryGirl.create(:user, email: "bence@appmaintainers.com", password: 12345678)