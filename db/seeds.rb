Category.create!([
  {name: "Nightlife", image_url: "https://s3-us-west-1.amazonaws.com/jopp/nightlife.jpg"},
  {name: "Exploring", image_url: "https://s3-us-west-1.amazonaws.com/jopp/exploring.jpg"},
  {name: "Outdoors", image_url: "https://s3-us-west-1.amazonaws.com/jopp/outdoors.jpg"},
  {name: "Sports", image_url: "https://s3-us-west-1.amazonaws.com/jopp/sports.jpg"},
  {name: "Tourism", image_url: "https://s3-us-west-1.amazonaws.com/jopp/tourism.jpg"},
  {name: "Family", image_url: "https://s3-us-west-1.amazonaws.com/jopp/famility.jpg"},
  {name: "Couples", image_url: "https://s3-us-west-1.amazonaws.com/jopp/couples.jpg"},
  {name: "Food Discovery", image_url: "https://s3-us-west-1.amazonaws.com/jopp/food.jpg"}
])

User.create!([
  {username: "jdoe", location: "San Francisco", first_name: "John", last_name: "Doe", profile_image_url: nil, email: "jdoe@jopp.com"},
  {username: "pperez", location: "San Francisco", first_name: "Pepito", last_name: "Perez", profile_image_url: nil, email: "pperez@jopp.com"},
  {username: "matias", location: "Palo Alto", first_name: "Matias", last_name: "Arenas", profile_image_url: nil, email: "matiasarenas@gmail.com"},
  {username: "yonpols", location: "Mountain View", first_name: "Juan Pablo", last_name: "Marzetti", profile_image_url: nil, email: "yonpols@gmail.com"},
  {username: "ggayan", location: "Mountain View", first_name: "Gabriel", last_name: "Gayan", profile_image_url: nil, email: "gabrielgayan@gmail.com"}
])

Route.create!([
  {title: "The Beer Route", location: "San Francisco", full_description: "There are plenty of bars in SF where you can grab a beer, but less-plenty of bars in SF that you can call bona fide beer bars. Here're eight that we think not only make the cut, but make it better than anyone else.", image_url: "http://33.media.tumblr.com/b6ed58627630bb8652ab6c3068be565b/tumblr_inline_n91a7hHpIp1qb3qcf.jpg", user_id: 2},
  {title: "Sports and Fun", location: "San Francisco", full_description: "What better way to hang out with friends than doing some sports, getting dinner and then a few beers to wrap up the night? Take this route if you don't want to feel too guilty after all those beers ;)", image_url: "https://irs1.4sqi.net/img/general/width960/645907_aZJsQzJ8KzqJr3bw2BLdfuG3PEeLvzfewWfJjLQMtno.jpg", user_id: 2},
  {title: "Groupon PA and After Office", location: "Palo Alto", full_description: "Go to work and then enjoy a fun happy hour and dinner with your co-workers ;)", image_url: "https://scontent-sjc2-1.cdninstagram.com/hphotos-xat1/t51.2885-15/e15/1689568_686194394756412_1880177798_n.jpg", user_id: 3}
])

Place.create!([
  {name: "Mikkeller Bar", full_description: "The first American outpost for the popular Denmark brewhouse, this 42-tapped beauty has both local and European brews on the list (including several exclusive-to-this-spot Mikkellers), plus, they even have a secret downstairs room devoted entirely to sour beers.", location: "San Francisco", address: "55 Cyril Magnin St, San Francisco, CA 94102", image_url: "http://33.media.tumblr.com/b6ed58627630bb8652ab6c3068be565b/tumblr_inline_n91a7hHpIp1qb3qcf.jpg", lat: "37.784719", lng: "-122.409203"},
  {name: "Toronado", full_description: "Like beer, but hate people? Cool, so do the bartenders at this iconic Lower Haight establishment that boasts a seriously impressive tap list. Pro tip: know what you're ordering before the bartender looks at you. Or you look at him. Or the guy next to you looks at him. Literally, if anyone is looking anywhere, know what you're going to order. Also: have cash. Also also: make sure you hit their Annual Barleywine Festival.", location: "San Francisco", address: "547 Haight St,San Francisco, CA 94117", image_url: "http://i1142.photobucket.com/albums/n607/Gettingdark/Misc/IMG_20140507_214921_1_zpsk7jolnth.jpg", lat: "37.772055", lng: "-122.431186"},
  {name: "Pi Bar", full_description: "This Mission spot not only opens at 3:14pm every day, but also serves a unique, basically never-repeating rotation of beers on tap that could very well make you the irrational one (math joke, +1!).", location: "San Francisco", address: "1432 Valencia St,San Francisco, CA 94110", image_url: "https://backoftheferry.files.wordpress.com/2014/10/sf-pi-bar.jpg", lat: "37.750128", lng: "-122.420743"},
  {name: "Mission Playground & Pool", full_description: "Join the fun on this busy, well-maintained playground or make a splash at the City’s only outdoor pool. Two tennis courts, a basketball court and a blacktop soccer pitch are available for games. Relax on a bench or take stroll through the grassy area. The playground shares a site with the much-loved Mission Clubhouse.", location: "San Francisco", address: "1 Linda St, San Francisco, CA 94110, United States", image_url: "https://irs3.4sqi.net/img/general/width960/3818089_KQbrDCpSW6dArDfASg5dz7AMlEVH32dqP9aljFSkQVE.jpg", lat: "37.759292", lng: "-122.422301"},
  {name: "La Taqueria", full_description: "It wouldn’t be San Francisco without The Mission’s squadron of gut-busting taquerias. This one continues to lead the pack with unwavering rave reviews for its sublime, spot-on Mexico staples, including a recent America's Best Burrito title after an extensive FiveThirtyEight bracket.", location: "San Francisco", address: "2889 Mission St (at 25th St), San Francisco, CA 94110, United States", image_url: "https://irs1.4sqi.net/img/general/width960/8858674_Q--H5bpAnNykVmWU6JYWwcHf01jqPccWYl2Ta_c1bRY.jpg", lat: "37.750893", lng: "-122.418088"},
  {name: "Laszlo", full_description: "Bare bronzed walls elicit a warehouse feel, while a small upstairs creates an open-loft effect. Between the two levels (small tables below, bar stools above), seating is ample. Laszlo is your neighborhood bar, it’s your special occasion bar, it’s your comfort zone.", location: "San Francisco", address: "2526 Mission St, San Francisco, CA 94110", image_url: "http://www.laszlobar.com/constructivism/wp-content/themes/Laszlo/images/6.jpg", lat: "37.756505", lng: "-122.419101"},
  {name: "Groupon", full_description: "We're changing local commerce on a global scale. Start your day at the office to prepare your thirst for the after office happy hour :D.", location: "Palo Alto", address: "3101 Park Blvd, Palo Alto, CA 94306", image_url: "https://jobs.groupon.com/careers/assets/pa_exterior.jpg", lat: "37.425237", lng: "-122.138686"},
  {name: "Antonio's Nut House", full_description: "A Palo Alto Classic and Groupon classic! Come here enjoy some beers, eat some nuts and get some foosball games with your co-workers.", location: "Palo Alto", address: "321 S California Ave, Palo Alto, CA 94306", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/FxGRBdmNsW56Uo21Wh6y5g/o.jpg", lat: "37.427074", lng: "-122.146111"},
  {name: "Palo Alto Sol", full_description: "Very delicious authentic Mexican food! Come to this place to finish your night (and route :P) and make sure you end with a full belly.", location: "Palo Alto", address: "408 S California Ave, Palo Alto, CA 94306", image_url: "https://cdn.menu.me/image-assets/32/79441/image.jpg", lat: "37.426617", lng: "-122.147114"},
])

RoutePlace.create!([
  {route_id: 1, place_id: 1, position: 0},
  {route_id: 1, place_id: 2, position: 1},
  {route_id: 1, place_id: 3, position: 2},
  {route_id: 2, place_id: 4, position: 0},
  {route_id: 2, place_id: 5, position: 1},
  {route_id: 2, place_id: 6, position: 2},
  {route_id: 3, place_id: 7, position: 0},
  {route_id: 3, place_id: 8, position: 1},
  {route_id: 3, place_id: 9, position: 2}
])

Favorite.create!([
  {user_id: 3, route_id: 2}
])

Rating.create!([
  {user_id: 1, route_id: 1, rating: 5.0},
  {user_id: 2, route_id: 1, rating: 4.0},
  {user_id: 3, route_id: 1, rating: 5.0},
  {user_id: 2, route_id: 2, rating: 4.0},
  {user_id: 1, route_id: 3, rating: 5.0}
])
